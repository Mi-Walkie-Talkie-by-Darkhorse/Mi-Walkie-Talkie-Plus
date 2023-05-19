package com.xiaomi.push;

import java.io.InputStream;
import java.io.PrintStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* renamed from: com.xiaomi.push.gp */
/* loaded from: classes2.dex */
public final class C6198gp {

    /* renamed from: a */
    private static int f21759a = 5000;

    /* renamed from: a */
    private static Vector<String> f21760a = new Vector<>();

    /* renamed from: b */
    private static int f21761b = 330000;

    /* renamed from: c */
    private static int f21762c = 600000;

    /* renamed from: d */
    private static int f21763d = 330000;

    static {
        try {
            for (ClassLoader classLoader : m2725a()) {
                Enumeration<URL> resources = classLoader.getResources("META-INF/smack-config.xml");
                while (resources.hasMoreElements()) {
                    InputStream inputStream = null;
                    try {
                        inputStream = resources.nextElement().openStream();
                        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                        newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
                        newPullParser.setInput(inputStream, "UTF-8");
                        int eventType = newPullParser.getEventType();
                        do {
                            if (eventType == 2) {
                                if (newPullParser.getName().equals("className")) {
                                    m2724a(newPullParser);
                                } else if (newPullParser.getName().equals("packetReplyTimeout")) {
                                    f21759a = m2723a(newPullParser, f21759a);
                                } else if (newPullParser.getName().equals("keepAliveInterval")) {
                                    f21761b = m2723a(newPullParser, f21761b);
                                } else if (newPullParser.getName().equals("mechName")) {
                                    f21760a.add(newPullParser.nextText());
                                }
                            }
                            eventType = newPullParser.next();
                        } while (eventType != 1);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    try {
                        inputStream.close();
                    } catch (Exception unused) {
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private C6198gp() {
    }

    /* renamed from: a */
    public static int m2727a() {
        return f21761b;
    }

    /* renamed from: a */
    private static int m2723a(XmlPullParser xmlPullParser, int i) {
        try {
            return Integer.parseInt(xmlPullParser.nextText());
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return i;
        }
    }

    /* renamed from: a */
    public static String m2726a() {
        return "3.1.0";
    }

    /* renamed from: a */
    private static void m2724a(XmlPullParser xmlPullParser) {
        String nextText = xmlPullParser.nextText();
        try {
            Class.forName(nextText);
        } catch (ClassNotFoundException unused) {
            PrintStream printStream = System.err;
            printStream.println("Error! A startup class specified in smack-config.xml could not be loaded: " + nextText);
        }
    }

    /* renamed from: a */
    private static ClassLoader[] m2725a() {
        ClassLoader[] classLoaderArr = {C6198gp.class.getClassLoader(), Thread.currentThread().getContextClassLoader()};
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 2; i++) {
            ClassLoader classLoader = classLoaderArr[i];
            if (classLoader != null) {
                arrayList.add(classLoader);
            }
        }
        return (ClassLoader[]) arrayList.toArray(new ClassLoader[arrayList.size()]);
    }

    /* renamed from: b */
    public static int m2722b() {
        return f21762c;
    }
}
