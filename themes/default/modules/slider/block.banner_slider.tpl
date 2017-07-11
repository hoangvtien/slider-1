<!-- BEGIN: main -->
<script src="{NV_BASE_SITEURL}themes/default/images/{MODULE_FILE}/jssor/jssor.slider.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function($) {
    var jssor_{CONFIG.size_w}_SlideshowTransitions = [
        {$Duration:500,$Delay:30,$Cols:8,$Rows:4,$Clip:15,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationStraightStairs,$Assembly:2049,$Easing:$Jease$.$OutQuad},
        {$Duration:500,$Delay:80,$Cols:8,$Rows:4,$Clip:15,$SlideOut:true,$Easing:$Jease$.$OutQuad},
        {$Duration:1000,x:-0.2,$Delay:40,$Cols:12,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationStraight,$Assembly:260,$Easing:{$Left:$Jease$.$InOutExpo,$Opacity:$Jease$.$InOutQuad},$Opacity:2,$Outside:true,$Round:{$Top:0.5}},
        {$Duration:2000,y:-1,$Delay:60,$Cols:15,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationStraight,$Easing:$Jease$.$OutJump,$Round:{$Top:1.5}},
        {$Duration:1200,x:0.2,y:-0.1,$Delay:20,$Cols:8,$Rows:4,$Clip:15,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$Formation:$JssorSlideshowFormations$.$FormationStraightStairs,$Assembly:260,$Easing:{$Left:$Jease$.$InWave,$Top:$Jease$.$InWave,$Clip:$Jease$.$OutQuad},$Round:{$Left:1.3,$Top:2.5}}
    ];

    var jssor_{CONFIG.size_w}_options = {
        $AutoPlay: 1,
        $SlideshowOptions: {
            $Class: $JssorSlideshowRunner$,
            $Transitions: jssor_{CONFIG.size_w}_SlideshowTransitions,
            $TransitionsOrder: 1
        },
        $ArrowNavigatorOptions: {
            $Class: $JssorArrowNavigator$
        },
        $ThumbnailNavigatorOptions: {
            $Class: $JssorThumbnailNavigator$,
            $Cols: 1,
            $Orientation: 2,
            $Align: 0,
            $NoDrag: true
        }
    };

    var jssor_{CONFIG.size_w}_slider = new $JssorSlider$("jssor_{CONFIG.size_w}", jssor_{CONFIG.size_w}_options);

    <!-- BEGIN: scaleslider -->
    function ScaleSlider() {
        var refSize = jssor_{CONFIG.size_w}_slider.$Elmt.parentNode.clientWidth;
        if (refSize) {
            refSize = Math.min(refSize, {CONFIG.size_w});
            jssor_{CONFIG.size_w}_slider.$ScaleWidth(refSize);
        } else {
            window.setTimeout(ScaleSlider, 30);
        }
    }
    ScaleSlider();
    $(window).bind("load", ScaleSlider);
    $(window).bind("resize", ScaleSlider);
    $(window).bind("orientationchange", ScaleSlider);
    <!-- END: scaleslider -->
});
</script>
<style type="text/css">
.jssor{CONFIG.bid}-oval img {
    animation-name: jssor{CONFIG.bid}-oval;
    animation-duration: 1.2s;
    animation-iteration-count: infinite;
    animation-timing-function: linear;
}

@keyframes jssor{CONFIG.bid}-oval {
    from {
        transform: rotate(0deg);
    }
    to {
        transform: rotate(360deg);
    }
}
.jssora{CONFIG.bid} {display:block;position:absolute;cursor:pointer;}
.jssora{CONFIG.bid} .a {fill:none;stroke:#fff;stroke-width:360;stroke-linecap:round;}
.jssora{CONFIG.bid}:hover {opacity:.8;}
.jssora{CONFIG.bid}.jssora{CONFIG.bid}dn {opacity:.5;}
.jssora{CONFIG.bid}.jssora{CONFIG.bid}ds {opacity:.3;pointer-events:none;}
</style>
<div class="clearfix">
    <div id="jssor_{CONFIG.size_w}" style="position:relative;margin:0 auto;top:0px;left:0px;width:{CONFIG.size_w}px;height:{CONFIG.size_h}px;overflow:hidden;visibility:hidden;">
        <div data-u="loading" class="jssor{CONFIG.bid}-oval" style="position:absolute;top:0px;left:0px;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="{NV_BASE_SITEURL}themes/default/images/{MODULE_FILE}/oval.svg" />
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:{CONFIG.size_w}px;height:{CONFIG.size_h}px;overflow:hidden;">
            <!-- BEGIN: loop -->
            <div>
                <!-- BEGIN: image_only --><img data-u="image" src="{ROW.image}" alt="{ROW.image_alt}"/><!-- END: image_only -->
                <!-- BEGIN: image_linked --><a href="{ROW.link_href}"{ROW.link_target}><img data-u="image" src="{ROW.image}" alt="{ROW.image_alt}"/></a><!-- END: image_linked -->
                <!-- BEGIN: caption -->
                <div u="thumb">
                    {ROW.description}
                </div>
                <!-- END: caption -->
            </div>
            <!-- END: loop -->
        </div>
        <div u="thumbnavigator" style="position:absolute;bottom:0px;left:0px;width:{CONFIG.size_w}px;height:50px;color:#FFF;overflow:hidden;cursor:default;background-color:rgba(0,0,0,.5);">
            <div u="slides">
                <div u="prototype" style="position:absolute;top:0;left:0;width:{CONFIG.size_w}px;height:50px;">
                    <div u="thumbnailtemplate" style="position:absolute;top:0;left:0;width:100%;height:100%;font-family:verdana;font-weight:normal;line-height:50px;font-size:16px;padding-left:10px;box-sizing:border-box;"></div>
                </div>
            </div>
        </div>
        <div data-u="arrowleft" class="jssora{CONFIG.bid}" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <path class="a" d="M11949,1919L5964.9,7771.7c-127.9,125.5-127.9,329.1,0,454.9L11949,14079"></path>
            </svg>
        </div>
        <div data-u="arrowright" class="jssora{CONFIG.bid}" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <path class="a" d="M5869,1919l5984.1,5852.7c127.9,125.5,127.9,329.1,0,454.9L5869,14079"></path>
            </svg>
        </div>
    </div>
</div>
<!-- END: main -->