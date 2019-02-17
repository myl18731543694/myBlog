<#include "/common/script.ftl">

<div id="TCrop"></div>
<script type="text/javascript">
	$(function() {
		Crop.init({
			id : 'TCrop',
			/* 上传路径 */
			url : '/attachment/uploadImag',
			/* 允许上传的图片的后缀 */
			allowsuf : [ 'jpg', 'jpeg', 'png', 'gif' ],
			/* JCrop参数设置 */
			cropParam : {
				minSize : [ 0, 0 ], // 选框最小尺寸
				maxSize : [ 0, 0 ], // 选框最大尺寸
				aspectRatio: 300/196,
				allowSelect : true, // 允许新选框
				allowMove : true, // 允许选框移动
				allowResize : true, // 允许选框缩放
				dragEdges : true, // 允许拖动边框
				onChange : function(c) {
				}, // 选框改变时的事件，参数c={x, y, x1, y1, w, h}
				onSelect : function(c) {
				} // 选框选定时的事件，参数c={x, y, x1, y1, w, h}
			},
			/* 是否进行裁剪，不裁剪则按原图上传，默认进行裁剪 */
			isCrop : true,
			/* 图片上传完成之后的回调，无论是否成功上传 */
			onComplete : function(data) {
				if (data.code == 200){
					$("#blogImageImg").attr("src", "/attachment/getFileById?uuid=" + data.data);
					$("#blogImage").val(data.data);
				}
			}
		});
	});
</script>