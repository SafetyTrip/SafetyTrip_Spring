
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<main>
<br>
<br>
<br>






<c:set var="qna" value="${dto}" />

<div class="my-12rem container">
<div id="list" class="col-md-1 col-md-offset-1 container">
<br>
<a href="qna"><h4>List</h4></a>
</div>	
</div>



<!-- --------------------------------------------------------------------------- -->
<!-- Begin of Container Editor -->	

<div id="tinymce-form" class="container">
<div class="well well-lg">
<form action="qnawrite" method="post" encType="multipart/form-data">
<h4 class=" py-3 font-weight-bold text-grey ">
<strong>QnA Write</strong>
</h4>
<br>
<!-- Begin of Container Upload -->

<div class="container">
<input type="hidden" name="qino1" value="${qna.qino1}">
FileName: <input type="text" name="theText1" value="${qna.theText1}" placeholder=" Write your FileName"><br>
File: <input type="file" name="theFile1" value="${qna.theFile1}"><br>    
</div>

<div class="container">							
<input type="hidden" name="qino2" value="${qna.qino2}">
FileName: <input type="text" name="theText2" value="${qna.theText2}" placeholder=" Write your FileName"><br>
File: <input type="file" name="theFile2" value="${qna.theFile2}"><br>
</div>

<div class="container">	
<input type="hidden" name="qino3" value="${qna.qino3}">
FileName: <input type="text" name="theText3" value="${qna.theText3}" placeholder=" Write your FileName"><br>
File: <input type="file" name="theFile3" value="${qna.theFile3}"><br>
</div>
<br>
<!-- End of Upload -->
<!-- Begin of Container Hotel -->        
<!-- End of Hotel -->


<input type="hidden" name="qno" value="${qna.qno}">
<input type="hidden" name="uno" value="${qna.uno}">
<input type="hidden" name="hno" value="${qna.hno}">
<input class="form-control" type="text" name="title" value="${qna.title}" placeholder=" Write your Title">
<fieldset class="form-group">
    <textarea 
            class="form-control" 
            id="editor" 
            rows="10" 
            placeholder="Content"
            v-tinymce-editor="content"
            name="question"
            value="${qna.question}">          
    </textarea>
</fieldset>
{{ content }}
<span class="pull-right buttons">
<input type="submit" class="btn btn-sm btn-info" 
       value="write"><br>
</span>
</form>
</div>
</div>

<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/vue/1.0.16/vue.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-beta1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/tinymce/4.3.4/tinymce.min.js'></script>
<script >


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
    	content: ' QnA Write '
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