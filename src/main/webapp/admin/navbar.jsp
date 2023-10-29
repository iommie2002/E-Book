<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>



<div class="container-fluid p-3">
	<div class="row">
		<div class="col-md-3 text-success">
			<h2>
				<i class="fas fa-book"></i>EBOOKS
			</h2>
		</div>
		
		<div class="col-md-3">
			<c:if test="${not empty userobj }">
				<a  class="btn btn-success text-white"> <i
					class="fa-solid fa-user-plus"></i>${userobj.name }</a>
				<a data-toggle="modal" data-target="#exampleModalCenter"
					class="btn btn-primary"><i class="fa-solid fa-right-to-bracket"></i>Log
					Out</a>

			</c:if>

			<c:if test="${empty userobj }">

				<a href="../login.jsp" class="btn btn-success"> <i
					class="fa-solid fa-right-to-bracket"></i>Login
				</a>
				<a href="../register.jsp" class="btn btn-primary"><i
					class="fa-solid fa-user-plus"></i>Register</a>

			</c:if>

		</div>

	</div>

</div>
<!-- logout modal -->
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle"> </h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
			<h4>Confirm Logout?</h4></div>
			<div class="text-center">
			<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<a href="../Logout " type="button" class="btn btn-primary text-white ">Logout</a></div>
			<div class="modal-footer">
				
			</div>
		</div>
	</div>
</div>


<!--end  logout modal -->
<nav class="navbar navbar-expand-lg navbar-light"
	style="background-color: #fde3e9;">
	<a class="navbar-brand" href="#"><i class="fa-solid fa-house-user"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>


		</ul>
	</div>
</nav>