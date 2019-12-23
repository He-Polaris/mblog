<footer class="footer">
    <div class="container">
        <div class="footer-row">
            <nav class="footer-nav">
                <a class="footer-nav-item footer-nav-logo" href="${base}/">
                    <img src="<@resource src=options['site_logo']/>" alt="mblog"/>
                </a>
                <span class="footer-nav-item">${options['site_copyright']}</span>
                <a href="http://www.beian.miit.gov.cn" class="footer-nav-item">${options['site_icp']}</a>
            </nav>
            <div class="gh-foot-min-back hidden-xs hidden-sm">
                <!-- 请保留此处标识-->
                <span class="footer-nav-item">Powered by <a href="https://github.com/langhsu/mblog" target="_blank">mblog</a></span>
            </div>
        </div>
    </div>
</footer>

<a href="#" class="site-scroll-top">
    <i class="icon-arrow-up"></i>
</a>

<script type="text/javascript">
    seajs.use('main', function (main) {
        main.init();
    });
</script>

<script type="text/javascript">
    /* 鼠标神效 */

    var a_idx = 0;

    jQuery(document).ready(function($) {

        $("body").click(function(e) {

            var fh = '♥'

            var a = new Array("富强", "民主", "文明", "和谐", "自由", "平等", "公平" ,"法治", "爱国", "敬业", "诚信", "友善");

            var $i = $("<span/>").text(fh + a[a_idx] + fh);

            a_idx = (a_idx + 1) % a.length;

            var x = e.pageX,

                y = e.pageY;

            $i.css({

                "z-index": 999999999999999999999999999999999999999999999999999999999999999999999,

                "top": y - 20,

                "left": x,

                "position": "absolute",

                "font-weight": "bold",

                "color": color16()

            });

            $("body").append($i);

            $i.animate({

                    "top": y - 180,

                    "opacity": 0

                },

                1500,

                function() {

                    $i.remove();

                });

        });

    });

    function rgb(){//rgb颜色随机
        var r = Math.floor(Math.random()*256);
        var g = Math.floor(Math.random()*256);
        var b = Math.floor(Math.random()*256);
        var rgb = '('+r+','+g+','+b+')';
        return rgb;
    }
    function color16(){//十六进制颜色随机
        var r = Math.floor(Math.random()*256);
        var g = Math.floor(Math.random()*256);
        var b = Math.floor(Math.random()*256);
        var color = '#'+r.toString(16)+g.toString(16)+b.toString(16);
        return color;
    }

</script>
<#--<script type="text/javascript">-->
    <#--/*7Core-CN - 网页鼠标点击特效（爱心）*/-->
    <#--!function (e, t, a) {function r() {for (var e = 0; e < s.length; e++) s[e].alpha <= 0 ? (t.body.removeChild(s[e].el), s.splice(e, 1)) : (s[e].y--, s[e].scale += .004, s[e].alpha -= .013, s[e].el.style.cssText = "left:" + s[e].x + "px;top:" + s[e].y + "px;opacity:" + s[e].alpha + ";transform:scale(" + s[e].scale + "," + s[e].scale + ") rotate(45deg);background:" + s[e].color + ";z-index:99999");requestAnimationFrame(r)}function n() {var t = "function" == typeof e.onclick && e.onclick;e.onclick = function (e) {t && t(), o(e)}}function o(e) {var a = t.createElement("div");a.className = "heart", s.push({el: a,x: e.clientX - 5,y: e.clientY - 5,scale: 1,alpha: 1,color: c()}), t.body.appendChild(a)}function i(e) {var a = t.createElement("style");a.type = "text/css";try {a.appendChild(t.createTextNode(e))} catch (t) {a.styleSheet.cssText = e}t.getElementsByTagName("head")[0].appendChild(a)}function c() {return "rgb(" + ~~(255 * Math.random()) + "," + ~~(255 * Math.random()) + "," + ~~(255 * Math.random()) + ")"}var s = [];e.requestAnimationFrame = e.requestAnimationFrame || e.webkitRequestAnimationFrame || e.mozRequestAnimationFrame || e.oRequestAnimationFrame || e.msRequestAnimationFrame || function (e) {setTimeout(e, 1e3 / 60)}, i(".heart{width: 10px;height: 10px;position: fixed;background: #f00;transform: rotate(45deg);-webkit-transform: rotate(45deg);-moz-transform: rotate(45deg);}.heart:after,.heart:before{content: '';width: inherit;height: inherit;background: inherit;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;position: fixed;}.heart:after{top: -5px;}.heart:before{left: -5px;}"), n(), r()}(window, document);-->
<#--</script>-->

<#--<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>-->
<#--<script type="text/javascript">-->
    <#--/* 鼠标点击特效 - 7Core.CN */-->
    <#--var a_idx = 0;jQuery(document).ready(function($) {$("body").click(function(e) {var a = new Array("富强", "民主", "文明", "和谐", "自由", "平等", "公正" ,"法治", "爱国", "敬业", "诚信", "友善");var $i = $("<span/>").text(a[a_idx]);-->
        <#--a_idx = (a_idx + 1) % a.length;var x = e.pageX,y = e.pageY;$i.css({"z-index": 100000000,"top": y - 20,"left": x,"position": "absolute","font-weight": "bold","color": "#ff6651"});$("body").append($i);$i.animate({"top": y - 180,"opacity": 0},1500,function() {$i.remove();});});});-->
<#--</script>-->

<script src="${base}/theme/youth/dist/js/swiper.min.js"></script>
<script src="${base}/theme/youth/dist/wow/js/wow.min.js"></script>
<script src="${base}/theme/youth/dist/js/youth.js"></script>
<script src="${base}/live2d-widget-master/autoload.js"></script>
