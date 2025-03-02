<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script>
        function handleFileSelect(event) {
            const fileInput = event.target;
            const files = fileInput.files;
            const previewContainer = document.getElementById("filePreviewContainer");
            previewContainer.innerHTML = "";

            for (const file of files) {
                const previewWrapper = document.createElement("div");
                previewWrapper.classList.add("mt-4");

                if (file.type.startsWith("image/")) {
                    const reader = new FileReader();
                    reader.onload = function(e) {
                        const previewImage = document.createElement("img");
                        previewImage.src = e.target.result;
                        previewImage.alt = "File Preview";
                        previewImage.classList.add("w-32", "h-32", "object-cover", "rounded-md", "shadow-sm");
                        previewWrapper.appendChild(previewImage);
                    };
                    reader.readAsDataURL(file);
                } else if (file.type === "application/pdf") {
                    const reader = new FileReader();
                    reader.onload = function(e) {
                        const pdfPreview = document.createElement("embed");
                        pdfPreview.src = e.target.result;
                        pdfPreview.classList.add("w-32", "h-32", "rounded-md", "shadow-sm");
                        previewWrapper.appendChild(pdfPreview);
                    };
                    reader.readAsDataURL(file);
                } else {
                    const fileName = document.createElement("p");
                    fileName.classList.add("text-black", "text-sm");
                    fileName.textContent = file.name;
                    previewWrapper.appendChild(fileName);
                }
                previewContainer.appendChild(previewWrapper);
            }
        }
    </script>
</head>
<body class="flex flex-col w-full min-h-screen bg-gray-50">

<!-- Header remains unchanged -->
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

<!-- Main content area -->
<section class="flex flex-row gap-10 px-10 py-3 flex-grow">
    <!-- Sidebar remains unchanged -->

    <!-- Centered Form Section -->
    <div class="flex-1 flex flex-col items-center justify-center min-h-[calc(100vh-160px)] py-10">
        <div class="w-full max-w-4xl mx-auto">
            <!-- Breadcrumb -->
            <div class="mb-8">
                <div class="flex items-center gap-2 text-gray-600">
                    <h1 class="font-semibold text-lg text-gray-800">Assignments</h1>
                    <span>/</span>
                    <p class="text-gray-600">Submit assignment</p>
                </div>
            </div>

            <!-- Centered Form Container -->
            <section class="bg-white p-8 rounded-xl shadow-lg border border-gray-100">
                <form action="" method="POST" class="flex flex-col gap-6">
                    <div id="filePreviewContainer" class="grid grid-cols-3 gap-4 w-full">
                        <!-- Preview grid -->
                    </div>

                    <div class="space-y-4">
                        <label class="block text-sm font-medium text-gray-700">Upload Assignment</label>
                        <div class="border-2 border-dashed border-gray-200 rounded-lg p-8 text-center hover:border-gray-300 transition-colors">
                            <label class="cursor-pointer inline-flex flex-col items-center">
                                <svg class="w-12 h-12 text-gray-400 mb-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 16a4 4 0 01-.88-7.903A5 5 0 1115.9 6L16 6a5 5 0 011 9.9M15 13l-3-3m0 0l-3 3m3-3v12"/>
                                </svg>
                                <span class="bg-gray-100 px-4 py-2 rounded-md text-gray-700 hover:bg-gray-200 transition-colors">
                                    Select Files
                                </span>
                                <input type="file" id="fileassignment" name="assignmentFile" class="hidden" onchange="handleFileSelect(event)" multiple />
                                <p class="mt-3 text-sm text-gray-500">PNG, JPG, PDF up to 10MB</p>
                            </label>
                        </div>
                    </div>

                    <button type="submit" class="mt-4 w-full bg-black text-white px-6 py-3 rounded-md hover:bg-gray-800 transition-colors font-medium shadow-sm">
                        Submit Assignment
                    </button>
                </form>
            </section>
        </div>
    </div>
</section>

</body>
</html>