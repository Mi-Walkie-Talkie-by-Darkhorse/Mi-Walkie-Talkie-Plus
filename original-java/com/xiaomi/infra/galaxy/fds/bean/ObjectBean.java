package com.xiaomi.infra.galaxy.fds.bean;

import java.util.Date;

/* loaded from: classes2.dex */
public class ObjectBean {
    private String etag;
    private Date lastModified;
    private String name;
    private OwnerBean owner;
    private long size;
    private long uploadTime;

    public ObjectBean() {
    }

    public String getEtag() {
        return this.etag;
    }

    public Date getLastModified() {
        return this.lastModified;
    }

    public String getName() {
        return this.name;
    }

    public OwnerBean getOwner() {
        return this.owner;
    }

    public long getSize() {
        return this.size;
    }

    public long getUploadTime() {
        return this.uploadTime;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public void setLastModified(Date date) {
        this.lastModified = date;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOwner(OwnerBean ownerBean) {
        this.owner = ownerBean;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public void setUploadTime(long j) {
        this.uploadTime = j;
    }

    public ObjectBean(String str) {
        this.name = str;
    }
}
