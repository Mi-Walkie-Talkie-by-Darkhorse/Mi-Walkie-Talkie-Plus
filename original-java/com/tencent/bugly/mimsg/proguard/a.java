package com.tencent.bugly.mimsg.proguard;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.crashreport.biz.UserInfoBean;
import com.tencent.bugly.mimsg.crashreport.common.info.b;
import com.tencent.bugly.mimsg.crashreport.common.strategy.StrategyBean;
import com.xiaomi.mipush.sdk.Constants;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/* compiled from: BUGLY */
public class a {
    protected HashMap<String, HashMap<String, byte[]>> a = new HashMap<>();
    protected String b;
    i c;
    private HashMap<String, Object> d;

    public static ag a(int i) {
        if (i == 1) {
            return new af();
        }
        if (i == 3) {
            return new ae();
        }
        return null;
    }

    a() {
        new HashMap();
        this.d = new HashMap<>();
        this.b = "GBK";
        this.c = new i();
    }

    public void a(String str) {
        this.b = str;
    }

    public static aq a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        aq aqVar = new aq();
        aqVar.a = userInfoBean.e;
        aqVar.e = userInfoBean.j;
        aqVar.d = userInfoBean.c;
        aqVar.c = userInfoBean.d;
        aqVar.g = com.tencent.bugly.mimsg.crashreport.common.info.a.b().i();
        aqVar.h = userInfoBean.o == 1;
        switch (userInfoBean.b) {
            case 1:
                aqVar.b = 1;
                break;
            case 2:
                aqVar.b = 4;
                break;
            case 3:
                aqVar.b = 2;
                break;
            case 4:
                aqVar.b = 3;
                break;
            default:
                if (userInfoBean.b >= 10 && userInfoBean.b < 20) {
                    aqVar.b = (byte) userInfoBean.b;
                    break;
                } else {
                    x.e("unknown uinfo type %d ", Integer.valueOf(userInfoBean.b));
                    return null;
                }
                break;
        }
        aqVar.f = new HashMap();
        if (userInfoBean.p >= 0) {
            aqVar.f.put("C01", userInfoBean.p);
        }
        if (userInfoBean.q >= 0) {
            aqVar.f.put("C02", userInfoBean.q);
        }
        if (userInfoBean.r != null && userInfoBean.r.size() > 0) {
            for (Entry entry : userInfoBean.r.entrySet()) {
                aqVar.f.put("C03_" + ((String) entry.getKey()), entry.getValue());
            }
        }
        if (userInfoBean.s != null && userInfoBean.s.size() > 0) {
            for (Entry entry2 : userInfoBean.s.entrySet()) {
                aqVar.f.put("C04_" + ((String) entry2.getKey()), entry2.getValue());
            }
        }
        aqVar.f.put("A36", (!userInfoBean.l));
        aqVar.f.put("F02", userInfoBean.g);
        aqVar.f.put("F03", userInfoBean.h);
        aqVar.f.put("F04", userInfoBean.j);
        aqVar.f.put("F05", userInfoBean.i);
        aqVar.f.put("F06", userInfoBean.m);
        aqVar.f.put("F10", userInfoBean.k);
        x.c("summary type %d vm:%d", Byte.valueOf(aqVar.b), Integer.valueOf(aqVar.f.size()));
        return aqVar;
    }

    public static String a(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < arrayList.size(); i++) {
            String str = (String) arrayList.get(i);
            if (str.equals("java.lang.Integer") || str.equals("int")) {
                str = "int32";
            } else if (str.equals("java.lang.Boolean") || str.equals("boolean")) {
                str = "bool";
            } else if (str.equals("java.lang.Byte") || str.equals("byte")) {
                str = "char";
            } else if (str.equals("java.lang.Double") || str.equals("double")) {
                str = "double";
            } else if (str.equals("java.lang.Float") || str.equals("float")) {
                str = "float";
            } else if (str.equals("java.lang.Long") || str.equals("long")) {
                str = "int64";
            } else if (str.equals("java.lang.Short") || str.equals("short")) {
                str = "short";
            } else if (str.equals("java.lang.Character")) {
                throw new IllegalArgumentException("can not support java.lang.Character");
            } else if (str.equals("java.lang.String")) {
                str = "string";
            } else if (str.equals("java.util.List")) {
                str = "list";
            } else if (str.equals("java.util.Map")) {
                str = "map";
            }
            arrayList.set(i, str);
        }
        Collections.reverse(arrayList);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            String str2 = (String) arrayList.get(i2);
            if (str2.equals("list")) {
                arrayList.set(i2 - 1, "<" + ((String) arrayList.get(i2 - 1)));
                arrayList.set(0, ((String) arrayList.get(0)) + ">");
            } else if (str2.equals("map")) {
                arrayList.set(i2 - 1, "<" + ((String) arrayList.get(i2 - 1)) + Constants.ACCEPT_TIME_SEPARATOR_SP);
                arrayList.set(0, ((String) arrayList.get(0)) + ">");
            } else if (str2.equals("Array")) {
                arrayList.set(i2 - 1, "<" + ((String) arrayList.get(i2 - 1)));
                arrayList.set(0, ((String) arrayList.get(0)) + ">");
            }
        }
        Collections.reverse(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append((String) it.next());
        }
        return stringBuffer.toString();
    }

    public <T> void a(String str, T t) {
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        } else if (t == null) {
            throw new IllegalArgumentException("put value can not is null");
        } else if (t instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        } else {
            j jVar = new j();
            jVar.a(this.b);
            jVar.a((Object) t, 0);
            byte[] a2 = l.a(jVar.a());
            HashMap hashMap = new HashMap(1);
            ArrayList arrayList = new ArrayList(1);
            a(arrayList, (Object) t);
            hashMap.put(a(arrayList), a2);
            this.d.remove(str);
            this.a.put(str, hashMap);
        }
    }

    public static ar a(List<UserInfoBean> list, int i) {
        if (list == null || list.size() == 0) {
            return null;
        }
        com.tencent.bugly.mimsg.crashreport.common.info.a b2 = com.tencent.bugly.mimsg.crashreport.common.info.a.b();
        if (b2 == null) {
            return null;
        }
        b2.t();
        ar arVar = new ar();
        arVar.b = b2.d;
        arVar.c = b2.h();
        ArrayList<aq> arrayList = new ArrayList<>();
        for (UserInfoBean a2 : list) {
            aq a3 = a(a2);
            if (a3 != null) {
                arrayList.add(a3);
            }
        }
        arVar.d = arrayList;
        arVar.e = new HashMap();
        arVar.e.put("A7", b2.f);
        arVar.e.put("A6", b2.s());
        arVar.e.put("A5", b2.r());
        arVar.e.put("A2", b2.p());
        arVar.e.put("A1", b2.p());
        arVar.e.put("A24", b2.h);
        arVar.e.put("A17", b2.q());
        arVar.e.put("A15", b2.w());
        arVar.e.put("A13", b2.x());
        arVar.e.put("F08", b2.v);
        arVar.e.put("F09", b2.w);
        Map E = b2.E();
        if (E != null && E.size() > 0) {
            for (Entry entry : E.entrySet()) {
                arVar.e.put("C04_" + ((String) entry.getKey()), entry.getValue());
            }
        }
        switch (i) {
            case 1:
                arVar.a = 1;
                break;
            case 2:
                arVar.a = 2;
                break;
            default:
                x.e("unknown up type %d ", Integer.valueOf(i));
                return null;
        }
        return arVar;
    }

    public static <T extends k> T a(byte[] bArr, Class<T> cls) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        try {
            T t = (k) cls.newInstance();
            i iVar = new i(bArr);
            iVar.a("utf-8");
            t.a(iVar);
            return t;
        } catch (Throwable th) {
            if (!x.b(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return null;
        }
    }

    public static am a(Context context, int i, byte[] bArr) {
        com.tencent.bugly.mimsg.crashreport.common.info.a b2 = com.tencent.bugly.mimsg.crashreport.common.info.a.b();
        StrategyBean c2 = com.tencent.bugly.mimsg.crashreport.common.strategy.a.a().c();
        if (b2 == null || c2 == null) {
            x.e("Can not create request pkg for parameters is invalid.", new Object[0]);
            return null;
        }
        try {
            am amVar = new am();
            synchronized (b2) {
                amVar.a = 1;
                amVar.b = b2.f();
                amVar.c = b2.c;
                amVar.d = b2.j;
                amVar.e = b2.l;
                b2.getClass();
                amVar.f = "2.6.5";
                amVar.g = i;
                amVar.h = bArr == null ? "".getBytes() : bArr;
                amVar.i = b2.g;
                amVar.j = b2.h;
                amVar.k = new HashMap();
                amVar.l = b2.e();
                amVar.m = c2.p;
                amVar.o = b2.h();
                amVar.p = b.e(context);
                amVar.q = System.currentTimeMillis();
                amVar.r = b2.k();
                amVar.s = b2.j();
                amVar.t = b2.m();
                amVar.u = b2.l();
                amVar.v = b2.n();
                amVar.w = amVar.p;
                b2.getClass();
                amVar.n = "com.tencent.bugly";
                amVar.k.put("A26", b2.y());
                amVar.k.put("F11", b2.z);
                amVar.k.put("F12", b2.y);
                amVar.k.put("G1", b2.u());
                if (b2.B) {
                    amVar.k.put("G2", b2.K());
                    amVar.k.put("G3", b2.L());
                    amVar.k.put("G4", b2.M());
                    amVar.k.put("G5", b2.N());
                    amVar.k.put("G6", b2.O());
                    amVar.k.put("G7", Long.toString(b2.P()));
                }
                amVar.k.put("D3", b2.k);
                if (com.tencent.bugly.mimsg.b.b != null) {
                    for (com.tencent.bugly.mimsg.a aVar : com.tencent.bugly.mimsg.b.b) {
                        if (!(aVar.versionKey == null || aVar.version == null)) {
                            amVar.k.put(aVar.versionKey, aVar.version);
                        }
                    }
                }
                amVar.k.put("G15", z.b("G15", ""));
                amVar.k.put("D4", z.b("D4", "0"));
            }
            u a2 = u.a();
            if (!(a2 == null || a2.a || bArr == null)) {
                amVar.h = z.a(amVar.h, 2, 1, c2.u);
                if (amVar.h == null) {
                    x.e("reqPkg sbuffer error!", new Object[0]);
                    return null;
                }
            }
            Map D = b2.D();
            if (D != null) {
                for (Entry entry : D.entrySet()) {
                    amVar.k.put(entry.getKey(), entry.getValue());
                }
            }
            return amVar;
        } catch (Throwable th) {
            if (!x.b(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return null;
        }
    }

    private void a(ArrayList<String> arrayList, Object obj) {
        if (obj.getClass().isArray()) {
            if (!obj.getClass().getComponentType().toString().equals("byte")) {
                throw new IllegalArgumentException("only byte[] is supported");
            } else if (Array.getLength(obj) > 0) {
                arrayList.add("java.util.List");
                a(arrayList, Array.get(obj, 0));
            } else {
                arrayList.add("Array");
                arrayList.add("?");
            }
        } else if (obj instanceof Array) {
            throw new IllegalArgumentException("can not support Array, please use List");
        } else if (obj instanceof List) {
            arrayList.add("java.util.List");
            List list = (List) obj;
            if (list.size() > 0) {
                a(arrayList, list.get(0));
            } else {
                arrayList.add("?");
            }
        } else if (obj instanceof Map) {
            arrayList.add("java.util.Map");
            Map map = (Map) obj;
            if (map.size() > 0) {
                Object next = map.keySet().iterator().next();
                Object obj2 = map.get(next);
                arrayList.add(next.getClass().getName());
                a(arrayList, obj2);
                return;
            }
            arrayList.add("?");
            arrayList.add("?");
        } else {
            arrayList.add(obj.getClass().getName());
        }
    }

    public byte[] a() {
        j jVar = new j(0);
        jVar.a(this.b);
        jVar.a((Map<K, V>) this.a, 0);
        return l.a(jVar.a());
    }

    public void a(byte[] bArr) {
        this.c.a(bArr);
        this.c.a(this.b);
        HashMap hashMap = new HashMap(1);
        HashMap hashMap2 = new HashMap(1);
        hashMap2.put("", new byte[0]);
        hashMap.put("", hashMap2);
        this.a = this.c.a((Map<K, V>) hashMap, 0, false);
    }

    public static byte[] a(Object obj) {
        try {
            d dVar = new d();
            dVar.b();
            dVar.a("utf-8");
            dVar.b(1);
            dVar.b("RqdServer");
            dVar.c("sync");
            dVar.a("detail", obj);
            return dVar.a();
        } catch (Throwable th) {
            if (!x.b(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return null;
        }
    }

    public static an a(byte[] bArr, boolean z) {
        an anVar;
        if (bArr != null) {
            try {
                d dVar = new d();
                dVar.b();
                dVar.a("utf-8");
                dVar.a(bArr);
                Object b2 = dVar.b("detail", new an());
                if (an.class.isInstance(b2)) {
                    anVar = (an) an.class.cast(b2);
                } else {
                    anVar = null;
                }
                if (z || anVar == null || anVar.c == null || anVar.c.length <= 0) {
                    return anVar;
                }
                x.c("resp buf %d", Integer.valueOf(anVar.c.length));
                anVar.c = z.b(anVar.c, 2, 1, StrategyBean.d);
                if (anVar.c != null) {
                    return anVar;
                }
                x.e("resp sbuffer error!", new Object[0]);
                return null;
            } catch (Throwable th) {
                if (!x.b(th)) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        }
        return null;
    }

    public static byte[] a(k kVar) {
        try {
            j jVar = new j();
            jVar.a("utf-8");
            kVar.a(jVar);
            return jVar.b();
        } catch (Throwable th) {
            if (!x.b(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return null;
        }
    }
}
