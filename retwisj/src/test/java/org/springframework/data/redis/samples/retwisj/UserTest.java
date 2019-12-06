package org.springframework.data.redis.samples.retwisj;

import org.junit.Test;
import static org.junit.Assert.*;

public class UserTest {

    User testUser = new User("userName","pass");

    @Test
    public void CheckNameAfterConstructor() {
        assertEquals(testUser.getName(),"userName");
    }

    @Test
    public void checkSetNameMethod() {
        User user = new User("","");
        user.setName("userName");
        assertEquals(testUser.getName(),"userName");
    }

    @Test
    public void checkNameNotNull() {
        User user = new User("","");
        assertNotNull(user.getName());
    }

    @Test
    public void checkNameNotEmpty() {
        User user = new User("","");
        user.setName("userName");
        assertNotEquals(user.getName(),"");
    }

    @Test
    public void checkPassAfterConstructor() {
        assertEquals(testUser.getPass(),"pass");
    }

    @Test
    public void checkSetPass() {
        User user = new User("","");
        user.setPass("pass");
        assertEquals(testUser.getPass(),"pass");
    }

    @Test
    public void checkPassNotNull() {
        User user = new User("","");
        user.setPass("pass");
        assertNotNull(user.getPass());
    }

    @Test
    public void checkPassNotEmpty() {
        User user = new User("","");
        user.setPass("pass");
        assertNotEquals(user.getPass(),"");
    }

    // @Test
    // public void voluntaryFail() {
    //     fail("Démonstration");
    // }
}