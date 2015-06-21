
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<head>
<title>科科ERP</title>
<link href="${ctx}/static/dwz/themes/default/style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="${ctx}/static/dwz/themes/css/core.css" rel="stylesheet" type="text/css" media="screen" />
<link href="${ctx}/static/dwz/themes/css/print.css" rel="stylesheet" type="text/css" media="print" />

<script src="${ctx}/static/dwz/js/speedup.js" type="text/javascript"></script>
<script src="${ctx}/static/dwz/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="${ctx}/static/dwz/js/dwz.min.js" type="text/javascript"></script>
<script type="text/javascript">
        $(function () {
            DWZ.init("${ctx}/static/dwz/dwz.frag.xml", {
                //loginUrl: "login_dialog.html", loginTitle: "登录", // 弹出登录对话框
                //        loginUrl:"login.html",    // 跳到登录页面
                statusCode: { ok: 200, error: 300, timeout: 301 }, //【可选】
                pageInfo: { pageNum: "pageNum", numPerPage: "numPerPage", orderField: "orderField", orderDirection: "orderDirection" }, //【可选】
                debug: false, // 调试模式 【true|false】
                callback: function () {
                    initEnv();
                    $("#themeList").theme({ themeBase: "themes" }); // themeBase 相对于index页面的主题base路径
                }
            });
        });
        
    </script>
</head>
<body scroll="no">
	<div id="layout">
		<div id="leftside">
			<div id="sidebar_s">
				<div class="collapse">
					<div class="toggleCollapse">
						<div></div>
					</div>
				</div>
			</div>
			<div id="sidebar">
				<div class="toggleCollapse">
					<h2>主菜单</h2>
					<div>收缩</div>
				</div>
				<div class="accordion" fillspace="sidebar">
					<div class="accordionHeader">
						<h2>
							<span>Folder</span>功能管理
						</h2>
					</div>
					<div class="accordionContent"></div>
					<div class="accordionHeader">
						<h2>
							<span>Folder</span>账号导入
						</h2>
					</div>
					<div class="accordionContent"></div>
					<div class="accordionHeader">
						<h2>
							<span>Folder</span>导航管理
						</h2>
					</div>
					<div class="accordionContent"></div>
				</div>
			</div>
		</div>
		<div id="container">
			<div id="navTab" class="tabsPage">
				<div class="tabsPageHeader">
					<div class="tabsPageHeaderContent">
						<!-- 显示左右控制时添加 class="tabsPageHeaderMargin" -->
						<ul class="navTab-tab">
							<li tabid="main" class="main"><a href="javascript:;"><span><span
										class="home_icon">我的主页</span></span></a></li>
						</ul>
					</div>
					<div class="tabsLeft">left</div>
					<!-- 禁用只需要添加一个样式 class="tabsLeft tabsLeftDisabled" -->
					<div class="tabsRight">right</div>
					<!-- 禁用只需要添加一个样式 class="tabsRight tabsRightDisabled" -->
					<div class="tabsMore">more</div>
				</div>
				<ul class="tabsMoreList">
					<li><a href="javascript:;">我的主页</a></li>
				</ul>
				<div class="navTab-panel tabsPageContent layoutBox">
					<div class="page unitBox">
						<div class="pageFormContent" layouth="80"
							style="margin-right: 230px">我的主页</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		Copyright &copy; 2012 <a>ZZW</a>
	</div>
</body>
</html>