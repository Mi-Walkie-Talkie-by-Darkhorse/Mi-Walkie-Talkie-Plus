package com.xiaomi.infra.galaxy.fds.model;

import com.google.common.base.Preconditions;
import com.xiaomi.mipush.sdk.Constants;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class AccessControlList {
    private final Map<GrantKey, Integer> acls = new HashMap();

    /* loaded from: classes2.dex */
    public static class Grant {
        private String granteeId;
        private Permission permission;
        private GrantType type;

        public Grant(GrantKey grantKey, Permission permission) {
            this(grantKey.granteeId, permission, grantKey.type);
        }

        public static Grant fromString(String str) {
            int lastIndexOf = str.lastIndexOf(Constants.COLON_SEPARATOR);
            Preconditions.checkState(lastIndexOf > 0);
            return new Grant(GrantKey.fromString(str.substring(0, lastIndexOf)), Permission.valueOf(str.substring(lastIndexOf + 1)));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Grant.class != obj.getClass()) {
                return false;
            }
            Grant grant = (Grant) obj;
            String str = this.granteeId;
            if (str == null ? grant.granteeId == null : str.equals(grant.granteeId)) {
                return this.permission == grant.permission && this.type == grant.type;
            }
            return false;
        }

        protected GrantKey getGrantKey() {
            return new GrantKey(this.granteeId, this.type);
        }

        public String getGranteeId() {
            return this.granteeId;
        }

        public Permission getPermission() {
            return this.permission;
        }

        public GrantType getType() {
            return this.type;
        }

        public int hashCode() {
            String str = this.granteeId;
            int i = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            Permission permission = this.permission;
            int hashCode2 = (hashCode + (permission != null ? permission.hashCode() : 0)) * 31;
            GrantType grantType = this.type;
            if (grantType != null) {
                i = grantType.hashCode();
            }
            return hashCode2 + i;
        }

        public void setGranteeId(String str) {
            this.granteeId = str;
        }

        public void setPermission(Permission permission) {
            this.permission = permission;
        }

        public void setType(GrantType grantType) {
            this.type = grantType;
        }

        public String toString() {
            return getGrantKey().toString() + Constants.COLON_SEPARATOR + this.permission.name();
        }

        public Grant(String str, Permission permission) {
            this(str, permission, GrantType.USER);
        }

        public Grant(String str, Permission permission, GrantType grantType) {
            this.granteeId = str;
            this.permission = permission;
            this.type = grantType;
        }
    }

    /* loaded from: classes2.dex */
    public static class GrantKey implements Comparable<GrantKey> {
        protected final String granteeId;
        protected final GrantType type;

        public GrantKey(String str, GrantType grantType) {
            this.granteeId = str;
            this.type = grantType;
        }

        public static GrantKey fromString(String str) {
            int lastIndexOf = str.lastIndexOf(Constants.COLON_SEPARATOR);
            Preconditions.checkState(lastIndexOf > 0);
            return new GrantKey(str.substring(0, lastIndexOf), GrantType.valueOf(str.substring(lastIndexOf + 1)));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GrantKey)) {
                return false;
            }
            GrantKey grantKey = (GrantKey) obj;
            return this.granteeId.equals(grantKey.granteeId) && this.type.equals(grantKey.type);
        }

        public int hashCode() {
            return (this.granteeId.hashCode() ^ this.type.hashCode()) + this.granteeId.length();
        }

        public String toString() {
            return this.granteeId + Constants.COLON_SEPARATOR + this.type.name();
        }

        public int compareTo(GrantKey grantKey) {
            int compareTo = this.granteeId.compareTo(grantKey.granteeId);
            return compareTo == 0 ? this.type.compareTo(grantKey.type) : compareTo;
        }
    }

    /* loaded from: classes2.dex */
    public enum GrantType {
        USER,
        GROUP
    }

    /* loaded from: classes2.dex */
    public enum Permission {
        READ(1),
        WRITE(2),
        READ_OBJECTS(4),
        SSO_WRITE(8),
        FULL_CONTROL(255);
        
        private final int value;

        Permission(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2.dex */
    public enum UserGroups {
        ALL_USERS,
        AUTHENTICATED_USERS
    }

    public void addGrant(Grant grant) {
        GrantKey grantKey = grant.getGrantKey();
        Integer num = this.acls.get(grantKey);
        if (num == null) {
            this.acls.put(grantKey, Integer.valueOf(grant.getPermission().getValue()));
            return;
        }
        this.acls.put(grantKey, Integer.valueOf(grant.getPermission().getValue() | num.intValue()));
    }

    public void addGrants(List<Grant> list) {
        for (Grant grant : list) {
            addGrant(grant);
        }
    }

    public boolean checkGroupReadPermission(String str) {
        return checkPermission(str, GrantType.GROUP, Permission.READ);
    }

    public boolean checkGroupWritePermission(String str) {
        return checkPermission(str, GrantType.GROUP, Permission.WRITE);
    }

    public boolean checkPermission(String str, GrantType grantType, Permission permission) {
        Integer num = this.acls.get(new GrantKey(str, grantType));
        if (num == null) {
            return false;
        }
        return (num.intValue() & permission.getValue()) > 0;
    }

    public boolean checkUserReadPermission(String str) {
        return checkPermission(str, GrantType.USER, Permission.READ);
    }

    public boolean checkUserWritePermission(String str) {
        return checkPermission(str, GrantType.USER, Permission.WRITE);
    }

    public List<Grant> getGrantList() {
        Permission[] values;
        LinkedList linkedList = new LinkedList();
        for (Map.Entry<GrantKey, Integer> entry : this.acls.entrySet()) {
            GrantKey key = entry.getKey();
            if (entry.getValue().intValue() == Permission.FULL_CONTROL.getValue()) {
                linkedList.add(new Grant(key, Permission.FULL_CONTROL));
            } else {
                for (Permission permission : Permission.values()) {
                    if (permission.getValue() != Permission.FULL_CONTROL.getValue() && (permission.getValue() & entry.getValue().intValue()) > 0) {
                        linkedList.add(new Grant(key, permission));
                    }
                }
            }
        }
        return linkedList;
    }
}
