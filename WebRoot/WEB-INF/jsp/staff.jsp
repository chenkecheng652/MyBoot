<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>人事薪资管理-BootCRM</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Staff CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Staff Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>staff/list.action">人事薪资管理系统 v2.0</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上开会，讨论一下下个月工作的事...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.user_name}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group staffom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/staff/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 员工管理
				    </a>
				</li>
				<li>
				    <a href="#">
				      <i class="fa fa-dashboard fa-fw" ></i> 员工考勤
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 员工列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">员工管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/staff/list.action">
					<div class="form-group">
						<label for="staffName">名称</label>
						<input type="text" class="form-control" id="staffName" 
						                   value="${staffName }" name="staffName" />
					</div>
					<div class="form-group">
						<label for="staffFrom">员工部门</label>
						<select	class="form-control" id="staffFrom" name="staffDepartment">
							<option value="">--请选择--</option>
							<c:forEach items="${fromType}" var="item">
								<option value="${item.dict_id}"
								       <c:if test="${item.dict_id == staffDepartment}">selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="staffSalary">员工薪资</label>
						<select	class="form-control" id="staffSalary"  name="staffSalary">
							<option value="">--请选择--</option>
							<c:forEach items="${salaryType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == staffSalary}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="staffPosition">员工职位</label>
						<select	class="form-control" id="staffPosition" name="staffPosition">
							<option value="">--请选择--</option>
							<c:forEach items="${positionType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == staffPosition}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newStaffDialog" onclick="clearStaff()">新建</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">员工信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>编号</th>
								<th>员工名称</th>
								<th>员工部门</th>
								<th>员工薪资</th>
								<th>员工职位</th>
								<th>固定电话</th>
								<th>手机</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.staff_id}</td>
									<td>${row.staff_name}</td>
									<td>${row.staff_department}</td>
									<td>${row.staff_salary}</td>
									<td>${row.staff_position}</td>
									<td>${row.staff_phone}</td>
								    <td>${row.staff_mobile}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#staffEditDialog" onclick= "editStaff(${row.staff_id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteStaff(${row.staff_id})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/staff/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 员工列表查询部分  end-->
</div>
<!-- 创建员工模态框 -->
<div class="modal fade" id="newStaffDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建员工信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_staff_form">
					<div class="form-group">
						<label for="new_staffName" class="col-sm-2 control-label">
						    员工名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_staffName" placeholder="员工名称" name="staff_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_staffFrom" style="float:left;padding:7px 15px 0 27px;">员工部门</label>
						<div class="col-sm-10">
							<select	class="form-control" id="new_staffFrom" name="staff_department">
								<option value="">--请选择--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == staffDepartment}">selected</c:if>>
									${item.dict_item_name }									
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_staffSalary" style="float:left;padding:7px 15px 0 27px;">员工薪资</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="new_staffSalary"  name="staff_salary">
								<option value="">--请选择--</option>
								<c:forEach items="${salaryType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == staffSalary}"> selected</c:if>>
									${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_staffPosition" style="float:left;padding:7px 15px 0 27px;">员工职位</label>
						<div class="col-sm-10">
							<select	class="form-control" id="new_staffPosition" name="staff_position">
								<option value="">--请选择--</option>
								<c:forEach items="${positionType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == staffPosition}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_linkMan" class="col-sm-2 control-label">招募人</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_linkMan" placeholder="招募人" name="staff_linkman" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_phone" class="col-sm-2 control-label">固定电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_phone" placeholder="固定电话" name="staff_phone" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_mobile" class="col-sm-2 control-label">移动电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_mobile" placeholder="移动电话" name="staff_mobile" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_zipcode" class="col-sm-2 control-label">邮政编码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_zipcode" placeholder="邮政编码" name="staff_zipcode" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_address" class="col-sm-2 control-label">联系地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_address" placeholder="联系地址" name="staff_address" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createStaff()">创建员工</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改员工模态框 -->
<div class="modal fade" id="staffEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改员工信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_staff_form">
					<input type="hidden" id="edit_staff_id" name="staff_id"/>
					<div class="form-group">
						<label for="edit_staffName" class="col-sm-2 control-label">员工名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_staffName" placeholder="员工名称" name="staff_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_staffFrom" style="float:left;padding:7px 15px 0 27px;">员工部门</label>
						<div class="col-sm-10">
							<select	class="form-control" id="edit_staffFrom" name="staff_department">
								<option value="">--请选择--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == staffDepartment}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_staffSalary" style="float:left;padding:7px 15px 0 27px;">员工薪资</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="edit_staffSalary"  name="staff_salary">
								<option value="">--请选择--</option>
								<c:forEach items="${salaryType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == staffSalary}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_staffPosition" style="float:left;padding:7px 15px 0 27px;">员工职位</label>
						<div class="col-sm-10">
							<select	class="form-control" id="edit_staffPosition" name="staff_position">
								<option value="">--请选择--</option>
								<c:forEach items="${positionType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == staffPosition}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_linkMan" class="col-sm-2 control-label">招募人</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_linkMan" placeholder="招募人" name="staff_linkman" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_phone" class="col-sm-2 control-label">固定电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_phone" placeholder="固定电话" name="staff_phone" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_mobile" class="col-sm-2 control-label">移动电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_mobile" placeholder="移动电话" name="staff_mobile" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_zipcode" class="col-sm-2 control-label">邮政编码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_zipcode" placeholder="邮政编码" name="staff_zipcode" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_address" class="col-sm-2 control-label">联系地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_address" placeholder="联系地址" name="staff_address" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateStaff()">保存修改</button>
			</div>
		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Staff Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建员工窗口中的数据
	function clearStaff() {
	    $("#new_staffName").val("");
	    $("#new_staffFrom").val("")
	    $("#new_staffSalary").val("")
	    $("#new_staffPosition").val("")
	    $("#new_linkMan").val("");
	    $("#new_phone").val("");
	    $("#new_mobile").val("");
	    $("#new_zipcode").val("");
	    $("#new_address").val("");
	}
	// 创建员工
	function createStaff() {
	$.post("<%=basePath%>staff/create.action",
	$("#new_staff_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("员工创建成功！");
	            window.location.reload();
	        }else{
	            alert("员工创建失败！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的员工信息
	function editStaff(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>staff/getStaffById.action",
	        data:{"id":id},
	        success:function(data) {
	            $("#edit_staff_id").val(data.staff_id);
	            $("#edit_staffName").val(data.staff_name);
	            $("#edit_staffFrom").val(data.staff_department)
	            $("#edit_staffSalary").val(data.staff_salary)
	            $("#edit_staffPosition").val(data.staff_position)
	            $("#edit_linkMan").val(data.staff_linkman);
	            $("#edit_phone").val(data.staff_phone);
	            $("#edit_mobile").val(data.staff_mobile);
	            $("#edit_zipcode").val(data.staff_zipcode);
	            $("#edit_address").val(data.staff_address);
	            
	        }
	    });
	}
    // 执行修改员工操作
	function updateStaff() {
		$.post("<%=basePath%>staff/update.action",$("#edit_staff_form").serialize(),function(data){
			if(data =="OK"){
				alert("员工信息更新成功！");
				window.location.reload();
			}else{
				alert("员工信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除客户
	function deleteStaff(id) {
	    if(confirm('确实要删除该员工吗?')) {
	$.post("<%=basePath%>staff/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("员工删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除员工失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>