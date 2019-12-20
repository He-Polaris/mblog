<#include "/delicate/inc/layout.ftl"/>
<@layout channel.name>
    <div class="row">
        <div class="col-xs-12 col-md-2 hidden-xs m-t">
            <!-- 导航  start -->
            <li class="text-xs">
                <!--<span><i class="fa fa-home"></i></span>-->
                <div class="show-home"></div>
            </li>
        <#list channels as row>
            <ul class="navi">
                <li>
                    <a href="${base}/channel/${row.id}" nav="${row.name}">
                <#if row.thumbnail?? && row.thumbnail?length gt 0>
                    <img src="<@resource src=row.thumbnail/>">
                <#else>
                    <img src="${base}/theme/delicate/dist/images/icon-default.png">
                </#if>
                        ${row.name}
                    </a>
                </li>
            </ul>
        </#list>
            <!-- 导航  end -->
        </div>
        <div class="col-xs-12 col-md-7 side-left">
            <@contents channelId=channel.id pageNo=pageNo order=order>
                <div class="posts">
                    <ul class="posts-list">
                        <#include "/delicate/inc/posts_item.ftl"/>
                        <#list results.content as row>
                            <@posts_item row/>
                        </#list>
                        <#if  results.content?size == 0>
                        <li class="content">
                            <div class="content-box posts-aside">
                                <div class="posts-item">该目录下还没有内容!</div>
                            </div>
                        </li>
                        </#if>
                    </ul>
                </div>

                <!-- Pager -->
                <div class="text-center">
                    <@utils.pager request.requestURI!"", results, 5/>
                </div>
            </@contents>

        </div>

        <div class="col-xs-12 col-md-3 side-right">
            <#include "/delicate/inc/right.ftl" />
        </div>

    </div>

</@layout>

