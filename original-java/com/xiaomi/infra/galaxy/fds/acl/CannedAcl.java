package com.xiaomi.infra.galaxy.fds.acl;

import com.xiaomi.infra.galaxy.fds.model.AccessControlList;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public enum CannedAcl {
    PUBLIC_READ(AccessControlList.UserGroups.ALL_USERS, AccessControlList.Permission.READ),
    PUBLIC_WRITE(AccessControlList.UserGroups.ALL_USERS, AccessControlList.Permission.WRITE),
    PUBLIC_READ_OBJECTS(AccessControlList.UserGroups.ALL_USERS, AccessControlList.Permission.READ_OBJECTS),
    PUBLIC_SSO_WRITE(AccessControlList.UserGroups.ALL_USERS, AccessControlList.Permission.SSO_WRITE),
    AUTHENTICATED_READ(AccessControlList.UserGroups.AUTHENTICATED_USERS, AccessControlList.Permission.READ),
    AUTHENTICATED_WRITE(AccessControlList.UserGroups.AUTHENTICATED_USERS, AccessControlList.Permission.WRITE),
    AUTHENTICATED_READ_OBJECTS(AccessControlList.UserGroups.AUTHENTICATED_USERS, AccessControlList.Permission.READ_OBJECTS),
    AUTHENTICATED_SSO_WRITE(AccessControlList.UserGroups.AUTHENTICATED_USERS, AccessControlList.Permission.SSO_WRITE);
    
    private final AccessControlList.UserGroups group;
    private final AccessControlList.Permission permission;

    CannedAcl(AccessControlList.UserGroups userGroups, AccessControlList.Permission permission) {
        this.group = userGroups;
        this.permission = permission;
    }

    public static List<AccessControlList.Grant> parseFromString(String str) {
        String[] split = str.split(Constants.ACCEPT_TIME_SEPARATOR_SP);
        ArrayList arrayList = new ArrayList(split.length);
        for (String str2 : split) {
            arrayList.add(valueOf(str2.trim()).getGrant());
        }
        return arrayList;
    }

    public AccessControlList.Grant getGrant() {
        return new AccessControlList.Grant(this.group.name(), this.permission, AccessControlList.GrantType.GROUP);
    }
}
