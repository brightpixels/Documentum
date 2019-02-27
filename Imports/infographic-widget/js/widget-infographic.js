var Infographics=function(a){"use strict";function b(){var a=h.createBlock("intro");g.$container.append(a)}function c(){jQuery.each(g.details,function(a,b){var c=h.createBlock(b);g.$container.append(c),a===g.details.length-1&&jQuery(".infographic-detail",g.$container).wrapAll('<div class="infographic-details" />')})}function d(a){a.attr("data-status","is-visible"),jQuery(window).on("resize scroll",function(){e(a)&&a.attr("data-status","is-visible")})}function e(a){var b=a[0].getBoundingClientRect();return b.top>=0&&b.left>=0&&b.bottom<=jQuery(window).height()&&b.right<=jQuery(window).width()}function f(a){var b=jQuery(window),c=b.scrollTop();a.preventDefault(),jQuery("html, body").animate({scrollTop:c+b.height()},500)}var g=this,h={};this.config=a.config||null,this.data={},this.id=a.id?"#"+a.id:null,this.infographics=a.infographics||null,this.intro=a.intro||null,this.details=a.details||null,this.$container=jQuery(this.id),h.init=function(a){a?(g.data=a,h.loadCSS(g.data.css),h.buildWidget(g.infographics),h.attachEventHandlers()):console.error("Error: No data received from config file")},h.loadCSS=function(a){document.createStyleSheet?document.createStyleSheet(a):jQuery("head").append('<link id="widget-styles" rel="stylesheet" type="text/css" href="'+a+'" />')},h.buildWidget=function(a){g.$container.addClass("widget-infographic"),g.intro&&b(),jQuery.each(g.infographics,function(a,b){var d=h.createInfographic(a,b);g.$container.append(d),a===g.infographics.length-1&&(jQuery(".infographic",g.$container).wrapAll('<div class="infographics" />'),g.details&&c())})},h.createInfographic=function(a,b){var c="",d=g.data.infographics[b];c+='<div class="infographic infographic-'+b+" "+(a%2?"even":"odd")+" "+(a==g.infographics.length-1?"last":"")+'" data-status="is-loading"><div class="infographic--icon">';for(var e=0;e<d.images.length;e++)c+='<img id="'+d.images[e].id+'" class="'+d.images[e].class+'" class="icon" src="'+d.images[e].src+'">';return c+='</div><div class="infographic--text"><p>'+d.text+"</p></div></div>"},h.createBlock=function(a){var b="",c="intro"===a?g[a]:g.data.details[a],d="intro"===a?"h2":"h3";return b+='<div class="infographic-block infographic-'+a,b+="intro"===a?'">':' infographic-detail">',b+='<span id="infographic-'+a+'" class="nav-to--anchor"></span>',c.title&&(b+="<"+d+' class="infographic-block--title">'+c.title+"</"+d+">"),c.image&&(b+='<div class="infographic-block--image"><img class="icon" src="'+c.image+'"></div>'),c.text&&(b+='<div class="infographic-block--text">',jQuery.each(c.text,function(a,c){b+="<p>"+c+"</p>"}),b+="</div>"),c.objective&&(b+='<p class="infographic-block--objective"><strong>'+g.data.locale.objective+":</strong> "+c.objective+"</p>"),b+="</div>"},h.attachEventHandlers=function(){var a=jQuery(".infographic",g.$container),b=jQuery(".nav-to--link",g.$container);jQuery.each(a,function(a,b){var c=jQuery(b);jQuery("img",c).on("load",d(c))}),b.on("click",f)},jQuery(function(){jQuery.getJSON(g.config,function(a){h.init(a)})})};
//# sourceMappingURL=widget-infographic.js.map