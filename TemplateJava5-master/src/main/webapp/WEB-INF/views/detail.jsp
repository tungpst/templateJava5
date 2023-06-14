<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="forms" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

                <div class="modal-body">
                    <form:form action="/phieu-giam-gia/update"  method="post" modelAttribute="PGGG">
                        <form:input type="text" id="" class="form-control"  path="maphieu" required="true" cssStyle="display: none" placeholder="Enter tên"/>
                        <div class="form-group">
                            <label>Tên</label>
                            <form:input type="text" id="tenPhieu" class="form-control"  path="tenphieu" required="true" placeholder="Enter tên"/>
                        </div>
                        <div class="form-group">
                            <label>Giá Trị Giảm</label>
                            <form:input type="text" id="tenDem" class="form-control"  path="giatrigiam" required="true" placeholder="Enter Tên Đệm"/>
                        </div>
                        <div class="form-group">
                            <label>Giá trị giảm tối đa</label>
                            <form:input type="text" id="ho" class="form-control"  path="giatrigiamtoida" required="true" placeholder="Enter họ"/>
                        </div>
                        <div class="form-group">
                            <label>Ngày bắt đầu</label>
                            <form:input type="date" class="form-control" required="true" path="ngaybatdau"/>
                        </div>
                        <div class="form-group">
                            <label>Ngày kết thúc</label>
                            <form:input type="date" class="form-control" required="true" path="ngayketthuc"/>
                        </div>
                        <div class="form-group">
                            <label>Khách Hàng</label>
                            <form:select path="nguoisohuu">
                                <form:options items="${KH}" itemValue="makhachhang" itemLabel="tenkhachhang"></form:options>
                            </form:select>
                        </div>


                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-primary">Reset</button>
                    </form:form>
                </div>
