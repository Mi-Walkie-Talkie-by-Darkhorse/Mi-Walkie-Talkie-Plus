package com.ifengyu.intercom.ui.setting;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class SealSharkChannel implements Parcelable {
    public static final Creator<SealSharkChannel> CREATOR = new Creator<SealSharkChannel>() {
        /* renamed from: a */
        public SealSharkChannel createFromParcel(Parcel parcel) {
            return new SealSharkChannel(parcel);
        }

        /* renamed from: a */
        public SealSharkChannel[] newArray(int i) {
            return new SealSharkChannel[i];
        }
    };
    private Long a = Long.valueOf(-1);
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private String g;
    private int h;
    private int i;
    private int j;
    private int k;
    private boolean l;
    private int m;
    private boolean n;
    private boolean o;

    public SealSharkChannel() {
    }

    public SealSharkChannel(Long l2, int i2, int i3, int i4, int i5, int i6, String str, int i7, int i8, int i9, int i10, boolean z, int i11, boolean z2, boolean z3) {
        this.a = l2;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
        this.g = str;
        this.h = i7;
        this.i = i8;
        this.j = i9;
        this.k = i10;
        this.l = z;
        this.m = i11;
        this.n = z2;
        this.o = z3;
    }

    protected SealSharkChannel(Parcel parcel) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        this.a = Long.valueOf(parcel.readLong());
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readString();
        this.h = parcel.readInt();
        this.i = parcel.readInt();
        this.j = parcel.readInt();
        this.k = parcel.readInt();
        if (parcel.readByte() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.l = z;
        this.m = parcel.readInt();
        if (parcel.readByte() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.n = z2;
        if (parcel.readByte() != 1) {
            z3 = false;
        }
        this.o = z3;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int i3;
        int i4;
        int i5 = 1;
        parcel.writeLong(this.a.longValue());
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeString(this.g);
        parcel.writeInt(this.h);
        parcel.writeInt(this.i);
        parcel.writeInt(this.j);
        parcel.writeInt(this.k);
        if (this.l) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        parcel.writeByte((byte) i3);
        parcel.writeInt(this.m);
        if (this.n) {
            i4 = 1;
        } else {
            i4 = 0;
        }
        parcel.writeByte((byte) i4);
        if (!this.o) {
            i5 = 0;
        }
        parcel.writeByte((byte) i5);
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "SealSharkChannel{id=" + this.a + ", no=" + this.b + ", type=" + this.c + ", txPower=" + this.d + ", rxFreq=" + this.e + ", txFreq=" + this.f + ", name='" + this.g + '\'' + ", sq=" + this.h + ", vox=" + this.i + ", rxCss=" + this.j + ", txCss=" + this.k + ", elim=" + this.l + ", band=" + this.m + ", polite=" + this.n + ", isStChannel=" + this.o + '}';
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        SealSharkChannel sealSharkChannel = (SealSharkChannel) obj;
        if (c() == sealSharkChannel.c() && b() == sealSharkChannel.b()) {
            return true;
        }
        return false;
    }

    public Long a() {
        return this.a;
    }

    public void a(Long l2) {
        this.a = l2;
    }

    public int b() {
        return this.b;
    }

    public void a(int i2) {
        this.b = i2;
    }

    public int c() {
        return this.c;
    }

    public void b(int i2) {
        this.c = i2;
    }

    public int d() {
        return this.d;
    }

    public void c(int i2) {
        this.d = i2;
    }

    public int e() {
        return this.e;
    }

    public void d(int i2) {
        this.e = i2;
    }

    public int f() {
        return this.f;
    }

    public void e(int i2) {
        this.f = i2;
    }

    public String g() {
        return this.g;
    }

    public void a(String str) {
        this.g = str;
    }

    public int h() {
        return this.h;
    }

    public void f(int i2) {
        this.h = i2;
    }

    public int i() {
        return this.i;
    }

    public void g(int i2) {
        this.i = i2;
    }

    public int j() {
        return this.j;
    }

    public void h(int i2) {
        this.j = i2;
    }

    public int k() {
        return this.k;
    }

    public void i(int i2) {
        this.k = i2;
    }

    public boolean l() {
        return this.l;
    }

    public void a(boolean z) {
        this.l = z;
    }

    public int m() {
        return this.m;
    }

    public void j(int i2) {
        this.m = i2;
    }

    public boolean n() {
        return this.n;
    }

    public void b(boolean z) {
        this.n = z;
    }

    public boolean o() {
        return this.o;
    }

    public void c(boolean z) {
        this.o = z;
    }
}
