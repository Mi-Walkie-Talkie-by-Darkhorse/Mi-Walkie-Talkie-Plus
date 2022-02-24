package com.ifengyu.intercom.ui.setting;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class UserChannel implements Parcelable {
    public static final Parcelable.Creator<UserChannel> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private Long f6582a;

    /* renamed from: b  reason: collision with root package name */
    private int f6583b;

    /* renamed from: c  reason: collision with root package name */
    private int f6584c;
    private String d;
    private int e;
    private int f;
    private int g;
    private int h;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<UserChannel> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserChannel createFromParcel(Parcel parcel) {
            return new UserChannel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserChannel[] newArray(int i) {
            return new UserChannel[i];
        }
    }

    public UserChannel(int i, int i2, String str, int i3) {
        this.f6583b = i;
        this.f6584c = i2;
        this.d = str;
        this.e = i3;
    }

    public void a(Long l) {
        this.f6582a = l;
    }

    public int b() {
        return this.g;
    }

    public Long c() {
        return this.f6582a;
    }

    public String d() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int e() {
        return this.f6583b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || UserChannel.class != obj.getClass()) {
            return false;
        }
        UserChannel userChannel = (UserChannel) obj;
        return h() == userChannel.h() && e() == userChannel.e();
    }

    public void f(int i) {
        this.f6584c = i;
    }

    public int g() {
        return this.h;
    }

    public int h() {
        return this.f6584c;
    }

    public int hashCode() {
        return ((527 + this.f6584c) * 31) + this.f6583b;
    }

    public String toString() {
        return "UserChannel{id=" + this.f6582a + ", no=" + this.f6583b + ", type=" + this.f6584c + ", name='" + this.d + "', freq=" + this.e + ", tone=" + this.f + ", freq2=" + this.g + ", tone2=" + this.h + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f6583b);
        parcel.writeInt(this.f6584c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
    }

    public void a(String str) {
        this.d = str;
    }

    public void b(int i) {
        this.g = i;
    }

    public void c(int i) {
        this.f6583b = i;
    }

    public void d(int i) {
        this.f = i;
    }

    public void e(int i) {
        this.h = i;
    }

    public int f() {
        return this.f;
    }

    public int a() {
        return this.e;
    }

    public void a(int i) {
        this.e = i;
    }

    protected UserChannel(Parcel parcel) {
        this.f6583b = parcel.readInt();
        this.f6584c = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
    }

    public UserChannel(Long l, int i, int i2, String str, int i3, int i4, int i5, int i6) {
        this.f6582a = l;
        this.f6583b = i;
        this.f6584c = i2;
        this.d = str;
        this.e = i3;
        this.f = i4;
        this.g = i5;
        this.h = i6;
    }

    public UserChannel() {
    }
}
