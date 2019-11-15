package com.tencent.bugly.mimsg.crashreport.crash;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.tencent.bugly.mimsg.crashreport.common.info.PlugInBean;
import com.tencent.bugly.mimsg.proguard.z;
import java.util.Map;
import java.util.UUID;

/* compiled from: BUGLY */
public class CrashDetailBean implements Parcelable, Comparable<CrashDetailBean> {
    public static final Creator<CrashDetailBean> CREATOR = new Creator<CrashDetailBean>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new CrashDetailBean(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new CrashDetailBean[i];
        }
    };
    public String A = "";
    public long B = -1;
    public long C = -1;
    public long D = -1;
    public long E = -1;
    public long F = -1;
    public long G = -1;
    public String H = "";
    public String I = "";
    public String J = "";
    public String K = "";
    public long L = -1;
    public boolean M = false;
    public Map<String, String> N = null;
    public int O = -1;
    public int P = -1;
    public Map<String, String> Q = null;
    public Map<String, String> R = null;
    public byte[] S = null;
    public String T = null;
    public String U = null;
    private String V = "";
    public long a = -1;
    public int b = 0;
    public String c = UUID.randomUUID().toString();
    public boolean d = false;
    public String e = "";
    public String f = "";
    public String g = "";
    public Map<String, PlugInBean> h = null;
    public Map<String, PlugInBean> i = null;
    public boolean j = false;
    public boolean k = false;
    public int l = 0;
    public String m = "";
    public String n = "";
    public String o = "";
    public String p = "";
    public String q = "";
    public long r = -1;
    public String s = null;
    public int t = 0;
    public String u = "";
    public String v = "";
    public String w = null;
    public byte[] x = null;
    public Map<String, String> y = null;
    public String z = "";

    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        CrashDetailBean crashDetailBean = (CrashDetailBean) obj;
        if (crashDetailBean != null) {
            long j2 = this.r - crashDetailBean.r;
            if (j2 <= 0) {
                return j2 < 0 ? -1 : 0;
            }
        }
        return 1;
    }

    public CrashDetailBean() {
    }

    public CrashDetailBean(Parcel parcel) {
        boolean z2;
        boolean z3;
        boolean z4 = true;
        this.b = parcel.readInt();
        this.c = parcel.readString();
        this.d = parcel.readByte() == 1;
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        if (parcel.readByte() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.j = z2;
        if (parcel.readByte() == 1) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.k = z3;
        this.l = parcel.readInt();
        this.m = parcel.readString();
        this.n = parcel.readString();
        this.o = parcel.readString();
        this.p = parcel.readString();
        this.q = parcel.readString();
        this.r = parcel.readLong();
        this.s = parcel.readString();
        this.t = parcel.readInt();
        this.u = parcel.readString();
        this.v = parcel.readString();
        this.w = parcel.readString();
        this.y = z.b(parcel);
        this.z = parcel.readString();
        this.A = parcel.readString();
        this.B = parcel.readLong();
        this.C = parcel.readLong();
        this.D = parcel.readLong();
        this.E = parcel.readLong();
        this.F = parcel.readLong();
        this.G = parcel.readLong();
        this.H = parcel.readString();
        this.V = parcel.readString();
        this.I = parcel.readString();
        this.J = parcel.readString();
        this.K = parcel.readString();
        this.L = parcel.readLong();
        if (parcel.readByte() != 1) {
            z4 = false;
        }
        this.M = z4;
        this.N = z.b(parcel);
        this.h = z.a(parcel);
        this.i = z.a(parcel);
        this.O = parcel.readInt();
        this.P = parcel.readInt();
        this.Q = z.b(parcel);
        this.R = z.b(parcel);
        this.S = parcel.createByteArray();
        this.x = parcel.createByteArray();
        this.T = parcel.readString();
        this.U = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int i3;
        int i4;
        int i5 = 1;
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
        parcel.writeByte((byte) (this.d ? 1 : 0));
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        if (this.j) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        parcel.writeByte((byte) i3);
        if (this.k) {
            i4 = 1;
        } else {
            i4 = 0;
        }
        parcel.writeByte((byte) i4);
        parcel.writeInt(this.l);
        parcel.writeString(this.m);
        parcel.writeString(this.n);
        parcel.writeString(this.o);
        parcel.writeString(this.p);
        parcel.writeString(this.q);
        parcel.writeLong(this.r);
        parcel.writeString(this.s);
        parcel.writeInt(this.t);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
        parcel.writeString(this.w);
        z.b(parcel, this.y);
        parcel.writeString(this.z);
        parcel.writeString(this.A);
        parcel.writeLong(this.B);
        parcel.writeLong(this.C);
        parcel.writeLong(this.D);
        parcel.writeLong(this.E);
        parcel.writeLong(this.F);
        parcel.writeLong(this.G);
        parcel.writeString(this.H);
        parcel.writeString(this.V);
        parcel.writeString(this.I);
        parcel.writeString(this.J);
        parcel.writeString(this.K);
        parcel.writeLong(this.L);
        if (!this.M) {
            i5 = 0;
        }
        parcel.writeByte((byte) i5);
        z.b(parcel, this.N);
        z.a(parcel, this.h);
        z.a(parcel, this.i);
        parcel.writeInt(this.O);
        parcel.writeInt(this.P);
        z.b(parcel, this.Q);
        z.b(parcel, this.R);
        parcel.writeByteArray(this.S);
        parcel.writeByteArray(this.x);
        parcel.writeString(this.T);
        parcel.writeString(this.U);
    }
}
