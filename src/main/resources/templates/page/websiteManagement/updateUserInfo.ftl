<#include "/common/script.ftl">

<div role="tabpanel" class="tab-pane active" id="sour">
	<div class="panel-body" style="padding-bottom: 0px;">
		<div class="panel panel-default">
			<div class="panel-heading">修改用户信息</div>
			<div class="panel-body">
				<form id="userInfoForm" class="form-horizontal">
					<div class="form-group">
						<label for="sLink" class="col-xs-3 control-label">用户名：</label>
						<div class="col-xs-8 ">
							<input type="text" class="form-control input-sm duiqi"
								id="userNick" name="userNick" placeholder="用户名">
						</div>
					</div>
					<div class="form-group">
						<label for="sLink" class="col-xs-3 control-label">简介：</label>
						<div class="col-xs-8 ">
							<input type="text" class="form-control input-sm duiqi"
								id="userIntroduce" name="userIntroduce" placeholder="简介">
						</div>
					</div>
					<div class="form-group">
						<label for="sOrd" class="col-xs-3 control-label">生日：</label>
						<div class="col-xs-8">
							<input type="date" class="form-control input-sm duiqi"
								id="userBirthday" name="userBirthday" placeholder="生日">
						</div>
					</div>
					<div class="form-group">
						<label for="sOrd" class="col-xs-3 control-label">性别：</label>
						<div class="col-xs-8">
							男 <input type="radio" id="male" name="userSex" value="1">
							女 <input type="radio" id=female name="userSex" value="2">
						</div>
					</div>
					<div class="form-group">
						<label for="sOrd" class="col-xs-3 control-label">手机号：</label>
						<div class="col-xs-8">
							<input type="text" class="form-control input-sm duiqi"
								id="userMobile" name="userMobile" placeholder="手机号">
						</div>
					</div>
					<div class="form-group">
						<label for="sOrd" class="col-xs-3 control-label">邮箱：</label>
						<div class="col-xs-8">
							<input type="text" class="form-control input-sm duiqi"
								id="userEmail" name="userEmail" placeholder="邮箱">
						</div>
					</div>
					<div class="form-group">
						<label for="sOrd" class="col-xs-3 control-label">职业：</label>
						<div class="col-xs-8">
							<input type="text" class="form-control input-sm duiqi"
								id="userProfession" name="userProfession" placeholder="职业">
						</div>
					</div>
					<div class="form-group">
						<label for="sOrd" class="col-xs-3 control-label">工作技能：</label>
						<div class="col-xs-8">
							<textarea id="userSkill" name="userSkill" rows="5"
								style="width: 100%" placeholder="工作技能"></textarea>
						</div>
					</div>
					<div class="form-group ">
						<label for="sOrd" class="col-xs-3 control-label">个人微信：</label>
						<div class="col-xs-8">
							<input type="hidden" class="form-control input-sm duiqi"
								id="userWeChat" name="userWeChat" placeholder="显示图片"> <img
								style="width: 280px; height: 280px" id="userWeChatImg"
								name="userWeChatImg" alt="微信二维码" src="">

							<div id="TCrop"></div>
							<script type="text/javascript">
								createUploadDom(
										"TCrop",
										"/attachment/uploadImag",
										280,
										280,
										function(result) {
											if (result.code == 200) {
												$("#userWeChatImg").attr(
														"src",
														"/attachment/getFileById?uuid="
																+ result.data);
												$("#userWeChat").val(
														result.data);
											}
										})
							</script>
						</div>
					</div>
					<div class="form-group">
						<label for="sOrd" class="col-xs-3 control-label"></label>
						<button type="button" class="btn btn-default  btn-sm"
							onclick="updateUserInfo()">保 存</button>
					</div>
				</form>
			</div>
		</div>

	</div>
</div>
<script>
	/**
	 * 初始化操作
	 */
	$(function() {
		// 获取用户信息
		$.ajax({
			url : "/user/getUserInfo",
			dataType : "json",
			success : function(result) {
				if (result.code == 200) {
					// 简介
					$("#userIntroduce").val(result.data.userIntroduce);
					// 生日
					$("#userBirthday").val(result.data.userBirthday);
					// 手机号
					$("#userMobile").val(result.data.userMobile);
					// 邮箱
					$("#userEmail").val(result.data.userEmail);

					// 性别
					if (result.data.userSex == 1) {
						$("#male").click();
					} else if (result.data.userSex == 2) {
						$("#female").click();
					}

					// 用户名
					$("#userNick").val(result.data.userNick);
					// 用户职业
					$("#userProfession").val(result.data.userProfession);
					// 工作技能
					$("#userSkill").val(result.data.userSkill);
					// 微信id
					$("#userWeChat").val(result.data.userWeChat);
					$("#userWeChatImg").attr(
							"src",
							"/attachment/getFileById?uuid="
									+ result.data.userWeChat);

					// 个人头像
					$("#userHeadPortrait").val(result.data.userHeadPortrait);
					$("#userHeadPortraitImg").attr(
							"src",
							"/attachment/getFileById?uuid="
									+ result.data.userHeadPortrait);

				} else {
					alert(result.data);
				}
			}
		});

	});

	/**
	 * 修改用户信息
	 */
	function updateUserInfo() {
		$.ajax({
			url : "/user/updateInfo",
			data : $("#userInfoForm").serialize(),
			dataType : "json",
			success : function(result) {
				if (result.code == 200) {
					alert("修改成功");
					// window.location.reload();
				} else {
					alert(result.data);
				}

			}
		});
	}
</script>