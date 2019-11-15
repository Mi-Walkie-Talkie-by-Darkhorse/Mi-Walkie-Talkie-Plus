package com.xiaomi.smack;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public final class g {
    private static int a;
    private static int b;
    private static int c = 300000;
    private static int d = 330000;
    private static Vector<String> e = new Vector<>();

    static {
        a = 5000;
        b = 330000;
        try {
            for (ClassLoader resources : d()) {
                Enumeration resources2 = resources.getResources("META-INF/smack-config.xml");
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
                                if (newPullParser.getName().equals("className")) {
                                    a(newPullParser);
                                } else if (newPullParser.getName().equals("packetReplyTimeout")) {
                                    a = a(newPullParser, a);
                                } else if (newPullParser.getName().equals("keepAliveInterval")) {
                                    b = a(newPullParser, b);
                                } else if (newPullParser.getName().equals("mechName")) {
                                    e.add(newPullParser.nextText());
                                }
                            }
                            eventType = newPullParser.next();
                        } while (eventType != 1);
                    } catch (Exception e2) {
                        ThrowableExtension.printStackTrace(e2);
                    } finally {
                        try {
                            inputStream.close();
                        } catch (Exception e3) {
                        }
                    }
                }
            }
        } catch (Exception e4) {
            ThrowableExtension.printStackTrace(e4);
        }
    }

    private g() {
    }

    private static int a(XmlPullParser xmlPullParser, int i) {
        try {
            return Integer.parseInt(xmlPullParser.nextText());
        } catch (NumberFormatException e2) {
            ThrowableExtension.printStackTrace(e2);
            return i;
        }
    }

    public static String a() {
        return "3.1.0";
    }

    private static void a(XmlPullParser xmlPullParser) {
        String nextText = xmlPullParser.nextText();
        try {
            Class.forName(nextText);
        } catch (ClassNotFoundException e2) {
            System.err.println("Error! A startup class specified in smack-config.xml could not be loaded: " + nextText);
        }
    }

    public static int b() {
        return b;
    }

    public static int c() {
        return c;
    }

    private static ClassLoader[] d() {
        ClassLoader[] classLoaderArr = {g.class.getClassLoader(), Thread.currentThread().getContextClassLoader()};
        ArrayList arrayList = new ArrayList();
        for (ClassLoader classLoader : classLoaderArr) {
            if (classLoader != null) {
                arrayList.add(classLoader);
            }
        }
        return (ClassLoader[]) arrayList.toArray(new ClassLoader[arrayList.size()]);
    }
}
