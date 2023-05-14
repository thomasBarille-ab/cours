package org.example;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;


public class TestMe {

    @Test
    public void testThisMethode() {
        int value = 5/3;
        assertEquals(value, 1);
        assertNull(getClass());

    }
}
