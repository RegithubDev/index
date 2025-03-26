<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta tags  -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
    />

    <title>ReOne - Power BI</title>
    <link rel="icon" type="image/png" href="/index/resources/images/favicon.svg" />

    <!-- CSS Assets -->
    <link rel="stylesheet" href="/index/resources/css/app.css" />

    <!-- Javascript Assets -->
    <script src="/index/resources/js/app.js" defer></script>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/" />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin />
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
          <link rel="stylesheet" type="text/css" href="/index/resources/vendors/css/forms/select/select2.min.css">
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap"
      rel="stylesheet"
    />
      <style>
     
     th,td{
    	text-align:left;
    }
*, :after, :before {
    border: 0 solid #e5e7eb;
    box-sizing: border-box;
}

.pagination{
  background-color: #e9eef5!important;
  border-bottom-left-radius: 0.5rem;
  border-top-left-radius: 0.5rem;
  border-bottom-right-radius: 0.5rem;
  border-top-right-radius: 0.5rem;
}

.pagination button {
  display: inline-block;
  background-color: #e9eef5;
  border-bottom-left-radius: 0.5rem;
  border-top-left-radius: 0.5rem;
  border-bottom-right-radius: 0.5rem;
  border-top-right-radius: 0.5rem;
}
.pagination .mdl-button {
 padding: 5px 10px;
}
.pagination .mdl-button--raised {
  text-decoration: none;
  padding: 5px 10px;
  background-color: #4f46e5!important;
  color: #fff;
}

.pagination button:hover {
  background-color: #ddd;
}

.pagination .active button {
  background-color: #4f46e5!important;
  color: #fff;
}
    .input-sm {
  border: 1px solid #ccc;
  border-radius: 15px;
  background-image: url('<i class="fa fa-search" aria-hidden="true"></i>'); /* Provide the path to your search icon image */
  background-position: right center;
  background-repeat: no-repeat;
  font-size: 13px;
  margin-left: 0.3rem;
}

.input-sm::after {
  padding: 8px 30px 8px 10px; /* Adjust padding to make room for the icon */

  content: ""; /* Add empty content for the search icon */
  background-image: url('<i class="fa fa-search" aria-hidden="true"></i>'); /* Provide the path to your search icon image */
  width: 20px; /* Adjust the width of the icon */
  height: 20px; /* Adjust the height of the icon */
  position: absolute;
  top: 50%;
  right: 10px; /* Adjust the right position to position the icon correctly */
  transform: translateY(-50%);
}
   input[type="search"] {
  padding: 8px 30px 8px 10px;
  border: 1px solid #ccc; /* Optional: Add a border for better visibility */
  border-radius: 5px; /* Optional: Add border-radius for rounded corners */
}
    .dataTables_info{
    font-size: .8125rem;
    line-height: 1.125rem;
    }
   .mdl-grid{
   align-items: center;
	display: flex !important;
    padding: 4px;
    justify-content: space-between;
    height: 4.5rem;
} 
.mdl-grid:nth-child(3) .mdl-cell--6-col {
	    margin-left: 2rem !important;
}
.mdl-grid:nth-child(3) .mdl-cell--4-col {
	    margin-right: 2rem !important;
}
.dt-table{
display: block !important;
height: 100%;
}
.modal {
    width: 100% !important;
}
.required{
	color:red;
}
.my-error-class {
 	 color:red;
}
.my-valid-class {
 	 color:green;
}
.select2-container--default .select2-selection--single .select2-selection__arrow b {
     left: -25% !important;
    margin-top: 1p% !important;
}
body {
    font-family: var(--bs-body-font-family) !important;
}
.dark-layout h1, .dark-layout h2, .dark-layout h3, .dark-layout h4, .dark-layout h5, .dark-layout h6, .dark-layout span  {
    color: #D0D2D6;
}
.select2-container--classic .select2-selection--single .select2-selection__arrow b, .select2-container--default .select2-selection--single .select2-selection__arrow b {
    background-image: url(data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 24 24\' fill=\'none\' stroke=\'%23d8d6de\' stroke-width=\'2\' stroke-linecap=\'round\' stroke-linejoin=\'round\' class=\'feather feather-chevron-down\'%3E%3Cpolyline points=\'6 9 12 15 18 9\'%3E%3C/polyline%3E%3C/svg%3E);
    background-size: 18px 14px,18px 14px !important;
    background-repeat: no-repeat !important;
    height: 1rem !important;
    padding-right: 1.5rem !important;
    margin-left: 0 !important;
    margin-top: 0 !important;
    left: -8px !important;
    border-style: none !important;
}

button.disabled {
  pointer-events: none; /* Disable pointer events to prevent interaction */
  background-color: #e1dcdc; /* Change background color to a muted color */
  color: #666; /* Change text color to a muted color */
  cursor: not-allowed; /* Change cursor to indicate it's not clickable */
  opacity: 0.5; /* Reduce opacity to visually indicate it's disabled */
  /* Add any other styles as needed */
}





  </style>
    <script>
      /**
       * THIS SCRIPT REQUIRED FOR PREVENT FLICKERING IN SOME BROWSERS
       */
      localStorage.getItem("_x_darkMode_on") === "true" &&
        document.documentElement.classList.add("dark");
    </script>
  </head>

  <body x-data class="is-header-blur" x-bind="$store.global.documentBody">
    <!-- App preloader-->
    <div class="app-preloader fixed z-50 grid h-full w-full place-content-center bg-slate-50 dark:bg-navy-900" >
      <div class="app-preloader-inner relative inline-block h-48 w-48"></div>
    </div>

    <!-- Page Wrapper -->
    <div
      id="root"
      class="min-h-100vh flex grow bg-slate-50 dark:bg-navy-900"
      x-cloak
    >
      <!-- Sidebar -->
      <div class="sidebar print:hidden">
        <!-- Main Sidebar -->
        <div class="main-sidebar">
          <div
            class="flex h-full w-full flex-col items-center border-r border-slate-150 bg-white dark:border-navy-700 dark:bg-navy-800"
          >
            <!-- Application Logo -->
            <div class="flex pt-4">
              <a href="<%=request.getContextPath() %>/home">
                <img
                  class="h-11 w-11 transition-transform duration-500 ease-in-out hover:rotate-[360deg]"
                  src="/index/resources/images/app-logo.svg"
                  alt="logo"
                />
              </a>
            </div>

            <!-- Main Sections Links -->
 			<jsp:include page="../views/layout/header.jsp"></jsp:include> 

            <!-- Bottom Links -->
            <div class="flex flex-col items-center space-y-3 py-3">
              <!-- Settings -->
             <a
               href="<%=request.getContextPath() %>/settings"
                class="flex h-11 w-11 items-center justify-center rounded-lg outline-none transition-colors duration-200 hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
              >
                <svg
                  class="h-7 w-7"
                  viewBox="0 0 24 24"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    fill-opacity="0.3"
                    fill="#e21e26"
                    d="M2 12.947v-1.771c0-1.047.85-1.913 1.899-1.913 1.81 0 2.549-1.288 1.64-2.868a1.919 1.919 0 0 1 .699-2.607l1.729-.996c.79-.474 1.81-.192 2.279.603l.11.192c.9 1.58 2.379 1.58 3.288 0l.11-.192c.47-.795 1.49-1.077 2.279-.603l1.73.996a1.92 1.92 0 0 1 .699 2.607c-.91 1.58-.17 2.868 1.639 2.868 1.04 0 1.899.856 1.899 1.912v1.772c0 1.047-.85 1.912-1.9 1.912-1.808 0-2.548 1.288-1.638 2.869.52.915.21 2.083-.7 2.606l-1.729.997c-.79.473-1.81.191-2.279-.604l-.11-.191c-.9-1.58-2.379-1.58-3.288 0l-.11.19c-.47.796-1.49 1.078-2.279.605l-1.73-.997a1.919 1.919 0 0 1-.699-2.606c.91-1.58.17-2.869-1.639-2.869A1.911 1.911 0 0 1 2 12.947Z"
                  />
                  <path
                    fill="#e21e26"
                    d="M11.995 15.332c1.794 0 3.248-1.464 3.248-3.27 0-1.807-1.454-3.272-3.248-3.272-1.794 0-3.248 1.465-3.248 3.271 0 1.807 1.454 3.271 3.248 3.271Z"
                  />
                </svg>
              </a> 

              <!-- Profile -->
              <div
                x-data="usePopper({placement:'right-end',offset:12})"
                @click.outside="isShowPopper && (isShowPopper = false)"
                class="flex"
              >
                <button
                  @click="isShowPopper = !isShowPopper"
                  x-ref="popperRef"
                  class="avatar h-12 w-12"
                >
                  <img
                    class="rounded-full"
                    src="${sessionScope.USER_IMAGE }"
                    alt="avatar"
                  />
                  <span
                    class="absolute right-0 h-3.5 w-3.5 rounded-full border-2 border-white bg-success dark:border-navy-700"
                  ></span>
                </button>

                <div
                  :class="isShowPopper && 'show'"
                  class="popper-root fixed"
                  x-ref="popperRoot"
                >
                  <div
                    class="popper-box w-64 rounded-lg border border-slate-150 bg-white shadow-soft dark:border-navy-600 dark:bg-navy-700"
                  >
                    <div
                      class="flex items-center space-x-4 rounded-t-lg bg-slate-100 py-5 px-4 dark:bg-navy-800"
                    >
                      <div class="avatar h-14 w-14">
                        <img
                          class="rounded-full"
                          src="${sessionScope.USER_IMAGE }"
                          alt="avatar"
                        />
                      </div>
                      <div>
                        <a
                          href="#"
                          class="text-base font-medium text-slate-700 hover:text-re focus:text-re dark:text-navy-100 dark:hover:text-accent-light dark:focus:text-accent-light"
                        >
                          ${sessionScope.USER_NAME }
                        </a>
                        <p class="text-xs text-slate-400 dark:text-navy-300">
                          ${sessionScope.BASE_ROLE }
                        </p>
                      </div>
                    </div>
                    <div class="flex flex-col pt-2 pb-5">
                      <a
                        href="#"
                        class="group flex items-center space-x-3 py-2 px-4 tracking-wide outline-none transition-all hover:bg-slate-100 focus:bg-slate-100 dark:hover:bg-navy-600 dark:focus:bg-navy-600"
                      >
                     <!--    <div
                          class="flex h-8 w-8 items-center justify-center rounded-lg bg-warning text-white"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-4.5 w-4.5"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                            stroke-width="2"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
                            />
                          </svg>
                        </div>

                        <div>
                          <h2
                            class="font-medium text-slate-700 transition-colors group-hover:text-re group-focus:text-re dark:text-navy-100 dark:group-hover:text-accent-light dark:group-focus:text-accent-light"
                          >
                            Profile
                          </h2>
                          <div
                            class="text-xs text-slate-400 line-clamp-1 dark:text-navy-300"
                          >
                            Your profile setting
                          </div>
                        </div> -->
                      </a>
                     
                      <div class="mt-3 px-4">
                       <button class="btn h-9 w-full g_id_signout space-x-2 bg-primary text-white hover:bg-primary-focus 
                        focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90" 
                         id="signout_button"  >
                          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path>
                          </svg>
                          <i class="me-50" data-feather="power"></i> Logout
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

     
     <main class="main-content w-full p-6 pb-8">
     
       <div class="flex items-center space-x-4 py-5 lg:py-6 p-6">
          <h2 class=" sm:text-sm font-medium text-slate-800 dark:text-navy-50 lg:text-2xl">
            Power BI
          </h2> 
          <div class=" h-full py-1 sm:flex">
            <div class="h-full w-px bg-slate-300 dark:bg-navy-600"></div>
          </div>
          <ul class=" flex-wrap items-center space-x-2 sm:flex">
            <li class="flex items-center space-x-2">
              <a x-tooltip.placement.top-end.success="'Go Back to Settings Page'" class="text-primary transition-colors hover:text-primary-focus dark:text-accent-light dark:hover:text-accent" href="<%=request.getContextPath() %>/settings">Masters</a>
              <svg x-ignore="" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 hidden sm:flex" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
              </svg>
            </li>
            <li class="hidden sm:flex">Power BI</li>
          </ul>
         
        </div>
      <div class="p-4 sm:p-5">
            <div class="mt-4 grid grid-cols-12 gap-4 sm:mt-5 sm:gap-5 lg:mt-6 lg:gap-6">
          
          <div class="col-span-12 lg:col-span-4 xl:col-span-3 px-4 py-3 sm:px-5">
            <div class="grid grid-cols-2 gap-4 sm:grid-cols-2 sm:gap-5 lg:grid-cols-2 lg:gap-6">
                <div x-data="{showModal:false}">
                
                    <button x-tooltip.placement.top-end.success="'Add New Record'"  @click="showModal = true" class="btn space-x-2 bg-primary font-medium text-white shadow-lg shadow-primary/50 hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:shadow-accent/50 dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90" style="margin-top: 17px; color: white !important; background-color: orange !important; width: 100%;">
                  <i class="fa fa-add" aria-hidden="true"></i>  &nbsp;Add
                </button>
             <template x-teleport="#x-teleport-target" data-teleport-template="true">
                    <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                      <div class="absolute inset-0 bg-slate-900/60 transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                      <div class="scrollbar-sm relative flex max-w-md flex-col overflow-y-auto rounded-lg bg-white pt-10 pb-4 text-center transition-all duration-300 dark:bg-navy-700" x-show="showModal" x-transition:enter="easy-out" x-transition:enter-start="opacity-0 [transform:translate3d(0,1rem,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" x-transition:leave="easy-in" x-transition:leave-start="opacity-100 [transform:translate3d(0,0,0)]" x-transition:leave-end="opacity-0 [transform:translate3d(0,1rem,0)]">
                       <div class="col-span-12 sm:col-span-8">
            <div class="card p-4 sm:p-5">
              <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                Add New Dashboard
              </p>
              <div class="mt-4 space-y-4">
                <form id="addPowerBIForm"  class="row gy-1 pt-75" action="<%=request.getContextPath() %>/add-bi" method="post" class="form-horizontal" role="form" >
                
                    <label class="block  text-left">
                    <span>Owner</span><span class="required"> *</span>
                  <select
                   id="select2-owner_add-container"
              name="owner"
                   class=" select2 form-select form-select3 mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent">
                   <option value="">Select Owner</option>
              <c:forEach var="obj" items="${userList}">
					<option value="${obj.user_id }" >[${obj.user_id }] - ${obj.user_name }</option>
				</c:forEach>
                  </select>
                               <span id="select2-owner_edit-containerError" class="error-msg" ></span>
                  
                  </label>
                
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                  <label class="block  text-left">
                    <span>Dashboard Name </span><span class="required"> *</span>
                    <span class="relative mt-1.5 ">
                      <input 
                       id="bi_name_add"
              		   name="bi_name" 
                      class="form-control form-input peer w-full rounded-lg border border-slate-300 
                      bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 
                      focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" style="
    color: black;" placeholder="eg : RE"  type="text">
                     
                    </span>
                     <span class="required" id="PowerBI_code_addError"></span>
                  </label>
                 <label class="block  text-left">
                    <span>Status</span><span class="required"> *</span>
                    
                  <select
                   id="select2-status_add-container"
              		name="status" 
                   class=" select2 form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400
                    focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"style="
    color: black;">
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                  </select>
                  </label>
                </div>
                <label class="block  text-left">
                 <span>Dashboard Link </span><span class="required"> *</span>
                  <span class="relative mt-1.5 ">
                    <input 
                      id="bi_name_add"
		              name="bi_link" 
                    class=" form-control form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 
                    placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400
                     dark:focus:border-accent"style="
    color: black;" placeholder="eg : Re Sustainablity" type="text"/>
                   <span id="bi_name_addError"></span>
                    
                  </span>
                </label>
               
                
                 <div class="flex justify-center space-x-2 pt-4">
                 <button type="button" class="btn mt-6 bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus
                  active:bg-primary-focus/90"   onclick="addPowerBI()">
                    <span>Add </span>
                  </button>
                  <a @click="showModal = false" class="btn mt-6 bg-slate-150 font-medium text-slate-800 hover:bg-slate-800-focus focus:bg-slate-150-focus active:bg-slate-800-focus/90">
                    Discard
                  </a>
                </div>
                 </form>
              </div>
            </div>
          </div>
          </div>
          </div>
            </template>
                </div>
            </div>
          </div> 
        </div>
              
              
              </div>
		<br>
		
          <div class="row">

            <div class="card mt-3">
		     <div class="card invoice-list-wrapper">
		      <div class="card-datatable table-responsive">
		       <div class="dt-buttons" style="height : 0.5em;">
		      
		        </div>
                <table class="invoice-list-table table is-zebra w-full text-left" id="datatable-PowerBI">
                  <thead>
                    <tr>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        #
                      </th>
                    <%--  <c:if test="${sessionScope.ROLE eq 'Admin' }" > --%>
                       <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Action
                      </th>
                      <%-- </c:if> --%>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Owner
                      </th>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Dashboard
                      </th>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Created By
                      </th>
                        <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Status
                      </th>
                       
                    </tr>
                  </thead>
                  <tbody class="text-center">
                    
                  </tbody>
                </table>
              </div>
              </div>
            </div>
          </div>
          
              </div>
         
        
      </main>
       
     <div x-data="{showModal:false}">
       <button style="display : none"; @click="showModal = true"  id="updateModal" class="btn bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent 
                    dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90" style="margin-top: 17px; color: white !important; background-color: orange !important; width: 100%;">
                  <i class="fa fa-add" aria-hidden="true"></i>  &nbsp;Add
                </button>
                  <template x-teleport="#x-teleport-target" data-teleport-template="true">
                    <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                      <div class="absolute inset-0 bg-slate-900/60 transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                      <div class="scrollbar-sm relative flex max-w-md flex-col overflow-y-auto rounded-lg bg-white pt-10 pb-4 text-center transition-all duration-300 dark:bg-navy-700" x-show="showModal" x-transition:enter="easy-out" x-transition:enter-start="opacity-0 [transform:translate3d(0,1rem,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" x-transition:leave="easy-in" x-transition:leave-start="opacity-100 [transform:translate3d(0,0,0)]" x-transition:leave-end="opacity-0 [transform:translate3d(0,1rem,0)]">
                       <div class="col-span-12 sm:col-span-8">
            <div class="card p-4 sm:p-5">
              <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                update Power BI
              </p>
              <div class="mt-4 space-y-4">
        <form id="updatePowerBIForm" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/update-PowerBI" method="post" class="form-horizontal" role="form" >
                  <label class="block  text-left">
                    <span>Owner</span><span class="required"> *</span>
                  <select
                   id="select2-owner_edit-container"
              name="owner"
                   class=" select2 form-select form-select3 mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent">
                   <option value="">Select Owner</option>
              <c:forEach var="obj" items="${userList}">
					<option value="${obj.user_id }" >[${obj.user_id }] - ${obj.user_name }</option>
				</c:forEach>
                  </select>
                               <span id="select2-owner_edit-containerError" class="error-msg" ></span>
                  
                  </label>
                <label class="block  text-left">
                 <span>Power BI </span><span class="required"> *</span>
                  <span class="relative mt-1.5 flex">
                    <input 
                     type="text"
              id="PowerBI_code_edit"
              name="PowerBI_code"
                    class=" form-control form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="eg : Re Sustainablity" type="text">
                    <span class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent">
                      <i class="fa-regular fa-building text-base"></i>
                    </span>
                  </span>
                  <span id="PowerBI_code_editError" class="error-msg" ></span>
                  
                </label>
                <label class="block  text-left">
                 <span>Power BI Name</span><span class="required"> *</span>
                  <span class="relative mt-1.5 flex">
                    <input 
                      type="text"
              id="PowerBI_name_edit"
              name="PowerBI_name"
                    class=" form-control form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="eg : Re Sustainablity" type="text">
                    <span class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent">
                      <i class="fa-regular fa-building text-base"></i>
                    </span>
                  </span>
                         <span id="PowerBI_name_editError" class="error-msg" ></span>
            
                </label>
                 <input type="hidden" id="id" name="id" />
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                
                 <label class="block  text-left" style="
   
    padding-top: 1rem;">
                    <span>Status</span><span class="required"> *</span>
                  <select
                  id="select2-status_edit-container"
              name="status"
                   class=" select2 form-select form-select3 mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent">
                  <option value="">Select Status</option>
             	<option value="Active">Active</option>
             	<option value="Inactive">Inactive</option>
                  </select>
                  </label>
                </div>
              
                <div class="flex justify-center space-x-2 pt-4">
                 <button class="btn mt-6 bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90" id="addBtn" onclick="addCompany();">
                    <span>update </span>
                   
                  </button>
                  <a  id="toggleElementButton" class="btn mt-6 bg-slate-150 font-medium text-slate-800 hover:bg-slate-800-focus focus:bg-slate-150-focus active:bg-slate-800-focus/90">
                          Discard
                        </a>
                 
                </div>
                  </form>
              </div>
            </div>
          </div>
                       
                       
                      </div>
                    </div>
                  </template>
                </div>
           
      


     <!--  <div
        class="fixed right-3 bottom-3 rounded-full bg-white dark:bg-navy-700"
      >
        <button
          @click="$dispatch('show-drawer', { drawerId: 'pos-card-drawer' })"
          class="btn h-14 w-14 rounded-full bg-warning p-0 font-medium text-white hover:bg-warning-focus focus:bg-warning-focus active:bg-warning-focus/90 sm:hidden"
        >
          $60
        </button>
      </div> -->
    </div>
    <!-- 
        This is a place for Alpine.js Teleport feature 
        @see https://alpinejs.dev/directives/teleport
      -->
    <div id="x-teleport-target"></div>
    <form action="<%=request.getContextPath() %>/logout" name="logoutForm" id="logoutForm" method="post">
		<input type="hidden" name="email" id="email"/>
	</form>
	 <script src="/index/resources/vendors/js/extensions/moment.min.js"></script>
    <script src="/index/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
 <script src="/index/resources/js/jquery-validation-1.19.1.min.js"  ></script>
     <script src="/index/resources/js/datetime-moment-v1.10.12.js"  ></script>
       <script src="/index/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/index/resources/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="/index/resources/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
      <script src="/index/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/index/resources/js/datetime-moment-v1.10.12.js"  ></script>
       <script src="/index/resources/js/jquery-validation-1.19.1.min.js"  ></script>
         <script src="/index/resources/js/dataTables.material.min.js"  ></script>
      <script src="/index/resources/js/moment-v2.8.4.min.js"  ></script>
        <script src="/index/resources/vendors/js/forms/select/select2.full.min.js"></script>
           <script src="/index/resources/js/scripts/forms/form-select2.min.js"></script>
<form action="<%=request.getContextPath()%>/export-PowerBI" name="exportPowerBIForm" id="exportPowerBIForm" target="_blank" method="post">	
      
        <input type="hidden" name="PowerBI_code" id="exportPowerBI_filter" />
        <input type="hidden" name="owner" id="exportCompany_Code_filter" />
            <input type="hidden" name="status" id="exportStatus_filter" />
	</form>
	
    <script>
      window.addEventListener("DOMContentLoaded", () => Alpine.start());
  $(window).on("load",(function(){
	  $('select').select2(); 
          getPowerBIList();
         }));
      
      function clearFilter(){
		    	$("#select2-PowerBI_filter-container").val(""); 
		    	$("#select2-owner_filter-container").val("");
		    	$("#select2-status_filter-container").val("");
		    	window.location.href= "<%=request.getContextPath()%>/PowerBI";
	    }
      
      function getPowerBIFilterList() {
	        var PowerBI_code = $("#select2-PowerBI_filter-container").val();
	        var owner = $("#select2-owner_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        if ($.trim(PowerBI_code) == "") {
	        	$("#select2-PowerBI_filter-container option:not(:first)").remove();
	        	var myParams = { PowerBI_code: PowerBI_code, owner: owner, status :status };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getPowerBIFilterList",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-PowerBI_filter-container").append('<option value="' + val.PowerBI_code + '">'+ "[ "+$.trim(val.PowerBI_code) +" ]"+" - " + $.trim(val.PowerBI_name) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }
      function getCompanyFilterList() {
    	  var PowerBI_code = $("#select2-PowerBI_filter-container").val();
	        var owner = $("#select2-owner_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        if ($.trim(owner) == "") {
	        	$("#select2-owner_filter-container option:not(:first)").remove();
	        	var myParams = { PowerBI_code: PowerBI_code, owner: owner, status : status };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getCompanyFilterListFromPowerBI",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-owner_filter-container").append('<option value="' + val.owner + '">' + "[ "+$.trim(val.owner) +" ]"+" - " + $.trim(val.user_name)  +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }

      function getStatusFilterList() {
    	  var PowerBI_code = $("#select2-PowerBI_filter-container").val();
	        var owner = $("#select2-owner_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        if ($.trim(status) == "") {
	        	$("#select2-status_filter-container option:not(:first)").remove();
	        	var myParams = { PowerBI_code: PowerBI_code, owner: owner, status : status };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getStatusFilterListFromPowerBI",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-status_filter-container").append('<option value="' + val.status + '">' + $.trim(val.status) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }

      
	    function exportPowerBI(){
	    	 var PowerBI_code = $("#select2-PowerBI_filter-container").val();
	         var owner = $("#select2-owner_filter-container").val();
	         var status = $("#select2-status_filter-container").val();
	    	
	    	 $("#exportPowerBI_filter").val(PowerBI_code);
	     	 $("#exportCompany_Code_filter").val(owner);
	     	$("#exportStatus_filter").val(owner);
	     	 $("#exportPowerBIForm ").submit();
	  	}
	    
	    
	    function getPowerBIList(){
	    	
	     	table = $('#datatable-PowerBI').DataTable();
			table.destroy();
			$.fn.dataTable.moment('DD-MMM-YYYY');
			table = $('#datatable-PowerBI').DataTable({
				"bStateSave": true,  
	     		fixedHeader: true,
	         	//Default: Page display length
					"iDisplayLength" : 10,
					"iData" : {
						"start" : 52
					},"iDisplayStart" : 0,
					"drawCallback" : function() {
					},
					   columnDefs: [
			            	{
			                    targets: [0, 1, 2, 3, 4, 5],
			                    className: ' px-3 py-3 font-medium text-slate-700 dark:text-navy-100 lg:px-5 '
			                  
			                }
			            ],
			            rowCallback: function(row, data, index) {
			                // Check a condition based on a column value
			                  $(row).addClass('border-y border-transparent border-b-slate-200 dark:border-b-navy-500');
			            },
	            // "ScrollX": true,
	            //"scrollCollapse": true,
	            "sScrollX": "100%",
	            "sScrollXInner": "100%",
	            "bScrollCollapse": true,
	            "initComplete" : function() {
					}
	        }).rows().remove().draw();
			table.state.clear();		
		 	var myParams = {PowerBI_code: PowerBI_code, owner: owner, status : status};
			$.ajax({url : "<%=request.getContextPath()%>/ajax/getbiList",type:"POST",data:myParams,success : function(data){    				
					if(data != null && data != '' && data.length > 0){    					
		         		$.each(data,function(key,val){
		         			var PowerBI_data = "'"+val.PowerBI_code+"','"+val.owner+"','"+val.PowerBI_name+"','"+val.id+"','"+val.status+"'";
		                    var actions = '<a href="javascript:void(0);"  @click="showModal = true"  onclick="getPowerBI('+PowerBI_data+');" class="btn btn-primary"  title="Edit"><i class="fa fa-pencil"></i></a>';    	                   	
		                    key++;
		                    var rowArray = [];    	                 
		                 
		            		rowArray.push($.trim(key));
		                   	
		                	rowArray.push($.trim(actions));  
		                   	rowArray.push($.trim(val.owner));
		                   	rowArray.push($.trim(val.user_name));
		                 	rowArray.push($.trim(val.created_by));
		                   	var status = $.trim(val.status);
		                	if (status == 'Active') {
		                		status = '<p class="badge bg-success/10 text-success dark:bg-success/15">'+$.trim(val.status)+' </p>'
	                		} else {
	                			status = '<p class="badge bg-error/10 text-error dark:bg-error/15">'+$.trim(val.status)+' </p>'
	                		}
		                   	rowArray.push(status);
		                   
		                    table.row.add(rowArray).draw( true );
						});
					}
				},error: function (jqXHR, exception) {
		         	getErrorMessage(jqXHR, exception);
		     }});
	    } 
	    
	    function getPowerBI(PowerBI_code,owner,PowerBI_name,id,status){
	    	 $("#updateModal").click();
	    	 $('#PowerBI_name_edit').val('');
			 $('#PowerBI_code_edit').val('');
			 $('select[name^="owner"] option:selected').removeAttr("selected");
			 $('select[name^="status"] option:selected').removeAttr("selected");
		      $('#id').val($.trim(id));
		      $('#updatePowerBIForm #PowerBI_name_edit').val($.trim(PowerBI_name)).focus();
		      $('#updatePowerBIForm #PowerBI_code_edit').val($.trim(PowerBI_code)).focus();
		      if(owner != null && owner != ''  && owner != "undefined"){
		    	  $('select[name^="owner"] option[value="'+ owner +'"]').attr("selected",true);
		    	  $('select[name^="status"] option[value="'+ status +'"]').attr("selected",true);
		    	  $('.form-select3').select2();
		      }
	   }
	    
	    function getErrorMessage(jqXHR, exception) {
	  	    var msg = '';
	  	    if (jqXHR.owner === 0) {
	  	        msg = 'Not connect.\n Verify Network.';
	  	    } else if (jqXHR.owner == 404) {
	  	        msg = 'Requested page not found. [404]';
	  	    } else if (jqXHR.owner == 500) {
	  	        msg = 'Internal Server Error [500].';
	  	    } else if (exception === 'parsererror') {
	  	        msg = 'Requested JSON parse failed.';
	  	    } else if (exception === 'timeout') {
	  	        msg = 'Time out error.';
	  	    } else if (exception === 'abort') {
	  	        msg = 'Ajax request aborted.';
	  	    } else {
	  	        msg = 'Uncaught Error.\n' + jqXHR.responseText;
	  	    }
	  	    console.log(msg);
        }
	    
	    function addPowerBI(){
	    	
	    	 var validator =	$('#addPowerBIForm').validate({
	    	   	 errorClass: "my-error-class",
	    	   	 validClass: "my-valid-class",
	    	   	 ignore: ":hidden:not(.select2 form-select)",
	    	   		    rules: {
	    	   		 		  "bi_name_add": {										
	    	   			 			required: true
	    	   			 	  },"owner": {
	    	   	                 	required: true,
	    	   			 	  },"status": {
	    	   	                 	required: true,
	    	   			 	  }
	    	   		 	},
	    	   		    messages: {
	    	   		 		"bi_name_add": {
	    	   			 		required: 'Required'
	    	   			 	  },"owner": {
	    	   		 			required: 'Required'
	    	   		 	  	  },"status": {
	    		   		 		required: 'Required'
	    	   		 	  	  }
	    	      		},
	    	      		errorPlacement:function(error, element){
	    	      		 /*	if (element.attr("id") == "PowerBI_name_add" ){
	    	      		 		$("#PowerBI_name_addError").html("");
	    	   				 //document.getElementById("PowerBI_name_addError").innerHTML="";
	    	   		 		 error.appendTo('#PowerBI_name_addError');
	    	   			}else if(element.attr("id") == "PowerBI_code_add" ){
	    	   				$("#PowerBI_code_addError").html("");
	    	   				
	    	   			  // document.getElementById("PowerBI_code_addError").innerHTML="";
	    	   		 	   error.appendTo('#PowerBI_code_addError');
	    	   			}else if(element.attr("id") == "select2-owner_add-container" ){
	    	   				document.getElementById("select2-owner_add-containerError").innerHTML="";
	    	   			 	error.appendTo('#select2-owner_add-containerError');
	    	   			}else if(element.attr("id") == "select2-status_add-container" ){
	    	   				document.getElementById("select2-status_add-containerError").innerHTML="";
	    	   			 	error.appendTo('#select2-status_add-containerError');
	    	   			}else{*/
	    	   					error.insertAfter(element);
	    	   	       // } 
	    	      		},invalidHandler: function (form, validator) {
	    	               var errors = validator.numberOfInvalids();
	    	               console.log('invalidHandler',errors);
	    	               if (errors) {
	    	                   var position = validator.errorList[0].element;
	    	                   jQuery('html, body').animate({
	    	                       scrollTop:jQuery(validator.errorList[0].element).offset().top - 100
	    	                   }, 1000);
	    	               }
	    	           },submitHandler:function(form){
	    	        	   console.log('submit handler')
	    	   	    }
	    	   	}); 
	    	 console.log(validator.form());
	    	if(validator.form()){ // validation perform
	        	document.getElementById("addPowerBIForm").submit();	
	    	}
	    }
	    function updatePowerBI(){
	    	if(validator1.form()){ // validation perform
	        	document.getElementById("updatePowerBIForm").submit();	
	    	}
	    }
	    var validator1 =	$('#updatePowerBIForm').validate({
		   	 errorClass: "my-error-class",
		   	 validClass: "my-valid-class",
		   	 ignore: ":hidden:not(.select2 form-select)",
		   		    rules: {
		   		 		  "PowerBI_name": {
		   			 			required: true
		   			 	  },"PowerBI_code": {										
		   			 			required: true
		   			 	  },"owner": {
		   	                 	required: true,
		   			 	  },"status": {
		   	                 	required: true,
		   			 	  }
		   		 	},
		   		    messages: {
		   		 		 "PowerBI_name": {
		   				 	required: 'Required',
		   			 	  },"PowerBI_code": {
		   			 		required: 'Required'
		   			 	  },"owner": {
		   		 			required: 'Required'
		   		 	  	  },"status": {
		   		 			required: 'Required'
		   		 	  	  }
		      		},
		      		errorPlacement:function(error, element){
		      		 	if (element.attr("id") == "PowerBI_name_edit" ){
		   				 document.getElementById("PowerBI_name_editError").innerHTML="";
		   		 		 error.appendTo('#PowerBI_name_editError');
		   			}else if(element.attr("id") == "PowerBI_code_edit" ){
		   			   document.getElementById("PowerBI_code_editError").innerHTML="";
		   		 	   error.appendTo('#PowerBI_code_editError');
		   			}else if(element.attr("id") == "select2-owner_edit-container" ){
		   				document.getElementById("select2-owner_edit-containerError").innerHTML="";
		   			 	error.appendTo('#select2-owner_edit-containerError');
		   			}else if(element.attr("id") == "select2-status_edit-container" ){
		   				document.getElementById("select2-status_edit-containerError").innerHTML="";
		   			 	error.appendTo('#select2-status_edit-containerError');
		   			}else{
		   					error.insertAfter(element);
		   	        } 
		      		},invalidHandler: function (form, validator) {
		               var errors = validator.numberOfInvalids();
		               if (errors) {
		                   var position = validator.errorList[0].element;
		                   jQuery('html, body').animate({
		                       scrollTop:jQuery(validator.errorList[0].element).offset().top - 100
		                   }, 1000);
		               }
		           },submitHandler:function(form){
		   	    	//form.submit();
		   	    }
		   	});
	   
	   	$('.formSelect').change(function(){
	   	    if ($(this).val() != ""){
	   	        $(this).valid();
	   	    }
	   	});
	   	
	   	$('input').change(function(){
	   	    if ($(this).val() != ""){
	   	        $(this).valid();
	   	    }
	   	});
	   	function addBox(){
	   		$('select[name^="status"] option:selected').removeAttr("selected");
	   		$('select').select2();
	   	}
	   	
	 	function checkUniqueId(){
	   		var PowerBI_code = $('#PowerBI_code_add').val();
	        if ($.trim(PowerBI_code) != "" ) {
	        	var myParams = {PowerBI_code: PowerBI_code };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/checkUniqueIfForPowerBI",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
		                      $("#PowerBI_code_addError").html(PowerBI_code+" Already Exists!").css("color","red");
		                      $('#PowerBI_code_add').removeClass("is-valid")
		                      $('#PowerBI_code_add').addClass("is-invalid")
		                      $("#addBtn").prop("disabled",true);
	                    	});
	                     }else{
	                    	  $("#PowerBI_code_addError").text("");
	                    	  $('#PowerBI_code_add').removeClass("is-invalid")
		                      $('#PowerBI_code_add').addClass("is-valid")
		                      $("#addBtn").prop("disabled",false);
	                     }           
	                    
	                    },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	   		
	   		
	   	}
      </script>
  </body>
</html>
