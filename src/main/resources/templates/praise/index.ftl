<#include "/praise/inc/layout.ftl"/>
<#assign topId = 1 />
<@layout>
<!-- top -->
    <@contents channelId=topId size=5>
        <#if  results.content?size gt 0>
        <div class="row banner bg-animation hidden-xs ">
            <!-- 幻灯片 轮播图 ↓--->
            <div class="swiper-container">
                <div class="swiper-wrapper">
                <#list results.content as row>
                    <div class="swiper-slide">
                        <div class="banner-item col-xs-12 col-sm-12 col-md-12">
                            <div class="index-banner-box"<#if row.thumbnail?? && row.thumbnail?length gt 0>style="background-image:url(<@resource src=row.thumbnail/>)"<#else>style="background-image:url(${base}/dist/images/spinner-overlay.png)"</#if>>
                                <a class="top" href="${base}/post/${row.id}">
                                    <div class="overlay"></div>
                                    <!--<div class="line"></div>-->
                                    <div class="title">
                                        <h3>${row.title?html}</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </#list>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev">
                    <i class="fa fa-angle-left"></i>
                </div>
                <div class="swiper-button-next">
                    <i class="fa fa-angle-right"></i>
                </div>
            </div>
        </div>
        </#if>
    </@contents>
<!-- top/end -->
<div class="row">
    <div class="col-xs-12 col-md-9 side-left">
        <div class="widget panel-heading">
            <h3 class="panel-title">最新文章</h3>
        </div>
        <div class="posts">
            <@contents pageNo=pageNo size=20>
            <ul class="posts-list">
                <#include "/praise/inc/posts_item.ftl"/>
                <#list results.content as row>
                   <div class="wow fadeIn" data-wow-delay="0.1s">
                       <@posts_item row/>
                   </div>
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
    <div class="col-xs-12 col-md-3 side-right bg-animation">
        <#include "/praise/inc/right.ftl"/>
    </div>
</div>
</@layout>