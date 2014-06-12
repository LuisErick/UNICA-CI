$(document).ready(function(){
    var options = {
        nextButton: true,
        prevButton: true,
        cycle: false,
        pagination: true,
        animateStartingFrameIn: true,
        autoPlay: false,
        autoPlayDelay: 3000,
        preloader: true,
        preloadTheseFrames: [1]
    };
    
    var mySequence = $("#sequence").sequence(options).data("sequence");
});