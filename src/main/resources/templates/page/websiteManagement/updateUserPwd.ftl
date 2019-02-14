<div role="tabpanel" class="tab-pane active" id="sour">

	<form class="form-horizontal">
		<div class="form-group ">
			<label for="sName" class="col-xs-3 control-label">请输入旧密码：</label>
			<div class="col-xs-8 ">
				<input type="password" class="form-control input-sm duiqi"
					id="oldPwd" placeholder="请输入旧密码">
			</div>
		</div>
		<div class="form-group">
			<label for="sLink" class="col-xs-3 control-label">新密码：</label>
			<div class="col-xs-8 ">
				<input type="password" class="form-control input-sm duiqi"
					id="newPwd" placeholder="新密码">
			</div>
		</div>
		<div class="form-group">
			<label for="sOrd" class="col-xs-3 control-label">确认新密码：</label>
			<div class="col-xs-8">
				<input type="password" class="form-control input-sm duiqi"
					id="confirmNewPwd" placeholder="确认新密码">
			</div>
		</div>
		<div class="form-group">
			<label for="sOrd" class="col-xs-3 control-label"></label>
			<button type="button" onclick="updateUserPwd()">保 存</button>
		</div>
	</form>
</div>
<script>
	/**
	 * 修改用户密码
	 */
	function updateUserPwd() {
		var newPwd = $("#newPwd").val();
		var confirmNewPwd = $("#confirmNewPwd").val();
		if (newPwd != confirmNewPwd && newPwd != "") {
			alert("两次密码不一致");
			return;
		}

		// 修改密码
		$.ajax({
			url : "/user/updatePwd",
			data : {
				oldPwd : $("#oldPwd").val(),
				newPwd : $("#newPwd").val()
			},
			dataType : "json",
			success : function(result) {
				if (result.code == 200) {
					var newPwd = $("#newPwd").val();
					alert("修改密码成功，新密码为：" + newPwd);
					window.location.reload();
				} else {
					alert(result.data);
				}

			}
		});
	}
</script>