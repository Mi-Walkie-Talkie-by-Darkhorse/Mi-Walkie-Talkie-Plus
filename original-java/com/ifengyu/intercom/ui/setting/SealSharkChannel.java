package com.ifengyu.intercom.ui.setting;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class SealSharkChannel implements Parcelable {
    public static final Parcelable.Creator<SealSharkChannel> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private Long f6579a;

    /* renamed from: b  reason: collision with root package name */
    private int f6580b;

    /* renamed from: c  reason: collision with root package name */
    private int f6581c;
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

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<SealSharkChannel> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SealSharkChannel createFromParcel(Parcel parcel) {
            return new SealSharkChannel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SealSharkChannel[] newArray(int i) {
            return new SealSharkChannel[i];
        }
    }

    public SealSharkChannel() {
        this.f6579a = -1L;
    }

    public void a(Long l) {
        this.f6579a = l;
    }

    public void b(int i) {
        this.f6580b = i;
    }

    public Long c() {
        return this.f6579a;
    }

    public void d(int i) {
        this.e = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (obj == null || SealSharkChannel.class != obj.getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        SealSharkChannel sealSharkChannel = (SealSharkChannel) obj;
        return n() == sealSharkChannel.n() && f() == sealSharkChannel.f();
    }

    public int f() {
        return this.f6580b;
    }

    public void g(int i) {
        this.f = i;
    }

    public void h(int i) {
        this.d = i;
    }

    public void i(int i) {
        this.f6581c = i;
    }

    public int j() {
        return this.h;
    }

    public int k() {
        return this.k;
    }

    public int l() {
        return this.f;
    }

    public int m() {
        return this.d;
    }

    public int n() {
        return this.f6581c;
    }

    public int o() {
        return this.i;
    }

    public String toString() {
        return "SealSharkChannel{id=" + this.f6579a + ", no=" + this.f6580b + ", type=" + this.f6581c + ", txPower=" + this.d + ", rxFreq=" + this.e + ", txFreq=" + this.f + ", name='" + this.g + "', sq=" + this.h + ", vox=" + this.i + ", rxCss=" + this.j + ", txCss=" + this.k + ", elim=" + this.l + ", band=" + this.m + ", polite=" + this.n + ", isStChannel=" + this.o + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f6579a.longValue());
        parcel.writeInt(this.f6580b);
        parcel.writeInt(this.f6581c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeString(this.g);
        parcel.writeInt(this.h);
        parcel.writeInt(this.i);
        parcel.writeInt(this.j);
        parcel.writeInt(this.k);
        parcel.writeByte(this.l ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.m);
        parcel.writeByte(this.n ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.o ? (byte) 1 : (byte) 0);
    }

    public void a(String str) {
        this.g = str;
    }

    public boolean b() {
        return this.l;
    }

    public void c(int i) {
        this.j = i;
    }

    public boolean d() {
        return this.o;
    }

    public void e(int i) {
        this.h = i;
    }

    public void f(int i) {
        this.k = i;
    }

    public boolean g() {
        return this.n;
    }

    public int h() {
        return this.j;
    }

    public int i() {
        return this.e;
    }

    public void j(int i) {
        this.i = i;
    }

    public SealSharkChannel(Long l, int i, int i2, int i3, int i4, int i5, String str, int i6, int i7, int i8, int i9, boolean z, int i10, boolean z2, boolean z3) {
        this.f6579a = -1L;
        this.f6579a = l;
        this.f6580b = i;
        this.f6581c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
        this.g = str;
        this.h = i6;
        this.i = i7;
        this.j = i8;
        this.k = i9;
        this.l = z;
        this.m = i10;
        this.n = z2;
        this.o = z3;
    }

    public void a(boolean z) {
        this.l = z;
    }

    public void b(boolean z) {
        this.o = z;
    }

    public void c(boolean z) {
        this.n = z;
    }

    public int a() {
        return this.m;
    }

    public void a(int i) {
        this.m = i;
    }

    protected SealSharkChannel(Parcel parcel) {
        this.f6579a = -1L;
        this.f6579a = Long.valueOf(parcel.readLong());
        this.f6580b = parcel.readInt();
        this.f6581c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readString();
        this.h = parcel.readInt();
        this.i = parcel.readInt();
        this.j = parcel.readInt();
        this.k = parcel.readInt();
        boolean z = false;
        this.l = parcel.readByte() == 1;
        this.m = parcel.readInt();
        this.n = parcel.readByte() == 1;
        this.o = parcel.readByte() == 1 ? true : z;
    }
}
