package com.ifengyu.intercom.bean;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.ifengyu.intercom.p214p.C4148i0;
import java.io.Serializable;

/* loaded from: classes2.dex */
public class AdModel implements Serializable {
    @SerializedName("detail_url")
    public String detailUrl;

    /* renamed from: id */
    public int f12115id;
    @Expose
    public String imagePath;
    @SerializedName("image_url")
    public String imageUrl;
    @Expose
    public boolean isGoToDownload;
    @SerializedName("is_publish")
    public boolean isPublish;
    @Expose
    public String md5;
    @SerializedName("publish_time")
    public String publishTime;
    @SerializedName("show_interval")
    public int showInterval;
    @Expose
    public String type;
    @SerializedName("un_publish_time")
    public String unpublishTime;
    @SerializedName("update_time")
    public String updateTime;

    public long getPublishTime() {
        return C4148i0.m11167a(this.publishTime);
    }

    public long getUnpublishTime() {
        return C4148i0.m11167a(this.unpublishTime);
    }

    public long getUpdateTime() {
        return C4148i0.m11167a(this.updateTime);
    }

    public String toString() {
        return "AdModel{id=" + this.f12115id + ", imageUrl='" + this.imageUrl + "', isPublish=" + this.isPublish + ", detailUrl='" + this.detailUrl + "', showInterval=" + this.showInterval + ", publishTime='" + this.publishTime + "', unpublishTime='" + this.unpublishTime + "', updateTime='" + this.updateTime + "', md5='" + this.md5 + "', imagePath='" + this.imagePath + "', isGoToDownload=" + this.isGoToDownload + '}';
    }
}
