<%@ include file="../common/IncludeTop.jsp" %>

<%--<jsp:useBean id="catalog"
	class="org.mybatis.jpetstore.web.actions.CatalogActionBean" />

<div id="BackLink"><stripes:link
	beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
	event="viewCategory">
	<stripes:param name="categoryId"
		value="${actionBean.product.categoryId}" />
	Return to ${actionBean.product.categoryId}
</stripes:link></div>--%>

<div id="Catalog">

    <h2>${product.name}</h2>

    <table>
        <tr>
            <th>Item ID</th>
            <th>Product ID</th>
            <th>Description</th>
            <th>List Price</th>
            <th>&nbsp;</th>
        </tr>
        <c:forEach var="item" items="${itemList}">
            <tr>
                <td>
                    <a href="<c:url value="viewItem?itemId=${item.itemId}"/>">
                            ${item.itemId}
                    </a>
                </td>
                <td>${product.productId}</td>
                <td>${item.attribute1} ${item.attribute2} ${item.attribute3}
                        ${item.attribute4} ${item.attribute5} ${actionBean.product.name}</td>
                <td><fmt:formatNumber value="${item.listPrice}"
                                      pattern="$#,##0.00"/></td>
                <td>
                    <a href="<c:url value="/shop/cart/addItemToCart?itemId=${item.itemId}"/>" class="Button">
                            Add to Cart
                    </a>
                        <%--
                    <stripes:link class="Button"
                                  beanclass="org.mybatis.jpetstore.web.actions.CartActionBean"
                                  event="addItemToCart">
                    <stripes:param name="workingItemId" value="${item.itemId}"/>
                    Add to Cart
                </stripes:link>--%>
                </td>
            </tr>
        </c:forEach>
        <tr>
            <td>
            </td>
        </tr>
    </table>

</div>

<%@ include file="../common/IncludeBottom.jsp" %>





