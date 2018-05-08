
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
                    <em>Adventure is Everywhere !
                        This is the Place For Those who wants to Solve inquiry, 
                        Find answer to Venture out 
                        Accelerate your stay ahead By being part of the New
                        and Lead your Travel out Here                  
                        Make the Chance and Grab it with SafetyTrip ! 
                        SafetyTrip is always be with you</em>
                        
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
                    <img class="img-responsive center-block" src="<c:url value='images/${dto.theFile1}'/>"  alt="Image" >
                </div>
                <div class="item">
                    <img class="img-responsive center-block" src="<c:url value='images/${dto.theFile2}'/>" alt="Image">
                </div>
                <div class="item">
                    <img class="img-responsive center-block" src="<c:url value='images/${dto.theFile3}'/>" alt="Image">
                </div>
              </div>
            </div>
    
            <div class="slide-content">
            <input type="hidden" name="qno" value="${dto.qno}">
                <a class="qnaretrieve"  data-num="${dto.qno}">
                <h4>QnATitle ${dto.qno}</h4><h4>${dto.title}</h4>
                </a>
                <p>
                   Question | ${dto.question}
                </p>
            </div>
            
            <div class="slide-footer">
                <span class="pull-right buttons">
                    <button class="btn btn-sm btn-info">
                    <a class="qnarewrite"  data-num="${dto.qno}">Rewrite</a>
                    </button>
        			<button class="btn btn-sm btn-outline-primary">
        			<a href="qnaretrieve?qno=${dto.qno}">Show</a>
        			</button>
                </span>
            </div>
            
        </div>
     </div>  
   
   </c:forEach>
  <!-- End of rows -->
</div>		



	


<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script><script src='https://cdnjs.cloudflare.com/ajax/libs/vue/1.0.16/vue.min.js'></script><script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-beta1/jquery.min.js'></script><script src='https://cdnjs.cloudflare.com/ajax/libs/tinymce/4.3.4/tinymce.min.js'></script>
<script>
$(document).ready(function(){
	$(".qnaretrieve").on("click",function(){
	    var qno= $(this).attr("data-num");
	    location.href="qnaretrieve?qno="+qno;
	});
	$(".qnarewrite").on("click",function(){
	    var qno= $(this).attr("data-num");
	    location.href="qnaretrieve?qno="+qno;
	});
	
})

</script>





<br>
<br>
<br>
<br>
<br>
<br>				
</main>	