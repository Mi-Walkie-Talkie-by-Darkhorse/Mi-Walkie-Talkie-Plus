package com.ifengyu.intercom.device.lite.dto;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class UpgradeInfoDTO implements Parcelable {
    public static final Parcelable.Creator<UpgradeInfoDTO> CREATOR = new C3204a();

    /* renamed from: a */
    private boolean f12208a;

    /* renamed from: b */
    private int f12209b;

    /* renamed from: c */
    private String f12210c;

    /* renamed from: d */
    private int f12211d;

    /* renamed from: e */
    private String f12212e;

    /* renamed from: f */
    private String f12213f;

    /* renamed from: g */
    private String f12214g;

    /* renamed from: h */
    private int f12215h;

    /* renamed from: com.ifengyu.intercom.device.lite.dto.UpgradeInfoDTO$a */
    /* loaded from: classes2.dex */
    class C3204a implements Parcelable.Creator<UpgradeInfoDTO> {
        C3204a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UpgradeInfoDTO createFromParcel(Parcel parcel) {
            return new UpgradeInfoDTO(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public UpgradeInfoDTO[] newArray(int i) {
            return new UpgradeInfoDTO[i];
        }
    }

    public UpgradeInfoDTO() {
    }

    /* renamed from: a */
    public String m14097a() {
        return this.f12213f;
    }

    /* renamed from: b */
    public int m14096b() {
        return this.f12209b;
    }

    /* renamed from: c */
    public String m14095c() {
        return this.f12210c;
    }

    /* renamed from: d */
    public String m14094d() {
        return this.f12214g;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public int m14093e() {
        return this.f12215h;
    }

    /* renamed from: f */
    public int m14092f() {
        return this.f12211d;
    }

    /* renamed from: g */
    public String m14091g() {
        return this.f12212e;
    }

    /* renamed from: h */
    public boolean m14090h() {
        return this.f12208a;
    }

    /* renamed from: i */
    public void m14089i(String str) {
        this.f12213f = str;
    }

    /* renamed from: j */
    public void m14088j(int i) {
        this.f12209b = i;
    }

    /* renamed from: k */
    public void m14087k(String str) {
        this.f12210c = str;
    }

    /* renamed from: l */
    public void m14086l(String str) {
        this.f12214g = str;
    }

    /* renamed from: m */
    public void m14085m(int i) {
        this.f12215h = i;
    }

    /* renamed from: n */
    public void m14084n(boolean z) {
        this.f12208a = z;
    }

    /* renamed from: o */
    public void m14083o(int i) {
        this.f12211d = i;
    }

    /* renamed from: p */
    public void m14082p(String str) {
        this.f12212e = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.f12208a ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f12209b);
        parcel.writeString(this.f12210c);
        parcel.writeInt(this.f12211d);
        parcel.writeString(this.f12212e);
        parcel.writeString(this.f12213f);
        parcel.writeString(this.f12214g);
        parcel.writeInt(this.f12215h);
    }

    protected UpgradeInfoDTO(Parcel parcel) {
        this.f12208a = parcel.readByte() != 0;
        this.f12209b = parcel.readInt();
        this.f12210c = parcel.readString();
        this.f12211d = parcel.readInt();
        this.f12212e = parcel.readString();
        this.f12213f = parcel.readString();
        this.f12214g = parcel.readString();
        this.f12215h = parcel.readInt();
    }
}
