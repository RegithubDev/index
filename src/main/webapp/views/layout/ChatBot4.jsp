<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCM Chatbot</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: #f4f4f4;
        }

        .chat-container {
            width: 400px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            overflow: hidden;
        }

        .chat-header {
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: white;
            padding: 15px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .chat-header img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            border: 2px solid white;
        }

        .user-info h4 {
            margin: 0;
            font-size: 16px;
        }

        .user-info span {
            font-size: 12px;
            opacity: 0.8;
        }

        .chat-box {
            height: 300px;
            overflow-y: auto;
            padding: 10px;
            display: flex;
            flex-direction: column;
        }

        .message {
            padding: 8px 12px;
            margin: 5px 0;
            border-radius: 15px;
            max-width: 80%;
            display: inline-block;
            font-size: 14px;
        }

        .user-message {
            background: #007bff;
            color: white;
            align-self: flex-end;
            border-top-right-radius: 0;
        }

        .bot-message {
            background: #e1e1e1;
            color: black;
            align-self: flex-start;
            border-top-left-radius: 0;
        }

        .input-container {
            display: flex;
            align-items: center;
            padding: 10px;
            background: #f1f1f1;
            border-top: 1px solid #ccc;
            gap: 8px;
        }

        .chat-input {
            flex: 1;
            border: none;
            outline: none;
            background: transparent;
            padding: 10px;
            font-size: 14px;
        }

        .icon-btn {
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            border: none;
            border-radius: 50%;
            cursor: pointer;
            font-size: 18px;
            transition: 0.3s ease-in-out;
            background: #f0f0f0;
        }

        .icon-btn i {
            color: #555;
        }

        .icon-btn:hover {
            background: #ddd;
        }

        .send-btn {
            background: #007bff;
        }

        .send-btn i {
            color: white;
        }

        .send-btn:hover {
            background: #0056b3;
        }

        .clear-btn {
            background: red;
        }

        .clear-btn i {
            color: white;
        }

        .clear-btn:hover {
            background: darkred;
        }

        #fileInput {
            display: none;
        }
        
.option-btn {
    padding: 10px 20px;
    font-size: 14px;
    font-weight: bold;
    border: 2px solid #a855f7; /* Light purple outline */
    border-radius: 20px;
    cursor: pointer;
    transition: all 0.3s ease-in-out;
    background: transparent;
    color: #a855f7;
    width: auto;
    display: inline-block;
    margin: 5px;
    display: flex; 
    justify-content: left;
}

.option-btn:hover {
    background: #a855f7;
    color: white;
        transform: scale(1.05);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}


.pr-btn {
    background: linear-gradient(135deg, #007bff, #0056b3);
    color: white;
}

.po-btn {
    background: linear-gradient(135deg, #28a745, #1e7e34);
    color: white;
}



        
        
        
        
        
        
        
    </style>
</head>
<body>

<div class="chat-container">
    <!-- Chat Header -->
    <div class="chat-header">
        <div class="user-info">
            <h4>Resl assistance</h4>
            <span>We are online!</span>
        </div>
        <!-- Clear Chat Button -->
        <button class="icon-btn clear-btn" onclick="clearChat()">
            <i class="fas fa-trash"></i>
        </button>
    </div>

    <!-- Chat Box -->
    <div class="chat-box" id="chatBox"></div>

    <!-- Input Container -->
    <div class="input-container">
        <input type="text" class="chat-input" id="userInput" placeholder="Enter PR or PO number...">

        <!-- Microphone Button -->
        <button class="icon-btn mic-btn" onclick="startVoiceInput()">
            <i class="fas fa-microphone"></i>
        </button>

        <!-- File Attachment Button -->
        <label for="fileInput" class="icon-btn attach-btn">
            <i class="fas fa-paperclip"></i>
        </label>
        <input type="file" id="fileInput" onchange="handleFileSelect(event)">

        <!-- Send Button -->
        <button class="icon-btn send-btn" id="sendBtn">
            <i class="fas fa-paper-plane"></i>
        </button>
    </div>
</div>

<script>


let currentSelection = ""; // Track user selection (PR or PO)

document.getElementById("userInput").addEventListener("keypress", function(event) {
    if (event.key === "Enter") {
        event.preventDefault();
        sendMessage();
    }
});

function sendMessage() {
    let userInput = document.getElementById("userInput").value.trim();
    if (userInput === "") return;

    addMessage(userInput, "user-message");
    document.getElementById("userInput").value = "";

    if (currentSelection === "PR Status") {
        // If user has already selected PR Status, process PR number
        processPR(userInput);
    } else if (currentSelection === "PO Status") {
        // If user has already selected PO Status, process PO number
        processPO(userInput);
    } else {
        // Show options if no selection has been made yet
        setTimeout(() => {
            showOptions();
        }, 1000);
    }
}

function showOptions() {
    let chatBox = document.getElementById("chatBox");
    let optionsContainer = document.createElement("div");
    optionsContainer.style.display = "flex";
    optionsContainer.style.justifyContent = "center";
    optionsContainer.style.gap = "10px";

    let prButton = document.createElement("button");
    prButton.textContent = "PR Status";
    prButton.classList.add("option-btn");
    prButton.onclick = () => selectOption("PR Status");

    let poButton = document.createElement("button");
    poButton.textContent = "PO Status";
    poButton.classList.add("option-btn");
    poButton.onclick = () => selectOption("PO Status");

    optionsContainer.appendChild(prButton);
    optionsContainer.appendChild(poButton);
    chatBox.appendChild(optionsContainer);
    chatBox.scrollTop = chatBox.scrollHeight;
}


function selectOption(option) {
    currentSelection = option; // Store user selection

    if (option === "PR Status") {
        typeWriterEffect("Please enter the PR number.");
    } else if (option === "PO Status") {
        typeWriterEffect("Please enter the PO number.");
    }
}

function processPR(prNumber) {
    if (!/^\d{10}$/.test(prNumber)) {
        typeWriterEffect("❌ Please enter a valid 10-digit PR number.");
        return;
    }
    
    let status = checkPRStatus(prNumber);
    setTimeout(() => {
        typeWriterEffect(status);
        currentSelection = "";
    }, 1000);
}

function processPO(poNumber) {
    if (!/^\d{10}$/.test(poNumber)) {
        typeWriterEffect("❌ Please enter a valid 10-digit PO number.");
        return;
    }

    let status = checkPOStatus(poNumber);
    setTimeout(() => {
        typeWriterEffect(status);
        currentSelection = "";
    }, 1000);
}
function checkPRStatus(prNumber) {
    // Simulated PR status lookup
    let statuses = [
        `PR ${prNumber} is Approved.`,
        `PR ${prNumber} is Pending at Manager Level.`,
        `PR ${prNumber} is Pending at Finance Department.`,
        `PR ${prNumber} is Rejected.`
    ];
    return statuses[Math.floor(Math.random() * statuses.length)]; // Random response for now
}

function checkPOStatus(poNumber) {
    // Simulated PO status lookup
    let statuses = [
        `PO ${poNumber} has been Processed.`,
        `PO ${poNumber} is Waiting for Supplier Confirmation.`,
        `PO ${poNumber} is Pending in Finance Approval.`,
        `PO ${poNumber} has been Cancelled.`
    ];
    return statuses[Math.floor(Math.random() * statuses.length)];
}

function typeWriterEffect(text) {
    let chatBox = document.getElementById("chatBox");
    let messageDiv = document.createElement("div");
    messageDiv.classList.add("message", "bot-message");
    chatBox.appendChild(messageDiv);

    let index = 0;
    function type() {
        if (index < text.length) {
            messageDiv.textContent += text.charAt(index);
            index++;
            setTimeout(type, 50);
        }
        chatBox.scrollTop = chatBox.scrollHeight;
    }
    type();
}

function addMessage(text, className) {
    let chatBox = document.getElementById("chatBox");
    let messageDiv = document.createElement("div");
    messageDiv.classList.add("message", className);
    messageDiv.textContent = text;
    chatBox.appendChild(messageDiv);
    chatBox.scrollTop = chatBox.scrollHeight;
}

window.onload = function() {
    setTimeout(() => {
        typeWriterEffect("Hi Resl user! How can I assist you?");
    }, 1000);
};
function clearChat() {
    let chatBox = document.getElementById("chatBox");
    chatBox.innerHTML = ""; // Clear all messages
    currentSelection = ""; // Reset user selection
}
</script>

</body>
</html>
