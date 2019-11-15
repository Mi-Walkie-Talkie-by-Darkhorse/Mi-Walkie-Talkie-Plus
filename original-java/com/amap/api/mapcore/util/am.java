package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.amap.api.mapcore.util.bm.a;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.mi.milinkforgame.sdk.util.FileUtils;
import java.io.File;
import org.jboss.netty.handler.codec.http.multipart.DiskFileUpload;

/* compiled from: CityObject */
public class am extends OfflineMapCity implements av, bl {
    public static final Creator<am> o = new Creator<am>() {
        /* renamed from: a */
        public am createFromParcel(Parcel parcel) {
            return new am(parcel);
        }

        /* renamed from: a */
        public am[] newArray(int i) {
            return new am[i];
        }
    };
    public bq a;
    public bq b;
    public bq c;
    public bq d;
    public bq e;
    public bq f;
    public bq g;
    public bq h;
    public bq i;
    public bq j;
    public bq k;
    bq l;
    Context m;
    boolean n;
    private String p;
    private String q;
    /* access modifiers changed from: private */
    public long r;

    public void a(String str) {
        this.q = str;
    }

    public String a() {
        return this.q;
    }

    public String b() {
        return getUrl();
    }

    public am(Context context, OfflineMapCity offlineMapCity) {
        this(context, offlineMapCity.getState());
        setCity(offlineMapCity.getCity());
        setUrl(offlineMapCity.getUrl());
        setState(offlineMapCity.getState());
        setCompleteCode(offlineMapCity.getcompleteCode());
        setAdcode(offlineMapCity.getAdcode());
        setVersion(offlineMapCity.getVersion());
        setSize(offlineMapCity.getSize());
        setCode(offlineMapCity.getCode());
        setJianpin(offlineMapCity.getJianpin());
        setPinyin(offlineMapCity.getPinyin());
        t();
    }

    public am(Context context, int i2) {
        this.a = new bs(6, this);
        this.b = new by(2, this);
        this.c = new bu(0, this);
        this.d = new bw(3, this);
        this.e = new bx(1, this);
        this.f = new br(4, this);
        this.g = new bv(7, this);
        this.h = new bt(-1, this);
        this.i = new bt(101, this);
        this.j = new bt(102, this);
        this.k = new bt(103, this);
        this.p = null;
        this.q = "";
        this.n = false;
        this.r = 0;
        this.m = context;
        a(i2);
    }

    public void a(int i2) {
        switch (i2) {
            case -1:
                this.l = this.h;
                break;
            case 0:
                this.l = this.c;
                break;
            case 1:
                this.l = this.e;
                break;
            case 2:
                this.l = this.b;
                break;
            case 3:
                this.l = this.d;
                break;
            case 4:
                this.l = this.f;
                break;
            case 6:
                this.l = this.a;
                break;
            case 7:
                this.l = this.g;
                break;
            case 101:
                this.l = this.i;
                break;
            case 102:
                this.l = this.j;
                break;
            case 103:
                this.l = this.k;
                break;
            default:
                if (i2 < 0) {
                    this.l = this.h;
                    break;
                }
                break;
        }
        setState(i2);
    }

    public void a(bq bqVar) {
        this.l = bqVar;
        setState(bqVar.b());
    }

    public bq c() {
        return this.l;
    }

    public void d() {
        an a2 = an.a(this.m);
        if (a2 != null) {
            a2.c(this);
        }
    }

    public void e() {
        an a2 = an.a(this.m);
        if (a2 != null) {
            a2.e(this);
            d();
        }
    }

    public void f() {
        bk.a("CityOperation current State==>" + c().b());
        if (this.l.equals(this.d)) {
            this.l.e();
        } else if (this.l.equals(this.c)) {
            this.l.f();
        } else if (this.l.equals(this.g) || this.l.equals(this.h)) {
            k();
            this.n = true;
        } else if (this.l.equals(this.j) || this.l.equals(this.i) || this.l.a(this.k)) {
            this.l.d();
        } else {
            c().c();
        }
    }

    public void g() {
        this.l.f();
    }

    public void h() {
        this.l.a(this.k.b());
    }

    public void i() {
        this.l.a();
        if (this.n) {
            this.l.c();
        }
        this.n = false;
    }

    public void j() {
        if (!this.l.equals(this.f)) {
        }
        this.l.g();
    }

    public void k() {
        an a2 = an.a(this.m);
        if (a2 != null) {
            a2.a(this);
        }
    }

    public void l() {
        an a2 = an.a(this.m);
        if (a2 != null) {
            a2.b(this);
        }
    }

    public void m() {
        an a2 = an.a(this.m);
        if (a2 != null) {
            a2.d(this);
        }
    }

    public void n() {
        this.r = 0;
        if (!this.l.equals(this.b)) {
            bk.a("state must be waiting when download onStart");
        }
        this.l.d();
    }

    public void a(long j2, long j3) {
        long j4 = (100 * j3) / j2;
        if (((int) j4) != getcompleteCode()) {
            setCompleteCode((int) j4);
            d();
        }
    }

    public void o() {
        if (!this.l.equals(this.c)) {
            bk.a("state must be Loading when download onFinish");
        }
        this.l.h();
    }

    public void a(a aVar) {
        int i2 = 6;
        switch (aVar) {
            case amap_exception:
                i2 = this.j.b();
                break;
            case file_io_exception:
                i2 = this.k.b();
                break;
            case network_exception:
                i2 = this.i.b();
                break;
        }
        if (this.l.equals(this.c) || this.l.equals(this.b)) {
            this.l.a(i2);
        }
    }

    public void p() {
        e();
    }

    public void q() {
        this.r = 0;
        setCompleteCode(0);
        if (!this.l.equals(this.e)) {
        }
        this.l.d();
    }

    public void r() {
        if (!this.l.equals(this.e)) {
        }
        this.l.a(this.h.b());
    }

    public void a(long j2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.r > 500) {
            if (((int) j2) > getcompleteCode()) {
                setCompleteCode((int) j2);
                d();
            }
            this.r = currentTimeMillis;
        }
    }

    public void b(String str) {
        if (!this.l.equals(this.e)) {
        }
        this.q = str;
        String u = u();
        String v = v();
        if (TextUtils.isEmpty(u) || TextUtils.isEmpty(v)) {
            r();
            return;
        }
        File file = new File(v + "/");
        File file2 = new File(ee.a(this.m) + File.separator + "map/");
        File file3 = new File(ee.a(this.m));
        if (!file3.exists()) {
            file3.mkdir();
        }
        if (!file2.exists()) {
            file2.mkdir();
        }
        a(file, file2, u);
    }

    public void s() {
        e();
    }

    /* access modifiers changed from: protected */
    public void t() {
        this.p = an.a + getPinyin() + FileUtils.ZIP_FILE_EXT + DiskFileUpload.postfix;
    }

    public String u() {
        if (TextUtils.isEmpty(this.p)) {
            return null;
        }
        return this.p.substring(0, this.p.lastIndexOf("."));
    }

    public String v() {
        if (TextUtils.isEmpty(this.p)) {
            return null;
        }
        String u = u();
        return u.substring(0, u.lastIndexOf(46));
    }

    private void a(final File file, File file2, final String str) {
        new be().a(file, file2, -1, bk.a(file), new be.a() {
            public void a(String str, String str2, float f) {
                int i = (int) (60.0d + (((double) f) * 0.39d));
                if (i - am.this.getcompleteCode() > 0 && System.currentTimeMillis() - am.this.r > 1000) {
                    am.this.setCompleteCode(i);
                    am.this.r = System.currentTimeMillis();
                }
            }

            public void a(String str, String str2) {
            }

            public void b(String str, String str2) {
                try {
                    new File(str).delete();
                    bk.b(file);
                    am.this.setCompleteCode(100);
                    am.this.l.h();
                } catch (Exception e) {
                    am.this.l.a(am.this.k.b());
                }
            }

            public void a(String str, String str2, int i) {
                am.this.l.a(am.this.k.b());
            }
        });
    }

    public boolean w() {
        if (((double) bk.a()) < (((double) getSize()) * 2.5d) - ((double) (((long) getcompleteCode()) * getSize()))) {
        }
        return false;
    }

    public ax x() {
        setState(this.l.b());
        ax axVar = new ax((OfflineMapCity) this, this.m);
        axVar.a(a());
        bk.a("vMapFileNames: " + a());
        return axVar;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.q);
    }

    public am(Parcel parcel) {
        super(parcel);
        this.a = new bs(6, this);
        this.b = new by(2, this);
        this.c = new bu(0, this);
        this.d = new bw(3, this);
        this.e = new bx(1, this);
        this.f = new br(4, this);
        this.g = new bv(7, this);
        this.h = new bt(-1, this);
        this.i = new bt(101, this);
        this.j = new bt(102, this);
        this.k = new bt(103, this);
        this.p = null;
        this.q = "";
        this.n = false;
        this.r = 0;
        this.q = parcel.readString();
    }

    public boolean y() {
        return w();
    }

    public String z() {
        StringBuffer stringBuffer = new StringBuffer(getPinyin());
        stringBuffer.append(FileUtils.ZIP_FILE_EXT);
        return stringBuffer.toString();
    }

    public String A() {
        return getAdcode();
    }

    public String B() {
        return u();
    }

    public String C() {
        return v();
    }

    public bq b(int i2) {
        switch (i2) {
            case 101:
                return this.i;
            case 102:
                return this.j;
            case 103:
                return this.k;
            default:
                return this.h;
        }
    }
}
