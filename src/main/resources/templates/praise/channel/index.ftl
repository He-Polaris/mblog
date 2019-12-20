<#include "/praise/inc/layout.ftl"/>
<@layout channel.name>
    <div class="row">
        <div class="col-xs-12 col-md-9 side-left">
            <@contents channelId=channel.id pageNo=pageNo order=order>
                <div class="posts">
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
                </div>
                <!-- Pager -->
                <div class="text-center">
                    <@utils.pager request.requestURI!"", results, 5/>
                </div>
            </@contents>
        </div>
        <div class="col-xs-12 col-md-3 side-right">
            <#include "/praise/inc/right.ftl" />
        </div>
    </div>
</@layout>