<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ReOne - AI Assistant</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        :root {
            --primary-color: #1e88e5;
            --secondary-color: #0d47a1;
            --accent-color: #00bcd4;
            --dark-bg: #121212;
            --darker-bg: #0a0a0a;
            --light-bg: #1e1e1e;
            --text-color: #ffffff;
            --text-secondary: #b0b0b0;
            --success-color: #4caf50;
            --error-color: #f44336;
            --warning-color: #ff9800;
            --border-radius: 12px;
            --box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Document type selector */
        .document-selector {
            display: flex;
            justify-content: space-around;
            padding: 10px;
            background: var(--light-bg);
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }

        .document-option {
            padding: 8px 15px;
            border-radius: 20px;
            cursor: pointer;
            transition: all 0.3s;
            font-size: 0.9rem;
            text-align: center;
            background: var(--dark-bg);
            color: var(--text-secondary);
        }

        .document-option.active {
            background: var(--primary-color);
            color: white;
            box-shadow: 0 2px 10px rgba(30, 136, 229, 0.5);
        }

        .document-option i {
            margin-right: 5px;
        }

        /* Input prompt */
        .input-prompt {
            padding: 15px;
            background: var(--darker-bg);
            text-align: center;
            font-weight: bold;
            color: var(--accent-color);
            display: none;
        }

        /* Rest of your existing styles... */
        /* [Previous CSS styles remain exactly the same] */
        /* ... */
        
        /* Chat container */
        .chat-container {
            position: fixed;
            bottom: 20px;
            right: 20px;
            width: 400px;
            background: var(--dark-bg);
            border-radius: var(--border-radius);
            overflow: hidden;
            box-shadow: var(--box-shadow);
            display: flex;
            flex-direction: column;
            z-index: 1000;
            transform: translateY(0);
            transition: all 0.3s ease;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .chat-container.minimized {
            height: 60px;
            width: 60px;
            border-radius: 50%;
            overflow: hidden;
        }

        /* Chat header */
        .chat-header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            cursor: pointer;
        }

        .chat-header h3 {
            margin: 0;
            font-size: 1.2rem;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .chat-header .controls {
            display: flex;
            gap: 15px;
        }

        .chat-header .controls i {
            cursor: pointer;
            transition: transform 0.2s;
        }

        .chat-header .controls i:hover {
            transform: scale(1.1);
        }

        /* Chat messages area */
        .chat-messages {
            flex: 1;
            padding: 15px;
            overflow-y: auto;
            background: var(--darker-bg);
            scroll-behavior: smooth;
        }

        /* Message bubbles */
        .message {
            max-width: 80%;
            margin-bottom: 15px;
            padding: 12px 16px;
            border-radius: 18px;
            position: relative;
            animation: messageAppear 0.3s ease-out;
            word-wrap: break-word;
            line-height: 1.4;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        @keyframes messageAppear {
            from {
                opacity: 0;
                transform: translateY(10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .received {
            background: var(--light-bg);
            color: var(--text-color);
            align-self: flex-start;
            border-bottom-left-radius: 4px;
        }

        .sent {
            background: var(--primary-color);
            color: white;
            align-self: flex-end;
            border-bottom-right-radius: 4px;
        }

        .message-time {
            font-size: 0.7rem;
            color: var(--text-secondary);
            margin-top: 5px;
            text-align: right;
        }

        /* Chat input area */
        .chat-input-area {
            padding: 15px;
            background: var(--light-bg);
            display: flex;
            gap: 10px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            display: none; /* Initially hidden */
        }

        .chat-input {
            flex: 1;
            padding: 12px 15px;
            border: none;
            border-radius: 25px;
            background: var(--dark-bg);
            color: var(--text-color);
            font-size: 0.9rem;
            outline: none;
            transition: box-shadow 0.3s;
        }

        .chat-input:focus {
            box-shadow: 0 0 0 2px var(--primary-color);
        }

        .send-btn {
            width: 45px;
            height: 45px;
            border-radius: 50%;
            background: var(--primary-color);
            color: white;
            border: none;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.2s;
        }

        .send-btn:hover {
            background: var(--secondary-color);
            transform: scale(1.05);
        }

        .send-btn:active {
            transform: scale(0.95);
        }

        /* Scroll buttons */
        .scroll-buttons {
            position: absolute;
            right: 15px;
            top: 60px;
            display: flex;
            flex-direction: column;
            gap: 5px;
            z-index: 10;
        }

        .scroll-btn {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background: rgba(30, 136, 229, 0.7);
            color: white;
            border: none;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            opacity: 0.7;
            transition: all 0.2s;
        }

        .scroll-btn:hover {
            opacity: 1;
            background: var(--primary-color);
        }

        /* Data cards */
        .data-card {
            background: var(--light-bg);
            border-radius: 10px;
            padding: 12px;
            margin-bottom: 10px;
            border-left: 4px solid var(--primary-color);
            animation: cardAppear 0.4s ease-out;
        }

        @keyframes cardAppear {
            from {
                opacity: 0;
                transform: translateX(10px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        .data-card h4 {
            margin: 0 0 8px 0;
            color: var(--primary-color);
            font-size: 0.9rem;
        }

        .data-card p {
            margin: 5px 0;
            font-size: 0.85rem;
            color: var(--text-color);
        }

        .data-card .field {
            display: flex;
            justify-content: space-between;
        }

        .data-card .field-name {
            color: var(--text-secondary);
        }

        /* Minimized state */
        .minimized-chat {
            position: fixed;
            bottom: 20px;
            right: 20px;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            box-shadow: var(--box-shadow);
            z-index: 1000;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }

        .minimized-chat i {
            color: white;
            font-size: 1.5rem;
        }

        /* Notification badge */
        .notification-badge {
            position: absolute;
            top: -5px;
            right: -5px;
            background: var(--error-color);
            color: white;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 0.7rem;
            font-weight: bold;
        }

        /* Responsive adjustments */
        @media (max-width: 480px) {
            .chat-container {
                width: 100%;
                height: 28rem;
                bottom: 0;
                right: 0;
                border-radius: 0;
            }
            
            .minimized-chat {
                bottom: 15px;
                right: 15px;
            }
        }

        /* Custom scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
        }

        ::-webkit-scrollbar-track {
            background: var(--darker-bg);
        }

        ::-webkit-scrollbar-thumb {
            background: var(--primary-color);
            border-radius: 4px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: var(--secondary-color);
        }
         /* Enhanced typing animation */
        .typing-animation {
            display: flex;
            padding: 10px 15px;
            background: var(--light-bg);
            border-radius: 20px;
            width: fit-content;
            margin-bottom: 15px;
            align-items: center;
        }
        
        .typing-dot {
            width: 8px;
            height: 8px;
            background-color: var(--text-secondary);
            border-radius: 50%;
            margin: 0 2px;
            animation: typingAnimation 1.4s infinite ease-in-out;
        }
        
        .typing-text {
            margin-left: 10px;
            color: var(--text-secondary);
            font-style: italic;
        }
        
        @keyframes typingAnimation {
            0%, 60%, 100% { transform: translateY(0); opacity: 0.6; }
            30% { transform: translateY(-4px); opacity: 1; }
        }
        
    </style>
</head>
<body>
    <!-- Main Chat Container -->
    <div id="chat-container" class="chat-container">
        <div class="chat-header" onclick="toggleChatMinimize()">
            <h3>
                <i class="fas fa-robot"></i> Re.ai Assistant
            </h3>
            <div class="controls">
                <i class="fas fa-times" title="Close" onclick="closeChat()"></i>
            </div>
        </div>

        <!-- Document Type Selector -->
        <div class="document-selector">
            <div class="document-option active" data-type="pr" onclick="selectDocumentType('pr')">
                <i class="fas fa-file-invoice"></i> PR
            </div>
            <div class="document-option" data-type="po" onclick="selectDocumentType('po')">
                <i class="fas fa-file-purchase"></i> PO
            </div>
            <div class="document-option" data-type="enfa" onclick="selectDocumentType('enfa')">
                <i class="fas fa-file-contract"></i> ENFA
            </div>
        </div>

        <!-- Input Prompt -->
        <div id="input-prompt" class="input-prompt">
            Please enter the <span id="document-type-label">PR</span> number:
        </div>

        <!-- Chat Messages Area -->
        <div id="chat-messages" class="chat-messages">
            <div class="message received">
                <div class="message-content">Hello! I'm your ReOne assistant. Please select a document type to search.</div>
                <div class="message-time">Just now</div>
            </div>
        </div>

        <!-- Scroll Buttons -->
        <div class="scroll-buttons">
            <button class="scroll-btn" onclick="scrollToTop()" title="Scroll to top">
                <i class="fas fa-arrow-up"></i>
            </button>
            <button class="scroll-btn" onclick="scrollToBottom()" title="Scroll to bottom">
                <i class="fas fa-arrow-down"></i>
            </button>
        </div>

        <!-- Chat Input Area -->
        <div class="chat-input-area">
            <input type="text" id="user-input" class="chat-input" placeholder="Type the document number here..." />
            <button class="send-btn" onclick="sendMessage()" title="Send message">
                <i class="fas fa-paper-plane"></i>
            </button>
        </div>
    </div>

    <!-- Minimized Chat Button -->
    <div id="minimized-chat" class="minimized-chat" style="display: none;" onclick="toggleChatMinimize()">
        <i class="fas fa-comment-dots"></i>
        <div id="notification-badge" class="notification-badge" style="display: none;">0</div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>
    <script>
        // Global variables
        let isMinimized = false;
        let currentDocumentType = 'pr'; // 'pr', 'po', or 'enfa'
        let messageCount = 0;

        let unreadMessages = 0;
        let typingInterval;
        let currentTypingText = "Checking document details";
        
        // Initialize the chat
        document.addEventListener('DOMContentLoaded', function() {
            // Set up event listener for Enter key
            document.getElementById("user-input").addEventListener("keypress", function(event) {
                if (event.key === "Enter") {
                    event.preventDefault();
                    sendMessage();
                }
            });
        });
        window.onload = function () {
        	selectDocumentType(currentDocumentType) 
          };
        // Select document type (PR, PO, or ENFA)
        function selectDocumentType(type) {
            currentDocumentType = type;
            $('.message-appear').remove();

            // Update UI
            document.querySelectorAll('.document-option').forEach(option => {
                option.classList.remove('active');
                if(option.dataset.type === type) {
                    option.classList.add('active');
                }
            });
            
            // Update prompt label
            const typeLabels = {
                'pr': 'PR',
                'po': 'PO',
                'enfa': 'ENFA'
            };
            document.getElementById('document-type-label').textContent = typeLabels[type];
            var ty = typeLabels[type];
            // Show input prompt and input area
            document.getElementById('input-prompt').style.display = 'block';
            document.querySelector('.chat-input-area').style.display = 'flex';
            
            // Focus on input field
            document.getElementById('user-input').focus();
            
            // Add message about selected type
            addMessage('You selected ' + ty + ' search. Please enter the ' +ty + ' number.', "received");

        }

        // Add a message to the chat
        function addMessage(text, type) {
            const chatMessages = document.getElementById('chat-messages');
            const messageDiv = document.createElement('div');
            const now = new Date();
            const time = now.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
            
            messageDiv.className = 'message '+type;
            messageDiv.innerHTML = 
                '<div class="message-content">'+text+'</div><div class="message-time">'+time+'</div>';
            
            // Add animation class for new messages
            messageDiv.classList.add('message-appear');
            
            chatMessages.appendChild(messageDiv);
            
            // If chat is minimized and this is a received message, increment unread counter
            if(isMinimized && type === 'received') {
                unreadMessages++;
                updateNotificationBadge();
            }
            
            scrollToBottom();
        }

        // Send a message from the user
        function sendMessage() {
            const userInput = document.getElementById('user-input');
            const documentNumber = userInput.value.trim();
            
            if(documentNumber === '') return;
            
            // Add user message to chat
            addMessage(currentDocumentType.toUpperCase()+' :'+documentNumber, 'sent');
            userInput.value = '';
            
            // Process the document number
            processDocumentNumber(currentDocumentType, documentNumber);
        }
        // Hide typing animation
        function hideTypingAnimation() {
            const typingIndicator = document.getElementById('typing-indicator');
            if(typingIndicator) {
                typingIndicator.remove();
            }
            if(typingInterval) {
                clearInterval(typingInterval);
            }
        }
        function showTypingAnimation() {
            const chatMessages = document.getElementById('chat-messages');
            
            // Remove existing typing indicator if any
            hideTypingAnimation();
            
            // Create typing animation element
            const typingDiv = document.createElement('div');
            typingDiv.className = 'typing-animation';
            typingDiv.id = 'typing-indicator';
            
            // Create dots
            typingDiv.innerHTML = '<div class="typing-dot"></div>'
                +'<div class="typing-dot"></div>'
                +'<div class="typing-dot"></div>'
                +'<span class="typing-text">'+currentTypingText+'</span>';
            
            chatMessages.appendChild(typingDiv);
            scrollToBottom();
            
            // Animate text changes
            const typingTexts = [
                "Searching our records",
                "Checking document details",
                "Almost there",
                "Just a moment"
            ];
            let textIndex = 0;
            
            typingInterval = setInterval(() => {
                textIndex = (textIndex + 1) % typingTexts.length;
                currentTypingText = typingTexts[textIndex];
                document.querySelector('#typing-indicator .typing-text').textContent = currentTypingText;
            }, 3000);
        }
        
        // Process the entered document number
        function processDocumentNumber(docType, docNumber) {
            // Show typing indicator
            showTypingAnimation();
            
            // Call the appropriate backend API based on document type
            fetchDocumentDetails(docType, docNumber);
        }

        // Fetch document details from backend
        function fetchDocumentDetails(docType, docNumber) {
            const typingIndicator = document.getElementById('typing-indicator');
            const currentTime = new Date().toLocaleTimeString();
            
            // Prepare parameters based on document type
            const params = {};
            if(docType === 'pr') {
                params.PR_Number = docNumber;
            } else if(docType === 'po') {
                params.PO_Number = docNumber;
            } else if(docType === 'enfa') {
                params.ENFA_Number = docNumber;
            }
            
            // Call backend API
            $.ajax({
                url: "<%=request.getContextPath()%>/reone/ajax/getoDataInChat",
                data: params,
                method: "GET",
                success: function(data) {
                	 hideTypingAnimation();
                    
                    if(data && data.length > 0) {
                        // Process the response data
                        displayDocumentDetails(data, docType, currentTime);
                    } else {
                    	var dataa  = docType.toUpperCase()+' : '+docNumber;
                        addMessage('No details found for ' +dataa+'. Please check the number and try again.', "received");
                    }
                },
                error: function(jqXHR, exception) {
                	hideTypingAnimation();
                    addMessage("An error occurred while fetching document details. Please try again later.", "received");
                    console.error("Error fetching document details:", exception);
                }
            });
        }

        // Display document details from backend response
     function displayDocumentDetails(data, docType, currentTime) {
    data.forEach(item => {
        const cardDiv = document.createElement('div');
        cardDiv.className = 'data-card';

        let cardContent = '<h4>' + docType.toUpperCase() + ' Details</h4>';
        const fields = [];

        for (const [key, value] of Object.entries(item)) {
            if (value && value.toString().trim() !== '') {
                const label = formatLabel(key);
                let displayText = '';

                // Check for SAP-style date format
                if (typeof value === 'string' && /^\/Date\(\d+\)\/$/.test(value)) {
                    const dateObj = convertSAPDate(value);
                    if (dateObj instanceof Date && !isNaN(dateObj)) {
                        const formattedDate = formatDateReadable(dateObj);
                        displayText = label + ' on ' + formattedDate;
                        fields.push({ text: displayText, sortDate: dateObj, isDate: true });
                    }
                } else {
                    // Regular text field
                    displayText = label + ' is ' + value;
                    fields.push({ text: displayText, isDate: false });
                }
            }
        }

        // Sort: all date fields (ascending), then non-date fields
        fields.sort((a, b) => {
            if (a.isDate && b.isDate) return a.sortDate - b.sortDate;
            if (a.isDate) return -1;
            if (b.isDate) return 1;
            return 0;
        });

        fields.forEach(field => {
            cardContent += '<div class="field">' + field.text + '</div>';
        });

        cardContent += '<div class="message-time">' + currentTime + '</div>';
        cardDiv.innerHTML = cardContent;
        document.getElementById('chat-messages').appendChild(cardDiv);
    });

    scrollToBottom();
}

     function formatLabel(key) {
    	    return key.replace(/_/g, ' ')
    	              .replace(/([a-z])([A-Z])/g, '$1 $2')
    	              .replace(/\b\w/g, char => char.toUpperCase());
    	}

    	function isValidDate(str) {
    	    // Check if it's a recognizable date format (excluding strings like "00010")
    	    const d = new Date(str);
    	    return !isNaN(d.getTime());
    	}
    	   function convertSAPDate(rawDate) {
               if (typeof rawDate === 'string' && rawDate.includes('/Date')) {
                   const match = rawDate.match(/\/Date\((\d+)\)\//);
                   if (match) {
                       const timestamp = parseInt(match[1], 10);
                       const dateObj = new Date(timestamp);
                       return dateObj.toLocaleDateString(); // e.g., "4/4/2025"
                   }
               }
               return rawDate; // If it's not a .NET date, just return as-is
           }

    	function formatDateReadable(date) {
    	    const options = { year: 'numeric', month: 'short', day: '2-digit' };
    	    return date.toLocaleDateString('en-US', options);
    	}


        // Toggle chat between minimized and expanded states
        function toggleChatMinimize() {
            const chatContainer = document.getElementById('chat-container');
            const minimizedChat = document.getElementById('minimized-chat');
            
            isMinimized = !isMinimized;
            
            if(isMinimized) {
                chatContainer.style.display = 'none';
                minimizedChat.style.display = 'flex';
            } else {
                chatContainer.style.display = 'flex';
                minimizedChat.style.display = 'none';
                // Reset unread counter when chat is opened
                unreadMessages = 0;
                updateNotificationBadge();
                scrollToBottom();
            }
        }

        // Close the chat completely
        function closeChat() {
            document.getElementById('chat-container').style.display = 'none';
            document.getElementById('minimized-chat').style.display = 'none';
        }

        // Scroll to top of chat
        function scrollToTop() {
            const chatMessages = document.getElementById('chat-messages');
            chatMessages.scrollTop = 0;
        }

        // Scroll to bottom of chat
        function scrollToBottom() {
            const chatMessages = document.getElementById('chat-messages');
            chatMessages.scrollTop = chatMessages.scrollHeight;
        }

        // Update notification badge
        function updateNotificationBadge() {
            const badge = document.getElementById('notification-badge');
            if(unreadMessages > 0) {
                badge.style.display = 'flex';
                badge.textContent = unreadMessages > 9 ? '9+' : unreadMessages;
            } else {
                badge.style.display = 'none';
            }
        }
    </script>
</body>
</html>