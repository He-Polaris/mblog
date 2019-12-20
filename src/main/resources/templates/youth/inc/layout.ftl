<#-- Layout -->
<#macro layout title keywords description>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!--version: ${site.version}-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if IE]>
    <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'/>
    <![endif]-->
    <meta name="keywords" content="mtons, ${keywords?default(options['site_keywords'])}">
    <meta name="description" content="${description?default(options['site_description'])}">
    <meta name="mtons:mblog" content="${site.version}">
    ${options['site_metas']}
    <title>${title?default(options['site_name'])}</title>

    <link href="${base}/dist/vendors/pace/themes/pace-theme-minimal.css" rel="stylesheet"/>
    <link href="${base}/dist/vendors/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${base}/dist/css/editor.css" rel="stylesheet"/>
    <link href="${base}/dist/css/plugins.css" rel="stylesheet"/>
    <link href="${base}/theme/youth/dist/viewer/css/viewer.min.css" rel="stylesheet"/>
    <link href="${base}/theme/youth/dist/css/swiper.min.css" rel="stylesheet"/>
    <link href="${base}/theme/youth/dist/css/style.css" rel="stylesheet"/>
    <link href="${base}/theme/youth/dist/css/banner.css" rel="stylesheet"/>
    <link href="${base}/dist/vendors/simple-line-icons/css/simple-line-icons.css" rel="stylesheet"/>
    <link href="${base}/dist/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="${base}/dist/vendors/animate/animate.css" rel="stylesheet"/>

    <script src="${base}/dist/vendors/pace/pace.min.js"></script>
    <script src="${base}/theme/youth/dist/viewer/js/viewer.min.js"></script>
    <script src="${base}/dist/js/jquery.min.js"></script>
    <script src="${base}/dist/vendors/layer/layer.js"></script>
    <script src="${base}/dist/vendors/bootstrap/js/bootstrap.min.js"></script>
    <!-- 导入js资源 注意路径不要写错 -->
    <!-- <script src="${base}/dist/live2dw/lib/L2Dwidget.min.js"></script> -->
    <script type="text/javascript">
        var _MTONS = _MTONS || {};
        _MTONS.BASE_PATH = '${base}';
        _MTONS.LOGIN_TOKEN = '${profile.id}';
    </script>

    <script src="${base}/dist/js/sea.js"></script>
    <script src="${base}/dist/js/sea.config.js"></script>

    <!-- Favicons -->
    <link href="<@resource src=options['site_favicon']/>" rel="apple-touch-icon-precomposed" />
    <link href="<@resource src=options['site_favicon']/>" rel="shortcut icon" />
</head>
<body>
    <!-- header -->
    <#include "/youth/inc/header.ftl"/>
    <!-- /header -->

    <!-- content -->
    <div class="wrap">
        <!-- Main -->
        <div class="container">
            <#nested>
        </div>
    </div>
    <!-- /content -->

    <!-- footer -->
    <#include "/youth/inc/footer.ftl"/>
    <!-- 
    <script type="text/javascript">
        //初始化小人物 需设置属性pluginRootPath: "live2dw/"指明资源跟路径
        L2Dwidget.init({
            pluginRootPath: "/dist/live2dw/",//资源root路径
            pluginJsPath: "lib/",//js相对root的路径
            pluginModelPath: "assets/",//模型相对root的路径
            tagMode: !1,
            debug: !1,
            model: {
                scale: 2,
                jsonPath: "/dist/live2dw/assets/asuna_33.model.json"
            },
            display: {//大小位置什么的自己慢慢调就是了
                position: "left",//定位
                width: 130,//宽度
                height: 210,//高度
                hOffset: -40,//左右
                vOffset: 0//上下
            },
            mobile: {
                show: !1
            },
            log: !1
        });
    </script>
     -->

</body>
</html>
</#macro>