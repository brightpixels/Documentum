 var roothPath = null;
 //this function will work when working with after generate <li id> from xsl template only, cannot extract to test on local machine
function buildMobileMenu(){
	//set quick link
	cloneQuickLinks();
	//set all hierachy id each element	
	var url = document.URL;
	roothPath = url.split('/')[3]+"/"+url.split('/')[4];
	$('#mobileMenuHeadTitle').find('a').attr('href','/'+roothPath);
	var filePath = splitURL(url);
	var levelDimension = [1,1,1,1,1,1,1,1,1,1,1]; 
	var currentClassName = 1;
	var prevClassLevel = 0;
	var currentMenu = null;
	$.each(
		$('#menuItemContainer > li'),
		function(id,value){
			
			var className ='';
			// get class name of each li element then replace string menulevel to get menu 
			var currentClassLevel =  parseInt(  this.className.split(' ')[0].replace("menulevel","")  );
			
			//XSL will create id only menulevel1 that will be used be condition ( value.id != "") to insert into array of levelDimension[0]
			if( value.id != ""){
				//initiate start id level 
				levelDimension = [1,1,1,1,1,1,1,1,1,1,1]; 
				levelDimension[0] = parseInt( value.id);
			}else{
				//gear up or down id level when class change 
				if( currentClassLevel  <  prevClassLevel){
				 levelDimension[currentClassLevel-1]++;
				}
				if(currentClassLevel  ==  prevClassLevel){
					levelDimension[currentClassLevel-1]++;
				}
				if( currentClassLevel  >  prevClassLevel){
					levelDimension[currentClassLevel-1] = 1;
				}
			}
			
			//get class name to format id name like xx-xx-xx 
			if(currentClassLevel ==1){
				className = levelDimension[0];
			}
			if(currentClassLevel ==2){
				className = levelDimension[0]+'-'+levelDimension[1];
			}else	if(currentClassLevel ==3){
				className = levelDimension[0]+'-'+levelDimension[1]+'-'+levelDimension[2]; 
			}if(currentClassLevel ==4){ 
				className = levelDimension[0]+'-'+levelDimension[1]+'-'+levelDimension[2]+'-'+levelDimension[3]; 
			}if(currentClassLevel ==5){ 
				className = levelDimension[0]+'-'+levelDimension[1]+'-'+levelDimension[2]+'-'+levelDimension[3]+'-'+levelDimension[4]; 
			}if(currentClassLevel ==6){ 
				className = levelDimension[0]+'-'+levelDimension[1]+'-'+levelDimension[2]+'-'+levelDimension[3]+'-'+levelDimension[4]+'-'+levelDimension[5]; 
			}if(currentClassLevel ==7){ 
				className = levelDimension[0]+'-'+levelDimension[1]+'-'+levelDimension[2]+'-'+levelDimension[3]+'-'+levelDimension[4]+'-'+levelDimension[5]+'-'+levelDimension[6]; 
			}						
			prevClassLevel = currentClassLevel;
			$(this).attr('id',className);
			var currentPath = $(this).find('a').attr('href');
			if(currentPath != undefined){
				var currentFilePath = splitURL(currentPath);
				if(currentClassLevel == 1){
					if( currentFilePath[0]==filePath[0] && currentFilePath[1]==filePath[1] ){
						$(this).css('background-color','rgb(152, 152, 152)');
						currentMenu = this;
					}
				}
				else if(currentClassLevel >= 2){
					if( currentPath==filePath[1] ){
						$(this).css('background-color','rgb(152, 152, 152)');
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
		$('.menulevel1').each(function(){
			if($('[id^="'+this.id+'-"]').length>0){
				$('#'+this.id).find('.menuItemImg').addClass('menuItemImgNextBlack');
			}
		})	;
		
		//call current menu
		if(currentMenu != null){
			navigationTraversal(currentMenu);
			$("#menuContainer").toggle();
			var currentIDList = currentMenu.id.split('-');
			var idName ="";
			for(var i=0 ;i<currentIDList.length-1; i++){
				if(i==0){
					idName = currentIDList[i];
				}else{
					idName = idName + "-" +currentIDList[i];
				}
				navigationTraversal(
					idName
				); 
				
				
			}
			$("#menuContainer").toggle();
		}else{
		}
		//if content has image on the left then add indent all line to the paragraph of the text
		if ( $(window).width() < 600){
			$('#list .item .img60-box.left ~ p').addClass('List_Template_paragraphWithImage60');
			$('#list .item .img90-box.left ~ p').addClass('List_Template_paragraphWithImage90');
			$('#list .item .img150-box.left ~ p').addClass('List_Template_paragraphWithImage150');
			$('#list .item .img220-box.left ~ p').addClass('List_Template_paragraphWithImage220');
			$('#list .item .img320-box.left ~ p').addClass('List_Template_paragraphWithImage320');
		}
		
}
	
function splitURL(url){
  var urlPath = url.split('/');
  var fileName =  urlPath[urlPath.length-1];
  fileName = fileName.split('?')[0];
  
  
  var pathName =  urlPath[urlPath.length-2];
  return [pathName,fileName]
}
function showSubMenu(me){
	//show hide next level only tag UL and if content in li but be inserted in div tag 
	var currentClass = 		$(me).parent().parent().attr('class')+"";
	var currentLevel = currentClass.replace("menulevel","");
	currentLevel = parseInt(currentLevel);
	var nextChildLevelMenu = $(me).siblings("ul.menulevel"+(currentLevel+1));
	nextChildLevelMenu.slideToggle(400);
}
var currentID = null;

var IsFirstPageMobileMenuShow = false;
function backPrevLevel(){
	if(currentID != null ){
	$("#"+currentID).find('.menuItemImg').removeClass('menuItemImgActive');
		var idLevel= currentID.split('-');
		var idLevelDeep = idLevel.length;
		  if(idLevelDeep  ==1){
				if(IsFirstPageMobileMenuShow){
					goToHomePage();
					return false;
				}
			  //reset
			  $('.menulevel1').show();
			  $('.menulevel2').hide();
			  $('.menulevel3').hide();
			  IsFirstPageMobileMenuShow = true;
		  }else{
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
	}else{
		//goToHomePage();
	}
}
function backToFirstLevel(){
	$('.menulevel1').show();
	$('.menulevel1 div').removeClass('menuItemImgActive')
	for(var i=2;i<=10;i++){
		$('.menulevel'+i).hide();
	}
	
}
function goToHomePage(){
	//location.href = "/"+roothPath; 
}
function navigationTraversal(me){
	var id = "";
	
	if(me.parentNode==undefined || me.id == undefined){
		id=me;
	}else if("menuItemContainer" != me.parentNode.id){
		id = me.parentNode.id
	}else if("menuItemContainer" == me.parentNode.id){
		id = currentID;
		if(currentID == null){//mean that this navigationTraversal function is first call from onload 
			id = me.id;
		}
	}
	currentID = id;
	var idLevel= id.split('-');
	var idLevelDeep = idLevel.length;
	//$('[id^="'+id+'"]').addClass('active');	
	
	//check if it is active menu then go to previous on level exempt level one not got any further back
	var currentClass =  $('#'+currentID).attr('class');
	if(currentClass.indexOf("active") > -1){
		if(idLevelDeep ==1){
			$('#'+currentID).removeClass('active');
			backToFirstLevel();
			return false;
		}
		backPrevLevel();
		return false;
	}
	
	
	//check if current id have more child ? if no more child then dont change 
	//first item <li> to Active class(silver grey bar)
	//(idLevelDeep+1) in case press back button also remove Active class
	for(var i=1 ;i<=(idLevelDeep+1) ;i++ ){
		if($('#'+currentID+'-1').length > 0 ){
			$('.menulevel'+i).removeClass('active');
		}
	}
	
	//if there are children then expand children
	if($('[id^="'+id+'-"]').length>0){
		//chnge image from arrow right to active
		resetClass($("#"+id).find('.menuItemImg'));
		$("#"+id).addClass('active');
		//but not change arrow to active when last level
		
		if($('#'+currentID+'-1').length > 0 ){
			$("#"+id).find('.menuItemImg').addClass('menuItemImgNextBlack');
			$("#"+id).find('.menuItemImg').addClass('menuItemImgActive');
		}
		
		//hide all grandchild and parent but show child
		$('.menulevel'+(idLevelDeep-1)).hide();//hide parent level
		$('.menulevel'+(idLevelDeep+1)).show();//show child level
		$('.menulevel'+(idLevelDeep+1+1)).hide();//hide grandchild level
		
		//hide all sibling level but on current level
		$('#menuItemContainer li:not([id^="'+id+'-"])').hide();
		$("#"+id).show();//but not current level
		
		//add right arrow to all child
		resetClass( $('.menulevel'+(idLevelDeep+1) + ' div')  );
		addRightArrowAllChildIfHaveGrandChild(currentID);
			
		
	}
}//navigationTraversal
function cloneSearchBox(){

}
function addRightArrowAllChildIfHaveGrandChild(currentID){
	$.each(
		$('[id^="'+currentID+'-"]'),
		function(id,childElement){ 
			//check if child element of this currentID have grandchild ?
			//if yes then add arrow otherwise do nothing.
			if($('[id^="'+childElement.id+'-"]').length>0){
				//add arrow
				$('#'+childElement.id  + ' div').addClass('menuItemImgNextWhite');
			}
			if( $('#'+childElement.id+' a').attr('href') == undefined ){
				//add arrow down
				$('#'+childElement.id  + ' div').addClass('menuItemImgDownWhite');
				
				//change color to grey
				$('#'+childElement.id +' a').removeClass();
				$('#'+childElement.id +' a').addClass('menuItemTxtNolink');
			}
		});
}
		 
function resetClass(id){
	var firstClass = id.attr('class').split(' ')[0];//save first class to memory
	id.removeClass();//remove all class
	id.addClass(firstClass);//add first class back to item
}
function cloneQuickLinks() {
	if(document.getElementById("quick-links"))
	{
				var ql = document.getElementById("quick-links");
				var qlMobile = ql.cloneNode(true);
				qlMobile.className += ' mobile';
				document.getElementById("content").appendChild(qlMobile);
	}
}
//checks if flash is installed/enabled on the browser
function isFlashEnabled()
{
    var hasFlash = false;
    try
    {
        var fo = new ActiveXObject('ShockwaveFlash.ShockwaveFlash');
        if(fo) hasFlash = true;
    }
    catch(e)
    {
        if(navigator.mimeTypes ["application/x-shockwave-flash"] != undefined) hasFlash = true;
    }
    return hasFlash;
}

function addImageReplaceFlash(){
//replace FLV with mp4 or Image if open in unsupported flash beowser by getting path from SWFObject

	try {
		var flashVideoTopVar =  document.getElementById('flashVideoTop');
		var flashVideoPath = so.getVariable('videopath');
		if(flashVideoPath != null && flashVideoTopVar != null ){
			var mp4VideoPath = flashVideoPath.replace('.flv','.mp4');
			if(isFlashEnabled() == false){
				$.ajax({
					url:mp4VideoPath,
					type:'HEAD',
					error:
						function(){
							flashVideoTopVar.innerHTML = "<img style='width:100%' src='"+so.variables.imagepath+"'/>";
						},
					success:
						function(){
							flashVideoTopVar.innerHTML = "<video id='mobileVideoFlashReplacement' width='100%' height='auto' src='"+ mp4VideoPath +"' controls><source src='"+ mp4VideoPath +"' type='video/mp4'>Your browser does not support the video tag.</video>";
						}
				});
			}
		}
		//if flash is enable
		else{
			//do nothing
		}
	}catch(e){console.log('Debug logging :::',e);}
	
	

if(window.innerWidth < 600 || isFlashEnabled() == false){
	//replace mainFeats ID which is SWF for Main page with image main.jpg
	var linkForStaticBackupImage = "";
	try {
		var mainFeatsVar =  document.getElementById('mainFeats');
		if(mainFeatsVar  != null ){
			var swfPath = so.getAttribute('swf');
			var jpgPath = swfPath.replace('.swf','.jpg');
			var mobilejpgPath = swfPath.replace('.swf','_mobile.jpg');
			if(so.getVariable('xomlink') !== undefined){
				linkForStaticBackupImage = so.getVariable('xomlink');
			}
			$.ajax({
				url:mobilejpgPath,
				type:'HEAD',
				error:
					function(){
					if(linkForStaticBackupImage == ""){
						mainFeatsVar.innerHTML = "<img style='width:100%' src='"+jpgPath+"'/>";
					}
					else{
						mainFeatsVar.innerHTML = "<a href='" + linkForStaticBackupImage + "'><img style='width:100%' src='"+jpgPath+"'/></a>";
					}
					},
				success:
					function(){
					if(linkForStaticBackupImage == ""){
						mainFeatsVar.innerHTML = "<img id='replaceBannerImageForDesktop' style='width:100%' src='"+jpgPath+"'/><img id='replaceBannerImageForMobile' style='width:100%' src='"+mobilejpgPath+"'/>";
					}
					else{
						mainFeatsVar.innerHTML = "<a href='" + linkForStaticBackupImage + "'><img id='replaceBannerImageForDesktop' style='width:100%' src='"+jpgPath+"'/><img id='replaceBannerImageForMobile' style='width:100%' src='"+mobilejpgPath+"'/></a>";
					}
					}
			});
		}
	}catch(e){console.log('Debug logging :::',e);}

}


}

//replace unresonsive banner with fallback image when open in mobile
function addImageReplaceUnresponsiveHTML5banner(){
	if (window.innerWidth < 600) {
		$('#navPanel').empty();
		var linkImage = "products_mobil-shc_synthetic-benefits.aspx";
		if ( window.location.pathname == "/ind/chinese/default.aspx"){
			 linkImage = "#";
			 $('#navPanel').append("<a href='" + linkImage + "'><img id='replaceBannerImageForMobile' style='width:100%' src='"+"Images/fallBackHomepageMobileImage.jpg"+"'/></a>");
		}else if ( window.location.pathname == "/ind/english/default.aspx"){
			 linkImage = "products_mobil-shc_synthetic-benefits.aspx";
			 $('#navPanel').append("<a href='" + linkImage + "'><img id='replaceBannerImageForMobile' style='width:100%' src='"+"Images/fallBackHomepageMobileImage.jpg"+"'/></a>");
		}else{
		
		}
		
		



	}
}

//Add id to auto gen image in Safari
var autoImage = $('#mainContent a[href*=".swf"]');
autoImage.find('img').attr("id", "mobileImageFlashReplacement");
autoImage.find('img').attr("style", "width: 100%;");

$(window).ready(function(){

	//hide upper unimportant links Ex: Home, contact us and shorten technical help text to tech help
	if($('#globalNav .clrfix li').length > 2){
		$('#globalNav .clrfix li').each(function(i, obj) {
			var url = $(this).find('a').attr('href')
			//remove query part out
			if(url.indexOf('?')>0){
				url = url.substr(0,url.indexOf('?'));
			}
			url = url.split('/');
			urlToShow = url[url.length-2]+"/"+url[url.length-1];
			if(url[url.length-1].toLowerCase() == "default.aspx" || urlToShow.toLowerCase() == "pdssearch/search.aspx" || urlToShow.toLowerCase() == "psims/psims.aspx"){
				//url in this statement still show, so do nothing
			}
			else{
				$(this).addClass("hideInMobile");
			}
		});
	}

	addImageReplaceUnresponsiveHTML5banner();
	addImageReplaceFlash();

	//Clone first nav to be another one of mobile version
	var mainNavElement = $("#mainNav").find("ul").clone();
	var i=1;
	$(mainNavElement).find('li').each(function(){
		$(this).addClass("menulevel1");
		$(this).attr('id', i);
		$(this).append("<div onclick='navigationTraversal(this)' class='menuItemImg menuItemImgNextBlack'></div>");
		i++;
	});
	//If mainNav contain any BlueNavPanel_Current, then remove from its cloning
	if($("[id*='BlueNavPanel_Current']").length){
		mainNavElement = $(mainNavElement).find("div");
	}
	var menuList = $(mainNavElement).html();
	$("#menuItemContainer").append(menuList);
	
	var url = window.location.href;
	//remove query part out
	if(url.indexOf('?')>0){
		url = url.substr(0,url.indexOf('?'));
	}
	url = url.split('/');
	//if open in shared search page (search/search.aspx)
	if(url[url.length-2].toLowerCase() == "search"){
		//hide menu
		$('#menu').hide();
	}
	//if open in country search page (english/search.aspx) construct nav menu
	else{
		$.ajaxSetup({
			'beforeSend' : function(xhr) {
				xhr.overrideMimeType('text/html; charset=ISO-8859-1');
			},
		});
		//load all Left Nav htmls to be under Clone first nav if not in Search page
		$('#menuItemContainer .menulevel1').each(function(){
			var splitURL = $(this).find("a").attr('href').split('/');
			var lastWordURL = splitURL[splitURL.length-1];
			//exclude .aspx extension in URL
			var targetURL = lastWordURL.substr(0,lastWordURL.indexOf(".aspx"));
			var leftNavHtmlPath = "./Navigation/" + targetURL + "_left_navigation.html";
			var i = 0;
			var currentMenu = $(this);
			i++;
			$("#temp").load(leftNavHtmlPath,function (responseText, textStatus, req){
				if (textStatus == "error") {
					$(currentMenu).find(".menuItemImgNextBlack").hide();
				}
				else{
					$(currentMenu).after( 
						$("#temp").html()
					);
					$("#temp").html("");
				}
			});
		});
		
		//Add clickable on item div if not in Search page only
		if(url[url.length-1].toLowerCase() != "search.aspx"){
			$(".item").each(function() {
				$(this).click(function() {
					if($(this).find("a").length>0){
						window.location = $(this).find("a").attr("href");
					}
				});
			});
		}
	}

	//Clone seach box to be another one of mobile version
	var searchElement = $("#globalHeader #search form[name='frmSimpleSearch']").clone();
	var inputElement = $(searchElement).find("input[id='qt']");
	$(inputElement).addClass("blank");
	$(inputElement).attr('id', 'search-q');
	$("#search-form").append(searchElement);
	//remove label and submit button out
	$("#search-form .barbgleftSumbit").remove();
	$(searchElement).find('label').remove();
	
	//clone related right box tp append under screen
	$(".related").each(function() {
		var relatedElement = $(this).clone();
		$(relatedElement).attr('class', 'relatedMobile');
		$("#mainContent").append($("<div>").append($(relatedElement)).html());
	});
	
	//*************** new code add here*********************
	
	
	////// create new element for  Accordian to replace tabbed table ////////////
	$("#divTabs ul li a").each(	
		function (index,value){ 
			//**********menu header ************//
			var e = $("<div class='mobile_divTabs'> "+

				"<div class='mobile_divTabHeader'>"
					+$(this).html()+
					"<div class='accordianArrow accordianArrowDown'></div>"+
				"</div>"+

				"<div class='mobile_divTabContent'>"+
					$('.divTabContent:nth-child('+(index+1)+')').html()
				+"</div>"+

			"</div>");
		
			$("#tabbed_table").append(e);
		}
	);

	//////////binded function click to each element////////////
	$(".mobile_divTabContent").hide();
	$( ".mobile_divTabs" ).unbind();
	$( ".mobile_divTabs" ).click(function(a,b) {
		//memory old currentstate
		var currentState =  $(this).find(".mobile_divTabContent").css('display');
		
		//reset to hide all
		$(".mobile_divTabContent").hide();
		$('.accordianArrow').removeClass('accordianArrowUp');
		$('.accordianArrow').addClass('accordianArrowDown');

		if( currentState  == 'block'){
			$(this).find(".mobile_divTabContent").hide();
			/****toggle arrow****/
			$(this).find('.accordianArrow').removeClass('accordianArrowUp');
			$(this).find('.accordianArrow').addClass('accordianArrowDown');
		}else{
			$(this).find(".mobile_divTabContent").show();
			/****toggle arrow****/
			$(this).find('.accordianArrow').removeClass('accordianArrowDown');
			$(this).find('.accordianArrow').addClass('accordianArrowUp');
		}
	});

	//clone quick link to show in lower part of screen before footer
	if($(".quicklinks").length > 0){
	var quicklinkElement = $(".quicklinks").clone();
	var headerbarElement = $(quicklinkElement).find('.headerbar');
	var quicklinksElement = $(quicklinkElement).find('ul');
	var newQuicklinksElement = "<div id='quicklinksMobile' class='layoutRow clrfix'><div class='subfeature csingle ccenter'>"+$("<div>").append($(headerbarElement)).html()+"<div class='padding'>"+$("<div>").append($(quicklinksElement)).html()+"</div></div></div>";
	$("#mainContent").append(newQuicklinksElement);
	}

	$('#menu').on('click', function(e) {
		$("#menuContainer").toggle();
		$(".overlay").css("display","block");
		e.stopPropagation();
		 return false;
	});
	$('#mobileMenuBack').on('click', function(e) {
		backToFirstLevel();
	});
	
	$('#mobileMenuClose').on('click', function(e) {
		$("#menuContainer").toggle();
		e.stopPropagation();
		 return false;
	});
	$('#mobileMenuClose').on('click', function(e) {
		$("#menuContainer").css("display","none");
		$(".overlay").css("display","none");
	});
	//append grey overlay when opening menu & language selector
	var overlayElement = "<div class='overlay'></div>";
	$("body").append(overlayElement);
	$(".overlay").click(function(){
        $("#menuContainer").css("display","none");
		$("#lauguaeSelectorContainer").attr('class','close');
		$(".overlay").css("display","none");
    });
	//append grey overlay when opening search box
	var searchoverlayElement = "<div class='searchoverlay'></div>";
	$("#mainPanel").append(searchoverlayElement);
	$(".searchoverlay").click(function(){
        toggleSearch();
    });
	//cleaning &nbsp; out to show correctly in mobile screen
	$("p").each(function() {
		var $this = $(this);
		$this.html($this.html().replace(/&nbsp;/g, ''));
	});
	if ( $(window).width() < 600){
		//cleaning font-size:small and x-small (<14px)
		var xsmallElements = $('span').filter(function () { return $(this).css('font-size') < '12px' });
		$(xsmallElements).each(function(){
			$(this).css("font-size", "14px");
			$(this).css("line-height", "1.4em");
		});
		var smallElements = $('span').filter(function () { return ($(this).css('font-size') >= '12px') && ($(this).css('font-size') < '14px') });
		$(smallElements).each(function(){
			$(this).css("font-size", "18px");
			$(this).css("line-height", "1.4em");
		});
	}
	
	//add togle language at language text
	$('#selectedLanugage').attr('onclick', 'toggleLanguage()');
	
	//hide "Learn more/Learnmore" link inside item box
	$('#mainContent .item a').each(function(){
		if($(this).html().substr(0,5)=="Learn")$(this).hide();
	});
	
	//making h1 in case some template don't have
	if($('h1').length <=0){
		var tempFirstSpan = $('#mainContent span:first-child').first().clone();
		//Apply h1 only if parent of this found span is not link
		if($('#mainContent span:first-child').first().parent().is("a") != true){
			var temp = $('<h1>').append($(tempFirstSpan));
			$('#mainContent span:first-child').first().replaceWith(temp);
		}
	}
	//hide line right after h1
	if($('h1').next().is('br')){
		$('h1').next().hide();
	}
	
	//fix relatedMobile showing problem
	$('.relatedMobile').each(function(){
		var pInDiv = $(this).find('p').remove();
		$(this).append('<div class="relatedText">'+$("<div>").append($(pInDiv)).html()+'</div>');
	});
	
	//move Left Callout To Buttom
	moveLeftCalloutToButtom();
});
$(window).load(function(){
	var selectorName;
	if($("[id$='_languageCombo']").length > 0){
		selectorName = "[id$='_languageCombo']";
	}
	else if($("[id='languageSelector']").length > 0){
		selectorName = "[id='languageSelector']";
	}
	if($(selectorName+" option").length>0){
		if(selectorName == "[id='languageSelector']"){
			document.getElementById('selectedLanugage').innerHTML = $(selectorName).find(":selected").val().split('/')[4].substr(0,2);
		}
		else{
			document.getElementById('selectedLanugage').innerHTML = $(selectorName).find(":selected").val().substr(0,2);
		}
		var optCount = $(selectorName+" option").length;
		for(var i =0 ;i < optCount ;i++){
			var opt = document.createElement("div");
			opt .setAttribute("class", "lauguaeSelectorItem" );
			
			
			var languageValue = {"value":$(selectorName+" option").eq(i).val()};
			opt .setAttribute("onclick", "selectIndexChange({value:'"+$(selectorName+" option").eq(i).val()+"'})");
			
			var	langName = document.createElement("p");
			langName.appendChild(document.createTextNode( $(selectorName+" option").eq(i).text() ));
			langName .setAttribute("class", "langName" );
			var	abrvName = document.createElement("p");
			if(selectorName == "[id='languageSelector']"){
				abrvName.appendChild(document.createTextNode( $(selectorName+" option").eq(i).val().split('/')[4].substr(0,2) ));
			}
			else{
				abrvName.appendChild(document.createTextNode( $(selectorName+" option").eq(i).val().substr(0,2) ));
			}
			abrvName .setAttribute("class", "abrvName" );

			opt.appendChild(langName);
			opt.appendChild(abrvName);
			document.getElementById('lauguaeSelectorContainer').appendChild(opt);
			
			
			if(i < optCount-1){
				document.getElementById('lauguaeSelectorContainer').appendChild( document.createElement("hr"));
			}	
		}
	}
	
	waitForElementToDisplay(".menulevel2", 100);
});
function waitForElementToDisplay(elementName, time) {
	if($(elementName).length > 0) {
		buildMobileMenu();
		return;
	}
	else {
		setTimeout(function() {
			waitForElementToDisplay(elementName, time);
		}, time);
	}
}

function moveLeftCalloutToButtom(){
 $(".calloutLeftNav ").clone().prependTo("#quicklinksMobile");

}

function toggleSearch(){
	var sform = document.getElementById("search-form");
	var sicon = document.getElementById("search-icon");
	var status = sicon.className;
	if(status == 'close'){
		sicon.className = 'open';
		sform.className = 'open';
		$(".searchoverlay").css("display","block");
	}else{
		sicon.className = 'close';
		sform.className = 'close';
		$(".searchoverlay").css("display","none");
	}
}

function toggleLanguage(){
	var langForm = document.getElementById("lauguaeSelectorContainer");
	var status = langForm.className;
	if(status == 'close'){
		langForm.className = 'open';
		$(".overlay").css("display","block");
	}else{
		langForm.className = 'close';
		$(".overlay").css("display","none");
	}
}

		