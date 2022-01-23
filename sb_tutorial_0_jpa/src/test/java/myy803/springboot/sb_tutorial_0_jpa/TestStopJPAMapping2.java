package myy803.springboot.sb_tutorial_0_jpa;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.junit4.SpringRunner;

import myy803.springboot.sb_tutorial_0_jpa.entity.Stop;


@RunWith(SpringRunner.class)
@DataJpaTest
class TestStopJPAMapping2 {

	// This is wired to a test-specific manager 
	// that binds to an in memory H2 database only for testing purposes
	// to avoid using a real DB !!
	// To use it have to add H2 maven dependency + also use org.junit.vintage
	@Autowired
    private TestEntityManager entityManager; 
	
	@Test 
	void testPersistAndStop() { 
		
			Stop stop = new Stop(1, "StopA", 1000.0, 200.0); 
			
			entityManager.persist(stop);
		    entityManager.flush();
		    
			Stop retrievedStop = entityManager.find(Stop.class, 1);
			
			Assertions.assertNotNull(retrievedStop); 
			Assertions.assertEquals(stop.getName(), retrievedStop.getName());
	}
	 
	
	

}
