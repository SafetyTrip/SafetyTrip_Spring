
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<main>
<br>
<br>
<br>









<c:set var="qnaretrieve" value="${qnaretrieve}" />

<div class="my-12rem container">
<div id="list" class="col-md-1 col-md-offset-1 container">
<br>
<a href="qna"><h4>List</h4></a>
</div>	
</div>


<!-- --------------------------------------------------------------------------- -->
<!-- Begin of Container Editor -->	

<div id="tinymce-form" class="container">
<div class="jumbotron" style="background-color:light-grey; padding:24px 24px 42px;">
<form action="qnaupdate" method="post" encType="multipart/form-data">
<div id="div${qnaretrieve.qno}">
<h4 class=" py-3 font-weight-bold text-grey ">
<strong>QnA Write</strong>
</h4>
<br>
<!-- Begin of Container Upload -->

<div class="container">
<input type="hidden" name="qino1" value="${qnaretrieve.qino1}">
FileName: <input type="text" name="theText1" value="${qnaretrieve.theText1}" placeholder=" Write your FileName"><br>
File: <input type="file" name="theFile1" value="${qnaretrieve.theFile1}"><br>    
</div>

<div class="container">							
<input type="hidden" name="qino2" value="${qnaretrieve.qino2}">
FileName: <input type="text" name="theText2" value="${qnaretrieve.theText2}" placeholder=" Write your FileName"><br>
File: <input type="file" name="theFile2" value="${qnaretrieve.theFile2}"><br>
</div>

<div class="container">	
<input type="hidden" name="qino3" value="${qnaretrieve.qino3}">
FileName: <input type="text" name="theText3" value="${qnaretrieve.theText3}" placeholder=" Write your FileName"><br>
File: <input type="file" name="theFile3" value="${qnaretrieve.theFile3}"><br>
</div>
<br>
<!-- End of Upload -->
<!-- Begin of Container Hotel -->        
<!-- End of Hotel -->

<input type="hidden" name="qno" value="${qnaretrieve.qno}">
<input type="hidden" name="uno" value="${qnaretrieve.uno}">
<input type="hidden" name="hno" value="${qnaretrieve.hno}">
<input class="form-control" type="text" name="title" value="${qnaretrieve.title}" placeholder=" Write your Title">
<fieldset class="form-group">
    <textarea 
            class="form-control" 
            id="editor" 
            rows="10" 
            placeholder="Content"
            v-tinymce-editor="content"
            name="question"
            value="${qnaretrieve.question}">          
    </textarea>
</fieldset>
${qnaretrieve.question}

<span class="pull-right buttons">
<input type="submit" class="btn btn-sm btn-info revise" 
       data-num="${qnaretrieve.qno}" value="Revise"><br>
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="pull-right buttons">
<input type="button" class="btn btn-sm btn-default delete" 
       data-num="${qnaretrieve.qno}" value="Delete" ><br>
</span>

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