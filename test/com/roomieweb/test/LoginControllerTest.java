package com.roomieweb.test;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.View;

import com.roomieweb.controller.LoginController;
import org.junit.runner.RunWith;

@WebAppConfiguration
@ContextConfiguration(locations = "classpath:roomieweb-servlet.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class LoginControllerTest {

	@Autowired
    private WebApplicationContext wac;
 
    private MockMvc mockMvc;
 
    @Before
    public void setup() {
        this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build();
    }
    
    @Test
    public void testGetLogin() throws Exception {
        this.mockMvc.perform(get("/login"))
                .andExpect(status().isOk());
                
    }
    
    /*
    @Test
    public void testCreateSignupFormErrors() throws Exception {
     
      this.mockMvc.perform(post("/create")
                .param("email", "<error>")
                .param("firstName", "<error>")
                .param("lastName", "<error>"))
                .andExpect(status().isOk())
                .andExpect(forwardedUrl(IndexController.PAGE_INDEX))
                .andExpect(model().attributeHasFieldErrors("signupForm", "email"));
    }
    */
}
