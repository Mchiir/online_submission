<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>

<%
    // Initialize notifications if not set by a servlet
    List<HashMap<String, Object>> notifications = Arrays.asList(
            new HashMap<String, Object>() {{
                put("id", 1);
                put("type", "assignment");
                put("title", "New Assignment Posted");
                put("course", "Software Engineering");
                put("read", Boolean.FALSE);
                put("timestamp", "2 min ago");
                put("score", null);
            }},
            new HashMap<String, Object>() {{
                put("id", 2);
                put("type", "grade");
                put("title", "Assignment Graded");
                put("course", "Database Systems");
                put("read", Boolean.FALSE);
                put("timestamp", "1 hour ago");
                put("score", "85%");
            }},
            new HashMap<String, Object>() {{
                put("id", 3);
                put("type", "alert");
                put("title", "System Maintenance");
                put("course", "All Systems");
                put("read", Boolean.TRUE);
                put("timestamp", "Yesterday");
                put("score", null);
            }}
    );
    pageContext.setAttribute("notifications", notifications);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notifications</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="flex flex-col w-full min-h-screen bg-gray-50">

<section class="z-50 flex sticky top-0 flex-row justify-between items-start px-10 py-5 border-b border-gray-200 border-[1px] w-full shadow-sm">
    <div class="flex flex-row justify-center items-center gap-5">
        <img src="./images/logo.png" alt="logo" class="w-7 h-7"/>
        <h1 class="text-black font-semibold">Online Submission Platform</h1>
    </div>
    <div class="flex flex-row gap-5 items-center justify-center">
        <img alt="user" src="./images/user.png" class="w-8 h-8 rounded-full" />
        <p class="text-sm text-gray-700 font-medium">Dushimire Aine</p>
        <button class="flex items-center justify-center px-5 py-2 text-sm bg-gray-100 rounded-md text-gray-800">Logout</button>
    </div>
</section>

<!-- Main Content -->
<div class="flex flex-grow px-10">
    <!-- Fixed Sidebar -->
    <section class="w-64 fixed left-0 top-[84px] h-[calc(100vh-84px)] overflow-y-auto">
        <ul class="flex flex-col gap-2 p-5">
            <li>
                <a href="#" class="flex items-center gap-4 rounded-md px-4 py-2.5 text-sm hover:bg-gray-100">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    Dashboard
                </a>
            </li>
            <li>
                <a href="#" class="flex items-center gap-4 rounded-md px-4 py-2.5 text-sm hover:bg-gray-100">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    Assignments
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/Student/profile.jsp" class="flex items-center gap-4 rounded-md px-4 py-2.5 text-sm bg-white">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    Profile
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/Student/Notification.jsp" class="flex items-center text-black gap-4 rounded-md px-4 py-2.5 text-sm bg-gray-100">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    Notifications
                </a>
            </li>
        </ul>
    </section>

    <!-- Notifications Content -->
    <section class="ml-64 flex-1 p-10">
        <div class="max-w-4xl mx-auto">
            <div class="flex items-center justify-between mb-8">
                <div>
                    <h1 class="text-2xl font-bold text-gray-800">Notifications</h1>
                    <p class="text-gray-600">Recent updates and activities</p>
                </div>
                <button class="px-4 py-2 text-sm bg-gray-100 rounded-md hover:bg-gray-200 transition-colors">
                    Mark all as read
                </button>
            </div>

            <!-- Notification Filters -->
            <div class="flex gap-4 mb-6">
                <button class="px-4 py-2 bg-black text-white rounded-md text-sm">
                    All
                </button>
                <button class="px-4 py-2 bg-gray-100 rounded-md text-sm hover:bg-gray-200">
                    Unread
                </button>
                <button class="px-4 py-2 bg-gray-100 rounded-md text-sm hover:bg-gray-200">
                    Assignments
                </button>
            </div>

            <!-- Notifications List -->
            <div id="notifications-container" class="space-y-4">
                <c:choose>
                    <c:when test="${notifications != null && !empty notifications}">
                        <c:forEach var="notification" items="${notifications}">
                            <div class="notification-item p-4 rounded-lg hover:bg-gray-50 transition-colors cursor-pointer">
                                <c:if test="${notification.read == false}">
                                    <c:set var="extraClasses" value="bg-blue-50 p-4 border-l-4 border-blue-500" />
                                </c:if>
                                <c:if test="${notification.read == true}">
                                    <c:set var="extraClasses" value="" />
                                </c:if>
                                <div class="flex items-start gap-4 ${extraClasses}">
                                    <div class="flex-shrink-0">
                                        <c:choose>
                                            <c:when test="${notification.type == 'assignment'}">
                                                <svg class="w-6 h-6 text-blue-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2"/>
                                                </svg>
                                            </c:when>
                                            <c:when test="${notification.type == 'grade'}">
                                                <svg class="w-6 h-6 text-green-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
                                                </svg>
                                            </c:when>
                                            <c:when test="${notification.type == 'alert'}">
                                                <svg class="w-6 h-6 text-red-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"/>
                                                </svg>
                                            </c:when>
                                        </c:choose>
                                    </div>
                                    <div class="flex-1">
                                        <h3 class="font-medium text-gray-800">${notification.title}</h3>
                                        <p class="text-sm text-gray-600 mt-1">${notification.course}</p>
                                        <c:if test="${not empty notification.score}">
                                            <div class="mt-2 inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800">Score: ${notification.score}</div>
                                        </c:if>
                                        <p class="text-xs text-gray-500 mt-2">${notification.timestamp}</p>
                                    </div>
                                    <c:if test="${notification.read == false}">
                                        <div class="w-2 h-2 rounded-full bg-blue-500"></div>
                                    </c:if>
                                </div>
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <p class="text-gray-600">No notifications available.</p>
                    </c:otherwise>
                </c:choose>
            </div>

            <!-- Pagination -->
            <div class="mt-8 flex justify-center items-center gap-4">
                <button class="px-4 py-2 bg-gray-100 rounded-md text-sm hover:bg-gray-200">
                    Previous
                </button>
                <span class="text-sm text-gray-600">Page 1 of 3</span>
                <button class="px-4 py-2 bg-gray-100 rounded-md text-sm hover:bg-gray-200">
                    Next
                </button>
            </div>
        </div>
    </section>
</div>

</body>
</html>
