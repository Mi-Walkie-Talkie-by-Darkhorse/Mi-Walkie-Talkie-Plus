package com.amap.api.col.sl;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationClientOption.GeoLanguage;
import com.amap.api.services.geocoder.GeocodeSearch;
import com.mi.mimsgsdk.utils.Constants;
import com.mi.mimsgsdk.utils.Network;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONObject;

/* compiled from: Cache */
public final class fg {
    Hashtable<String, ArrayList<a>> a = new Hashtable<>();
    boolean b = true;
    long c = 0;
    String d = null;
    fa e = null;
    boolean f = true;
    boolean g = true;
    String h = String.valueOf(GeoLanguage.DEFAULT);
    private long i = 0;
    private boolean j = false;
    private String k = "2.0.201501131131".replace(".", "");
    private String l = null;
    private String m = null;
    private long n = 0;

    /* compiled from: Cache */
    static class a {
        private ev a = null;
        private String b = null;

        protected a() {
        }

        public final ev a() {
            return this.a;
        }

        public final void a(ev evVar) {
            this.a = evVar;
        }

        public final String b() {
            return this.b;
        }

        public final void a(String str) {
            if (TextUtils.isEmpty(str)) {
                this.b = null;
            } else {
                this.b = str.replace("##", "#");
            }
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.lang.String r8, java.lang.StringBuilder r9, com.amap.api.col.sl.ev r10, android.content.Context r11, boolean r12) {
        /*
            r7 = this;
            r0 = 1
            r1 = 0
            boolean r2 = com.amap.api.col.sl.fy.a(r10)     // Catch:{ Throwable -> 0x0163 }
            if (r2 != 0) goto L_0x0009
        L_0x0008:
            return
        L_0x0009:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0163 }
            r2.<init>()     // Catch:{ Throwable -> 0x0163 }
            java.lang.StringBuilder r2 = r2.append(r8)     // Catch:{ Throwable -> 0x0163 }
            java.lang.String r3 = "&"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Throwable -> 0x0163 }
            boolean r3 = r10.isOffset()     // Catch:{ Throwable -> 0x0163 }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Throwable -> 0x0163 }
            java.lang.String r3 = "&"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Throwable -> 0x0163 }
            boolean r3 = r10.i()     // Catch:{ Throwable -> 0x0163 }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Throwable -> 0x0163 }
            java.lang.String r3 = "&"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Throwable -> 0x0163 }
            java.lang.String r3 = r10.j()     // Catch:{ Throwable -> 0x0163 }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Throwable -> 0x0163 }
            java.lang.String r6 = r2.toString()     // Catch:{ Throwable -> 0x0163 }
            boolean r2 = android.text.TextUtils.isEmpty(r6)     // Catch:{ Throwable -> 0x0163 }
            if (r2 != 0) goto L_0x004c
            boolean r2 = com.amap.api.col.sl.fy.a(r10)     // Catch:{ Throwable -> 0x0163 }
            if (r2 != 0) goto L_0x00c5
        L_0x004c:
            r0 = r1
        L_0x004d:
            if (r0 == 0) goto L_0x0008
            java.lang.String r0 = r10.e()     // Catch:{ Throwable -> 0x0163 }
            java.lang.String r2 = "mem"
            boolean r0 = r0.equals(r2)     // Catch:{ Throwable -> 0x0163 }
            if (r0 != 0) goto L_0x0008
            java.lang.String r0 = r10.e()     // Catch:{ Throwable -> 0x0163 }
            java.lang.String r2 = "file"
            boolean r0 = r0.equals(r2)     // Catch:{ Throwable -> 0x0163 }
            if (r0 != 0) goto L_0x0008
            java.lang.String r0 = r10.d()     // Catch:{ Throwable -> 0x0163 }
            java.lang.String r2 = "-3"
            boolean r0 = r0.equals(r2)     // Catch:{ Throwable -> 0x0163 }
            if (r0 != 0) goto L_0x0008
            boolean r0 = r7.b()     // Catch:{ Throwable -> 0x0163 }
            if (r0 == 0) goto L_0x007c
            r7.c()     // Catch:{ Throwable -> 0x0163 }
        L_0x007c:
            org.json.JSONObject r0 = r10.f()     // Catch:{ Throwable -> 0x0163 }
            java.lang.String r2 = "offpct"
            boolean r2 = com.amap.api.col.sl.fy.a(r0, r2)     // Catch:{ Throwable -> 0x0163 }
            if (r2 == 0) goto L_0x0090
            java.lang.String r2 = "offpct"
            r0.remove(r2)     // Catch:{ Throwable -> 0x0163 }
            r10.a(r0)     // Catch:{ Throwable -> 0x0163 }
        L_0x0090:
            java.lang.String r0 = "wifi"
            boolean r0 = r6.contains(r0)     // Catch:{ Throwable -> 0x0163 }
            if (r0 == 0) goto L_0x0179
            boolean r0 = android.text.TextUtils.isEmpty(r9)     // Catch:{ Throwable -> 0x0163 }
            if (r0 != 0) goto L_0x0008
            float r0 = r10.getAccuracy()     // Catch:{ Throwable -> 0x0163 }
            r2 = 1133903872(0x43960000, float:300.0)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L_0x016d
            java.lang.String r0 = r9.toString()     // Catch:{ Throwable -> 0x0163 }
            java.lang.String r2 = "#"
            java.lang.String[] r2 = r0.split(r2)     // Catch:{ Throwable -> 0x0163 }
            int r3 = r2.length     // Catch:{ Throwable -> 0x0163 }
            r0 = r1
        L_0x00b4:
            if (r1 >= r3) goto L_0x00db
            r4 = r2[r1]     // Catch:{ Throwable -> 0x0163 }
            java.lang.String r5 = ","
            boolean r4 = r4.contains(r5)     // Catch:{ Throwable -> 0x0163 }
            if (r4 == 0) goto L_0x00c2
            int r0 = r0 + 1
        L_0x00c2:
            int r1 = r1 + 1
            goto L_0x00b4
        L_0x00c5:
            java.lang.String r2 = "#"
            boolean r2 = r6.startsWith(r2)     // Catch:{ Throwable -> 0x0163 }
            if (r2 == 0) goto L_0x00d0
            r0 = r1
            goto L_0x004d
        L_0x00d0:
            java.lang.String r2 = "network"
            boolean r2 = r6.contains(r2)     // Catch:{ Throwable -> 0x0163 }
            if (r2 != 0) goto L_0x004d
            r0 = r1
            goto L_0x004d
        L_0x00db:
            r1 = 8
            if (r0 >= r1) goto L_0x0008
        L_0x00df:
            java.lang.String r0 = "cgiwifi"
            boolean r0 = r6.contains(r0)     // Catch:{ Throwable -> 0x0163 }
            if (r0 == 0) goto L_0x010e
            java.lang.String r0 = r10.g()     // Catch:{ Throwable -> 0x0163 }
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Throwable -> 0x0163 }
            if (r0 != 0) goto L_0x010e
            java.lang.String r0 = "cgiwifi"
            java.lang.String r1 = "cgi"
            java.lang.String r1 = r6.replace(r0, r1)     // Catch:{ Throwable -> 0x0163 }
            com.amap.api.col.sl.ev r3 = r10.h()     // Catch:{ Throwable -> 0x0163 }
            boolean r0 = com.amap.api.col.sl.fy.a(r3)     // Catch:{ Throwable -> 0x0163 }
            if (r0 == 0) goto L_0x010e
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0163 }
            r2.<init>()     // Catch:{ Throwable -> 0x0163 }
            r5 = 1
            r0 = r7
            r4 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0163 }
        L_0x010e:
            com.amap.api.col.sl.ev r0 = r7.a(r6, r9)     // Catch:{ Throwable -> 0x0163 }
            boolean r1 = com.amap.api.col.sl.fy.a(r0)     // Catch:{ Throwable -> 0x0163 }
            if (r1 == 0) goto L_0x0127
            java.lang.String r0 = r0.toStr()     // Catch:{ Throwable -> 0x0163 }
            r1 = 3
            java.lang.String r1 = r10.toStr(r1)     // Catch:{ Throwable -> 0x0163 }
            boolean r0 = r0.equals(r1)     // Catch:{ Throwable -> 0x0163 }
            if (r0 != 0) goto L_0x0008
        L_0x0127:
            long r0 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0163 }
            r7.i = r0     // Catch:{ Throwable -> 0x0163 }
            com.amap.api.col.sl.fg$a r1 = new com.amap.api.col.sl.fg$a     // Catch:{ Throwable -> 0x0163 }
            r1.<init>()     // Catch:{ Throwable -> 0x0163 }
            r1.a(r10)     // Catch:{ Throwable -> 0x0163 }
            boolean r0 = android.text.TextUtils.isEmpty(r9)     // Catch:{ Throwable -> 0x0163 }
            if (r0 == 0) goto L_0x019a
            r0 = 0
        L_0x013c:
            r1.a(r0)     // Catch:{ Throwable -> 0x0163 }
            java.util.Hashtable<java.lang.String, java.util.ArrayList<com.amap.api.col.sl.fg$a>> r0 = r7.a     // Catch:{ Throwable -> 0x0163 }
            boolean r0 = r0.containsKey(r6)     // Catch:{ Throwable -> 0x0163 }
            if (r0 == 0) goto L_0x019f
            java.util.Hashtable<java.lang.String, java.util.ArrayList<com.amap.api.col.sl.fg$a>> r0 = r7.a     // Catch:{ Throwable -> 0x0163 }
            java.lang.Object r0 = r0.get(r6)     // Catch:{ Throwable -> 0x0163 }
            java.util.ArrayList r0 = (java.util.ArrayList) r0     // Catch:{ Throwable -> 0x0163 }
            r0.add(r1)     // Catch:{ Throwable -> 0x0163 }
        L_0x0152:
            if (r12 == 0) goto L_0x0008
            r7.a(r6, r10, r9, r11)     // Catch:{ Throwable -> 0x0159 }
            goto L_0x0008
        L_0x0159:
            r0 = move-exception
            java.lang.String r1 = "Cache"
            java.lang.String r2 = "add"
            com.amap.api.col.sl.fq.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0163 }
            goto L_0x0008
        L_0x0163:
            r0 = move-exception
            java.lang.String r1 = "Cache"
            java.lang.String r2 = "add"
            com.amap.api.col.sl.fq.a(r0, r1, r2)
            goto L_0x0008
        L_0x016d:
            float r0 = r10.getAccuracy()     // Catch:{ Throwable -> 0x0163 }
            r1 = 1077936128(0x40400000, float:3.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x00df
            goto L_0x0008
        L_0x0179:
            java.lang.String r0 = "cgi"
            boolean r0 = r6.contains(r0)     // Catch:{ Throwable -> 0x0163 }
            if (r0 == 0) goto L_0x010e
            if (r9 == 0) goto L_0x018c
            java.lang.String r0 = ","
            int r0 = r9.indexOf(r0)     // Catch:{ Throwable -> 0x0163 }
            r1 = -1
            if (r0 != r1) goto L_0x0008
        L_0x018c:
            java.lang.String r0 = r10.d()     // Catch:{ Throwable -> 0x0163 }
            java.lang.String r1 = "4"
            boolean r0 = r0.equals(r1)     // Catch:{ Throwable -> 0x0163 }
            if (r0 == 0) goto L_0x010e
            goto L_0x0008
        L_0x019a:
            java.lang.String r0 = r9.toString()     // Catch:{ Throwable -> 0x0163 }
            goto L_0x013c
        L_0x019f:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ Throwable -> 0x0163 }
            r0.<init>()     // Catch:{ Throwable -> 0x0163 }
            r0.add(r1)     // Catch:{ Throwable -> 0x0163 }
            java.util.Hashtable<java.lang.String, java.util.ArrayList<com.amap.api.col.sl.fg$a>> r1 = r7.a     // Catch:{ Throwable -> 0x0163 }
            r1.put(r6, r0)     // Catch:{ Throwable -> 0x0163 }
            goto L_0x0152
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fg.a(java.lang.String, java.lang.StringBuilder, com.amap.api.col.sl.ev, android.content.Context, boolean):void");
    }

    public final ev a(Context context, String str, StringBuilder sb, boolean z) {
        if (TextUtils.isEmpty(str) || !fp.u()) {
            return null;
        }
        String str2 = str + "&" + this.f + "&" + this.g + "&" + this.h;
        if (str2.contains(GeocodeSearch.GPS) || !fp.u() || sb == null) {
            return null;
        }
        if (b()) {
            c();
            return null;
        }
        if (z && !this.j) {
            try {
                String a2 = a(str2, sb, context);
                c();
                a(context, a2);
            } catch (Throwable th) {
            }
        }
        if (!this.a.isEmpty()) {
            return a(str2, sb);
        }
        return null;
    }

    private ev a(String str, StringBuilder sb) {
        a aVar;
        a aVar2;
        try {
            if (str.contains("cgiwifi")) {
                aVar = a(sb, str);
                if (aVar != null) {
                    aVar2 = aVar;
                }
                aVar2 = aVar;
            } else if (str.contains(Network.NETWORK_TYPE_WIFI)) {
                aVar = a(sb, str);
                if (aVar != null) {
                    aVar2 = aVar;
                }
                aVar2 = aVar;
            } else {
                aVar2 = (!str.contains("cgi") || !this.a.containsKey(str)) ? null : (a) ((ArrayList) this.a.get(str)).get(0);
            }
            if (aVar2 != null && fy.a(aVar2.a())) {
                ev a2 = aVar2.a();
                a2.e("mem");
                a2.h(aVar2.b());
                if (fp.b(a2.getTime())) {
                    if (fy.a(a2)) {
                        this.c = 0;
                    }
                    a2.setLocationType(4);
                    return a2;
                } else if (this.a != null && this.a.containsKey(str)) {
                    ((ArrayList) this.a.get(str)).remove(aVar2);
                }
            }
        } catch (Throwable th) {
            fq.a(th, "Cache", "get1");
        }
        return null;
    }

    private boolean b() {
        long b2 = fy.b() - this.i;
        if (this.i == 0) {
            return false;
        }
        if (this.a.size() > 360) {
            return true;
        }
        if (b2 > 36000000) {
            return true;
        }
        return false;
    }

    private void c() {
        this.i = 0;
        if (!this.a.isEmpty()) {
            this.a.clear();
        }
        this.j = false;
    }

    private a a(StringBuilder sb, String str) {
        a aVar;
        boolean z;
        if (this.a.isEmpty() || TextUtils.isEmpty(sb)) {
            return null;
        }
        if (!this.a.containsKey(str)) {
            return null;
        }
        Hashtable hashtable = new Hashtable();
        Hashtable hashtable2 = new Hashtable();
        Hashtable hashtable3 = new Hashtable();
        ArrayList arrayList = (ArrayList) this.a.get(str);
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                aVar = null;
                break;
            }
            aVar = (a) arrayList.get(size);
            if (!TextUtils.isEmpty(aVar.b())) {
                boolean z2 = false;
                String b2 = aVar.b();
                if (TextUtils.isEmpty(b2) || TextUtils.isEmpty(sb)) {
                    z = false;
                } else {
                    if (b2.contains(",access")) {
                        if (sb.indexOf(",access") != -1) {
                            String[] split = b2.split(",access");
                            String str2 = split[0].contains("#") ? split[0].substring(split[0].lastIndexOf("#") + 1) : split[0];
                            z = TextUtils.isEmpty(str2) ? false : sb.toString().contains(str2 + ",access");
                        }
                    }
                    z = false;
                }
                if (z) {
                    if (fy.a(aVar.b(), sb.toString())) {
                        break;
                    }
                    z2 = true;
                }
                a(aVar.b(), hashtable);
                a(sb.toString(), hashtable2);
                hashtable3.clear();
                for (String put : hashtable.keySet()) {
                    hashtable3.put(put, "");
                }
                for (String put2 : hashtable2.keySet()) {
                    hashtable3.put(put2, "");
                }
                Set keySet = hashtable3.keySet();
                double[] dArr = new double[keySet.size()];
                double[] dArr2 = new double[keySet.size()];
                Iterator it = keySet.iterator();
                int i2 = 0;
                while (it != null && it.hasNext()) {
                    String str3 = (String) it.next();
                    dArr[i2] = hashtable.containsKey(str3) ? 1.0d : 0.0d;
                    dArr2[i2] = hashtable2.containsKey(str3) ? 1.0d : 0.0d;
                    i2++;
                }
                keySet.clear();
                double[] a2 = a(dArr, dArr2);
                if (a2[0] < 0.800000011920929d) {
                    if (a2[1] < 0.618d) {
                        if (z2 && a2[0] >= 0.618d) {
                            break;
                        }
                    } else {
                        break;
                    }
                } else {
                    break;
                }
            }
            size--;
        }
        hashtable.clear();
        hashtable2.clear();
        hashtable3.clear();
        return aVar;
    }

    private static void a(String str, Hashtable<String, String> hashtable) {
        String[] split;
        if (!TextUtils.isEmpty(str)) {
            hashtable.clear();
            for (String str2 : str.split("#")) {
                if (!TextUtils.isEmpty(str2) && !str2.contains("|")) {
                    hashtable.put(str2, "");
                }
            }
        }
    }

    private static double[] a(double[] dArr, double[] dArr2) {
        double[] dArr3 = new double[3];
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < dArr.length; i4++) {
            d3 += dArr[i4] * dArr[i4];
            d4 += dArr2[i4] * dArr2[i4];
            d2 += dArr[i4] * dArr2[i4];
            if (dArr2[i4] == 1.0d) {
                i2++;
                if (dArr[i4] == 1.0d) {
                    i3++;
                }
            }
        }
        dArr3[0] = d2 / (Math.sqrt(d4) * Math.sqrt(d3));
        dArr3[1] = (1.0d * ((double) i3)) / ((double) i2);
        dArr3[2] = (double) i3;
        for (int i5 = 0; i5 < dArr3.length - 1; i5++) {
            if (dArr3[i5] > 1.0d) {
                dArr3[i5] = 1.0d;
            }
        }
        return dArr3;
    }

    public final void a(Context context) {
        if (!this.j) {
            try {
                c();
                a(context, (String) null);
            } catch (Throwable th) {
                fq.a(th, "Cache", "loadDB");
            }
            this.j = true;
        }
    }

    private String a(String str, StringBuilder sb, Context context) {
        String str2;
        if (context == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.l == null) {
                this.l = ff.a("MD5", bp.c(context));
            }
            if (str.contains("&")) {
                str = str.substring(0, str.indexOf("&"));
            }
            String substring = str.substring(str.lastIndexOf("#") + 1);
            if (substring.equals("cgi")) {
                jSONObject.put("cgi", str.substring(0, str.length() - 12));
            } else if (!TextUtils.isEmpty(sb) && sb.indexOf("access") != -1) {
                String str3 = "cgi";
                jSONObject.put(str3, str.substring(0, str.length() - (substring.length() + 9)));
                String[] split = sb.toString().split(",access");
                if (split[0].contains("#")) {
                    str2 = split[0].substring(split[0].lastIndexOf("#") + 1);
                } else {
                    str2 = split[0];
                }
                jSONObject.put("mmac", str2);
            }
            try {
                return bv.b(ff.c(jSONObject.toString().getBytes("UTF-8"), this.l));
            } catch (UnsupportedEncodingException e2) {
                return null;
            }
        } catch (Throwable th) {
            return null;
        }
    }

    private void a(String str, AMapLocation aMapLocation, StringBuilder sb, Context context) throws Exception {
        SQLiteDatabase sQLiteDatabase = null;
        if (context != null) {
            if (this.l == null) {
                this.l = ff.a("MD5", bp.c(context));
            }
            String a2 = a(str, sb, context);
            StringBuilder sb2 = new StringBuilder();
            try {
                SQLiteDatabase openOrCreateDatabase = context.openOrCreateDatabase("hmdb", 0, null);
                sb2.append("CREATE TABLE IF NOT EXISTS hist");
                sb2.append(this.k);
                sb2.append(" (feature VARCHAR PRIMARY KEY, nb VARCHAR, loc VARCHAR, time VARCHAR);");
                openOrCreateDatabase.execSQL(sb2.toString());
                sb2.delete(0, sb2.length());
                sb2.append("REPLACE INTO ");
                sb2.append("hist").append(this.k);
                sb2.append(" VALUES (?, ?, ?, ?)");
                Object[] objArr = {a2, ff.c(sb.toString().getBytes("UTF-8"), this.l), ff.c(aMapLocation.toStr().getBytes("UTF-8"), this.l), Long.valueOf(aMapLocation.getTime())};
                for (int i2 = 1; i2 < objArr.length - 1; i2++) {
                    objArr[i2] = bv.b((byte[]) objArr[i2]);
                }
                openOrCreateDatabase.execSQL(sb2.toString(), objArr);
                sb2.delete(0, sb2.length());
                sb2.delete(0, sb2.length());
                if (openOrCreateDatabase != null && openOrCreateDatabase.isOpen()) {
                    openOrCreateDatabase.close();
                }
            } catch (Throwable th) {
                sb2.delete(0, sb2.length());
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.close();
                }
                throw th;
            }
        }
    }

    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r6v0 */
    /* JADX WARNING: type inference failed for: r6v1, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r1v2, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r6v2 */
    /* JADX WARNING: type inference failed for: r6v3 */
    /* JADX WARNING: type inference failed for: r6v4 */
    /* JADX WARNING: type inference failed for: r6v5, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: type inference failed for: r1v28, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r6v6 */
    /* JADX WARNING: type inference failed for: r1v29 */
    /* JADX WARNING: type inference failed for: r1v30 */
    /* JADX WARNING: type inference failed for: r6v7 */
    /* JADX WARNING: Code restructure failed: missing block: B:106:0x02e1, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:107:0x02e2, code lost:
        r6 = r1;
        r7 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0026, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0027, code lost:
        r2 = r7;
        r1 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0031, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x003c, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0244, code lost:
        r6.close();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:106:0x02e1 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:7:0x0014] */
    /* JADX WARNING: Removed duplicated region for block: B:117:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0036  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0244  */
    /* JADX WARNING: Unknown variable types count: 5 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(android.content.Context r10, java.lang.String r11) throws java.lang.Exception {
        /*
            r9 = this;
            r1 = 0
            boolean r0 = com.amap.api.col.sl.fp.u()
            if (r0 != 0) goto L_0x0008
        L_0x0007:
            return
        L_0x0008:
            if (r10 == 0) goto L_0x0007
            java.lang.String r0 = "hmdb"
            r2 = 0
            r3 = 0
            android.database.sqlite.SQLiteDatabase r7 = r10.openOrCreateDatabase(r0, r2, r3)     // Catch:{ Throwable -> 0x02ea, all -> 0x02dc }
            java.lang.String r0 = "hist"
            boolean r0 = com.amap.api.col.sl.fy.a(r7, r0)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            if (r0 != 0) goto L_0x0040
            if (r7 == 0) goto L_0x0007
            boolean r0 = r7.isOpen()     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            if (r0 == 0) goto L_0x0007
            r7.close()     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            goto L_0x0007
        L_0x0026:
            r0 = move-exception
            r2 = r7
        L_0x0028:
            java.lang.String r3 = "DB"
            java.lang.String r4 = "fetchHist p2"
            com.amap.api.col.sl.fq.a(r0, r3, r4)     // Catch:{ all -> 0x02e5 }
            if (r1 == 0) goto L_0x0034
            r1.close()
        L_0x0034:
            if (r2 == 0) goto L_0x0007
            boolean r0 = r2.isOpen()
            if (r0 == 0) goto L_0x0007
            r2.close()
            goto L_0x0007
        L_0x0040:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            r8.<init>()     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            java.lang.String r0 = "SELECT feature, nb, loc FROM "
            r8.append(r0)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            java.lang.String r0 = "hist"
            java.lang.StringBuilder r0 = r8.append(r0)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            java.lang.String r2 = r9.k     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            r0.append(r2)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            long r2 = com.amap.api.col.sl.fy.a()     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            long r4 = com.amap.api.col.sl.fp.t()     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            long r2 = r2 - r4
            java.lang.String r0 = " WHERE time > "
            java.lang.StringBuilder r0 = r8.append(r0)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            r0.append(r2)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            if (r11 == 0) goto L_0x0085
            java.lang.String r0 = " and feature = '"
            java.lang.StringBuilder r0 = r8.append(r0)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            r2.<init>()     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            java.lang.StringBuilder r2 = r2.append(r11)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            java.lang.String r3 = "'"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            java.lang.String r2 = r2.toString()     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            r0.append(r2)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
        L_0x0085:
            java.lang.String r0 = " ORDER BY time ASC;"
            r8.append(r0)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            java.lang.String r0 = r8.toString()     // Catch:{ Throwable -> 0x0191, all -> 0x02e1 }
            r2 = 0
            android.database.Cursor r1 = r7.rawQuery(r0, r2)     // Catch:{ Throwable -> 0x0191, all -> 0x02e1 }
            r6 = r1
        L_0x0094:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r2.<init>()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r0 = r9.l     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r0 != 0) goto L_0x00a9
            java.lang.String r0 = "MD5"
            java.lang.String r1 = com.amap.api.col.sl.bp.c(r10)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r0 = com.amap.api.col.sl.ff.a(r0, r1)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r9.l = r0     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
        L_0x00a9:
            if (r6 == 0) goto L_0x017f
            boolean r0 = r6.moveToFirst()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r0 == 0) goto L_0x017f
        L_0x00b1:
            r0 = 0
            java.lang.String r0 = r6.getString(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r1 = "{"
            boolean r0 = r0.startsWith(r1)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r0 == 0) goto L_0x01ce
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r0 = 0
            java.lang.String r0 = r6.getString(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r1.<init>(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r0 = 0
            int r3 = r2.length()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r2.delete(r0, r3)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r0 = 1
            java.lang.String r0 = r6.getString(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r0 != 0) goto L_0x01ab
            r0 = 1
            java.lang.String r0 = r6.getString(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r2.append(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
        L_0x00e3:
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r3 = 2
            java.lang.String r3 = r6.getString(r3)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r0.<init>(r3)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r3 = "type"
            boolean r3 = com.amap.api.col.sl.fy.a(r0, r3)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r3 == 0) goto L_0x00fc
            java.lang.String r3 = "type"
            java.lang.String r4 = "new"
            r0.put(r3, r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
        L_0x00fc:
            com.amap.api.col.sl.ev r3 = new com.amap.api.col.sl.ev     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = ""
            r3.<init>(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r3.b(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r0 = "mmac"
            boolean r0 = com.amap.api.col.sl.fy.a(r1, r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r0 == 0) goto L_0x0285
            java.lang.String r0 = "cgi"
            boolean r0 = com.amap.api.col.sl.fy.a(r1, r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r0 == 0) goto L_0x0285
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r0.<init>()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = "cgi"
            java.lang.String r4 = r1.getString(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = "#"
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r4.<init>()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = "network#"
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = "cgi"
            java.lang.String r1 = r1.getString(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = "#"
            boolean r1 = r1.contains(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r1 == 0) goto L_0x0270
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r1.<init>()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.StringBuilder r0 = r1.append(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r1 = "cgiwifi"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r1 = r0.toString()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
        L_0x0163:
            r5 = 0
            r0 = r9
            r4 = r10
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
        L_0x0169:
            boolean r0 = r6.moveToNext()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r0 != 0) goto L_0x00b1
            r0 = 0
            int r1 = r2.length()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r2.delete(r0, r1)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r0 = 0
            int r1 = r8.length()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r8.delete(r0, r1)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
        L_0x017f:
            if (r6 == 0) goto L_0x0184
            r6.close()
        L_0x0184:
            if (r7 == 0) goto L_0x0007
            boolean r0 = r7.isOpen()
            if (r0 == 0) goto L_0x0007
            r7.close()
            goto L_0x0007
        L_0x0191:
            r0 = move-exception
            java.lang.String r2 = "DB"
            java.lang.String r3 = "fetchHist"
            com.amap.api.col.sl.fq.a(r0, r2, r3)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
            if (r2 != 0) goto L_0x01a8
            java.lang.String r2 = "no such table"
            r0.contains(r2)     // Catch:{ Throwable -> 0x0026, all -> 0x02e1 }
        L_0x01a8:
            r6 = r1
            goto L_0x0094
        L_0x01ab:
            java.lang.String r0 = "mmac"
            boolean r0 = com.amap.api.col.sl.fy.a(r1, r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r0 == 0) goto L_0x00e3
            java.lang.String r0 = "#"
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r3 = "mmac"
            java.lang.String r3 = r1.getString(r3)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r0.append(r3)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r0 = ",access"
            r2.append(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            goto L_0x00e3
        L_0x01c9:
            r0 = move-exception
            r1 = r6
            r2 = r7
            goto L_0x0028
        L_0x01ce:
            r0 = 0
            java.lang.String r0 = r6.getString(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            byte[] r0 = com.amap.api.col.sl.bv.b(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r3 = new java.lang.String     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = r9.l     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            byte[] r0 = com.amap.api.col.sl.ff.d(r0, r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = "UTF-8"
            r3.<init>(r0, r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r1.<init>(r3)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r0 = 0
            int r3 = r2.length()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r2.delete(r0, r3)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r0 = 1
            java.lang.String r0 = r6.getString(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r0 != 0) goto L_0x0253
            r0 = 1
            java.lang.String r0 = r6.getString(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            byte[] r0 = com.amap.api.col.sl.bv.b(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r3 = new java.lang.String     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = r9.l     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            byte[] r0 = com.amap.api.col.sl.ff.d(r0, r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = "UTF-8"
            r3.<init>(r0, r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r2.append(r3)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
        L_0x0215:
            r0 = 2
            java.lang.String r0 = r6.getString(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            byte[] r3 = com.amap.api.col.sl.bv.b(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = new java.lang.String     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r5 = r9.l     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            byte[] r3 = com.amap.api.col.sl.ff.d(r3, r5)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r5 = "UTF-8"
            r4.<init>(r3, r5)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r0.<init>(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r3 = "type"
            boolean r3 = com.amap.api.col.sl.fy.a(r0, r3)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r3 == 0) goto L_0x00fc
            java.lang.String r3 = "type"
            java.lang.String r4 = "new"
            r0.put(r3, r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            goto L_0x00fc
        L_0x0241:
            r0 = move-exception
        L_0x0242:
            if (r6 == 0) goto L_0x0247
            r6.close()
        L_0x0247:
            if (r7 == 0) goto L_0x0252
            boolean r1 = r7.isOpen()
            if (r1 == 0) goto L_0x0252
            r7.close()
        L_0x0252:
            throw r0
        L_0x0253:
            java.lang.String r0 = "mmac"
            boolean r0 = com.amap.api.col.sl.fy.a(r1, r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r0 == 0) goto L_0x0215
            java.lang.String r0 = "#"
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r3 = "mmac"
            java.lang.String r3 = r1.getString(r3)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r0.append(r3)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r0 = ",access"
            r2.append(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            goto L_0x0215
        L_0x0270:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r1.<init>()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.StringBuilder r0 = r1.append(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r1 = "wifi"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r1 = r0.toString()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            goto L_0x0163
        L_0x0285:
            java.lang.String r0 = "cgi"
            boolean r0 = com.amap.api.col.sl.fy.a(r1, r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r0 == 0) goto L_0x0169
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r0.<init>()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = "cgi"
            java.lang.String r4 = r1.getString(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = "#"
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r4.<init>()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = "network#"
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = "cgi"
            java.lang.String r1 = r1.getString(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r4 = "#"
            boolean r1 = r1.contains(r4)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            if (r1 == 0) goto L_0x0169
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            r1.<init>()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.StringBuilder r0 = r1.append(r0)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r1 = "cgi"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            java.lang.String r1 = r0.toString()     // Catch:{ Throwable -> 0x01c9, all -> 0x0241 }
            goto L_0x0163
        L_0x02dc:
            r0 = move-exception
            r6 = r1
            r7 = r1
            goto L_0x0242
        L_0x02e1:
            r0 = move-exception
            r6 = r1
            goto L_0x0242
        L_0x02e5:
            r0 = move-exception
            r6 = r1
            r7 = r2
            goto L_0x0242
        L_0x02ea:
            r0 = move-exception
            r2 = r1
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fg.a(android.content.Context, java.lang.String):void");
    }

    public final void b(Context context) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            c();
            if (context != null) {
                try {
                    sQLiteDatabase = context.openOrCreateDatabase("hmdb", 0, null);
                    if (fy.a(sQLiteDatabase, "hist")) {
                        sQLiteDatabase.delete("hist" + this.k, "time<?", new String[]{String.valueOf(fy.a() - 86400000)});
                        if (sQLiteDatabase != null) {
                            if (sQLiteDatabase.isOpen()) {
                                sQLiteDatabase.close();
                            }
                        }
                    } else if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                } catch (Throwable th) {
                    fq.a(th, Constants.DB_CHANNEL, "clearHist p2");
                    if (sQLiteDatabase != null) {
                        if (sQLiteDatabase.isOpen()) {
                            sQLiteDatabase.close();
                        }
                    }
                }
            }
            this.j = false;
            this.d = null;
            this.n = 0;
        } catch (Throwable th2) {
            fq.a(th2, "Cache", "destroy part");
        }
    }

    public final void a(AMapLocationClientOption aMapLocationClientOption) {
        this.g = aMapLocationClientOption.isNeedAddress();
        this.f = aMapLocationClientOption.isOffset();
        this.b = aMapLocationClientOption.isLocationCacheEnable();
        this.h = String.valueOf(aMapLocationClientOption.getGeoLanguage());
    }

    public final void a(fa faVar) {
        this.e = faVar;
    }

    public final ev a(fb fbVar, boolean z, ev evVar, fe feVar, StringBuilder sb, String str, Context context) {
        boolean z2;
        boolean z3;
        boolean z4 = !(this.b && fp.u()) ? false : evVar == null || fp.b(evVar.getTime());
        if (!z4) {
            return null;
        }
        try {
            fa c2 = fbVar.c();
            boolean z5 = !(c2 == null && this.e == null) && (this.e == null || !this.e.a(c2));
            if (evVar != null) {
                z2 = evVar.getAccuracy() > 299.0f && feVar.b().size() > 5;
            } else {
                z2 = false;
            }
            if (evVar == null || this.d == null || z2 || z5) {
                z3 = false;
            } else {
                z3 = fy.a(this.d, sb.toString());
                if ((z3 || (this.c != 0 && fy.b() - this.c < 3000)) && fy.a(evVar)) {
                    evVar.e("mem");
                    evVar.setLocationType(2);
                    return evVar;
                }
            }
            if (!z3) {
                this.c = fy.b();
            } else {
                this.c = 0;
            }
            if (this.m == null || str.equals(this.m)) {
                if (this.m == null) {
                    this.n = fy.a();
                    this.m = str;
                } else {
                    this.n = fy.a();
                }
            } else if (fy.a() - this.n < 3000) {
                str = this.m;
            } else {
                this.n = fy.a();
                this.m = str;
            }
            ev evVar2 = null;
            if (!z2 && !z) {
                evVar2 = a(context, str, sb, false);
            }
            if ((!z && !fy.a(evVar2)) || z2) {
                return null;
            }
            if (z) {
                return null;
            }
            this.c = 0;
            evVar2.setLocationType(4);
            return evVar2;
        } catch (Throwable th) {
            return null;
        }
    }

    public final void a(String str) {
        this.d = str;
    }

    public final void a() {
        this.c = 0;
        this.d = null;
    }
}
