package com.mtons.mblog.config;

import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import com.mtons.mblog.web.interceptor.BaseInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.List;

/**
 * @author langhsu
 */
@Configuration
public class WebMvcConfiguration implements WebMvcConfigurer {
    @Autowired
    private BaseInterceptor baseInterceptor;
    @Autowired
    private FastJsonHttpMessageConverter fastJsonHttpMessageConverter;
    @Autowired
    private SiteOptions siteOptions;

    /**
     * http服务端口
     */
    @Value("${custom.server.http.port}")
    private Integer httpPort;

    /**
     * https服务端口
     */
    @Value("${server.port}")
    private Integer httpsPort;

    /**
     * Add intercepter
     *
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(baseInterceptor)
                .addPathPatterns("/**")
                .excludePathPatterns("/dist/**", "/store/**", "/static/**");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        String location = "file:///" + siteOptions.getLocation();
        registry.addResourceHandler("/dist/**")
                .addResourceLocations("classpath:/static/dist/");

        registry.addResourceHandler("/theme/*/dist/**")
                .addResourceLocations("classpath:/templates/")
                .addResourceLocations(location + "/storage/templates/");

        registry.addResourceHandler("/storage/avatars/**")
                .addResourceLocations(location + "/storage/avatars/");

        registry.addResourceHandler("/storage/thumbnails/**")
                .addResourceLocations(location + "/storage/thumbnails/");
    }

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        converters.add(fastJsonHttpMessageConverter);
    }

    /**
     * 采用Undertow作为服务器。
     * Undertow是一个用java编写的、灵活的、高性能的Web服务器，提供基于NIO的阻塞和非阻塞API，特点：
     * 非常轻量级，Undertow核心瓶子在1Mb以下。它在运行时也是轻量级的，有一个简单的嵌入式服务器使用少于4Mb的堆空间。
     * 支持HTTP升级，允许多个协议通过HTTP端口进行多路复用。
     * 提供对Web套接字的全面支持，包括JSR-356支持。
     * 提供对Servlet 3.1的支持，包括对嵌入式servlet的支持。还可以在同一部署中混合Servlet和本机Undertow非阻塞处理程序。
     * 可以嵌入在应用程序中或独立运行，只需几行代码。
     * 通过将处理程序链接在一起来配置Undertow服务器。它可以对各种功能进行配置，方便灵活。
     */
//    @Bean
//    public ServletWebServerFactory undertowFactory() {
//        UndertowServletWebServerFactory undertowFactory = new UndertowServletWebServerFactory();
//        undertowFactory.addBuilderCustomizers((Undertow.Builder builder) -> {
//            builder.addHttpListener(httpPort, "0.0.0.0");
//            // 开启HTTP2
//            builder.setServerOption(UndertowOptions.ENABLE_HTTP2, true);
//        });
//        undertowFactory.addDeploymentInfoCustomizers(deploymentInfo -> {
//            // 开启HTTP自动跳转至HTTPS
//            deploymentInfo.addSecurityConstraint(new SecurityConstraint()
//                    .addWebResourceCollection(new WebResourceCollection().addUrlPattern("/*"))
//                    .setTransportGuaranteeType(TransportGuaranteeType.CONFIDENTIAL)
//                    .setEmptyRoleSemantic(SecurityInfo.EmptyRoleSemantic.PERMIT))
//                    .setConfidentialPortManager(exchange -> httpsPort);
//        });
//        return undertowFactory;
//    }
}
