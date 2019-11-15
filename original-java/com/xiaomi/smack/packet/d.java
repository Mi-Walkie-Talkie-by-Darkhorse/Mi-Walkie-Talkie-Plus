package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class d {
    protected static final String a = Locale.getDefault().getLanguage().toLowerCase();
    public static final DateFormat b = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    private static String c = null;
    private static String d = (com.xiaomi.smack.util.d.a(5) + "-");
    private static long e = 0;
    private String f = c;
    private String g = null;
    private String h = null;
    private String i = null;
    private String j = null;
    private String k = null;
    private List<a> l = new CopyOnWriteArrayList();
    private final Map<String, Object> m = new HashMap();
    private h n = null;

    static {
        b.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public d() {
    }

    public d(Bundle bundle) {
        this.h = bundle.getString("ext_to");
        this.i = bundle.getString("ext_from");
        this.j = bundle.getString("ext_chid");
        this.g = bundle.getString("ext_pkt_id");
        Parcelable[] parcelableArray = bundle.getParcelableArray("ext_exts");
        if (parcelableArray != null) {
            this.l = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                a a2 = a.a((Bundle) parcelable);
                if (a2 != null) {
                    this.l.add(a2);
                }
            }
        }
        Bundle bundle2 = bundle.getBundle("ext_ERROR");
        if (bundle2 != null) {
            this.n = new h(bundle2);
        }
    }

    public static synchronized String j() {
        String sb;
        synchronized (d.class) {
            StringBuilder append = new StringBuilder().append(d);
            long j2 = e;
            e = 1 + j2;
            sb = append.append(Long.toString(j2)).toString();
        }
        return sb;
    }

    public static String u() {
        return a;
    }

    public void a(a aVar) {
        this.l.add(aVar);
    }

    public void a(h hVar) {
        this.n = hVar;
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(this.f)) {
            bundle.putString("ext_ns", this.f);
        }
        if (!TextUtils.isEmpty(this.i)) {
            bundle.putString("ext_from", this.i);
        }
        if (!TextUtils.isEmpty(this.h)) {
            bundle.putString("ext_to", this.h);
        }
        if (!TextUtils.isEmpty(this.g)) {
            bundle.putString("ext_pkt_id", this.g);
        }
        if (!TextUtils.isEmpty(this.j)) {
            bundle.putString("ext_chid", this.j);
        }
        if (this.n != null) {
            bundle.putBundle("ext_ERROR", this.n.a());
        }
        if (this.l != null) {
            Bundle[] bundleArr = new Bundle[this.l.size()];
            int i2 = 0;
            Iterator it = this.l.iterator();
            while (true) {
                int i3 = i2;
                if (!it.hasNext()) {
                    break;
                }
                Bundle e2 = ((a) it.next()).e();
                if (e2 != null) {
                    i2 = i3 + 1;
                    bundleArr[i3] = e2;
                } else {
                    i2 = i3;
                }
            }
            bundle.putParcelableArray("ext_exts", bundleArr);
        }
        return bundle;
    }

    public a b(String str, String str2) {
        for (a aVar : this.l) {
            if ((str2 == null || str2.equals(aVar.b())) && str.equals(aVar.a())) {
                return aVar;
            }
        }
        return null;
    }

    public abstract String c();

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.n != null) {
            if (!this.n.equals(dVar.n)) {
                return false;
            }
        } else if (dVar.n != null) {
            return false;
        }
        if (this.i != null) {
            if (!this.i.equals(dVar.i)) {
                return false;
            }
        } else if (dVar.i != null) {
            return false;
        }
        if (!this.l.equals(dVar.l)) {
            return false;
        }
        if (this.g != null) {
            if (!this.g.equals(dVar.g)) {
                return false;
            }
        } else if (dVar.g != null) {
            return false;
        }
        if (this.j != null) {
            if (!this.j.equals(dVar.j)) {
                return false;
            }
        } else if (dVar.j != null) {
            return false;
        }
        if (this.m != null) {
            if (!this.m.equals(dVar.m)) {
                return false;
            }
        } else if (dVar.m != null) {
            return false;
        }
        if (this.h != null) {
            if (!this.h.equals(dVar.h)) {
                return false;
            }
        } else if (dVar.h != null) {
            return false;
        }
        if (this.f == null ? dVar.f != null : !this.f.equals(dVar.f)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i2 = 0;
        int hashCode = ((((((this.j != null ? this.j.hashCode() : 0) + (((this.i != null ? this.i.hashCode() : 0) + (((this.h != null ? this.h.hashCode() : 0) + (((this.g != null ? this.g.hashCode() : 0) + ((this.f != null ? this.f.hashCode() : 0) * 31)) * 31)) * 31)) * 31)) * 31) + this.l.hashCode()) * 31) + this.m.hashCode()) * 31;
        if (this.n != null) {
            i2 = this.n.hashCode();
        }
        return hashCode + i2;
    }

    public String k() {
        if ("ID_NOT_AVAILABLE".equals(this.g)) {
            return null;
        }
        if (this.g == null) {
            this.g = j();
        }
        return this.g;
    }

    public void k(String str) {
        this.g = str;
    }

    public String l() {
        return this.j;
    }

    public void l(String str) {
        this.j = str;
    }

    public String m() {
        return this.h;
    }

    public void m(String str) {
        this.h = str;
    }

    public String n() {
        return this.i;
    }

    public void n(String str) {
        this.i = str;
    }

    public String o() {
        return this.k;
    }

    public void o(String str) {
        this.k = str;
    }

    public a p(String str) {
        return b(str, null);
    }

    public h p() {
        return this.n;
    }

    public synchronized Object q(String str) {
        return this.m == null ? null : this.m.get(str);
    }

    public synchronized Collection<a> q() {
        return this.l == null ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(this.l));
    }

    public synchronized Collection<String> r() {
        return this.m == null ? Collections.emptySet() : Collections.unmodifiableSet(new HashSet(this.m.keySet()));
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0129 A[SYNTHETIC, Splitter:B:55:0x0129] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x012e A[SYNTHETIC, Splitter:B:58:0x012e] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x013b A[SYNTHETIC, Splitter:B:64:0x013b] */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x0140 A[SYNTHETIC, Splitter:B:67:0x0140] */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x007f A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized java.lang.String s() {
        /*
            r8 = this;
            r4 = 0
            monitor-enter(r8)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ all -> 0x0023 }
            r6.<init>()     // Catch:{ all -> 0x0023 }
            java.util.Collection r1 = r8.q()     // Catch:{ all -> 0x0023 }
            java.util.Iterator r2 = r1.iterator()     // Catch:{ all -> 0x0023 }
        L_0x000f:
            boolean r1 = r2.hasNext()     // Catch:{ all -> 0x0023 }
            if (r1 == 0) goto L_0x0026
            java.lang.Object r1 = r2.next()     // Catch:{ all -> 0x0023 }
            com.xiaomi.smack.packet.e r1 = (com.xiaomi.smack.packet.e) r1     // Catch:{ all -> 0x0023 }
            java.lang.String r1 = r1.d()     // Catch:{ all -> 0x0023 }
            r6.append(r1)     // Catch:{ all -> 0x0023 }
            goto L_0x000f
        L_0x0023:
            r1 = move-exception
            monitor-exit(r8)
            throw r1
        L_0x0026:
            java.util.Map<java.lang.String, java.lang.Object> r1 = r8.m     // Catch:{ all -> 0x0023 }
            if (r1 == 0) goto L_0x0149
            java.util.Map<java.lang.String, java.lang.Object> r1 = r8.m     // Catch:{ all -> 0x0023 }
            boolean r1 = r1.isEmpty()     // Catch:{ all -> 0x0023 }
            if (r1 != 0) goto L_0x0149
            java.lang.String r1 = "<properties xmlns=\"http://www.jivesoftware.com/xmlns/xmpp/properties\">"
            r6.append(r1)     // Catch:{ all -> 0x0023 }
            java.util.Collection r1 = r8.r()     // Catch:{ all -> 0x0023 }
            java.util.Iterator r7 = r1.iterator()     // Catch:{ all -> 0x0023 }
        L_0x003f:
            boolean r1 = r7.hasNext()     // Catch:{ all -> 0x0023 }
            if (r1 == 0) goto L_0x0144
            java.lang.Object r1 = r7.next()     // Catch:{ all -> 0x0023 }
            java.lang.String r1 = (java.lang.String) r1     // Catch:{ all -> 0x0023 }
            java.lang.Object r2 = r8.q(r1)     // Catch:{ all -> 0x0023 }
            java.lang.String r3 = "<property>"
            r6.append(r3)     // Catch:{ all -> 0x0023 }
            java.lang.String r3 = "<name>"
            java.lang.StringBuilder r3 = r6.append(r3)     // Catch:{ all -> 0x0023 }
            java.lang.String r1 = com.xiaomi.smack.util.d.a(r1)     // Catch:{ all -> 0x0023 }
            java.lang.StringBuilder r1 = r3.append(r1)     // Catch:{ all -> 0x0023 }
            java.lang.String r3 = "</name>"
            r1.append(r3)     // Catch:{ all -> 0x0023 }
            java.lang.String r1 = "<value type=\""
            r6.append(r1)     // Catch:{ all -> 0x0023 }
            boolean r1 = r2 instanceof java.lang.Integer     // Catch:{ all -> 0x0023 }
            if (r1 == 0) goto L_0x0085
            java.lang.String r1 = "integer\">"
            java.lang.StringBuilder r1 = r6.append(r1)     // Catch:{ all -> 0x0023 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0023 }
            java.lang.String r2 = "</value>"
            r1.append(r2)     // Catch:{ all -> 0x0023 }
        L_0x007f:
            java.lang.String r1 = "</property>"
            r6.append(r1)     // Catch:{ all -> 0x0023 }
            goto L_0x003f
        L_0x0085:
            boolean r1 = r2 instanceof java.lang.Long     // Catch:{ all -> 0x0023 }
            if (r1 == 0) goto L_0x0099
            java.lang.String r1 = "long\">"
            java.lang.StringBuilder r1 = r6.append(r1)     // Catch:{ all -> 0x0023 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0023 }
            java.lang.String r2 = "</value>"
            r1.append(r2)     // Catch:{ all -> 0x0023 }
            goto L_0x007f
        L_0x0099:
            boolean r1 = r2 instanceof java.lang.Float     // Catch:{ all -> 0x0023 }
            if (r1 == 0) goto L_0x00ad
            java.lang.String r1 = "float\">"
            java.lang.StringBuilder r1 = r6.append(r1)     // Catch:{ all -> 0x0023 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0023 }
            java.lang.String r2 = "</value>"
            r1.append(r2)     // Catch:{ all -> 0x0023 }
            goto L_0x007f
        L_0x00ad:
            boolean r1 = r2 instanceof java.lang.Double     // Catch:{ all -> 0x0023 }
            if (r1 == 0) goto L_0x00c1
            java.lang.String r1 = "double\">"
            java.lang.StringBuilder r1 = r6.append(r1)     // Catch:{ all -> 0x0023 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0023 }
            java.lang.String r2 = "</value>"
            r1.append(r2)     // Catch:{ all -> 0x0023 }
            goto L_0x007f
        L_0x00c1:
            boolean r1 = r2 instanceof java.lang.Boolean     // Catch:{ all -> 0x0023 }
            if (r1 == 0) goto L_0x00d5
            java.lang.String r1 = "boolean\">"
            java.lang.StringBuilder r1 = r6.append(r1)     // Catch:{ all -> 0x0023 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0023 }
            java.lang.String r2 = "</value>"
            r1.append(r2)     // Catch:{ all -> 0x0023 }
            goto L_0x007f
        L_0x00d5:
            boolean r1 = r2 instanceof java.lang.String     // Catch:{ all -> 0x0023 }
            if (r1 == 0) goto L_0x00ef
            java.lang.String r1 = "string\">"
            r6.append(r1)     // Catch:{ all -> 0x0023 }
            r0 = r2
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ all -> 0x0023 }
            r1 = r0
            java.lang.String r1 = com.xiaomi.smack.util.d.a(r1)     // Catch:{ all -> 0x0023 }
            r6.append(r1)     // Catch:{ all -> 0x0023 }
            java.lang.String r1 = "</value>"
            r6.append(r1)     // Catch:{ all -> 0x0023 }
            goto L_0x007f
        L_0x00ef:
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream     // Catch:{ Exception -> 0x0121, all -> 0x0136 }
            r5.<init>()     // Catch:{ Exception -> 0x0121, all -> 0x0136 }
            java.io.ObjectOutputStream r3 = new java.io.ObjectOutputStream     // Catch:{ Exception -> 0x0160, all -> 0x0157 }
            r3.<init>(r5)     // Catch:{ Exception -> 0x0160, all -> 0x0157 }
            r3.writeObject(r2)     // Catch:{ Exception -> 0x0164, all -> 0x015a }
            java.lang.String r1 = "java-object\">"
            r6.append(r1)     // Catch:{ Exception -> 0x0164, all -> 0x015a }
            byte[] r1 = r5.toByteArray()     // Catch:{ Exception -> 0x0164, all -> 0x015a }
            java.lang.String r1 = com.xiaomi.smack.util.d.a(r1)     // Catch:{ Exception -> 0x0164, all -> 0x015a }
            java.lang.StringBuilder r1 = r6.append(r1)     // Catch:{ Exception -> 0x0164, all -> 0x015a }
            java.lang.String r2 = "</value>"
            r1.append(r2)     // Catch:{ Exception -> 0x0164, all -> 0x015a }
            if (r3 == 0) goto L_0x0117
            r3.close()     // Catch:{ Exception -> 0x014f }
        L_0x0117:
            if (r5 == 0) goto L_0x007f
            r5.close()     // Catch:{ Exception -> 0x011e }
            goto L_0x007f
        L_0x011e:
            r1 = move-exception
            goto L_0x007f
        L_0x0121:
            r1 = move-exception
            r2 = r4
            r3 = r4
        L_0x0124:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x015c }
            if (r2 == 0) goto L_0x012c
            r2.close()     // Catch:{ Exception -> 0x0151 }
        L_0x012c:
            if (r3 == 0) goto L_0x007f
            r3.close()     // Catch:{ Exception -> 0x0133 }
            goto L_0x007f
        L_0x0133:
            r1 = move-exception
            goto L_0x007f
        L_0x0136:
            r1 = move-exception
            r3 = r4
            r5 = r4
        L_0x0139:
            if (r3 == 0) goto L_0x013e
            r3.close()     // Catch:{ Exception -> 0x0153 }
        L_0x013e:
            if (r5 == 0) goto L_0x0143
            r5.close()     // Catch:{ Exception -> 0x0155 }
        L_0x0143:
            throw r1     // Catch:{ all -> 0x0023 }
        L_0x0144:
            java.lang.String r1 = "</properties>"
            r6.append(r1)     // Catch:{ all -> 0x0023 }
        L_0x0149:
            java.lang.String r1 = r6.toString()     // Catch:{ all -> 0x0023 }
            monitor-exit(r8)
            return r1
        L_0x014f:
            r1 = move-exception
            goto L_0x0117
        L_0x0151:
            r1 = move-exception
            goto L_0x012c
        L_0x0153:
            r2 = move-exception
            goto L_0x013e
        L_0x0155:
            r2 = move-exception
            goto L_0x0143
        L_0x0157:
            r1 = move-exception
            r3 = r4
            goto L_0x0139
        L_0x015a:
            r1 = move-exception
            goto L_0x0139
        L_0x015c:
            r1 = move-exception
            r5 = r3
            r3 = r2
            goto L_0x0139
        L_0x0160:
            r1 = move-exception
            r2 = r4
            r3 = r5
            goto L_0x0124
        L_0x0164:
            r1 = move-exception
            r2 = r3
            r3 = r5
            goto L_0x0124
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.smack.packet.d.s():java.lang.String");
    }

    public String t() {
        return this.f;
    }
}
