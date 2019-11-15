package com.tencent.bugly.mimsg.crashreport.common.strategy;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.proguard.z;
import java.util.Map;

/* compiled from: BUGLY */
public class StrategyBean implements Parcelable {
    public static final Creator<StrategyBean> CREATOR = new Creator<StrategyBean>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new StrategyBean(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new StrategyBean[i];
        }
    };
    public static String a = "http://rqd.uu.qq.com/rqd/sync";
    public static String b = "http://android.bugly.qq.com/rqd/async";
    public static String c = "http://android.bugly.qq.com/rqd/async";
    public static String d;
    public long e;
    public long f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public long p;
    public long q;
    public String r;
    public String s;
    public String t;
    public String u;
    public Map<String, String> v;
    public int w;
    public long x;
    public long y;

    public StrategyBean() {
        this.e = -1;
        this.f = -1;
        this.g = true;
        this.h = true;
        this.i = true;
        this.j = true;
        this.k = false;
        this.l = true;
        this.m = true;
        this.n = true;
        this.o = true;
        this.q = 30000;
        this.r = b;
        this.s = c;
        this.t = a;
        this.w = 10;
        this.x = 300000;
        this.y = -1;
        this.f = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        sb.append("S(@L@L").append("@)");
        d = sb.toString();
        sb.setLength(0);
        sb.append("*^@K#K").append("@!");
        this.u = sb.toString();
    }

    public StrategyBean(Parcel parcel) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8 = true;
        this.e = -1;
        this.f = -1;
        this.g = true;
        this.h = true;
        this.i = true;
        this.j = true;
        this.k = false;
        this.l = true;
        this.m = true;
        this.n = true;
        this.o = true;
        this.q = 30000;
        this.r = b;
        this.s = c;
        this.t = a;
        this.w = 10;
        this.x = 300000;
        this.y = -1;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("S(@L@L").append("@)");
            d = sb.toString();
            this.f = parcel.readLong();
            this.g = parcel.readByte() == 1;
            if (parcel.readByte() == 1) {
                z = true;
            } else {
                z = false;
            }
            this.h = z;
            if (parcel.readByte() == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.i = z2;
            this.r = parcel.readString();
            this.s = parcel.readString();
            this.u = parcel.readString();
            this.v = z.b(parcel);
            if (parcel.readByte() == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.j = z3;
            if (parcel.readByte() == 1) {
                z4 = true;
            } else {
                z4 = false;
            }
            this.k = z4;
            if (parcel.readByte() == 1) {
                z5 = true;
            } else {
                z5 = false;
            }
            this.n = z5;
            if (parcel.readByte() == 1) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.o = z6;
            this.q = parcel.readLong();
            if (parcel.readByte() == 1) {
                z7 = true;
            } else {
                z7 = false;
            }
            this.l = z7;
            if (parcel.readByte() != 1) {
                z8 = false;
            }
            this.m = z8;
            this.p = parcel.readLong();
            this.w = parcel.readInt();
            this.x = parcel.readLong();
            this.y = parcel.readLong();
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = 1;
        parcel.writeLong(this.f);
        parcel.writeByte((byte) (this.g ? 1 : 0));
        if (this.h) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        parcel.writeByte((byte) i3);
        if (this.i) {
            i4 = 1;
        } else {
            i4 = 0;
        }
        parcel.writeByte((byte) i4);
        parcel.writeString(this.r);
        parcel.writeString(this.s);
        parcel.writeString(this.u);
        z.b(parcel, this.v);
        if (this.j) {
            i5 = 1;
        } else {
            i5 = 0;
        }
        parcel.writeByte((byte) i5);
        if (this.k) {
            i6 = 1;
        } else {
            i6 = 0;
        }
        parcel.writeByte((byte) i6);
        if (this.n) {
            i7 = 1;
        } else {
            i7 = 0;
        }
        parcel.writeByte((byte) i7);
        if (this.o) {
            i8 = 1;
        } else {
            i8 = 0;
        }
        parcel.writeByte((byte) i8);
        parcel.writeLong(this.q);
        if (this.l) {
            i9 = 1;
        } else {
            i9 = 0;
        }
        parcel.writeByte((byte) i9);
        if (!this.m) {
            i10 = 0;
        }
        parcel.writeByte((byte) i10);
        parcel.writeLong(this.p);
        parcel.writeInt(this.w);
        parcel.writeLong(this.x);
        parcel.writeLong(this.y);
    }
}
