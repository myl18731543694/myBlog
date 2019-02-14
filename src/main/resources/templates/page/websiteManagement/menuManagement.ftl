<!-- 资源管理模块 -->
<div role="tabpanel" class="tab-pane active" id="sour">
	<div class="check-div form-inline">
		<button class="btn btn-yellow btn-xs" data-toggle="modal"
			data-target="#addSource">添加资源</button>
	</div>
	<div class="data-div">
		<div class="row tableHeader">
			<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">编码</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">名称</div>
			<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">链接</div>
			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">操作</div>
		</div>
		<div class="tablebody">
			<div class="row">
				<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">1</div>
				<div id="topAD" class="col-lg-4 col-md-4 col-sm-4 col-xs-4"
					role="button" data-toggle="collapse" data-parent="#accordion"
					href="#collapseSystem" aria-expanded="true"
					aria-controls="collapseOne">
					<span id="topA" class="glyphicon  glyphicon-triangle-bottom  "></span>
					<span>系统管理</span>
				</div>
				<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
					/admin/system/userlist/software/</div>
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
					<button class="btn btn-success btn-xs" data-toggle="modal"
						data-target="#changeSource">修改</button>
					<button class="btn btn-danger btn-xs" data-toggle="modal"
						data-target="#deleteSource">删除</button>
				</div>
			</div>

			<!--系统管理折叠狂-->

			<div id="collapseSystem" class="collapse in" aria-expanded="true">
				<div class="row">
					<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl2 ">2</div>
					<div id="topBD" onClick="changeA()"
						class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl2" role="button"
						data-toggle="collapse" data-parent="#accordion"
						href="#collapseAccount" aria-expanded="true"
						aria-controls="collapseOne">
						<span onClick="changeB()" id="topB"
							class="glyphicon glyphicon-triangle-bottom"></span> <span>账号管理</span>
					</div>
					<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">/rlist/</div>
					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
						<button class="btn btn-success btn-xs" data-toggle="modal"
							data-target="#changeSource">修改</button>
						<button class="btn btn-danger btn-xs" data-toggle="modal"
							data-target="#deleteSource">删除</button>
					</div>
				</div>
				<!--用户管理折叠狂-->
				<div id="collapseAccount" class="collapse in" aria-expanded="true">
					<div class="row">
						<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3 ">1</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
							<span class=""> &nbsp;</span><span>资源管理</span>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
							/admin/system/userlist/software/</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
							<button class="btn btn-success btn-xs" data-toggle="modal"
								data-target="#changeSource">修改</button>
							<button class="btn btn-danger btn-xs" data-toggle="modal"
								data-target="#deleteSource">删除</button>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  levl3 ">2</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
							<span></span><span>权限管理</span>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
							/admin/system/userlist/software/</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
							<button class="btn btn-success btn-xs" data-toggle="modal"
								data-target="#changeSource">修改</button>
							<button class="btn btn-danger btn-xs" data-toggle="modal"
								data-target="#deleteSource">删除</button>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl2 ">3</div>
					<div id="topCD" class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl2"
						role="button" data-toggle="collapse" data-parent="#accordion"
						href="#collapseSchool" aria-expanded="true"
						aria-controls="collapseOne">
						<span id="topC" onClick="changeC()"
							class="glyphicon glyphicon-triangle-bottom"></span><span>
							地区管理</span>
					</div>
					<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
						/admin/system</div>
					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
						<button class="btn btn-success btn-xs" data-toggle="modal"
							data-target="#changeSource">修改</button>
						<button class="btn btn-danger btn-xs" data-toggle="modal"
							data-target="#deleteSource">删除</button>
					</div>
				</div>
				<!--地区管理折叠狂-->
				<div id="collapseSchool" class="collapse in" aria-expanded="true">
					<div class="row">
						<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  levl3">1</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4   levl3">
							<span></span><span>地区管理</span>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
							/admin/system/userlist/software/</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
							<button class="btn btn-success btn-xs" data-toggle="modal"
								data-target="#changeSource">修改</button>
							<button class="btn btn-danger btn-xs" data-toggle="modal"
								data-target="#deleteSource">删除</button>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3">2</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
							<span></span><span>规则管理</span>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
							/admin/system/userlist/software/</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
							<button class="btn btn-success btn-xs " data-toggle="modal "
								data-target="#changeSource ">修改</button>
							<button class="btn btn-danger btn-xs " data-toggle="modal "
								data-target="#deleteSource ">删除</button>
						</div>
					</div>
					<div class="row ">
						<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3 ">3</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl3">
							<span></span><span>人员信息</span>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
							/admin/system/userlist/software/</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
							<button class="btn btn-success btn-xs" data-toggle="modal"
								data-target="#changeSource">修改</button>
							<button class="btn btn-danger btn-xs" data-toggle="modal"
								data-target="#deleteSource">删除</button>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1   levl3">4</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
							<span></span><span>座位管理</span>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
							/admin/system/userlist/software/</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 ">
							<button class="btn btn-success btn-xs" data-toggle="modal"
								data-target="#changeSource">修改</button>
							<button class="btn btn-danger btn-xs" data-toggle="modal"
								data-target="#deleteSource">删除</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--页码块-->
	<footer class="footer">
		<ul class="pagination">
			<li><select>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					<option>9</option>
					<option>10</option>
			</select> 页</li>
			<li class="gray">共20页</li>
			<li><i class="glyphicon glyphicon-menu-left"> </i></li>
			<li><i class="glyphicon glyphicon-menu-right"> </i></li>
		</ul>
	</footer>
	<!--弹出窗口 添加资源-->
	<div class="modal fade" id="addSource" role="dialog"
		aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">添加资源</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form class="form-horizontal">
							<div class="form-group ">
								<label for="sName" class="col-xs-3 control-label">名称：</label>
								<div class="col-xs-8 ">
									<input type="email" class="form-control input-sm duiqi"
										id="sName" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="sLink" class="col-xs-3 control-label">链接：</label>
								<div class="col-xs-8 ">
									<input type="" class="form-control input-sm duiqi" id="sLink"
										placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="sOrd" class="col-xs-3 control-label">排序：</label>
								<div class="col-xs-8">
									<input type="" class="form-control input-sm duiqi" id="sOrd"
										placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="sKnot" class="col-xs-3 control-label">父节点：</label>
								<div class="col-xs-8">
									<input type="" class="form-control input-sm duiqi" id="sKnot"
										placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInput1" class="col-xs-3 control-label">资源类型：</label>
								<div class="col-xs-8">
									<label class="control-label" for="anniu"> <input
										type="radio" name="leixing" id="anniu">菜单
									</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
										class="control-label" for="meun"> <input type="radio"
										name="leixing" id="meun"> 按钮
									</label>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-xs btn-xs btn-white"
						data-dismiss="modal">取 消</button>
					<button type="button" class="btn btn-xs btn-xs btn-green">保
						存</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!--修改资源弹出窗口-->
	<div class="modal fade" id="changeSource" role="dialog"
		aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">修改资源</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form class="form-horizontal">
							<div class="form-group ">
								<label for="sName" class="col-xs-3 control-label">名称：</label>
								<div class="col-xs-8 ">
									<input type="email" class="form-control input-sm duiqi"
										id="sName" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="sLink" class="col-xs-3 control-label">链接：</label>
								<div class="col-xs-8 ">
									<input type="" class="form-control input-sm duiqi" id="sLink"
										placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="sOrd" class="col-xs-3 control-label">排序：</label>
								<div class="col-xs-8">
									<input type="" class="form-control input-sm duiqi" id="sOrd"
										placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="sKnot" class="col-xs-3 control-label">父节点：</label>
								<div class="col-xs-8">
									<input type="" class="form-control input-sm duiqi" id="sKnot"
										placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInput1" class="col-xs-3 control-label">资源类型：</label>
								<div class="col-xs-8">
									<label class="control-label" for="anniu"> <input
										type="radio" name="leixing" id="anniu">菜单
									</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
										class="control-label" for="meun"> <input type="radio"
										name="leixing" id="meun"> 按钮
									</label>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-xs btn-white"
						data-dismiss="modal">取 消</button>
					<button type="button" class="btn btn-xs btn-green">保 存</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!--弹出删除资源警告窗口-->
	<div class="modal fade" id="deleteSource" role="dialog"
		aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">确定要删除该资源？删除后不可恢复！</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-xs btn-white"
						data-dismiss="modal">取 消</button>
					<button type="button" class="btn btn-xs btn-danger">保 存</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</div>
