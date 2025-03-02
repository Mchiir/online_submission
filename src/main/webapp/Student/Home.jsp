<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Correct Tailwind CSS CDN link -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script>
        // Function to update the date and time every second
        function updateDateTime() {
            var now = new Date();
            var year = now.getFullYear();
            var month = ('0' + (now.getMonth() + 1)).slice(-2); // Months are zero-indexed
            var day = ('0' + now.getDate()).slice(-2);
            var hours = ('0' + now.getHours()).slice(-2);
            var minutes = ('0' + now.getMinutes()).slice(-2);
            var seconds = ('0' + now.getSeconds()).slice(-2);

            var formattedDateTime = year + '-' + month + '-' + day + ' ' + hours + ':' + minutes + ':' + seconds;

            // Update the content of the date-time element
            document.getElementById('currentDateTime').innerHTML = formattedDateTime;
        }

        // Call updateDateTime() every second to keep the time updated
        setInterval(updateDateTime, 1000);

        // Run once when the page loads to show the initial time immediately
        window.onload = updateDateTime;
    </script>
</head>
<body class="flex flex-col w-full">

<section class="z-50 flex sticky top-0 flex-row justify-between items-start px-10 py-5 border-b border-gray-200 border-[1px] w-full shadow-sm">
    <div class="flex flex-row justify-center items-center gap-5">
        <img src="./images/logo.png" alt="logo" class="w-7 h-7"/>
        <h1 class="text-black font-semibold">Online Submission Platform</h1>
    </div>
    <div class="flex flex-row gap-5 items-center justify-center">
        <img alt="user" src="./images/user.png" class="w-8 h-8 rounded-full" />
        <p class="text-sm text-gray-700 font-medium ">Dushimire Aine</p>
        <button class="flex items-center justify-center px-5 py-2 text-sm bg-gray-100 rounded-md text-gray-800">Logout</button>
    </div>
</section>

<section class="flex flex-row gap-10 px-10 py-3 flex-grow">
    <!-- Sidebar with sticky positioning and full screen height -->
    <section class="flex flex-col sticky top-[100px]  ">
        <ul class="flex flex-col gap-5 items-start justify-start">
            <li>
                <a href="#" class="flex items-center gap-5 bg-gray-100 rounded-md px-8 py-2 text-black text-sm">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    <p class="text-black text-sm">Dashboard</p>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/Student/Assignments.jsp" class="flex items-center gap-5 bg-white rounded-md px-8 py-2 text-black text-sm">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    <p class="text-black text-sm">Assignments</p>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/Student/profile.jsp" class="flex items-center gap-5 bg-white rounded-md px-8 py-2 text-black text-sm">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    <p class="text-black text-sm">Profile</p>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/Student/Notification.jsp" class="flex items-center gap-5 bg-white rounded-md px-8 py-2 text-black text-sm">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    <p class="text-black text-sm">Notifications</p>
                </a>
            </li>
        </ul>
    </section>

    <!-- Content Section with Date and Time -->
    <section class="flex flex-col items-start justify-start gap-5 w-full bg-[#e6f6e9]">
        <div class="flex flex-col justify-between gap-5 items-start">
            <h1 class="font-semibold text-medium text-gray-800">Welcome Dushimire Aine</h1>

            <!-- Display Current Date and Time -->
            <p class="text-sm text-gray-600">
                Current Date and Time:
                <span id="currentDateTime"></span>
            </p>
        </div>
        <div class="flex flex-row items-start justify-between flex w-full">
            <h1 class="font-semibold text-medium text-gray-800">Active Assignments</h1>
            <button class="flex items-center justify-center px-5 py-2 text-sm bg-gray-800 rounded-md text-white">View Assignments</button>
        </div>
        <div class="flex items-start justify-start w-full flex-wrap">
            <div class="flex flex-col items-center px-5 py-5 gap-5 w-[150px] h-[150px] rounded-md bg-white shadow-md">
                <p class="text-sm font-medium text-gray-800">Online Submission Work</p>
                <p class="text-sm text-gray-600">Java</p>
                <div class="items-center flex flex-row justify-center gap-5 w-full">
                    <p class="text-sm text-gray-700">Submission:12-February-2024</p>
                    <div class="px-5 py-2 rounded-lg bg-gray-100 text-sm text-black flex items-center justify-center">Pending</div>
                </div>
                <button class="flex items-center justify-center w-full px-5 py-2 text-sm bg-gray-800 rounded-md text-white">Submit Assignment</button>
            </div>

        </div>
    </section>

</section>

</body>
</html>
