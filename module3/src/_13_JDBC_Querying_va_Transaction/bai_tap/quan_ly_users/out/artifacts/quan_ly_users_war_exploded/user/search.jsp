<%--
  Created by IntelliJ IDEA.
  User: Hoang Tu
  Date: 06/11/2020
  Time: 6:14 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Trang chủ</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>

<%--<!-- Modal -->--%>
<%--<div class="modal fade" id="modelDelete" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">--%>
<%--    <div class="modal-dialog" role="document">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title">Xóa</h5>--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                    <span aria-hidden="true">&times;</span>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--            &lt;%&ndash;            body&ndash;%&gt;--%>
<%--            <form action="/users">--%>
<%--                <input type="hidden" name="action" value="delete">--%>
<%--                <input type="hidden" name="id" value="" id="modalDelId">--%>
<%--                <div class="modal-body">--%>
<%--                    Bạn có chắc muốn xóa hay không!--%>
<%--                </div>--%>

<%--                <div class="modal-footer">--%>
<%--                    <button type="submit" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
<%--                    <button type="submit" class="btn btn-primary">Ok</button>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--            &lt;%&ndash;             end body&ndash;%&gt;--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--&lt;%&ndash;    create&ndash;%&gt;--%>
<%--<div class="modal fade" id="modelCreate" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">--%>
<%--    <div class="modal-dialog" role="document">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title">Create new</h5>--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                    <span aria-hidden="true">&times;</span>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--            &lt;%&ndash;            body&ndash;%&gt;--%>
<%--            <form action="/users" method="post">--%>
<%--                <input type="hidden" name="action" value="create">--%>
<%--                <div class="modal-body">--%>
<%--                    <div class="form-group">--%>
<%--                        <label for="exampleInputName">Name</label>--%>
<%--                        <input type="text" class="form-control" name="name" id="exampleInputName" placeholder="Name">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label for="exampleInputEmail">Email</label>--%>
<%--                        <input type="text" class="form-control" name="email" id="exampleInputEmail" placeholder="Email">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label for="exampleInputCountry">Country</label>--%>
<%--                        <input type="text" class="form-control" name="country" id="exampleInputCountry"--%>
<%--                               placeholder="Country">--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="modal-footer">--%>
<%--                    <button type="submit" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
<%--                    <button type="submit" class="btn btn-primary">Add</button>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--            &lt;%&ndash;             end body&ndash;%&gt;--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--&lt;%&ndash;end create&ndash;%&gt;--%>

<%--&lt;%&ndash;edit&ndash;%&gt;--%>
<%--<div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"--%>
<%--     aria-hidden="true">--%>
<%--    <div class="modal-dialog" role="document">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title">Edit User</h5>--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                    <span aria-hidden="true">&times;</span>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--            &lt;%&ndash;            body&ndash;%&gt;--%>
<%--            <form action="/users" method="post">--%>
<%--                <input type="hidden" name="action" value="edit">--%>
<%--                <input type="hidden" name="id" value="" id="modalEditId">--%>
<%--                <div class="modal-body">--%>
<%--                    <div class="form-group">--%>
<%--                        <label for="modalEditName">Name</label>--%>
<%--                        <input type="text" class="form-control" name="name" id="modalEditName" value="">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label for="modalEditEmail">Email</label>--%>
<%--                        <input type="text" class="form-control" name="email" id="modalEditEmail">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label for="modalEditCountry">Country</label>--%>
<%--                        <input type="text" class="form-control" name="country" id="modalEditCountry">--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="modal-footer">--%>
<%--                    <button type="submit" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
<%--                    <button type="submit" class="btn btn-primary">Edit</button>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--            &lt;%&ndash;             end body&ndash;%&gt;--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--&lt;%&ndash;end edit&ndash;%&gt;--%>
<%--&lt;%&ndash;detail&ndash;%&gt;--%>
<%--<div class="modal fade" id="modalDetail" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"--%>
<%--     aria-hidden="true">--%>
<%--    <div class="modal-dialog" role="document">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title">Detail User</h5>--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                    <span aria-hidden="true">&times;</span>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--            &lt;%&ndash;            body&ndash;%&gt;--%>
<%--            <form>--%>
<%--                <div class="modal-body">--%>
<%--                    <div class="form-group">--%>
<%--                        <label for="modalEditName">Name</label>--%>
<%--                        <input type="text" class="form-control" name="name" id="modalDetailName" readonly>--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label for="modalEditEmail">Email</label>--%>
<%--                        <input type="text" class="form-control" name="email" id="modalDetailEmail" readonly>--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label for="modalEditCountry">Country</label>--%>
<%--                        <input type="text" class="form-control" name="country" id="modalDetailCountry" readonly>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="modal-footer">--%>
<%--                    <button type="submit" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--            &lt;%&ndash;             end body&ndash;%&gt;--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--end detail--%>
<div class="container">
    <h3 class="display-3" style="text-align: center">Hoang Tu </h3>
    <div class="row mt-2 mb-2 col-lg-12 ">
        <div class="col-lg-2">
            <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#modelCreate">
                <i class="fas fa-plus"> Create new</i>
            </button>

        </div>
        <div class="row col-lg-10">
            <div class="col-lg-8">
                <input type="search" class="form-control" placeholder="Search for anything..." name="search">
            </div>
            <div class="az-header-center col-lg-2 mt-1">
                <a href="/users?action=search" class="btn btn-secondary"><i class="fas fa-search"></i></a>
            </div>


        </div>
    </div>
    <p class="ml-1" style="color: limegreen">
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Country</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <c:forEach var="user" items="${userListSearch}">
            <tbody>
            <tr>
                <th scope="row">${user.id}</th>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <td>
                    <button type="button" class="btn btn-success"
                            onclick="onDetail(${user.id},'${user.name}','${user.email}','${user.country}')"
                            data-toggle="modal" data-target="#modalDetail">
                        <i class="fas fa-align-justify"></i>
                    </button>
                    <button type="button" class="btn btn-warning"
                            onclick="onEdit(${user.id},'${user.name}','${user.email}','${user.country}')"
                            data-toggle="modal" data-target="#modalEdit">
                        <i class="fas fa-pen"></i>
                    </button>
                    <button type="button" class="btn btn-danger" onclick="onDelete(${user.id})" data-toggle="modal"
                            data-target="#modelDelete">
                        <i class="fas fa-trash"></i>
                    </button>
                </td>
            </tr>
            </tbody>
        </c:forEach>
    </table>
</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%--<script>--%>
<%--    function onDelete(id) {--%>
<%--        $("#modalDelId").val(id);--%>
<%--    }--%>

<%--    function onEdit(id, name, email, country) {--%>
<%--        $("#modalEditId").val(id);--%>
<%--        $("#modalEditName").val(name);--%>
<%--        $("#modalEditEmail").val(email);--%>
<%--        $("#modalEditCountry").val(country);--%>
<%--    }--%>

<%--    function onDetail(id, name, email, country) {--%>
<%--        $("#modalDetailId").val(id);--%>
<%--        $("#modalDetailName").val(name);--%>
<%--        $("#modalDetailEmail").val(email);--%>
<%--        $("#modalDetailCountry").val(country);--%>
<%--    }--%>
<%--</script>--%>
</html>
