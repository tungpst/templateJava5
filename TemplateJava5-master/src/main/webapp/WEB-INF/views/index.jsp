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
<div class="container">
    <h2>Khách Hàng</h2>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Add
    </button>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form:form action="/phieu-giam-gia/save"  method="post" modelAttribute="PGGG">
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
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Mã</th>
            <th>Tên</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày kết thúc</th>
            <th>Giá trị giảm</th>
            <th>Trạng thái</th>
            <th>Tên khách hàng</th>
            <th><3</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach  items="${PGG}" var="ac">
            <tr>
                <td>${ac.maphieu}</td>
                <td>${ac.tenphieu}</td>
                <td><fmt:formatDate value="${ac.ngaybatdau}" pattern="yyyy-MM-dd"/> </td>
                <td><fmt:formatDate value="${ac.ngayketthuc}" pattern="yyyy-MM-dd"/> </td>
                <td>${ac.giatrigiam} %</td>
                <td>${ac.trangthai == 0?"Còn giảm giá":"Kết thúc"}</td>
                <td>${ac.nguoisohuu.tenkhachhang}</td>
                <td><a class="btn btn-primary btn-sm" href="/phieu-giam-gia/detail/${ac.maphieu}">Edit</a>
                    | <a class="btn btn-danger btn-sm" href="/phieu-giam-gia/delete/${ac.maphieu}">Del</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>