package com.resustainability.reisp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.util.StringUtils;

import com.resustainability.reisp.model.Company;
import com.resustainability.reisp.model.SBU;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.model.SBU;

@Repository
public class SBUDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	DataSource dataSource;

	@Autowired
	DataSourceTransactionManager transactionManager;

	public List<SBU> getSBUsList(SBU obj) throws Exception {
		List<SBU> objsList = null;
		try {
			int arrSize = 0;
			String qry =" select ";
					qry = qry +"(select count( sbu_code) from sbu where sbu_code is not null  ";
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
						qry = qry + " and company_code = ?";
						arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
						qry = qry + " and sbu_code = ? ";
						arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
						qry = qry + " and status = ? ";
						arrSize++;
					}
					qry = qry +  " ) as all_sbu ,";
					qry = qry +	"(select count( sbu_code) from sbu where sbu_code is not null and status = 'Active' ";
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
						qry = qry + " and company_code = ?";
						arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
						qry = qry + " and sbu_code = ? ";
						arrSize++;
					}
					if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
						qry = qry + " and status = ? ";
						arrSize++;
					}
							qry = qry + " ) as active_sbu,"
							+ "(select count( sbu_code) from sbu where sbu_code is not null   and status <> 'Active' ";
							if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
								qry = qry + " and company_code = ?";
								arrSize++;
							}
							if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
								qry = qry + " and sbu_code = ? ";
								arrSize++;
							}
							if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
								qry = qry + " and status = ? ";
								arrSize++;
							}
							qry = qry + " ) as inActive_sbu,"
					+ "s.id,s.company_code,c.company_name,sbu_code,sbu_name,s.status from [sbu] s "
					+ " left join [company] c on c.company_code = s.company_code "
					+ " where s.sbu_code is not null and s.sbu_code <> '' ";
			
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				qry = qry + " and c.company_code = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				qry = qry + " and sbu_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				pValues[i++] = obj.getSbu_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				pValues[i++] = obj.getSbu_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				pValues[i++] = obj.getSbu_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				pValues[i++] = obj.getSbu_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<SBU>(SBU.class));
		
		}catch(Exception e){ 
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<SBU> getCompanyFilterList(SBU obj) throws Exception {
		List<SBU> objsList = new ArrayList<SBU>();
		try {
			String qry = "SELECT  distinct s.company_code,c.company_name FROM [sbu] s "
					+ " left join [company] c on c.company_code = s.company_code "
					+ " where c.company_code is not null and c.company_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				qry = qry + " and c.company_code = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				qry = qry + " and sbu_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			qry = qry + " order by  s.company_code asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				pValues[i++] = obj.getSbu_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<SBU>(SBU.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<SBU> getSBUFilterList(SBU obj) throws Exception {
		List<SBU> objsList = new ArrayList<SBU>();
		try {
			String qry = "SELECT distinct sbu_code, sbu_name FROM [sbu] s "
					+ " where sbu_code is not null and sbu_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				qry = qry + " and s.company_code = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				qry = qry + " and sbu_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			qry = qry + " order by sbu_code asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				pValues[i++] = obj.getSbu_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<SBU>(SBU.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public boolean addSBU(SBU obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [sbu] (sbu_name,sbu_code,company_code,status) VALUES (:sbu_name,:sbu_code,:company_code,:status)";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
		
	}

	public boolean updateSBU(SBU obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String updateQry = "UPDATE [sbu] set sbu_name= :sbu_name,sbu_code= :sbu_code,company_code=:company_code,status= :status "
					+ " where id= :id ";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);
		    count = namedParamJdbcTemplate.update(updateQry, paramSource);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
		
	}

	public List<SBU> getCompaniesList(SBU obj) throws SQLException {
		List<SBU> menuList = null;
		try{  
			String qry = "select company_code, company_name from [company] ";
			menuList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<SBU>(SBU.class));
			
		}catch(Exception e){ 
			e.printStackTrace();
			throw new SQLException(e.getMessage());
		}
		return menuList;
	}

	public List<SBU> getStatusFilterListFromSBU(SBU obj) throws Exception {
		List<SBU> objsList = new ArrayList<SBU>();
		try {
			String qry = "SELECT distinct status FROM [sbu] s "
					+ " where status is not null and status <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				qry = qry + " and s.company_code = ?";
				arrSize++;
			}	
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				qry = qry + " and sbu_code = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			qry = qry + " order by status asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCompany_code())) {
				pValues[i++] = obj.getCompany_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				pValues[i++] = obj.getSbu_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<SBU>(SBU.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<SBU> checkUniqueIfForSBU(SBU obj) throws Exception {
		List<SBU> objsList = new ArrayList<SBU>();
		try {
			String qry = "SELECT sbu_code FROM [sbu]  "
					+ " where status is not null and status <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				qry = qry + " and sbu_code = ?";
				arrSize++;
			}	
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSbu_code())) {
				pValues[i++] = obj.getSbu_code();
			}
			
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<SBU>(SBU.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getDepartmentFilterListForSubCategory(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT distinct(s.department_code),dm.department_name FROM [sub_category] s "
					+ "LEFT JOIN department_master dm on s.department_code = dm.department_code "
					+ " where s.department_code is not null and s.department_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				qry = qry + " and s.category = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				qry = qry + " and sub_category_title = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			qry = qry + " order by s.department_code asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				pValues[i++] = obj.getCategory();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				pValues[i++] = obj.getSub_category_title();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getCategoryFilterListForSubCategory(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT distinct(s.category),dm.dm_category,s.department_code FROM [sub_category] s "
					+ "LEFT JOIN department_category dm on s.category = dm.id "
					+ " where s.category is not null and s.category <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				qry = qry + " and s.category = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				qry = qry + " and sub_category_title = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			qry = qry + " group by s.category,dm.dm_category,s.department_code  order by s.category asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				pValues[i++] = obj.getCategory();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				pValues[i++] = obj.getSub_category_title();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getSubCategoryfilterListForSubCategory(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT (s.sub_category_title) FROM [sub_category] s "
					+ " where s.sub_category_title is not null and s.sub_category_title <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				qry = qry + " and s.category = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				qry = qry + " and sub_category_title = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			qry = qry + " order by s.sub_category_title asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				pValues[i++] = obj.getCategory();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				pValues[i++] = obj.getSub_category_title();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getStatusfilterListForSubCategory(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT (s.status) FROM [sub_category] s "
					+ " where s.status is not null and s.status <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				qry = qry + " and s.category = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				qry = qry + " and sub_category_title = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			qry = qry + " group by s.status order by s.status asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				pValues[i++] = obj.getCategory();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				pValues[i++] = obj.getSub_category_title();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getSubCategoryfilterListForDeptContnt(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT distinct(s.sub_category),dm.sub_category_title FROM [dept_content] s "
					+ "LEFT JOIN sub_category dm on s.sub_category = dm.id "
					+ " where s.sub_category is not null and s.sub_category <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				qry = qry + " and s.category = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				qry = qry + " and sub_category = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			qry = qry + " order by s.sub_category asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				pValues[i++] = obj.getCategory();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				pValues[i++] = obj.getSub_category_title();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getStatusfilterListForDeptContnt(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT (s.status) FROM [dept_content] s "
					+ " where s.status is not null and s.status <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				qry = qry + " and s.category = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				qry = qry + " and sub_category = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			qry = qry + " group by s.status order by s.status asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				pValues[i++] = obj.getCategory();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				pValues[i++] = obj.getSub_category_title();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getCategoryFilterListForDeptContnt(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT distinct(s.category),dm.dm_category,s.department_code FROM [dept_content] s "
					+ "LEFT JOIN department_category dm on s.category = dm.id "
					+ " where s.category is not null and s.category <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				qry = qry + " and s.category = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				qry = qry + " and sub_category = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			qry = qry + " group by s.category,dm.dm_category,s.department_code  order by s.category asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				pValues[i++] = obj.getCategory();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				pValues[i++] = obj.getSub_category_title();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<User> getDepartmentFilterListForDeptContnt(User obj) throws Exception {
		List<User> objsList = new ArrayList<User>();
		try {
			String qry = "SELECT distinct(s.department_code),dm.department_name FROM [dept_content] s "
					+ "LEFT JOIN department_master dm on s.department_code = dm.department_code "
					+ " where s.department_code is not null and s.department_code <> ''  "; 
			int arrSize = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				qry = qry + " and s.department_code = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				qry = qry + " and s.category = ?";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				qry = qry + " and sub_category = ? ";
				arrSize++;
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				qry = qry + " and s.status = ? ";
				arrSize++;
			}
			qry = qry + " order by s.department_code asc";
			Object[] pValues = new Object[arrSize];
			int i = 0;
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getDepartment_code())) {
				pValues[i++] = obj.getDepartment_code();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getCategory())) {
				pValues[i++] = obj.getCategory();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getSub_category_title())) {
				pValues[i++] = obj.getSub_category_title();
			}
			if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getStatus())) {
				pValues[i++] = obj.getStatus();
			}
			objsList = jdbcTemplate.query( qry, pValues, new BeanPropertyRowMapper<User>(User.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public List<SBU> getbiList(SBU obj) throws Exception {
		List<SBU> objsList = new ArrayList<SBU>();
		try {
			String qry = "ELECT [id]\r\n"
					+ "      ,[bi_name]\r\n"
					+ "      ,u.user_name as user_name, u.user_id as [owner]\r\n"
					+ "      ,[bi_link]\r\n"
					+ "      ,[status]\r\n"
					+ "      ,u1.user_name as [created_by]\r\n"
					+ "      ,[created_date]\r\n"
					+ "      ,[madified_by]\r\n"
					+ "      ,[modified_date]\r\n"
					+ "  FROM [safetyDB].[dbo].[api_bi_table] bi "
					+ "left join user u on bi.owner = u.user_id "
					+ "left join user u1 on bi.created_by = u1.user_id  "; 
			
			objsList = jdbcTemplate.query( qry, new BeanPropertyRowMapper<SBU>(SBU.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return objsList;
	}

	public boolean addBI(SBU obj) throws Exception {
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [api_bi_table] (bi_name,owner,bi_link,status) VALUES (:bi_name,:owner,:bi_link,:status)";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public boolean updateBI(SBU obj) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
	
}
