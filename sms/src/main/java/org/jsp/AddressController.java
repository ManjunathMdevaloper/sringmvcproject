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
public class AddressController {
	static EntityManager em = Persistence.createEntityManagerFactory("dev").createEntityManager();
	static EntityTransaction et = em.getTransaction();
	@RequestMapping("/saveadd")
	public ModelAndView saveAdd(ModelAndView mv,
								@RequestParam int doorNo,
								@RequestParam String street,
								@RequestParam String city,
								@RequestParam String state,
								@RequestParam String country,
								@RequestParam int pincode,
								@RequestParam long phone,
								@RequestParam String addresstype,
								@RequestParam int id)
	{
		
		
		Student s = em.find(Student.class, id);
		et.begin();
		em.persist(new Address(0, doorNo, street, city, state, country, pincode, phone, addresstype,s));
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
		mv.addObject("al",al);
		return mv;
	}
	@RequestMapping("/addadd")
	public ModelAndView addAddPage(ModelAndView mv,@RequestParam int id)
	{
		mv.setViewName("addaddress.jsp");
		mv.addObject("id",id);
		return mv;
	}
	public ModelAndView viewAllAdd(ModelAndView mv)
	{
		mv.setViewName("update.jsp");
		List<Education> l = em.createQuery("from Address").getResultList();
		mv.addObject("ed",l);
		return mv;
	}
	@RequestMapping("/deladd")
	public ModelAndView delAdd(ModelAndView mv,@RequestParam int id,@RequestParam int sid)
	{
		Address a = em.find(Address.class, id);
		Student s = em.find(Student.class, sid);
		if(a != null)
		{
			et.begin();
			em.remove(a);
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
			return viewAllAdd(mv);
		}
		mv.addObject("std",s);
		Query q = em.createQuery("select e from Education e where e.student.id=:id");
		q.setParameter("id", sid);
		List<Education> el = q.getResultList();
		mv.addObject("el",el);
		mv.addObject("std",s);
		
		Query ql = em.createQuery("select a from Address a where a.student.id=:id");
		ql.setParameter("id", sid);
		List<Address> al = ql.getResultList();
		mv.setViewName("update.jsp");
		mv.addObject("al",al);
		return viewAllAdd(mv);
	}
}
