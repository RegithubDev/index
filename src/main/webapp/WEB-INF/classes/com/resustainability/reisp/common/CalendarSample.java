package com.resustainability.reisp.common;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Collections;
import java.util.List;
import java.util.Properties;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
import com.google.api.client.googleapis.GoogleUtils;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.googleapis.util.Utils;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.store.FileDataStoreFactory;
import com.google.api.services.admin.directory.Directory;
import com.google.api.services.calendar.Calendar;
import com.google.api.services.calendar.CalendarScopes;
import com.google.api.services.calendar.model.*;
import com.google.api.services.calendar.model.Event.Organizer;
import com.google.auth.http.HttpCredentialsAdapter;
import com.google.auth.oauth2.AccessToken;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.common.collect.ImmutableList;
import com.resustainability.reisp.model.Conferencedata;
import com.resustainability.reisp.model.User;

import biweekly.property.Conference;

import com.google.api.services.gmail.Gmail;
import com.google.api.services.gmail.GmailScopes;
import com.google.api.services.gmail.model.Message;
import com.google.api.services.sheets.v4.SheetsScopes;
import com.google.api.services.admin.directory.model.Member;

public class CalendarSample  {
	  private static final String APPLICATION_NAME = "PurpleWest";
	  private static final String EMAIL_ADDRESS = "PurpleWest";
	  private static final String PASSWORD = "PurpleWest";
	 
      
	 private static final List<String> SCOPES =
	            Arrays.asList(SheetsScopes.SPREADSHEETS,SheetsScopes.DRIVE,CalendarScopes.CALENDAR,CalendarScopes.CALENDAR_EVENTS);
	 

		public static void giveAccesToNewMember(User obj) throws IOException {
			InputStream keyFileStream = new FileInputStream("/credentials.json");
			GoogleCredentials credentials = GoogleCredentials.fromStream(keyFileStream);
			credentials = credentials.createScoped(SCOPES);
			Directory directory = new Directory.Builder(
				    new NetHttpTransport(),
				    new JacksonFactory(),
				    new HttpCredentialsAdapter(credentials))
				    .setApplicationName("PurpleWest")
				    .build();
			Member member = new Member().setEmail(obj.getEmail_id()).setRole("Owner");

			// Add the member to the Google Group
			directory.members().insert("selflearnin@PurpleWest-381109.iam.gserviceaccount.com", member).execute();
		}
	 
	  private static Credential getCredentials(NetHttpTransport httpTransport) throws IOException {
		
	    	InputStream in = CalendarSample.class.getResourceAsStream("/credentials.json");
	    	 System.out.println(in != null);
	    	
	        GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(new JacksonFactory(),
	        		new InputStreamReader(in));
	        String clintId ="475465864254-jc75t6v3jtfb5rvb4k0tc0mo0e6avqi2.apps.googleusercontent.com";
	        String clientSecret =  "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";
	        GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
	        		httpTransport,  new JacksonFactory(), clintId,clientSecret, SCOPES)
	        		.setAccessType("online")
	                .setApprovalPrompt("auto").build();

	        // Set up the local server receiver to receive the authorization code
	        LocalServerReceiver receiver = new LocalServerReceiver.Builder().setPort(8081).build();
	        
	        // Authorize the user using the authorization flow and the local server receiver
	        AuthorizationCodeInstalledApp auth = new AuthorizationCodeInstalledApp(flow, receiver);
	        return auth.authorize("user");
	       
	    }
    public  Event send() throws IOException, GeneralSecurityException, AddressException, MessagingException {
    	final NetHttpTransport httpTransport =  GoogleNetHttpTransport.newTrustedTransport();
    	// Set up the Calendar service
    	 Credential credential = getCredentials(httpTransport);
         Calendar service = new Calendar.Builder(httpTransport, new JacksonFactory(), credential)
                 .setApplicationName("PurpleWest")
                 .build();
         
    	// Create a new event
    	Event event = new Event()
    	    .setSummary("Sample Event")
    	    .setLocation("Hyderabad")
    	    .setDescription("This is a sample event");

    	DateTime startDateTime = new DateTime("2023-03-20T04:40:00-00:00");
    	EventDateTime start = new EventDateTime()
    	    .setDateTime(startDateTime)
    	    .setTimeZone("Asia/Kolkata");
    	event.setStart(start);

    	DateTime endDateTime = new DateTime("2023-03-20T04:45:00-00:00");
    	EventDateTime end = new EventDateTime()
    	    .setDateTime(endDateTime)
    	    .setTimeZone("Asia/Kolkata");
    	event.setEnd(end);
    	event.setDescription("Welcome to Class");
    	  
    	
    	ConferenceSolutionKey conferenceSolution = new ConferenceSolutionKey()
                .setType("hangoutsMeet");
        CreateConferenceRequest createConferenceRequest = new CreateConferenceRequest()
                .setRequestId(UUID.randomUUID().toString())
                .setConferenceSolutionKey(conferenceSolution);
        ConferenceData conferenceData = new ConferenceData()
                .setCreateRequest(createConferenceRequest);

        
    	List<EntryPoint> entryPoints = new ArrayList<>();
    	entryPoints.add(new EntryPoint()
    	        .setEntryPointType("video")
    	        .setUri("https://meet.google.com/")
    	        .setLabel("Example Meeting"));

    	conferenceData.setEntryPoints(entryPoints);
		String[] recurrence = new String[] {"RRULE:FREQ=DAILY;COUNT=2"};
		event.setRecurrence(Arrays.asList(recurrence));
		EventAttendee[] attendees = new EventAttendee[] {
		    new EventAttendee().setEmail("PurpleWestteam@gmail.com").setOrganizer(false).setSelf(false),
		    new EventAttendee().setEmail("saidileep.p@resustainability.com").setOrganizer(true).setSelf(true),
		    new EventAttendee().setEmail("bhargavdileep203@gmail.com").setOrganizer(false).setSelf(false)
		};
		event.setAttendees(Arrays.asList(attendees));
		event.setConferenceData(conferenceData);
		EventReminder[] reminderOverrides = new EventReminder[] {
		    new EventReminder().setMethod("email").setMinutes(24 * 60),
		    new EventReminder().setMethod("popup").setMinutes(10),
		};
		Event.Reminders reminders = new Event.Reminders()
		    .setUseDefault(false)
		    .setOverrides(Arrays.asList(reminderOverrides));
		event.setReminders(reminders);
		
		 Event createdEvent = service.events().insert("primary", event)
	                .setConferenceDataVersion(1)
	                .setSendNotifications(true)
	                .execute();
		 createdEvent.setAttendees(Arrays.asList(attendees));
	        ConferenceData createdConferenceData = createdEvent.getConferenceData();
	        String googleMeetLink = createdConferenceData.getEntryPoints().get(0).getUri();

	        System.out.println("Google Meet Link: " + googleMeetLink);
	        createdEvent.setHangoutLink(googleMeetLink);
	        System.out.println("Google Meet Link11111: " + createdEvent.getHangoutLink());
		return createdEvent ;

    }


}
