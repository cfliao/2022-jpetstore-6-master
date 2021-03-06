<%@ include file="../common/IncludeTop.jsp" %>

<div id="Welcome">
    <div id="WelcomeContent"><c:if
            test="${sessionScope.accountBean != null }">
        <c:if test="${sessionScope.accountBean.authenticated}">
            Welcome ${sessionScope.accountBean.account.firstName}!
        </c:if>
    </c:if></div>
</div>

<div id="Main">
    <div id="Sidebar">
        <div id="SidebarContent">
            <a href="<c:url value="/shop/catalog/viewCategory?categoryId=FISH"/>">
                <img src="../../images/fish_icon.gif" />
            </a>
            <br/>Saltwater, Freshwater <br/>

            <a href="<c:url value="/shop/catalog/viewCategory?categoryId=DOGS"/>">
                <img src="../../images/dogs_icon.gif" />
            </a>
            <br/>Various Breeds <br/>

            <a href="<c:url value="/shop/catalog/viewCategory?categoryId=CATS"/>">
                <img src="../../images/cats_icon.gif" />
            </a>
            <br/>Various Breeds, Exotic Varieties <br/>

            <a href="<c:url value="/shop/catalog/viewCategory?categoryId=REPTILES"/>">
                <img src="../../images/reptiles_icon.gif" />
            </a>
            <br/>Lizards, Turtles, Snakes <br/>

            <a href="<c:url value="/shop/catalog/viewCategory?categoryId=BIRDS"/>">
                <img border="0" src="../../images/birds_icon.gif" />
            </a><br/>Exotic Varieties
        </div>
    </div>

    <div id="MainImage">
        <div id="MainImageContent">
            <map name="estoremap">
                <area alt="Birds" coords="72,2,280,250"
                      href="<c:url value="/shop/catalog/viewCategory?categoryId=BIRDS"/>" shape="RECT"/>
                <area alt="Fish" coords="2,180,72,250"
                      href="<c:url value="/shop/catalog/viewCategory?categoryId=FISH"/>" shape="RECT"/>
                <area alt="Dogs" coords="60,250,130,320"
                      href="<c:url value="/shop/catalog/viewCategory?categoryId=DOGS"/>" shape="RECT"/>
                <area alt="Reptiles" coords="140,270,210,340"
                      href="<c:url value="/shop/catalog/viewCategory?categoryId=REPTILES"/>" shape="RECT"/>
                <area alt="Cats" coords="225,240,295,310"
                      href="<c:url value="/shop/catalog/viewCategory?categoryId=CATS"/>" shape="RECT"/>
                <area alt="Birds" coords="280,180,350,250"
                      href="<c:url value="/shop/catalog/viewCategory?categoryId=BIRDS"/>" shape="RECT"/>
            </map>
            <img height="355" src="../../images/splash.gif" align="middle"
                 usemap="#estoremap" width="350"/></div>
    </div>

    <div id="Separator">&nbsp;</div>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>

