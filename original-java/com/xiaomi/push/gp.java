package com.xiaomi.push;

import java.io.InputStream;
import java.io.PrintStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes2.dex */
public final class gp {

    /* renamed from: a  reason: collision with root package name */
    private static int f8996a = 5000;

    /* renamed from: a  reason: collision with other field name */
    private static Vector<String> f443a = new Vector<>();

    /* renamed from: b  reason: collision with root package name */
    private static int f8997b = 330000;

    /* renamed from: c  reason: collision with root package name */
    private static int f8998c = 600000;
    private static int d = 330000;

    static {
        try {
            for (ClassLoader classLoader : m325a()) {
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
                                    a(newPullParser);
                                } else if (newPullParser.getName().equals("packetReplyTimeout")) {
                                    f8996a = a(newPullParser, f8996a);
                                } else if (newPullParser.getName().equals("keepAliveInterval")) {
                                    f8997b = a(newPullParser, f8997b);
                                } else if (newPullParser.getName().equals("mechName")) {
                                    f443a.add(newPullParser.nextText());
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

    private gp() {
    }

    public static int a() {
        return f8997b;
    }

    private static int a(XmlPullParser xmlPullParser, int i) {
        try {
            return Integer.parseInt(xmlPullParser.nextText());
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return i;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static String m324a() {
        return "3.1.0";
    }

    private static void a(XmlPullParser xmlPullParser) {
        String nextText = xmlPullParser.nextText();
        try {
            Class.forName(nextText);
        } catch (ClassNotFoundException unused) {
            PrintStream printStream = System.err;
            printStream.println("Error! A startup class specified in smack-config.xml could not be loaded: " + nextText);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    private static ClassLoader[] m325a() {
        ClassLoader[] classLoaderArr = {gp.class.getClassLoader(), Thread.currentThread().getContextClassLoader()};
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 2; i++) {
            ClassLoader classLoader = classLoaderArr[i];
            if (classLoader != null) {
                arrayList.add(classLoader);
            }
        }
        return (ClassLoader[]) arrayList.toArray(new ClassLoader[arrayList.size()]);
    }

    public static int b() {
        return f8998c;
    }
}
