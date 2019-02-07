---
layout: post  
title: 2. Root web application context
description: java
---

## 1. web.xml 알아보기


1. 어플리케이션 컨텍스트 로더 리스너 등록
~~~xml

<!-- Context loader 등록 -->
<listener>
        <listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>
</listener>

<!-- Context 등록 -->
<context-param>
        <param-name>contextConfigLocation</param-name>
        <param-value>/WEB-INF/applicationContext.xml</param-value>
</context-param>
~~~


2. Dispatcher Servlet 등록
~~~xml
<!-- Dispatcher servlet 등록 -->
<servlet>
        <servlet-name>dispatcher</servlet-name>
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
        <load-on-startup>1</load-on-startup>
</servlet>

<!-- 파일 이름 및 url 패턴 맵핑 -->
<servlet-mapping>
        <servlet-name>dispatcher</servlet-name>
        <!-- 이곳에 지정한 url 로 요청시 Dispatcher servlet 을 실행한다 -->
        <url-pattern>/api/</url-pattern>            
</servlet-mapping>
~~~