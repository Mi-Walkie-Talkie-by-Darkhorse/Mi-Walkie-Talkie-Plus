package com.xiaomi.push;

import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* renamed from: com.xiaomi.push.hh */
/* loaded from: classes2.dex */
public class C6221hh {

    /* renamed from: a */
    private static C6221hh f21878a;

    /* renamed from: a */
    private Map<String, Object> f21879a = new ConcurrentHashMap();

    /* renamed from: b */
    private Map<String, Object> f21880b = new ConcurrentHashMap();

    private C6221hh() {
        m2627a();
    }

    /* renamed from: a */
    public static synchronized C6221hh m2628a() {
        C6221hh c6221hh;
        synchronized (C6221hh.class) {
            if (f21878a == null) {
                f21878a = new C6221hh();
            }
            c6221hh = f21878a;
        }
        return c6221hh;
    }

    /* renamed from: a */
    private String m2624a(String str, String str2) {
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

    /* renamed from: a */
    private ClassLoader[] m2626a() {
        ClassLoader[] classLoaderArr = {C6221hh.class.getClassLoader(), Thread.currentThread().getContextClassLoader()};
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 2; i++) {
            ClassLoader classLoader = classLoaderArr[i];
            if (classLoader != null) {
                arrayList.add(classLoader);
            }
        }
        return (ClassLoader[]) arrayList.toArray(new ClassLoader[arrayList.size()]);
    }

    /* renamed from: a */
    public Object m2625a(String str, String str2) {
        return this.f21879a.get(m2624a(str, str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void m2627a() {
        Map<String, Object> map;
        Object obj;
        Map<String, Object> map2;
        Object obj2;
        try {
            for (ClassLoader classLoader : m2626a()) {
                Enumeration<URL> resources = classLoader.getResources("META-INF/smack.providers");
                while (resources.hasMoreElements()) {
                    InputStream openStream = resources.nextElement().openStream();
                    XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                    newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
                    newPullParser.setInput(openStream, "UTF-8");
                    int eventType = newPullParser.getEventType();
                    do {
                        if (eventType == 2) {
                            if (newPullParser.getName().equals("iqProvider")) {
                                newPullParser.next();
                                newPullParser.next();
                                String nextText = newPullParser.nextText();
                                newPullParser.next();
                                newPullParser.next();
                                String nextText2 = newPullParser.nextText();
                                newPullParser.next();
                                newPullParser.next();
                                String nextText3 = newPullParser.nextText();
                                String m2624a = m2624a(nextText, nextText2);
                                if (!this.f21880b.containsKey(m2624a)) {
                                    try {
                                        Class<?> cls = Class.forName(nextText3);
                                        if (InterfaceC6219hf.class.isAssignableFrom(cls)) {
                                            map2 = this.f21880b;
                                            obj2 = cls.newInstance();
                                        } else if (C6207gy.class.isAssignableFrom(cls)) {
                                            map2 = this.f21880b;
                                            obj2 = cls;
                                        }
                                        map2.put(m2624a, obj2);
                                    } catch (ClassNotFoundException e) {
                                        e = e;
                                        e.printStackTrace();
                                        eventType = newPullParser.next();
                                        if (eventType == 1) {
                                            openStream.close();
                                        }
                                    }
                                }
                            } else if (newPullParser.getName().equals("extensionProvider")) {
                                newPullParser.next();
                                newPullParser.next();
                                String nextText4 = newPullParser.nextText();
                                newPullParser.next();
                                newPullParser.next();
                                String nextText5 = newPullParser.nextText();
                                newPullParser.next();
                                newPullParser.next();
                                String nextText6 = newPullParser.nextText();
                                String m2624a2 = m2624a(nextText4, nextText5);
                                if (!this.f21879a.containsKey(m2624a2)) {
                                    try {
                                        Class<?> cls2 = Class.forName(nextText6);
                                        if (InterfaceC6220hg.class.isAssignableFrom(cls2)) {
                                            map = this.f21879a;
                                            obj = cls2.newInstance();
                                        } else if (InterfaceC6212hb.class.isAssignableFrom(cls2)) {
                                            map = this.f21879a;
                                            obj = cls2;
                                        }
                                        map.put(m2624a2, obj);
                                    } catch (ClassNotFoundException e2) {
                                        e = e2;
                                        e.printStackTrace();
                                        eventType = newPullParser.next();
                                        if (eventType == 1) {
                                        }
                                    }
                                }
                            }
                        }
                        eventType = newPullParser.next();
                    } while (eventType == 1);
                    try {
                        openStream.close();
                    } catch (Exception unused) {
                    }
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m2623a(String str, String str2, Object obj) {
        if (!(obj instanceof InterfaceC6220hg) && !(obj instanceof Class)) {
            throw new IllegalArgumentException("Provider must be a PacketExtensionProvider or a Class instance.");
        }
        this.f21879a.put(m2624a(str, str2), obj);
    }
}
