<div class="panel-default widget hidden-xs">
	<div class="panel-heading">
		<h3 class="panel-title">热门文章</h3>
	</div>
	<div class="panel-body">
		<@sidebar method="hottest_posts">
        <ol class="posts-list list-space-sm list-unstyled ">
			<#list results as row>
             <li>
                  <#if row.thumbnail?? && row.thumbnail?length gt 0>
            <article class="post post--horizontal post--horizontal-xxs">
                <div class="post_thumb min-height-70">
                    <a href="${base}/post/${row.id}">
                        <img class="lazy thumbnail" src="<@resource src=row.thumbnail/>" style="display: inline-block;">
                    </a>
                </div>
                <div class="post_text">
                    <h3>
						<a href="${base}/post/${row.id}">${row.title}</a>
                    </h3>
                    <div class="item-texts">${row.summary}</div>
                    <div class="post_meta ">
                    <span class="ico-eye"><i class="fa fa-eye"></i>${row.views}</span>
                    <span class="ico-like"><i class="fa fa-comments-o"></i>${row.comments}</span>
					</div>
                </div>
            </article>
                  <#else>
             <div class="content_box_s posts-aside">
                 <div class="posts-item">
                     <div class="post_text">
                         <h3 class="post_thumb_i">
                             <i class="fa fa-circle-o"></i>
                             <a href="${base}/post/${row.id}"><#if escape>${row.title?html}<#else>${row.title}</#if>
                             </a>
                         </h3>
                     </div>

                 </div>
             </div>

                  </#if>

            </li>
            </#list>
        </ol>
	</@sidebar>
	</div>
</div>
<div class="panel-default widget hidden-xs">
	<div class="panel-heading">
		<h3 class="panel-title">最新发布</h3>
	</div>
	<div class="panel-body">
		<@sidebar method="latest_posts">
			<ul class="list">
				<#list results as row>
					<li>
                        <span class="latest_thumb_i"><i class="fa fa-circle"></i></span>
                        <a href="${base}/post/${row.id}">${row.title}</a>
                    </li>
				</#list>
			</ul>
		</@sidebar>
	</div>
</div>
<@controls name="comment">
<div class="panel-default widget hidden-xs top clear">
    <div class="panel-heading">
        <h3 class="panel-title">最新评论</h3>
    </div>
    <div class="panel-body">
		<@sidebar method="latest_comments">
			<ul class="widget-content-list">
				<#list results as row>
                    <div class="widget-content">
                        <li class="comment">
                            <div class="comment-title" title="3小时">
                                <div class="comment-author"><img src="<@resource src=row.author.avatar + '?t=' + .now?time/>">
								 <span href="${base}/users/${row.author.id}" target="_blank">${row.author.name}</span>
								</div>
                            </div>
                            <div class="comment-content">
                                <a href="${base}/post/${row.postId}">${row.content}</a>
                            </div>
                        </li>
                    </div>

				</#list>
			</ul>
		</@sidebar>
    </div>
</div>
</@controls>