package com.xiaomi.infra.galaxy.fds.bean;

/* loaded from: classes2.dex */
public class BucketBean {
    private long creationTime;
    private String name;
    private long numObjects;
    private String orgId;
    private long usedSpace;

    public BucketBean() {
    }

    public long getCreationTime() {
        return this.creationTime;
    }

    public String getName() {
        return this.name;
    }

    public long getNumObjects() {
        return this.numObjects;
    }

    public String getOrgId() {
        return this.orgId;
    }

    public long getUsedSpace() {
        return this.usedSpace;
    }

    public void setCreationTime(long j) {
        this.creationTime = j;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumObjects(long j) {
        this.numObjects = j;
    }

    public void setOrgId(String str) {
        this.orgId = str;
    }

    public void setUsedSpace(long j) {
        this.usedSpace = j;
    }

    public BucketBean(String str) {
        this.name = str;
    }
}
