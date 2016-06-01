<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="stylesheet.css">
<link href="images/favicon.ico" rel="icon" type="image/x-icon" />

</head>
<body>
	<header>
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<ul class="nav nav-tabs navbar-left">
					<li role="presentation" class="active"><a href="index.html">beathome</a></li>
				</ul>
				<ul class="nav nav-tabs navbar-right">
					<li role="presentation"><a href="listTracks.do?name=List">List
							Tracks</a></li>
					<li role="presentation"><a href="addTrack.jsp">Add Track</a></li>
						<li role="presentation"><a href="editList.do">Edit Track</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<br>
	<br>
	<br>
	<div class="container text-center">
		<br>
		<br>
		<br>
		<table class="table table-striped">

			<thead class="h4">
				<tr>
					<td>Artist Name</td>
					<td>Track Name</td>
					<td>Genre</td>
					<td>BPM</td>
					<td>Key</td>
					<td>Length</td>
				</tr>
			</thead>
			<tbody class="table-hover">
				<%-- 	<c:forEach var="track" items="${tracks}">
					<c:if test="${! empty(track)}"> --%>
				<tr>
					<td>${track.artistName}</td>
					<td>${track.trackName}</td>
					<td>${track.genre}</td>
					<td>${track.bpm}</td>
					<td>${track.key}</td>
					<td>${track.length}</td>
				</tr>
				<%-- 	</c:if>
				</c:forEach> --%>
			</tbody>
		</table>
		<br><br><br>
		<div class="text-center">${track.embed}</div>


	</div>
</body>
</html>