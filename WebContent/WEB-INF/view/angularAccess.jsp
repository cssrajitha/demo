<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Adding Angular file here -->
<!-- 
<script src='angular.js'></script>
        <script src='app.js'></script> -->

    <script src="${pageContext.request.contextPath}/resources/js/angular.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
    




</head>
<body>
<div ng-controller="TodoCtrl as ctrl">

            <div>

                <p>Add a Todo:</p>
                <input type="text" ng-model="ctrl.newTodo"></div>
                <button ng-click="ctrl.addNewTodo()">Add</button>

            <div>
                <p>Your Todos:</p>
                <button ng-hide="ctrl.editMode" ng-click="ctrl.triggerEditMode()">Edit</button>
                <button ng-show="ctrl.editMode" ng-click="ctrl.triggerEditMode()">Done</button>
                <ol>
                    <li ng-repeat="todo in ctrl.todos track by $index">
                        <span ng-hide="ctrl.editMode" ng-bind="todo"></span> 
                        <input ng-model="todo" ng-show="ctrl.editMode" type="text"></input>
                        <button ng-hide="ctrl.editMode" ng-click="ctrl.deleteTodo($index)">Delete</button>
                    </li>
                </ol>
            </div>

        </div>


</body>
</html>