package com.xiaomi.infra.galaxy.fds.bean;

import com.xiaomi.infra.galaxy.fds.model.AccessControlList;

/* loaded from: classes2.dex */
public class GrantBean {
    private GranteeBean grantee;
    private AccessControlList.Permission permission;
    private AccessControlList.GrantType type;

    public GrantBean() {
    }

    public GranteeBean getGrantee() {
        return this.grantee;
    }

    public AccessControlList.Permission getPermission() {
        return this.permission;
    }

    public AccessControlList.GrantType getType() {
        return this.type;
    }

    public void setGrantee(GranteeBean granteeBean) {
        this.grantee = granteeBean;
    }

    public void setPermission(AccessControlList.Permission permission) {
        this.permission = permission;
    }

    public void setType(AccessControlList.GrantType grantType) {
        this.type = grantType;
    }

    public GrantBean(GranteeBean granteeBean, AccessControlList.Permission permission) {
        this(granteeBean, permission, AccessControlList.GrantType.USER);
    }

    public GrantBean(GranteeBean granteeBean, AccessControlList.Permission permission, AccessControlList.GrantType grantType) {
        this.grantee = granteeBean;
        this.permission = permission;
        this.type = grantType;
    }
}
