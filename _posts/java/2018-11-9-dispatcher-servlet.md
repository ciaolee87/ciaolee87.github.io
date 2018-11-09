---
layout: post  
title: 1. Dispatcher servlet 개요
description: java
---

## 1. Dispatcher Servelt
스프링 프레임워크의 프론트 컨트롤러, 서버로 들어오는 다양한 요청을 처리해준다.  
1. Dispatcher servlet  
        1. HandlerMapping 을 통하여 Controller 선택  
                > - BeanNameUrlHandlerMapping  
                > - DefaultAnnotationHandlerMapping  
        2. HandlerAdapter 를 통하여 Controller 의 메소드 실행  
                > - HttpRequestHandlerAdapter  
                > - SimpleControllerHandlerAdapter  
                > - AnnotationMethodHandlerAdapter  
  
2. Controller  
        1. HandlerExceptionResolver 를 통하여 예외 처리  
                > - AnnotationMethodHandlerExceptionResolver  
                > - ResponseStatusExceptionResolver  
                > - DefaultHandlerExceptionResolver  
  
3. Model  
4. Controller  
5. Dispatcher servlet  
        1. ViewResolver 를 통하여 View 선택  
6. View  
7. Dispatcher servlet  


