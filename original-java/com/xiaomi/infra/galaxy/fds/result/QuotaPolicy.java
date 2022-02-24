package com.xiaomi.infra.galaxy.fds.result;

import com.xiaomi.infra.galaxy.fds.bean.Quota;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
/* loaded from: classes2.dex */
public class QuotaPolicy {
    private List<Quota> quotas = new ArrayList();

    public void addQuota(Quota quota) {
        this.quotas.add(quota);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || QuotaPolicy.class != obj.getClass()) {
            return false;
        }
        List<Quota> list = this.quotas;
        List<Quota> list2 = ((QuotaPolicy) obj).quotas;
        return list == null ? list2 == null : list.equals(list2);
    }

    public List<Quota> getQuotas() {
        return this.quotas;
    }

    public int hashCode() {
        List<Quota> list = this.quotas;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public void setQuotas(List<Quota> list) {
        this.quotas = list;
    }
}
