package org.jsp;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.xml.ws.soap.MTOM;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Education {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String clgName;
	private int yop;
	private String degree;
	private String department;
	private String highestQualification;
	@ManyToOne(cascade = CascadeType.PERSIST)
	private Student student;

}
