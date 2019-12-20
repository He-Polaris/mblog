/*!
 * praise.unit.js (公共插件脚本)
 * 2018.1.18
 * 1.swiper   轮播图/幻灯片  插件
 * 2.wow      动画/延迟加载  插件
 * 3.wow      评论/置顶      自定义
 */
/*! 1.swiper start */
var swiper = new Swiper('.swiper-container', {
    pagination: '.swiper-pagination',
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    slidesPerView: 3,
    paginationClickable: true,
    centeredSlides: true,
    autoplayDisableOnInteraction: false,
    spaceBetween: 30,
    speed:666,
    loop: true,		//初始化
    //effect: 'fade', //滚动样式
    autoplay:2000 //时间
});

/*! 2.wow start */
if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
    new WOW().init();
};

/*! 3.Right-评论 start */
$(function(){
    var nav=$(".top"); //得到导航对象
    var win=$(window); //得到窗口对象
    var sc=$(document);//得到document文档对象。
    win.scroll(function(){
        if(sc.scrollTop()>=1160){
            nav.addClass("fixed_comment");
            $(".fixed_comments").fadeIn();
        }else{
            nav.removeClass("fixed_comment");
            $(".fixed_comments").fadeOut();
        }
    })
})
