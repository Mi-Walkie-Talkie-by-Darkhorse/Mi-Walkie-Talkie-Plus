package com.ifengyu.intercom.ui.setting;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class UserChannel implements Parcelable {
    public static final Creator<UserChannel> CREATOR = new Creator<UserChannel>() {
        /* renamed from: a */
        public UserChannel createFromParcel(Parcel parcel) {
            return new UserChannel(parcel);
        }

        /* renamed from: a */
        public UserChannel[] newArray(int i) {
            return new UserChannel[i];
        }
    };
    private Long a;
    private int b;
    private int c;
    private String d;
    private int e;
    private int f;
    private int g;
    private int h;

    public UserChannel(int i, int i2, String str, int i3) {
        this.b = i;
        this.c = i2;
        this.d = str;
        this.e = i3;
    }

    protected UserChannel(Parcel parcel) {
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
    }

    public UserChannel(Long l, int i, int i2, String str, int i3, int i4, int i5, int i6) {
        this.a = l;
        this.b = i;
        this.c = i2;
        this.d = str;
        this.e = i3;
        this.f = i4;
        this.g = i5;
        this.h = i6;
    }

    public UserChannel() {
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        UserChannel userChannel = (UserChannel) obj;
        if (c() != userChannel.c()) {
            return false;
        }
        if (b() != userChannel.b()) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((this.c + 527) * 31) + this.b;
    }

    public String toString() {
        return "UserChannel{id=" + this.a + ", no=" + this.b + ", type=" + this.c + ", name='" + this.d + '\'' + ", freq=" + this.e + ", tone=" + this.f + ", freq2=" + this.g + ", tone2=" + this.h + '}';
    }

    public Long a() {
        return this.a;
    }

    public void a(Long l) {
        this.a = l;
    }

    public int b() {
        return this.b;
    }

    public void a(int i) {
        this.b = i;
    }

    public int c() {
        return this.c;
    }

    public void b(int i) {
        this.c = i;
    }

    public String d() {
        return this.d;
    }

    public void a(String str) {
        this.d = str;
    }

    public int e() {
        return this.e;
    }

    public void c(int i) {
        this.e = i;
    }

    public int f() {
        return this.f;
    }

    public void d(int i) {
        this.f = i;
    }

    public int g() {
        return this.g;
    }

    public void e(int i) {
        this.g = i;
    }

    public int h() {
        return this.h;
    }

    public void f(int i) {
        this.h = i;
    }
}
