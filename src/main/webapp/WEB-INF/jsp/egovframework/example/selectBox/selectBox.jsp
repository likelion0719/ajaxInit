<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script>
	$(document).ready(function() {
		$("#parentSelectBox").change(function() {
			var thisParam = this.value;
			
			var form = {"param" : thisParam};
			
			/* type:"POST"랑 contentType은 짝궁이다. */
			$.ajax({
				url :"childSelectBox.do",
				data:JSON.stringify(form),
				type:"POST",
				contentType : "application/json",
				success : function(data) {
					var jObj = JSON.parse(data);
					
					//console.log(data);
					//console.log(jObj);
					
					if (jObj.result === "SUCCESS") {
						$("#childSelectBox").children().remove();
						select.displayChildSelectBox(jObj.list);
					}
				}
			
			})	
		})
	});
	
	var select = {
			displayChildSelectBox : function(list) {
				
				if (list.length > 0) {
					console.log(list);
					
					/* each
					  list는 반복문 돌릴 대상
					  i는 인덱스 ,  item은 인덱스의 value값
					*/
					$.each(list, function(i,item) {
						//console.log(list);
						//console.log(i);
						//console.log(item);
						
						var optionStr = "<option value=" +item.prdCd + ">"
									+ item.prdNm + "</option>";
									
						$("#childSelectBox").append(optionStr);
					})
				} else {
					$("#childSelectBox").append("<option value=''>없음</option>");
				}
			}
	}
	
</script>
<div class="content">
	<div class="container-fluid">
      	<div class="row">
          	<div class="col-md-12">
              	<div class="card ">
	                <div class="header">
	                    <h4 class="title">셀렉트박스</h4>
	                    <p class="category">ajax 잘 모르고 쓰면 어렵지~</p>
	                </div>
	                <div class="content">
	                	
	                	<select id="parentSelectBox" name="parentSelectBox">
	                	<c:forEach items="${parentList}" var="parentList">
	                		<option value="<c:out value="${parentList.brandCd}"/>">${parentList.brandNm}</option>
	                	</c:forEach>
	                	</select>
	                	<select id="childSelectBox" name="childSelectBox">
	                		<option value="">없음</option>
	                	</select>
	                </div>
                </div>
            </div>
        </div>
    </div>
</div>