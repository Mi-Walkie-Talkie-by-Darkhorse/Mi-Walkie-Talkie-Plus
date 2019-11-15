package com.tencent.bugly.mimsg.crashreport.crash;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Parcelable;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.BuglyStrategy;
import com.tencent.bugly.mimsg.crashreport.common.info.PlugInBean;
import com.tencent.bugly.mimsg.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.mimsg.crashreport.common.strategy.a;
import com.tencent.bugly.mimsg.proguard.ah;
import com.tencent.bugly.mimsg.proguard.aj;
import com.tencent.bugly.mimsg.proguard.ak;
import com.tencent.bugly.mimsg.proguard.al;
import com.tencent.bugly.mimsg.proguard.am;
import com.tencent.bugly.mimsg.proguard.k;
import com.tencent.bugly.mimsg.proguard.o;
import com.tencent.bugly.mimsg.proguard.p;
import com.tencent.bugly.mimsg.proguard.r;
import com.tencent.bugly.mimsg.proguard.t;
import com.tencent.bugly.mimsg.proguard.u;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.z;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Pattern;

/* compiled from: BUGLY */
public final class b {
    private static int a = 0;
    private Context b;
    private u c;
    private p d;
    private a e;
    private o f;
    private BuglyStrategy.a g;

    public b(int i, Context context, u uVar, p pVar, a aVar, BuglyStrategy.a aVar2, o oVar) {
        a = i;
        this.b = context;
        this.c = uVar;
        this.d = pVar;
        this.e = aVar;
        this.g = aVar2;
        this.f = oVar;
    }

    private static List<a> a(List<a> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        for (a aVar : list) {
            if (aVar.d && aVar.b <= currentTimeMillis - 86400000) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00b8  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0145  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean a(java.util.List<com.tencent.bugly.mimsg.crashreport.crash.a> r11, com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean r12) {
        /*
            r10 = this;
            r3 = 0
            if (r11 == 0) goto L_0x0009
            int r0 = r11.size()
            if (r0 != 0) goto L_0x000b
        L_0x0009:
            r1 = r12
        L_0x000a:
            return r1
        L_0x000b:
            r1 = 0
            java.util.ArrayList r2 = new java.util.ArrayList
            r0 = 10
            r2.<init>(r0)
            java.util.Iterator r4 = r11.iterator()
        L_0x0017:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L_0x002b
            java.lang.Object r0 = r4.next()
            com.tencent.bugly.mimsg.crashreport.crash.a r0 = (com.tencent.bugly.mimsg.crashreport.crash.a) r0
            boolean r5 = r0.e
            if (r5 == 0) goto L_0x0017
            r2.add(r0)
            goto L_0x0017
        L_0x002b:
            int r0 = r2.size()
            if (r0 <= 0) goto L_0x014b
            java.util.List r4 = r10.b(r2)
            if (r4 == 0) goto L_0x014b
            int r0 = r4.size()
            if (r0 <= 0) goto L_0x014b
            java.util.Collections.sort(r4)
            r2 = r3
        L_0x0041:
            int r0 = r4.size()
            if (r2 >= r0) goto L_0x00a1
            java.lang.Object r0 = r4.get(r2)
            com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean r0 = (com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean) r0
            if (r2 != 0) goto L_0x0054
        L_0x004f:
            int r1 = r2 + 1
            r2 = r1
            r1 = r0
            goto L_0x0041
        L_0x0054:
            java.lang.String r5 = r0.s
            if (r5 == 0) goto L_0x0148
            java.lang.String r0 = r0.s
            java.lang.String r5 = "\n"
            java.lang.String[] r5 = r0.split(r5)
            if (r5 == 0) goto L_0x0148
            int r6 = r5.length
            r0 = r3
        L_0x0064:
            if (r0 >= r6) goto L_0x0148
            r7 = r5[r0]
            java.lang.String r8 = r1.s
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.StringBuilder r9 = r9.append(r7)
            java.lang.String r9 = r9.toString()
            boolean r8 = r8.contains(r9)
            if (r8 != 0) goto L_0x009e
            int r8 = r1.t
            int r8 = r8 + 1
            r1.t = r8
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = r1.s
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.StringBuilder r7 = r8.append(r7)
            java.lang.String r8 = "\n"
            java.lang.StringBuilder r7 = r7.append(r8)
            java.lang.String r7 = r7.toString()
            r1.s = r7
        L_0x009e:
            int r0 = r0 + 1
            goto L_0x0064
        L_0x00a1:
            r0 = r1
        L_0x00a2:
            if (r0 != 0) goto L_0x0145
            r0 = 1
            r12.j = r0
            r12.t = r3
            java.lang.String r0 = ""
            r12.s = r0
            r1 = r12
        L_0x00ae:
            java.util.Iterator r2 = r11.iterator()
        L_0x00b2:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0101
            java.lang.Object r0 = r2.next()
            com.tencent.bugly.mimsg.crashreport.crash.a r0 = (com.tencent.bugly.mimsg.crashreport.crash.a) r0
            boolean r3 = r0.e
            if (r3 != 0) goto L_0x00b2
            boolean r3 = r0.d
            if (r3 != 0) goto L_0x00b2
            java.lang.String r3 = r1.s
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            long r6 = r0.b
            java.lang.StringBuilder r4 = r4.append(r6)
            java.lang.String r4 = r4.toString()
            boolean r3 = r3.contains(r4)
            if (r3 != 0) goto L_0x00b2
            int r3 = r1.t
            int r3 = r3 + 1
            r1.t = r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = r1.s
            java.lang.StringBuilder r3 = r3.append(r4)
            long r4 = r0.b
            java.lang.StringBuilder r0 = r3.append(r4)
            java.lang.String r3 = "\n"
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r0 = r0.toString()
            r1.s = r0
            goto L_0x00b2
        L_0x0101:
            long r2 = r1.r
            long r4 = r12.r
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L_0x000a
            java.lang.String r0 = r1.s
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            long r4 = r12.r
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r2 = r2.toString()
            boolean r0 = r0.contains(r2)
            if (r0 != 0) goto L_0x000a
            int r0 = r1.t
            int r0 = r0 + 1
            r1.t = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = r1.s
            java.lang.StringBuilder r0 = r0.append(r2)
            long r2 = r12.r
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r2 = "\n"
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r0 = r0.toString()
            r1.s = r0
            goto L_0x000a
        L_0x0145:
            r1 = r0
            goto L_0x00ae
        L_0x0148:
            r0 = r1
            goto L_0x004f
        L_0x014b:
            r0 = r1
            goto L_0x00a2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.crashreport.crash.b.a(java.util.List, com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean):com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean");
    }

    public final boolean a(CrashDetailBean crashDetailBean) {
        return a(crashDetailBean, -123456789);
    }

    public final boolean a(CrashDetailBean crashDetailBean, int i) {
        if (crashDetailBean == null) {
            return true;
        }
        if (c.m != null && !c.m.isEmpty()) {
            x.c("Crash filter for crash stack is: %s", c.m);
            if (crashDetailBean.q.contains(c.m)) {
                x.d("This crash contains the filter string set. It will not be record and upload.", new Object[0]);
                return true;
            }
        }
        if (c.n != null && !c.n.isEmpty()) {
            x.c("Crash regular filter for crash stack is: %s", c.n);
            if (Pattern.compile(c.n).matcher(crashDetailBean.q).find()) {
                x.d("This crash matches the regular filter string set. It will not be record and upload.", new Object[0]);
                return true;
            }
        }
        int i2 = crashDetailBean.b;
        String str = crashDetailBean.n;
        String str2 = crashDetailBean.p;
        String str3 = crashDetailBean.q;
        long j = crashDetailBean.r;
        String str4 = crashDetailBean.m;
        String str5 = crashDetailBean.e;
        String str6 = crashDetailBean.c;
        if (this.f != null) {
            o oVar = this.f;
            String str7 = crashDetailBean.z;
            if (!oVar.c()) {
                x.d("Crash listener 'onCrashSaving' return 'false' thus will not handle this crash.", new Object[0]);
                return true;
            }
        }
        if (crashDetailBean.b != 2) {
            r rVar = new r();
            rVar.b = 1;
            rVar.c = crashDetailBean.z;
            rVar.d = crashDetailBean.A;
            rVar.e = crashDetailBean.r;
            this.d.b(1);
            this.d.a(rVar);
            x.b("[crash] a crash occur, handling...", new Object[0]);
        } else {
            x.b("[crash] a caught exception occur, handling...", new Object[0]);
        }
        List<a> b2 = b();
        List list = null;
        if (b2 != null && b2.size() > 0) {
            ArrayList arrayList = new ArrayList(10);
            ArrayList<a> arrayList2 = new ArrayList<>(10);
            arrayList.addAll(a(b2));
            b2.removeAll(arrayList);
            if (!com.tencent.bugly.mimsg.b.c && c.d) {
                boolean z = false;
                for (a aVar : b2) {
                    if (crashDetailBean.u.equals(aVar.c)) {
                        if (aVar.e) {
                            z = true;
                        }
                        arrayList2.add(aVar);
                    }
                    z = z;
                }
                if (z || arrayList2.size() >= c.c) {
                    x.a("same crash occur too much do merged!", new Object[0]);
                    CrashDetailBean a2 = a((List<a>) arrayList2, crashDetailBean);
                    for (a aVar2 : arrayList2) {
                        if (aVar2.a != a2.a) {
                            arrayList.add(aVar2);
                        }
                    }
                    d(a2);
                    c((List<a>) arrayList);
                    x.b("[crash] save crash success. For this device crash many times, it will not upload crashes immediately", new Object[0]);
                    return true;
                }
            }
            list = arrayList;
        }
        d(crashDetailBean);
        if (list != null && !list.isEmpty()) {
            c(list);
        }
        x.b("[crash] save crash success", new Object[0]);
        return false;
    }

    public final List<CrashDetailBean> a() {
        StrategyBean c2 = a.a().c();
        if (c2 == null) {
            x.d("have not synced remote!", new Object[0]);
            return null;
        } else if (!c2.g) {
            x.d("Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            x.b("[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            return null;
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            long b2 = z.b();
            List b3 = b();
            if (b3 == null || b3.size() <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = b3.iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                if (aVar.b < b2 - c.g) {
                    it.remove();
                    arrayList.add(aVar);
                } else if (aVar.d) {
                    if (aVar.b >= currentTimeMillis - 86400000) {
                        it.remove();
                    } else if (!aVar.e) {
                        it.remove();
                        arrayList.add(aVar);
                    }
                } else if (((long) aVar.f) >= 3 && aVar.b < currentTimeMillis - 86400000) {
                    it.remove();
                    arrayList.add(aVar);
                }
            }
            if (arrayList.size() > 0) {
                c((List<a>) arrayList);
            }
            ArrayList arrayList2 = new ArrayList();
            List b4 = b(b3);
            if (b4 != null && b4.size() > 0) {
                String str = com.tencent.bugly.mimsg.crashreport.common.info.a.b().j;
                Iterator it2 = b4.iterator();
                while (it2.hasNext()) {
                    CrashDetailBean crashDetailBean = (CrashDetailBean) it2.next();
                    if (!str.equals(crashDetailBean.f)) {
                        it2.remove();
                        arrayList2.add(crashDetailBean);
                    }
                }
            }
            if (arrayList2.size() > 0) {
                d((List<CrashDetailBean>) arrayList2);
            }
            return b4;
        }
    }

    public final void b(CrashDetailBean crashDetailBean) {
        if (this.f != null) {
            o oVar = this.f;
            int i = crashDetailBean.b;
        }
    }

    public final void a(CrashDetailBean crashDetailBean, long j, boolean z) {
        boolean z2 = false;
        if (c.l) {
            x.a("try to upload right now", new Object[0]);
            ArrayList arrayList = new ArrayList();
            arrayList.add(crashDetailBean);
            if (crashDetailBean.b == 7) {
                z2 = true;
            }
            a(arrayList, 3000, z, z2, z);
        }
    }

    public final void a(final List<CrashDetailBean> list, long j, boolean z, boolean z2, boolean z3) {
        al alVar;
        if (!com.tencent.bugly.mimsg.crashreport.common.info.a.a(this.b).e || this.c == null) {
            return;
        }
        if (z3 || this.c.b(c.a)) {
            StrategyBean c2 = this.e.c();
            if (!c2.g) {
                x.d("remote report is disable!", new Object[0]);
                x.b("[crash] server closed bugly in this app. please check your appid if is correct, and re-install it", new Object[0]);
            } else if (list != null && list.size() != 0) {
                try {
                    String str = this.c.a ? c2.s : c2.t;
                    String str2 = this.c.a ? StrategyBean.c : StrategyBean.a;
                    int i = this.c.a ? 830 : 630;
                    Context context = this.b;
                    com.tencent.bugly.mimsg.crashreport.common.info.a b2 = com.tencent.bugly.mimsg.crashreport.common.info.a.b();
                    if (context == null || list == null || list.size() == 0 || b2 == null) {
                        x.d("enEXPPkg args == null!", new Object[0]);
                        alVar = null;
                    } else {
                        al alVar2 = new al();
                        alVar2.a = new ArrayList<>();
                        for (CrashDetailBean a2 : list) {
                            alVar2.a.add(a(context, a2, b2));
                        }
                        alVar = alVar2;
                    }
                    if (alVar == null) {
                        x.d("create eupPkg fail!", new Object[0]);
                        return;
                    }
                    byte[] a3 = com.tencent.bugly.mimsg.proguard.a.a((k) alVar);
                    if (a3 == null) {
                        x.d("send encode fail!", new Object[0]);
                        return;
                    }
                    am a4 = com.tencent.bugly.mimsg.proguard.a.a(this.b, i, a3);
                    if (a4 == null) {
                        x.d("request package is null.", new Object[0]);
                        return;
                    }
                    AnonymousClass1 r5 = new t() {
                        public final void a(boolean z) {
                            b bVar = b.this;
                            b.a(z, list);
                        }
                    };
                    if (z) {
                        this.c.a(a, a4, str, str2, r5, j, z2);
                    } else {
                        this.c.a(a, a4, str, str2, r5, false);
                    }
                } catch (Throwable th) {
                    x.e("req cr error %s", th.toString());
                    if (!x.b(th)) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
            }
        }
    }

    public static void a(boolean z, List<CrashDetailBean> list) {
        if (list != null && list.size() > 0) {
            x.c("up finish update state %b", Boolean.valueOf(z));
            for (CrashDetailBean crashDetailBean : list) {
                x.c("pre uid:%s uc:%d re:%b me:%b", crashDetailBean.c, Integer.valueOf(crashDetailBean.l), Boolean.valueOf(crashDetailBean.d), Boolean.valueOf(crashDetailBean.j));
                crashDetailBean.l++;
                crashDetailBean.d = z;
                x.c("set uid:%s uc:%d re:%b me:%b", crashDetailBean.c, Integer.valueOf(crashDetailBean.l), Boolean.valueOf(crashDetailBean.d), Boolean.valueOf(crashDetailBean.j));
            }
            for (CrashDetailBean a2 : list) {
                c.a().a(a2);
            }
            x.c("update state size %d", Integer.valueOf(list.size()));
        }
        if (!z) {
            x.b("[crash] upload fail.", new Object[0]);
        }
    }

    public final void c(CrashDetailBean crashDetailBean) {
        int i;
        String str;
        if (crashDetailBean != null) {
            if (this.g != null || this.f != null) {
                try {
                    x.a("[crash callback] start user's callback:onCrashHandleStart()", new Object[0]);
                    switch (crashDetailBean.b) {
                        case 0:
                            i = 0;
                            break;
                        case 1:
                            i = 2;
                            break;
                        case 2:
                            i = 1;
                            break;
                        case 3:
                            i = 4;
                            break;
                        case 4:
                            i = 3;
                            break;
                        case 5:
                            i = 5;
                            break;
                        case 6:
                            i = 6;
                            break;
                        case 7:
                            i = 7;
                            break;
                        default:
                            return;
                    }
                    int i2 = crashDetailBean.b;
                    String str2 = crashDetailBean.n;
                    String str3 = crashDetailBean.p;
                    String str4 = crashDetailBean.q;
                    long j = crashDetailBean.r;
                    Map map = null;
                    if (this.f != null) {
                        o oVar = this.f;
                        String b2 = this.f.b();
                        if (b2 != null) {
                            map = new HashMap(1);
                            map.put("userData", b2);
                        }
                    } else if (this.g != null) {
                        map = this.g.onCrashHandleStart(i, crashDetailBean.n, crashDetailBean.o, crashDetailBean.q);
                    }
                    if (map != null && map.size() > 0) {
                        crashDetailBean.N = new LinkedHashMap(map.size());
                        for (Entry entry : map.entrySet()) {
                            if (!z.a((String) entry.getKey())) {
                                String str5 = (String) entry.getKey();
                                if (str5.length() > 100) {
                                    str5 = str5.substring(0, 100);
                                    x.d("setted key length is over limit %d substring to %s", Integer.valueOf(100), str5);
                                }
                                String str6 = str5;
                                if (z.a((String) entry.getValue()) || ((String) entry.getValue()).length() <= 30000) {
                                    str = ((String) entry.getValue());
                                } else {
                                    str = ((String) entry.getValue()).substring(((String) entry.getValue()).length() - 30000);
                                    x.d("setted %s value length is over limit %d substring", str6, Integer.valueOf(30000));
                                }
                                crashDetailBean.N.put(str6, str);
                                x.a("add setted key %s value size:%d", str6, Integer.valueOf(str.length()));
                            }
                        }
                    }
                    x.a("[crash callback] start user's callback:onCrashHandleStart2GetExtraDatas()", new Object[0]);
                    byte[] bArr = null;
                    if (this.f != null) {
                        bArr = this.f.a();
                    } else if (this.g != null) {
                        bArr = this.g.onCrashHandleStart2GetExtraDatas(i, crashDetailBean.n, crashDetailBean.o, crashDetailBean.q);
                    }
                    crashDetailBean.S = bArr;
                    if (crashDetailBean.S != null) {
                        if (crashDetailBean.S.length > 30000) {
                            x.d("extra bytes size %d is over limit %d will drop over part", Integer.valueOf(crashDetailBean.S.length), Integer.valueOf(30000));
                        }
                        x.a("add extra bytes %d ", Integer.valueOf(crashDetailBean.S.length));
                    }
                } catch (Throwable th) {
                    x.d("crash handle callback somthing wrong! %s", th.getClass().getName());
                    if (!x.a(th)) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
            }
        }
    }

    private static ContentValues e(CrashDetailBean crashDetailBean) {
        int i;
        int i2 = 1;
        if (crashDetailBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            if (crashDetailBean.a > 0) {
                contentValues.put("_id", Long.valueOf(crashDetailBean.a));
            }
            contentValues.put("_tm", Long.valueOf(crashDetailBean.r));
            contentValues.put("_s1", crashDetailBean.u);
            String str = "_up";
            if (crashDetailBean.d) {
                i = 1;
            } else {
                i = 0;
            }
            contentValues.put(str, Integer.valueOf(i));
            String str2 = "_me";
            if (!crashDetailBean.j) {
                i2 = 0;
            }
            contentValues.put(str2, Integer.valueOf(i2));
            contentValues.put("_uc", Integer.valueOf(crashDetailBean.l));
            contentValues.put("_dt", z.a((Parcelable) crashDetailBean));
            return contentValues;
        } catch (Throwable th) {
            if (x.a(th)) {
                return null;
            }
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    private static CrashDetailBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j = cursor.getLong(cursor.getColumnIndex("_id"));
            CrashDetailBean crashDetailBean = (CrashDetailBean) z.a(blob, CrashDetailBean.CREATOR);
            if (crashDetailBean == null) {
                return crashDetailBean;
            }
            crashDetailBean.a = j;
            return crashDetailBean;
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return null;
        }
    }

    public final void d(CrashDetailBean crashDetailBean) {
        if (crashDetailBean != null) {
            ContentValues e2 = e(crashDetailBean);
            if (e2 != null) {
                long a2 = p.a().a("t_cr", e2, (o) null, true);
                if (a2 >= 0) {
                    x.c("insert %s success!", "t_cr");
                    crashDetailBean.a = a2;
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0071, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0072, code lost:
        r1 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00a7, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00aa, code lost:
        r8.close();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00a7 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:19:0x005c] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00aa  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.List<com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean> b(java.util.List<com.tencent.bugly.mimsg.crashreport.crash.a> r11) {
        /*
            r10 = this;
            r8 = 4
            r6 = 0
            r7 = 0
            if (r11 == 0) goto L_0x000b
            int r0 = r11.size()
            if (r0 != 0) goto L_0x000d
        L_0x000b:
            r0 = r7
        L_0x000c:
            return r0
        L_0x000d:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.util.Iterator r1 = r11.iterator()
        L_0x0016:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x0034
            java.lang.Object r0 = r1.next()
            com.tencent.bugly.mimsg.crashreport.crash.a r0 = (com.tencent.bugly.mimsg.crashreport.crash.a) r0
            java.lang.String r2 = " or _id"
            java.lang.StringBuilder r2 = r9.append(r2)
            java.lang.String r3 = " = "
            java.lang.StringBuilder r2 = r2.append(r3)
            long r4 = r0.a
            r2.append(r4)
            goto L_0x0016
        L_0x0034:
            java.lang.String r3 = r9.toString()
            int r0 = r3.length()
            if (r0 <= 0) goto L_0x0042
            java.lang.String r3 = r3.substring(r8)
        L_0x0042:
            r9.setLength(r6)
            com.tencent.bugly.mimsg.proguard.p r0 = com.tencent.bugly.mimsg.proguard.p.a()     // Catch:{ Throwable -> 0x00ec, all -> 0x00e6 }
            java.lang.String r1 = "t_cr"
            r2 = 0
            r4 = 0
            r5 = 0
            r6 = 1
            android.database.Cursor r8 = r0.a(r1, r2, r3, r4, r5, r6)     // Catch:{ Throwable -> 0x00ec, all -> 0x00e6 }
            if (r8 != 0) goto L_0x005c
            if (r8 == 0) goto L_0x005a
            r8.close()
        L_0x005a:
            r0 = r7
            goto L_0x000c
        L_0x005c:
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            r6.<init>()     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
        L_0x0061:
            boolean r0 = r8.moveToNext()     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            if (r0 == 0) goto L_0x00ae
            com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean r0 = a(r8)     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            if (r0 == 0) goto L_0x0083
            r6.add(r0)     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            goto L_0x0061
        L_0x0071:
            r0 = move-exception
            r1 = r8
        L_0x0073:
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ all -> 0x00e9 }
            if (r2 != 0) goto L_0x007c
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x00e9 }
        L_0x007c:
            if (r1 == 0) goto L_0x0081
            r1.close()
        L_0x0081:
            r0 = r7
            goto L_0x000c
        L_0x0083:
            java.lang.String r0 = "_id"
            int r0 = r8.getColumnIndex(r0)     // Catch:{ Throwable -> 0x009d, all -> 0x00a7 }
            long r0 = r8.getLong(r0)     // Catch:{ Throwable -> 0x009d, all -> 0x00a7 }
            java.lang.String r2 = " or _id"
            java.lang.StringBuilder r2 = r9.append(r2)     // Catch:{ Throwable -> 0x009d, all -> 0x00a7 }
            java.lang.String r3 = " = "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Throwable -> 0x009d, all -> 0x00a7 }
            r2.append(r0)     // Catch:{ Throwable -> 0x009d, all -> 0x00a7 }
            goto L_0x0061
        L_0x009d:
            r0 = move-exception
            java.lang.String r0 = "unknown id!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r1)     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            goto L_0x0061
        L_0x00a7:
            r0 = move-exception
        L_0x00a8:
            if (r8 == 0) goto L_0x00ad
            r8.close()
        L_0x00ad:
            throw r0
        L_0x00ae:
            java.lang.String r0 = r9.toString()     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            int r1 = r0.length()     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            if (r1 <= 0) goto L_0x00de
            r1 = 4
            java.lang.String r2 = r0.substring(r1)     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            com.tencent.bugly.mimsg.proguard.p r0 = com.tencent.bugly.mimsg.proguard.p.a()     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            java.lang.String r1 = "t_cr"
            r3 = 0
            r4 = 0
            r5 = 1
            int r0 = r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            java.lang.String r1 = "deleted %s illegle data %d"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            r3 = 0
            java.lang.String r4 = "t_cr"
            r2[r3] = r4     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            r3 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            r2[r3] = r0     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
            com.tencent.bugly.mimsg.proguard.x.d(r1, r2)     // Catch:{ Throwable -> 0x0071, all -> 0x00a7 }
        L_0x00de:
            if (r8 == 0) goto L_0x00e3
            r8.close()
        L_0x00e3:
            r0 = r6
            goto L_0x000c
        L_0x00e6:
            r0 = move-exception
            r8 = r7
            goto L_0x00a8
        L_0x00e9:
            r0 = move-exception
            r8 = r1
            goto L_0x00a8
        L_0x00ec:
            r0 = move-exception
            r1 = r7
            goto L_0x0073
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.crashreport.crash.b.b(java.util.List):java.util.List");
    }

    private static a b(Cursor cursor) {
        boolean z = true;
        if (cursor == null) {
            return null;
        }
        try {
            a aVar = new a();
            aVar.a = cursor.getLong(cursor.getColumnIndex("_id"));
            aVar.b = cursor.getLong(cursor.getColumnIndex("_tm"));
            aVar.c = cursor.getString(cursor.getColumnIndex("_s1"));
            aVar.d = cursor.getInt(cursor.getColumnIndex("_up")) == 1;
            if (cursor.getInt(cursor.getColumnIndex("_me")) != 1) {
                z = false;
            }
            aVar.e = z;
            aVar.f = cursor.getInt(cursor.getColumnIndex("_uc"));
            return aVar;
        } catch (Throwable th) {
            if (x.a(th)) {
                return null;
            }
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0053, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0054, code lost:
        r7 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0089, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x008c, code lost:
        r6.close();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0089 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:7:0x003e] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x008c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.List<com.tencent.bugly.mimsg.crashreport.crash.a> b() {
        /*
            r9 = this;
            r7 = 0
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            r0 = 6
            java.lang.String[] r2 = new java.lang.String[r0]     // Catch:{ Throwable -> 0x00ce, all -> 0x00c8 }
            r0 = 0
            java.lang.String r1 = "_id"
            r2[r0] = r1     // Catch:{ Throwable -> 0x00ce, all -> 0x00c8 }
            r0 = 1
            java.lang.String r1 = "_tm"
            r2[r0] = r1     // Catch:{ Throwable -> 0x00ce, all -> 0x00c8 }
            r0 = 2
            java.lang.String r1 = "_s1"
            r2[r0] = r1     // Catch:{ Throwable -> 0x00ce, all -> 0x00c8 }
            r0 = 3
            java.lang.String r1 = "_up"
            r2[r0] = r1     // Catch:{ Throwable -> 0x00ce, all -> 0x00c8 }
            r0 = 4
            java.lang.String r1 = "_me"
            r2[r0] = r1     // Catch:{ Throwable -> 0x00ce, all -> 0x00c8 }
            r0 = 5
            java.lang.String r1 = "_uc"
            r2[r0] = r1     // Catch:{ Throwable -> 0x00ce, all -> 0x00c8 }
            com.tencent.bugly.mimsg.proguard.p r0 = com.tencent.bugly.mimsg.proguard.p.a()     // Catch:{ Throwable -> 0x00ce, all -> 0x00c8 }
            java.lang.String r1 = "t_cr"
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 1
            android.database.Cursor r6 = r0.a(r1, r2, r3, r4, r5, r6)     // Catch:{ Throwable -> 0x00ce, all -> 0x00c8 }
            if (r6 != 0) goto L_0x003e
            if (r6 == 0) goto L_0x003c
            r6.close()
        L_0x003c:
            r0 = r7
        L_0x003d:
            return r0
        L_0x003e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            r0.<init>()     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
        L_0x0043:
            boolean r1 = r6.moveToNext()     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            if (r1 == 0) goto L_0x0090
            com.tencent.bugly.mimsg.crashreport.crash.a r1 = b(r6)     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            if (r1 == 0) goto L_0x0065
            r8.add(r1)     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            goto L_0x0043
        L_0x0053:
            r0 = move-exception
            r7 = r6
        L_0x0055:
            boolean r1 = com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ all -> 0x00cb }
            if (r1 != 0) goto L_0x005e
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x00cb }
        L_0x005e:
            if (r7 == 0) goto L_0x0063
            r7.close()
        L_0x0063:
            r0 = r8
            goto L_0x003d
        L_0x0065:
            java.lang.String r1 = "_id"
            int r1 = r6.getColumnIndex(r1)     // Catch:{ Throwable -> 0x007f, all -> 0x0089 }
            long r2 = r6.getLong(r1)     // Catch:{ Throwable -> 0x007f, all -> 0x0089 }
            java.lang.String r1 = " or _id"
            java.lang.StringBuilder r1 = r0.append(r1)     // Catch:{ Throwable -> 0x007f, all -> 0x0089 }
            java.lang.String r4 = " = "
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch:{ Throwable -> 0x007f, all -> 0x0089 }
            r1.append(r2)     // Catch:{ Throwable -> 0x007f, all -> 0x0089 }
            goto L_0x0043
        L_0x007f:
            r1 = move-exception
            java.lang.String r1 = "unknown id!"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            com.tencent.bugly.mimsg.proguard.x.d(r1, r2)     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            goto L_0x0043
        L_0x0089:
            r0 = move-exception
        L_0x008a:
            if (r6 == 0) goto L_0x008f
            r6.close()
        L_0x008f:
            throw r0
        L_0x0090:
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            int r1 = r0.length()     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            if (r1 <= 0) goto L_0x00c0
            r1 = 4
            java.lang.String r2 = r0.substring(r1)     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            com.tencent.bugly.mimsg.proguard.p r0 = com.tencent.bugly.mimsg.proguard.p.a()     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            java.lang.String r1 = "t_cr"
            r3 = 0
            r4 = 0
            r5 = 1
            int r0 = r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            java.lang.String r1 = "deleted %s illegle data %d"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            r3 = 0
            java.lang.String r4 = "t_cr"
            r2[r3] = r4     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            r3 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            r2[r3] = r0     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
            com.tencent.bugly.mimsg.proguard.x.d(r1, r2)     // Catch:{ Throwable -> 0x0053, all -> 0x0089 }
        L_0x00c0:
            if (r6 == 0) goto L_0x00c5
            r6.close()
        L_0x00c5:
            r0 = r8
            goto L_0x003d
        L_0x00c8:
            r0 = move-exception
            r6 = r7
            goto L_0x008a
        L_0x00cb:
            r0 = move-exception
            r6 = r7
            goto L_0x008a
        L_0x00ce:
            r0 = move-exception
            goto L_0x0055
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.crashreport.crash.b.b():java.util.List");
    }

    private static void c(List<a> list) {
        if (list != null && list.size() != 0) {
            StringBuilder sb = new StringBuilder();
            for (a aVar : list) {
                sb.append(" or _id").append(" = ").append(aVar.a);
            }
            String sb2 = sb.toString();
            if (sb2.length() > 0) {
                sb2 = sb2.substring(4);
            }
            sb.setLength(0);
            try {
                x.c("deleted %s data %d", "t_cr", Integer.valueOf(p.a().a("t_cr", sb2, (String[]) null, (o) null, true)));
            } catch (Throwable th) {
                if (!x.a(th)) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        }
    }

    private static void d(List<CrashDetailBean> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    StringBuilder sb = new StringBuilder();
                    for (CrashDetailBean crashDetailBean : list) {
                        sb.append(" or _id").append(" = ").append(crashDetailBean.a);
                    }
                    String sb2 = sb.toString();
                    if (sb2.length() > 0) {
                        sb2 = sb2.substring(4);
                    }
                    sb.setLength(0);
                    x.c("deleted %s data %d", "t_cr", Integer.valueOf(p.a().a("t_cr", sb2, (String[]) null, (o) null, true)));
                }
            } catch (Throwable th) {
                if (!x.a(th)) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        }
    }

    private static ak a(Context context, CrashDetailBean crashDetailBean, com.tencent.bugly.mimsg.crashreport.common.info.a aVar) {
        aj ajVar;
        int i;
        boolean z = true;
        if (context == null || crashDetailBean == null || aVar == null) {
            x.d("enExp args == null", new Object[0]);
            return null;
        }
        ak akVar = new ak();
        switch (crashDetailBean.b) {
            case 0:
                akVar.a = crashDetailBean.j ? "200" : "100";
                break;
            case 1:
                akVar.a = crashDetailBean.j ? "201" : "101";
                break;
            case 2:
                akVar.a = crashDetailBean.j ? "202" : "102";
                break;
            case 3:
                akVar.a = crashDetailBean.j ? "203" : "103";
                break;
            case 4:
                akVar.a = crashDetailBean.j ? "204" : "104";
                break;
            case 5:
                akVar.a = crashDetailBean.j ? "207" : "107";
                break;
            case 6:
                akVar.a = crashDetailBean.j ? "206" : "106";
                break;
            case 7:
                akVar.a = crashDetailBean.j ? "208" : "108";
                break;
            default:
                x.e("crash type error! %d", Integer.valueOf(crashDetailBean.b));
                break;
        }
        akVar.b = crashDetailBean.r;
        akVar.c = crashDetailBean.n;
        akVar.d = crashDetailBean.o;
        akVar.e = crashDetailBean.p;
        akVar.g = crashDetailBean.q;
        akVar.h = crashDetailBean.y;
        akVar.i = crashDetailBean.c;
        akVar.j = null;
        akVar.l = crashDetailBean.m;
        akVar.m = crashDetailBean.e;
        akVar.f = crashDetailBean.A;
        akVar.t = com.tencent.bugly.mimsg.crashreport.common.info.a.b().i();
        akVar.n = null;
        if (crashDetailBean.i != null && crashDetailBean.i.size() > 0) {
            akVar.o = new ArrayList<>();
            for (Entry entry : crashDetailBean.i.entrySet()) {
                ah ahVar = new ah();
                ahVar.a = ((PlugInBean) entry.getValue()).a;
                ahVar.c = ((PlugInBean) entry.getValue()).c;
                ahVar.d = ((PlugInBean) entry.getValue()).b;
                ahVar.b = aVar.r();
                akVar.o.add(ahVar);
            }
        }
        if (crashDetailBean.h != null && crashDetailBean.h.size() > 0) {
            akVar.p = new ArrayList<>();
            for (Entry entry2 : crashDetailBean.h.entrySet()) {
                ah ahVar2 = new ah();
                ahVar2.a = ((PlugInBean) entry2.getValue()).a;
                ahVar2.c = ((PlugInBean) entry2.getValue()).c;
                ahVar2.d = ((PlugInBean) entry2.getValue()).b;
                akVar.p.add(ahVar2);
            }
        }
        if (crashDetailBean.j) {
            akVar.k = crashDetailBean.t;
            if (crashDetailBean.s != null && crashDetailBean.s.length() > 0) {
                if (akVar.q == null) {
                    akVar.q = new ArrayList<>();
                }
                try {
                    akVar.q.add(new aj(1, "alltimes.txt", crashDetailBean.s.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e2) {
                    ThrowableExtension.printStackTrace(e2);
                    akVar.q = null;
                }
            }
            String str = "crashcount:%d sz:%d";
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(akVar.k);
            if (akVar.q != null) {
                i = akVar.q.size();
            } else {
                i = 0;
            }
            objArr[1] = Integer.valueOf(i);
            x.c(str, objArr);
        }
        if (crashDetailBean.w != null) {
            if (akVar.q == null) {
                akVar.q = new ArrayList<>();
            }
            try {
                akVar.q.add(new aj(1, "log.txt", crashDetailBean.w.getBytes("utf-8")));
            } catch (UnsupportedEncodingException e3) {
                ThrowableExtension.printStackTrace(e3);
                akVar.q = null;
            }
        }
        if (!z.a(crashDetailBean.T)) {
            if (akVar.q == null) {
                akVar.q = new ArrayList<>();
            }
            try {
                ajVar = new aj(1, "crashInfos.txt", crashDetailBean.T.getBytes("utf-8"));
            } catch (UnsupportedEncodingException e4) {
                ThrowableExtension.printStackTrace(e4);
                ajVar = null;
            }
            if (ajVar != null) {
                x.c("attach crash infos", new Object[0]);
                akVar.q.add(ajVar);
            }
        }
        if (crashDetailBean.U != null) {
            if (akVar.q == null) {
                akVar.q = new ArrayList<>();
            }
            aj a2 = a("backupRecord.zip", context, crashDetailBean.U);
            if (a2 != null) {
                x.c("attach backup record", new Object[0]);
                akVar.q.add(a2);
            }
        }
        if (crashDetailBean.x != null && crashDetailBean.x.length > 0) {
            aj ajVar2 = new aj(2, "buglylog.zip", crashDetailBean.x);
            x.c("attach user log", new Object[0]);
            if (akVar.q == null) {
                akVar.q = new ArrayList<>();
            }
            akVar.q.add(ajVar2);
        }
        if (crashDetailBean.b == 3) {
            if (akVar.q == null) {
                akVar.q = new ArrayList<>();
            }
            if (crashDetailBean.N != null && crashDetailBean.N.containsKey("BUGLY_CR_01")) {
                try {
                    akVar.q.add(new aj(1, "anrMessage.txt", ((String) crashDetailBean.N.get("BUGLY_CR_01")).getBytes("utf-8")));
                    x.c("attach anr message", new Object[0]);
                } catch (UnsupportedEncodingException e5) {
                    ThrowableExtension.printStackTrace(e5);
                    akVar.q = null;
                }
                crashDetailBean.N.remove("BUGLY_CR_01");
            }
            if (crashDetailBean.v != null) {
                aj a3 = a("trace.zip", context, crashDetailBean.v);
                if (a3 != null) {
                    x.c("attach traces", new Object[0]);
                    akVar.q.add(a3);
                }
            }
        }
        if (crashDetailBean.b == 1) {
            if (akVar.q == null) {
                akVar.q = new ArrayList<>();
            }
            if (crashDetailBean.v != null) {
                aj a4 = a("tomb.zip", context, crashDetailBean.v);
                if (a4 != null) {
                    x.c("attach tombs", new Object[0]);
                    akVar.q.add(a4);
                }
            }
        }
        if (aVar.C != null && !aVar.C.isEmpty()) {
            if (akVar.q == null) {
                akVar.q = new ArrayList<>();
            }
            StringBuilder sb = new StringBuilder();
            for (String append : aVar.C) {
                sb.append(append);
            }
            try {
                akVar.q.add(new aj(1, "martianlog.txt", sb.toString().getBytes("utf-8")));
                x.c("attach pageTracingList", new Object[0]);
            } catch (UnsupportedEncodingException e6) {
                ThrowableExtension.printStackTrace(e6);
            }
        }
        if (crashDetailBean.S != null && crashDetailBean.S.length > 0) {
            if (akVar.q == null) {
                akVar.q = new ArrayList<>();
            }
            akVar.q.add(new aj(1, "userExtraByteData", crashDetailBean.S));
            x.c("attach extraData", new Object[0]);
        }
        akVar.r = new HashMap();
        akVar.r.put("A9", crashDetailBean.B);
        akVar.r.put("A11", crashDetailBean.C);
        akVar.r.put("A10", crashDetailBean.D);
        akVar.r.put("A23", crashDetailBean.f);
        akVar.r.put("A7", aVar.f);
        akVar.r.put("A6", aVar.s());
        akVar.r.put("A5", aVar.r());
        akVar.r.put("A22", aVar.h());
        akVar.r.put("A2", crashDetailBean.F);
        akVar.r.put("A1", crashDetailBean.E);
        akVar.r.put("A24", aVar.h);
        akVar.r.put("A17", crashDetailBean.G);
        akVar.r.put("A3", aVar.k());
        akVar.r.put("A16", aVar.m());
        akVar.r.put("A25", aVar.n());
        akVar.r.put("A14", aVar.l());
        akVar.r.put("A15", aVar.w());
        akVar.r.put("A13", aVar.x());
        akVar.r.put("A34", crashDetailBean.z);
        if (aVar.x != null) {
            akVar.r.put("productIdentify", aVar.x);
        }
        try {
            akVar.r.put("A26", URLEncoder.encode(crashDetailBean.H, "utf-8"));
        } catch (UnsupportedEncodingException e7) {
            ThrowableExtension.printStackTrace(e7);
        }
        if (crashDetailBean.b == 1) {
            akVar.r.put("A27", crashDetailBean.J);
            akVar.r.put("A28", crashDetailBean.I);
            akVar.r.put("A29", crashDetailBean.k);
        }
        akVar.r.put("A30", crashDetailBean.K);
        akVar.r.put("A18", crashDetailBean.L);
        akVar.r.put("A36", (!crashDetailBean.M));
        akVar.r.put("F02", aVar.q);
        akVar.r.put("F03", aVar.r);
        akVar.r.put("F04", aVar.e());
        akVar.r.put("F05", aVar.s);
        akVar.r.put("F06", aVar.p);
        akVar.r.put("F08", aVar.v);
        akVar.r.put("F09", aVar.w);
        akVar.r.put("F10", aVar.t);
        if (crashDetailBean.O >= 0) {
            akVar.r.put("C01", crashDetailBean.O);
        }
        if (crashDetailBean.P >= 0) {
            akVar.r.put("C02", crashDetailBean.P);
        }
        if (crashDetailBean.Q != null && crashDetailBean.Q.size() > 0) {
            for (Entry entry3 : crashDetailBean.Q.entrySet()) {
                akVar.r.put("C03_" + ((String) entry3.getKey()), entry3.getValue());
            }
        }
        if (crashDetailBean.R != null && crashDetailBean.R.size() > 0) {
            for (Entry entry4 : crashDetailBean.R.entrySet()) {
                akVar.r.put("C04_" + ((String) entry4.getKey()), entry4.getValue());
            }
        }
        akVar.s = null;
        if (crashDetailBean.N != null && crashDetailBean.N.size() > 0) {
            akVar.s = crashDetailBean.N;
            x.a("setted message size %d", Integer.valueOf(akVar.s.size()));
        }
        String str2 = "%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d";
        Object[] objArr2 = new Object[12];
        objArr2[0] = crashDetailBean.n;
        objArr2[1] = crashDetailBean.c;
        objArr2[2] = aVar.e();
        objArr2[3] = Long.valueOf((crashDetailBean.r - crashDetailBean.L) / 1000);
        objArr2[4] = Boolean.valueOf(crashDetailBean.k);
        objArr2[5] = Boolean.valueOf(crashDetailBean.M);
        objArr2[6] = Boolean.valueOf(crashDetailBean.j);
        if (crashDetailBean.b != 1) {
            z = false;
        }
        objArr2[7] = Boolean.valueOf(z);
        objArr2[8] = Integer.valueOf(crashDetailBean.t);
        objArr2[9] = crashDetailBean.s;
        objArr2[10] = Boolean.valueOf(crashDetailBean.d);
        objArr2[11] = Integer.valueOf(akVar.r.size());
        x.c(str2, objArr2);
        return akVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0059 A[Catch:{ all -> 0x00e0 }] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x005e A[SYNTHETIC, Splitter:B:22:0x005e] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00c1 A[SYNTHETIC, Splitter:B:46:0x00c1] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.tencent.bugly.mimsg.proguard.aj a(java.lang.String r9, android.content.Context r10, java.lang.String r11) {
        /*
            r2 = 1
            r0 = 0
            r8 = 0
            if (r11 == 0) goto L_0x0007
            if (r10 != 0) goto L_0x000f
        L_0x0007:
            java.lang.String r1 = "rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}"
            java.lang.Object[] r2 = new java.lang.Object[r8]
            com.tencent.bugly.mimsg.proguard.x.d(r1, r2)
        L_0x000e:
            return r0
        L_0x000f:
            java.lang.String r1 = "zip %s"
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r8] = r11
            com.tencent.bugly.mimsg.proguard.x.c(r1, r2)
            java.io.File r1 = new java.io.File
            r1.<init>(r11)
            java.io.File r3 = new java.io.File
            java.io.File r2 = r10.getCacheDir()
            r3.<init>(r2, r9)
            r2 = 5000(0x1388, float:7.006E-42)
            boolean r1 = com.tencent.bugly.mimsg.proguard.z.a(r1, r3, r2)
            if (r1 != 0) goto L_0x0036
            java.lang.String r1 = "zip fail!"
            java.lang.Object[] r2 = new java.lang.Object[r8]
            com.tencent.bugly.mimsg.proguard.x.d(r1, r2)
            goto L_0x000e
        L_0x0036:
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream
            r1.<init>()
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ Throwable -> 0x00e2, all -> 0x00bc }
            r2.<init>(r3)     // Catch:{ Throwable -> 0x00e2, all -> 0x00bc }
            r4 = 4096(0x1000, float:5.74E-42)
            byte[] r4 = new byte[r4]     // Catch:{ Throwable -> 0x0052 }
        L_0x0044:
            int r5 = r2.read(r4)     // Catch:{ Throwable -> 0x0052 }
            if (r5 <= 0) goto L_0x0072
            r6 = 0
            r1.write(r4, r6, r5)     // Catch:{ Throwable -> 0x0052 }
            r1.flush()     // Catch:{ Throwable -> 0x0052 }
            goto L_0x0044
        L_0x0052:
            r1 = move-exception
        L_0x0053:
            boolean r4 = com.tencent.bugly.mimsg.proguard.x.a(r1)     // Catch:{ all -> 0x00e0 }
            if (r4 != 0) goto L_0x005c
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x00e0 }
        L_0x005c:
            if (r2 == 0) goto L_0x0061
            r2.close()     // Catch:{ IOException -> 0x00b1 }
        L_0x0061:
            boolean r1 = r3.exists()
            if (r1 == 0) goto L_0x000e
            java.lang.String r1 = "del tmp"
            java.lang.Object[] r2 = new java.lang.Object[r8]
            com.tencent.bugly.mimsg.proguard.x.c(r1, r2)
            r3.delete()
            goto L_0x000e
        L_0x0072:
            byte[] r4 = r1.toByteArray()     // Catch:{ Throwable -> 0x0052 }
            java.lang.String r1 = "read bytes :%d"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ Throwable -> 0x0052 }
            r6 = 0
            int r7 = r4.length     // Catch:{ Throwable -> 0x0052 }
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch:{ Throwable -> 0x0052 }
            r5[r6] = r7     // Catch:{ Throwable -> 0x0052 }
            com.tencent.bugly.mimsg.proguard.x.c(r1, r5)     // Catch:{ Throwable -> 0x0052 }
            com.tencent.bugly.mimsg.proguard.aj r1 = new com.tencent.bugly.mimsg.proguard.aj     // Catch:{ Throwable -> 0x0052 }
            r5 = 2
            java.lang.String r6 = r3.getName()     // Catch:{ Throwable -> 0x0052 }
            r1.<init>(r5, r6, r4)     // Catch:{ Throwable -> 0x0052 }
            r2.close()     // Catch:{ IOException -> 0x00a6 }
        L_0x0093:
            boolean r0 = r3.exists()
            if (r0 == 0) goto L_0x00a3
            java.lang.String r0 = "del tmp"
            java.lang.Object[] r2 = new java.lang.Object[r8]
            com.tencent.bugly.mimsg.proguard.x.c(r0, r2)
            r3.delete()
        L_0x00a3:
            r0 = r1
            goto L_0x000e
        L_0x00a6:
            r0 = move-exception
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r0)
            if (r2 != 0) goto L_0x0093
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0093
        L_0x00b1:
            r1 = move-exception
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r1)
            if (r2 != 0) goto L_0x0061
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0061
        L_0x00bc:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x00bf:
            if (r2 == 0) goto L_0x00c4
            r2.close()     // Catch:{ IOException -> 0x00d5 }
        L_0x00c4:
            boolean r1 = r3.exists()
            if (r1 == 0) goto L_0x00d4
            java.lang.String r1 = "del tmp"
            java.lang.Object[] r2 = new java.lang.Object[r8]
            com.tencent.bugly.mimsg.proguard.x.c(r1, r2)
            r3.delete()
        L_0x00d4:
            throw r0
        L_0x00d5:
            r1 = move-exception
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r1)
            if (r2 != 0) goto L_0x00c4
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00c4
        L_0x00e0:
            r0 = move-exception
            goto L_0x00bf
        L_0x00e2:
            r1 = move-exception
            r2 = r0
            goto L_0x0053
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.crashreport.crash.b.a(java.lang.String, android.content.Context, java.lang.String):com.tencent.bugly.mimsg.proguard.aj");
    }

    public static void a(String str, String str2, String str3, Thread thread, String str4, CrashDetailBean crashDetailBean) {
        com.tencent.bugly.mimsg.crashreport.common.info.a b2 = com.tencent.bugly.mimsg.crashreport.common.info.a.b();
        if (b2 != null) {
            x.e("#++++++++++Record By Bugly++++++++++#", new Object[0]);
            x.e("# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!", new Object[0]);
            x.e("# PKG NAME: %s", b2.c);
            x.e("# APP VER: %s", b2.j);
            x.e("# LAUNCH TIME: %s", z.a(new Date(com.tencent.bugly.mimsg.crashreport.common.info.a.b().a)));
            x.e("# CRASH TYPE: %s", str);
            x.e("# CRASH TIME: %s", str2);
            x.e("# CRASH PROCESS: %s", str3);
            if (thread != null) {
                x.e("# CRASH THREAD: %s", thread.getName());
            }
            if (crashDetailBean != null) {
                x.e("# REPORT ID: %s", crashDetailBean.c);
                String str5 = "# CRASH DEVICE: %s %s";
                Object[] objArr = new Object[2];
                objArr[0] = b2.g;
                objArr[1] = b2.x().booleanValue() ? "ROOTED" : "UNROOT";
                x.e(str5, objArr);
                x.e("# RUNTIME AVAIL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.B), Long.valueOf(crashDetailBean.C), Long.valueOf(crashDetailBean.D));
                x.e("# RUNTIME TOTAL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.E), Long.valueOf(crashDetailBean.F), Long.valueOf(crashDetailBean.G));
                if (!z.a(crashDetailBean.J)) {
                    x.e("# EXCEPTION FIRED BY %s %s", crashDetailBean.J, crashDetailBean.I);
                } else if (crashDetailBean.b == 3) {
                    String str6 = "# EXCEPTION ANR MESSAGE:\n %s";
                    Object[] objArr2 = new Object[1];
                    objArr2[0] = crashDetailBean.N == null ? "null" : ((String) crashDetailBean.N.get("BUGLY_CR_01"));
                    x.e(str6, objArr2);
                }
            }
            if (!z.a(str4)) {
                x.e("# CRASH STACK: ", new Object[0]);
                x.e(str4, new Object[0]);
            }
            x.e("#++++++++++++++++++++++++++++++++++++++++++#", new Object[0]);
        }
    }
}
