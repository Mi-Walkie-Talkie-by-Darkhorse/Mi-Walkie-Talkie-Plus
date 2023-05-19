package com.xiaomi.infra.galaxy.fds.result;

import com.xiaomi.infra.galaxy.fds.bean.GrantBean;
import com.xiaomi.infra.galaxy.fds.bean.OwnerBean;
import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
/* loaded from: classes2.dex */
public class AccessControlPolicy {
    private List<GrantBean> accessControlList;
    private OwnerBean owner;

    public AccessControlPolicy() {
    }

    public List<GrantBean> getAccessControlList() {
        return this.accessControlList;
    }

    public OwnerBean getOwner() {
        return this.owner;
    }

    public void setAccessControlList(List<GrantBean> list) {
        this.accessControlList = list;
    }

    public void setOwner(OwnerBean ownerBean) {
        this.owner = ownerBean;
    }

    public AccessControlPolicy(OwnerBean ownerBean, List<GrantBean> list) {
        this.owner = ownerBean;
        this.accessControlList = list;
    }
}
