package com.roomieweb.test;

import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.List;

//import com.roomieweb.dao.UserDAO;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.roomieweb.dao.UserDAO;
import com.roomieweb.model.User;

//import com.roomieweb.model.User;




@WebAppConfiguration
@ContextConfiguration(locations = "classpath:roomieweb-servlet.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class UserDAOTest 
{
	@Autowired  
    private UserDAO userDAO;
    
    
  /*
    @Test
    @Transactional
    @Rollback(true)
    public void testAddMeeting()
    {
        DepartmentEntity department = new DepartmentEntity("Information Technology");
        departmentDAO.addDepartment(department);
         
        List<DepartmentEntity> departments = departmentDAO.getAllDepartments();
        Assert.assertEquals(department.getName(), departments.get(0).getName());
    }
    **/
    
    @Test
    @Rollback(true)
    public void testAddEmployee() throws ClassNotFoundException, NoSuchAlgorithmException, SQLException
    {
        User user = new User();
        user.setName("Teste");
        user.setHashedPassword("123");
        user.setEmail("teste@gmail.com");
        user.setRfidCode("XXX");
        userDAO.addUser(user);
    
         
        User u = userDAO.getUser("teste@gmail.com");
        System.out.println(u.getName()); 
        Assert.assertEquals(u.getName(), user.getName());
        userDAO.removeUser(u);
        
      }
    
}