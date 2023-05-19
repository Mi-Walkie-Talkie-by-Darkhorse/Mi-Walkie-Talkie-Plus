package com.ifengyu.talk.http.entity;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class TempGroup implements Parcelable {
    public static final Parcelable.Creator<TempGroup> CREATOR = new Parcelable.Creator<TempGroup>() { // from class: com.ifengyu.talk.http.entity.TempGroup.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TempGroup createFromParcel(Parcel parcel) {
            return new TempGroup(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TempGroup[] newArray(int i) {
            return new TempGroup[i];
        }
    };
    private String avatar;
    private long gid;
    private String gname;
    private String owner;
    private int userCount;
    private ArrayList<TempMember> userList;

    public TempGroup() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public long getGid() {
        return this.gid;
    }

    public String getGname() {
        return this.gname;
    }

    public String getOwner() {
        return this.owner;
    }

    public int getUserCount() {
        return this.userCount;
    }

    public ArrayList<TempMember> getUserList() {
        return this.userList;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setGid(long j) {
        this.gid = j;
    }

    public void setGname(String str) {
        this.gname = str;
    }

    public void setOwner(String str) {
        this.owner = str;
    }

    public void setUserCount(int i) {
        this.userCount = i;
    }

    public void setUserList(ArrayList<TempMember> arrayList) {
        this.userList = arrayList;
    }

    public String toString() {
        return "TempGroup{gid=" + this.gid + ", gname='" + this.gname + "', avatar='" + this.avatar + "', owner='" + this.owner + "', userCount=" + this.userCount + ", userList=" + this.userList + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.gid);
        parcel.writeString(this.gname);
        parcel.writeString(this.avatar);
        parcel.writeString(this.owner);
        parcel.writeInt(this.userCount);
        parcel.writeList(this.userList);
    }

    protected TempGroup(Parcel parcel) {
        this.gid = parcel.readLong();
        this.gname = parcel.readString();
        this.avatar = parcel.readString();
        this.owner = parcel.readString();
        this.userCount = parcel.readInt();
        ArrayList<TempMember> arrayList = new ArrayList<>();
        this.userList = arrayList;
        parcel.readList(arrayList, TempMember.class.getClassLoader());
    }
}
