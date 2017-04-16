<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
	<div class="col-sm-12">
		<c:if test="${success != null}">
			<div class="alert alert-success">
				${success}
			</div>
		</c:if>
		<c:if test="${danger != null}">
			<div class="alert alert-danger">
				${danger}
			</div>
		</c:if>
		<c:if test="${info != null}">
			<div class="alert alert-info">
				${info}
			</div>
		</c:if>
	</div>
</div>