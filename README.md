## 실습 기간

- 기간: 7월 7일~ 7월 28일

## 의뢰서

[TAB_영양제 추천 사이트](http://192.168.0.70:8080/)


## 구현 화면
![main page base](https:/images/main page base.PNG)

## 팀원 및 역할

### 💊김상아 
-[PM]

<details>
<summary>영양제 검색</summary>
[SearchController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/SearchController.java)
[SearchService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/SearchService.java)
</details>

<details>
<summary>영양제 목록</summary>
[ListController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/ListController.java)
[ListService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/ListService.java)
[supplementMapper.xml](https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/sqlmapper/mysql/supplementMapper.xml)
</details>

<details>
<summary>영양제 추천</summary>
[RecommendationController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/RecommendationController.java)
[RecommService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/RecommService.java) 
</details> 

### 💊나현탁
<details>
<summary>메인 페이지 기초</summary>
[mainpage.jsp](https://github.com/SSSanga/project_nutrients/blob/main/src/main/webapp/WEB-INF/views/mainpage.jsp)
[main.css](https://github.com/SSSanga/project_nutrients/tree/main/src/main/resources/static/css)
[signup.css](https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/static/css/signup.css) 
</details> 

### 💊조아라
<details>
<summary>리뷰</summary>
[ReviewsController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/ReviewsController.java)
[ReviewsService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/ReviewsService.java)
[ReviewMapper.xml](https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/sqlmapper/mysql/ReviewMapper.xml)
</details>

<details>
<summary>문의</summary>
[ContactsController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/ContactsController.java)  
[ContactsService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/ContactsService.java)
[contactsMapper.xml](https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/sqlmapper/mysql/contactsMapper.xml)
</details>

<details>
<summary>회원목록</summary>
[memberslist.jsp](https://github.com/SSSanga/project_nutrients/blob/main/src/main/webapp/WEB-INF/views/project/members/memberslist.jsp)
</details>

### 💊김하늘
-[code base]

<details>
<summary>메인</summary>
[MainController.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/MainController.java)
[MainService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/MainService.java)
[exampleMapper.xml]https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/sqlmapper/mysql/exampleMapper.xml
</details>


<details>
<summary>관리자 회원정보조회 및 수정</summary>
[PrincipalUserService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/security/PrincipalUserService.java)  
[PrincipalUser.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/security/PrincipalUser.java)  
[AuthsService.java](https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/AuthsService.java)
[AuthsMapper.xml](https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/sqlmapper/mysql/AuthsMapper.xml)
</details>


<details>
<summary>회원가입/회원목록/로그인</summary>
[MembersController.java] (https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/controller/MembersController.java)
[MembersService.java] (https://github.com/SSSanga/project_nutrients/blob/main/src/main/java/com/project/project_nutrients/service/MembersService.java)
[membersMapper.xml]https://github.com/SSSanga/project_nutrients/blob/main/src/main/resources/sqlmapper/mysql/membersMapper.xml
details>



### 실습소감

### 💊김상아 
### 💊조아라
팀프로젝트를 통해 vscode에서 controller, service, xml,jsp와 databases 연동을 시키는 것 혼자 했으면 에러상황을 해결하지 못하고 포기했을 것 같은데 팀원들 덕분에 오류해결하는 방법들이 나에게 큰도움이 되었다.

### 💊김하늘


