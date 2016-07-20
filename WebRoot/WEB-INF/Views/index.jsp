<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>用户登录</title>

<!-- Bootstrap -->
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="../bootstrap/css/dashboard.css" />
<link rel="stylesheet" type="text/css"
	href="../bootstrap/css/toastr.min.css" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">学生信息管理系统</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Dashboard</a></li>
					<li><a href="#">Settings</a></li>
					<li><a href="#">Profile</a></li>
					<li><a href="#">Help</a></li>
				</ul>
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="Search...">
				</form>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#">学生管理<span class="sr-only">(current)</span></a></li>
					<li><a href="#">班级管理</a></li>
					<li><a href="#">老师管理</a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">学生列表</h1>
				<button class="btn btn-default">添加学生</button>
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>编号</th>
								<th>姓名</th>
								<th>生日</th>
								<th>班级</th>
								<th>性别</th>
								<th>入学时间</th>
								<th>编辑</th>
								<th>删除</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${stulist}" var="item">
								<tr>
									<td>${item.stuno}</td>
									<td>${item.stuname}</td>
									<td>${item.stubrithday}</td>
									<td>${item.stuclass}</td>
									<c:choose>
										<c:when test="${item.stusex == 1}">
											<td>男</td>
										</c:when>
										<c:otherwise>
											<td>女</td>
										</c:otherwise>
									</c:choose>
									<td>${item.inTime}</td>
									<td>${item.state}</td>
									<td><a href="#?code=${item.id}">编辑</a></td>
									<td><a href="#?code=${item.id}">删除</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<nav>
						<ul class="pagination" style="margin: 0px;">
							<c:choose>
								<c:when test="${pager.pageindex==0}">
									<li class="disabled"><a href="#" aria-label="Previous"><span
											aria-hidden="true">&laquo;</span> </a></li>
								</c:when>
								<c:otherwise>
									<li><a href="index?pindex=0" aria-label="Previous"><span
											aria-hidden="true">&laquo;</span> </a></li>
								</c:otherwise>
							</c:choose>
							<c:forEach begin="0" end="${pager.pagecount-1}" varStatus="vs">
								<c:choose>
									<c:when test="${pager.pageindex==vs.index}">
										<li class="active"><a href="#">${vs.index+1}</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="index?pindex=${vs.index}">${vs.index+1}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:choose>
								<c:when test="${pager.pageindex==pager.pagecount-1}">
									<li class=".disabled"><a href="#" aria-label="Next"> <span
											aria-hidden="true">&raquo;</span>
									</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="index?pindex=${pager.pagecount-1}"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content"></div>
		</div>
	</div>

	<div class="modal fade bs-example-modal-sm" id="alertModal"
		tabindex="-1" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title red">警告</h4>
				</div>
				<div class="modal-body">确定要删除数据?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary"
						onclick="actionDelete()">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="../bootstrap/js/jquery-1.12.3.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="../bootstrap/js/jquery-form.js"></script>
	<script src="../bootstrap/js/toastr.min.js"></script>
	
	<script type="text/javascript">
		var deleteid = "";
		
		function adduser()
		{
			var option = {
				backdrop : false,
				remote : "studentview?code="
			};

			$("#myModal").modal(option);
		}
		
		
		function updateUser(id) {
			var option = {
				backdrop : false,
				remote : "updateuser?code=" + id
			};

			$("#myModal").modal(option);
		}

		function userCallBack(data) {

			toastr.options = {
				"positionClass" : "toast-top-full-width",//弹出窗的位置
				"timeOut" : "1000"
			};
			if (data.resultcode = 200) {
				toastr.success(data.resultmsg);
			} else {
				toastr.error(data.resultmsg);
			}
			$('#myModal').modal('hide');
		}

		function errorCallBack(data) {
			console.log(data);
		}

		function deleteUser(id) {
			$("#alertModal").modal({
				backdrop : false
			});
			deleteid = id;
		}

		function actionDelete() {
			$.get("deleteuser", {
				"id" : deleteid
			}, function(data) {
				toastr.options = {
					"positionClass" : "toast-top-full-width",//弹出窗的位置
					"timeOut" : "1000"
				};
				if (data.resultcode = 200) {
					toastr.success(data.resultmsg);
					debugger;
					$("#" + deleteid).remove();
				} else {
					toastr.error(data.resultmsg);
				}
				$('#alertModal').modal('hide');
			});
		}
	</script>
	
</body>
</html>