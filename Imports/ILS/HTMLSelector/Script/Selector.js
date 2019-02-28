

/**----- Common Function --------------------**/
function clearControl(theText) {    
    if (theText.value == theText.defaultValue) {
        theText.value = "";
    }
}

function PreCache() {
    
    // Array of images:
    var imageArray = ["../Images/btn_next_over.png",
    "../Images/btn_back_over.png",
    "../Images/btn_recommendations_over.gif",
    "../Images/btn_selectApp_over.gif",
    "../Images/btn_next.png",
    "../Images/btn_back.png",
    "../Images/btn_recommendations.gif",
    "../Images/btn_selectApp.gif"
    
    ];

    // Add hidden element
    var hidden = $('body').append('<div id="img-cache" style="display:none/>').children('#img-cache');

    // Add images to hidden element.
    $.each(imageArray, function(i, val) {
        $('<img/>').attr('src', val).appendTo(hidden);
    });
}


function AppCondDDL_OnChange(selVal) {
    $("[input[id$='hfAppCond']").val(selVal);
    $("[input[id$='btnAppCond']").trigger('click');
}





/****************************************************************************/
/***************** For Performance Condition Selection **********************/
/****************************************************************************/

function GoPrev(prevPage) {
    $('#hdnPageStatus').val(prevPage);
    $("[id$=btnPrevious]").trigger('click');
}

function GoPrevForm() {
    var prevPage = $('#hdnPrev').val();
    $('#hdnPageStatus').val(prevPage);
    $("[id$=btnPrevious]").trigger('click');
}

function GetEqpGroup() {

    $("[id$=btnNext]").trigger('click');
}   


/****************************************************************************/
/************************* EMEBS Part ***************************************/
/****************************************************************************/


/* removing this terrible crap

function GetEqpGroup() {

   


    // Clear All Label to be black
    $("span").css("color", "black");
    var tmp = '';
    var trigger = true;
    // Validate DDL before submitting
    if ($("[id$=txtEqptBuilder]").val() == "Search...") {
        $("[id$=lblBuildSel]").css("color", "red");       
        trigger = false;
    } 

    if ($("[id$=ddlEquip]").val() == "-99_-99_-99") {
        $("[id$=lblEquipSel]").css("color", "red");
        trigger = false;
    }

    if ($("[id$=ddlLubeSel]").val() == "-99_-99_-99") {
        $("[id$=lblLubeSel]").css("color", "red");
        trigger = false;
    } else {
        tmp = tmp + $("[id$=ddlLubeSel]").val() + '&';     
    }
    // Append Condition ID
    var numberCheck = $("input[@id*='radConSet']:checked").length;
    if (numberCheck == 0) {
        $("[id$=lblConSet]").css("color", "red");
        trigger = false;
    } else {    
        tmp = tmp + $("input[@id*='radConSet']:checked").val();
    }
    
   // IF All DDLs are selected, then Go to Recommendation page
    if (trigger) {     
        // Set PageStatus to Get Recommendation
        $('#hdnPageStatus').val('4');
        // Set Parameter
        $('#hdnRecParam').val(tmp);
        // Go to Server
        $("[id$=btnNext]").trigger('click');
    }
}

*/

/****************************************************************************/
/************************* ILS Part *****************************************/
/****************************************************************************/
function FindILSCondVal(val) {

        $("#[id$=hdnIndex]").val(val);
        // Trigger to Postback
        $("[id$=btnDDL]").trigger('click');    
}

function GetILSRec() {

    $("[id$=btnNext]").trigger('click');
}   


/****************************************************************************/
/*********************Recommendation Part           *************************/
/****************************************************************************/
var ie6 = navigator.appVersion.indexOf("MSIE 6.0") > -1;

function linkHighlight(currTab) {
    // Clear all class
    $("[id*=li]").removeClass("tab_on_bg tab_left_off tab_left_on tab_right_on");
    
    // Set all tabs in background mode
    $("[id$=liFirst]").addClass("tab_left_off");
    $("[id$=li1]").addClass("tab_off_bg");
    $("[id$=li2]").addClass("tab_off_bg");
    $("[id$=li3]").addClass("tab_off_bg");
    $("[id$=li4]").addClass("tab_off_bg");
    $("[id$=li5]").addClass("tab_off_bg");
    $("[id$=li6]").addClass("tab_off_bg");
    $("[id$=li11]").addClass("tabs_off");
    $("[id$=li12]").addClass("tabs_off");
    $("[id$=li13]").addClass("tabs_off");
    $("[id$=li14]").addClass("tabs_off");
    $("[id$=li15]").addClass("tabs_off");
    $("[id$=li16]").addClass("tabs_off");
    

    $("[id$=divRecmd]").addClass("hideMe");
    
    if (ie6) { $(".content_bg").hide(); }
    else { $(".content_bg").slideUp("fast"); }
    
    var prevTab = currTab - 1;
    var lastTab = $("[id$=hdnLiNum]").val();

    // Set Last Displayed tab to have 'on' mode on the right
    $("[id$=li1" + lastTab + "]").removeClass("tabs_off");
    $("[id$=li1" + lastTab + "]").addClass("tab_right_on");
    
    if (currTab == "1") {
        $("[id$=liFirst]").removeClass("tab_left_off");
        $("[id$=liFirst]").addClass("tab_left_on");

        $("[id$=li" + currTab + "]").removeClass("tab_off_bg");
        $("[id$=li" + currTab + "]").addClass("tab_on_bg");

        $("[id$=li1" + currTab + "]").removeClass("tabs_off");
        $("[id$=li1" + currTab + "]").addClass("tab_left_off");
    }
    else {
        $("[id$=li1" + prevTab + "]").removeClass("tabs_off");
        $("[id$=li1" + prevTab + "]").addClass("tab_right_on");

        $("[id$=li" + currTab + "]").removeClass("tab_off_bg");
        $("[id$=li" + currTab + "]").addClass("tab_on_bg");

        $("[id$=li1" + currTab + "]").removeClass("tabs_off tab_right_on");
        if (currTab == lastTab) {
            $("[id$=li1" + currTab + "]").addClass("tab_left_on");
        } else {
          $("[id$=li1" + currTab + "]").addClass("tab_left_off");
                   
        }
    }

    if (ie6) {
        if (currTab == "1") {
            var backupTab = parseInt(lastTab) + 1;
            $("[id$=_1_divRecmd]").html($("[id$=_" + backupTab + "_divRecmd]").html());
        } else {

            $("[id$=_1_divRecmd]").html($("[id$=_" + currTab + "_divRecmd]").html());
        }
        $("[id$=_1_divRecmd]").show();
    }
    else { $("[id$=_" + currTab + "_divRecmd]").slideDown("slow"); }
    

}

function RecBack() {

    $("[id$=btnBack]").trigger('click');
}


///***************/////
var isRefine = false;

function PrintClick() {
    var keys = "k=True";
    if (isRefine)
        keys = "k=False";
    //keys += "&ct=" + Setttings.Data.CT + "&dt=" + Setttings.Data.DT + "&at=" + Setttings.Data.AT + "&dp=" + Setttings.Data.DP + "&dc=" + Setttings.Data.DC;
    //window.open("PrintView.aspx?" + keys + "&a=" + Setttings.Data.IA + "&b=" + Setttings.Data.EB + "&e=" + Setttings.Data.EI + "&l=" + Setttings.Data.M + "&c=" + Setttings.Data.C, "Print");
    window.open("PrintView.aspx?" + keys , "Print"); 
    return false;
}

function ExportClick() {
    //window.location = "ExcelExport.aspx?t=1";
    window.location = "ExcelView.aspx";
    return false;
}


/****************************************************************************/
/****************************************************************************/

/*
Calculator
*/

function calPLVTot() {
   
    var np = $('#txtPlvNP').val();
    var d = $('#txtPLVD').val();
    var total = (np * d) / 19098
    $('#txtPLVTot').val(total);
}

/****************************************************************************/
/****************************************************************************/

/*
POPUPs
*/

function ShowPopup(index) {

    //get the position of the placeholder element
    var pos;
    if(!ie6)
        pos = $("[id$=" + index + "imgGuide]").position();
    else
        pos = $("[id$=" + index + "imgGuide]").position();
   
    var eWidth = $("[id$=" + index + "imgGuide]").outerWidth();
    //var left = (pos.left + eWidth) + "px";
    var left = (pos.left - 140) + "px";
    
    var top = pos.top + "px";

    if (!ie6) {
        //show the menu directly over the placeholder
        $("[id$=" + index + "divGuide]").css({
        position: 'fixed',
            zIndex: 5000,
            left: left,
            top: top
        });
    }
    else {
        //show the menu directly over the placeholder
        $("[id$=" + index + "divGuide]").css({
            position: 'absolute',
            zIndex: 5000,
            left: left,
            top: top
        });
    
    }
    

    if (ie6)
        $("[id$=" + index + "divGuide]").show();
    else
        $("[id$=" + index + "divGuide]").slideDown("slow");
}


function ClosePopup() {
    if (ie6)
        $("[id$=divGuide]").hide();
    else
        $("[id$=divGuide]").slideUp("slow");

}
//--------------------------------------------------------

function ShowCalcImage(imgId) {

       var imgCon = $("[id$=divCalcImg]");

        var divImg = $("[id$=divCalcImgCont]");

        divImg.empty().html("<img src='Images/" + imgId + "' />");


        if (ie6) {
            $("[id$=divDDL]").hide();   
            imgCon.show();
        }
        else
            imgCon.slideDown("slow");
}

function CloseCalcImg() {

    var imgCon = $("[id$=divCalcImg]");

    if (ie6) {

        imgCon.hide();
        $("[id$=divDDL]").show();
    }
    else
        imgCon.slideUp("slow");
}


function ShowCalculator(index) {

    // Close other Calculator pop up
    CloseCalculator();
    
    //get the position MC of the placeholder element    
    var pos = $("[id$=imgCalculator]").offset();

    var eWidth = $("[id$=imgCalculator]").outerWidth();
    eWidth = eWidth + 5;
    
    var topPx = "";

    //make sure calc doesnt go beyond the boundaries of the iFrame...    
    //height of calc...
    var calcH = $("[id$=" + index + "divCal]").outerHeight();
    calcH = calcH + 100;

   
    if ((pos.top + calcH) > 720) {   
        var ctop = (720 - calcH);        
        topPx = ctop + "px";
    }
    else
        topPx = pos.top + "px";
    
    var leftPx = (pos.left + eWidth) + "px";


    if (!ie6) {
        //show the menu directly over the placeholder
        $("[id$=" + index + "divCal]").css({
            position: 'fixed',
            zIndex: 5000,
            left: leftPx,
            top: topPx
        });
    }
    else {

        //show the menu directly over the placeholder
        $("[id$=" + index + "divCal]").css({
            position: 'absolute',
            zIndex: 5000,
            left: leftPx,
            top: topPx
        });

        $("[id$=" + index + "divCal]").remove().appendTo("body");
    }
    
   
    if (ie6)
        $("[id$=" + index + "divCal]").show();
    else
        $("[id$=" + index + "divCal]").slideDown("slow");
}

function CloseCalculator() {

    CloseCalcImg();

    // clear all text box values
    $('#txtPlvNP').val('');
    $('#txtPLVD').val('');
    $('#txtPLVTot').val('');

    if (ie6)
        $("[id$=divCal]").hide();
    else
        $("[id$=divCal]").slideUp("slow");

}


function ShowPerfHelp(index) {
   
    //get the position of the placeholder element
    var pos;
    pos = $("[id$=divDDL]").position();       

    var eWidth = $("[id$=" + index + "imgPerfHelp]").outerWidth();    
    var left = (pos.left + 80) + "px";

    var added = 0;

    var top = (pos.top + (index * added)) + "px";

    if (!ie6) {
        //show the menu directly over the placeholder
        $("[id$=" + index + "divPerfHelp]").css({
            position: 'fixed',
            zIndex: 5000,
            left: left,
            top: top
        });
    }
    else {
        //show the menu directly over the placeholder
        $("[id$=" + index + "divPerfHelp]").css({
            position: 'absolute',
            zIndex: 5000,
            left: left,
            top: top
        });

    }


    if (ie6)
        $("[id$=" + index + "divPerfHelp]").show();
    else
        $("[id$=" + index + "divPerfHelp]").slideDown("slow");
}


function ClosePerfHelp() {
    if (ie6)
        $("[id$=divPerfHelp]").hide();
    else
        $("[id$=divPerfHelp]").slideUp("slow");

}

//Blink next button
function blinkBtn(id, numOfTimes) {

    if (ie6)
        return;
        
    //get current color
    //var cBckg = $("[id$=" + id + "]").css('background');
      
    //highlight...
    $("[id$=" + id + "]").css({ background: 'url(../images/btn_next_over.png) no-repeat'});

    
        
    setTimeout(function() { $("[id$=" + id + "]").css({ background: 'url(../images/btn_next.png) no-repeat' }); }, 340);
   
    if (1 < numOfTimes)
        setTimeout(function() { blinkBtn(id, numOfTimes - 1); }, 680);
    else
        setTimeout(function() { $("[id$=" + id + "]").css({ background: 'url(../images/btn_next_over.png) no-repeat' }); }, 340);
}