
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>



<div class="container-fluid p-3">
	<div class="row">
		<div class="col-md-3 text-success">
			<h2>
				<i class="fas fa-book"></i>EBOOKS
			</h2>
		</div>
		<div class="col-md-4">
			<form class="form-inline my-2 my-lg-0" action="search.jsp" method="post">
				<input class="form-control mr-sm-2" type="search" name="ch"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-light my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>

		<c:if test="${not empty userobj}">

			<div class="col-md-3">
			
			
			<a href="checkout.jsp"><i class="fas fa-cart-plus fa-2x"></i></a>
			
			
				<a href="login.jsp" class="btn btn-success"><i
					class="fa-solid fa-user-plus"></i> ${userobj.name}</a>
					
					
					 <a
					href="Logout" class="btn btn-primary text-white"><i
					class="fa-solid fa-right-to-bracket"></i>Logout</a>
			</div>




		</c:if>



		<c:if test="${empty userobj }">
			<div class="col-md-3">
			
				<a href="cart.jsp" ><i class="fa-solid fa-chart-line fa-2x "></i></a>
				
				<a href="login.jsp" class="btn btn-success"><i
					class="fa-solid fa-right-to-bracket"></i>Login</a> <a
					href="register.jsp" class="btn btn-primary"><i
					class="fa-solid fa-user-plus"></i>Register</a>
			</div>



		</c:if>


	</div>

</div>

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
			<li class="nav-item active"><a class="nav-link"
				href="index2.jsp">Home <span class="sr-only">(current)</span>
			</a></li>


			<li class="nav-item active"><a class="nav-link "
				href="all_recent_book.jsp"><i class="fas fa-book-open"></i>RECENT
					BOOKS</a>
			<li class="nav-item active"><a class="nav-link"
				href="all_new_book.jsp"><i class="fas fa-book-open"></i>NEW
					BOOKS</a></li>

			<li class="nav-item active"><a class="nav-link "
				href="all_old_book.jsp"><i class="fas fa-book-open"></i>OLD
					BOOKS</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<a href="setting.jsp"class="btn btn-light my-2 my-sm-0" type="submit">
				<i class="fas fa-cogs"></i>Settings
			</a>
			<button class="btn btn-light my-2 my-sm-0" type="submit">
				<i class="fa-solid fa-id-card"></i>CONTACT US
			</button>
		</form>
	</div>
</nav>