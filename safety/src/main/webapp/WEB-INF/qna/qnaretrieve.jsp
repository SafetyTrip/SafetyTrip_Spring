
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<main>
<br>
<br>
<br>






<!-- Begin of Container Upload -->
        
<!-- End of Upload -->

<!-- Begin of Container Hotel -->        
<!-- End of Hotel -->
<c:set var="qnaretrieve" value="${qnaretrieve}" />

<div class="my-12rem container">
<div id="list" class="col-md-1 col-md-offset-1 container">
<br>
<a href="qna"><h5>List</h5></a>
</div>	
</div>


<!-- --------------------------------------------------------------------------- -->
<!-- Begin of Container Editor -->	

<div id="tinymce-form" class="container">
<div class="well well-lg">

<form name="qnaForm" method="post" action="qnaupdate">
<div id="div${qnaretrieve.qno}">
<h4 class=" py-3 font-weight-bold text-grey ">
<strong>QnA Write</strong>
</h4>
<input type="hidden" name="qno" value="${qnaretrieve.qno}">
<fieldset class="form-group">
    <textarea 
            class="form-control" 
            id="editor" 
            rows="10" 
            placeholder="Content"
            v-tinymce-editor="content"
            name="question">          
    </textarea>
</fieldset>
${qnaretrieve.question}

<span class="pull-right buttons">
<input type="submit" class="btn btn-sm btn-info revise" 
       data-num="${qnaretrieve.qno}" value="Revise"><br>
</span>
<span class="pull-right buttons">
<input type="button" class="btn btn-sm btn-default delete" 
       data-num="${qnaretrieve.qno}" value="Delete" ><br>
</span>
</div>
</form>

</div>
</div>

<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script><script src='https://cdnjs.cloudflare.com/ajax/libs/vue/1.0.16/vue.min.js'></script><script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-beta1/jquery.min.js'></script><script src='https://cdnjs.cloudflare.com/ajax/libs/tinymce/4.3.4/tinymce.min.js'></script>
<script >
$(document).ready(function(){

	$(".delete").on("click",function(){	
	   var qno = $(this).attr("data-num");
	   location.href="qnadelete?qno="+qno;
	});
})

	$(function() {

	// tinymce directive
	Vue.directive('tinymce-editor',{ 
  	twoWay: true,
    bind: function() {
    	var self = this;
      tinymce.init({
      	selector: '#editor',
        setup: function(editor) {
        
        	
        }
      });
    },
    update: function(newVal, oldVal) {
    	// set val and trigger event
    	$(this.el).val(newVal).trigger('keyup');
    }
  
  })

	new Vue({
  	el: '#tinymce-form',
    data: {
    	content:  '${qnaretrieve.question}'
    }
  })


})

</script>	

  <!-- End of Editor -->
	




<br>
<br>
<br>
<br>
<br>
<br>				
</main>		