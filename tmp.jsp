<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="wp" uri="http://infomind.com/wp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% pageContext.setAttribute("newLineChar", "\n"); %>
<!-- S:mainContent -->
<div id="content" class="sub">

  <section class="subheader">
    <div class="container">
      <h2>PRINTING</h2>

<wp:include id="POST000000000000042"/>
    </div>
  </section>

  <section class="sub-content board-view">
    <form:form commandName="editVO">
      <div class="container">
        <h3 class="sr-only">게시물 보기</h3>

        <div class="board-head">
          <h4>
            <small class="category">
              <!--
              카테고리 있으믄 넣고 없으면 말고
              <i class="color02">인쇄물</i>
              -->
              <c:forEach items="${board.categoryList}" var="cate" varStatus="status">
                <c:if test="${cate.id ==boardItem.category}">  <i class="color04">${cate.name}</i>   </c:if>
              </c:forEach>


            </small>
              ${boardItem.title}
            

              
            </h4>
          <dl>
            <dt>발주처</dt>
            <dd>
                ${boardItem.temp01}
            </dd>
            <dt>프로젝트기간</dt>
            <dd>
                ${boardItem.temp02}
            </dd>
          </dl>

        </div>
        <div class="text">
          <p><c:out value="${fn:replace(boardItem.content, newLineChar, '</p><p>')}" escapeXml="false"/></p>

        </div>

        <ul class="file">
          <c:if test="${!empty boardItem.fileList1}">
            <c:forEach items="${boardItem.fileList1}" var="file">
              <li>
                <p class="img"><img
                        src="/common/file/view.wp?attachId=${file.atchFileId}&fileSn=${file.fileSn}"
                        alt="${boardItem.title}"></p>
              </li>
            </c:forEach>
          </c:if>

          <c:if test="${!empty boardItem.fileList2}">
            <c:forEach items="${boardItem.fileList2}" var="file">
              <li>
                <p class="img"><img
                        src="/common/file/view.wp?attachId=${file.atchFileId}&fileSn=${file.fileSn}"
                        alt="${boardItem.title}"></p>
              </li>
            </c:forEach>
          </c:if>
        </ul>


      </div>
    </form:form>
  </section>

  <article class="board-btn">

    <div class="container">
      <div class="right-btn">
        <a class="sub" title="게시물 목록으로 이동" href="javascript:history.back()">목록</a>
		  <c:if test="${modifyAble}">
              <a href="/front/board/theme/edit.wp?boardId=${board.boardId}&id=${boardItem.id}&menuId=${_currentMenu.id}">수정</a>
            </c:if>
      </div>
    </div>

  </article>

</div>
<!-- E:mainContent -->