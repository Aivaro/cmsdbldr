package org.cern.cms.dbloader.model.xml.part;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@XmlAccessorType(XmlAccessType.FIELD)
public class ChildPart {

	@XmlElement(name = "ATTRIBUTE")
	private ChildAttribute childAttribute;
	
	@XmlElement(name = "NAME")
	private String name;
	
	@XmlElement(name = "VALUE")
	private Integer value;
	
}
