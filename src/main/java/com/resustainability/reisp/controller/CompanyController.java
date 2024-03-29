package com.resustainability.reisp.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.ss.util.WorkbookUtil;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.resustainability.reisp.common.PageConstants;
import com.resustainability.reisp.model.Company;
import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.service.CompanyService;
import com.resustainability.reisp.service.UserService;

@Controller
public class CompanyController {

	@InitBinder
    public void initBinder(WebDataBinder binder) { 
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }
	Logger logger = Logger.getLogger(CompanyController.class);
	
	@Autowired
	CompanyService service;
	
	@Value("${common.error.message}")
	public String commonError;
	
	@Value("${record.dataexport.success}")
	public String dataExportSucess;
	
	@Value("${record.dataexport.invalid.directory}")
	public String dataExportInvalid;
	
	@Value("${record.dataexport.error}")
	public String dataExportError;
	
	@Value("${record.dataexport.nodata}")
	public String dataExportNoData;
	
	@Value("${template.upload.common.error}")
	public String uploadCommonError;
	
	@Value("${template.upload.formatError}")
	public String uploadformatError;
	
	@Autowired  
	UserService serviceU;
	
	@RequestMapping(value = "/company", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView company2(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.company2);
		try { 
			List <User> departmentsList = serviceU.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			
		} catch (Exception e) { 
			e.printStackTrace();    
		} 
		return model; 
	}
	
	
	@RequestMapping(value = "/ajax/getDepartmentfilterInCat", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getDepartmentfilterInCat(@ModelAttribute User obj,HttpSession session) {
		List<User> objList = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			objList = service.getDepartmentfilterInCat(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getDepartmentfilterInCat : " + e.getMessage());
		}
		return objList;
	}
	
	@RequestMapping(value = "/ajax/getCategoryfilterInCat", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getCategoryfilterInCat(@ModelAttribute User obj,HttpSession session) {
		List<User> objList = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			objList = service.getCategoryfilterInCat(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getCategoryfilterInCat : " + e.getMessage());
		}
		return objList;
	}
	
	@RequestMapping(value = "/ajax/getCompanies", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Company> getCompanies(@ModelAttribute Company obj,HttpSession session) {
		List<Company> objList = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			objList = service.getCompaniesList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getStatusfilterInCat : " + e.getMessage());
		}
		return objList;
	}
	
	
	@RequestMapping(value = "/ajax/getStatusfilterInCat", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getCompaniesList(@ModelAttribute User obj,HttpSession session) {
		List<User> objList = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			objList = service.getStatusfilterInCat(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getStatusfilterInCat : " + e.getMessage());
		}
		return objList;
	}
	
	
	@RequestMapping(value = "/ajax/getreonecategory", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getreonecategoryList(@ModelAttribute User obj,HttpSession session) {
		List<User> reonecategoryList = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			reonecategoryList = service.getreonecategory1(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getreonecategoryList : " + e.getMessage());
		}
		return reonecategoryList;
	}
	
	@RequestMapping(value = "/ajax/ChangeCategoryForDept", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> ChangeCategoryForDept(@ModelAttribute User obj,HttpSession session) {
		List<User> reonecategoryList = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			List <User> departmentsList = serviceU.getDepartmentsList(obj);
			if(obj.getDepartment_code().equals("doc")) {
				obj.setDepartment_code(departmentsList.get(0).getDepartment_code());	
        	}
			reonecategoryList = serviceU.getCatagoryList(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getreonecategoryList : " + e.getMessage());
		}
		return reonecategoryList;
	}
	
	@RequestMapping(value = "/ajax/ChangeSubCategoryForDept", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> ChangeSubCategoryForDept(@ModelAttribute User obj,HttpSession session) {
		List<User> reonesubcategoryList = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			List <User> departmentsList = serviceU.getDepartmentsList(obj);
			if(obj.getDepartment_code().equals("doc")) {
				obj.setDepartment_code(departmentsList.get(0).getDepartment_code());	
        	}
			obj.setCategory(obj.getCatID());
			reonesubcategoryList = service.getreoneSubcategory(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getreonecategoryList : " + e.getMessage());
		}
		return reonesubcategoryList;
	}
	
	@RequestMapping(value = "/ajax/setCategoryForSubcategoryForm", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> setCategoryForSubcategoryForm(@ModelAttribute User obj,HttpSession session) {
		List<User> reonecategoryList = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			reonecategoryList = service.getreonecategory(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("setCategoryForSubcategoryForm : " + e.getMessage());
		}
		return reonecategoryList;
	}
	
	@RequestMapping(value = "/ajax/getreoneSubcategory", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<User> getreoneSubcategory(@ModelAttribute User obj,HttpSession session) {
		List<User> getreoneSubcategory = null;
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			getreoneSubcategory = service.getreoneSubcategory(obj);
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getreoneSubcategory : " + e.getMessage());
		}
		return getreoneSubcategory;
	}
	
	@RequestMapping(value = "/add-reoneSubcategory", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addreoneSubcategory(@ModelAttribute User obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/reone-subcategory");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setCreated_by(userId);
			flag = service.addreoneSubcategory(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Category Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Category is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Category is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/get-sub-c", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView getSubDM(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.subcategory_form);
		try {
			List <User> departmentsList = serviceU.getDepartmentsList(user);
			model.addObject("departmentsList", departmentsList);
			
			User sCDetails = service.getSubCategoryDocumentDEtails(user);
			model.addObject("sCDetails", sCDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/update-reoneSubcategory", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView updatereoneSubcategory(@ModelAttribute User obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/reone-subcategory");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setCreated_by(userId);
			flag = service.updatereoneSubcategory(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Category Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Category is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Category is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/add-reonecategory", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addreonecategory(@ModelAttribute User obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/reone-category");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setCreated_by(userId);
			flag = service.addreonecategory(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Category Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Category is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Category is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/get-dm", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView getDM(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.category_form);
		try {
			List <User> departmentsList = serviceU.getDepartmentsListForCategory(user);
			model.addObject("departmentsList", departmentsList);
			
			User CDetails = service.getCategoryDocumentDEtails(user);
			model.addObject("CDetails", CDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/update-reonecategory", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView updatereonecategory(@ModelAttribute User obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/reone-category");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setModified_by(userId);
			flag = service.updatereonecategory(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Category Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Category is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Category is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/ajax/checkUniqueIfForCompany", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Company> checkUniqueIfForCompany(@ModelAttribute Company obj,HttpSession session) {
		List<Company> objsList = null;
		try {
			objsList = service.checkUniqueIfForCompany(obj);
			
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("checkUniqueIfForCompany : " + e.getMessage());
		}
		return objsList;
	}
	
	@RequestMapping(value = "/ajax/getCompanyFilterList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Company> getCompanyFilterList(@ModelAttribute Company obj,HttpSession session) {
		List<Company> objsList = null;
		try {
			objsList = service.getCompanyFilterList(obj);
			 obj = service.getStacksDetails(obj);
			 if(!StringUtils.isEmpty(obj)) {
				session.setAttribute("ALL_COMPANIES", obj.getAll_companies());
				session.setAttribute("ACTIVE_COMPANIES", obj.getActive_companies());
				session.setAttribute("INACTIVE_COMPANIES", obj.getInActive_companies());
			 }
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getCompanyFilterList : " + e.getMessage());
		}
		return objsList;
	}
	
	@RequestMapping(value = "/ajax/getStatusFilterList", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Company> getStatusFilterList(@ModelAttribute Company obj,HttpSession session) {
		List<Company> objsList = null;
		try {
			objsList = service.getStatusFilterList(obj);
			 obj = service.getStacksDetails(obj);
			 if(!StringUtils.isEmpty(obj)) {
				session.setAttribute("ALL_COMPANIES", obj.getAll_companies());
				session.setAttribute("ACTIVE_COMPANIES", obj.getActive_companies());
				session.setAttribute("INACTIVE_COMPANIES", obj.getInActive_companies());
			 }
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("getStatusFilterList : " + e.getMessage());
		}
		return objsList;
	}
	
	@RequestMapping(value = "/add-company", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addCompany(@ModelAttribute Company obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/company");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setCreated_by(userId);
			flag = service.addCompany(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Company Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Company is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Company is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/update-company", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView updateCompany(@ModelAttribute Company obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/company");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setModified_by(userId);
			flag = service.updateCompany(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Company Updated Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Updating Company is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Updating Company is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	

	@RequestMapping(value = "/export-category", method = {RequestMethod.GET,RequestMethod.POST})
	public void exportCategory(HttpServletRequest request, HttpServletResponse response,HttpSession session,@ModelAttribute User obj,RedirectAttributes attributes){
		ModelAndView view = new ModelAndView(PageConstants.reonecategory);
		List<User> dataList = new ArrayList<User>();
		String userId = null;String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");userName = (String) session.getAttribute("USER_NAME");
			view.setViewName("redirect:/reone-category");
			dataList = service.getreonecategory1(obj); 
			if(dataList != null && dataList.size() > 0){
	            XSSFWorkbook  workBook = new XSSFWorkbook ();
	            XSSFSheet sheet = workBook.createSheet(WorkbookUtil.createSafeSheetName("Category"));
		        workBook.setSheetOrder(sheet.getSheetName(), 0);
		        
		        byte[] blueRGB = new byte[]{(byte)0, (byte)176, (byte)240};
		        byte[] yellowRGB = new byte[]{(byte)255, (byte)192, (byte)0};
		        byte[] greenRGB = new byte[]{(byte)146, (byte)208, (byte)80};
		        byte[] redRGB = new byte[]{(byte)255, (byte)0, (byte)0};
		        byte[] whiteRGB = new byte[]{(byte)255, (byte)255, (byte)255};
		        
		        boolean isWrapText = true;boolean isBoldText = true;boolean isItalicText = false; int fontSize = 11;String fontName = "Times New Roman";
		        CellStyle blueStyle = cellFormating(workBook,blueRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle yellowStyle = cellFormating(workBook,yellowRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle greenStyle = cellFormating(workBook,greenRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle redStyle = cellFormating(workBook,redRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle whiteStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        CellStyle indexWhiteStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.LEFT,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        isWrapText = true;isBoldText = false;isItalicText = false; fontSize = 9;fontName = "Times New Roman";
		        CellStyle sectionStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.LEFT,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        
	            XSSFRow headingRow = sheet.createRow(0);
	        	String headerString = "Department,Category,Status,Created By,Created Date,Modified By,Modified Date" + 
	    				"";
	            String[] firstHeaderStringArr = headerString.split("\\,");
	            
	            for (int i = 0; i < firstHeaderStringArr.length; i++) {		        	
		        	Cell cell = headingRow.createCell(i);
			        cell.setCellStyle(greenStyle);
					cell.setCellValue(firstHeaderStringArr[i]);
				}
	            
	            short rowNo = 1;
	            for (User obj1 : dataList) {
	                XSSFRow row = sheet.createRow(rowNo);
	                int c = 0;
	            
	                Cell cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getDepartment_code() +" - "+obj1.getDepartment_name());
					
	                cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getDm_category());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getStatus());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getCreated_by());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getCreated_date());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getModified_by());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getModified_date());
					
	                rowNo++;
	            }
	            for(int columnIndex = 0; columnIndex < firstHeaderStringArr.length; columnIndex++) {
	        		sheet.setColumnWidth(columnIndex, 25 * 200);
				}
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd-HHmmss");
                Date date = new Date();
                String fileName = "Company_"+dateFormat.format(date);
                
	            try{
	                /*FileOutputStream fos = new FileOutputStream(fileDirectory +fileName+".xls");
	                workBook.write(fos);
	                fos.flush();*/
	            	
	               response.setContentType("application/.csv");
	 			   response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	 			   response.setContentType("application/vnd.ms-excel");
	 			   // add response header
	 			   response.addHeader("Content-Disposition", "attachment; filename=" + fileName+".xlsx");
	 			   
	 			    //copies all bytes from a file to an output stream
	 			   workBook.write(response.getOutputStream()); // Write workbook to response.
		           workBook.close();
	 			    //flushes output stream
	 			    response.getOutputStream().flush();
	            	
	                
	                attributes.addFlashAttribute("success",dataExportSucess);
	            	//response.setContentType("application/vnd.ms-excel");
	            	//response.setHeader("Content-Disposition", "attachment; filename=filename.xls");
	            	//XSSFWorkbook  workbook = new XSSFWorkbook ();
	            	// ...
	            	// Now populate workbook the usual way.
	            	// ...
	            	//workbook.write(response.getOutputStream()); // Write workbook to response.
	            	//workbook.close();
	            }catch(FileNotFoundException e){
	                //e.printStackTrace();
	                attributes.addFlashAttribute("error",dataExportInvalid);
	            }catch(IOException e){
	                //e.printStackTrace();
	                attributes.addFlashAttribute("error",dataExportError);
	            }
         }else{
        	 attributes.addFlashAttribute("error",dataExportNoData);
         }
		}catch(Exception e){	
			e.printStackTrace();
			logger.error("exportCompany : : User Id - "+userId+" - User Name - "+userName+" - "+e.getMessage());
			attributes.addFlashAttribute("error", commonError);			
		}
		//return view;
	}
	
	
	
	@RequestMapping(value = "/export-company", method = {RequestMethod.GET,RequestMethod.POST})
	public void exportCompany(HttpServletRequest request, HttpServletResponse response,HttpSession session,@ModelAttribute Company obj,RedirectAttributes attributes){
		ModelAndView view = new ModelAndView(PageConstants.company);
		List<Company> dataList = new ArrayList<Company>();
		String userId = null;String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");userName = (String) session.getAttribute("USER_NAME");
			view.setViewName("redirect:/company");
			dataList = service.getCompaniesList(obj); 
			if(dataList != null && dataList.size() > 0){
	            XSSFWorkbook  workBook = new XSSFWorkbook ();
	            XSSFSheet sheet = workBook.createSheet(WorkbookUtil.createSafeSheetName("Company"));
		        workBook.setSheetOrder(sheet.getSheetName(), 0);
		        
		        byte[] blueRGB = new byte[]{(byte)0, (byte)176, (byte)240};
		        byte[] yellowRGB = new byte[]{(byte)255, (byte)192, (byte)0};
		        byte[] greenRGB = new byte[]{(byte)146, (byte)208, (byte)80};
		        byte[] redRGB = new byte[]{(byte)255, (byte)0, (byte)0};
		        byte[] whiteRGB = new byte[]{(byte)255, (byte)255, (byte)255};
		        
		        boolean isWrapText = true;boolean isBoldText = true;boolean isItalicText = false; int fontSize = 11;String fontName = "Times New Roman";
		        CellStyle blueStyle = cellFormating(workBook,blueRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle yellowStyle = cellFormating(workBook,yellowRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle greenStyle = cellFormating(workBook,greenRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle redStyle = cellFormating(workBook,redRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        CellStyle whiteStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.CENTER,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        CellStyle indexWhiteStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.LEFT,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        isWrapText = true;isBoldText = false;isItalicText = false; fontSize = 9;fontName = "Times New Roman";
		        CellStyle sectionStyle = cellFormating(workBook,whiteRGB,HorizontalAlignment.LEFT,VerticalAlignment.CENTER,isWrapText,isBoldText,isItalicText,fontSize,fontName);
		        
		        
	            XSSFRow headingRow = sheet.createRow(0);
	        	String headerString = "Company,Status,Created By,Created Date,Modified By,Modified Date" + 
	    				"";
	            String[] firstHeaderStringArr = headerString.split("\\,");
	            
	            for (int i = 0; i < firstHeaderStringArr.length; i++) {		        	
		        	Cell cell = headingRow.createCell(i);
			        cell.setCellStyle(greenStyle);
					cell.setCellValue(firstHeaderStringArr[i]);
				}
	            
	            short rowNo = 1;
	            for (Company obj1 : dataList) {
	                XSSFRow row = sheet.createRow(rowNo);
	                int c = 0;
	            
	                Cell cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue(obj1.getCompany_code() +" - "+obj1.getCompany_name());
					
	                cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getStatus());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getCreated_by());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getCreated_date());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getModified_by());
					
					cell = row.createCell(c++);
					cell.setCellStyle(sectionStyle);
					cell.setCellValue (obj1.getModified_date());
					
	                rowNo++;
	            }
	            for(int columnIndex = 0; columnIndex < firstHeaderStringArr.length; columnIndex++) {
	        		sheet.setColumnWidth(columnIndex, 25 * 200);
				}
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd-HHmmss");
                Date date = new Date();
                String fileName = "Company_"+dateFormat.format(date);
                
	            try{
	                /*FileOutputStream fos = new FileOutputStream(fileDirectory +fileName+".xls");
	                workBook.write(fos);
	                fos.flush();*/
	            	
	               response.setContentType("application/.csv");
	 			   response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	 			   response.setContentType("application/vnd.ms-excel");
	 			   // add response header
	 			   response.addHeader("Content-Disposition", "attachment; filename=" + fileName+".xlsx");
	 			   
	 			    //copies all bytes from a file to an output stream
	 			   workBook.write(response.getOutputStream()); // Write workbook to response.
		           workBook.close();
	 			    //flushes output stream
	 			    response.getOutputStream().flush();
	            	
	                
	                attributes.addFlashAttribute("success",dataExportSucess);
	            	//response.setContentType("application/vnd.ms-excel");
	            	//response.setHeader("Content-Disposition", "attachment; filename=filename.xls");
	            	//XSSFWorkbook  workbook = new XSSFWorkbook ();
	            	// ...
	            	// Now populate workbook the usual way.
	            	// ...
	            	//workbook.write(response.getOutputStream()); // Write workbook to response.
	            	//workbook.close();
	            }catch(FileNotFoundException e){
	                //e.printStackTrace();
	                attributes.addFlashAttribute("error",dataExportInvalid);
	            }catch(IOException e){
	                //e.printStackTrace();
	                attributes.addFlashAttribute("error",dataExportError);
	            }
         }else{
        	 attributes.addFlashAttribute("error",dataExportNoData);
         }
		}catch(Exception e){	
			e.printStackTrace();
			logger.error("exportCompany : : User Id - "+userId+" - User Name - "+userName+" - "+e.getMessage());
			attributes.addFlashAttribute("error", commonError);			
		}
		//return view;
	}
	

	private CellStyle cellFormating(XSSFWorkbook workBook,byte[] rgb,HorizontalAlignment hAllign, VerticalAlignment vAllign, boolean isWrapText,boolean isBoldText,boolean isItalicText,int fontSize,String fontName) {
		CellStyle style = workBook.createCellStyle();
		//Setting Background color  
		//style.setFillBackgroundColor(IndexedColors.AQUA.getIndex());
		style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		if (style instanceof XSSFCellStyle) {
		   XSSFCellStyle xssfcellcolorstyle = (XSSFCellStyle)style;
		   xssfcellcolorstyle.setFillForegroundColor(new XSSFColor(rgb, null));
		}
		//style.setFillPattern(FillPatternType.ALT_BARS);
		style.setBorderBottom(BorderStyle.MEDIUM);
		style.setBorderTop(BorderStyle.MEDIUM);
		style.setBorderLeft(BorderStyle.MEDIUM);
		style.setBorderRight(BorderStyle.MEDIUM);
		style.setAlignment(hAllign);
		style.setVerticalAlignment(vAllign);
		style.setWrapText(isWrapText);
		
		Font font = workBook.createFont();
        //font.setColor(HSSFColor.HSSFColorPredefined.WHITE.getIndex());
        font.setFontHeightInPoints((short)fontSize);  
        font.setFontName(fontName);  //"Times New Roman"
        
        font.setItalic(isItalicText); 
        font.setBold(isBoldText);
        // Applying font to the style  
        style.setFont(font); 
        
        return style;
	}
}
