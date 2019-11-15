package com.xiaomi.smack.provider;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.smack.packet.b;
import com.xiaomi.smack.packet.e;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public class c {
    private static c a;
    private Map<String, Object> b = new ConcurrentHashMap();
    private Map<String, Object> c = new ConcurrentHashMap();

    private c() {
        b();
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            if (a == null) {
                a = new c();
            }
            cVar = a;
        }
        return cVar;
    }

    private String b(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("<").append(str).append("/>");
        if (str != null) {
            sb.append("<").append(str2).append("/>");
        }
        return sb.toString();
    }

    private ClassLoader[] c() {
        ClassLoader[] classLoaderArr = {c.class.getClassLoader(), Thread.currentThread().getContextClassLoader()};
        ArrayList arrayList = new ArrayList();
        for (ClassLoader classLoader : classLoaderArr) {
            if (classLoader != null) {
                arrayList.add(classLoader);
            }
        }
        return (ClassLoader[]) arrayList.toArray(new ClassLoader[arrayList.size()]);
    }

    public Object a(String str, String str2) {
        return this.b.get(b(str, str2));
    }

    public void a(String str, String str2, Object obj) {
        if ((obj instanceof b) || (obj instanceof Class)) {
            this.b.put(b(str, str2), obj);
            return;
        }
        throw new IllegalArgumentException("Provider must be a PacketExtensionProvider or a Class instance.");
    }

    /* access modifiers changed from: protected */
    public void b() {
        try {
            for (ClassLoader resources : c()) {
                Enumeration resources2 = resources.getResources("META-INF/smack.providers");
                while (resources2.hasMoreElements()) {
                    InputStream inputStream = null;
                    try {
                        inputStream = ((URL) resources2.nextElement()).openStream();
                        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                        newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
                        newPullParser.setInput(inputStream, "UTF-8");
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
                                    String b2 = b(nextText, nextText2);
                                    if (!this.c.containsKey(b2)) {
                                        Class cls = Class.forName(nextText3);
                                        if (a.class.isAssignableFrom(cls)) {
                                            this.c.put(b2, cls.newInstance());
                                        } else if (b.class.isAssignableFrom(cls)) {
                                            this.c.put(b2, cls);
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
                                    String b3 = b(nextText4, nextText5);
                                    if (!this.b.containsKey(b3)) {
                                        try {
                                            Class cls2 = Class.forName(nextText6);
                                            if (b.class.isAssignableFrom(cls2)) {
                                                this.b.put(b3, cls2.newInstance());
                                            } else if (e.class.isAssignableFrom(cls2)) {
                                                this.b.put(b3, cls2);
                                            }
                                        } catch (ClassNotFoundException e) {
                                            ThrowableExtension.printStackTrace(e);
                                        }
                                    }
                                }
                            }
                            eventType = newPullParser.next();
                        } while (eventType != 1);
                    } catch (ClassNotFoundException e2) {
                        ThrowableExtension.printStackTrace(e2);
                    } catch (Throwable th) {
                        try {
                            inputStream.close();
                        } catch (Exception e3) {
                        }
                        throw th;
                    }
                    try {
                        inputStream.close();
                    } catch (Exception e4) {
                    }
                }
            }
        } catch (Exception e5) {
            ThrowableExtension.printStackTrace(e5);
        }
    }
}
