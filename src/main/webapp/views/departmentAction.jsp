<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Simple Chatbot</title>
    <style>
        #chat-container {
            width: 300px;
            margin: auto;
            border: 1px solid #ccc;
            padding: 10px;
            height: 300px;
            overflow-y: scroll;
        }
  df-messenger {
   --df-messenger-bot-message: #878fac;
   --df-messenger-button-titlebar-color: #df9b56;
   --df-messenger-chat-background-color: #fafafa;
   --df-messenger-font-color: white;
   --df-messenger-send-icon: #878fac;
   --df-messenger-user-message: #479b3d;
  }
</style>
    
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
<df-messenger
  intent="WELCOME"
  chat-title="ReOne"
  agent-id="6abcbe95-edb2-46ae-8400-94847686517f"
  language-code="en"
></df-messenger>
    <script>
        $(document).ready(function () {
            $('#user-input').on('keypress', function (e) {
                if (e.which === 13) {
                    // If Enter key is pressed
                    e.preventDefault();
                    handleUserInput();
                }
            });

            $('#send-button').on('click', function () {
                handleUserInput();
            });

            function handleUserInput() {
                var userInput = $('#user-input').val();
                if (userInput.trim() !== '') {
                    appendToChat('You: ' + userInput);
                    processUserInput(userInput);
                    $('#user-input').val('');
                }
            }

            function appendToChat(message) {
                $('#chat-container').append('<p>' + message + '</p>');
                $('#chat-container').scrollTop($('#chat-container')[0].scrollHeight);
            }

            function processUserInput(userInput) {
                // Simple example: Echo the user's input
                var response = 'Bot: ' + userInput;
                appendToChat(response);
            }
        });
    </script>
</head>
<body>

<div id="chat-container"></div>
<input type="text" id="user-input" placeholder="Type your message">
<button id="send-button">Send</button>

</body>
</html>
