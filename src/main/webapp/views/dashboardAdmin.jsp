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

    <title>ReOne - Re Sustainability ONE</title>
    <link rel="icon" type="image/png" href="/index/resources/images/favicon.svg" />

    <!-- CSS Assets -->
    <link rel="stylesheet" href="/index/resources/css/app.css" />

    <!-- Javascript Assets -->
    <script src="/index/resources/js/app.js" defer></script>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/" />
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin />
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
           <script src="https://accounts.google.com/gsi/client" onload="initClient()" async defer></script>
         <script src="https://www.youtube.com/iframe_api"></script>
       
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap"
      rel="stylesheet"
    />
    <style>
    .pt-8{
    	    padding-top: 9%;
    	    padding-left: 3.25rem!important;
    }
    @media (min-width: 640px){
    .max-w-lg2{
    	max-width: 65rem;
    }
    .slm {
		    padding-left: 2.25rem!important;
		    padding-right: 1.25rem!important;
		}
	}
	  @media (max-width: 767px) {
    .sld {
		    padding: 2rem!important;
		}
	}
    .swiper-scrollbar-drag {
    background: transparent!important;
    border-radius: var(--swiper-scrollbar-border-radius,10px);
    height: 100%;
    left: 0;
    position: relative;
    top: 0;
    width: 100%;
}
    
       @media (min-width: 766px) and (max-width: 1200px){
      .qutt{
          width: 40rem!important;
      }
      
      }
       @media (min-width: 600px) and (max-width: 1200px){
      .qutt{
          width: 34rem!important;
      }
      
      } 
    .mgi{
     width: 43px; /* Set the desired width for the image */
  	height: auto;
    }
    .parent1 {
  display: grid;
  grid-template-columns: repeat(2, 1fr); /* Display two items in each row */
  justify-content: center; /* Optional, to center the items horizontally */
  grid-gap: 10px; /* Add some spacing between the items */
}

.child1 {
  background-color: #f0f0f0; /* Optional, add background color to the items */
}

   .parents {
 display: flex;
  justify-content: center;
}
#rewards{
width: 142px!important;
}
#news{
width: 123px!important;
}
.childs {
  display: inline-block;
  width: 221px; /* Optional, set a fixed width for child divs if needed */
  height: 100px; /* Optional, set a fixed height for child divs if needed */
  margin: 10px; /* Optional, add some spacing between the child divs */
}
    .cardT {
   	 box-shadow: none !important; 
   	 background-color: transparent!important;
   	 
   	 
	}
     @media (min-width: 1024px) {
     .pc{
         height: 34rem;
     }
     #mobileClass2{
    	display:none;
    }
     .h-custom{
      	height: 5rem;
      }
      .qut{
        position: absolute;
    top: -1rem;
    width: 22rem;
    right: 0rem;
    }
     #qut{
         padding-bottom: 1rem !important;
    	 padding-top: 1rem !important;
     }
     }
   
    .bg-slate-2000 {
    background-color: #ffffff;
}
    .cardsRight{
    	    right: -2rem ;
    	    height: 6rem;
    }
    .containers {
  display: flex;
  justify-content: center; /* Optional, to center the spans horizontally */
}
.fa-lg1 {
    font-size: 4.25em;
    line-height: 1.05em;
    vertical-align: -0.075em;
    color: #d32727;
}


.side-by-side {
  margin: 5px; /* Optional, add some spacing between the spans */
}
    .max-w-xl {
    max-width: 60rem!important;
}
    #mobileClass{
  	display: none;
  }
    .w-208{
    	width: 9rem !important;
    }
    @media (max-width: 767px) {
    #mobileClass2{
    	display:block;
    }
      .h-custom{
      	height: 0.25rem;
      }
    .cardsRight{
    	    right: 0rem;
    }
	  .reimagining {
	     
	    display: flex;
	    align-items: center;
	
	  }
	  #iconsCLass {
    display: none;
  }
  #mobileClass{
  	display: block;
  	width: 92% !important;
    height: 92% !important;
    padding-bottom: 0.5rem !important;
    padding-top: 0.5rem !important;
    padding-left: 3rem;
    left: 1rem !important;
}
.mblview{
  		width:100% !important;
  }
  }
  
  }
 .w-1w{
     width: 5.5rem !important;
 }
  
    .text-re{
    	color:#e21e26;
    }
    #clock {
      font-family: Arial, sans-serif;
      font-size: 18px;
      text-align: center;
      padding: 6px;
      color: #333;
    }
    .content{
        color: white;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    }
    a {
    color: blue;
    text-decoration: inherit;
}
  .container{
    overflow: hidden;
    z-index: 10;
    position: relative;
    height: 90px;
    width: 300px;
    background-color: #3935e2;
    border-radius: 10px;
    box-shadow: 2px 2px 1px rgba(0,0,0,0.2);
}
   #player-wrapper {
      position: relative;
      padding-bottom: 56.25%; /* 16:9 aspect ratio */
      height: 0;
    }

    #player {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
    }
 .loading-dots {
      font-size: 36px;
      text-align: center;
      animation: loading 1.5s infinite;
    }

    @keyframes loading {
      0% { content: ". "; }
      33% { content: ". . "; }
      66% { content: ". . . "; }
    }
/*  BACKGROUND  */

.Circle1{
    z-index: 100;
    position: absolute;
    height: 80px;
    width: 80px;
    right: -20px;
    top: -30px;
    border-radius: 50%;
    background-color: rgba(253,184,19,1);
    animation: enlarge;
    animation-duration: 5s;
    animation-iteration-count: infinite;
}

.Circle2{
    z-index: 80;
    position: absolute;
    height: 150px;
    width: 150px;
    right: -50px;
    top: -70px;
    border-radius: 50%;
    background-color: rgba(246,140,31,0.7);
    
    animation: enlarge;
    animation-duration: 7s;
    animation-iteration-count: infinite;
}

.Circle3{
    z-index: 50;
    position: absolute;
    height: 200px;
    width: 200px;
    right: -50px;
    top: -100px;
    border-radius: 50%;
    background-color: rgba(241,125,45,0.7);
    
    animation: enlarge;
    animation-duration: 10s;
    animation-iteration-count: infinite;
}



/*  CONTENT  */

.sun{
    z-index: 1000;
    font-size: 15px !important;
}

.Condition{
z-index: 1000;
    position: absolute;
    font-family: "Roboto", sans-serif;
    font-weight: 100;
    font-size: 20px;
    left: 54px;
    top: 9px;
}

.Temp{
   
        z-index: 1000;
    position: absolute;
    font-family: "Roboto", sans-serif;
    font-size: 27px;
    font-weight: 400;
    left: 20px;
    bottom: 19px;
}

#F{
    z-index: 1000;
    font-family: "Roboto",sans-serif;
    font-weight: 100;
    font-size: 30px;
}


.Time{
     z-index: 1000;
    position: absolute;
    font-family: "Noto Sans", sans-serif;
    font-size: 14px;
    font-weight: 200;
    right: 9px;
    top: 30px;
}

.locationIcon{
    z-index: 1000;
    font-size: 10px !important;
}

.Location{
    z-index: 1000;
    position: absolute;
    font-family: "Noto Sans", sans-serif;
    font-size: 12px;
    font-weight: 200;
    right: 20px;
    bottom: 15px;
}

@keyframes enlarge{
    50%{
        transform: scale(1.2);
    }
}

    .mb-4 {
    margin-bottom: 1.25rem;
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
               href="<%=request.getContextPath() %>/departments-master"
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



        <!-- Sidebar Panel -->
        <div class="sidebar-panel">
          <div
            class="flex h-full grow flex-col bg-white pl-[var(--main-sidebar-width)] dark:bg-navy-750"
          >
            <!-- Sidebar Panel Header -->
            <div class="flex h-18 w-full items-center justify-between pl-4 pr-1">
              <p class="text-base tracking-wider text-slate-800 dark:text-navy-100">
                All Functions
              </p>
              <button @click="$store.global.isSidebarExpanded = false" class="btn h-7 w-7 rounded-full p-0 text-primary hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:text-accent-light/80 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25 xl:hidden">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path>
                </svg>
              </button>
            </div>
            
            
          
            

            <!-- Sidebar Panel Body -->
            <div class="flex h-[calc(100%-4.5rem)] grow flex-col">
              <div class="is-scrollbar-hidden grow overflow-y-auto">
                <div class="mt-2 px-4">
                 
                </div>

                <div x-data="{expanded:true}">
                  <div class="mt-4 flex items-center justify-between px-4">
                    <span class="text-xs font-medium uppercase">Departments </span>
                    <div class="-mr-1.5 flex">
                      <button
                        @click="expanded =! expanded"
                        class="btn h-6 w-6 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                      >
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          class="h-3.5 w-3.5"
                          :class="expanded && 'rotate-180'"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke="#e21e26"
                          stroke-width="2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            d="M19 9l-7 7-7-7"
                          />
                        </svg>
                      </button>
                    </div>
                  </div>
                  <div x-show="expanded" x-collapse>
                    <ul
                      class="mt-1 space-y-1.5 px-2 font-inter text-xs+ font-medium"
                    >
                                <c:forEach var="obj" items="${departmentsList }"  varStatus="index">
                    
                      <li>
                        <a
                          class="group flex space-x-2 rounded-lg p-2 tracking-wide text-slate-800 outline-none transition-all hover:bg-slate-100 focus:bg-slate-100 dark:text-navy-100 dark:hover:bg-navy-600 dark:focus:bg-navy-600"
                           href="<%=request.getContextPath() %>${obj.common_url}/${obj.department_code}/${obj.department_name}"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-4.5 w-4.5 text-secondary dark:text-secondary-light"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                            stroke-width="1.5"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                            />
                          </svg>
                          <span>${obj.department_name }</span>
                        </a>
                      </li>
                       
                </c:forEach>
                      
                    </ul>
                    
                  </div>
                </div>
                
             
              </div>

              <div class="flex items-center spacex-3 p-4">
                
               
              </div>
            </div>
            
            
            
            
            
            
            
            
          </div>
        </div>
      </div>

      <!-- Right Sidebar -->
      <div
        x-show="$store.global.isRightSidebarExpanded"
        @keydown.window.escape="$store.global.isRightSidebarExpanded = false"
      >
        <div
          class="fixed inset-0 z-[150] bg-slate-900/60 transition-opacity duration-200"
          @click="$store.global.isRightSidebarExpanded = false"
          x-show="$store.global.isRightSidebarExpanded"
          x-transition:enter="ease-out"
          x-transition:enter-start="opacity-0"
          x-transition:enter-end="opacity-100"
          x-transition:leave="ease-in"
          x-transition:leave-start="opacity-100"
          x-transition:leave-end="opacity-0"
        ></div>
        <div class="fixed right-0 top-0 z-[151] h-full w-full sm:w-80">
          <div
            x-data="{activeTab:'tabHome'}"
            class="relative flex h-full w-full transform-gpu flex-col bg-white transition-transform duration-200 dark:bg-navy-750"
            x-show="$store.global.isRightSidebarExpanded"
            x-transition:enter="ease-out"
            x-transition:enter-start="translate-x-full"
            x-transition:enter-end="translate-x-0"
            x-transition:leave="ease-in"
            x-transition:leave-start="translate-x-0"
            x-transition:leave-end="translate-x-full"
          >
            <div class="flex items-center justify-between py-2 px-4">
              <p
                x-show="activeTab === 'tabHome'"
                class="flex shrink-0 items-center space-x-1.5"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"
                  />
                </svg>
                <span class="text-xs">25 May, 2022</span>
              </p>
              <p
                x-show="activeTab === 'tabProjects'"
                class="flex shrink-0 items-center space-x-1.5"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                  stroke-width="1.5"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M7 12l3-3 3 3 4-4M8 21l4-4 4 4M3 4h18M4 4h16v12a1 1 0 01-1 1H5a1 1 0 01-1-1V4z"
                  />
                </svg>
                <span class="text-xs">Projects</span>
              </p>
              <p
                x-show="activeTab === 'tabActivity'"
                class="flex shrink-0 items-center space-x-1.5"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                  stroke-width="1.5"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"
                  />
                </svg>
                <span class="text-xs">Activity</span>
              </p>

              <button
                @click="$store.global.isRightSidebarExpanded=false"
                class="btn -mr-1 h-6 w-6 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                  stroke-width="2"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M6 18L18 6M6 6l12 12"
                  />
                </svg>
              </button>
            </div>


            <div
              x-show="activeTab === 'tabProjects'"
              x-transition:enter="transition-all duration-500 easy-in-out"
              x-transition:enter-start="opacity-0 [transform:translate3d(0,1rem,0)]"
              x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
              class="is-scrollbar-hidden overflow-y-auto overscroll-contain px-3 pt-1"
            >
              <div class="grid grid-cols-2 gap-3">
                <div class="rounded-lg bg-slate-100 p-3 dark:bg-navy-600">
                  <div class="flex justify-between space-x-1">
                    <p
                      class="text-xl font-semibold text-slate-700 dark:text-navy-100"
                    >
                      14
                    </p>
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      stroke-width="1.5"
                      class="h-5 w-5 text-re dark:text-accent"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"
                      />
                    </svg>
                  </div>
                  <p class="mt-1 text-xs+">Pending</p>
                </div>
                <div class="rounded-lg bg-slate-100 p-3 dark:bg-navy-600">
                  <div class="flex justify-between">
                    <p
                      class="text-xl font-semibold text-slate-700 dark:text-navy-100"
                    >
                      36
                    </p>
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5 text-success"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z"
                      />
                    </svg>
                  </div>
                  <p class="mt-1 text-xs+">Completed</p>
                </div>
                <div class="rounded-lg bg-slate-100 p-3 dark:bg-navy-600">
                  <div class="flex justify-between">
                    <p
                      class="text-xl font-semibold text-slate-700 dark:text-navy-100"
                    >
                      143
                    </p>

                    <i class="fa fa-spinner text-base text-warning"></i>
                  </div>
                  <p class="mt-1 text-xs+">In Progress</p>
                </div>
                <div class="rounded-lg bg-slate-100 p-3 dark:bg-navy-600">
                  <div class="flex justify-between">
                    <p
                      class="text-xl font-semibold text-slate-700 dark:text-navy-100"
                    >
                      279
                    </p>

                    <i class="fa-solid fa-list-check text-base text-info"></i>
                  </div>
                  <p class="mt-1 text-xs+">Total</p>
                </div>
              </div>

              <div
                class="mt-4 rounded-lg border border-slate-150 p-3 dark:border-navy-600"
              >
                <div class="flex items-center space-x-3">
                  <img
                    class="h-10 w-10 rounded-lg object-cover object-center"
                    src="/index/resources/images/illustrations/lms-ui.svg"
                    alt="image"
                  />
                  <div>
                    <p
                      class="font-medium leading-snug text-slate-700 dark:text-navy-100"
                    >
                      LMS App Design
                    </p>
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Updated at 7 Sep
                    </p>
                  </div>
                </div>

                <div class="mt-4">
                  <div class="progress h-1.5 bg-slate-150 dark:bg-navy-500">
                    <div
                      class="w-4/12 rounded-full bg-primary dark:bg-accent"
                    ></div>
                  </div>
                  <p
                    class="mt-2 text-right text-xs+ font-medium text-re dark:text-accent-light"
                  >
                    25%
                  </p>
                </div>

                <div class="mt-3 flex items-center justify-between space-x-2">
                  <div class="flex -space-x-3">
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-16.jpg"
                        alt="avatar"
                      />
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <div
                        class="is-initial rounded-full bg-info text-xs+ uppercase text-white ring ring-white dark:ring-navy-700"
                      >
                        jd
                      </div>
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-20.jpg"
                        alt="avatar"
                      />
                    </div>
                  </div>
                  <button
                    class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5 rotate-45"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M7 11l5-5m0 0l5 5m-5-5v12"
                      />
                    </svg>
                  </button>
                </div>
              </div>

              <div
                class="mt-4 rounded-lg border border-slate-150 p-3 dark:border-navy-600"
              >
                <div class="flex items-center space-x-3">
                  <img
                    class="h-10 w-10 rounded-lg object-cover object-center"
                    src="/index/resources/images/illustrations/store-ui.svg"
                    alt="image"
                  />
                  <div>
                    <p
                      class="font-medium leading-snug text-slate-700 dark:text-navy-100"
                    >
                      Store Dashboard
                    </p>
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Updated at 11 Sep
                    </p>
                  </div>
                </div>

                <div class="mt-4">
                  <div class="progress h-1.5 bg-slate-150 dark:bg-navy-500">
                    <div
                      class="w-6/12 rounded-full bg-primary dark:bg-accent"
                    ></div>
                  </div>
                  <p
                    class="mt-2 text-right text-xs+ font-medium text-re dark:text-accent-light"
                  >
                    49%
                  </p>
                </div>

                <div class="mt-3 flex items-center justify-between space-x-2">
                  <div class="flex -space-x-3">
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-17.jpg"
                        alt="avatar"
                      />
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <div
                        class="is-initial rounded-full bg-warning text-xs+ uppercase text-white ring ring-white dark:ring-navy-700"
                      >
                        dv
                      </div>
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-19.jpg"
                        alt="avatar"
                      />
                    </div>
                  </div>
                  <button
                    class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5 rotate-45"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M7 11l5-5m0 0l5 5m-5-5v12"
                      />
                    </svg>
                  </button>
                </div>
              </div>

              <div
                class="mt-4 rounded-lg border border-slate-150 p-3 dark:border-navy-600"
              >
                <div class="flex items-center space-x-3">
                  <img
                    class="h-10 w-10 rounded-lg object-cover object-center"
                    src="/index/resources/images/illustrations/chat-ui.svg"
                    alt="image"
                  />
                  <div>
                    <p
                      class="font-medium leading-snug text-slate-700 dark:text-navy-100"
                    >
                      Chat Mobile App
                    </p>
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Updated at 19 Sep
                    </p>
                  </div>
                </div>

                <div class="mt-4">
                  <div class="progress h-1.5 bg-slate-150 dark:bg-navy-500">
                    <div
                      class="w-2/12 rounded-full bg-primary dark:bg-accent"
                    ></div>
                  </div>
                  <p
                    class="mt-2 text-right text-xs+ font-medium text-re dark:text-accent-light"
                  >
                    13%
                  </p>
                </div>

                <div class="mt-3 flex items-center justify-between space-x-2">
                  <div class="flex -space-x-3">
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-5.jpg"
                        alt="avatar"
                      />
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <div
                        class="is-initial rounded-full bg-error text-xs+ uppercase text-white ring ring-white dark:ring-navy-700"
                      >
                        gt
                      </div>
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-11.jpg"
                        alt="avatar"
                      />
                    </div>
                  </div>
                  <button
                    class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5 rotate-45"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M7 11l5-5m0 0l5 5m-5-5v12"
                      />
                    </svg>
                  </button>
                </div>
              </div>

              <div
                class="mt-4 rounded-lg border border-slate-150 p-3 dark:border-navy-600"
              >
                <div class="flex items-center space-x-3">
                  <img
                    class="h-10 w-10 rounded-lg object-cover object-center"
                    src="/index/resources/images/illustrations/nft.svg"
                    alt="image"
                  />
                  <div>
                    <p
                      class="font-medium leading-snug text-slate-700 dark:text-navy-100"
                    >
                      NFT Marketplace App
                    </p>
                    <p class="text-xs text-slate-400 dark:text-navy-300">
                      Updated at 5 Sep
                    </p>
                  </div>
                </div>

                <div class="mt-4">
                  <div class="progress h-1.5 bg-slate-150 dark:bg-navy-500">
                    <div
                      class="w-9/12 rounded-full bg-primary dark:bg-accent"
                    ></div>
                  </div>
                  <p
                    class="mt-2 text-right text-xs+ font-medium text-re dark:text-accent-light"
                  >
                    78%
                  </p>
                </div>

                <div class="mt-3 flex items-center justify-between space-x-2">
                  <div class="flex -space-x-3">
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-8.jpg"
                        alt="avatar"
                      />
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <div
                        class="is-initial rounded-full bg-success text-xs+ uppercase text-white ring ring-white dark:ring-navy-700"
                      >
                        jd
                      </div>
                    </div>
                    <div class="avatar h-7 w-7 hover:z-10">
                      <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="/index/resources/images/avatar/avatar-12.jpg"
                        alt="avatar"
                      />
                    </div>
                  </div>
                  <button
                    class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5 rotate-45"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M7 11l5-5m0 0l5 5m-5-5v12"
                      />
                    </svg>
                  </button>
                </div>
              </div>

              <div class="h-18"></div>
            </div>

            <div
              x-show="activeTab === 'tabActivity'"
              x-transition:enter="transition-all duration-500 easy-in-out"
              x-transition:enter-start="opacity-0 [transform:translate3d(0,1rem,0)]"
              x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
              class="is-scrollbar-hidden overflow-y-auto overscroll-contain pt-1"
            >
              <div
                class="mx-3 flex flex-col items-center rounded-lg bg-slate-100 py-3 px-8 dark:bg-navy-600"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-8 w-8 text-secondary dark:text-secondary-light"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                  stroke-width="2"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"
                  />
                </svg>

                <p class="mt-2 text-xs">Today</p>

                <p
                  class="text-lg font-medium text-slate-700 dark:text-navy-100"
                >
                  6hr 22m
                </p>

                <div
                  class="progress mt-3 h-2 bg-secondary/15 dark:bg-secondary-light/25"
                >
                  <div
                    class="is-active relative w-8/12 overflow-hidden rounded-full bg-secondary dark:bg-secondary-light"
                  ></div>
                </div>

                <button
                  class="btn mt-5 space-x-2 rounded-full border border-slate-300 px-3 text-xs+ font-medium text-slate-700 hover:bg-slate-150 focus:bg-slate-150 active:bg-slate-150/80 dark:border-navy-450 dark:text-navy-100 dark:hover:bg-navy-500 dark:focus:bg-navy-500 dark:active:bg-navy-500/90"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4.5 w-4.5 text-slate-400 dark:text-navy-300"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M15 13l-3 3m0 0l-3-3m3 3V8m0 13a9 9 0 110-18 9 9 0 010 18z"
                    />
                  </svg>
                  <span> Download Report</span>
                </button>
              </div>

              <ol class="timeline line-space mt-5 px-4 [--size:1.5rem]">
                <li class="timeline-item">
                  <div
                    class="timeline-item-point rounded-full border border-current bg-white text-secondary dark:bg-navy-700 dark:text-secondary-light"
                  >
                    <i class="fa fa-user-edit text-tiny"></i>
                  </div>
                  <div class="timeline-item-content flex-1 pl-4">
                    <div
                      class="flex flex-col justify-between pb-2 sm:flex-row sm:pb-0"
                    >
                      <p
                        class="pb-2 font-medium leading-none text-slate-600 dark:text-navy-100 sm:pb-0"
                      >
                        New job alert
                      </p>
                      <span class="text-xs text-slate-400 dark:text-navy-300"
                        >12 minute ago</span
                      >
                    </div>
                    <p class="py-1">John Doe changed his avatar photo</p>
                    <div class="avatar mt-2 h-20 w-20">
                      <img
                        class="mask is-squircle"
                        src="/index/resources/images/avatar/avatar-19.jpg"
                        alt="avatar"
                      />
                    </div>
                  </div>
                </li>
                <li class="timeline-item">
                  <div
                    class="timeline-item-point rounded-full border border-current bg-white text-re dark:bg-navy-700 dark:text-accent"
                  >
                    <i class="fa-solid fa-image text-tiny"></i>
                  </div>
                  <div class="timeline-item-content flex-1 pl-4">
                    <div
                      class="flex flex-col justify-between pb-2 sm:flex-row sm:pb-0"
                    >
                      <p
                        class="pb-2 font-medium leading-none text-slate-600 dark:text-navy-100 sm:pb-0"
                      >
                        Images Added
                      </p>
                      <span class="text-xs text-slate-400 dark:text-navy-300"
                        >1 hour ago</span
                      >
                    </div>
                    <p class="py-1">Mores Clarke added new image gallery</p>
                    <div class="mt-4 grid grid-cols-3 gap-3">
                      <img
                        class="rounded-lg"
                        src="/index/resources/images/object/object-1.jpg"
                        alt="image"
                      />
                      <img
                        class="rounded-lg"
                        src="/index/resources/images/object/object-2.jpg"
                        alt="image"
                      />
                      <img
                        class="rounded-lg"
                        src="/index/resources/images/object/object-3.jpg"
                        alt="image"
                      />
                      <img
                        class="rounded-lg"
                        src="/index/resources/images/object/object-4.jpg"
                        alt="image"
                      />
                      <img
                        class="rounded-lg"
                        src="/index/resources/images/object/object-5.jpg"
                        alt="image"
                      />
                      <img
                        class="rounded-lg"
                        src="/index/resources/images/object/object-6.jpg"
                        alt="image"
                      />
                    </div>
                    <div class="mt-4">
                      <span
                        class="font-medium text-slate-600 dark:text-navy-100"
                      >
                        Category:
                      </span>

                      <a
                        href="#"
                        class="text-xs text-re hover:text-re-focus dark:text-accent-light dark:hover:text-accent"
                      >
                        #Tag
                      </a>

                      <a
                        href="#"
                        class="text-xs text-re hover:text-re-focus dark:text-accent-light dark:hover:text-accent"
                      >
                        #Category
                      </a>
                    </div>
                  </div>
                </li>
                <li class="timeline-item">
                  <div
                    class="timeline-item-point rounded-full border border-current bg-white text-success dark:bg-navy-700"
                  >
                    <i class="fa fa-leaf text-tiny"></i>
                  </div>
                  <div class="timeline-item-content flex-1 pl-4">
                    <div
                      class="flex flex-col justify-between pb-2 sm:flex-row sm:pb-0"
                    >
                      <p
                        class="pb-2 font-medium leading-none text-slate-600 dark:text-navy-100 sm:pb-0"
                      >
                        Design Completed
                      </p>
                      <span class="text-xs text-slate-400 dark:text-navy-300"
                        >3 hours ago</span
                      >
                    </div>
                    <p class="py-1">
                      Robert Nolan completed the design of the CRM application
                    </p>
                    <a
                      href="#"
                      class="inline-flex items-center space-x-1 pt-2 text-slate-600 transition-colors hover:text-re dark:text-navy-100 dark:hover:text-accent"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-5 w-5"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="#e21e26"
                        stroke-width="1.5"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"
                        />
                      </svg>
                      <span>File_final.fig</span>
                    </a>
                    <div class="pt-2">
                      <a
                        href="#"
                        class="tag rounded-full border border-secondary/30 bg-secondary/10 text-secondary hover:bg-secondary/20 focus:bg-secondary/20 active:bg-secondary/25 dark:border-secondary-light/30 dark:bg-secondary-light/10 dark:text-secondary-light dark:hover:bg-secondary-light/20 dark:focus:bg-secondary-light/20 dark:active:bg-secondary-light/25"
                      >
                        UI/UX
                      </a>

                      <a
                        href="#"
                        class="tag rounded-full border border-info/30 bg-info/10 text-info hover:bg-info/20 focus:bg-info/20 active:bg-info/25"
                      >
                        CRM
                      </a>

                      <a
                        href="#"
                        class="tag rounded-full border border-success/30 bg-success/10 text-success hover:bg-success/20 focus:bg-success/20 active:bg-success/25"
                      >
                        Dashboard
                      </a>
                    </div>
                  </div>
                </li>
                <li class="timeline-item">
                  <div
                    class="timeline-item-point rounded-full border border-current bg-white text-warning dark:bg-navy-700"
                  >
                    <i class="fa fa-project-diagram text-tiny"></i>
                  </div>
                  <div class="timeline-item-content flex-1 pl-4">
                    <div
                      class="flex flex-col justify-between pb-2 sm:flex-row sm:pb-0"
                    >
                      <p
                        class="pb-2 font-medium leading-none text-slate-600 dark:text-navy-100 sm:pb-0"
                      >
                        ER Diagram
                      </p>
                      <span class="text-xs text-slate-400 dark:text-navy-300"
                        >a day ago</span
                      >
                    </div>
                    <p class="py-1">Team completed the ER diagram app</p>
                    <div>
                      <p class="text-xs text-slate-400 dark:text-navy-300">
                        Members:
                      </p>
                      <div class="mt-2 flex justify-between">
                        <div class="flex flex-wrap -space-x-2">
                          <div class="avatar h-7 w-7 hover:z-10">
                            <img
                              class="rounded-full ring ring-white dark:ring-navy-700"
                              src="/index/resources/images/avatar/avatar-16.jpg"
                              alt="avatar"
                            />
                          </div>

                          <div class="avatar h-7 w-7 hover:z-10">
                            <div
                              class="is-initial rounded-full bg-info text-xs+ uppercase text-white ring ring-white dark:ring-navy-700"
                            >
                              jd
                            </div>
                          </div>

                          <div class="avatar h-7 w-7 hover:z-10">
                            <img
                              class="rounded-full ring ring-white dark:ring-navy-700"
                              src="/index/resources/images/avatar/avatar-20.jpg"
                              alt="avatar"
                            />
                          </div>

                          <div class="avatar h-7 w-7 hover:z-10">
                            <img
                              class="rounded-full ring ring-white dark:ring-navy-700"
                              src="/index/resources/images/avatar/avatar-8.jpg"
                              alt="avatar"
                            />
                          </div>

                          <div class="avatar h-7 w-7 hover:z-10">
                            <img
                              class="rounded-full ring ring-white dark:ring-navy-700"
                              src="/index/resources/images/avatar/avatar-5.jpg"
                              alt="avatar"
                            />
                          </div>
                        </div>
                        <button
                          class="btn h-7 w-7 rounded-full bg-slate-150 p-0 font-medium text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-5 w-5 rotate-45"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="#e21e26"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              stroke-width="2"
                              d="M7 11l5-5m0 0l5 5m-5-5v12"
                            />
                          </svg>
                        </button>
                      </div>
                    </div>
                  </div>
                </li>
                <li class="timeline-item">
                  <div
                    class="timeline-item-point rounded-full border border-current bg-white text-error dark:bg-navy-700"
                  >
                    <i class="fa fa-history text-tiny"></i>
                  </div>
                  <div class="timeline-item-content flex-1 pl-4">
                    <div
                      class="flex flex-col justify-between pb-2 sm:flex-row sm:pb-0"
                    >
                      <p
                        class="pb-2 font-medium leading-none text-slate-600 dark:text-navy-100 sm:pb-0"
                      >
                        Weekly Report
                      </p>
                      <span class="text-xs text-slate-400 dark:text-navy-300"
                        >a day ago</span
                      >
                    </div>
                    <p class="py-1">The weekly report was uploaded</p>
                  </div>
                </li>
              </ol>
              <div class="h-18"></div>
            </div>

            <div
              class="pointer-events-none absolute bottom-4 flex w-full justify-center"
            >
              <div
                class="pointer-events-auto mx-auto flex space-x-1 rounded-full border border-slate-150 bg-white px-4 py-0.5 shadow-lg dark:border-navy-700 dark:bg-navy-900"
              >
                <button
                  @click="activeTab = 'tabHome'"
                  :class="activeTab === 'tabHome' && 'text-re dark:text-accent'"
                  class="btn h-9 rounded-full py-0 px-4 hover:bg-slate-300/20 hover:text-re focus:bg-slate-300/20 focus:text-re active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:hover:text-accent dark:focus:bg-navy-300/20 dark:focus:text-accent dark:active:bg-navy-300/25"
                >
                  <svg
                    x-show="activeTab === 'tabHome'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    viewBox="0 0 20 20"
                    fill="#e21e26"
                  >
                    <path
                      d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"
                    />
                  </svg>
                  <svg
                    x-show="activeTab !== 'tabHome'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="1.5"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                    />
                  </svg>
                </button>
                <button
                  @click="activeTab = 'tabProjects'"
                  :class="activeTab === 'tabProjects' && 'text-re dark:text-accent'"
                  class="btn h-9 rounded-full py-0 px-4 hover:bg-slate-300/20 hover:text-re focus:bg-slate-300/20 focus:text-re active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:hover:text-accent dark:focus:bg-navy-300/20 dark:focus:text-accent dark:active:bg-navy-300/25"
                >
                  <svg
                    x-show="activeTab === 'tabProjects'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    viewBox="0 0 20 20"
                    fill="#e21e26"
                  >
                    <path
                      fill-rule="evenodd"
                      d="M3 3a1 1 0 000 2v8a2 2 0 002 2h2.586l-1.293 1.293a1 1 0 101.414 1.414L10 15.414l2.293 2.293a1 1 0 001.414-1.414L12.414 15H15a2 2 0 002-2V5a1 1 0 100-2H3zm11.707 4.707a1 1 0 00-1.414-1.414L10 9.586 8.707 8.293a1 1 0 00-1.414 0l-2 2a1 1 0 101.414 1.414L8 10.414l1.293 1.293a1 1 0 001.414 0l4-4z"
                      clip-rule="evenodd"
                    />
                  </svg>

                  <svg
                    x-show="activeTab !== 'tabProjects'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="1.5"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M7 12l3-3 3 3 4-4M8 21l4-4 4 4M3 4h18M4 4h16v12a1 1 0 01-1 1H5a1 1 0 01-1-1V4z"
                    />
                  </svg>
                </button>
                <button
                  @click="activeTab = 'tabActivity'"
                  :class="activeTab === 'tabActivity' && 'text-re dark:text-accent'"
                  class="btn h-9 rounded-full py-0 px-4 hover:bg-slate-300/20 hover:text-re focus:bg-slate-300/20 focus:text-re active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:hover:text-accent dark:focus:bg-navy-300/20 dark:focus:text-accent dark:active:bg-navy-300/25"
                >
                  <svg
                    x-show="activeTab ===  'tabActivity'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    viewBox="0 0 20 20"
                    fill="#e21e26"
                  >
                    <path
                      fill-rule="evenodd"
                      d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z"
                      clip-rule="evenodd"
                    />
                  </svg>
                  <svg
                    x-show="activeTab !==  'tabActivity'"
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 shrink-0"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="1.5"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"
                    />
                  </svg>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- App Header Wrapper-->
      <nav class="header print:hidden">
        <!-- App Header  -->
        <div
          class="header-container relative flex w-full bg-white dark:bg-navy-750 print:hidden"
        >
          <!-- Header Items -->
          <div class="flex w-full items-center justify-between">
            <!-- Left: Sidebar Toggle Button -->
            <div class="h-7 w-7">
            <button
                class="menu-toggle ml-0.5 flex h-7 w-7 flex-col justify-center space-y-1.5 text-re outline-none focus:outline-none dark:text-accent-light/80"
                :class="$store.global.isSidebarExpanded && 'active'"
                @click="$store.global.isSidebarExpanded = !$store.global.isSidebarExpanded"
              >
                <span></span>
                <span></span>
                <span></span>
              </button> 
            </div>

            <!-- Right: Header buttons -->
            <div class="-mr-1.5 flex items-center space-x-2">
              <!-- Mobile Search Toggle -->
            <!--   <button
                @click="$store.global.isSearchbarActive = !$store.global.isSearchbarActive"
                class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25 sm:hidden"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5.5 w-5.5 text-slate-500 dark:text-navy-100"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="#e21e26"
                  stroke-width="1.5"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
                  />
                </svg>
              </button> -->

              <!-- Main Searchbar -->
              <template x-if="$store.breakpoints.smAndUp">
              </template>

              <!-- Dark Mode Toggle -->
              <button
                @click="$store.global.isDarkModeEnabled = !$store.global.isDarkModeEnabled"
                class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
              >
                <svg
                  x-show="$store.global.isDarkModeEnabled"
                  x-transition:enter="transition-transform duration-200 ease-out absolute origin-top"
                  x-transition:enter-start="scale-75"
                  x-transition:enter-end="scale-100 static"
                  class="h-6 w-6 text-amber-400"
                  fill="#e21e26"
                  viewBox="0 0 24 24"
                >
                  <path
                    d="M11.75 3.412a.818.818 0 01-.07.917 6.332 6.332 0 00-1.4 3.971c0 3.564 2.98 6.494 6.706 6.494a6.86 6.86 0 002.856-.617.818.818 0 011.1 1.047C19.593 18.614 16.218 21 12.283 21 7.18 21 3 16.973 3 11.956c0-4.563 3.46-8.31 7.925-8.948a.818.818 0 01.826.404z"
                  />
                </svg>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  x-show="!$store.global.isDarkModeEnabled"
                  x-transition:enter="transition-transform duration-200 ease-out absolute origin-top"
                  x-transition:enter-start="scale-75"
                  x-transition:enter-end="scale-100 static"
                  class="h-6 w-6 text-amber-400"
                  viewBox="0 0 20 20"
                  fill="#e21e26"
                >
                  <path
                    fill-rule="evenodd"
                    d="M10 2a1 1 0 011 1v1a1 1 0 11-2 0V3a1 1 0 011-1zm4 8a4 4 0 11-8 0 4 4 0 018 0zm-.464 4.95l.707.707a1 1 0 001.414-1.414l-.707-.707a1 1 0 00-1.414 1.414zm2.12-10.607a1 1 0 010 1.414l-.706.707a1 1 0 11-1.414-1.414l.707-.707a1 1 0 011.414 0zM17 11a1 1 0 100-2h-1a1 1 0 100 2h1zm-7 4a1 1 0 011 1v1a1 1 0 11-2 0v-1a1 1 0 011-1zM5.05 6.464A1 1 0 106.465 5.05l-.708-.707a1 1 0 00-1.414 1.414l.707.707zm1.414 8.486l-.707.707a1 1 0 01-1.414-1.414l.707-.707a1 1 0 011.414 1.414zM4 11a1 1 0 100-2H3a1 1 0 000 2h1z"
                    clip-rule="evenodd"
                  />
                </svg>
              </button>
              <!-- Notification-->
              <div x-effect="if($store.global.isSearchbarActive) isShowPopper = false" x-data="usePopper({placement:'bottom-end',offset:12})" @click.outside="isShowPopper &amp;&amp; (isShowPopper = false)" class="flex">
                <button @click="isShowPopper = !isShowPopper" x-ref="popperRef" class="btn relative h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-slate-500 dark:text-navy-100" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M15.375 17.556h-6.75m6.75 0H21l-1.58-1.562a2.254 2.254 0 01-.67-1.596v-3.51a6.612 6.612 0 00-1.238-3.85 6.744 6.744 0 00-3.262-2.437v-.379c0-.59-.237-1.154-.659-1.571A2.265 2.265 0 0012 2c-.597 0-1.169.234-1.591.65a2.208 2.208 0 00-.659 1.572v.38c-2.621.915-4.5 3.385-4.5 6.287v3.51c0 .598-.24 1.172-.67 1.595L3 17.556h12.375zm0 0v1.11c0 .885-.356 1.733-.989 2.358A3.397 3.397 0 0112 22a3.397 3.397 0 01-2.386-.976 3.313 3.313 0 01-.989-2.357v-1.111h6.75z"></path>
                  </svg>

                  <span class="absolute -top-px -right-px flex h-3 w-3 items-center justify-center">
                    <span class="absolute inline-flex h-full w-full animate-ping rounded-full bg-secondary opacity-80"></span>
                    <span class="inline-flex h-2 w-2 rounded-full bg-secondary"></span>
                  </span>
                </button>
                <div :class="isShowPopper &amp;&amp; 'show'" class="popper-root" x-ref="popperRoot" style="position: fixed; inset: 0px 0px auto auto; margin: 0px; transform: translate(-98px, 58px);" data-popper-placement="bottom-end">
                  <div x-data="{activeTab:'tabAll'}" class="popper-box mx-4 mt-1 flex max-h-[calc(100vh-6rem)] w-[calc(100vw-2rem)] flex-col rounded-lg border border-slate-150 bg-white shadow-soft dark:border-navy-800 dark:bg-navy-700 dark:shadow-soft-dark sm:m-0 sm:w-80">
                    <div class="rounded-t-lg bg-slate-100 text-slate-600 dark:bg-navy-800 dark:text-navy-200">
                      <div class="flex items-center justify-between px-4 pt-2">
                        <div class="flex items-center space-x-2">
                          <h3 class="font-medium text-slate-700 dark:text-navy-100">
                            Notifications
                          </h3>
                          <div class="badge h-5 rounded-full bg-primary/10 px-1.5 text-primary dark:bg-accent-light/15 dark:text-accent-light">
                            07
                          </div>
                        </div>

                      
                      </div>

                      <div class="is-scrollbar-hidden flex shrink-0 overflow-x-auto px-3">
                        <button @click="activeTab = 'tabAll'" :class="activeTab === 'tabAll' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5 border-primary dark:border-accent text-primary dark:text-accent-light">
                          <span>All</span>
                        </button>
                        <button @click="activeTab = 'tabAlerts'" :class="activeTab === 'tabAlerts' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5 border-primary dark:border-accent text-primary dark:text-accent-light">
                          <span>Alerts</span>
                        </button>
                        <button @click="activeTab = 'tabEvents'" :class="activeTab === 'tabEvents' ? 'border-primary dark:border-accent text-primary dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5 border-primary dark:border-accent text-primary dark:text-accent-light">
                          <span>Events</span>
                        </button>
                       

                       
                      </div>
                    </div>

                    <div class="tab-content flex flex-col overflow-hidden">
                      <div x-show="activeTab === 'tabAll'" x-transition:enter="transition-all duration-300 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" class="is-scrollbar-hidden space-y-4 overflow-y-auto px-4 py-4">
                        <div class="flex items-center space-x-3">
                          <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary/10 dark:bg-secondary-light/15">
                            <i class="fa fa-user-edit text-secondary dark:text-secondary-light"></i>
                          </div>
                          <div>
                            <p class="font-medium text-slate-600 dark:text-navy-100">
                            Job alert
                            </p>
                            <div class="mt-1 text-xs text-slate-400 line-clamp-1 dark:text-navy-300">
                             Senior Developer
                            </div>
                          </div>
                        </div>
                         <div class="flex items-center space-x-3">
                          <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-info/10 dark:bg-info/15">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-info" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">
                              <path stroke-linecap="round" stroke-linejoin="round" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                            </svg>
                          </div>
                          <div>
                            <p class="font-medium text-slate-600 dark:text-navy-100">
                              Tue, Nov 07, 2023
                            </p>
                            <div class="mt-1 flex text-xs text-slate-400 dark:text-navy-300">
                              <span class="shrink-0">08:00 - 09:00</span>
                              <div class="mx-2 my-1 w-px bg-slate-200 dark:bg-navy-500"></div>

                              <span class="line-clamp-1">Sports</span>
                            </div>
                          </div>
                        </div>
         
                      
                      </div>
                      <div x-show="activeTab === 'tabAlerts'" x-transition:enter="transition-all duration-300 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" class="is-scrollbar-hidden space-y-4 overflow-y-auto px-4 py-4" style="display: none;">
                        <div class="flex items-center space-x-3">
                          <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary/10 dark:bg-secondary-light/15">
                            <i class="fa fa-user-edit text-secondary dark:text-secondary-light"></i>
                          </div>
                          <div>
                            <p class="font-medium text-slate-600 dark:text-navy-100">
                             Job alert
                            </p>
                            <div class="mt-1 text-xs text-slate-400 line-clamp-1 dark:text-navy-300">
                              Senior Developer
                            </div>
                          </div>
                        </div>
              </div>
              
              
                      <div x-show="activeTab === 'tabEvents'" x-transition:enter="transition-all duration-300 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" class="is-scrollbar-hidden space-y-4 overflow-y-auto px-4 py-4" style="display: none;">
                        <div class="flex items-center space-x-3">
                          <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-info/10 dark:bg-info/15">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-info" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">
                              <path stroke-linecap="round" stroke-linejoin="round" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                            </svg>
                          </div>
                          <div>
                            <p class="font-medium text-slate-600 dark:text-navy-100">
                              Tue, Nov 07, 2023
                            </p>
                            <div class="mt-1 flex text-xs text-slate-400 dark:text-navy-300">
                              <span class="shrink-0">08:00 - 09:00</span>
                              <div class="mx-2 my-1 w-px bg-slate-200 dark:bg-navy-500"></div>

                              <span class="line-clamp-1">Sports</span>
                            </div>
                          </div>
                        </div>
                     
                      
                      
                      </div>
                      
                    </div>
                  </div>
                </div>
              </div>
              
              
              
              
              
              
              
              
              
              <!-- Monochrome Mode Toggle -->
              <button
                @click="$store.global.isMonochromeModeEnabled = !$store.global.isMonochromeModeEnabled"
                class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
              >
                <i
                  class="fa-solid fa-palette bg-gradient-to-r from-sky-400 to-blue-600 bg-clip-text text-lg font-semibold text-transparent"
                ></i>
              </button>

              <!-- Notification-->

              <!-- Right Sidebar Toggle -->
            
            </div>
          </div>
        </div>
      </nav>

      <!-- Mobile Searchbar -->
      <div
        x-show="$store.breakpoints.isXs && $store.global.isSearchbarActive"
        x-transition:enter="easy-out transition-all"
        x-transition:enter-start="opacity-0 scale-105"
        x-transition:enter-end="opacity-100 scale-100"
        x-transition:leave="easy-in transition-all"
        x-transition:leave-start="opacity-100 scale-100"
        x-transition:leave-end="opacity-0 scale-95"
        class="fixed inset-0 z-[100] flex flex-col bg-white dark:bg-navy-700 sm:hidden"
      >
        <div
          class="flex items-center space-x-2 bg-slate-100 px-3 pt-2 dark:bg-navy-800"
        >
          <button
            class="btn -ml-1.5 h-7 w-7 shrink-0 rounded-full p-0 text-slate-600 hover:bg-slate-300/20 active:bg-slate-300/25 dark:text-navy-100 dark:hover:bg-navy-300/20 dark:active:bg-navy-300/25"
            @click="$store.global.isSearchbarActive = false"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-5 w-5"
              fill="none"
              stroke-width="1.5"
              viewBox="0 0 24 24"
              stroke="#e21e26"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M15 19l-7-7 7-7"
              />
            </svg>
          </button>
          <input
            x-effect="$store.global.isSearchbarActive && $nextTick(() => $el.focus() );"
            class="form-input h-8 w-full bg-transparent placeholder-slate-400 dark:placeholder-navy-300"
            type="text"
            placeholder="Search here..."
          />
        </div>

        <div
          x-data="{activeTab:'tabAll'}"
          class="is-scrollbar-hidden flex shrink-0 overflow-x-auto bg-slate-100 px-2 text-slate-600 dark:bg-navy-800 dark:text-navy-200"
        >
          <button
            @click="activeTab = 'tabAll'"
            :class="activeTab === 'tabAll' ? 'border-primary dark:border-accent text-re dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            All
          </button>
          <button
            @click="activeTab = 'tabFiles'"
            :class="activeTab === 'tabFiles' ? 'border-primary dark:border-accent text-re dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Files
          </button>
          <button
            @click="activeTab = 'tabChats'"
            :class="activeTab === 'tabChats' ? 'border-primary dark:border-accent text-re dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Chats
          </button>
          <button
            @click="activeTab = 'tabEmails'"
            :class="activeTab === 'tabEmails' ? 'border-primary dark:border-accent text-re dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Emails
          </button>
          <button
            @click="activeTab = 'tabProjects'"
            :class="activeTab === 'tabProjects' ? 'border-primary dark:border-accent text-re dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Projects
          </button>
          <button
            @click="activeTab = 'tabTasks'"
            :class="activeTab === 'tabTasks' ? 'border-primary dark:border-accent text-re dark:text-accent-light' : 'border-transparent hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
            class="btn shrink-0 rounded-none border-b-2 px-3.5 py-2.5"
          >
            Tasks
          </button>
        </div>

        <div
          class="is-scrollbar-hidden overflow-y-auto overscroll-contain pb-2"
        >
          <div
            class="is-scrollbar-hidden mt-3 flex space-x-4 overflow-x-auto px-3"
          >
            <a href="apps-kanban.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-success text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M9 17V7m0 10a2 2 0 01-2 2H5a2 2 0 01-2-2V7a2 2 0 012-2h2a2 2 0 012 2m0 10a2 2 0 002 2h2a2 2 0 002-2M9 7a2 2 0 012-2h2a2 2 0 012 2m0 10V7m0 10a2 2 0 002 2h2a2 2 0 002-2V7a2 2 0 00-2-2h-2a2 2 0 00-2 2"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Kanban
              </p>
            </a>
            <a href="dashboards-crm-analytics.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-secondary text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Analytics
              </p>
            </a>
            <a href="apps-chat.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-info text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Chat
              </p>
            </a>
            <a href="apps-filemanager.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-error text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M3 15a4 4 0 004 4h9a5 5 0 10-.1-9.999 5.002 5.002 0 10-9.78 2.096A4.001 4.001 0 003 15z"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Files
              </p>
            </a>
            <a href="dashboards-crypto-1.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-secondary text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M15 9a2 2 0 10-4 0v5a2 2 0 01-2 2h6m-6-4h4m8 0a9 9 0 11-18 0 9 9 0 0118 0z"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Crypto
              </p>
            </a>
            <a href="dashboards-banking-1.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div
                  class="is-initial rounded-full bg-primary text-white dark:bg-accent"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M3 6l3 1m0 0l-3 9a5.002 5.002 0 006.001 0M6 7l3 9M6 7l6-2m6 2l3-1m-3 1l-3 9a5.002 5.002 0 006.001 0M18 7l3 9m-3-9l-6-2m0-2v2m0 16V5m0 16H9m3 0h3"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Banking
              </p>
            </a>
            <a href="apps-todo.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-info text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      d="M12.5293 18L20.9999 8.40002"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                    />
                    <path
                      d="M3 13.2L7.23529 18L17.8235 6"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Todo
              </p>
            </a>

            <a href="dashboards-orders.html" class="w-14 text-center">
              <div class="avatar h-12 w-12">
                <div class="is-initial rounded-full bg-warning text-white">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#e21e26"
                    stroke-width="2"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z"
                    />
                  </svg>
                </div>
              </div>
              <p
                class="mt-1.5 overflow-hidden text-ellipsis whitespace-nowrap text-xs text-slate-700 dark:text-navy-100"
              >
                Orders
              </p>
            </a>
          </div>

          <div
            class="mt-3 flex items-center justify-between bg-slate-100 py-1.5 px-3 dark:bg-navy-800"
          >
            <p class="text-xs uppercase">Recent</p>
            <a
              href="#"
              class="text-tiny+ font-medium uppercase text-re outline-none transition-colors duration-300 hover:text-re/70 focus:text-re/70 dark:text-accent-light dark:hover:text-accent-light/70 dark:focus:text-accent-light/70"
            >
              View All
            </a>
          </div>

          <div class="mt-1 font-inter font-medium">
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="apps-chat.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"
                />
              </svg>
              <span>Chat App</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="apps-filemanager.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M3 15a4 4 0 004 4h9a5 5 0 10-.1-9.999 5.002 5.002 0 10-9.78 2.096A4.001 4.001 0 003 15z"
                />
              </svg>
              <span>File Manager App</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="404-3.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
                />
              </svg>
              <span>Email App</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="apps-kanban.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M9 17V7m0 10a2 2 0 01-2 2H5a2 2 0 01-2-2V7a2 2 0 012-2h2a2 2 0 012 2m0 10a2 2 0 002 2h2a2 2 0 002-2M9 7a2 2 0 012-2h2a2 2 0 012 2m0 10V7m0 10a2 2 0 002 2h2a2 2 0 002-2V7a2 2 0 00-2-2h-2a2 2 0 00-2 2"
                />
              </svg>
              <span>Kanban Board</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="apps-todo.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  d="M3 13.2L7.23529 18L17.8235 6"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
                <path
                  d="M12.5293 18L20.9999 8.40002"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
              </svg>
              <span>Todo App</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="dashboards-crypto-2.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M15 9a2 2 0 10-4 0v5a2 2 0 01-2 2h6m-6-4h4m8 0a9 9 0 11-18 0 9 9 0 0118 0z"
                />
              </svg>

              <span>Crypto Dashboard</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="dashboards-banking-2.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M3 6l3 1m0 0l-3 9a5.002 5.002 0 006.001 0M6 7l3 9M6 7l6-2m6 2l3-1m-3 1l-3 9a5.002 5.002 0 006.001 0M18 7l3 9m-3-9l-6-2m0-2v2m0 16V5m0 16H9m3 0h3"
                />
              </svg>

              <span>Banking Dashboard</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="dashboards-crm-analytics.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"
                />
              </svg>

              <span>Analytics Dashboard</span>
            </a>
            <a
              class="group flex items-center space-x-2 px-2.5 py-2 tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
              href="dashboards-influencer.html"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-4.5 w-4.5 text-slate-400 transition-colors group-hover:text-slate-500 group-focus:text-slate-500 dark:text-navy-300 dark:group-hover:text-navy-200 dark:group-focus:text-navy-200"
                fill="none"
                viewBox="0 0 24 24"
                stroke="#e21e26"
                stroke-width="1.5"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M16 8v8m-4-5v5m-4-2v2m-2 4h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"
                />
              </svg>

              <span>Influencer Dashboard</span>
            </a>
          </div>
        </div>
      </div>

      <!-- Main Content Wrapper -->
      <main
        class="main-content pos-app w-full px-[var(--margin-x)] pb-6 transition-all duration-[.25s]"
      >
      <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 sm:gap-5 lg:grid-cols-3 lg:gap-6 mt-4"> 
          <div class="card flex-row justify-between space-x-2 ">
            <div class="flex flex-1 flex-col justify-between"  id="clock">
            
            </div>
            <div class="mx-4 my-1 w-px bg-slate-200 dark:bg-navy-500"></div>
            <div class=" swiper-slide w-24 shrink-0 cursor-pointer swiper-slide-active" @click="selected = 'slide-8'" role="group" aria-label="1 / 16" style="margin-right: 14px;">
                  <a id="iconsCLass" href="#"  class="flex flex-col items-center rounded-lg px-2 py-4 text-slate-600 dark:text-navy-100" :class="selected === 'slide-8' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' ">
                  <img class="h-11 w-1w" src="/index/resources/images/avatar/tropy icon.svg" alt="image" style="
    margin-top: 1rem;
">
                   <p class="text-3xl font-medium text-slate-700 dark:text-navy-100">
	                                      ${sessionScope.REWARDS }
	                                    </p>
	                                    <p class="text-xs text-success">Rewards</p>
                  </a>
                
                </div>

          </div>
          
          
          <div class="card flex-row justify-between space-x-2 p-2.5" id="iconsCLass">
            
              <div class="flex items-center justify-between">
                <div style="
    left: -1rem;
"class=" childs swiper w-64 swiper-cards swiper-3d swiper-initialized swiper-horizontal swiper-watch-progress" x-init="$nextTick(()=>$el._x_swiper = new Swiper($el,{effect: 'cards'}))">
                  <div class="swiper-wrapper" id="swiper-wrapper-a64f9f8ce979adad" aria-live="polite">
				      <div class="container"
   style="
    top: -0.5rem;
    right: -0.5rem;
    height: 7.2rem;

">
				    <div class="background">
				      <div class="Circle1"></div>
				      <div class="Circle2"></div>
				      <div class="Circle3"></div>
				      <div class="content">
				       <img id="weather-icon" src="https://cdn-icons-png.flaticon.com/512/1779/1779940.png" alt="Weather Icon">
				        <h1 class="Condition" id="description"><i class="material-icons sun"></i> </h1>
				        <h3 class="Temp" id="temperature"></h3>
				        <h1 class="Time" id="wind-speed"></h1>
				        <h1 class="Location" id="city"><i class="material-icons locationIcon">place</i> Raleigh, NC</h1>
				      </div>
				    </div>
                  </div>
                  </div>
                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
              </div>
              <div class="mx-4 my-1 w-px bg-slate-200 dark:bg-navy-500"></div>
            <a href="https://heyzine.com/flip-book/8baf82e225.html" target="_blank" style="
    margin-top: 2rem;
"> <img class="h-20 w-1w" src="/index/resources/images/avatar/get-newsletter-updates.svg" alt="image">
                   
                  </a>
          </div>
        
        
        
        
        
          <div class="card px-4 pb-4 sm:px-5 pt-4" id="">
            
           <div class="flex">
          <div class="flex flex-col" style="
    width: 10rem;">
              <div class="flex w-full items-center justify-center rounded-lg dark:bg-navy-500 text-center">
                <p class="text-xl">${sessionScope.DEPARTMENT_NAME }</p>
              </div>
              
              <div class="flex w-full items-center justify-center rounded-lg pt-6 dark:bg-navy-500">
                <a href="<%=request.getContextPath() %>/re-curls/${sessionScope.BASE_DEPARTMENT }/${sessionScope.DEPARTMENT_NAME }" class="text-xs text-success">My Department</a>
              </div>
            </div>
           
           <%--    <button class="flex h-20 w-full items-center justify-center rounded-lg bg-slate-200 dark:bg-navy-500" >
                <p class="text-xl">${sessionScope.BASE_DEPARTMENT }</p>
              </button> --%>
              <div class="mx-4 my-1 w-px bg-slate-200 dark:bg-navy-500 text-center" ></div>
             <button class="flex flex-col">
              <div class="flex w-full items-center justify-center rounded-lg dark:bg-navy-500 " :class="$store.global.isSidebarExpanded &amp;&amp; 'active'" @click="$store.global.isSidebarExpanded = !$store.global.isSidebarExpanded">
                <p class="text-xl">Happenings @</p>
              </div>
              
              <div class="flex w-full items-center justify-center rounded-lg pt-6 dark:bg-navy-500" :class="$store.global.isSidebarExpanded &amp;&amp; 'active'" @click="$store.global.isSidebarExpanded = !$store.global.isSidebarExpanded">
                <p class="text-xs text-success">Other Department</p>
              </div>
            </button>
              
            <!--   <button class="flex h-20 w-full items-center justify-center rounded-lg bg-slate-200 dark:bg-navy-500"  :class="$store.global.isSidebarExpanded && 'active'"
                @click="$store.global.isSidebarExpanded = !$store.global.isSidebarExpanded">
                <p class="text-xl">All Functions</p>
              </button> -->
            </div>
                  
                  
          </div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
         
            
        
        </div>
        <div class="mt-5 grid grid-cols-12 gap-4 sm:gap-5 lg:gap-6">
          <div class="col-span-12 sm:col-span-12 lg:col-span-12">
            
             
            <div id="iconsCLass"
              class="swiper"
              x-init="$nextTick(()=>$el._x_swiper= new Swiper($el,{  slidesPerView: 'auto', spaceBetween: 14,navigation:{nextEl:'.next-btn',prevEl:'.prev-btn'}}))"
            >
              <div class="flex items-center justify-between">
                <p
                  class="text-base font-medium text-slate-700 dark:text-navy-100"
                >

                  My Applications
                </p>
                <div class="flex">
                  <button
                    class="btn prev-btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 disabled:pointer-events-none disabled:select-none disabled:opacity-60 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="1.5"
                        d="M15 19l-7-7 7-7"
                      />
                    </svg>
                  </button>
                  <button
                    class="btn next-btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 disabled:pointer-events-none disabled:select-none disabled:opacity-60 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                  >
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-5 w-5"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="#e21e26"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="1.5"
                        d="M9 5l7 7-7 7"
                      />
                    </svg>
                  </button>
                </div>
              </div>
              <div class="swiper-wrapper mt-5" x-data="{selected:'slide-0'}">
               <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-1'"
                >
                  <a href="https://internal.resustainability.com/brainbox/login/${sessionScope.USER_EMAIL }" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-1' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/braibox-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Brainbox
                    </h3>
                  </a>
                </div>
                 <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-2'"
                >
                 <a href="https://internal.resustainability.com/reirm/login/${sessionScope.USER_EMAIL }" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-2' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/protect-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                    Protect
                    </h3>
                  </a>
                </div>
                <div class="card swiper-slide w-24 shrink-0 cursor-pointer swiper-slide-active" x-data="{showModal:false}" role="group" aria-label="4 / 18" style="margin-right: 14px;">
                 <a href="#" class="flex flex-col items-center rounded-lg px-2 py-4 text-slate-600 dark:text-navy-100" @click="showModal = true" :class="selected === 'slide-0090' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' ">
                    <img class="w-12" src="/index/resources/images/icons/SAP.svg" alt="image">
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                    SAP
                    </h3>
                  </a>
                  <template x-teleport="#x-teleport-target" data-teleport-template="true">
                  <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                    <div class="absolute inset-0 bg-slate-900/60 transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                    <div class="scrollbar-sm relative flex max-w-lg flex-col overflow-y-auto rounded-lg bg-white px-4 py-10 text-center transition-opacity duration-300 dark:bg-navy-700 sm:px-5" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0">
                     <i class="fas fa-exclamation-triangle fa-lg1"></i>
                      <div class="mt-4">
                        <p class="btn font-medium text-warning hover:bg-warning/20 focus:bg-warning/20 active:bg-warning/25">
                         Please Signin to VPN before proceeding forward.
                        </p>
                        <a target="_blank" href="http://cesusacipr01:8001/sap/bc/gui/sap/its/zforgot_otp?sap-client=300" @click="showModal = false" class="btn mt-6 bg-success font-medium text-white hover:bg-success-focus focus:bg-success-focus active:bg-success-focus/90">
                          Open Link
                        </a>
                      </div>
                    </div>
                  </div>
                </template>
                </div>
                      <div
            class="card swiper-slide w-24 shrink-0 cursor-pointer"
            @click="selected = 'slide-12'"
          >
            <a href="https://accounts.zoho.com/signin?servicename=SDPOnDemand&hide_title=true&hideyahoosignin=true&hidefbconnect=true&hide_secure=true&serviceurl=https%3A%2F%2Fithelpdesk.resustainability.com%2Fjsp%2Findex.jsp&signupurl=https://ithelpdesk.resustainability.com/AccountCreation.do&portal_id=784502603&hide_signup=true" target="_blank"
              class="flex flex-col items-center rounded-lg px-2 py-4"
              :class="selected === 'slide-12' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
            >
              <img
                class="w-12"
                src="/index/resources/images/icons/ithealpdesk-01.svg"
                alt="image"
              />
              <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                ITHelpdesk
              </h3>
            </a>
          </div>
                <div
            class="card swiper-slide w-24 shrink-0 cursor-pointer swiper-slide-next"
            @click="selected = 'slide-00'"
          >
            <a href="https://appmint.resustainability.com/reweighbridges/" target="_blank"
              class="flex flex-col items-center rounded-lg px-2 py-4"
              :class="selected === 'slide-00' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
            >
              <img
                class="w-12"
                src="/index/resources/images/icons/WEIGH BRIDGE-01.svg"
                alt="image"
              />
              <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                CWMS
              </h3>
            </a>
          </div>
                 <!-- <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-03'"
                >
                  <a href="https://relearning.resustainability.com/resustainability/login/resustainability.jsp" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-03' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/relearning-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      ReLearning
                    </h3>
                  </a>
                </div> -->
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-4'"
                >
                  <a href="https://mail.google.com" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-4' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/email.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                   Email
                      
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-5'"
                >
                  <a href="https://drive.google.com" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-5' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/drive-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Drive
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-6'"
                >
                  <a href="https://calendar.google.com/" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-6' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img class="w-12"src="/index/resources/images/icons/calender-01.svg" alt="image"/>
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Calendar
                    </h3>
                  </a>
                </div>
                 <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-7'"
                >
                   <a href="https://resustainability.darwinbox.in" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-7' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/drwaninbox-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Darwinbox
                    </h3>
                  </a>
                </div>
                
                <div
                class="card swiper-slide w-24 shrink-0 cursor-pointer"
                @click="selected = 'slide-8'"
              >
                <a href="https://complyone.resustainability.com/" target="_blank"
                  class="flex flex-col items-center rounded-lg px-2 py-4"
                  :class="selected === 'slide-8' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                >
                  <img
                    class="w-12"
                    src="/index/resources/images/icons/complyone.svg"
                    alt="image"
                  />
                  <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                    ComplyONE
                  </h3>
                </a>
              </div>
               <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-9'"
                >
                   <a href="https://mail.google.com/chat/u/1/#chat/welcome" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-9' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/chats-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Chats
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-10'"
                >
                  <a href="https://currents.google.com/" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-10' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/currents-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Currents
                    </h3>
                  </a>
                </div>
               
              <%--   <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-11'"
                >
                  <a href="https://internal.resustainability.com/reirm/login/${sessionScope.USER_EMAIL }" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-11' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/workflow-01.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Workflow
                    </h3>
                  </a>
                </div>
                --%>
               
              
             
           
		<div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-13'" title="Payment Gateway"
                >
                  <a href="https://prdappworks.resustainability.com:8443/" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-13' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/payment.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Payment Gateway
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-14'" title="Vehicle Tracking"
                >
                  <a href="https://etrackpro.in/jsp/etrackpro_login.jsp" target="_blank" 
                    class="flex flex-col items-center rounded-lg px-2 py-4" 
                    :class="selected === 'slide-14' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/tracking.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Vehicle Tracking
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-15'"  title="Collection Automation & Barcoding System"
                >
                  <a href="https://medicare.codeland.in/" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-15' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/CABS.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      BMW CABS
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-16'"  title="Collection Automation & Barcoding System"
                >
                  <a href="https://swm.himsw.in" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-16' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/hyderabad.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      HIMSW
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-17'"  title="Collection Automation & Barcoding System"
                >
                  <a href="https://chennaienviro.com" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-17' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/chennaiwm.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Chennai
                    </h3>
                  </a>
                </div>
                <div
                  class="card swiper-slide w-24 shrink-0 cursor-pointer"
                  @click="selected = 'slide-18'"  title="Collection Automation & Barcoding System"
                >
                  <a href="https://iris.resustainability.com/" target="_blank"
                    class="flex flex-col items-center rounded-lg px-2 py-4"
                    :class="selected === 'slide-18' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' "
                  >
                    <img
                      class="w-12"
                      src="/index/resources/images/icons/IRIS.svg"
                      alt="image"
                    />
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      IRIS
                    </h3>
                  </a>
                </div>
              </div>
            </div>

            <div class="card col-span-12 mt-5 pb-2 lg:col-span-5 xl:col-span-6">
                <div class="my-3 flex items-center justify-between px-4 sm:px-5">
                 
                 
                </div>
                <div class="scrollbar-sm h-full flex space-x-3 overflow-x-auto px-4 pb-3 sm:px-5">
                  <div class="w-56 h-40 shrink-0 rounded-xl bg-slate-50  dark:bg-navy-600">
                                   
                    <div class="mt-4 flex justify-center space-x-2">
          
                      
              <div class="mt-1" x-data="{showModal:false}">
                <button @click="showModal = true">
                  <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                          <div class="flex flex-col items-center space-y-3 text-center">
                      <div class="h-16 w-16 rounded-full bg-gradient-to-r  p-0.5">
                        <img class="h-full w-full rounded-full border-2 border-white object-cover object-center dark:border-navy-700" 
                        src="/index/resources/images/avatar/welcom-01.svg" alt="image">
                      </div>
                      <div>
                        <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                          Welcome Center
                        </p>
                       
                      </div>
                    </div> 
                        </p>
                </button>
                <template x-teleport="#x-teleport-target">
                  <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                    <div class="absolute inset-0 bg-slate-900/60 backdrop-blur transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                    <div class="card px-4 pb-4 sm:px-5 pc mblview">
            <div class="my-3 flex h-8 items-center justify-between">
              <div class="h-16 w-16 rounded-full bg-gradient-to-r  p-0.5" style="position: relative; top: 8%;left: 43%;">
                        <img class="h-full w-full rounded-full border-2 border-white object-cover object-center dark:border-navy-700" 
                        src="/index/resources/images/avatar/welcom-01.svg" alt="image">
                      </div>
              <button @click="showModal = !showModal" class="btn -mr-1.5 h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25" style="top: -.9rem;left: 0.9rem;position: relative;">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                              <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>
                          </button>
            </div>
            <div class="max-w-xl">
              <p>
                Welcome to your new role at Re Sustainability Ltd, where you are part of a diverse and collaborative community. Our Department of Human Resources is here to support you, from your first onboarding steps through your long-term career development.
              </p>
              <div class="mt-5">
                <div x-data="{activeTab:'tabHome'}" class="tabs flex flex-col">
                  <div class="is-scrollbar-hidden overflow-x-auto rounded-lg bg-slate-200 text-slate-600 dark:bg-navy-800 dark:text-navy-200">
                    <div class="tabs-list flex px-1.5 py-1">
                      <button @click="activeTab = 'tabHome'" :class="activeTab === 'tabHome' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium  dark:bg-navy-500 dark:text-navy-100">
                        New Hire Checklist
                      </button>
                      <button @click="activeTab = 'tabProfile'" :class="activeTab === 'tabProfile' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                        Welcome program schedule
                      </button>
                      <button @click="activeTab = 'tabMessages'" :class="activeTab === 'tabMessages' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                        Welcome Video
                      </button>
                      <button @click="activeTab = 'tabSettings'" :class="activeTab === 'tabSettings' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                        FAQ’s
                      </button>
                       <button @click="activeTab = 'tabMessages1'" :class="activeTab === 'tabMessages1' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                        Rewards & Recognition
                      </button>
                      <button @click="activeTab = 'tabSettings2'" :class="activeTab === 'tabSettings2' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                        Contact Us
                      </button>
                    </div>
                  </div>
                  <div class="tab-content pt-4">
                    <div x-show="activeTab === 'tabHome'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" class="" style="">
                      <div>
                        <p>
                         Welcome a new employee? Make sure you follow this checklist of new Hire To-Dos.
                        </p>
                       
                      </div>
                    </div>
                    <div x-show="activeTab === 'tabProfile'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" class="" style="display: none;">
                      <div>
                        <p>
                         Learn more about New employee orientation and other New hire programs that can help you explore life and resources at ReSL.
                        </p>
                       
                      </div>
                    </div>
                    <div x-show="activeTab === 'tabMessages'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" style="display: none;">
                     <!-- <div id="player-wrapper">
					    <div id="player"></div>
					  </div> -->
                    </div>
                    <div x-show="activeTab === 'tabSettings'"  style="height: 356px; overflow: auto;"x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" style="display: none;">
                      <div>
                        <div class="mt-5 flex flex-col space-y-4 sm:space-y-5 lg:space-y-6">
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                     
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Benefits
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="height: 0px; overflow: hidden; display: none;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Commodi earum magni officiis possimus repellendus.
                        Accusantium adipisci aliquid praesentium quaerat
                        voluptate.
                      </p>
                    
                    </div>
                  </div>
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                          General Questions
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Commodi earum magni officiis possimus repellendus.
                        Accusantium adipisci aliquid praesentium quaerat
                        voluptate.
                      </p>
                 
                    </div>
                  </div>
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                    
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Dress Code & Uniform
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Commodi earum magni officiis possimus repellendus.
                        Accusantium adipisci aliquid praesentium quaerat
                        voluptate.
                      </p>
                     
                    </div>
                  </div>
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                    
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Email, Network Access, Technology & Equipment
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Commodi earum magni officiis possimus repellendus.
                        Accusantium adipisci aliquid praesentium quaerat
                        voluptate.
                      </p>
                     
                    </div>
                  </div> 
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                    
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Break Room and Tiger Bucks
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                    
                     
                    </div> 
                  </div>
                </div>
              </div>
                      
                      </div>
                    </div>
                           <div x-show="activeTab === 'tabMessages1'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" style="display: none;">
                      <div>
                       <b> Re Sustainability Ltd encourages the recognition of excellence in the workplace. </b><br>
                        <p>
                    
							We believe rewards should be given promptly, frequently, and consistently to ensure the practice is meaningful. They should also be personal to the recipient and visible when possible. In addition, we feel continuous effort should be made to reward and recognize remote employees to keep them engaged.
							Modes of rewards and recognition may include:
                        </p>
                      <div class="mt-5 flex flex-col space-y-4 sm:space-y-5 lg:space-y-6">
			               <ul>
							  <li>&#9679; Approved time off</li>
							  <li>&#9679; Employee suggestion awards</li>
							  <li> &#9679; Team awards</li>
							  <li> &#9679; Bulletin board recognition</li>
							  <li> &#9679; Attendance/safety awards</li>
							  <li> &#9679; Bonuses</li>
							  <li> &#9679; Local gift cards</li>
							  <li> &#9679; E-Cards or hand-written thank you’s</li>
							  <li> &#9679; Appreciation box</li>
							  <li> &#9679; On-the-spot recognition</li>
							  <li> &#9679; Increased responsibility/visibility</li>
							  <li> &#9679; Job advancement / Stretch assignment</li>
							</ul>

              </div>
                      </div>
                    </div>
                          <div x-show="activeTab === 'tabSettings2'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" style="display: none;">
                      <div>
                        <p>
                       Learn how you can contact the appropriate HR Staff for your issue. For more information reach out to your HR Business Partner.
                        </p>
                      
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
          </div>
                    </div>
                  </div>
                </template>
              </div>
                    </div>
                  </div>

                  <div class="w-56 h-40 shrink-0 rounded-xl bg-slate-50 dark:bg-navy-600">
                         
                    <div class="mt-4 flex justify-center space-x-2">
                                   
              <div class="mt-1" x-data="{showModal:false}">
               
                 <button @click="showModal = true">
                  <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                          <div class="flex flex-col items-center space-y-3 text-center">
                      <div class="h-16 w-16 rounded-full bg-gradient-to-r  p-0.5">
                        <img class="h-full w-full rounded-full border-2 border-white object-cover object-center dark:border-navy-700" 
                        src="/index/resources/images/avatar/our culture-01.svg" alt="image">
                      </div>
                      <div>
                        <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                          Our Culture
                        </p>
                    
                      </div>
                    </div>  
                </button>
                <template x-teleport="#x-teleport-target">
                  <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                    <div class="absolute inset-0 bg-slate-900/60 backdrop-blur transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                      <div class="card px-4 pb-4 sm:px-5 pc mblview">
            <div class="my-3 flex h-8 items-center justify-between">
              <div class="h-16 w-16 rounded-full bg-gradient-to-r  p-0.5" style="position: relative; top: 8%;left: 43%;">
                        <img class="h-full w-full rounded-full border-2 border-white object-cover object-center dark:border-navy-700" 
                        src="/index/resources/images/avatar/our culture-01.svg" alt="image">
                      </div>
              <button @click="showModal = !showModal" class="btn -mr-1.5 h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25" style="top: -.9rem;left: 0.9rem;position: relative;">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                              <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>
                          </button>
            </div>
            <div class="max-w-xl">
              <p>
              </p>
              <div class="mt-5">
                <div x-data="{activeTab:'tabHome'}" class="tabs flex flex-col">
                  <div class="is-scrollbar-hidden overflow-x-auto rounded-lg bg-slate-200 text-slate-600 dark:bg-navy-800 dark:text-navy-200">
                    <div class="tabs-list flex px-1.5 py-1">
                      <button @click="activeTab = 'tabHome'" :class="activeTab === 'tabHome' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium  dark:bg-navy-500 dark:text-navy-100">
                        Mission & Purpose
                      </button>
                      <button @click="activeTab = 'tabProfile'" :class="activeTab === 'tabProfile' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                        Core Values
                      </button>
                      <button @click="activeTab = 'tabMessages'" :class="activeTab === 'tabMessages' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                        Collaboration & Teamwork
                      </button>
                      <button @click="activeTab = 'tabSettings'" :class="activeTab === 'tabSettings' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                        Respect & Inclusion
                      </button>
                       <button @click="activeTab = 'tabMessages1'" :class="activeTab === 'tabMessages1' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                       Learning & Growth
                      </button>
                      <button @click="activeTab = 'tabSettings2'" :class="activeTab === 'tabSettings2' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                        Work-life Balance
                      </button>
                       <button @click="activeTab = 'tabSettings3'" :class="activeTab === 'tabSettings3' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                        Communication
                      </button>
                       <button @click="activeTab = 'tabMessages4'" :class="activeTab === 'tabMessages4' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                       Appreciation
                      </button>
                      <button @click="activeTab = 'tabSettings5'" :class="activeTab === 'tabSettings5' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                        Engagement
                      </button>
                       <button @click="activeTab = 'tabSettings6'" :class="activeTab === 'tabSettings6' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                        Social Responsibility
                      </button>
                    </div>
                  </div>
                  <div class="tab-content pt-4">
                    <div x-show="activeTab === 'tabHome'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" class="" style="">
                      <div>
                        <p>
                        We ensure the highest standards of quality, budgetary, and timely deliverables through our continuous integration approach. And thus enriching the values of our stakeholders.
						<br>Re Sustainability has a clear vision of working as a global enterprise in the world for class infrastructure development and environment management through sustainable growth.

                        </p>
                       
                      </div>
                    </div>
                    <div x-show="activeTab === 'tabProfile'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" class="" style="display: none;">
                      <div>
                        <p>
                         <ul>
							  <li>&#9679; Integrity</li>
							  <li>&#9679; Innovation</li>
							  <li> &#9679; Customer Satisfaction</li>
							  <li> &#9679; Safety, Health, & Environment</li>
							  <li> &#9679; Quality, Timely, & Budgetary Deliverance</li>
							  <li> &#9679; Social Commitment</li>
							 
							</ul>
	                      

                        </p>
                       
                      </div>
                    </div>
                    <div x-show="activeTab === 'tabMessages'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" style="display: none;">
                      <div class="px-4 py-4 sm:px-5">
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Commodi earum magni officiis possimus repellendus.
                        Accusantium adipisci aliquid praesentium quaerat
                        voluptate.
                      </p>
                     
                    </div>
                    </div>
                    <div x-show="activeTab === 'tabSettings'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" style="display: none;">
                      <div>
                          <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Commodi earum magni officiis possimus repellendus.
                        Accusantium adipisci aliquid praesentium quaerat
                        voluptate.
                      </p>
                      
                      </div>
                    </div>
                           <div x-show="activeTab === 'tabMessages1'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" style="display: none;">
                      <div>
                       <b> Re Sustainability Ltd encourages the recognition of excellence in the workplace. </b><br>
                        <p>
                    
							We believe rewards should be given promptly, frequently, and consistently to ensure the practice is meaningful. They should also be personal to the recipient and visible when possible. In addition, we feel continuous effort should be made to reward and recognize remote employees to keep them engaged.
							Modes of rewards and recognition may include:
                        </p>
                    
                      </div>
                    </div>
                          <div x-show="activeTab === 'tabSettings2'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" style="display: none;">
                      <div>
                        <p>
                       Learn how you can contact the appropriate HR Staff for your issue. For more information reach out to your HR Business Partner.
                        </p>
                      
                      </div>
                    </div>
                     <div x-show="activeTab === 'tabSettings3'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" style="display: none;">
                      <div>
                        <p>
                       Learn how you can contact the appropriate HR Staff for your issue. For more information reach out to your HR Business Partner.
                        </p>
                      
                      </div>
                    </div>
                     <div x-show="activeTab === 'tabMessages4'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" style="display: none;">
                      <div>
                        <p>
                       Learn how you can contact the appropriate HR Staff for your issue. For more information reach out to your HR Business Partner.
                        </p>
                      
                      </div>
                    </div>
                    <div x-show="activeTab === 'tabSettings5'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" style="display: none;">
                      <div>
                        <p>
                       Learn how you can contact the appropriate HR Staff for your issue. For more information reach out to your HR Business Partner.
                        </p>
                      
                      </div>
                    </div>
                     <div x-show="activeTab === 'tabSettings6'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" style="display: none;">
                      <div>
                        <p>
                       Learn how you can contact the appropriate HR Staff for your issue. For more information reach out to your HR Business Partner.
                        </p>
                      
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
          </div>
                  </div>
                </template>
              </div>
                    </div>
                  </div>

                 <!--  <div class="w-56 h-40 shrink-0 rounded-xl bg-slate-50  dark:bg-navy-600">
                                
                    <div class="mt-4 flex justify-center space-x-2">
                                  
              <div class="mt-1" x-data="{showModal:false}">
                   <button @click="showModal = true">
                  <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                          <div class="flex flex-col items-center space-y-3 text-center">
                      <div class="h-16 w-16 rounded-full bg-gradient-to-r  p-0.5">
                        <img class="h-full w-full rounded-full border-2 border-white object-cover object-center dark:border-navy-700" 
                        src="/index/resources/images/avatar/help center-01.svg" alt="image">
                      </div>
                      <div>
                        <p class="text-base font-medium text-slate-700 dark:text-navy-100">
							Help Center
                        </p>
                    
                      </div>
                    </div>  
                </button>
                <template x-teleport="#x-teleport-target">
                  <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                    <div class="absolute inset-0 bg-slate-900/60 backdrop-blur transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                    <div class="scrollbar-sm mblview relative flex max-w-lg flex-col overflow-y-auto rounded-lg bg-white px-4 py-10 text-center transition-opacity duration-300 dark:bg-navy-700 sm:px-5" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0" style="
    width: 50rem;">
                      <div class="my-3 flex h-8 items-center justify-between" style="
						    top: 2rem;
						    position: relative;
						    top: -2rem;
						">
						              <div class="h-16 w-16 rounded-full bg-gradient-to-r  p-0.5" style="position: relative;top: 8%;left: 43%;">
						                        <img class="h-full w-full rounded-full border-2 border-white object-cover object-center dark:border-navy-700" src="/index/resources/images/avatar/help center-01.svg" alt="image">
						                      </div>
						              <button @click="showModal = !showModal" class="btn -mr-1.5 h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25" style="top: -.9rem;left: 0.9rem;position: relative;">
						                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
						                              <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
						                            </svg>
						                          </button>
						            </div>

            <div class="max-w-xl">
              <p>
              
              </p>
              <div class="mt-5">
                <div x-data="{activeTab:'tabHome'}" class="tabs flex flex-col">
                  <div class="is-scrollbar-hidden overflow-x-auto rounded-lg bg-slate-200 text-slate-600 dark:bg-navy-800 dark:text-navy-200">
                    <div class="tabs-list flex px-1.5 py-1">
                      
                      
                      <button @click="activeTab = 'tabHome'" :class="activeTab === 'tabHome' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium  dark:bg-navy-500 dark:text-navy-100">
                        IT
                      </button>
                     
                       <button @click="activeTab = 'tabMessages1'" :class="activeTab === 'tabMessages1' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                       HR & Admin
                      </button>
                      <button @click="activeTab = 'tabSettings2'" :class="activeTab === 'tabSettings2' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'" class="btn shrink-0 px-3 py-1.5 font-medium hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100">
                       SCM
                      </button>
                    </div>
                  </div>
                  <div class="tab-content pt-4">
                    
                    
                    <div x-show="activeTab === 'tabHome'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" class="" style="">
                      <div>
                        <div class="mt-5 flex flex-col space-y-4 sm:space-y-5 lg:space-y-6">
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                     
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Benefits
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="height: 0px; overflow: hidden; display: none;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Commodi earum magni officiis possimus repellendus.
                        Accusantium adipisci aliquid praesentium quaerat
                        voluptate.
                      </p>
                    
                    </div>
                  </div>
                </div>
                
                
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                    
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Email, Network Access, Technology &amp; Equipment
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Commodi earum magni officiis possimus repellendus.
                        Accusantium adipisci aliquid praesentium quaerat
                        voluptate.
                      </p>
                     
                    </div>
                  </div> 
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                    
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Break Room and Tiger Bucks
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                    
                     
                    </div> 
                  </div>
                </div>
              </div>
                      
                      </div>
                    </div>
                   
                           <div x-show="activeTab === 'tabMessages1'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" class="" style="display: none;">
                      <div>
                        <div class="mt-5 flex flex-col space-y-4 sm:space-y-5 lg:space-y-6">
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                     
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Benefits
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="height: 0px; overflow: hidden; display: none;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Commodi earum magni officiis possimus repellendus.
                        Accusantium adipisci aliquid praesentium quaerat
                        voluptate.
                      </p>
                    
                    </div>
                  </div>
                </div>
                
                
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                    
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Email, Network Access, Technology &amp; Equipment
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Commodi earum magni officiis possimus repellendus.
                        Accusantium adipisci aliquid praesentium quaerat
                        voluptate.
                      </p>
                     
                    </div>
                  </div> 
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                    
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Break Room and Tiger Bucks
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                    
                     
                    </div> 
                  </div>
                </div>
              </div>
                      
                      </div>
                    </div>
                          <div x-show="activeTab === 'tabSettings2'" x-transition:enter="transition-all duration-500 easy-in-out" x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]" x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]" class="" style="display: none;">
                      <div>
                        <div class="mt-5 flex flex-col space-y-4 sm:space-y-5 lg:space-y-6">
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                     
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Benefits
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="height: 0px; overflow: hidden; display: none;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Commodi earum magni officiis possimus repellendus.
                        Accusantium adipisci aliquid praesentium quaerat
                        voluptate.
                      </p>
                    
                    </div>
                  </div>
                </div>
                
                
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                    
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Email, Network Access, Technology &amp; Equipment
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Commodi earum magni officiis possimus repellendus.
                        Accusantium adipisci aliquid praesentium quaerat
                        voluptate.
                      </p>
                     
                    </div>
                  </div> 
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                    
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Break Room and Tiger Bucks
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                    
                     
                    </div> 
                  </div>
                </div>
              </div>
                      
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
          </div>
                    </div>
                  </div>
                </template>
              </div>
                    </div>
                    
                    
                    
                  </div> -->

                  <div class="w-56 h-40 shrink-0 rounded-xl bg-slate-50 dark:bg-navy-600">
                                  
                    <div class="mt-4 flex justify-center space-x-2">
                                   
              <div class="mt-1" x-data="{showModal:false}">
               
                 <button @click="showModal = true">
                  <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                          <div class="flex flex-col items-center space-y-3 text-center">
                      <div class="h-16 w-16 rounded-full bg-gradient-to-r  p-0.5">
                        <img class="h-full w-full rounded-full border-2 border-white object-cover object-center dark:border-navy-700" 
                        src="/index/resources/images/avatar/policy center-02.svg" alt="image">
                      </div>
                      <div>
                        <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                          Policy Center
                        </p>
                    
                      </div>
                    </div>  
                </button>
                <template x-teleport="#x-teleport-target">
                  <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                    <div class="absolute inset-0 bg-slate-900/60 backdrop-blur transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                    <div class="scrollbar-sm  relative flex max-w-lg flex-col overflow-y-auto rounded-lg bg-white px-4 py-10 text-center transition-opacity duration-300 dark:bg-navy-700 sm:px-5" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0">
               		<div class="my-3 flex h-8 items-center justify-between" style="
						    top: 2rem;
						    position: relative;
						    top: -2rem;
						">
						              <div class="h-16 w-16 rounded-full bg-gradient-to-r  p-0.5" style="position: relative;top: 8%;left: 41%;">
						                        <img class="h-full w-full rounded-full border-2 border-white object-cover object-center dark:border-navy-700" 
						                        src="/index/resources/images/avatar/policy center-02.svg" alt="image">
						                      </div>
						              <button @click="showModal = !showModal" class="btn -mr-1.5 h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25" style="top: -.9rem;left: 0.9rem;position: relative;">
						                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
						                              <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
						                            </svg>
						                          </button>
						            </div>
               
                <div class="mt-5 flex flex-col space-y-4 sm:space-y-5 lg:space-y-6">
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                         <div class="is-initial rounded-full bg-warning uppercase text-white">
                          HR
                        </div>
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                           Human Resources & Admin
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                       Human Resources & Admin
                       	<a href="https://resustainability.darwinbox.in/hrfiles/hrpolicy/employeepolicy" target="_blank" class="btn h-9 w-9 rounded-full bg-info p-0 font-medium text-white hover:bg-info-focus hover:shadow-lg hover:shadow-info/50 focus:bg-info-focus active:bg-info-focus/90">
                  <i class="fa-solid fa-paper-plane"></i>
                </a>
                      </p>
                      
                    </div>
                  </div>
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                        <div class="is-initial rounded-full bg-warning uppercase text-white">
                          IT
                        </div>
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         Information Technology
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                       Information Technology
                   	<a href="https://drive.google.com/drive/folders/14w3OWzHzK7uq8nT3hFU9uKRfcFiChVte?usp=sharing" target="_blank" class="btn h-9 w-9 rounded-full bg-info p-0 font-medium text-white hover:bg-info-focus hover:shadow-lg hover:shadow-info/50 focus:bg-info-focus active:bg-info-focus/90">
                  <i class="fa-solid fa-paper-plane"></i>
                </a>
                      </p>
                
                    </div>
                  </div>
                </div>

                 <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                        <div class="is-initial rounded-full bg-warning uppercase text-white">
                          FI
                        </div>
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                          Finance
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                       Awaiting for Finance Policies
                      </p>
        
                    </div>
                  </div>
                </div>
   
                 <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                         <div class="is-initial rounded-full bg-warning uppercase text-white">
                          LC
                        </div>
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                          Legal & Compliance
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                       Legal & Compliance <a target="_blank" href="https://drive.google.com/drive/folders/17bL9Mord4BXx-wmV039jLO8wTDqOLqdq?usp=sharing" class="btn h-9 w-9 rounded-full bg-info p-0 font-medium text-white hover:bg-info-focus hover:shadow-lg hover:shadow-info/50 focus:bg-info-focus active:bg-info-focus/90">
                  <i class="fa-solid fa-paper-plane"></i>
                </a>
                      </p>
        
                    </div>
                  </div>
                </div>
                 <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                         <div class="is-initial rounded-full bg-warning uppercase text-white">
                          SR
                        </div>
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                          Statutory & Regulatory
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                       Statutory & Regulatory
                        <a target="_blank" href="https://drive.google.com/drive/folders/1voKUD5_dn1bEA2nk_Mi9XhXbCrRMzKBc?usp=sharing" class="btn h-9 w-9 rounded-full bg-info p-0 font-medium text-white hover:bg-info-focus hover:shadow-lg hover:shadow-info/50 focus:bg-info-focus active:bg-info-focus/90">
                  <i class="fa-solid fa-paper-plane"></i>
                </a>
                      </p>
        
                    </div>
                  </div>
                </div>
              </div>
                    </div>
                  </div>
                </template>
              </div>
                    </div>
                  </div>
                  <div class="w-56 h-40 shrink-0 rounded-xl bg-slate-50 dark:bg-navy-600 max-w-xl">
                                  
                    <div class="mt-4 flex justify-center space-x-2">
                                   
              <div class="mt-1" x-data="{showModal:false}">
               
                 <button @click="showModal = true">
                  <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                          <div class="flex flex-col items-center space-y-3 text-center">
                      <div class="h-16 w-16 rounded-full bg-gradient-to-r  p-0.5">
                        <img class="h-full w-full rounded-full border-2 border-white object-cover object-center dark:border-navy-700" 
                        src="/index/resources/images/avatar/violations center copy-02.svg" alt="image">
                      </div>
                      <div>
                        <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                            Violations
                        </p>
                    
                      </div>
                    </div>  
                </button>
                <template x-teleport="#x-teleport-target">
                  <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                    <div class="absolute inset-0 bg-slate-900/60 backdrop-blur transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                    <div class="scrollbar-sm mblview relative flex max-w-lg flex-col overflow-y-auto rounded-lg bg-white px-4 py-10 text-center transition-opacity duration-300 dark:bg-navy-700 sm:px-5" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0" >
                      	<div class="my-3 flex h-8 items-center justify-between" style="
						    top: 2rem;
						    position: relative;
						    top: -2rem;
						">
						              <div class="h-16 w-16 rounded-full bg-gradient-to-r  p-0.5" style="position: relative;top: 8%;left: 41%;">
						                        <img class="h-full w-full rounded-full border-2 border-white object-cover object-center dark:border-navy-700" 
						                        src="/index/resources/images/avatar/violations center copy-02.svg" alt="image"> Violations
						                      </div>
						              <button @click="showModal = !showModal" class="btn -mr-1.5 h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25" style="top: -.9rem;left: 0.9rem;position: relative;">
						                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
						                              <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
						                            </svg>
						                          </button>
						            </div>
						            <div>
<!--             <div class="flex items-center justify-between">
              <h2 class="text-base font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100">
                Collapsible Table
              </h2>
              <div class="flex">
                <div class="flex items-center" x-data="{isInputActive:false}">
                  <label class="block">
                    <input x-effect="isInputActive === true &amp;&amp; $nextTick(() => { $el.focus()});" :class="isInputActive ? 'w-32 lg:w-48' : 'w-0'" class="form-input bg-transparent px-1 text-right transition-all duration-100 placeholder:text-slate-500 dark:placeholder:text-navy-200 w-0 w-32 lg:w-48" placeholder="Search here..." type="text">
                  </label>
                  <button @click="isInputActive = !isInputActive" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                    </svg>
                  </button>
                </div>
                <div x-data="usePopper({placement:'bottom-end',offset:4})" @click.outside="isShowPopper &amp;&amp; (isShowPopper = false)" class="inline-flex">
                  <button x-ref="popperRef" @click="isShowPopper = !isShowPopper" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 5v.01M12 12v.01M12 19v.01M12 6a1 1 0 110-2 1 1 0 010 2zm0 7a1 1 0 110-2 1 1 0 010 2zm0 7a1 1 0 110-2 1 1 0 010 2z"></path>
                    </svg>
                  </button>
                  <div x-ref="popperRoot" class="popper-root" :class="isShowPopper &amp;&amp; 'show'" style="position: fixed; inset: 0px 0px auto auto; margin: 0px; transform: translate(-444px, 156px);" data-popper-placement="bottom-end">
                    <div class="popper-box rounded-md border border-slate-150 bg-white py-1.5 font-inter dark:border-navy-500 dark:bg-navy-700">
                      <ul>
                        <li>
                          <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Action</a>
                        </li>
                        <li>
                          <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Another Action</a>
                        </li>
                        <li>
                          <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Something else</a>
                        </li>
                      </ul>
                      <div class="my-1 h-px bg-slate-150 dark:bg-navy-500"></div>
                      <ul>
                        <li>
                          <a href="#" class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100">Separated Link</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
 -->            <div class="card mt-3">
              <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                <table class="w-full text-left">
                  <thead>
                    <tr>
                      <th class="whitespace-nowrap rounded-tl-lg bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        #
                      </th>
                     <!--  <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Identity
                      </th> -->
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">Violation Type</th>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">Department</th>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">Violation Report</th>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">EMail</th>
                      
                      <th class="whitespace-nowrap rounded-tr-lg bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        More
                      </th>
                    </tr>
                  </thead>
                  <tbody x-data="{expanded:false}">
                    <tr class="border-y border-transparent">
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">1</td>
                      <!-- <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <div class="avatar flex">
                          <img class="rounded-full" src="/index/resources/images/avatar/avatar-3.jpg" alt="avatar">
                        </div>
                      </td> -->
                      <td class="whitespace-nowrap px-4 py-3 font-medium text-slate-700 dark:text-navy-100 sm:px-5">
                        Whistleblower  
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Legal & Compliance
                      </td>
                       <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Legal
                      </td>
                       <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <a href="mailto:ethics.reel@resustainability.com"> ethics.reel@resustainability.com</a>
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <button @click="expanded = !expanded" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                          <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                      <td colspan="100" class="p-0">
                        <div x-show="expanded" x-collapse="" style="height: 0px; overflow: hidden; display: none;" hidden="">
                          <div class="px-4 pb-4 sm:px-5">
                            <p>
                              Lorem ipsum dolor, sit amet consectetur
                              adipisicing elit. Aut amet sunt repudiandae!
                            </p>
                            <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                              <table class="is-hoverable w-full text-left">
                                <thead>
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      #
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Name
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Job
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Favorite Color
                                    </th>
                                  </tr>
                                </thead>
                                <tbody>
                                  
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      4
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Marjy Ferencz
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Office Assistant I
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Crimson
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="text-right">
                              <button @click="expanded = false" class="btn mt-2 h-8 rounded px-3 text-xs+ font-medium text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                                Hide
                              </button>
                            </div>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent">
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">2</td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <div class="avatar flex">
                          <img class="rounded-full" src="/index/resources/images/avatar/avatar-3.jpg" alt="avatar">
                        </div>
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 font-medium text-slate-700 dark:text-navy-100 sm:px-5">
                        POSH    
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Human Resources
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <a href="mailto:posh.reel@resustainability.com"> posh.reel@resustainability.com</a>
                      </td>
                      
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <button @click="expanded = !expanded" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                          <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                      <td colspan="100" class="p-0">
                        <div x-show="expanded" x-collapse="" style="height: 0px; overflow: hidden; display: none;" hidden="">
                          <div class="px-4 pb-4 sm:px-5">
                            <p>
                              Lorem ipsum dolor, sit amet consectetur
                              adipisicing elit. Aut amet sunt repudiandae!
                            </p>
                            <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                              <table class="is-hoverable w-full text-left">
                                <thead>
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      #
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Name
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Job
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Favorite Color
                                    </th>
                                  </tr>
                                </thead>
                                <tbody>
                                  
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      4
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Marjy Ferencz
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Office Assistant I
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Crimson
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="text-right">
                              <button @click="expanded = false" class="btn mt-2 h-8 rounded px-3 text-xs+ font-medium text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                                Hide
                              </button>
                            </div>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent">
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">3</td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <div class="avatar flex">
                          <img class="rounded-full" src="/index/resources/images/avatar/avatar-3.jpg" alt="avatar">
                        </div>
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 font-medium text-slate-700 dark:text-navy-100 sm:px-5">
                        Whistleblower  
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Human Resources
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <a href="mailto:hr@resustainability.com">  hr@resustainability.com</a>
                      </td>
                      
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <button @click="expanded = !expanded" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                          <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                      <td colspan="100" class="p-0">
                        <div x-show="expanded" x-collapse="" style="height: 0px; overflow: hidden; display: none;" hidden="">
                          <div class="px-4 pb-4 sm:px-5">
                            <p>
                              Lorem ipsum dolor, sit amet consectetur
                              adipisicing elit. Aut amet sunt repudiandae!
                            </p>
                            <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                              <table class="is-hoverable w-full text-left">
                                <thead>
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      #
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Name
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Job
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Favorite Color
                                    </th>
                                  </tr>
                                </thead>
                                <tbody>
                                  
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      4
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Marjy Ferencz
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Office Assistant I
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Crimson
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="text-right">
                              <button @click="expanded = false" class="btn mt-2 h-8 rounded px-3 text-xs+ font-medium text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                                Hide
                              </button>
                            </div>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent">
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">4</td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <div class="avatar flex">
                          <img class="rounded-full" src="/index/resources/images/avatar/avatar-3.jpg" alt="avatar">
                        </div>
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 font-medium text-slate-700 dark:text-navy-100 sm:px-5">
                        IT Policy   
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Information Technology
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <a href="mailto:it.helpdesk@resustainability.com"> it.helpdesk@resustainability.com</a>
                      </td>
                      
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <button @click="expanded = !expanded" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                          <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                      <td colspan="100" class="p-0">
                        <div x-show="expanded" x-collapse="" style="height: 0px; overflow: hidden; display: none;" hidden="">
                          <div class="px-4 pb-4 sm:px-5">
                            <p>
                              Lorem ipsum dolor, sit amet consectetur
                              adipisicing elit. Aut amet sunt repudiandae!
                            </p>
                            <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                              <table class="is-hoverable w-full text-left">
                                <thead>
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      #
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Name
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Job
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Favorite Color
                                    </th>
                                  </tr>
                                </thead>
                                <tbody>
                                  
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      4
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Marjy Ferencz
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Office Assistant I
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Crimson
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="text-right">
                              <button @click="expanded = false" class="btn mt-2 h-8 rounded px-3 text-xs+ font-medium text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                                Hide
                              </button>
                            </div>
                          </div>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                  
                  
                  
                </table>
              </div>

              <!-- <div class="flex flex-col justify-between space-y-4 px-4 py-4 sm:flex-row sm:items-center sm:space-y-0 sm:px-5">
                <div class="text-xs+">1 - 4 of 10 entries</div>

                <ol class="pagination">
                  <li class="rounded-l-full bg-slate-150 dark:bg-navy-500">
                    <a href="#" class="flex h-8 w-8 items-center justify-center rounded-full text-slate-500 transition-colors hover:bg-slate-300 focus:bg-slate-300 active:bg-slate-300/80 dark:text-navy-200 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 19l-7-7 7-7"></path>
                      </svg>
                    </a>
                  </li>
                  <li class="bg-slate-150 dark:bg-navy-500">
                    <a href="#" class="flex h-8 min-w-[2rem] items-center justify-center rounded-full px-3 leading-tight transition-colors hover:bg-slate-300 focus:bg-slate-300 active:bg-slate-300/80 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90">1</a>
                  </li>
                  <li class="bg-slate-150 dark:bg-navy-500">
                    <a href="#" class="flex h-8 min-w-[2rem] items-center justify-center rounded-full bg-primary px-3 leading-tight text-white transition-colors hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90">2</a>
                  </li>
                  <li class="bg-slate-150 dark:bg-navy-500">
                    <a href="#" class="flex h-8 min-w-[2rem] items-center justify-center rounded-full px-3 leading-tight transition-colors hover:bg-slate-300 focus:bg-slate-300 active:bg-slate-300/80 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90">3</a>
                  </li>
                  <li class="bg-slate-150 dark:bg-navy-500">
                    <a href="#" class="flex h-8 min-w-[2rem] items-center justify-center rounded-full px-3 leading-tight transition-colors hover:bg-slate-300 focus:bg-slate-300 active:bg-slate-300/80 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90">4</a>
                  </li>
                  <li class="bg-slate-150 dark:bg-navy-500">
                    <a href="#" class="flex h-8 min-w-[2rem] items-center justify-center rounded-full px-3 leading-tight transition-colors hover:bg-slate-300 focus:bg-slate-300 active:bg-slate-300/80 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90">5</a>
                  </li>
                  <li class="rounded-r-full bg-slate-150 dark:bg-navy-500">
                    <a href="#" class="flex h-8 w-8 items-center justify-center rounded-full text-slate-500 transition-colors hover:bg-slate-300 focus:bg-slate-300 active:bg-slate-300/80 dark:text-navy-200 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
                      </svg>
                    </a>
                  </li>
                </ol>
              </div> -->
            </div>
          </div>
                      <!-- <div class="mt-5 flex flex-col space-y-4 sm:space-y-5 lg:space-y-6">
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                        <img class="rounded-full" src="/index/resources/images/avatar/avatar-10.jpg" alt="avatar">
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                           Whistleblower
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                       ethics.reel@resustainability.com
                      </p>
                      
                    </div>
                  </div>
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                        <div class="is-initial rounded-full bg-warning uppercase text-white">
                          KG
                        </div>
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                         POSH
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                       posh.reel@resustainability.com
                      </p>
                
                    </div>
                  </div>
                </div>
                <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                        <img class="rounded-full" src="/index/resources/images/avatar/avatar-19.jpg" alt="avatar">
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                          HR Policy
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                       hr@resustainability.com
                      </p>
        
                    </div>
                  </div>
                </div>
                 <div x-data="{expanded:false}" class="overflow-hidden rounded-lg border border-slate-150 dark:border-navy-500">
                  <div class="flex items-center justify-between bg-slate-150 px-4 py-4 dark:bg-navy-500 sm:px-5">
                    <div class="flex items-center space-x-3.5 tracking-wide outline-none transition-all">
                      <div class="avatar h-10 w-10">
                        <img class="rounded-full" src="/index/resources/images/avatar/avatar-19.jpg" alt="avatar">
                      </div>
                      <div>
                        <p class="text-slate-700 line-clamp-1 dark:text-navy-100">
                          IT Policy 
                        </p>
                        <p class="text-xs text-slate-500 dark:text-navy-300">
                        </p>
                      </div>
                    </div>
                    <button @click="expanded = !expanded" class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                      <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                    </button>
                  </div>
                  <div x-collapse="" x-show="expanded" style="display: none; height: 0px; overflow: hidden;" hidden="">
                    <div class="px-4 py-4 sm:px-5">
                      <p>
                        it.helpdesk@resustainability.com
                      </p>
        
                    </div>
                  </div>
                </div>
              </div> -->
                    </div>
                  </div>
                </template>
              </div>
                    </div>
                  </div>
                  <div class="w-56 h-40 shrink-0 rounded-xl bg-slate-50 dark:bg-navy-600">
                                  
                    <div class="mt-4 flex justify-center space-x-2">
                                   
              <div class="mt-1" x-data="{showModal:false}">
               
                 <button @click="showModal = true">
                  <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                          <div class="flex flex-col items-center space-y-3 text-center">
                      <div class="h-16 w-16 rounded-full bg-gradient-to-r  p-0.5">
                        <img class="h-full w-full rounded-full border-2 border-white object-cover object-center dark:border-navy-700" 
                        src="/index/resources/images/avatar/management corner copy-02.svg" alt="image">
                      </div>
                      <div>
                        <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                           Management Corner
                        </p>
                    
                      </div>
                    </div>  
                </button>
                <template x-teleport="#x-teleport-target">
                  <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                    <div class="absolute inset-0 bg-slate-900/60 backdrop-blur transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                    <div class="scrollbar-sm mblview relative flex max-w-lg flex-col overflow-y-auto rounded-lg bg-white px-4 py-10 text-center transition-opacity duration-300 dark:bg-navy-700 sm:px-5" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0">
                      <div class="my-3 flex h-8 items-center justify-between" style="
						    top: 2rem;
						    position: relative;
						    top: -2rem;
						">
						              <div class="h-16 w-16 rounded-full bg-gradient-to-r  p-0.5" style="position: relative;top: 8%;left: 43%;">
						                        <img class="h-full w-full rounded-full border-2 border-white object-cover object-center dark:border-navy-700" 
						                        src="/index/resources/images/avatar/management corner copy-02.svg" alt="image">
						                      </div>
						              <button @click="showModal = !showModal" class="btn -mr-1.5 h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25" style="top: -.9rem;left: 0.9rem;position: relative;">
						                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
						                              <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
						                            </svg>
						                          </button>
						            </div>

                      <div class="mt-4">
                       <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                <table class="w-full text-left">
                  <thead>
                    <tr>
                      <th class="whitespace-nowrap rounded-tl-lg bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        #
                      </th>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        Profile
                      </th>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">Name</th>
                                            <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">Role</th>
                      
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">Department</th>
                      <th class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">Email</th>
                      
                      <th class="whitespace-nowrap rounded-tr-lg bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                        More
                      </th>
                    </tr>
                  </thead>
                  <tbody x-data="{expanded:false}">
                    <tr class="border-y border-transparent">
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">1</td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <div class="avatar flex">
                          <img class="rounded-full" src="/index/resources/images/avatar/Goutham.png" alt="avatar">
                        </div>
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 font-medium text-slate-700 dark:text-navy-100 sm:px-5">
                        Mr. M Goutham Reddy  
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Executive Director, Managing Director, ReSL
                      </td>
                       <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Business Support


                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <a href="mailto:mgr@resustainability.com"> mgr@resustainability.com</a>
                      </td>
                      
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <button @click="expanded = !expanded" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                          <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                      <td colspan="100" class="p-0">
                        <div x-show="expanded" x-collapse="" style="height: 0px; overflow: hidden; display: none;" hidden="">
                          <div class="px-4 pb-4 sm:px-5">
                            <p>
                              Lorem ipsum dolor, sit amet consectetur
                              adipisicing elit. Aut amet sunt repudiandae!
                            </p>
                            <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                              <table class="is-hoverable w-full text-left">
                                <thead>
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      #
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Name
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Job
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Favorite Color
                                    </th>
                                  </tr>
                                </thead>
                                <tbody>
                                  
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      4
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Marjy Ferencz
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Office Assistant I
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Crimson
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="text-right">
                              <button @click="expanded = false" class="btn mt-2 h-8 rounded px-3 text-xs+ font-medium text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                                Hide
                              </button>
                            </div>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent">
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">2</td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <div class="avatar flex">
                          <img class="rounded-full" src="/index/resources/images/avatar/Masood.png" alt="avatar">
                        </div>
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 font-medium text-slate-700 dark:text-navy-100 sm:px-5">
                        Mr. Masood Mallick    
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Chief Executive Officer
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Business Operations


                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <a href="mailto:mm@resustainability.com"> mm@resustainability.com</a>
                      </td>
                      
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <button @click="expanded = !expanded" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                          <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                      <td colspan="100" class="p-0">
                        <div x-show="expanded" x-collapse="" style="height: 0px; overflow: hidden; display: none;" hidden="">
                          <div class="px-4 pb-4 sm:px-5">
                            <p>
                              Lorem ipsum dolor, sit amet consectetur
                              adipisicing elit. Aut amet sunt repudiandae!
                            </p>
                            <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                              <table class="is-hoverable w-full text-left">
                                <thead>
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      #
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Name
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Job
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Favorite Color
                                    </th>
                                  </tr>
                                </thead>
                                <tbody>
                                  
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      3
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Marjy Ferencz
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Office Assistant I
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Crimson
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="text-right">
                              <button @click="expanded = false" class="btn mt-2 h-8 rounded px-3 text-xs+ font-medium text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                                Hide
                              </button>
                            </div>
                          </div>
                        </div>
                      </td>
                    </tr>
             <!--        <tr class="border-y border-transparent">
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">3</td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <div class="avatar flex">
                          <img class="rounded-full" src="/index/resources/images/avatar/Anil.png" alt="avatar">
                        </div>
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 font-medium text-slate-700 dark:text-navy-100 sm:px-5">
                        Mr. Anil Khandelwal  
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Executive Director, Joint Managing Director, ReSL
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Business Support
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <a href="mailto:anil.khandelwal@resustainability.com"> anil.khandelwal@resustainability.com</a>
                      </td>
                      
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <button @click="expanded = !expanded" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                          <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                        </button>
                      </td>
                    </tr> -->
                    <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                      <td colspan="100" class="p-0">
                        <div x-show="expanded" x-collapse="" style="height: 0px; overflow: hidden; display: none;" hidden="">
                          <div class="px-4 pb-4 sm:px-5">
                            <p>
                              Lorem ipsum dolor, sit amet consectetur
                              adipisicing elit. Aut amet sunt repudiandae!
                            </p>
                            <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                              <table class="is-hoverable w-full text-left">
                                <thead>
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      #
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Name
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Job
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Favorite Color
                                    </th>
                                  </tr>
                                </thead>
                                <tbody>
                                  
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      4
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Marjy Ferencz
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Office Assistant I
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Crimson
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="text-right">
                              <button @click="expanded = false" class="btn mt-2 h-8 rounded px-3 text-xs+ font-medium text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                                Hide
                              </button>
                            </div>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent">
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">3</td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <div class="avatar flex">
                          <img class="rounded-full" src="/index/resources/images/avatar/Pankaj.png" alt="avatar">
                        </div>
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 font-medium text-slate-700 dark:text-navy-100 sm:px-5">
                        Mr. Pankaj Maharaj
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Chief Financial Officer
                      </td>
                       <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Finance & Accounts
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <a href="mailto:pankaj.maharaj@resustainability.com"> pankaj.maharaj@resustainability.com</a>
                      </td>
                      
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <button @click="expanded = !expanded" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                          <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                      <td colspan="100" class="p-0">
                        <div x-show="expanded" x-collapse="" style="height: 0px; overflow: hidden; display: none;" hidden="">
                          <div class="px-4 pb-4 sm:px-5">
                            <p>
                              Lorem ipsum dolor, sit amet consectetur
                              adipisicing elit. Aut amet sunt repudiandae!
                            </p>
                            <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                              <table class="is-hoverable w-full text-left">
                                <thead>
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      #
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Name
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Job
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Favorite Color
                                    </th>
                                  </tr>
                                </thead>
                                <tbody>
                                  
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      4
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Marjy Ferencz
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Office Assistant I
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Crimson
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="text-right">
                              <button @click="expanded = false" class="btn mt-2 h-8 rounded px-3 text-xs+ font-medium text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                                Hide
                              </button>
                            </div>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent">
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">4</td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <div class="avatar flex">
                          <img class="rounded-full" src="/index/resources/images/avatar/Shujath.png" alt="avatar">
                        </div>
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 font-medium text-slate-700 dark:text-navy-100 sm:px-5">
                        Mr. Shujath Bin Ali   
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        General Counsel & Chief Compliance Officer
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Business Support
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <a href="mailto:shujath@resustainability.com"> shujath@resustainability.com</a>
                      </td>
                      
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <button @click="expanded = !expanded" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                          <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                      <td colspan="100" class="p-0">
                        <div x-show="expanded" x-collapse="" style="height: 0px; overflow: hidden; display: none;" hidden="">
                          <div class="px-4 pb-4 sm:px-5">
                            <p>
                              Lorem ipsum dolor, sit amet consectetur
                              adipisicing elit. Aut amet sunt repudiandae!
                            </p>
                            <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                              <table class="is-hoverable w-full text-left">
                                <thead>
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      #
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Name
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Job
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Favorite Color
                                    </th>
                                  </tr>
                                </thead>
                                <tbody>
                                  
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      4
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Marjy Ferencz
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Office Assistant I
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Crimson
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="text-right">
                              <button @click="expanded = false" class="btn mt-2 h-8 rounded px-3 text-xs+ font-medium text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                                Hide
                              </button>
                            </div>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent">
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">5</td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <div class="avatar flex">
                          <img class="rounded-full" src="/index/resources/images/avatar/Sujiv.png" alt="avatar">
                        </div>
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 font-medium text-slate-700 dark:text-navy-100 sm:px-5">
                        Dr Sujiv Nair   
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Chief Human Resource Officer & Chief Transformation Officer
                      </td>
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        Human Resources
                      </td>
                      
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <a href="mailto:sujiv@resustainability.com"> sujiv@resustainability.com</a>
                      </td>
                      
                      <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                        <button @click="expanded = !expanded" class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                          <i :class="expanded &amp;&amp; '-rotate-180'" class="fas fa-chevron-down text-sm transition-transform"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                      <td colspan="100" class="p-0">
                        <div x-show="expanded" x-collapse="" style="height: 0px; overflow: hidden; display: none;" hidden="">
                          <div class="px-4 pb-4 sm:px-5">
                            <p>
                              Lorem ipsum dolor, sit amet consectetur
                              adipisicing elit. Aut amet sunt repudiandae!
                            </p>
                            <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                              <table class="is-hoverable w-full text-left">
                                <thead>
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      #
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Name
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Job
                                    </th>
                                    <th class="whitespace-nowrap px-3 py-3 font-semibold uppercase text-slate-800 dark:text-navy-100 lg:px-5">
                                      Favorite Color
                                    </th>
                                  </tr>
                                </thead>
                                <tbody>
                                  
                                  <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      4
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Marjy Ferencz
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Office Assistant I
                                    </td>
                                    <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                      Crimson
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="text-right">
                              <button @click="expanded = false" class="btn mt-2 h-8 rounded px-3 text-xs+ font-medium text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                                Hide
                              </button>
                            </div>
                          </div>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                  
                  
                  
                </table>
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
              <div id="mobileClass2" class="pt-4 swiper swiper-initialized swiper-horizontal" x-init="$nextTick(()=>$el._x_swiper= new Swiper($el,{  slidesPerView: 'auto', spaceBetween: 14,navigation:{nextEl:'.next-btn',prevEl:'.prev-btn'}}))">
              <div class="flex items-center justify-between">
                <p class="text-base font-medium text-slate-700 dark:text-navy-100">
                 Follow us on :
                </p>
                <div class="flex">
                  <button class="btn prev-btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 disabled:pointer-events-none disabled:select-none disabled:opacity-60 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25 swiper-button-disabled" disabled="" tabindex="-1" aria-label="Previous slide" aria-controls="swiper-wrapper-e81bb6417afcc109a" aria-disabled="true">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="#e21e26">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M15 19l-7-7 7-7"></path>
                    </svg>
                  </button>
                  <button class="btn next-btn h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 disabled:pointer-events-none disabled:select-none disabled:opacity-60 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25" tabindex="0" aria-label="Next slide" aria-controls="swiper-wrapper-e81bb6417afcc109a" aria-disabled="false">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="#e21e26">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M9 5l7 7-7 7"></path>
                    </svg>
                  </button>
                </div>
              </div>
              <div class="swiper-wrapper mt-5" x-data="{selected:'slide-0'}" id="swiper-wrapper-e81bb6417afcc109a" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
               <div class="card swiper-slide w-24 shrink-0 cursor-pointer swiper-slide-active" @click="selected = 'slide-8'" role="group" aria-label="1 / 16" style="margin-right: 14px;">
                  <a  href="https://m.facebook.com/search/top?q=re%20sustainability%20limited"  target="_blank" class="flex flex-col items-center rounded-lg px-2 py-4 text-slate-600 dark:text-navy-100" :class="selected === 'slide-8' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' ">
                    <img class="w-12" src="https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-2019-circle-512.png" alt="image">
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Facebook
                    </h3>
                  </a> 
                </div> 
                 <div class="card swiper-slide w-24 shrink-0 cursor-pointer swiper-slide-next" @click="selected = 'slide-7'" role="group" aria-label="2 / 16" style="margin-right: 14px;">
                 <a href="https://mobile.twitter.com/WeAre_Re" target="_blank" class="flex flex-col items-center rounded-lg px-2 py-4 text-slate-600 dark:text-navy-100" :class="selected === 'slide-7' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' ">
                    <img class="w-12" src="https://seeklogo.com/images/T/twitter-x-logo-8FD8E6C4FD-seeklogo.com.png?v=638258862930000000" alt="image">
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                    Twitter
                    </h3>
                  </a>
                </div>
                 <div class="card swiper-slide w-24 shrink-0 cursor-pointer" @click="selected = 'slide-4'" role="group" aria-label="3 / 16" style="margin-right: 14px;">
                  <a href="https://www.linkedin.com/company/resustainability/" target="_blank" class="flex flex-col items-center rounded-lg px-2 py-4 text-slate-600 dark:text-navy-100" :class="selected === 'slide-4' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' ">
                    <img class="w-12" src="https://cdn1.iconfinder.com/data/icons/logotypes/32/circle-linkedin-512.png" alt="image">
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Linked In
                    </h3>
                  </a>
                </div>
                <div class="card swiper-slide w-24 shrink-0 cursor-pointer" @click="selected = 'slide-1'" role="group" aria-label="4 / 16" style="margin-right: 14px;">
                  <a href="https://www.instagram.com/resustainability/" target="_blank" class="flex flex-col items-center rounded-lg px-2 py-4 text-slate-600 dark:text-navy-100" :class="selected === 'slide-1' ? 'text-secondary bg-secondary/10  dark:bg-secondary-light/10 dark:text-secondary-light' : 'text-slate-600 dark:text-navy-100' ">
                    <img class="w-12" src="https://cdn3.iconfinder.com/data/icons/popular-services-brands/512/instagram-512.png" alt="image">
                    <h3 class="pt-2 font-medium tracking-wide line-clamp-1">
                      Instagram
                    </h3>
                  </a>
                </div>
              </div>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
              <div class="mt-4 grid grid-cols-12 gap-4  py-5 dark:bg-navy-800 sm:mt-5 sm:gap-5 lg:mt-6 lg:gap-6" id="iconsCLass">

            <div class="is-scrollbar-hidden col-span-12 flex space-x-4 overflow-x-auto px-[var(--margin-x)] transition-all duration-[.25s] lg:pl-0">
                <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v17.0" nonce="j0wHEvi1"></script>
              <div class="card w-72 shrink-0 space-y-9 rounded-xl p-4 sm:px-5">
<div class="fb-page" data-href="https://www.facebook.com/WeAreResustainability/" data-tabs="timeline" data-width="248" data-height="786" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/WeAreResustainability/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/WeAreResustainability/">Re Sustainability Limited</a></blockquote></div>              
              </div>
      
              
              <div class="card w-72 shrink-0 space-y-9 rounded-xl p-4 sm:px-5">
                <div class="flex justify-between space-x-2">
                  <div>
<a class="twitter-timeline" data-width="248" data-height="786" data-theme="light" href="https://twitter.com/WeAre_Re?ref_src=twsrc%5Etfw">Tweets by WeAre_Re</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>                  </div>
                </div>
               
              <!--   <div class="flex justify-between">
                  <div class="flex space-x-2">
                    <img x-tooltip="'Award Level 1'" class="h-6 w-6" src="images/awards/award-19.svg" alt="avatar">
                    <img x-tooltip="'Award Level 2'" class="h-6 w-6" src="images/awards/award-2.svg" alt="avatar">
                    <img x-tooltip="'Award Level 3'" class="h-6 w-6" src="images/awards/award-5.svg" alt="avatar">
                  </div>
                  <button class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">
                      <path stroke-linecap="round" stroke-linejoin="round" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path>
                      <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                    </svg>
                  </button>
                </div> -->
              </div>
              <div class="card w-72 shrink-0 space-y-9 rounded-xl p-4 sm:px-5">
                <div class="flex items-center justify-between space-x-2">
                  <div class="flex items-center space-x-3">
                    <div class="avatar">
                      <img class="mask is-squircle" src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/LinkedIn_icon_circle.svg/1024px-LinkedIn_icon_circle.svg.png" alt="image">
                    </div>
                    <div>
                      <p class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                        Linked In
                      </p>
                      <p class="text-xs text-slate-400 dark:text-navy-300">
                        #resustainability
                      </p>
                    </div>
                  </div>
                
                </div>
                <div class="flex justify-between space-x-2">
                  <div>
                    <p class="text-xs+"><iframe src="https://www.linkedin.com/embed/feed/update/urn:li:ugcPost:7066365149405679616" height="736" width="265" frameborder="0" allowfullscreen=""></iframe></p>
                    
                  </div>
                 
                </div>
           
              </div>
             <div class="card w-72 shrink-0 space-y-9 rounded-xl p-4 sm:px-5">
                <div class="flex items-center justify-between space-x-2">
                  <div class="flex items-center space-x-3">
                    <div class="avatar">
                      <img class="mask is-squircle" src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/2048px-Instagram_icon.png" alt="image">
                    </div>
                    <div>
                      <p class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                        Instagram
                      </p>
                      <p class="text-xs text-slate-400 dark:text-navy-300">
                        @resustainability
                      </p>
                    </div>
                  </div>
                
                </div>
                <div class="flex justify-between space-x-2">
                  <div>
                    <a class="text-xs+" href="https://www.instagram.com/resustainability/" target="_blank">
                    <img  src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMHEg8REBEVEA8SEg8VEhAQFRIPEBYRFRIWFhcWFRUYHyggGB0lGxgTLT0hJSwtLi4uFx8zODYsNygtLisBCgoKDg0OGxAQGy0lICUtLS0vLS0tLS0tLS0tLS0tLS0tLS0tLS8tLS4tLS0rLS0tLS0tLS0tLS0uLS0tLS0tLf/AABEIAOEA4QMBEQACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABAYBAwUCB//EAEQQAAICAAIFBwgFCwQDAAAAAAABAgMEEQUGEiExEyJBUWGS0gcWVHGBkZOhFBcysfAjQkRTYnJzgrLB0SRSosIVM0P/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAgMFBAEG/8QAOBEBAAIBAgIGCAUEAgMBAAAAAAECAwQRBSESMUFRoeETFSJhcZGx0TJSU4HwFBZCwSOSQ2LxBv/aAAwDAQACEQMRAD8A+4gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4emNa8NoluM7Nuxca6ltyXY+iPtaOjFpcuSN4jl3ytphvfqV27ykb+Zhm11zsUX7lF/edH9Bt12ddNBM9cveG8o0W/ymGlFddc1N+5pfeU20u3VKc8MtP4bO3VrLHSMc8HsW2pZui2bos/lzTT+7tKehtO1nPbSWxT/AMu8R3xzhwsR5QLcNKULMGoTi8pRlY00+4Xf08Tzizrpw2t43i/L4ebX9Y0/RY/FfgIzgiO1ZHCY/P4ebK8osvRo/FfgIzi27Uo4PH5/DzPrFn6NH4r8BHoJepY/P4ebK8okvRo/FfgITCXqOPz+HmfWHP0aPxX4SMyl6ij9Tw82frDl6NH4r8B5NtkvUEfqeHmfWHL0aPxX4CPpHv8Ab8fqeHmfWFP0aPxX4Dz0j3+36/qeHmfWFP0aPxX4Dz0vuP7ej9Tw83qPlAk/0aPxH4Tyc3ueT/8An6/qeHm9rX2T/R4/EfhITqduxGeAR+p4ebYteZP9HXxH4SudZPcjPA4/P4ebZHXST/8Agu+/CVzr5j/HxQngsR/n4ebdVrg39qnd2T/zEj6y266+Ku3B9uq/h5utgdP04vJZuuT6J7l7+B0YtdhvO2+0+9w5tDmxc9t49zqnY4wAAAAAAAD5xrnrjK2UsPhZbMI5qy6O6Un0xg+hdvT0buOxo9DERGTL+0f7l14cG/OVHSyO3JkaVKNsa2+h+5nHfJDppFe975KS4xa9jOW93VTo97Nb2WnF5NPNNPJprpTXBnNazqjHExtK04TEx1oisPiGo4uK/wBPieDllv5Ozr/HTxhjy9GWTqNLbST6bF+Dtju98KtfRLDSlCacZxbUovimjs335uvHaLVi0dUvKK5XwyiqVkPSK5WQFcphCycMkEmTxKAjKT3AhKEt0CmyEpECmVUt9ZRZVKRAosqlIgUWVWd3Qul5YRqE3nV73H1dnYdej4hbFPQv+H6eTK1eji/tU5T9VtjLa3reus+jiYmN4YjJ6AAAAArevml3ovDNQeVtz5OLXFLLnSXs3euSOvRYYyZOfVHNdgx9Oz5RhqHfKEIrOUpRjFftSeS+ZtZcu0TLWrXoxvK84/H1am7NGHqhbidlO2+xdL6N2/2JpJZcTG9rN7Vp5OfDgvqvbtO0dkIXn/i3+bT3J+MrtjrDtjhWHtmfnH2b8FrrjcZOFcIUznN5RjsyWb9e3uKpiISycK01KTe0zER8Ps6OMwi1gWIqtojRpCmKknBpxnFrNb1xT4b88s12ohPPk58WWdJNMlLdLHadufZ5qHCTi008mmmmtzTW9NHPMvqujExtPU7+s6WkqcNjkspz/JX5frYLdL2pP2bJ3ae+8bPn8FJwZ76eeqOcfCVbRbLRhlFUrIZTK5WQzmVymEbJwyVpCZ4lBmRSbIMhKEtsGU2QlIgymVUpFZRZVKRAosqlJrKLKpSIHPdTK0at4rlIut8Yb4/uvo9j+83uD6jp0nHPZ1fBia7F0bdOO36u0bLgAAAAB8z8p923iKa+iFO17Zzaf9CNTQezSZ75aehpvWZ97g6tRzxeE/jVfKSZLUX3pLuz12w2+Doa2UvFaRuhH7U7KIRz4ZyrrSOOltqQs0MxTTReeyJnxl29IaUr1Saw2EqhK6MYu26xNttrPLdk3u38clmiiZ35y59PpL62PS5bTEdkQ94LFx1sjZzFTj6Y8pVbVzc8vnlnksnn9rNEN90suG2gtHPpY7cpiUTULFTxeNnOyTnOVE85S3t5SryK6zvLq4xhpj0la0jaItH0lV7I86S/al95z2luY59iPhDv6Phy2A0hW/zHTbH17W/5R+Zfo7722YnEPZ1eK/fvH8+aro0JdcMlcrYXXTOIuweFw3I0xdUsHW7bHVtZNwSz2uh7yqeth6bHiyZ79O079LlG7oYiMXO/BcnD6PDAuyK2VtqxZc7a695GVNOlFa6jpT0pvt+ys61QUK9H5JLPBUt5JLN5cWQs2OGTM3zb/nn/AGka20xeLohklGVWGTS3fak0+BG0c0OGXtGkvbtibfR2NL2K5aTodcFXhK6ZUKMVFxlsbXH1/IlPbDg09JrODLFp3vMxbn189kvFYGEnpOWzFcrRXye5bmsPN7urh8hMdaime0Rgjf8ADad/+0K5pyCrxWFgkkoVYOLSS48Xn7yi/wCKGxopmdLktPbN5dfG1RVmmeaso10ZZJbuYuHULf5s/Ha3Q03Ptt9WzT+JjRBw5KMsLZVD6NOuKyjNLPNy/G72kM9ujG23KY5I6LFN7xfpTF4n2onthWazLs3ZSIFFlUpNZRZVKRWc91MutoGexdHt2l8s/wCyOrhd+jqqx37wz9dXfFK2H1rFAAAAB8z8ptOziap9EqUl64zln/Uju01tqTDZ4Z7VJj3uJq1uxeF/jV/1HmW28S0NTX/gv8HR1mveE0lbYlm67aJpdezXW8jm6XLZ7ocXpNHFe+Jjxl1dYNBy09JYzBtWxtjHbhmozUoxUendwSzXFNdpVPuc+h1tdLHoNRymO170PgHqnXdicS4q6UHCqlNSbbye/LtUeHBJkfw85NTn9YZK4MMezE7zKD5OV/qn/As/rgV459p2cd2jTRH/ALR9Jcfk85S/el95w5cnNo1ttSPhDtYWP0bA6Qm+ElTBetyy/wCyOnhvtWmWNrLdPU4q928/z5KijXl3wyVythZNZ8XLkcDCFr2Xg6lOEJvZbyW6UU8s/WVSzeH4qzkyWmvPpcpmFgxFkFO7G8pXyE8C645SW27Hlzdnr3EWfSLTWun6M9KL79XLZydOaNlpDD4OyFlWVWCrU4ysSnnGGbSj1kbRu7tFqq4c2Slonnedto97frNgXdbVio2VOqqqjaW2uU5ks3lFcdx5aO1DQaiK4raeaz0rTO3LlzjZJ0uo0LSd7srdeKrqjTsyUpSexsvcJ5byr0s2vbBhis70md946ue6W8bXOOjefH8rs8rvW5fRJw53Vvl0jfqc3oL75uX4er/vCsawYiLx1k084Rsp3retmEYJ5e5lGSfbbuhxz/QxXtmJ8d1g0ps0LSN7sg68TChU7ElKUsopPce3iIi079bI082vOHFFZ3pM77x792J4eGAw+KjysbMLOEHh1KUZz5VrPckllzsvxmV2rFaWjfl2PYy2zajHbo7Xifa5bRt/8Vqsy7N2UiBRZVKTWUWVSkVnPdTLraCjtXQ7Np/8X/k6OGU6Wqr7t58HBrZ2xSth9exAAAAAVbyhaLeOw6sis50Ny7eTa5/uyi/5WWY79GWhw3NFMvRnqnk+bYS54addkftQnCS9cWmvuJXs+otii9JpPbGy5ae0M9Y2sZg2rNuMVZW2ozU4rLp3Z5ZLJ9XTmUTz6mRo9XGj3waiJjaeUuVhtX9IYRt112Vt8XXbCOfrynvK5i3Y0b67h+T8cxPxifsxbq3jsVLasqnOX+6dkJP3uRCaWlKvEtDijaloj4RP2d7RGj/Nau2+9x5ecXCqqLzfXvfTv2eHBLtI7+irNrMvVaj1hkrixRPRid5lXqKTGyZGve+ybrZZ9Aw+Hwi/9kny1y6uiEX+PzUfQ8Pwzjx82Tpp9Nntm7I5R/P51qmjtlqwyiuVkPSKpWGRCUzIrlZBkQSZyPHsGRGXrZDcQlGW2CKbISkQRTKqUisosqlIgUWVSk1lFlUpFZz3UysurWGyUrH082Pq6X78vcbXBtPtE5Z7eUf7Y2vy7zFId03WcAAAADDWYHzLW3ViWi5Stpi3hm82lvdfY/2e3o4Pt8tL6rhnEK5YjHkn2vr5q9hsRPDParnKt9cJOD96KOk2b4aZI2vET8U6GnMU/wBJt78iM5JjtUToNLH/AI4+STXpbEy44i3vyOa+e0dqq2i00f4R8npKVz2pycpdMpNyfvZn5csz1vPZpG1Y2h2qYQ0LWsTiV/Bp4TnPoeXQl+OjPu0GhtktF7xy7PuyNRnnPb0OL957lJx2MnpCydtjznN5vq7EuxLJew+k22jaHfhx1x1iteppRXLohlFUrIekVysgK5TCFk4ZIJMniUBGUnuBCUJboFNkJSIFMqpb6yiyqUiBRZVKTAosql1tEaNlj31Vp86X9l2l2l0VtRbnyr2z/qGdqtVXFG3auNVaqSjFZJJJLsPp6UilYrXqhgzMzO8vZJ4AAAAABhra4gVnS2pNGMblW3RN/wCxJ15/udHsaIWxxLX03Gc+GOjb2o9/X8/vu4ktRb4Pm2VyXW9uD92TOe+C09UtGOO4pj2qzHyn7JeF1MtX27IRX7O1N/NI550V7dcqcnGsf+NZ+n3dX/wT0fHPD1wuu6J4iThXF9ajFPP8bzpwaLDSd7c2bk11s07XnavdCtaQ1Qx+kpuy6yqc31znkl1RWxuRqxmx1jaIdOLW6fFHRrE/z90bzBxfXT35+A8nNWV8cUw+/wCXmytQsX109+fgITkqnHFcHv8Al5s+YeL66e/PwEJvCXrfB3T8o+7K1DxfXT35+AhMp+udP3W+Ufc8xMV109+XhIzCXrrTd1vlH3PMTFddPfl4SM1Sjjmm7rfKPueYmK66e/PwkehKXrzTd1vlH3Z8xcV109+fhPPRy99e6but8o+55i4rrp78/CR9HJ6+03db5R93qOo2KXTV35eE8nDZ5PHdN3W+UfdsjqTil01d+XhK509pRnjmn7rfKPu2x1NxK6au9Lwlc6W/uVzxnT90/KPu2w1RxC6a+9LwlVtFk9yE8Xwd0/KPu31aqX9Mq0vXJ/2Ier8k9cwrtxbD2RP8/d1sDqzCnJ2Sdj6lzY/5Zfi4bjid7zv9HBm4lkvyrG31d2EFWkopJLgluSNGtYrG0M6ZmZ3l6PXgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACLj6pWxSj171wzAh/RX+qfeQGHhJfq33kBnC/kZ5t7CWeeb49n46gOrtAZAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANMuLA2gf/9k=" width="500" height="600" frameborder="0" scrolling="no" allowtransparency="true"></img></a>
                    
                  </div>
                 
                </div>
           
              </div>
              
              
            </div>
          </div>
            <div
              class="mt-4 grid grid-cols-2 gap-4 sm:mt-5 sm:grid-cols-2 sm:gap-5 lg:mt-6 lg:grid-cols-3 xl:grid-cols-4"
            >
             
            </div>
          </div>
        </div>

 <div id="iconsCLass" x-data="{isShow:true}" :class="!isShow &amp;&amp; 'opacity-0 transition-opacity duration-300'" class="alert flex items-center justify-between overflow-hidden rounded-lg border border-info text-info">
                  <div class="flex">
                    <div class="bg-info p-3 text-white">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                      </svg>
                    </div>
                    <div class="px-4 py-3 sm:px-5">Watch This Space for more Updates</div>
                  </div>
                  <div class="px-2">
                    <button @click="isShow = false; setTimeout(()=>$root.remove(),300)" class="btn h-7 w-7 rounded-full p-0 font-medium text-info hover:bg-info/20 focus:bg-info/20 active:bg-info/25">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                      </svg>
                    </button>
                  </div>
                </div>
  </main>
      <div class="mt-5" x-data="{showModal:false}">
               
                <template x-teleport="#x-teleport-target">
                  <div class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5" x-show="showModal" role="dialog" @keydown.window.escape="showModal = false">
                    <div class="absolute inset-0 bg-slate-900/60 backdrop-blur transition-opacity duration-300" @click="showModal = false" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"></div>
                    <div class="scrollbar-sm relative flex max-w-lg2 flex-col overflow-y-auto rounded-lg  px-4  text-center transition-opacity duration-300 dark:bg-navy-700 sm:px-5" x-show="showModal" x-transition:enter="ease-out" x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100" x-transition:leave="ease-in" x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0">
                     <div class="flex h-8 items-center justify-between">
                          <h2 class="font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100 lg:text-base"></h2>

                          <button @click="showModal = !showModal" class="btn -mr-1.5 h-7 w-7 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25" style="
    margin-bottom: -4rem;
    z-index: 1;
    margin-right: -0.7rem; background-color: white;
">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                              <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>
                          </button>
                        </div>
                      <div class="mt-4">
                        <img
                      class=""
                      src="/index/resources/images/CyberSecurity Launch.png"
                      alt="image"
                    />
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
    <script>
      window.addEventListener("DOMContentLoaded", () => Alpine.start());
      
      $(document).ready(function() {


          function updateClock() {
            var now = new Date();
            var hours = now.getHours();
            var minutes = now.getMinutes();
            var seconds = now.getSeconds();
            var day = now.getDate();
            var month = now.getMonth() + 1; // Months are zero-based
            var year = now.getFullYear();

            hours = (hours < 10) ? '0' + hours : hours;
            minutes = (minutes < 10) ? '0' + minutes : minutes;
            seconds = (seconds < 10) ? '0' + seconds : seconds;
            day = (day < 10) ? '0' + day : day;
            month = (month < 10) ? '0' + month : month;

            var time = hours + ':' + minutes + ':' + seconds; 
            var date = day + '-' + month + '-' + year;

            var clock1 =  '<i class="fa fa-calendar" aria-hidden="true" style="color:#e21e26;"></i>  &nbsp;<span class="text-base font-medium text-slate-700 dark:text-navy-100">'+date+ '</span> &nbsp;  &nbsp; <i class="fa-solid fa-clock" style="color:#e21e26;"></i> &nbsp;<span class="text-base font-medium text-slate-700 dark:text-navy-100">' +time+'</span>';

            var clock =  ' <div class="mt-5 space-y-4 " style=" margin-left: 2rem;"> <div class="flex items-center justify-between"> <div class="flex items-center space-x-2"> <img class="h-10 w-1w mgi" src="/index/resources/images/avatar/Paomedia-Small-N-Flat-Calendar.png" alt="calander">  &nbsp;<p class="text-base font-medium text-slate-700 dark:text-navy-100">'+date+ '</p>   </div></div><div class="flex items-center justify-between"><div class="flex items-center space-x-2"> <img class=" mgi h-10 w-1w" src="/index/resources/images/avatar/Red_clock.png" alt="image">  &nbsp;<p class="text-base font-medium text-slate-700 dark:text-navy-100">' +time+'</p></div></div></div>';
            $('#clock').html(clock);
            $('#clock1').html(clock1);
          }

          setInterval(updateClock, 1000);

          var cityName;
          if (navigator.geolocation) {
              // Get current position
              navigator.geolocation.getCurrentPosition(function(position) {
                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;

                // Make API request to fetch city name
                $.ajax({
                  url: 'https://nominatim.openstreetmap.org/reverse',
                  type: 'GET',
                  data: {
                    format: 'json',
                    lat: latitude,
                    lon: longitude,
                    zoom: 10,
                    addressdetails: 1
                  },
                  success: function(response) {
                    var city = response.address.city || response.address.town || response.address.village || '';
                    var country = response.address.country || '';

                    // Update HTML element with city name
                    cityName = city;
                    $('#city').text(city + ', ' + country);
                    var cityNplace = city + ',' + country
                    getWeather(cityNplace);
                  },
                  error: function(xhr, status, error) {
                    console.log(error);
                  }
                });
              });
            } else {
              console.log('Geolocation is not supported by this browser.');
            }
          
      
          
      });
     function getWeather(cityNplace){
    	    
          const apiKey = 'd0f0b62e939d9341794ce5b3bb3d09cb';
          const apiUrl = 'https://api.openweathermap.org/data/2.5/weather?q='+cityNplace+'&appid=d0f0b62e939d9341794ce5b3bb3d09cb&units=metric';

          $.ajax({
              url: apiUrl,
              method: 'GET',
              dataType: 'json',
              success: function(data) {
                  const temperatureElement = $('#temperature');
                  const descriptionElement = $('#description');
                  const windSpeedElement = $('#wind-speed');
                  const weatherIconElement = $('#weather-icon');

                  const temperature = Math.round(data.main.temp);
                  const description = data.weather[0].description;
                  const windSpeed = data.wind.speed;
                  const weatherIcon = data.weather[0].icon;

                  temperatureElement.text(temperature +'°C');
                  descriptionElement.text(description);
                  windSpeedElement.text(windSpeed+' m/s');
                  weatherIconElement.attr('src', 'https://openweathermap.org/img/w/'+weatherIcon+'.png');
              },
              error: function(error) {
                  console.error('Error:', error);
              }
        });
    	  
      }
     
     const button = document.getElementById("signout_button");
     button.onclick = () => {
       google.accounts.id.disableAutoSelect();
       console.log('User signed out.');
       $("#email").val('');
 		$("#logoutForm").submit();
     }
    // https://www.youtube.com/watch?v=zJkS24mEBbU&pp=ygUQcmVzdXN0YWluYWJpbGl0eQ%3D%3D
    /*  function onYouTubeIframeAPIReady() {
         // Create an instance of the YouTube player
         new YT.Player('player', {
           videoId: 'z8-Ghz4YSMY',
           playerVars: {
             autoplay: 0, // Autoplay the video
             controls: 1, // Show video controls
             modestbranding: 1, // Hide YouTube logo
             fs: 1, // Show fullscreen button
           },
         });
       } */
   
      </script>
  </body>
</html>