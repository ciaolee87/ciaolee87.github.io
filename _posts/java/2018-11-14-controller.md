---
layout: post  
title: 3. @MVC
description: java
---

## 1. @RequestMapping  
	- URL 맵핑 : 메소드 단계까지 가능
	- @어노테이션은 상속되도 재정의 하지 않는 이상 유지된다
>	## 1. 자주쓰는 엘리먼트
>	1. String[] value();  
>		- URL 맵핑  
>		- {} 을 사용하여 URI 탬플릿 사용가능
>		~~~
>		@RequestMapping("/user/{usrid})
>		~~~
>	2. RequestMethod[] method();
>		- HTTP 메소드 정의  
>  
>	3. String[] parmas
>		- Request Parameter 를 분석하여 맵핑한다  
>		- 조건을 만족하는것이 여러개 일 경우, 가장 조건을 많이 만족하는 것으로 맵핑된다
>		~~~
>		@RequestMapping(value="/user/edit", parmas="type=admin")
>		@RequestMapping(value="/user/edit", params="!type")	
>		~~~