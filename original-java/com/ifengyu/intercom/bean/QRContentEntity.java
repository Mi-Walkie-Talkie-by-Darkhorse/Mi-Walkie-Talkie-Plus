package com.ifengyu.intercom.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class QRContentEntity implements Parcelable {
    public static final Parcelable.Creator<QRContentEntity> CREATOR = new Parcelable.Creator<QRContentEntity>() { // from class: com.ifengyu.intercom.bean.QRContentEntity.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QRContentEntity createFromParcel(Parcel parcel) {
            return new QRContentEntity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QRContentEntity[] newArray(int i) {
            return new QRContentEntity[i];
        }
    };
    public static final int TYPE_GROUP = 2;
    public static final int TYPE_USER = 1;
    private long cid;

    /* renamed from: t */
    private long f12119t;
    private int typ;
    private long uid;

    public QRContentEntity() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getCid() {
        return this.cid;
    }

    public long getT() {
        return this.f12119t;
    }

    public int getTyp() {
        return this.typ;
    }

    public long getUid() {
        return this.uid;
    }

    public void setCid(long j) {
        this.cid = j;
    }

    public void setT(long j) {
        this.f12119t = j;
    }

    public void setTyp(int i) {
        this.typ = i;
    }

    public void setUid(long j) {
        this.uid = j;
    }

    public String toString() {
        return "QREntity{t=" + this.f12119t + ", typ=" + this.typ + ", cid=" + this.cid + ", uid=" + this.uid + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f12119t);
        parcel.writeInt(this.typ);
        parcel.writeLong(this.cid);
        parcel.writeLong(this.uid);
    }

    protected QRContentEntity(Parcel parcel) {
        this.f12119t = parcel.readLong();
        this.typ = parcel.readInt();
        this.cid = parcel.readLong();
        this.uid = parcel.readLong();
    }
}
