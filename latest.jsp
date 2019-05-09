<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:forEach items="${latestBoardItems}" var="item">
<li>
    <a href="${moreLink}?boardId=${latestBoard.boardId}&boardItemId=${item.id}&menuId=${menuId}">
       
		<c:choose>
		<c:when  test="${!empty item.fileList1}">
            <p class="img"><img src="/common/file/view.wp?attachId=${item.fileList1[0].atchFileId}&fileSn=${item.fileList1[0].fileSn}" alt="${item.fileList1[0].orignlFileNm}"></p>
        </c:when >
		<c:otherwise>
			<p class="img"><img src="/wp/assets/source/images/noimg.png"></p>
		</c:otherwise>
		</c:choose>

        <h3>${item.title}</h3>
        <i><fmt:formatDate value="${item.regDate}" pattern="yyyy-MM-dd"/></i>
    </a>
</li>
</c:forEach>

