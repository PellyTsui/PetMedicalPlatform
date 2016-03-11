AdminXXXX.jsp--> 管理员页面
DrXXXX.jsp/ DoctorXXXX.jsp-->医生页面
UserXXXX.jsp-->用户页面
Error.jsp-->显示错误信息
message.jsp-->显示成功信息
/ErrorPage/errors--->显示应用错误信息（>1024kb IE 才能显示）
xxxxx.jsp--->用户、医生公有页面
index.jsp--->welcome page for THREE

————————————————————————————————
petmedical@163.com--->需开启SMTP,POP3功能

————————————————————————————————

修改js的 inner.HTML 样式、文字

————————————————————————————————

@include:

every jsp page: 

清除缓存：
     <meta http-equiv="pragma" content="no-cache"> 

     <meta http-equiv="cache-control" content="no-cache"> 

     <meta http-equiv="expires" content="0"> 

添加拦截器：

用户页面：
<% User user=(User)session.getAttribute("user");
   if(user==null){
	   out.write("请先登录！");
	   response.setHeader("refresh", "3;URL=UserLogin.jsp"); 
	   return;
   }
%>

医生页面：

<% Doctor doctor=(Doctor)session.getAttribute("doctor");
   if(doctor==null){
	   out.write("请先登录！");
	   response.setHeader("refresh", "3;URL=DoctorLogin.jsp"); 
	   return;
   }
%>
管理员页面：
<% Admin admin=(Admin)session.getAttribute("admin");
   if(admin==null){
	   out.write("请先登录！");
	   response.setHeader("refresh", "3;URL=AdminLogin.jsp"); 
	   return;
   }
%>


共同页面：

 <% Admin admin=(Admin)session.getAttribute("admin");
    User user=(User)session.getAttribute("user");
    Doctor doctor=(Doctor)session.getAttribute("doctor");
 if(admin==null&&user==null&&doctor==null){
	   out.write("请先登录！");
	   response.setHeader("refresh", "3;URL=index.jsp"); 
	   return;
 }
%>

*注册用户、医生/忘记密码页面不用设拦截器
—————————————————————————————————
添加数据

注意：注册只能在注册页面注册（密码存储用了MD5加盐算法）
  


