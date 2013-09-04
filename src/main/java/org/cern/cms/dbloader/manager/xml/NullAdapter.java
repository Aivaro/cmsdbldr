package org.cern.cms.dbloader.manager.xml;

import javax.xml.bind.annotation.adapters.XmlAdapter;

import org.w3c.dom.Element;

public class NullAdapter <T> extends XmlAdapter<Object, T> {

	@Override
	public Object marshal(T o) throws Exception {
		return null;
	}

	@Override
	public T unmarshal(Object el) throws Exception {
        return null;
	}

}
