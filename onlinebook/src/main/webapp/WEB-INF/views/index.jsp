<%@include file="header.jsp" %>

<body>
     <div class="container">
	 <header id="myCarousel" class="carousel slide">
	 
<!-- Indicators -->
     <ol class="carousel-indicators">
         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
         <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
         <li data-target="#myCarousel" data-slide-to="3"></li>
     </ol>

<!-- Wrapper for slides -->
     <div class="carousel-inner">
        <div class="item active">
        <img src="<c:url value="/resources/images/carousel0.jpg" />" alt="First slide">
        <div class="carousel-caption">
        <h2>Caption 1</h2>
        </div>
        </div>

        <div class="item">
        <img src="<c:url value="/resources/images/carousel1.jpg" />" alt="Second slide">
        <div class="carousel-caption">
        <h2>Caption 2</h2>
        </div>
        </div>

        <div class="item">
        <img src="<c:url value="/resources/images/carousel2.jpg" />" alt="Third slide">
        <div class="carousel-caption">
        <h2>Caption 3</h2>
        </div>
        </div>

        <div class="item">
        <img src="<c:url value="/resources/images/carousel.jpg" />" alt="Fourth slide">
        <div class="carousel-caption">
        <h2>Caption 4</h2>
        </div>
        </div>
    </div>
   
<!-- Controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
		    <span class="icon-prev"></span>
		</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">
		    <span class="icon-next"></span>
		</a>
		</header>
  </div>
  
<!-- Projects Row -->


  <div class="container">
  <div class="row">
      <div class="col-md-6 img-portfolio">
         <h1 class="text-center">Featured Product</h1>
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                        
        </div>

      <div class="col-md-6 img-portfolio">
          <iframe width="550" height="250" src="https://www.youtube.com/embed/dUeMTbCh1d0"></iframe>
      </div>
  </div>
  </div>
<!-- /.row -->

<!-- Projects Row -->

  <div class="container">
  <div class="row">
  
      <div class="col-md-4 img-portfolio">
	      <a href="<c:url value='/product/art' />">
	      <img class="img-hover" src="<c:url value='/resources/images/Art/art2.jpg'/>" alt="Art Image" width="300" height="250">
	      </a>
	      <h3>
	      <a href="<c:url value='/product/art'/>">Art and Crafts</a>
	      </h3>
	      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
      </div>
      
      <div class="col-md-4 img-portfolio">
	      <a href="<c:url value='/product/comic' />">
	      <img class="img-hover" src="<c:url value='/resources/images/comic/comic2.jpg'/>" alt="Comic Image" width="300" height="250">
	      </a>
	      <h3>
	      <a href="<c:url value='/product/comic'/>">Comic Collections</a>
	      </h3>
	      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
      </div>
      
      <div class="col-md-4 img-portfolio">
	      <a href="<c:url value='/product/game' />">
	      <img class="img-hover" src="<c:url value='/resources/images/game/game2.jpg'/>" alt="Game Image" width="300" height="250">
	      </a>
	      <h3>
	      <a href="<c:url value='/product/game'/>">Gaming Books</a>
	      </h3>
	      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
      </div>
</div>
</div>
<!-- /.row -->

</body>
<%@include file="footer.jsp" %>