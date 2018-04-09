
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<main>
<br>
<br>
<br>
<br>

<!--Intro-->
        <Section>     
            <div class=" container mt-5 pt-3 ">

                <!--Excerpt-->
                <a href="">
                    <h6 class=" text-center font-weight-bold text-blue">
                        <strong>QUESTION ANSWER!</strong>
                    </h6>
                </a>
                <h1 class=" py-3 text-center font-weight-bold text-dark-grey ">
                    <strong>Welcome on Question and Answer</strong>
                </h1>

                <p class=" mb-5 pb-3 text-center text-grey ">
                    <em>Sed ut perspiciatis unde omnis iste natus
                        error sit voluptatem accusantium doloremque laudantium, 
                        totam
                        rem aperiam, eaque ipsa quae ab illo inventore
                        veritatis et quasi architecto beatae sit aspernatur
                        aut odit aut fugit, sed quia consequuntur
                        magni dolores eos qui ratione voluptatem sequi.</em>
                </p>
			</div>
			 <hr class="mb-5">
		</Section>
		
<!-- --------------------------------------------------------------------------- -->
<!-- Begin of Container List -->	
<br>	

<div id="write" class="col-md-3 col-md-offset-3 container">
<a href="qnawriteUI"><h4>Write</h4></a>
</div>

<div class="container" >
<!-- Begin of rows -->

<c:forEach var="dto" items="${qna}" varStatus="status">

<form name="qna" method="post">
    <div class="row carousel-row" style="width:150; height:150;">
        <div class="col-xs-8 col-xs-offset-2 slide-row">
            
            <div id="qnaCarousel" class="carousel slide slide-carousel" data-ride="carousel">
              <!-- Indicators -->
              <ol class="carousel-indicators">
                <li data-target="#qnaCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#qnaCarousel" data-slide-to="1"></li>
                <li data-target="#qnaCarousel" data-slide-to="2"></li>
              </ol>
            
              <!-- Wrapper for slides -->
              <div class="carousel-inner">
                <div class="item active">
                    <img src="<c:url value='/resources/img/qna/150x150.jpg'/>" alt="Image">
                </div>
                <div class="item">
                    <img src="<c:url value='/resources/img/qna/150x150.jpg'/>" alt="Image">
                </div>
                <div class="item">
                    <img src="<c:url value='/resources/img/qna/150x150.jpg'/>" alt="Image">
                </div>
              </div>
            </div>
    
  
            <div class="slide-content">
                <a href="qnaretrieve?qno=${dto.qno}">
                <h4>QnATitle ${dto.qno}</h4>
                </a>
                <p>
                   QnAContent ${dto.question}
                </p>
            </div>
            <div class="slide-footer">
                <span class="pull-right buttons">
                    <button class="btn btn-sm btn-info">
                    <a href="qnaretrieve?qno=${dto.qno}">Rewrite</a>
                    </button>
        			<button class="btn btn-sm btn-outline-primary">
        			<a href="qnaretrieve?qno=${dto.qno}">Show</a>
        			</button>
                </span>
            </div>
            
        </div>
     </div>  
    </form>
   </c:forEach>
  <!-- End of rows -->
</div>		




<br>
<br>
<br>
<br>				
</main>		



<script>

</script>