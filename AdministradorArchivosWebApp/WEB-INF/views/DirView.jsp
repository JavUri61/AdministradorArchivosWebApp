<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/WEB-INF/includes/Bootstrap.jsp" />
<c:set var="locale" value="${not empty param.locale ? param.locale : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${locale}" scope="session" />
<fmt:setBundle basename="me.jmll.i18n.app" var="appBundle" />
<html>
<head><title><fmt:message key="titulo.resultados" bundle="${appBundle}" /></title></head>
<body class="container">
<h1><fmt:message key="titulo.resultados" bundle="${appBundle}" /></h1>
<c:if test="${fn:length(paths) lt 1}">
<div class="alert alert-warning"><fmt:message key="mensaje.sin.resultados" bundle="${appBundle}" /></div>
</c:if>
<table class="table table-bordered">
<thead><tr><th><fmt:message key="tabla.nombre" bundle="${appBundle}" /></th><th><fmt:message key="tabla.ruta" bundle="${appBundle}" /></th><th><fmt:message key="tabla.tamano" bundle="${appBundle}" /></th></tr></thead>
<tbody><c:forEach var="file" items="${paths}"><tr>
<td>${file.fileName}</td><td>${file.toAbsolutePath()}</td>
<td><% java.nio.file.Path f = (java.nio.file.Path) pageContext.getAttribute("file"); out.print(java.nio.file.Files.size(f)); %></td>
</tr></c:forEach></tbody>
</table>
<jsp:include page="/WEB-INF/includes/BootstrapJS.jsp" />
</body></html>