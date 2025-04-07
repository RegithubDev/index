package com.resustainability.reisp.controller;

import java.net.URLEncoder;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.resustainability.reisp.common.DateParser;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.IWM;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

@Controller
@RequestMapping("/reone")
public class RestService {

	@InitBinder
    public void initBinder(WebDataBinder binder) { 
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }
	Logger logger = Logger.getLogger(RestService.class);
	
	
	@RequestMapping(value = "/ajax/getoDataInChat", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String oDataInChat(@ModelAttribute IWM obj) throws Exception{	
		 HashMap<String, String> data1 = new HashMap<String, String>();
		 ObjectMapper objectMapper = new ObjectMapper();
			//List<DashBoardWeighBridge> pData = service.projectsIWMList("IWM");
		    LocalDate yesterday = LocalDate.now().minusDays(1);
	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	        System.out.println("wfw");
	        String yesterdaysDate = yesterday.format(formatter);
			//pData.forEach(plist-> {
	        Gson gson = new GsonBuilder().setPrettyPrinting().create();
            String jsonBody = null;
            String baseUrl = "http://10.100.1.7:8000/sap/opu/odata/sap/ZSCM_REPORT_CDS/ZSCM_REPORT?$filter=";
            if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getPO_Number()) && !StringUtils.isEmpty(obj.getPR_Number())) {
                baseUrl = baseUrl + URLEncoder.encode("PO_Number eq '" + obj.getPO_Number() + "' or PR_Number eq '" + obj.getPR_Number() + "'", "UTF-8");
            } else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getPO_Number())) {
                baseUrl = baseUrl + URLEncoder.encode("PO_Number eq '" + obj.getPO_Number() + "'", "UTF-8");
            } else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getPR_Number())) {
                baseUrl = baseUrl + URLEncoder.encode("PR_Number eq '" + obj.getPR_Number() + "'", "UTF-8");
            } else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getENFA_Number())) {
                baseUrl = baseUrl + URLEncoder.encode("ENFA_Number eq '" + obj.getENFA_Number() + "'", "UTF-8");
            }
	        String username = "90008234";
	        String password = "Resus@21";

	        // Set up HTTP client with basic authentication
	        CredentialsProvider credentialsProvider = new BasicCredentialsProvider();
	        credentialsProvider.setCredentials(
	                new AuthScope(AuthScope.ANY_HOST, AuthScope.ANY_PORT),
	                new UsernamePasswordCredentials(username, password));
	        CloseableHttpClient httpClient = HttpClients.custom()
	                .setDefaultCredentialsProvider(credentialsProvider)
	                .build();

	        // Make GET request
	        HttpGet httpGet = new HttpGet(baseUrl);
	        httpGet.setHeader("Accept", "application/json");

	        // Execute request
	        HttpResponse response = httpClient.execute(httpGet);

	        // Process response
	        int statusCode = response.getStatusLine().getStatusCode();
	        if (statusCode == 200) {
	            // Convert response entity to string
	            HttpEntity entity = response.getEntity();
	            String responseBody = EntityUtils.toString(entity);
	            List<IWM> entryList = new ArrayList<>();
	            // Parse JSON response
	            JSONObject jsonObject = new JSONObject(responseBody);
	            JSONObject dObject = jsonObject.getJSONObject("d");
                JSONArray resultsArray = dObject.getJSONArray("results");
	            System.out.println("size: " + resultsArray.length());
	            // Process each entry
	            for (int i = 0; i < resultsArray.length(); i++) {
	                JSONObject entryJson = resultsArray.getJSONObject(i);
	                IWM entry = new IWM();
	                // Extract and process properties
	                entry.setPlant(entryJson.optString("Plant", null));
	                entry.setRFQ_Number(entryJson.optString("RFQ_Number", null));
	                entry.setRFQ_LineItem_Number(entryJson.optString("RFQ_LineItem_Number", null));
	                entry.setRFQ_Quantity(entryJson.optString("RFQ_Quantity", null));
	                entry.setRFQ_Createdon(entryJson.optString("RFQ_Createdon", null));
	                entry.setRFQ_Floatedon(entryJson.optString("RFQ_Floatedon", null));
	                entry.setRFQ_Maintainedon(entryJson.optString("RFQ_Maintainedon", null));
	                entry.setENFA_Number(entryJson.optString("ENFA_Number", null));
	                entry.setENFA_Creation(entryJson.optString("ENFA_Creation", null));
	                 entry.setENFA_approval(entryJson.optString("ENFA_approval", null));
	                 entry.setTR_Date(entryJson.optString("TR_Date", null));
	                entry.setPR_Number(entryJson.optString("PR_Number", null));
	                entry.setTR_Rating(entryJson.optString("TR_Rating", null));
	                entry.setPO_Number(entryJson.optString("PO_Number", null));
	                entry.setPO_LineItem_Number(entryJson.optString("PO_LineItem_Number", null));
	                entry.setPO_Created_Date(entryJson.optString("PO_Created_Date", null));
	                entry.setPO_Acc_Category(entryJson.optString("PO_Acc_Category", null));
	                entry.setPO_Quantity(entryJson.optString("PO_Quantity", null));
	                entry.setPO_Item_Rate(entryJson.optString("PO_Item_Rate", null));
	                entry.setPO_NetValue(entryJson.optString("PO_NetValue", null));
	                entry.setPO_Currency(entryJson.optString("PO_Currency", null));
	                entry.setPO_Category(entryJson.optString("PO_Category", null));
	                entry.setPR_Item(entryJson.optString("PR_Item", null));
	                entry.setPO_Approval_Date(entryJson.optString("PO_Approval_Date", null));
	                entry.setGate_Entry_Date(entryJson.optString("Gate_Entry_Date", null));
	                 entry.setInstection_Date(entryJson.optString("Instection_Date", null));
	                 entry.setGIR_Date(entryJson.optString("GIR_Date", null));
	                entry.setGRN_number(entryJson.optString("GRN_number", null));
	                entry.setGRN_Date(entryJson.optString("GRN_Date", null));
	                entry.setMIRO_Date(entryJson.optString("MIRO_Date", null));
	                entry.setMaterial_Description(entryJson.optString("Material_Description", null));
	                entry.setFull_Name_of_Person(entryJson.optString("Full_Name_of_Person", null));
	                entry.setPO_Value_Delivered(entryJson.optString("PO_Value_Delivered", null));
	                entry.setPR_Createdon(entryJson.optString("PR_Createdon", null));
	                entry.setPO_Value_Delivered_Quantity(entryJson.optString("PO_Value_Delivered_Quantity", null));
	                entry.setPO_Value_To_Deliver(entryJson.optString("PO_Value_To_Deliver", null));
	                entry.setPO_Value_To_Deliver_Quantity(entryJson.optString("PO_Value_To_Deliver_Quantity", null));
	                entry.setPO_Short_Close_Quantity(entryJson.optString("PO_Short_Close_Quantity", null));
	                entry.setPO_Short_Close_Value(entryJson.optString("PO_Short_Close_Value", null));
	                entry.setPO_Delete_IND(entryJson.optString("PO_Delete_IND", null));
	                entry.setPR_Delete_IND(entryJson.optString("PR_Delete_IND", null));
	                 entry.setPR_Closed_IND(entryJson.optString("PR_Closed_IND", null));
	                entry.setRFQ_Delete_IND(entryJson.optString("RFQ_Delete_IND", null));
	                 entry.setPO_Deliv_Comp(entryJson.optString("PO_Deliv_Comp", null));
	                entry.setMaterial(entryJson.optString("Material", null));
	                entry.setPO_Value_Delivered_CNV(entryJson.optString("PO_Value_Delivered_CNV", null));
	                entry.setPO_Value_To_Deliver_CNV(entryJson.optString("PO_Value_To_Deliver_CNV", null));
	                entry.setPO_Short_Close_Value_CNV(entryJson.optString("PO_Short_Close_Value_CNV", null));
	                entry.setPO_Create(entryJson.optString("PO_Create", null));
	                entry.setQuantity(entryJson.optString("Quantity", null));
	                entry.setPR_Approval_Date(entryJson.optString("PR_Approval_Date", null));
	                entry.setBuyer_Involved(entryJson.optString("Buyer_Involved", null));
	                entry.setBuyer_Acceptedon(entryJson.optString("Buyer_Acceptedon", null));


	                // Extract other properties similarly...
	                entryList.add(entry);
	                // Output other properties similarly...
	            }
	            jsonBody = gson.toJson(entryList);
	          System.out.println(jsonBody);
	        } else {
	            System.err.println("HTTP request failed with status code: " + statusCode);
	        }

	        // Close HttpClient
	        httpClient.close();
	                
	        return jsonBody;
		     }
	
	public static String convertJsonDate(String jsonDate) {
        // Extract timestamp from /Date(1712102400000)/
        String timestampStr = jsonDate.replaceAll("[^0-9]", ""); // Remove non-numeric characters
        long timestamp = Long.parseLong(timestampStr); // Convert to long
        
        // Convert to readable date format
        Date date = new Date(timestamp);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); // Change format as needed
        sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata")); // Adjust timezone if required

        return sdf.format(date);
    }
	
	
}
