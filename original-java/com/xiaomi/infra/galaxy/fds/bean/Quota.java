package com.xiaomi.infra.galaxy.fds.bean;

import com.xiaomi.infra.galaxy.fds.Action;

/* loaded from: classes2.dex */
public class Quota {
    private Action action;
    private QuotaType type;
    private long value;

    /* loaded from: classes2.dex */
    public enum QuotaType {
        QPS,
        Throughput
    }

    public Quota() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Quota.class != obj.getClass()) {
            return false;
        }
        Quota quota = (Quota) obj;
        return this.value == quota.value && this.action == quota.action && this.type == quota.type;
    }

    public Action getAction() {
        return this.action;
    }

    public QuotaType getType() {
        return this.type;
    }

    public long getValue() {
        return this.value;
    }

    public int hashCode() {
        QuotaType quotaType = this.type;
        int i = 0;
        int hashCode = (quotaType != null ? quotaType.hashCode() : 0) * 31;
        Action action = this.action;
        if (action != null) {
            i = action.hashCode();
        }
        long j = this.value;
        return ((hashCode + i) * 31) + ((int) (j ^ (j >>> 32)));
    }

    public void setAction(Action action) {
        this.action = action;
    }

    public void setType(QuotaType quotaType) {
        this.type = quotaType;
    }

    public void setValue(long j) {
        this.value = j;
    }

    public Quota(QuotaType quotaType, Action action, long j) {
        this.type = quotaType;
        this.action = action;
        this.value = j;
    }
}
