package com.ifengyu.intercom.lite.models;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import java.util.List;
import java.util.Objects;

@Entity(indices = {@Index(unique = true, value = {"name"})}, tableName = "config_file")
/* loaded from: classes2.dex */
public class ConfigFileModel implements Parcelable {
    public static final Parcelable.Creator<ConfigFileModel> CREATOR = new Parcelable.Creator<ConfigFileModel>() { // from class: com.ifengyu.intercom.lite.models.ConfigFileModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConfigFileModel createFromParcel(Parcel parcel) {
            return new ConfigFileModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConfigFileModel[] newArray(int i) {
            return new ConfigFileModel[i];
        }
    };
    @ColumnInfo(name = "create_time")
    private long createTime;
    private String from;
    @PrimaryKey(autoGenerate = true)
    private Long id;
    @Ignore
    private List<ChannelModel> mChannelModelList;
    private String name;
    @ColumnInfo(name = "update_time")
    private long updateTime;

    public ConfigFileModel() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ConfigFileModel.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.name, ((ConfigFileModel) obj).name);
    }

    public List<ChannelModel> getChannelModelList() {
        return this.mChannelModelList;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public String getFrom() {
        return this.from;
    }

    public Long getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public long getUpdateTime() {
        return this.updateTime;
    }

    public int hashCode() {
        String str = this.name;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public void setChannelModelList(List<ChannelModel> list) {
        this.mChannelModelList = list;
    }

    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setUpdateTime(long j) {
        this.updateTime = j;
    }

    public String toString() {
        return "ConfigFileModel{id=" + this.id + ", name='" + this.name + "', from='" + this.from + "', createTime=" + this.createTime + ", updateTime=" + this.updateTime + ", mChannelModelList=" + this.mChannelModelList + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.id);
        parcel.writeString(this.name);
        parcel.writeString(this.from);
        parcel.writeLong(this.createTime);
        parcel.writeLong(this.updateTime);
        parcel.writeTypedList(this.mChannelModelList);
    }

    public ConfigFileModel(String str, String str2, long j, long j2, List<ChannelModel> list) {
        this.name = str;
        this.from = str2;
        this.createTime = j;
        this.updateTime = j2;
        this.mChannelModelList = list;
    }

    protected ConfigFileModel(Parcel parcel) {
        this.id = (Long) parcel.readValue(Long.class.getClassLoader());
        this.name = parcel.readString();
        this.from = parcel.readString();
        this.createTime = parcel.readLong();
        this.updateTime = parcel.readLong();
        this.mChannelModelList = parcel.createTypedArrayList(ChannelModel.CREATOR);
    }
}
