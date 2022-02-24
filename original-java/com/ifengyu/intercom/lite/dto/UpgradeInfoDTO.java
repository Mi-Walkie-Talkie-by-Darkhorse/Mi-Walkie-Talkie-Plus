package com.ifengyu.intercom.lite.dto;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class UpgradeInfoDTO implements Parcelable {
    public static final Parcelable.Creator<UpgradeInfoDTO> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private boolean f5386a;

    /* renamed from: b  reason: collision with root package name */
    private int f5387b;

    /* renamed from: c  reason: collision with root package name */
    private String f5388c;
    private int d;
    private String e;
    private String f;
    private String g;
    private int h;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<UpgradeInfoDTO> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpgradeInfoDTO createFromParcel(Parcel parcel) {
            return new UpgradeInfoDTO(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpgradeInfoDTO[] newArray(int i) {
            return new UpgradeInfoDTO[i];
        }
    }

    public UpgradeInfoDTO() {
    }

    public void a(boolean z) {
        this.f5386a = z;
    }

    public int b() {
        return this.f5387b;
    }

    public String c() {
        return this.f5388c;
    }

    public void d(String str) {
        this.e = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int e() {
        return this.h;
    }

    public int f() {
        return this.d;
    }

    public String g() {
        return this.e;
    }

    public boolean h() {
        return this.f5386a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.f5386a ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f5387b);
        parcel.writeString(this.f5388c);
        parcel.writeInt(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeInt(this.h);
    }

    protected UpgradeInfoDTO(Parcel parcel) {
        this.f5386a = parcel.readByte() != 0;
        this.f5387b = parcel.readInt();
        this.f5388c = parcel.readString();
        this.d = parcel.readInt();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readInt();
    }

    public void a(int i) {
        this.f5387b = i;
    }

    public void b(String str) {
        this.f5388c = str;
    }

    public void c(int i) {
        this.d = i;
    }

    public String d() {
        return this.g;
    }

    public String a() {
        return this.f;
    }

    public void b(int i) {
        this.h = i;
    }

    public void c(String str) {
        this.g = str;
    }

    public void a(String str) {
        this.f = str;
    }
}
