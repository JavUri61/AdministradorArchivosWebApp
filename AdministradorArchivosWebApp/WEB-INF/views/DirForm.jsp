<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/includes/Bootstrap.jsp" />
<c:set var="locale" value="${not empty param.locale ? param.locale : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${locale}" scope="session" />
<fmt:setBundle basename="me.jmll.i18n.app" var="appBundle" />
<html>
<head><title><fmt:message key="titulo.formulario" bundle="${appBundle}" /></title></head>
<body class="container">
<h1><fmt:message key="titulo.formulario" bundle="${appBundle}" /></h1>
<form method="get" action="ListaArchivos">
<div class="form-group">
<label for="path"><fmt:message key="campo.path" bundle="${appBundle}" /></label>
<input class="form-control" type="text" name="path" required />
</div>
<button type="submit" class="btn btn-primary">
<span class="glyphicon glyphicon-search"></span> <fmt:message key="boton.listar" bundle="${appBundle}" />
</button>
</form>
<c:if test="${not empty errores}">
<c:forEach var="error" items="${errores}">
<div class="alert alert-danger">${error}</div>
</c:forEach>
</c:if>
<jsp:include page="/WEB-INF/includes/BootstrapJS.jsp" />
</body></html>