var roothPath = null;
//this function will work when working with after generate <li id> from xsl template only, cannot extract to test on local machine
function buildMobileMenu() {
    //set quick link
    cloneQuickLinks();
    //set all hierachy id each element	
    var url = document.URL;
    roothPath = url.split('/')[3] + "/" + url.split('/')[4];
    $('#mobileMenuHeadTitle').find('a').attr('href', '/' + roothPath);
    var filePath = splitURL(url);
    var levelDimension = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    var currentClassName = 1;
    var prevClassLevel = 0;
    var currentMenu = null;
    $.each(
		$('#menuItemContainer > li'),
		function (id, value) {

		    var className = '';
		    // get class name of each li element then replace string menulevel to get menu 
		    var currentClassLevel = parseInt(this.className.split(' ')[0].replace("menulevel", ""));

		    //XSL will create id only menulevel1 that will be used be condition ( value.id != "") to insert into array of levelDimension[0]
		    if (value.id != "") {
		        //initiate start id level 
		        levelDimension = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
		        levelDimension[0] = parseInt(value.id);
		    } else {
		        //gear up or down id level when class change 
		        if (currentClassLevel < prevClassLevel) {
		            levelDimension[currentClassLevel - 1]++;
		        }
		        if (currentClassLevel == prevClassLevel) {
		            levelDimension[currentClassLevel - 1]++;
		        }
		        if (currentClassLevel > prevClassLevel) {
		            levelDimension[currentClassLevel - 1] = 1;
		        }
		    }

		    //get class name to format id name like xx-xx-xx 
		    if (currentClassLevel == 1) {
		        className = levelDimension[0];
		    }
		    if (currentClassLevel == 2) {
		        className = levelDimension[0] + '-' + levelDimension[1];
		    } else if (currentClassLevel == 3) {
		        className = levelDimension[0] + '-' + levelDimension[1] + '-' + levelDimension[2];
		    } if (currentClassLevel == 4) {
		        className = levelDimension[0] + '-' + levelDimension[1] + '-' + levelDimension[2] + '-' + levelDimension[3];
		    } if (currentClassLevel == 5) {
		        className = levelDimension[0] + '-' + levelDimension[1] + '-' + levelDimension[2] + '-' + levelDimension[3] + '-' + levelDimension[4];
		    } if (currentClassLevel == 6) {
		        className = levelDimension[0] + '-' + levelDimension[1] + '-' + levelDimension[2] + '-' + levelDimension[3] + '-' + levelDimension[4] + '-' + levelDimension[5];
		    } if (currentClassLevel == 7) {
		        className = levelDimension[0] + '-' + levelDimension[1] + '-' + levelDimension[2] + '-' + levelDimension[3] + '-' + levelDimension[4] + '-' + levelDimension[5] + '-' + levelDimension[6];
		    }
		    prevClassLevel = currentClassLevel;
		    $(this).attr('id', className);
		    var currentPath = $(this).find('a').attr('href');
		    if (currentPath != undefined) {
		        var currentFilePath = splitURL(currentPath);
		        if (currentClassLevel == 1) {
		            if (currentFilePath[0] == filePath[0] && currentFilePath[1] == filePath[1]) {
		                $(this).css('background-color', 'rgb(152, 152, 152)');
		                currentMenu = this;
		            }
		        }
		        else if (currentClassLevel >= 2) {
		            if (currentPath == filePath[1]) {
		                $(this).css('background-color', 'rgb(152, 152, 152)');
		                currentMenu = this;
		            }
		        }
		    }
		});
    //chose only menu level 1, and else hide all 
    $('.menulevel2').hide();
    $('.menulevel3').hide();
    $('.menulevel4').hide();
    $('.menulevel5').hide();
    $('.menulevel6').hide();
    $('.menulevel7').hide();
    $('.menulevel8').hide();
    $('.menulevel9').hide();
    $('.menulevel10').hide();
    $('.menulevel11').hide();

    //add left arrow if there are children on each level
    $('.menulevel1').each(function () {
        if ($('[id^="' + this.id + '-"]').length > 0) {
            $('#' + this.id).find('.menuItemImg').addClass('menuItemImgNextBlack');
        }
    });

    //call current menu
    if (currentMenu != null) {
        navigationTraversal(currentMenu);
        $("#menuContainer").toggle();
        var currentIDList = currentMenu.id.split('-');
        var idName = "";
        for (var i = 0 ; i < currentIDList.length - 1; i++) {
            if (i == 0) {
                idName = currentIDList[i];
            } else {
                idName = idName + "-" + currentIDList[i];
            }
            navigationTraversal(
                idName
            );


        }
        $("#menuContainer").toggle();
    } else {
    }
    //if content has image on the left then add indent all line to the paragraph of the text
    if ($(window).width() < 600) {
        $('#list .item .img60-box.left ~ p').addClass('List_Template_paragraphWithImage60');
        $('#list .item .img90-box.left ~ p').addClass('List_Template_paragraphWithImage90');
        $('#list .item .img150-box.left ~ p').addClass('List_Template_paragraphWithImage150');
        $('#list .item .img220-box.left ~ p').addClass('List_Template_paragraphWithImage220');
        $('#list .item .img320-box.left ~ p').addClass('List_Template_paragraphWithImage320');
    }

}

function splitURL(url) {
    var urlPath = url.split('/');
    var fileName = urlPath[urlPath.length - 1];
    fileName = fileName.split('?')[0];


    var pathName = urlPath[urlPath.length - 2];
    return [pathName, fileName]
}
function showSubMenu(me) {
    //show hide next level only tag UL and if content in li but be inserted in div tag 
    var currentClass = $(me).parent().parent().attr('class') + "";
    var currentLevel = currentClass.replace("menulevel", "");
    currentLevel = parseInt(currentLevel);
    var nextChildLevelMenu = $(me).siblings("ul.menulevel" + (currentLevel + 1));
    nextChildLevelMenu.slideToggle(400);
}
var currentID = null;

var IsFirstPageMobileMenuShow = false;
function backPrevLevel() {
    if (currentID != null) {
        $("#" + currentID).find('.menuItemImg').removeClass('menuItemImgActive');
        var idLevel = currentID.split('-');
        var idLevelDeep = idLevel.length;
        if (idLevelDeep == 1) {
            if (IsFirstPageMobileMenuShow) {
                goToHomePage();
                return false;
            }
            //reset
            $('.menulevel1').show();
            $('.menulevel2').hide();
            $('.menulevel3').hide();
            IsFirstPageMobileMenuShow = true;
        } else {
            var splitID = currentID.split('-');
            //build id that exclude last level
            var prevID = "";
            for (var i = 0 ; i < splitID.length - 1 ; i++) {
                if (i > 0) {
                    prevID = prevID + "-";
                }
                prevID = prevID + splitID[i];
            }
            navigationTraversal(prevID);
        }
    } else {
        //goToHomePage();
    }
}
function backToFirstLevel() {
    $('.menulevel1').show();
    $('.menulevel1 div').removeClass('menuItemImgActive')
    for (var i = 2; i <= 10; i++) {
        $('.menulevel' + i).hide();
    }

}
function goToHomePage() {
    //location.href = "/"+roothPath; 
}
function navigationTraversal(me) {
    var id = "";

    if (me.parentNode == undefined || me.id == undefined) {
        id = me;
    } else if ("menuItemContainer" != me.parentNode.id) {
        id = me.parentNode.id
    } else if ("menuItemContainer" == me.parentNode.id) {
        id = currentID;
        if (currentID == null) {//mean that this navigationTraversal function is first call from onload 
            id = me.id;
        }
    }
    currentID = id;
    var idLevel = id.split('-');
    var idLevelDeep = idLevel.length;
    //$('[id^="'+id+'"]').addClass('active');	

    //check if it is active menu then go to previous on level exempt level one not got any further back
    var currentClass = $('#' + currentID).attr('class');
    if (currentClass.indexOf("active") > -1) {
        if (idLevelDeep == 1) {
            $('#' + currentID).removeClass('active');
            backToFirstLevel();
            return false;
        }
        backPrevLevel();
        return false;
    }


    //check if current id have more child ? if no more child then dont change 
    //first item <li> to Active class(silver grey bar)
    //(idLevelDeep+1) in case press back button also remove Active class
    for (var i = 1 ; i <= (idLevelDeep + 1) ; i++) {
        if ($('#' + currentID + '-1').length > 0) {
            $('.menulevel' + i).removeClass('active');
        }
    }

    //if there are children then expand children
    if ($('[id^="' + id + '-"]').length > 0) {
        //chnge image from arrow right to active
        resetClass($("#" + id).find('.menuItemImg'));
        $("#" + id).addClass('active');
        //but not change arrow to active when last level

        if ($('#' + currentID + '-1').length > 0) {
            $("#" + id).find('.menuItemImg').addClass('menuItemImgNextBlack');
            $("#" + id).find('.menuItemImg').addClass('menuItemImgActive');
        }

        //hide all grandchild and parent but show child
        $('.menulevel' + (idLevelDeep - 1)).hide();//hide parent level
        $('.menulevel' + (idLevelDeep + 1)).show();//show child level
        $('.menulevel' + (idLevelDeep + 1 + 1)).hide();//hide grandchild level

        //hide all sibling level but on current level
        $('#menuItemContainer li:not([id^="' + id + '-"])').hide();
        $("#" + id).show();//but not current level

        //add right arrow to all child
        resetClass($('.menulevel' + (idLevelDeep + 1) + ' div'));
        addRightArrowAllChildIfHaveGrandChild(currentID);


    }
}//navigationTraversal
function cloneSearchBox() {

    //Clone seach box to be another one of mobile version
    var searchElement = $("#globalHeader #search form[name='frmSimpleSearch']").clone();
    var inputElement = $(searchElement).find("input[id='qt']");
    $(inputElement).addClass("blank");
    $(inputElement).attr('id', 'search-q');
    $("#search-form").append(searchElement);
    //remove label and submit button out
    $("#search-form .barbgleftSumbit").remove();
    $(searchElement).find('label').remove();

}
function addRightArrowAllChildIfHaveGrandChild(currentID) {
    $.each(
		$('[id^="' + currentID + '-"]'),
		function (id, childElement) {
		    //check if child element of this currentID have grandchild ?
		    //if yes then add arrow otherwise do nothing.
		    if ($('[id^="' + childElement.id + '-"]').length > 0) {
		        //add arrow
		        $('#' + childElement.id + ' div').addClass('menuItemImgNextWhite');
		    }
		    if ($('#' + childElement.id + ' a').attr('href') == undefined) {
		        //add arrow down
		        $('#' + childElement.id + ' div').addClass('menuItemImgDownWhite');

		        //change color to grey
		        $('#' + childElement.id + ' a').removeClass();
		        $('#' + childElement.id + ' a').addClass('menuItemTxtNolink');
		    }
		});
}

function resetClass(id) {
    var firstClass = id.attr('class').split(' ')[0];//save first class to memory
    id.removeClass();//remove all class
    id.addClass(firstClass);//add first class back to item
}

//checks if flash is installed/enabled on the browser
function isFlashEnabled() {
    var hasFlash = false;
    try {
        var fo = new ActiveXObject('ShockwaveFlash.ShockwaveFlash');
        if (fo) hasFlash = true;
    }
    catch (e) {
        if (navigator.mimeTypes["application/x-shockwave-flash"] != undefined) hasFlash = true;
    }
    return hasFlash;
}

function addImageReplaceFlash() {
    if (isFlashEnabled() == false) {
        //replace FLV with mp4 or Image if open in unsupported flash beowser by getting path from SWFObject
        try {
            var flashVideoTopVar = document.getElementById('flashFeature');
            var flashVideoPath = so.getVariable('videopath');
            if (flashVideoPath === undefined && flashVideoTopVar === undefined) {
                var mp4VideoPath = flashVideoPath.replace('.flv', '.mp4');
                $.ajax({
                    url: mp4VideoPath,
                    type: 'HEAD',
                    error:
                        function () {
                            flashVideoTopVar.innerHTML = "<img style='width:100%' src='" + so.variables.imagepath + "'/>";
                        },
                    success:
                        function () {
                            flashVideoTopVar.innerHTML = "<video id='mobileVideoFlashReplacement' width='100%' height='auto' src='" + mp4VideoPath + "' controls><source src='" + mp4VideoPath + "' type='video/mp4'>Your browser does not support the video tag.</video>";
                        }
                });
            }
        } catch (e) { console.log('Debug logging :::', e); }

        //replace flashBody class which is flv inside SWF with image
        /**
        try {
            $(".flashBody").each(
		        function (index, value) {
		            var swfPath = so.getAttribute('swf');
		            var videoPathStartindex = swfPath.indexOf('videopath=') + 10;
		            var imagePathStartindex = swfPath.indexOf('imagepath=') + 10;
		            var ampersandindex = swfPath.indexOf('&');
		            if (ampersandindex > videoPathStartindex) {
		                videopath = swfPath.substr(videoPathStartindex, ampersandindex);
		                imagepath = swfPath.substr(imagePathStartindex);
		            }
		            else if (ampersandindex > imagePathStartindex) {
		                imagepath = swfPath.substr(imagePathStartindex, ampersandindex);
		                videopath = swfPath.substr(videoPathStartindex);
		            }
		            var mp4VideoPath = videopath.replace('.flv', '.mp4');
		            var jpgPath = imagepath;
		            var mobilejpgPath = imagepath.replace('.jpg', '_mobile.jpg');
		            $.ajax({
		                url: mp4VideoPath,
		                type: 'HEAD',
		                error:
                            function () {
                                $(this).html("<img style='width:100%' src='" + imagepath + "'/>");
                            },
		                success:
                            function () {
                                $(this).html("<video id='mobileVideoFlashReplacement' width='100%' height='auto' src='" + mp4VideoPath + "' controls><source src='" + mp4VideoPath + "' type='video/mp4'>Your browser does not support the video tag.</video>");
                            }
		            });
		        }
            );
        } catch (e) { console.log('Debug logging :::', e); }
        **///
    }
	
    if (window.innerWidth < 600) {
        //replace mainFeats ID which is SWF for Main page with image main.jpg

        try {
            var mainFeatsVar = document.getElementById('mainFeats');
            if (mainFeatsVar != null) {
                var swfPath = so.getAttribute('swf');
				var temp = swfPath.split('/');
				var startImgPath = '../'+temp[1]+"/Images/";
                var jpgPath = startImgPath + temp[temp.length-1].replace('.swf', '.jpg');
				var gifPath = startImgPath + temp[temp.length-1].replace('.swf', '.gif');
                //var mobilejpgPath = swfPath.replace('.swf', '_mobile.jpg');
                $.ajax({
                    url: gifPath,
                    type: 'HEAD',
                    error:
                        function () {
                            mainFeatsVar.innerHTML = "<img style='width:100%' src='" + jpgPath + "'/>";
                        },
                    success:
                        function () {
                            mainFeatsVar.innerHTML = "<img style='width:100%' src='" + gifPath + "'/>";
							//mainFeatsVar.innerHTML = "<img id='replaceBannerImageForDesktop' style='width:100%' src='" + jpgPath + "'/><img id='replaceBannerImageForMobile' style='width:100%' src='" + mobilejpgPath + "'/>";
                        }
                });
            }
        } catch (e) { console.log('Debug logging :::', e); }

    }
	

}
//Add id to auto gen image in Safari
var autoImage = $('#mainContent a[href*=".swf"]');
if ($('#mainContent a[href*=".swf"]').length > 0) {
    autoImage.find('img').attr("id", "mobileImageFlashReplacement");
    autoImage.find('img').attr("style", "width: 100%;");
};


function rearrangeBannerInAndCallOutInHomePage() {
    if (window.innerWidth < 600) {
        var subfeatureCallouts = $('#subfeatureCallouts');
        $("#mainPanel").prepend(subfeatureCallouts);

        // landing page use append after mainFeature (Home page don't has mainFeature)
        if ($("#mainFeature").length > 0) {
            $("#mainFeature").append(subfeatureCallouts);
        }

        var mainFeats = $('#mainFeats');
        $("#mainPanel").before(mainFeats);

        $("#featureRowTable").parent().css('display', 'none');
    }
}



function cloneQuickLinkToPlaceBeforeFooter() {
    if ($(".quicklinks").length > 0) {
        var quicklinkElement = $(".quicklinks").clone();
        var headerbarElement = $(quicklinkElement).find('.headerbar');
        var quicklinksElement = $(quicklinkElement).find('ul');
        var newQuicklinksElement = "<div id='quicklinksMobile' class='layoutRow clrfix'><div class='subfeature csingle ccenter'>" + $("<div>").append($(headerbarElement)).html() + "<div class='padding'>" + $("<div>").append($(quicklinksElement)).html() + "</div></div></div>";
        if ($("#mainContent").length > 0) {
            $("#mainContent").append(newQuicklinksElement);
        } else {
            //this use in VDO Landing Template
            $("#mainContent_thin").append(newQuicklinksElement);
        }
    }

}
function cloneQuickLinks() {
    if (document.getElementById("quick-links")) {
        var ql = document.getElementById("quick-links");
        var qlMobile = ql.cloneNode(true);
        qlMobile.className += ' mobile';
        document.getElementById("content").appendChild(qlMobile);
    }
}

function hideUnImportantHeaderLinks() {
    //hide upper unimportant links Ex: Home, contact us and shorten technical help text to tech help
    if ($('#globalNav .clrfix li').length > 2) {
        $('#globalNav .clrfix li').each(function (i, obj) {
            var url = $(this).find('a').attr('href')
            //remove query part out
            if (url.indexOf('?') > 0) {
                url = url.substr(0, url.indexOf('?'));
            }
            url = url.split('/');
            urlToShow = url[url.length - 2] + "/" + url[url.length - 1];
            if (url[url.length - 1].toLowerCase() == "default.aspx" || urlToShow.toLowerCase() == "corporate/news.aspx") {
                //url in this statement still show, so do nothing
            }
            else {
                $(this).addClass("hideInMobile");
            }
        });
    }

}

function tabbedTableToAccordian() {
    ////// create new element for  Accordian to replace tabbed table ////////////
    $("#divTabs ul li a").each(
		function (index, value) {
		    //**********menu header ************//
		    var e = $("<div class='mobile_divTabs'> " +

				"<div class='mobile_divTabHeader'>"
					+ $(this).html() +
					"<div class='accordianArrow accordianArrowDown'></div>" +
				"</div>" +

				"<div class='mobile_divTabContent'>" +
					$('.divTabContent:nth-child(' + (index + 1) + ')').html()
				+ "</div>" +

			"</div>");

		    $("#mainContent_thin").append(e);
		}
	);
    //////////binded function click to each element////////////
    $(".mobile_divTabContent").hide();
    $(".mobile_divTabs").unbind();
    $(".mobile_divTabs").click(function (a, b) {
        //memory old currentstate
        var currentState = $(this).find(".mobile_divTabContent").css('display');

        //reset to hide all
        $(".mobile_divTabContent").hide();
        $('.accordianArrow').removeClass('accordianArrowUp');
        $('.accordianArrow').addClass('accordianArrowDown');

        if (currentState == 'block') {
            $(this).find(".mobile_divTabContent").hide();
            /****toggle arrow****/
            $(this).find('.accordianArrow').removeClass('accordianArrowUp');
            $(this).find('.accordianArrow').addClass('accordianArrowDown');
        } else {
            $(this).find(".mobile_divTabContent").show();
            /****toggle arrow****/
            $(this).find('.accordianArrow').removeClass('accordianArrowDown');
            $(this).find('.accordianArrow').addClass('accordianArrowUp');
        }
    });
}
function cloneRelatedRightBoxToBottomScreen() {
    //clone related right box tp append under screen
    $(".related").each(function () {
        var relatedElement = $(this).clone();
        $(relatedElement).attr('class', 'relatedMobile');
        $("#globalFooter").before($("<div class='relatedMobile'>").append($(relatedElement)).html());
    });
}
function moveToolBarWideToBottom() {
    var toolBarWide = $('#toolbar_wide');
    $("#mainContent_thin").append(toolBarWide);
}
function moveImageMainFeatureToMainPanel() {
    // if the image is not square then move image out of the mainPanel to make it full screen
    if (($('#mainFeature img').width() / $('#mainFeature img').height()) > 1) {
        $('#mainPanel').before($('#mainFeature img'));
    }
}
function moveFooterToOutsideMainPanel() {
    if ($('#mainPanel #footer').length > 0) {
        $('#mainPanel').after($('#footer'));
    }
}
function rearrangeEUCookiePanel() {
	var temp = $('#eCookiesPanel').clone();
	$('#eCookiesPanel').remove();
	temp.insertAfter($('#globalHeader'));
}
function fallbackPlaceholderForIELessThanNine(){
	$("[placeholder]").focus(function(){
            if($(this).val()==$(this).attr("placeholder")) $(this).val("");
        }).blur(function(){
            if($(this).val()=="") $(this).val($(this).attr("placeholder"));
        }).blur();

        $("[placeholder]").parents("form").submit(function() {
            $(this).find('[placeholder]').each(function() {
                if ($(this).val() == $(this).attr("placeholder")) {
                    $(this).val("");
                }
            })
        });
}
function rearrangemp4BannerForMobile(){
	var mp4videoElement = $('#mp4banner').clone();
	$('#mainPanel').prepend(mp4videoElement);
}
	
$(window).ready(function () {  
if ( document.getElementById('navTitle') != null && trim(document.getElementById('navTitle').innerHTML) == ""){

$('#navPanel').css('display','none')
}
  
    	if(!$.support.placeholder){
        	fallbackPlaceholderForIELessThanNine();
    	}
    if (window.innerWidth < 600) {
	rearrangeEUCookiePanel();
	rearrangemp4BannerForMobile();
        //moveImageMainFeatureToMainPanel();
        rearrangeBannerInAndCallOutInHomePage();
        hideUnImportantHeaderLinks();
        addImageReplaceFlash();
        moveToolBarWideToBottom();
        cloneSearchBox();
        cloneRelatedRightBoxToBottomScreen();
        tabbedTableToAccordian();
        cloneQuickLinkToPlaceBeforeFooter();
        moveFooterToOutsideMainPanel();
    }


    /***************************
		Start - mobile menu management
	****************************/
    //Clone first nav to be another one of mobile version
    var mainNavElement = $("#mainNav").find("ul").clone();
    var i = 1;
    $(mainNavElement).find('li').each(function () {
        $(this).addClass("menulevel1");
        $(this).attr('id', i);
        $(this).append("<div onclick='navigationTraversal(this)' class='menuItemImg menuItemImgNextBlack'></div>");
        i++;
    });
    var menuList = $(mainNavElement).html();
    $("#menuItemContainer").append(menuList);

    //Construct left nav into mobile menu
    var url = window.location.href;
    //remove query part out
    if (url.indexOf('?') > 0) {
        url = url.substr(0, url.indexOf('?'));
    }
    url = url.split('/');
    //if open in shared search page (search/search.aspx)
    if (url[url.length - 2].toLowerCase() == "search") {
        //hide menu
        $('#menu').hide();
    }
        //if open in country search page (english/search.aspx) construct nav menu
    else {
        $.ajaxSetup({
            'beforeSend': function (xhr) {
                xhr.overrideMimeType('text/html; charset=ISO-8859-1');
            },
        });
        //load all Left Nav htmls to be under Clone first nav if not in Search page
        $('#menuItemContainer .menulevel1').each(function () {
            var splitURL = $(this).find("a").attr('href').split('/');
            var lastWordURL = splitURL[splitURL.length - 1];
            //exclude .aspx extension in URL
            var targetURL = lastWordURL.substr(0, lastWordURL.indexOf(".aspx"));
            var leftNavHtmlPath = "./Navigation/" + targetURL + ".html";
            var i = 0;
            var currentMenu = $(this);
            i++;
            $("#temp").load(leftNavHtmlPath, function (responseText, textStatus, req) {
                if (textStatus == "error") {
					//add fallback leftnav names (level1)
					switch(targetURL) {
						case "industrialspecialty":
							targetURL = "industrialspeciality";
							break;
						case "industrialspeciality":
							targetURL = "industrialspecialty";
							break;
						case "heavydutyengineoils":
							targetURL = "heavydutyoils";
							break;
						case "buy":
							targetURL = "wheretobuy";
							break;
						case "mobil-brands":
							targetURL = "mobilbrands";
							break;
						case "where-to-buy":
							targetURL = "wheretobuy";
							break;
						case "carengineoils":
							targetURL = "motoroils";
							break;
						case "oilselectortool":
							targetURL = "whichoil";
							break;
						case "oilselector":
							targetURL = "whichoiltool";
							break;
						case "which-oil":
							targetURL = "whichoil";
							break;
						case "motoroils":
							targetURL = "carengineoils";
							break;
						default:
							targetURL = targetURL;
					}
					leftNavHtmlPath = "./Navigation/" + targetURL + ".html";
					$("#temp").load(leftNavHtmlPath, function (responseText, textStatus, req) {
						if (textStatus == "error") {
							//add fallback leftnav names (level2)
							switch(targetURL) {
								case "industrialspeciality":
									targetURL = "industrial";
									break;
								case "mobilbrands":
									targetURL = "brands";
									break;
								case "wheretobuy":
									targetURL = "buy";
									break;
								case "whichoil":
									targetURL = "oilselectortool";
									break;
								default:
									targetURL = targetURL;
							}
							leftNavHtmlPath = "./Navigation/" + targetURL + ".html";
							$("#temp").load(leftNavHtmlPath, function (responseText, textStatus, req) {
								if (textStatus == "error") {
									//add fallback leftnav names (level3)
									switch(targetURL) {
										case "industrial":
											targetURL = "industrialandspecialtylubricants";
											break;
										default:
											targetURL = targetURL;
									}
									leftNavHtmlPath = "./Navigation/" + targetURL + ".html";
									$("#temp").load(leftNavHtmlPath, function (responseText, textStatus, req) {
										if (textStatus == "error") {
											$(currentMenu).find(".menuItemImgNextBlack").hide();
										}
										else {
											$(currentMenu).after(
												$("#temp").html()
											);
											$("#temp").html("");
										}
									});
								}
								else {
									$(currentMenu).after(
										$("#temp").html()
									);
									$("#temp").html("");
								}
							});
						}
						else {
							$(currentMenu).after(
								$("#temp").html()
							);
							$("#temp").html("");
						}
					});
                }
                else {
                    $(currentMenu).after(
						$("#temp").html()
					);
                    $("#temp").html("");
                }
            });
        });


    }
    //////////binded function click to each element////////////
    $(".mobile_divTabContent").hide();
    $(".mobile_divTabs").unbind();
    $(".mobile_divTabs").click(function (a, b) {
        //memory old currentstate
        var currentState = $(this).find(".mobile_divTabContent").css('display');

        //reset to hide all
        $(".mobile_divTabContent").hide();
        $('.accordianArrow').removeClass('accordianArrowUp');
        $('.accordianArrow').addClass('accordianArrowDown');

        if (currentState == 'block') {
            $(this).find(".mobile_divTabContent").hide();
            /****toggle arrow****/
            $(this).find('.accordianArrow').removeClass('accordianArrowUp');
            $(this).find('.accordianArrow').addClass('accordianArrowDown');
        } else {
            $(this).find(".mobile_divTabContent").show();
            /****toggle arrow****/
            $(this).find('.accordianArrow').removeClass('accordianArrowDown');
            $(this).find('.accordianArrow').addClass('accordianArrowUp');
        }
    });

    $('#menu').on('click', function (e) {
        $("#menuContainer").toggle();
        $(".overlay").css("display", "block");
        e.stopPropagation();
        return false;
    });
    $('#mobileMenuBack').on('click', function (e) {
        backToFirstLevel();
    });

    $('#mobileMenuClose').on('click', function (e) {
        $("#menuContainer").toggle();
        e.stopPropagation();
        return false;
    });
    $('#mobileMenuClose').on('click', function (e) {
        $("#menuContainer").css("display", "none");
        $(".overlay").css("display", "none");
    });
    //append grey overlay when opening menu & language selector
    var overlayElement = "<div class='overlay'></div>";
    $("body").append(overlayElement);
    $(".overlay").click(function () {
        $("#menuContainer").css("display", "none");
        $(".overlay").css("display", "none");
    });
    //append grey overlay when opening search box
    var searchoverlayElement = "<div class='searchoverlay'></div>";
    $("#mainPanel").append(searchoverlayElement);
    $(".searchoverlay").click(function () {
        toggleSearch();
    });
    //cleaning &nbsp; out to show correctly in mobile screen
    $("p").each(function () {
        var $this = $(this);
        $this.html($this.html().replace(/&nbsp;/g, ''));
    });

    //cleaning font-size:small and x-small (<14px)
    var xsmallElements = $('span').filter(function () { return $(this).css('font-size') < '12px' });
    $(xsmallElements).each(function () {
        $(this).css("font-size", "14px");
        $(this).css("line-height", "1.4em");
    });
    var smallElements = $('span').filter(function () { return ($(this).css('font-size') >= '12px') && ($(this).css('font-size') < '14px') });
    $(smallElements).each(function () {
        $(this).css("font-size", "18px");
        $(this).css("line-height", "1.4em");
    });
    //add togle language at language text
    $('#selectedLanugage').attr('onclick', 'toggleLanguage()');

    //hide "Learn more/Learnmore" link inside item box
    $('#mainContent .item a').each(function () {
        if ($(this).html().substr(0, 5) == "Learn") $(this).hide();
    });

    //making h1 in case some template don't have
    if ($('h1').length <= 0) {
        var tempFirstSpan = $('#mainContent span:first-child').first().clone();
        var temp = $('<h1>').append($(tempFirstSpan));
        $('#mainContent span:first-child').first().replaceWith(temp);
    }
    //hide line right after h1
    if ($('h1').next().is('br')) {
        $('h1').next().hide();
    }

    //fix relatedMobile showing problem
    $('.relatedMobile').each(function () {
        var pInDiv = $(this).find('p').remove();
        $(this).append('<div class="relatedText">' + $("<div>").append($(pInDiv)).html() + '</div>');
    });


    /***************************
		End - mobile menu management
	****************************/
});

$(window).load(function () {

    waitForElementToDisplay(".menulevel2", 100);
});

function waitForElementToDisplay(elementName, time) {
    if ($(elementName).length > 0) {
        buildMobileMenu();
        return;
    }
    else {
        setTimeout(function () {
            waitForElementToDisplay(elementName, time);
        }, time);
    }
}
function toggleSearch() {
    var sform = document.getElementById("search-form");
    var sicon = document.getElementById("search-icon");
    var status = sicon.className;
    if (status == 'close') {
        sicon.className = 'open';
        sform.className = 'open';
        $(".searchoverlay").css("display", "block");
    } else {
        sicon.className = 'close';
        sform.className = 'close';
        $(".searchoverlay").css("display", "none");
    }
}