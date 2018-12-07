<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<nav class="navbar navbar-default navbar-fixed">
<div class="container-fluid">
	<!-- <div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#navigation-example-2">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">Xin chào !</a>
	</div> -->
	<div class="collapse navbar-collapse">
		<ul class="nav navbar-nav navbar-left">
			<li><a href=""> <i class="fa fa-search"></i>
					<p class="hidden-lg hidden-md">Tìm kiếm</p>
			</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="#">
					<p>Xin chào, <s:property value="username"/></p>
			</a></li>
			<li><a href="logout">
					<p>Đăng xuất</p>
			</a></li>
			<li class="separator hidden-lg hidden-md"></li>
		</ul>
	</div>
</div>
</nav>