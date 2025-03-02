<html>
<head>
    <title>Student Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="flex flex-col w-full min-h-screen bg-gray-50">

<!-- Header -->
<section class="z-50 flex sticky top-0 flex-row justify-between items-start px-10 py-5 border-b border-gray-200 w-full shadow-md bg-white">
    <div class="flex flex-row justify-center items-center gap-5">
        <img src="./images/logo.png" alt="logo" class="w-7 h-7"/>
        <h1 class="text-black font-semibold text-lg">Online Submission Platform</h1>
    </div>
    <div class="flex flex-row gap-5 items-center justify-center">
        <img alt="user" src="./images/user.png" class="w-8 h-8 rounded-full" />
        <p class="text-sm text-gray-700 font-medium ">Dushimire Aine</p>
        <button class="flex items-center justify-center px-5 py-2 text-sm bg-gray-100 rounded-md text-gray-800 hover:bg-gray-200 transition-colors">Logout</button>
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
                <a href="${pageContext.request.contextPath}/Student/profile.jsp" class="flex items-center gap-4 rounded-md px-4 py-2.5 text-sm bg-gray-100">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    Profile
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/Student/Notification.jsp" class="flex items-center gap-4 rounded-md px-4 py-2.5 text-sm hover:bg-gray-100">
                    <img src="./images/logo.png" alt="logo" class="w-5 h-5"/>
                    Notifications
                </a>
            </li>
        </ul>
    </section>

    <!-- Profile Content -->
    <div class="flex-1 flex flex-col items-center min-h-[calc(100vh-160px)] py-10 ml-44">
        <div class="w-full max-w-4xl mx-auto space-y-8">
            <!-- Profile Header -->
            <div class="flex w-full items-center justify-between mb-8">
                <div>
                    <h1 class="text-2xl font-bold text-gray-800">Student Profile</h1>
                    <p class="text-gray-600">Manage your personal and academic information</p>
                </div>
                <button class="px-4 py-2 bg-black text-white rounded-md hover:bg-gray-800 transition-colors">
                    Edit Profile
                </button>
            </div>

            <!-- Profile Card -->
            <div class="bg-white rounded-xl shadow-lg border border-gray-100 p-8">
                <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                    <!-- Profile Photo -->
                    <div class="md:col-span-1 flex flex-col items-center">
                        <div class="relative group">
                            <img src="./images/user.png"
                                 class="w-32 h-32 rounded-full object-cover shadow-md mb-4"
                                 alt="Profile photo">
                            <div class="absolute inset-0 bg-black bg-opacity-50 rounded-full flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity">
                                <label class="cursor-pointer text-white">
                                    <input type="file" class="hidden">
                                    <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 9a2 2 0 012-2h.93a2 2 0 001.664-.89l.812-1.22A2 2 0 0110.07 4h3.86a2 2 0 011.664.89l.812 1.22A2 2 0 0018.07 7H19a2 2 0 012 2v9a2 2 0 01-2 2H5a2 2 0 01-2-2V9z"/>
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 13a3 3 0 11-6 0 3 3 0 016 0z"/>
                                    </svg>
                                </label>
                            </div>
                        </div>
                        <h2 class="text-xl font-semibold text-gray-800">Dushimire Aine</h2>
                        <p class="text-gray-600 text-sm">Student ID: 123456</p>
                    </div>

                    <!-- Personal Information -->
                    <div class="md:col-span-2 space-y-6">
                        <div class="space-y-4">
                            <h3 class="text-lg font-semibold text-gray-800 border-b pb-2">Personal Information</h3>
                            <dl class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <div>
                                    <dt class="text-sm text-gray-500">Full Name</dt>
                                    <dd class="text-gray-800">Dushimire Aine</dd>
                                </div>
                                <div>
                                    <dt class="text-sm text-gray-500">Email</dt>
                                    <dd class="text-gray-800">ainedushimire@gmail.com</dd>
                                </div>
                                <div>
                                    <dt class="text-sm text-gray-500">Phone Number</dt>
                                    <dd class="text-gray-800">+250 780 000 000</dd>
                                </div>
                                <div>
                                    <dt class="text-sm text-gray-500">Date of Birth</dt>
                                    <dd class="text-gray-800">January 1, 2000</dd>
                                </div>
                            </dl>
                        </div>

                        <!-- Academic Information -->
                        <div class="space-y-4">
                            <h3 class="text-lg font-semibold text-gray-800 border-b pb-2">Academic Information</h3>
                            <dl class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <div>
                                    <dt class="text-sm text-gray-500">Combination</dt>
                                    <dd class="text-gray-800">Software Programming and Embedded Systems</dd>
                                </div>
                                <div>
                                    <dt class="text-sm text-gray-500">Class</dt>
                                    <dd class="text-gray-800">Level 5</dd>
                                </div>
                                <div>
                                    <dt class="text-sm text-gray-500">Academic Year</dt>
                                    <dd class="text-gray-800">2024 - 2025</dd>
                                </div>
                                <div>
                                    <dt class="text-sm text-gray-500">Current Term</dt>
                                    <dd class="text-gray-800">Term 2</dd>
                                </div>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Security Section -->
            <div class="bg-white rounded-xl shadow-lg border border-gray-100 p-8">
                <h3 class="text-lg font-semibold text-gray-800 border-b pb-2 mb-4">Security</h3>
                <div class="space-y-4">
                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-2">Password</label>
                        <div class="flex items-center justify-between bg-gray-50 p-4 rounded-lg">
                            <span class="text-gray-600">••••••••</span>
                            <button class="text-black hover:text-gray-700 transition-colors">
                                Change Password
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

</body>
</html>