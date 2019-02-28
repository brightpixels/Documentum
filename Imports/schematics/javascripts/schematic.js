(function() {
  window.makeId = function(prefix) {
    var time;

    time = +(new Date);
    while (time === +(new Date)) {undefined}
    return prefix + +(new Date);
  };

  window.sortByName = function(l, r) {
    if (l.name() < r.name()) {
      return -1;
    } else if (l.name() > r.name()) {
      return 1;
    } else {
      return 0;
    }
  };

  window.sortProducts = function(l, r) {
    if (l.isSHC() && r.isntSHC()) {
      return -1;
    } else if (l.isntSHC() && r.isSHC()) {
      return 1;
    } else {
      if (l.isSynthetic() && r.isntSynthetic()) {
        return -1;
      } else if (l.isntSynthetic() && r.isSynthetic()) {
        return 1;
      } else {
        return sortByName(l, r);
      }
    }
  };

  window.cookies = {
    create: function(name, value, days) {
      var date, expires;

      if (days != null) {
        date = new Date;
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = date.toGMTString();
      }
      if (expires != null) {
        return document.cookie = "" + name + "=" + value + ";expires=" + expires + ";path=/";
      } else {
        return document.cookie = "" + name + "=" + value + ";path=/";
      }
    },
    read: function(name) {
      var cookie, cookies, _i, _len;

      name = "" + name + "=";
      cookies = document.cookie.split('; ');
      for (_i = 0, _len = cookies.length; _i < _len; _i++) {
        cookie = cookies[_i];
        if (cookie.indexOf(name) === 0) {
          return cookie.substring(name.length, cookie.length);
        }
      }
      return undefined;
    },
    "delete": function(name) {
      return cookies.create(name, '', -1);
    }
  };

}).call(this);
(function() {
  var fullscreenHandler, updateMenuHandler;

  updateMenuHandler = function(element, valueAccessor, allBindings, viewModel, bindingContext) {
    var $el, speed, value, width;

    value = ko.utils.unwrapObservable(valueAccessor());
    $el = $(element);
    width = $el.outerWidth();
    speed = 100;
    if (value === true) {
      return $(element).animate({
        right: 0
      }, speed);
    } else {
      return $(element).animate({
        right: -width
      }, speed);
    }
  };

  ko.bindingHandlers.updateMenu = {
    init: updateMenuHandler,
    update: updateMenuHandler
  };

  fullscreenHandler = function(element, valueAccessor, allBindings, viewModel, bindingContext) {
    var $el, $host, $parent, $wrap, component, model, resetViewer, value;

    value = ko.unwrap(valueAccessor());
    model = bindingContext.$data;
    component = model.selectedComponent();
    $el = $(element);
    $parent = $el.parent();
    $wrap = model.application.$wrap;
    $host = model.application.$host;
    resetViewer = function() {
      model.viewer.invalidateSize();
      if (component != null) {
        return model.viewer.panTo([component.y(), component.x()], {
          animate: false
        });
      } else {
        return model.viewer.panTo([-128, 128], {
          animate: false
        });
      }
    };
    if (value === true && $parent.is($host)) {
      $el.appendTo(document.body);
      $wrap.hide();
      return setTimeout(resetViewer, 0);
    } else if (value === false && $parent.is(document.body)) {
      $el.appendTo($host);
      $wrap.show();
      return setTimeout(resetViewer, 0);
    }
  };

  ko.bindingHandlers.fullscreen = {
    init: fullscreenHandler,
    update: fullscreenHandler
  };

}).call(this);
(function() {
  var Component,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  Component = (function() {
    function Component(data, schematic) {
      var subcomponent, _i, _len, _ref;

      this.schematic = schematic;
      this.navigate = __bind(this.navigate, this);
      this.id = data.id;
      this.hash = "#/component/" + this.id;
      this.domID = makeId("component_");
      this.name = ko.observable(data.name);
      this.imageFile = data.imageURL;
      this.loobleURL = ko.observable(data.loobleURL);
      this.x = ko.observable(data.x);
      this.y = ko.observable(data.y);
      this.schematicURL = ko.observable(data.schematicURL);
      this.subcomponents = ko.observableArray();
      this.selected = ko.observable(false);
      this.imageURL = ko.computed(function() {
        if (this.imageFile.indexOf('http') === 0 || this.imageFile.length === 0) {
          return this.imageFile;
        } else {
          return "" + this.schematic.application.options.componentsPath + this.imageFile;
        }
      }, this);
      this.visitName = ko.computed(function() {
        return "" + (MobilSchematics.i18n.t('visit')) + " " + (this.name());
      }, this);
      this.sortedSubcomponents = ko.computed(function() {
        return this.subcomponents.sort(sortByName);
      }, this);
      this.firstProduct = ko.computed(function() {
        var subcomponent, _i, _len, _ref;

        _ref = this.subcomponents();
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          subcomponent = _ref[_i];
          if (subcomponent.products().length) {
            return subcomponent.products()[0];
          }
        }
      }, this);
      this.uniqueProducts = ko.computed(function() {
        var products, searchForUniqueProducts;

        products = [];
        (searchForUniqueProducts = function(obj) {
          var key, missing, val, _results;

          _results = [];
          for (key in obj) {
            val = obj[key];
            if (val instanceof MobilSchematics.ViewModels.Product) {
              missing = (function() {
                var product, _i, _len;

                for (_i = 0, _len = products.length; _i < _len; _i++) {
                  product = products[_i];
                  if (product.name() === val.name()) {
                    return false;
                  }
                }
                return true;
              })();
              if (missing) {
                _results.push(products.push(val));
              } else {
                _results.push(void 0);
              }
            } else if (key === 'subcomponents' || key === 'products' && $.isFunction(val)) {
              _results.push(searchForUniqueProducts(val()));
            } else if (val instanceof MobilSchematics.ViewModels.Subcomponent) {
              _results.push(searchForUniqueProducts(val));
            } else {
              _results.push(void 0);
            }
          }
          return _results;
        })(this);
        return products.sort(sortProducts);
      }, this);
      MobilSchematics.Events.subscribe('templateRendered', this.renderHotspot, this);
      if ($.isArray(data.subcomponents)) {
        _ref = data.subcomponents;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          subcomponent = _ref[_i];
          this.subcomponents.push(new MobilSchematics.ViewModels.Subcomponent(subcomponent, this));
        }
      }
    }

    Component.prototype.renderHotspot = function(schematic) {
      var hotspot;

      hotspot = L.icon({
        iconUrl: "" + this.schematic.application.options.markersPath + "marker-icon.png",
        iconRetinaUrl: "" + this.schematic.application.options.markersPath + "marker-icon-2x.png",
        iconSize: [15, 15],
        popupAnchor: [1, -12]
      });
      this.marker = L.marker([this.y(), this.x()], {
        icon: hotspot
      });
      this.marker.addTo(this.schematic.viewer);
      this.marker.bindPopup($("#" + this.domID)[0]);
      this.marker.on('click', this.navigate, this);
      return this.marker.on('popupclose', this.onPopupClose, this);
    };

    Component.prototype.onPopupClose = function(e) {
      if (this.schematic.selectedComponent().id === this.id && this.schematic.viewer._popup === null) {
        return this.schematic.navigate();
      }
    };

    Component.prototype.navigate = function(component, e) {
      return window.location.hash = this.hash;
    };

    Component.prototype.select = function() {
      var _this = this;

      this.selected(true);
      return setTimeout(function() {
        if (_this.marker != null) {
          _this.schematic.viewer.panTo([_this.y(), _this.x()]);
          return setTimeout(function() {
            if (_this.marker._popup._isOpen === false) {
              return _this.marker.openPopup();
            }
          }, 250);
        }
      }, 0);
    };

    Component.prototype.deselect = function() {
      var _this = this;

      this.selected(false);
      return setTimeout(function() {
        if ((_this.marker != null) && _this.marker._popup._isOpen === true) {
          return _this.marker.closePopup();
        }
      }, 0);
    };

    return Component;

  })();

  window.MobilSchematics = window.MobilSchematics || {
    ViewModels: {}
  };

  MobilSchematics.ViewModels.Component = Component;

}).call(this);
(function() {
  var Events;

  Events = (function() {
    function Events() {
      var events;

      events = {};
      this.subscribe = function(name, callback, context) {
        events[name] = events[name] || [];
        return events[name].push({
          callback: callback,
          context: context
        });
      };
      this.unsubscribe = function(name) {
        return delete events[name];
      };
      this.publish = function(name) {
        var args, event, _i, _len, _ref, _results;

        args = [].slice.call(arguments, 1);
        if ('undefined' !== typeof events[name]) {
          _ref = events[name];
          _results = [];
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            event = _ref[_i];
            _results.push(event.callback.apply(event.context, args));
          }
          return _results;
        }
      };
    }

    return Events;

  })();

  window.MobilSchematics = window.MobilSchematics || {
    ViewModels: {}
  };

  MobilSchematics.Events = new Events;

}).call(this);
(function() {
  var Product,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  Product = (function() {
    function Product(data, component) {
      this.component = component;
      this.navigate = __bind(this.navigate, this);
      this.id = data.id;
      this.hash = "#/component/" + this.component.component.id + "/subcomponent/" + this.component.id + "/product/" + this.id;
      this.name = ko.observable(data.name);
      this.type = ko.observable(data.type);
      this.information = ko.observable(data.information);
      this.benefits = ko.observable(data.benefits);
      this.pdsURL = ko.observable(data.pdsURL);
      this.sellSheetURL = ko.observable(data.sellSheetURL);
      this.moreInfoURL = ko.observable(data.moreInfoURL);
      this.inspected = ko.observable(false);
      this.selected = ko.observable(false);
      this.typeClass = ko.computed(function() {
        if (this.type() === 'conventional') {
          return 'msa-conventional';
        } else {
          return 'msa-synthetic';
        }
      }, this);
    }

    Product.prototype.navigate = function(product, e) {
      e.stopPropagation();
      return window.location.hash = this.hash;
    };

    Product.prototype.select = function() {
      return this.selected(true);
    };

    Product.prototype.deselect = function() {
      return this.selected(false);
    };

    Product.prototype.inspect = function() {
      return this.inspected(true);
    };

    Product.prototype.deinspect = function() {
      return this.inspected(false);
    };

    Product.prototype.toggleInspected = function() {
      return this.inspected(!this.inspected());
    };

    Product.prototype.mailToLink = function() {
      return "mailto:?subject=" + (encodeURIComponent('Mobil schematic')) + "&body=" + window.location;
    };

    Product.prototype.isSHC = function() {
      return this.name().indexOf('SHC') !== -1;
    };

    Product.prototype.isntSHC = function() {
      return !this.isSHC();
    };

    Product.prototype.isSynthetic = function() {
      return this.type() === 'synthetic';
    };

    Product.prototype.isntSynthetic = function() {
      return !this.isSynthetic();
    };

    return Product;

  })();

  window.MobilSchematics = window.MobilSchematics || {
    ViewModels: {}
  };

  MobilSchematics.ViewModels.Product = Product;

}).call(this);
(function() {
  var Schematic,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  Schematic = (function() {
    function Schematic(data, application) {
      var component, _i, _len, _ref,
        _this = this;

      this.application = application;
      this.dismissModeDialog = __bind(this.dismissModeDialog, this);
      this.dismissModeDialogAndEnableTouchMode = __bind(this.dismissModeDialogAndEnableTouchMode, this);
      this.dismissDirectionsDialog = __bind(this.dismissDirectionsDialog, this);
      this.navigate = __bind(this.navigate, this);
      this.templateRendered = __bind(this.templateRendered, this);
      this.name = ko.observable(data.name);
      this.hash = '#/';
      this.minZoom = data.minZoom;
      this.maxZoom = data.maxZoom;
      this.tileset = ko.observable(data.tileset);
      this.components = ko.observableArray();
      this.selectedComponent = ko.observable();
      this.selectedSubcomponent = ko.observable();
      this.selectedProduct = ko.observable();
      this.menuOpen = ko.observable(true);
      this.isFullscreen = ko.observable(false);
      this.menuState = ko.computed(function() {
        if (this.menuOpen() === true) {
          return '&#x25b6;';
        } else {
          return '&#x25c0;';
        }
      }, this);
      this.template = ko.observable("msa-desktop-" + (this.applicationMode()));
      MobilSchematics.Events.subscribe('templateRendered', function() {
        this.renderLeaflet();
        return this.setupDOMForTouch();
      }, this);
      this.componentTemplateMode = function(component, context) {
        if (component.schematicURL() != null) {
          return "msa-" + (_this.uiMode()) + "-link-component-template";
        } else {
          return "msa-" + (_this.uiMode()) + "-component-template";
        }
      };
      this.uniqueComponents = ko.computed(function() {
        var component1, component2, exists, uniq, _i, _j, _len, _len1, _ref;

        uniq = [];
        _ref = this.components();
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          component1 = _ref[_i];
          exists = false;
          for (_j = 0, _len1 = uniq.length; _j < _len1; _j++) {
            component2 = uniq[_j];
            if (component1.name() === component2.name()) {
              exists = true;
              break;
            }
          }
          if (exists !== true) {
            uniq.push(component1);
          }
        }
        return uniq.sort(sortByName);
      }, this);
      this.fullscreenText = ko.computed(function() {
        if (this.isFullscreen() === true) {
          return MobilSchematics.i18n.t('exitFullscreen');
        } else {
          return MobilSchematics.i18n.t('fullscreen');
        }
      }, this);
      this.showDirectionsDialog = ko.observable((function() {
        return cookies.read('msa_show_directions') !== 'false';
      })());
      this.showModeDialog = ko.observable(Modernizr.touch);
      if ($.isArray(data.components)) {
        _ref = data.components;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          component = _ref[_i];
          this.components.push(new MobilSchematics.ViewModels.Component(component, this));
        }
      }
      (function(schematic) {
        var app;

        app = Sammy(function() {
          this.get('#/', function() {
            schematic.deselectProduct();
            schematic.deselectSubcomponent();
            return schematic.deselectComponent();
          });
          this.get('#/component/:component', function() {
            schematic.deselectProduct();
            schematic.deselectSubcomponent();
            return schematic.selectComponent(parseInt(this.params.component));
          });
          this.get('#/component/:component/subcomponent/:subcomponent', function() {
            var subcomponent;

            schematic.deselectProduct();
            component = schematic.selectComponent(parseInt(this.params.component));
            return subcomponent = schematic.selectSubcomponent(parseInt(this.params.subcomponent));
          });
          return this.get('#/component/:component/subcomponent/:subcomponent/product/:product', function() {
            var product, subcomponent;

            component = schematic.selectComponent(parseInt(this.params.component));
            subcomponent = schematic.selectSubcomponent(parseInt(this.params.subcomponent));
            return product = schematic.selectProduct(parseInt(this.params.product));
          });
        });
        return app.run('#/');
      })(this);
    }

    Schematic.prototype.applicationMode = function() {
      return this.application.options.mode;
    };

    Schematic.prototype.touchMode = function() {
      if (this.uiMode() === 'touch') {
        return true;
      }
    };

    Schematic.prototype.desktopMode = function() {
      if (this.uiMode() === 'desktop') {
        return true;
      }
    };

    Schematic.prototype.uiMode = function() {
      if (this.template() === ("msa-touch-" + (this.applicationMode()))) {
        return 'touch';
      } else if (this.template() === ("msa-desktop-" + (this.applicationMode()))) {
        return 'desktop';
      }
    };

    Schematic.prototype.enableTouchMode = function() {
      return this.template("msa-touch-" + (this.applicationMode()));
    };

    Schematic.prototype.enableDesktopMode = function() {
      return this.template("msa-desktop-" + (this.applicationMode()));
    };

    Schematic.prototype.templateRendered = function(element) {
      return MobilSchematics.Events.publish('templateRendered', this);
    };

    Schematic.prototype.setupDOMForTouch = function() {
      if (this.touchMode() !== true) {
        return;
      }
      return this.isFullscreen(true);
    };

    Schematic.prototype.renderLeaflet = function() {
      var mapOptions, path;

      if (this.desktopMode() !== true) {
        return;
      }
      this.isFullscreen(false);
      mapOptions = {
        minZoom: this.minZoom || 1,
        maxZoom: this.maxZoom || 5,
        zoom: 1,
        crs: L.CRS.Simple,
        attributionControl: false
      };
      this.viewer = L.map(document.getElementById(this.application.options.viewerID), mapOptions);
      this.viewer.setView([-128, 128], 1);
      path = "" + this.application.options.tilePath + (this.tileset()) + "/{z}/tile_{x}_{y}.jpg";
      return this.tileLayer = L.tileLayer(path, {
        noWrap: true
      }).addTo(this.viewer);
    };

    Schematic.prototype.navigate = function(schematic, e) {
      return window.location.hash = this.hash;
    };

    Schematic.prototype.selectComponent = function(id) {
      var comp, component, _i, _len, _ref;

      _ref = this.components();
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        comp = _ref[_i];
        if (comp.id === id) {
          component = comp;
          break;
        }
      }
      if ((this.selectedComponent() != null) && this.selectedComponent().id !== component.id) {
        this.deselectComponent();
        component.select();
        return this.selectedComponent(component);
      } else if (this.selectedComponent() == null) {
        component.select();
        return this.selectedComponent(component);
      }
    };

    Schematic.prototype.deselectComponent = function() {
      if (this.selectedComponent() != null) {
        this.selectedComponent().deselect();
      }
      return this.selectedComponent(undefined);
    };

    Schematic.prototype.selectSubcomponent = function(id) {
      var subcomp, subcomponent, _i, _len, _ref;

      _ref = this.selectedComponent().subcomponents();
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        subcomp = _ref[_i];
        if (subcomp.id === id) {
          subcomponent = subcomp;
          break;
        }
      }
      if ((this.selectedSubcomponent() != null) && this.selectedSubcomponent().id !== subcomponent.id) {
        this.deselectSubcomponent();
        subcomponent.select();
        return this.selectedSubcomponent(subcomponent);
      } else if (this.selectedSubcomponent() == null) {
        subcomponent.select();
        return this.selectedSubcomponent(subcomponent);
      }
    };

    Schematic.prototype.deselectSubcomponent = function() {
      if (this.selectedSubcomponent() != null) {
        this.selectedSubcomponent().deselect();
      }
      return this.selectedSubcomponent(undefined);
    };

    Schematic.prototype.selectProduct = function(id) {
      var prod, product, _i, _j, _len, _len1, _ref, _ref1;

      if (this.selectedSubcomponent != null) {
        _ref = this.selectedSubcomponent().products();
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          prod = _ref[_i];
          if (prod.id === id) {
            product = prod;
            break;
          }
        }
      } else {
        _ref1 = this.selectedComponent().products();
        for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
          prod = _ref1[_j];
          if (prod.id === id) {
            product = prod;
            break;
          }
        }
      }
      if ((this.selectedProduct() != null) && this.selectedProduct().id !== product.id) {
        this.deselectProduct();
        product.select();
        this.selectedProduct(product);
      } else if (this.selectedProduct() == null) {
        product.select();
        this.selectedProduct(product);
      }
      return setTimeout(function() {
        var $scrollBox, height, targetHeight;

        $scrollBox = $('.msa-scroll-box');
        height = $scrollBox.height();
        targetHeight = $scrollBox.parent().parent().parent().height();
        if (height < targetHeight) {
          $scrollBox.height(targetHeight - 16);
        }
        return $scrollBox.scrollTop(0);
      }, 150);
    };

    Schematic.prototype.deselectProduct = function() {
      if (this.selectedProduct() != null) {
        this.selectedProduct().deselect();
      }
      return this.selectedProduct(undefined);
    };

    Schematic.prototype.toggleMenu = function(schematic, e) {
      return this.menuOpen(!this.menuOpen());
    };

    Schematic.prototype.toggleFullscreen = function(schematic, e) {
      return this.isFullscreen(!this.isFullscreen());
    };

    Schematic.prototype.dismissDirectionsDialog = function(schematic, e) {
      var remember;

      remember = $('input[name="msa-directions-pref"]').is(':checked');
      if (remember) {
        cookies.create('msa_show_directions', 'false', 730);
      }
      return this.showDirectionsDialog(false);
    };

    Schematic.prototype.dismissModeDialogAndEnableTouchMode = function(schematic, e) {
      this.enableTouchMode();
      return this.showModeDialog(false);
    };

    Schematic.prototype.dismissModeDialog = function(schematic, e) {
      return this.showModeDialog(false);
    };

    return Schematic;

  })();

  window.MobilSchematics = window.MobilSchematics || {
    ViewModels: {}
  };

  MobilSchematics.ViewModels.Schematic = Schematic;

}).call(this);
(function() {
  var Subcomponent,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  Subcomponent = (function() {
    function Subcomponent(data, component) {
      var product, _i, _len, _ref;

      this.component = component;
      this.navigate = __bind(this.navigate, this);
      this.id = data.id;
      this.hash = "#/component/" + this.component.id + "/subcomponent/" + this.id;
      this.name = ko.observable(data.name);
      this.loobleURL = ko.observable(data.loobleURL);
      this.products = ko.observableArray();
      this.selected = ko.observable(false);
      if ($.isArray(data.products)) {
        _ref = data.products;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          product = _ref[_i];
          this.products.push(new MobilSchematics.ViewModels.Product(product, this));
        }
      }
      this.sortedProducts = ko.computed(function() {
        return this.products.sort(sortProducts);
      }, this);
    }

    Subcomponent.prototype.navigate = function(subcomponent, e) {
      return window.location.hash = this.hash;
    };

    Subcomponent.prototype.select = function() {
      return this.selected(true);
    };

    Subcomponent.prototype.deselect = function() {
      return this.selected(false);
    };

    return Subcomponent;

  })();

  window.MobilSchematics = window.MobilSchematics || {
    ViewModels: {}
  };

  MobilSchematics.ViewModels.Subcomponent = Subcomponent;

}).call(this);
(function() {
  var Application,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  Application = (function() {
    function Application(options) {
      this.onSubcomponentItemClick = __bind(this.onSubcomponentItemClick, this);
      this.setupDOM = __bind(this.setupDOM, this);
      this.parse = __bind(this.parse, this);
      this.processConfig = __bind(this.processConfig, this);
      var defaults;

      defaults = {
        element: null,
        cssPrefix: 'msa-',
        desktopYourIndustryTemplateID: 'msa-desktop-your-industry-application-skeleton',
        desktopLoobleTemplateID: 'msa-desktop-looble-application-skeleton',
        mobileYourIndustryTemplateID: 'msa-mobile-your-industry-application-skeleton',
        mobileLoobleTemplateID: 'msa-mobile-looble-application-skeleton',
        viewerID: 'msa-viewer',
        containerSelector: '#msa-container',
        configURL: '/assets/schematics/data/bakery.json',
        templatesURL: '/assets/schematics/templates/templates.html',
        productsPath: '/images/products/',
        componentsPath: '/images/components/',
        tilePath: '/images/tiles/',
        markersPath: '/images/markers/',
        forceTouch: false,
        forceDesktop: false,
        mode: 'your-industry'
      };
      this.options = $.extend({}, defaults, options);
      if (this.options.element == null) {
        throw 'Host element not provided!';
      }
      if (this.options.configURL == null) {
        throw 'No configuration URL provided!';
      }
      this.$host = $(this.options.element);
      this.$body = $('body');
      this.$wrap = $(document.createElement('DIV')).addClass('msa-body-wrap');
      this.wrapDOM();
      if ((this.options.configURL != null) && (this.options.templatesURL != null)) {
        this.load(this.options.configURL, this.options.templatesURL);
      }
    }

    Application.prototype.load = function(configURL, templatesURL) {
      return $.when($.get(this.options.configURL), $.get(this.options.templatesURL)).then(this.processConfig);
    };

    Application.prototype.wrapDOM = function() {
      this.$body.children().appendTo(this.$wrap);
      return this.$body.append(this.$wrap);
    };

    Application.prototype.processConfig = function(config, template) {
      this.setupDOM(template[0]);
      this.parse(config[0]);
      return this.bindNonKnockoutEvents();
    };

    Application.prototype.parse = function(data) {
      MobilSchematics.i18n.labels = data.lang;
      this.schematic = new MobilSchematics.ViewModels.Schematic(data.schematic, this);
      ko.applyBindings(this.schematic);
      return MobilSchematics.Events.publish("bindingsApplied", this.schematic);
    };

    Application.prototype.setupDOM = function(template) {
      this.$body.append(template);
      this.$host.html(document.getElementById('msa-container').innerHTML);
      return this.$container = $(this.options.containerSelector);
    };

    Application.prototype.bindNonKnockoutEvents = function() {
      return $("." + this.options.cssPrefix + "details-layover", this.$container).delegate('.msa-subcomponent-menu span', 'click', this.onSubcomponentItemClick);
    };

    Application.prototype.onSubcomponentItemClick = function(e) {
      var $this;

      $this = $(e.target);
      $this.parent().parent().find('ul:visible').slideUp(200);
      return $this.next().slideDown(200);
    };

    Application.prototype.onOrientationChange = function(e) {
      var $original, $viewport;

      $viewport = $(document.createElement('META'));
      $original = $('meta[name="viewport"]');
      $viewport.prop({
        name: 'viewport',
        content: 'content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"'
      });
      if ($original.length === 0) {
        $('head').append($viewport);
      } else {
        $original.replaceWith($viewport);
      }
      return setTimeout(function() {
        if ($original.length === 0) {
          return $viewport.remove();
        } else {
          return $viewport.replaceWith($original);
        }
      }, 10);
    };

    return Application;

  })();

  window.MobilSchematics = window.MobilSchematics || {
    ViewModels: {}
  };

  MobilSchematics.init = function(options) {
    return new Application(options);
  };

}).call(this);
(function() {
  var i18n;

  i18n = (function() {
    function i18n(labels) {
      this.labels = labels;
    }

    i18n.prototype.t = function(key) {
      if (this.labels[key] != null) {
        return this.labels[key];
      } else {
        throw "Label '" + key + "' not found";
      }
    };

    return i18n;

  })();

  window.MobilSchematics = window.MobilSchematics || {
    ViewModels: {}
  };

  MobilSchematics.i18n = new i18n;

}).call(this);









