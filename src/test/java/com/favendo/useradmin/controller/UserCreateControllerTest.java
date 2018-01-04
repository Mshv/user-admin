/*
package com.favendo.useradmin.controller;

import com.favendo.useradmin.domain.UserEntity;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;

import static org.junit.Assert.*;
@RunWith(SpringRunner.class)
@SpringBootTest
public class UserCreateControllerTest {

    @InjectMocks
    UserEntity userEntity;

    @InjectMocks
    UserCreateController userCreateController;

    @Mock
    private BindingResult mockBindingResult;

    @Before
    public void setupTest() {
        MockitoAnnotations.initMocks(this);
        // While the default boolean return value for a mock is 'false',
        // it's good to be explicit anyway:
        Mockito.when(mockBindingResult.hasErrors()).thenReturn(false);
    }

    @Test
    public void shouldStayOnRegistrationPageIfBindingErrors() {
        // Simulate having errors just for this test:
        Mockito.when(mockBindingResult.hasErrors()).thenReturn(true);

        ModelAndView mav = userCreateController.register(userEntity, mockBindingResult);

        // Check that we returned back to the original form:
        assertEquals("createUser", mav.getViewName());
    }

}
*/
