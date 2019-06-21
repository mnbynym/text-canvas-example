<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script>
			$(() => {
				$('#submit').on('click', () => {
					
					const messageText = $('#input-message').val();
					const canvasData = canvas.toDataURL();
					
					const postData = 'messageText="' + messageText + '"&canvasData="' + canvasData + '"';
					console.log(postData);
					$.post('servlet', postData);
				});
			});
		</script>
	</head>
	<body>
		<canvas id="canvas"></canvas>
		<input id="input-message">
		<button id="submit">送信</button>
	</body>
</html>