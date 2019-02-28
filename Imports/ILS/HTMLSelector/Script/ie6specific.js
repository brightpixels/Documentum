
/**----- For showing highlight button when clicking on the button --------------------**/

$(function() {
    $(".next_btn")
        .mouseover(function() {
            $(this).css('background', 'url(images/btn_next_over.png)');
        })
        .mouseout(function() {
            $(this).css('background', 'url(images/btn_next.png)');
        });

    $(".back_btn")
        .mouseover(function() {
            $(this).css('background', 'url(images/btn_back_over.png)');
        })
        .mouseout(function() {
            $(this).css('background', 'url(images/btn_back.png)');
        });

    $(".recommendation_btn")
        .mouseover(function() {
            $(this).css('background', 'url(images/btn_recommendations_over.gif)');
        })
        .mouseout(function() {
            $(this).css('background', 'url(images/btn_recommendations.gif)');
        });

    $(".selector_btn")
        .mouseover(function() {
            $(this).css('background', 'url(images/btn_selectApp_over.gif)');
        })
        .mouseout(function() {
            $(this).css('background', 'url(images/btn_selectApp.gif)');
        });


    $(".first_arrow")
        .mouseover(function() {
            $(this).css('background', 'url(images/first_arrow_hover.png)');
        })
        .mouseout(function() {
            $(this).css('background', 'url(images/first_arrow.png)');
        });

  
}); 