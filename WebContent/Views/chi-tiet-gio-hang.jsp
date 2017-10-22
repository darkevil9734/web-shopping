<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container_fullwidth">
        <div class="container">
          <div class="row">
            <jsp:include page="/Views/menu-ben-trai.jsp"></jsp:include>
<div class="col-md-9">
              <div class="checkout-page">
               
                  <div class="container1"> 
 <table  id="cart" class="table table-hover table-condensed"> 
  <thead> 
   <tr> 
    <th style="width:10%"><strong>Tên sản phẩm</strong></th> 
    <th style="width:2%"><strong>Giá</strong></th> 
    <th style="width:3%"><strong>Số lượng</strong></th> 
    <th style="width:5%" class="text-center"><strong>Thành tiền</strong></th> 
    <th style="width:1%"> </th> 
   </tr> 
  </thead> 
  <tbody>
  <c:forEach items="${ds_spm}" var="dssp">
	  <tr> 
	   <td data-th="Product"> 
	    <div class="row"> 
	     <div class="col-sm-2 hidden-xs"><img src="./Views/productIMG/${dssp.hinh_dai_dien}" class="img-responsive" width="80">
	     </div> 
	     <div class="col-sm-10"> 
	      <h4 class="nomargin">${dssp.tenSanPham}</h4> 
	     
	     </div> 
	    </div> 
	   </td> 
	   <td data-th="Price"><f:formatNumber type="number" value="${dssp.giaSanPham}" /> ₫</td> 
	   <td data-th="Quantity"><input class="form-control text-center" value="${dssp.soLuongMua}" type="number">
	   </td> 
	   <td data-th="Subtotal" class="text-center"><f:formatNumber type="number" value="${dssp.getThanhTien()}" /> ₫</td> 
	   <td class="actions" data-th="">
	    <button class="btn btn-info btn-sm"><i class="fa fa-edit"></i>
	    </button> 
	    <button formaction='xoaDonHang?id=${dssp.ma_san_pham}' formmethod="post" type="submit" class="btn btn-danger btn-sm">
	    	<i class="fa fa-trash-o" ></i>
	    </button>
	   </td> 
	  </tr> 
 </c:forEach>
  </tbody><tfoot> 
  
    <td><a href="trang-chu.jsp" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a>
    </td> 
    <td colspan="2" class="hidden-xs"> </td> 
    <td class="hidden-xs text-center">
    	<strong>Tổng:  <f:formatNumber type="number" value="${sessionScope.gioHang.tongTien()}"/> </strong>
    </td> 
    <td>
    	<c:if test="${sessionScope.member != null }">
    		<a href="xac-nhan-don-hang.jsp" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></a>
    	</c:if>
    	<c:if test="${sessionScope.member == null }">
    		<a href="dang-nhap.jsp" onclick="alert('Vui lòng đăng nhập!')" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></a>
    	</c:if>
    </td> 
   </tr> 
  </tfoot> 
 </table>
</div>
    
              </div>
            </div>
            </div>
            </div>
            </div>
          <div class="clearfix">
          </div>
          
        </div>
      