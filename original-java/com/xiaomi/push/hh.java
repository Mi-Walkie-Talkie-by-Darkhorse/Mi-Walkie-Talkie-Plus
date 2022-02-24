package com.xiaomi.push;

import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class hh {

    /* renamed from: a  reason: collision with root package name */
    private static hh f9037a;

    /* renamed from: a  reason: collision with other field name */
    private Map<String, Object> f469a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Object> f9038b = new ConcurrentHashMap();

    private hh() {
        m342a();
    }

    public static synchronized hh a() {
        hh hhVar;
        synchronized (hh.class) {
            if (f9037a == null) {
                f9037a = new hh();
            }
            hhVar = f9037a;
        }
        return hhVar;
    }

    private String a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(str);
        sb.append("/>");
        if (str != null) {
            sb.append("<");
            sb.append(str2);
            sb.append("/>");
        }
        return sb.toString();
    }

    /* renamed from: a  reason: collision with other method in class */
    private ClassLoader[] m340a() {
        ClassLoader[] classLoaderArr = {hh.class.getClassLoader(), Thread.currentThread().getContextClassLoader()};
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 2; i++) {
            ClassLoader classLoader = classLoaderArr[i];
            if (classLoader != null) {
                arrayList.add(classLoader);
            }
        }
        return (ClassLoader[]) arrayList.toArray(new ClassLoader[arrayList.size()]);
    }

    /* renamed from: a  reason: collision with other method in class */
    public Object m341a(String str, String str2) {
        return this.f469a.get(a(str, str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a  reason: collision with other method in class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void m342a() {
        /*
            r10 = this;
            java.lang.ClassLoader[] r0 = r10.m340a()     // Catch: Exception -> 0x0104
            int r1 = r0.length     // Catch: Exception -> 0x0104
            r2 = 0
        L_0x0006:
            if (r2 >= r1) goto L_0x0108
            r3 = r0[r2]     // Catch: Exception -> 0x0104
            java.lang.String r4 = "META-INF/smack.providers"
            java.util.Enumeration r3 = r3.getResources(r4)     // Catch: Exception -> 0x0104
        L_0x0010:
            boolean r4 = r3.hasMoreElements()     // Catch: Exception -> 0x0104
            if (r4 == 0) goto L_0x0100
            java.lang.Object r4 = r3.nextElement()     // Catch: Exception -> 0x0104
            java.net.URL r4 = (java.net.URL) r4     // Catch: Exception -> 0x0104
            r5 = 0
            java.io.InputStream r5 = r4.openStream()     // Catch: all -> 0x00fb
            org.xmlpull.v1.XmlPullParserFactory r4 = org.xmlpull.v1.XmlPullParserFactory.newInstance()     // Catch: all -> 0x00fb
            org.xmlpull.v1.XmlPullParser r4 = r4.newPullParser()     // Catch: all -> 0x00fb
            java.lang.String r6 = "http://xmlpull.org/v1/doc/features.html#process-namespaces"
            r7 = 1
            r4.setFeature(r6, r7)     // Catch: all -> 0x00fb
            java.lang.String r6 = "UTF-8"
            r4.setInput(r5, r6)     // Catch: all -> 0x00fb
            int r6 = r4.getEventType()     // Catch: all -> 0x00fb
        L_0x0038:
            r8 = 2
            if (r6 != r8) goto L_0x00f0
            java.lang.String r6 = r4.getName()     // Catch: all -> 0x00fb
            java.lang.String r8 = "iqProvider"
            boolean r6 = r6.equals(r8)     // Catch: all -> 0x00fb
            if (r6 == 0) goto L_0x0097
            r4.next()     // Catch: all -> 0x00fb
            r4.next()     // Catch: all -> 0x00fb
            java.lang.String r6 = r4.nextText()     // Catch: all -> 0x00fb
            r4.next()     // Catch: all -> 0x00fb
            r4.next()     // Catch: all -> 0x00fb
            java.lang.String r8 = r4.nextText()     // Catch: all -> 0x00fb
            r4.next()     // Catch: all -> 0x00fb
            r4.next()     // Catch: all -> 0x00fb
            java.lang.String r9 = r4.nextText()     // Catch: all -> 0x00fb
            java.lang.String r6 = r10.a(r6, r8)     // Catch: all -> 0x00fb
            java.util.Map<java.lang.String, java.lang.Object> r8 = r10.f9038b     // Catch: all -> 0x00fb
            boolean r8 = r8.containsKey(r6)     // Catch: all -> 0x00fb
            if (r8 != 0) goto L_0x00f0
            java.lang.Class r8 = java.lang.Class.forName(r9)     // Catch: ClassNotFoundException -> 0x0092, all -> 0x00fb
            java.lang.Class<com.xiaomi.push.hf> r9 = com.xiaomi.push.hf.class
            boolean r9 = r9.isAssignableFrom(r8)     // Catch: ClassNotFoundException -> 0x0092, all -> 0x00fb
            if (r9 == 0) goto L_0x0087
            java.util.Map<java.lang.String, java.lang.Object> r9 = r10.f9038b     // Catch: ClassNotFoundException -> 0x0092, all -> 0x00fb
            java.lang.Object r8 = r8.newInstance()     // Catch: ClassNotFoundException -> 0x0092, all -> 0x00fb
        L_0x0083:
            r9.put(r6, r8)     // Catch: ClassNotFoundException -> 0x0092, all -> 0x00fb
            goto L_0x00f0
        L_0x0087:
            java.lang.Class<com.xiaomi.push.gy> r9 = com.xiaomi.push.gy.class
            boolean r9 = r9.isAssignableFrom(r8)     // Catch: ClassNotFoundException -> 0x0092, all -> 0x00fb
            if (r9 == 0) goto L_0x00f0
            java.util.Map<java.lang.String, java.lang.Object> r9 = r10.f9038b     // Catch: ClassNotFoundException -> 0x0092, all -> 0x00fb
            goto L_0x0083
        L_0x0092:
            r6 = move-exception
        L_0x0093:
            r6.printStackTrace()     // Catch: all -> 0x00fb
            goto L_0x00f0
        L_0x0097:
            java.lang.String r6 = r4.getName()     // Catch: all -> 0x00fb
            java.lang.String r8 = "extensionProvider"
            boolean r6 = r6.equals(r8)     // Catch: all -> 0x00fb
            if (r6 == 0) goto L_0x00f0
            r4.next()     // Catch: all -> 0x00fb
            r4.next()     // Catch: all -> 0x00fb
            java.lang.String r6 = r4.nextText()     // Catch: all -> 0x00fb
            r4.next()     // Catch: all -> 0x00fb
            r4.next()     // Catch: all -> 0x00fb
            java.lang.String r8 = r4.nextText()     // Catch: all -> 0x00fb
            r4.next()     // Catch: all -> 0x00fb
            r4.next()     // Catch: all -> 0x00fb
            java.lang.String r9 = r4.nextText()     // Catch: all -> 0x00fb
            java.lang.String r6 = r10.a(r6, r8)     // Catch: all -> 0x00fb
            java.util.Map<java.lang.String, java.lang.Object> r8 = r10.f469a     // Catch: all -> 0x00fb
            boolean r8 = r8.containsKey(r6)     // Catch: all -> 0x00fb
            if (r8 != 0) goto L_0x00f0
            java.lang.Class r8 = java.lang.Class.forName(r9)     // Catch: ClassNotFoundException -> 0x00ee, all -> 0x00fb
            java.lang.Class<com.xiaomi.push.hg> r9 = com.xiaomi.push.hg.class
            boolean r9 = r9.isAssignableFrom(r8)     // Catch: ClassNotFoundException -> 0x00ee, all -> 0x00fb
            if (r9 == 0) goto L_0x00e3
            java.util.Map<java.lang.String, java.lang.Object> r9 = r10.f469a     // Catch: ClassNotFoundException -> 0x00ee, all -> 0x00fb
            java.lang.Object r8 = r8.newInstance()     // Catch: ClassNotFoundException -> 0x00ee, all -> 0x00fb
        L_0x00df:
            r9.put(r6, r8)     // Catch: ClassNotFoundException -> 0x00ee, all -> 0x00fb
            goto L_0x00f0
        L_0x00e3:
            java.lang.Class<com.xiaomi.push.hb> r9 = com.xiaomi.push.hb.class
            boolean r9 = r9.isAssignableFrom(r8)     // Catch: ClassNotFoundException -> 0x00ee, all -> 0x00fb
            if (r9 == 0) goto L_0x00f0
            java.util.Map<java.lang.String, java.lang.Object> r9 = r10.f469a     // Catch: ClassNotFoundException -> 0x00ee, all -> 0x00fb
            goto L_0x00df
        L_0x00ee:
            r6 = move-exception
            goto L_0x0093
        L_0x00f0:
            int r6 = r4.next()     // Catch: all -> 0x00fb
            if (r6 != r7) goto L_0x0038
            r5.close()     // Catch: Exception -> 0x0010
            goto L_0x0010
        L_0x00fb:
            r0 = move-exception
            r5.close()     // Catch: Exception -> 0x00ff
        L_0x00ff:
            throw r0     // Catch: Exception -> 0x0104
        L_0x0100:
            int r2 = r2 + 1
            goto L_0x0006
        L_0x0104:
            r0 = move-exception
            r0.printStackTrace()
        L_0x0108:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.hh.m342a():void");
    }

    public void a(String str, String str2, Object obj) {
        if ((obj instanceof hg) || (obj instanceof Class)) {
            this.f469a.put(a(str, str2), obj);
            return;
        }
        throw new IllegalArgumentException("Provider must be a PacketExtensionProvider or a Class instance.");
    }
}
