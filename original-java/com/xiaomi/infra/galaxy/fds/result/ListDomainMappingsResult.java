package com.xiaomi.infra.galaxy.fds.result;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
/* loaded from: classes2.dex */
public class ListDomainMappingsResult {
    private List<String> domainMappings = new ArrayList();

    public List<String> getDomainMappings() {
        return this.domainMappings;
    }

    public void setDomainMappings(List<String> list) {
        this.domainMappings = list;
    }
}
