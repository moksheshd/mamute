<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@attribute name="question" type="br.com.caelum.brutal.model.Question" required="true" %>
<section class="post-area question-area">
	<div class="post-meta">
		<tags:voteFor item="${question}" type="question" vote="${currentVote}"/>
	</div>
	<div class="post-container">
		<div class="post-text" id="question-description-${question.id }">${question.markedDescription}</div>
		<tags:tagsFor question="${question}"/>
		<div class="post-interactions">
			<ul class="post-action-nav nav">
				<li class="nav-item">
					<a class="post-action" href="<c:url value="/question/edit/${question.id}"/>"><fmt:message key="edit" /></a>
				</li>
				<li class="nav-item">
					<a class="post-action show-popup" href="#">
						<fmt:message key="share"/>
					</a>
					<div class="popup share small">
						<form class="validated-form">
							<labelfor="share-url"><fmt:message key="share.text"/></label>
							<input type="text" class="text-input required" id="share-url" value=""/>
						</form>
						<a class="close-popup"><fmt:message key="popup.close"/></a>
					</div>
				</li>
			</ul>
			<tags:touchesFor touchable="${question}" />
		</div>
		<tags:add-a-comment item="${question}" />
	</div>
</section>
