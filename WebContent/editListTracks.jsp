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


	<div class="container">

		<br> <br> <br>
		<div class="text-center">
			<img width="900" src="./images/ibiza1.png" />
		</div>
		<br>

		<table class="table table-striped text-center">

			<thead class="h4">
				<tr>
					<td></td>
					<td>Artist Name</td>
					<td>Track Name</td>
					<td>Genre</td>
					<td>BPM</td>
					<td>Key</td>
					<td>Length</td>
				</tr>
			</thead>
			<tbody class="table-hover nogap">
				<c:forEach var="track" items="${tracks}">
					<c:if test="${! empty(track)}">
						<tr class="lovelyrow"
							onclick="location.href='edit.do?name=${track.artistName}'">
							<td>

								<form action="deleteTrack.do" method="POST">

									<button type="submit" class="btn btn-danger btn-sm">
										<span class="glyphicon glyphicon-trash" aria-hidden="true">
										</span>
									</button>
									<input type="hidden" name="name" value="${track.trackName}" />

								</form>
							</td>
							<td><a href="edit.do?name=${track.artistName}">${track.artistName}</a></td>
							<td><a href="edit.do?name=${track.artistName}">${track.trackName}</a></td>
							<td><a href="edit.do?name=${track.artistName}">${track.genre}</a></td>
							<td><a href="edit.do?name=${track.artistName}">${track.bpm}</a></td>
							<td><a href="edit.do?name=${track.artistName}">${track.key}</a></td>
							<td><a href="edit.do?name=${track.artistName}">${track.length}</a></td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>

	</div>

</body>
</html>