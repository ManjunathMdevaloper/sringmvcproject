package org.jsp;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EducationController 
{
	static EntityManager em = Persistence.createEntityManagerFactory("dev").createEntityManager();
	static EntityTransaction et = em.getTransaction();
	@RequestMapping("/addedu")
	public ModelAndView addPage(ModelAndView mv,@RequestParam int id)
	{
		mv.addObject("id", id);
		mv.setViewName("education.jsp");
		return mv;
	}
	@RequestMapping("/addeducation")
	public ModelAndView addEducation(ModelAndView mv,
									 @RequestParam String university,
									 @RequestParam String degree,
									 @RequestParam String department,
									 @RequestParam String highest,
									 @RequestParam int yop,
									 @RequestParam int id)
	{
		
		Student s = em.find(Student.class, id);
		et.begin();
		em.persist(new Education(0, university, yop, degree, department, highest,s));
		et.commit();
		mv.setViewName("update.jsp");
		mv.addObject("std",s);
		Query q = em.createQuery("select e from Education e where e.student.id=:id");
		q.setParameter("id", id);
		List<Education> el = q.getResultList();
		mv.addObject("el",el);
		
		Query ql = em.createQuery("select a from Address a where a.student.id=:id");
		ql.setParameter("id", id);
		List<Education> al = ql.getResultList();
		mv.addObject("al",al);		return mv;
	}
	public ModelAndView viewAllEdu(ModelAndView mv)
	{
		List l = em.createQuery("from Education").getResultList();
		mv.setViewName("update.jsp");
		mv.addObject("st",l);
		return mv;
	}
	@RequestMapping("/deledu")
	public ModelAndView delEdu(@RequestParam int id,ModelAndView mv,@RequestParam int sid)
	{
		Education e = em.find(Education.class, id);
		Student s = em.find(Student.class, sid);
		if(e != null)
		{
			et.begin();
			em.remove(e);
			et.commit();
			mv.addObject("std",s);
			
			Query q = em.createQuery("select e from Education e where e.student.id=:id");
			q.setParameter("id", sid);
			List<Education> el = q.getResultList();
			mv.addObject("el",el);
			
			Query ql = em.createQuery("select a from Address a where a.student.id=:id");
			ql.setParameter("id", sid);
			List<Address> al = ql.getResultList();
			
			mv.setViewName("update.jsp");
			mv.addObject("al",al);
			return viewAllEdu(mv);
		}
		return viewAllEdu(mv);
	}
}
