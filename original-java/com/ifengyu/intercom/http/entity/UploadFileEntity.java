package com.ifengyu.intercom.http.entity;

/* loaded from: classes2.dex */
public class UploadFileEntity {

    /* renamed from: id */
    private long f13722id;
    private String key;
    private String md5;
    private String path;
    private int size;
    private String url;

    public long getId() {
        return this.f13722id;
    }

    public String getKey() {
        return this.key;
    }

    public String getMd5() {
        return this.md5;
    }

    public String getPath() {
        return this.path;
    }

    public int getSize() {
        return this.size;
    }

    public String getUrl() {
        return this.url;
    }

    public void setId(long j) {
        this.f13722id = j;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setSize(int i) {
        this.size = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "UploadFileEntity{id=" + this.f13722id + ", key='" + this.key + "', md5='" + this.md5 + "', path='" + this.path + "', size=" + this.size + ", url='" + this.url + "'}";
    }
}
