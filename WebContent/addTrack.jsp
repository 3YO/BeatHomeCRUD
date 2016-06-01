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

	<form action="newTrack.do" method="POST">
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
					<td><input type="text" name="artistName" /></td>
					<td><input type="text" name="trackName" /></td>
					<td><input type="text" name="genre" /></td>

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

					<td><input type="text" name="bpm" /></td>
					<td><input type="text" name="key" /></td>
					<td><input type="text" name="length" /></td>
				</tr>
			</tbody>
		</table>
		<table class="table table-striped">

			<thead class="h4">
				<tr>

					<td>Embed Link</td>
				</tr>
			</thead>
			<tbody class="table-hover">
				<tr>
					<td><input type="text" placeholder="${track.embed}" /></td>
				</tr>
			</tbody>
		</table>
		<button type="submit" class="btn btn-primary">ADD TRACK</button>
		
 	</form>
	</div>
</body>
</html>