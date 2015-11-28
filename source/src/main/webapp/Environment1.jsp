<%--
  ~ Cerberus  Copyright (C) 2013  vertigo17
  ~ DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
  ~
  ~ This file is part of Cerberus.
  ~
  ~ Cerberus is free software: you can redistribute it and/or modify
  ~ it under the terms of the GNU General Public License as published by
  ~ the Free Software Foundation, either version 3 of the License, or
  ~ (at your option) any later version.
  ~
  ~ Cerberus is distributed in the hope that it will be useful,
  ~ but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  ~ GNU General Public License for more details.
  ~
  ~ You should have received a copy of the GNU General Public License
  ~ along with Cerberus.  If not, see <http://www.gnu.org/licenses/>.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="include/dependenciesInclusions.html" %>
        <script type="text/javascript" src="js/pages/Environment.js"></script>
        <title id="pageTitle">Environment</title>
    </head>
    <body>
        <%@ include file="include/header.html" %>
        <div class="container-fluid center" id="page-layout">
            <%@ include file="include/messagesArea.html"%>
            <%@ include file="include/utils/modal-confirmation.html"%>
            <%@ include file="include/environment/addEnvironment.html"%>
            <%@ include file="include/environment/editEnvironment.html"%>

            <h1 class="page-title-line" id="title">Environment</h1>

            <div class="row">
                <div class="col-lg-12" id="FiltersPanel">
                    <div class="panel panel-default">
                        <div class="panel-heading card">
                            <span class="fa fa-tag fa-fw"></span>
                            <label id="filters" name="filtersField">Filters</label>
                        </div>
                        <div class="panel-body">
                            <div class="form-inline">
                                <div class="marginBottom10">
                                    <label for="selectCountry" name="countryField">Country :</label>
                                    <select class="form-control" id="selectCountry" name="country" style="width: 10%"></select>
                                    <label for="selectEnvironment" name="environmentField">Environment :</label>
                                    <select class="form-control" id="selectEnvironment" name="environment" style="width: 15%"></select>
                                    <label for="selectBuild" name="buildField">Build :</label>
                                    <select class="form-control" id="selectBuild" name="build" style="width: 10%"></select>
                                    <label for="selectRevision" name="revisionField">Revision :</label>
                                    <select class="form-control" id="selectRevision" name="revision" style="width: 10%"></select>
                                    <button type="button" class="btn btn-default" id="btnLoad" onclick="loadBCTable()" name="btnLoad">Load</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="panel panel-default">
                <div class="panel-heading card">
                    <label id="shortcuts" name="listField">Build Content List</label>
                </div>
                <div class="panel-body" id="buildContentList">
                    <table id="buildrevisionparametersTable" class="table table-hover display" name="buildrevisionparametersTable"></table>
                    <div class="marginBottom20"></div>
                </div>
            </div>

            <footer class="footer">
                <div class="container-fluid" id="footer"></div>
            </footer>
        </div>
    </body>
</html>