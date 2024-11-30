package org.jsp;

import java.util.ArrayList;
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
public class StudentController {
	static EntityManager em = Persistence.createEntityManagerFactory("dev").createEntityManager();
	static EntityTransaction et = em.getTransaction();
	@RequestMapping("/home")
	public ModelAndView home(ModelAndView mv)
	{
		return viewAll(mv);
	}
	@RequestMapping("/addStudent")
	public ModelAndView addStudent(ModelAndView mv)
	{
		mv.setViewName("add.jsp");
		return mv;
	}
	@RequestMapping("/add")
	public ModelAndView add(ModelAndView mv,
							@RequestParam String name,
							@RequestParam String rollno,
							@RequestParam String email,
							@RequestParam long phone)
	{
		et.begin();
		em.persist(new Student(0, name, rollno, email, phone, null, null));
		et.commit();
		mv.setViewName("viewall.jsp");
		List<Student> l = em.createQuery("from Student").getResultList();
		mv.addObject("std",l);
//		em.createQuery("from e from Education e where student=:");
		return mv;
	}
	@RequestMapping("/updatePage")
	public ModelAndView updatePage(ModelAndView mv,@RequestParam int id)
	{
		Student s = em.find(Student.class, id);
		mv.setViewName("update.jsp");
		mv.addObject("std",s);
		Query q = em.createQuery("select e from Education e where e.student.id=:id");
		q.setParameter("id", id);
		List<Education> el = q.getResultList();
		mv.addObject("el",el);
		
		Query ql = em.createQuery("select a from Address a where a.student.id=:id");
		ql.setParameter("id", id);
		List<Education> al = ql.getResultList();
		mv.addObject("al",al);

		return mv;
	}
	@RequestMapping("/update")
	public ModelAndView update(ModelAndView mv,
								@RequestParam int id,
								@RequestParam String name,
								@RequestParam String rollno,
								@RequestParam String email,
								@RequestParam long phone)
	{
		Student s = em.find(Student.class, id);
		s.setName(name);
		s.setRollNo(rollno);
		s.setEmail(email);
		s.setPhone(phone);
		et.begin();
		em.merge(s);
		et.commit();
		
		return viewAll(mv);
	}
	@RequestMapping("/del")
	public ModelAndView delete(ModelAndView mv,@RequestParam int id)
	{
		Student s = em.find(Student.class, id);
				
		et.begin();
		List<Education> educations = em.createQuery(
	            "SELECT e FROM Education e WHERE e.student.id = :studentId", Education.class)
	            .setParameter("studentId", id)
	            .getResultList();
	        for (Education edu : educations) {
	            em.remove(edu);
	        }
	            List<Address> address = em.createQuery(
	                    "SELECT a FROM Address a WHERE a.student.id = :studentId", Address.class)
	                    .setParameter("studentId", id)
	                    .getResultList();
	                for (Address add : address) {
	                    em.remove(add);
	                }
		em.remove(s);
		et.commit();
		return viewAll(mv);
	}
	@RequestMapping("/view")
	public ModelAndView viewAll(ModelAndView mv)
	{
		mv.setViewName("viewall.jsp");
		List<Student> l = em.createQuery("from Student").getResultList();
		mv.addObject("std",l);
		return mv;
	}

	
	
}
