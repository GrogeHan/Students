<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<h4 class="modal-title" id="myModalLabel">${typename}</h4>
</div>
<div class="modal-body">
	<div class="panel panel-default">
		<div class="panel-body">
			<form id="updateuserform" class="form-horizontal" action="updateuser"
				method="post">
				<div class="form-group">
					<label for="usercode">学生编号</label> <input type="text"
						class="form-control" id="stuno" name="stuno"
						placeholder="User Code" value="${single.stuno}">
				</div>
				<div class="form-group">
					<label for="useraccount">学生姓名</label> <input type="text"
						class="form-control" id="stuname" name="stuname"
						placeholder="User Account" value="${single.stuname}">
				</div>
				<div class="form-group">
					<label for="password">学生生日</label> <input type="password"
						class="form-control" id="stubrithday" name="stubrithday"
						placeholder="Password" value="${singl.stubrithday}">
				</div>
				<div class="form-group">
					<label for="username">学生性别</label> <input type="radio"
						class="form-control" name="stusex"
						placeholder="User Name">男
						<input type="radio"
						class="form-control" name="stusex"
						placeholder="User Name">女
				</div>
				<div class="form-group">
					<label for="pid">班级</label>
				</div>
				<div class="form-group">
					<label for="age">学生状态</label>
					<input type="text"
						class="form-control" id="state" name="state" placeholder="User Age">
				</div>
				<div class="form-group">
					<label for="sex">用户性别</label> <select id="sex" name="sex"
						class="form-control">
						<c:choose>
							<c:when test="${singleuser.sex == 1}">
								<option value="1" selected="selected">男</option>
								<option value="0">女</option>
							</c:when>
							<c:otherwise>
								<option value="1">男</option>
								<option value="0" selected="selected">女</option>
							</c:otherwise>
						</c:choose>
					</select>
				</div>
				<div class="form-group">
					<label for="address">用户住址</label> <input type="text"
						class="form-control" id="address" name="address"
						placeholder="User Address" value="${singleuser.address}">
				</div>
				<div class="modal-footer">
					<input type="hidden" class="form-control" id="id" name="id"
						placeholder="User Address" value="${singleuser.id}">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button id="upbtnsubmit" type="button" class="btn btn-primary">Save
						changes</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	var option = {
		dataType : 'json',
		success : userCallBack,
		error:errorCallBack
	};

	$("#updateuserform").ajaxForm(option);
	$("#upbtnsubmit").on("click", function() {
		$("#updateuserform").ajaxSubmit(option);
		return false;
	});
</script>
