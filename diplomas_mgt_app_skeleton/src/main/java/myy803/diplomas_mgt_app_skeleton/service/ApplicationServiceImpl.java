package myy803.diplomas_mgt_app_skeleton.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myy803.diplomas_mgt_app_skeleton.model.Application;
import myy803.diplomas_mgt_app_skeleton.repositories.ApplicationRepository;

@Service
public class ApplicationServiceImpl implements ApplicationService{
	@Autowired
	private ApplicationRepository applicationDAO;
	
	@Override
	public void save(Application application) {
		applicationDAO.save(application);		
	}
}
