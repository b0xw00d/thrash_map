$(document).on("ready page:load", function(){
    $(".sidebar-item").on("click", function(){
        var $this     = $(this);
        var $previous = $this.closest('ul').find(".clicked");

        switchInfoWindows($this);
        switchClasses($previous, $this);
    });

    var switchInfoWindows = function(current){
        var id = current.attr("id");

        closeAllInfoWindows();
        openInfoWindow(id);
    };

    var switchClasses = function(previous, current){
        previous.removeClass("clicked");
        current.addClass("clicked");
    };

    var openInfoWindow = function(id){
        google.maps.event.trigger(markers[id], "click");
    };

    var closeAllInfoWindows = function(){
        for(var i = 0; i < infoWindows.length; i++){
            infoWindows[i].close();
        };
    };
});
