<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from lineone.piniastudio.com/dashboards-authors.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 04:55:24 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <!-- Meta tags  -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
    />

    <title>PurpleWest - Admin Dashboard</title>
    <link rel="icon" type="image/png"  href="/courses/resources/images/favicon.png" />
 <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <!-- CSS Assets -->
    <link rel="stylesheet"  href="/courses/resources/css/app.css" />

    <!-- Javascript Assets -->
    <script src="/courses/resources/js/app.js" defer></script>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/" />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap"
      rel="stylesheet"
    />
    <script>
      /**
       * THIS SCRIPT REQUIRED FOR PREVENT FLICKERING IN SOME BROWSERS
       */
      localStorage.getItem("_x_darkMode_on") === "true" &&
        document.documentElement.classList.add("dark");
    </script>
    <style type="text/css">
   .razorpay-popup-model {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.6);
  z-index: 9999;
  display: flex;
  justify-content: center;
  align-items: center;
}

/* style the form element */
.razorpay-popup-model form {
  background-color: #fff;
  border-radius: 4px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
  padding: 20px;
  width: 400px;
  max-width: 100%;
  box-sizing: border-box;
}

/* style the input field */
.razorpay-popup-model input[type="number"] {
  border: 1px solid #ccc;
  border-radius: 4px;
  padding: 8px;
  margin-bottom: 10px;
  width: 100%;
  box-sizing: border-box;
}

    </style>
  </head>

  <body x-data class="is-header-blur" x-bind="$store.global.documentBody">
    <!-- App preloader-->
    <div
      class="app-preloader fixed z-50 grid h-full w-full place-content-center bg-slate-50 dark:bg-navy-900"
    >
      <div class="app-preloader-inner relative inline-block h-48 w-48"></div>
    </div>

    <!-- Page Wrapper -->
    <div
      id="root"
      class="min-h-100vh flex grow bg-slate-50 dark:bg-navy-900"
      x-cloak
    >
      <!-- Sidebar -->
    	<jsp:include page="../views/layout/header.jsp"></jsp:include> 
    
 
      <!-- Main Content Wrapper -->
      <main class="main-content w-full pb-8">
       
        <div class="flex">
        
          <div class="swiper mx-0 mt-4 px-[var(--margin-x)] transition-all duration-[.25s] swiper-initialized swiper-horizontal swiper-backface-hidden" 
          x-init="$nextTick(()=>new Swiper($el,{  slidesPerView: 'auto', spaceBetween: 18}))">
         
				
            <div class="swiper-wrapper" id="swiper-wrapper-d1043e7a3ad88c309" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
               <div class="swiper-wrapper" id="swiper-wrapper-d1043e7a3ad88c309" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
             <c:if test="${fn:length(myCoursessList) gt 0}">
            <c:forEach var="obj" items="${myCoursessList}">
              <div class="card swiper-slide flex w-72 shrink-0 justify-between rounded-xl border-l-4 border-primary p-4 swiper-slide-active" role="group" aria-label="1 / 6" style="margin-right: 18px;">
                <div>
                  <p class="font-medium tracking-wide text-slate-700 line-clamp-2 dark:text-navy-100">
                    ${obj.course_name }
                  </p> 
                  <a href="#" class="mt-0.5 text-xs+ text-slate-400 hover:text-slate-800 dark:text-navy-300 dark:hover:text-navy-100">${obj.user_name }</a>
                </div>
                <div class="mt-6">
                  <div x-tooltip.primary="'25% Completed'" class="progress h-1 bg-slate-150 dark:bg-navy-500">
                    <div class="w-4/12 rounded-full bg-primary dark:bg-accent"></div>
                  </div>
                  <div class="mt-2 flex items-center justify-between text-primary dark:text-accent-light">
                    <p class="font-medium">Buy now</p>
                    <a href="#">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                      </svg>
                    </a>
                  </div>
                
                </div>
              </div>
               </c:forEach>
           </c:if>
            </div>
            </div>
            </div>
            <c:if test="${fn:length(myCoursessList) eq 0}">
             <div class="mt-1 px-[var(--margin-x)] transition-all duration-[.25s]">
		          <p class="text-base font-medium text-slate-600 dark:text-navy-100">
		          No Courses Available
		            <div class="mt-2 flex items-center justify-between text-primary dark:text-accent-light">
                    <p class="font-medium">Buy New Courses</p>
                    <a href="<%=request.getContextPath() %>/courses-for-student">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                      </svg>
                    </a>
                  </div>
		          </p>
		        </div>
            </c:if>
          <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
        </div>
   
        <div class="mt-5 px-[var(--margin-x)] transition-all duration-[.25s]">
          <p class="text-base font-medium text-slate-700 dark:text-navy-100">
            All Courses
          </p>
        </div>
         <div class="flex">
         
          <div class="swiper mx-0 mt-4 px-[var(--margin-x)] transition-all duration-[.25s] swiper-initialized swiper-horizontal swiper-backface-hidden" 
          style="padding-right: 0rem !important;" x-init="$nextTick(()=>new Swiper($el,{  slidesPerView: 'auto', spaceBetween: 18}))">
         
				
            <div class="swiper-wrapper" id="swiper-wrapper-d1043e7a3ad88c309" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
             <c:if test="${fn:length(allCoursessList) gt 0}">
            <c:forEach var="obj" items="${allCoursessList}">
              <div class="card swiper-slide flex w-72 shrink-0 justify-between rounded-xl border-l-4 border-primary p-4 swiper-slide-active" role="group" aria-label="1 / 6" style="margin-right: 18px;">
                <div>
                  <p class="font-medium tracking-wide text-slate-700 line-clamp-2 dark:text-navy-100">
                    ${obj.course_name }
                  </p> 
                  <a href="#" class="mt-0.5 text-xs+ text-slate-400 hover:text-slate-800 dark:text-navy-300 dark:hover:text-navy-100">${obj.user_name }</a>
                </div>

                <div class="mt-6">
                  <div x-tooltip.primary="'25% Completed'" class="progress h-1 bg-slate-150 dark:bg-navy-500">
                    <div class="w-4/12 rounded-full bg-primary dark:bg-accent"></div>
                  </div>

                  <div class="mt-2 flex items-center justify-between text-primary dark:text-accent-light">
                    <p class="font-medium">Buy now</p>
                    <a href="#">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                      </svg>
                    </a>
                  </div>
                
                </div>
              </div>
               </c:forEach>
           </c:if>
            </div>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
            </div>
            
            
           
         
          
        </div>
  </main>
    </div>
    <!-- 
        This is a place for Alpine.js Teleport feature 
        @see https://alpinejs.dev/directives/teleport
      -->
    <div id="x-teleport-target"></div>

    <script>
      window.addEventListener("DOMContentLoaded", () => Alpine.start());
     
    </script>
  </body>

<!-- Mirrored from lineone.piniastudio.com/dashboards-authors.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 04:55:25 GMT -->
</html>
