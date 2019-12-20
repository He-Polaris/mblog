<#include "/delicate/inc/layout.ftl"/>
<#assign topId = 1 />

<@layout>
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

        <div class="alert alert-warning" style="margin-bottom: 0px;">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <i class="fontello fontello-volume-up" aria-hidden="true"></i>
		<@sidebar method="latest_comments">
            <div class="message-roll">
                <div class="messages-roll">

                    <ul class="list">
				<#list results as row>
                    <li><a href="${base}/post/${row.postId}">${row.content}</a></li>
                </#list>
                    </ul>
                </div>
            </div>
        </@sidebar>
            <i class="fa fa-comments show-comments"></i>
        </div>
        <@contents channelId=topId size=3>
            <#if  results.content?size gt 0>
        <div class="row banner">
            <#list results.content as row>
                <div class="banner-item col-xs-12 col-sm-4 col-md-4">
                    <div class="index-banner-box"
                        <#if row.thumbnail?? && row.thumbnail?length gt 0>
                         style="background-image:url(<@resource src=row.thumbnail/>)"
                        <#else>
                         style="background-image:url(${base}/dist/images/spinner-overlay.png)"
                        </#if> >
                        <a class="top" href="${base}/post/${row.id}">
                            <div class="overlay"></div>
                            <div class="line"></div>
                            <div class="title">
                                <h3>${row.title?html}</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </#list>
        </div>
            </#if>
        </@contents>

        <div class="posts">
            <@contents pageNo=pageNo size=6>
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
            </@contents>
        </div>
        <div class="text-center">
            <!-- Pager -->
            <@utils.pager request.requestURI!"", results, 5/>
        </div>
    </div>
    <div class="col-xs-12 col-md-3 side-right">
        <#include "/delicate/inc/right.ftl"/>

    </div>
</div>

</@layout>