package com.xiaomi.push;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public abstract class ha {

    /* renamed from: a  reason: collision with other field name */
    public static final DateFormat f458a;

    /* renamed from: a  reason: collision with other field name */
    private he f459a;

    /* renamed from: a  reason: collision with other field name */
    private List<gx> f460a;

    /* renamed from: a  reason: collision with other field name */
    private final Map<String, Object> f461a;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;

    /* renamed from: a  reason: collision with other field name */
    protected static final String f457a = Locale.getDefault().getLanguage().toLowerCase();

    /* renamed from: b  reason: collision with root package name */
    private static String f9020b = null;

    /* renamed from: c  reason: collision with root package name */
    private static String f9021c = hl.a(5) + Constants.ACCEPT_TIME_SEPARATOR_SERVER;

    /* renamed from: a  reason: collision with root package name */
    private static long f9019a = 0;

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        f458a = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public ha() {
        this.d = f9020b;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.f460a = new CopyOnWriteArrayList();
        this.f461a = new HashMap();
        this.f459a = null;
    }

    public ha(Bundle bundle) {
        this.d = f9020b;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.f460a = new CopyOnWriteArrayList();
        this.f461a = new HashMap();
        this.f459a = null;
        this.f = bundle.getString("ext_to");
        this.g = bundle.getString("ext_from");
        this.h = bundle.getString("ext_chid");
        this.e = bundle.getString("ext_pkt_id");
        Parcelable[] parcelableArray = bundle.getParcelableArray("ext_exts");
        if (parcelableArray != null) {
            this.f460a = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                gx a2 = gx.a((Bundle) parcelable);
                if (a2 != null) {
                    this.f460a.add(a2);
                }
            }
        }
        Bundle bundle2 = bundle.getBundle("ext_ERROR");
        if (bundle2 != null) {
            this.f459a = new he(bundle2);
        }
    }

    public static synchronized String i() {
        String sb;
        synchronized (ha.class) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f9021c);
            long j = f9019a;
            f9019a = 1 + j;
            sb2.append(Long.toString(j));
            sb = sb2.toString();
        }
        return sb;
    }

    public static String q() {
        return f457a;
    }

    /* renamed from: a */
    public Bundle mo337a() {
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(this.d)) {
            bundle.putString("ext_ns", this.d);
        }
        if (!TextUtils.isEmpty(this.g)) {
            bundle.putString("ext_from", this.g);
        }
        if (!TextUtils.isEmpty(this.f)) {
            bundle.putString("ext_to", this.f);
        }
        if (!TextUtils.isEmpty(this.e)) {
            bundle.putString("ext_pkt_id", this.e);
        }
        if (!TextUtils.isEmpty(this.h)) {
            bundle.putString("ext_chid", this.h);
        }
        he heVar = this.f459a;
        if (heVar != null) {
            bundle.putBundle("ext_ERROR", heVar.a());
        }
        List<gx> list = this.f460a;
        if (list != null) {
            Bundle[] bundleArr = new Bundle[list.size()];
            int i = 0;
            for (gx gxVar : this.f460a) {
                Bundle a2 = gxVar.a();
                if (a2 != null) {
                    i++;
                    bundleArr[i] = a2;
                }
            }
            bundle.putParcelableArray("ext_exts", bundleArr);
        }
        return bundle;
    }

    public gx a(String str) {
        return a(str, null);
    }

    public gx a(String str, String str2) {
        for (gx gxVar : this.f460a) {
            if (str2 == null || str2.equals(gxVar.b())) {
                if (str.equals(gxVar.m330a())) {
                    return gxVar;
                }
            }
        }
        return null;
    }

    public he a() {
        return this.f459a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized Object m334a(String str) {
        if (this.f461a == null) {
            return null;
        }
        return this.f461a.get(str);
    }

    /* renamed from: a  reason: collision with other method in class */
    public abstract String m335a();

    /* renamed from: a  reason: collision with other method in class */
    public synchronized Collection<gx> m336a() {
        if (this.f460a == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(new ArrayList(this.f460a));
    }

    public void a(gx gxVar) {
        this.f460a.add(gxVar);
    }

    public void a(he heVar) {
        this.f459a = heVar;
    }

    public synchronized Collection<String> b() {
        if (this.f461a == null) {
            return Collections.emptySet();
        }
        return Collections.unmodifiableSet(new HashSet(this.f461a.keySet()));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ha haVar = (ha) obj;
        he heVar = this.f459a;
        if (heVar == null ? haVar.f459a != null : !heVar.equals(haVar.f459a)) {
            return false;
        }
        String str = this.g;
        if (str == null ? haVar.g != null : !str.equals(haVar.g)) {
            return false;
        }
        if (!this.f460a.equals(haVar.f460a)) {
            return false;
        }
        String str2 = this.e;
        if (str2 == null ? haVar.e != null : !str2.equals(haVar.e)) {
            return false;
        }
        String str3 = this.h;
        if (str3 == null ? haVar.h != null : !str3.equals(haVar.h)) {
            return false;
        }
        Map<String, Object> map = this.f461a;
        if (map == null ? haVar.f461a != null : !map.equals(haVar.f461a)) {
            return false;
        }
        String str4 = this.f;
        if (str4 == null ? haVar.f != null : !str4.equals(haVar.f)) {
            return false;
        }
        String str5 = this.d;
        String str6 = haVar.d;
        if (str5 != null) {
            if (str5.equals(str6)) {
                return true;
            }
        } else if (str6 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        String str = this.d;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.e;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.g;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.h;
        int hashCode5 = (((((hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.f460a.hashCode()) * 31) + this.f461a.hashCode()) * 31;
        he heVar = this.f459a;
        if (heVar != null) {
            i = heVar.hashCode();
        }
        return hashCode5 + i;
    }

    public String j() {
        if ("ID_NOT_AVAILABLE".equals(this.e)) {
            return null;
        }
        if (this.e == null) {
            this.e = i();
        }
        return this.e;
    }

    public String k() {
        return this.h;
    }

    public void k(String str) {
        this.e = str;
    }

    public String l() {
        return this.f;
    }

    public void l(String str) {
        this.h = str;
    }

    public String m() {
        return this.g;
    }

    public void m(String str) {
        this.f = str;
    }

    public String n() {
        return this.i;
    }

    public void n(String str) {
        this.g = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0107 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x010f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized java.lang.String o() {
        /*
            Method dump skipped, instructions count: 307
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.ha.o():java.lang.String");
    }

    public void o(String str) {
        this.i = str;
    }

    public String p() {
        return this.d;
    }
}
