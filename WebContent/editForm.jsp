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
		<br> <br> <br>

		<form action="updateTrack.do" method="POST">

			<table class="table table-striped">

				<thead class="h4">
					<tr>
						<td>Artist Name</td>
						<td>Track Name</td>
						<td>Genre</td>

					</tr>
				</thead>
				<tbody class="table-hover">
					<tr>
						<td><input type="text" name="artistName"
							value="${track.artistName}" /></td>
						<td><input type="text" name="trackName"
							value="${track.trackName}" /></td>
						<td><input type="text" name="genre" value="${track.genre}" /></td>

					</tr>
				</tbody>
			</table>
			<table class="table table-striped">

				<thead class="h4">
					<tr>
						<td>BPM</td>
						<td>Key</td>
						<td>Length</td>
					</tr>
				</thead>
				<tbody class="table-hover">
					<tr>

						<td><input type="text" name="bpm" value="${track.bpm}" /></td>
						<td><input type="text" name="key" value="${track.key}" /></td>
						<td><input type="text" name="length" value="${track.length}" /></td>
					</tr>
				</tbody>
			</table>
			<table class="table table-striped">

				<thead class="h4">
					<tr>
						<td></td>
						<td>Embed Link</td>
						<td>
					</tr>
				</thead>
				<tbody class="table-hover">
					<tr>
						<td><input type="hidden" name="id" value="${track.id}"
							placeholder="${track.id}" /></td>
						<td><input type="text" name="embed" value="${track.embed}" /></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		
			<button type="submit" class="btn btn-success">Update!</button>
		</form>

		<div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<form action="deleteTrack.do" method="POST">
				<button type="submit" class="btn btn-danger btn-sm">DELETE</button>

				<input type="hidden" name="name" value="${track.trackName}" />
			</form>

		</div>
		<br> <br> <br>



	</div>
</body>
</html>