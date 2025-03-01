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

        function toggleDropdown(id) {
            const dropdown = document.getElementById(id);
            dropdown.classList.toggle("hidden");
        }

        document.addEventListener("click", function (event) {
            const isDropdownButton = event.target.closest("button");
            if (!isDropdownButton) {
                document.querySelectorAll(".relative div.hidden").forEach((dropdown) => {
                    dropdown.classList.add("hidden");
                });
            }
        });
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
                <a href="${pageContext.request.contextPath}/Student/Home.jsp" class="flex items-center gap-5 bg-gray-100 rounded-md px-5 py-2 text-black text-sm">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    <p class="text-black text-sm">Dashboard</p>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/Student/Assignments.jsp" class="flex items-center gap-5 bg-white rounded-md px-5 py-2 text-black text-sm">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    <p class="text-black text-sm">Assignments</p>
                </a>
            </li>
            <li>
                <a href="#" class="flex items-center gap-5 bg-white rounded-md px-5 py-2 text-black text-sm">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    <p class="text-black text-sm">Profile</p>
                </a>
            </li>
            <li>
                <a href="#" class="flex items-center gap-5 bg-white rounded-md px-5 py-2 text-black text-sm">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    <p class="text-black text-sm">Notifications</p>
                </a>
            </li>
        </ul>
    </section>

    <!-- Content Section with Date and Time -->
    <section class="flex flex-col items-start justify-start gap-5 w-full bg-[#e6f6e9]">
        <div class="sticky flex flex-col justify-between gap-5 items-start">
            <h1 class="font-semibold text-medium text-gray-800 text-center">Assignments</h1>
        </div>


        <section>

            <!-- Sorting and Filtering Section -->
            <div class="flex flex-row-reverse gap-6 px-10 py-4 shadow-sm relative">
                <!-- Sort By Dropdown -->
                <div class="relative">
                    <button onclick="toggleDropdown('sortDropdown')" class="px-4 py-2 bg-gray-800 text-white rounded-md shadow-md hover:bg-gray-700 transition">
                        Sort By ▼
                    </button>
                    <div id="sortDropdown" class="absolute mt-2 w-40 bg-white shadow-md rounded-md hidden">
                        <ul class="text-sm text-gray-700">
                            <li class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Date</li>
                            <li class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Status</li>
                            <li class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Alphabetical</li>
                        </ul>
                    </div>
                </div>

                <!-- Filter By Dropdown -->
                <div class="relative">
                    <button onclick="toggleDropdown('filterDropdown')" class="px-4 py-2 bg-gray-800 text-white rounded-md shadow-md hover:bg-gray-700 transition">
                        Filter By ▼
                    </button>
                    <div id="filterDropdown" class="absolute mt-2 w-40 bg-white shadow-md rounded-md hidden">
                        <ul class="text-sm text-gray-700">
                            <li class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Completed</li>
                            <li class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Pending</li>
                            <li class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Overdue</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <main class="pt-10 pl-10">
            <div class="grid grid-cols-3 gap-y-8">

                <div class="flex items-start justify-start flex-wrap">
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

                <div class="flex items-start justify-start flex-wrap">
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

                <div class="flex items-start justify-start flex-wrap">
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

                <div class="flex items-start justify-start flex-wrap">
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

            </div>
        </main>
    </section>

</section>

</body>
</html>