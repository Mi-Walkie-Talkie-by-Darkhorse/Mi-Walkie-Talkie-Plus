package com.xiaomi.push;

import android.text.TextUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.tencent.connect.common.Constants;
import com.umeng.analytics.pro.UMCommonContent;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6207gy;
import com.xiaomi.push.C6213hc;
import com.xiaomi.push.C6217he;
import com.xiaomi.push.service.C6381bd;
import com.xiaomi.push.service.C6398bm;
import com.xiaomi.push.service.C6445k;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import org.bouncycastle.i18n.TextBundle;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* renamed from: com.xiaomi.push.hi */
/* loaded from: classes2.dex */
public class C6222hi {

    /* renamed from: a */
    private static XmlPullParser f21881a;

    /* renamed from: a */
    public static C6206gx m2622a(String str, String str2, XmlPullParser xmlPullParser) {
        Object m2625a = C6221hh.m2628a().m2625a("all", "xm:chat");
        if (m2625a == null || !(m2625a instanceof C6445k)) {
            return null;
        }
        return ((C6445k) m2625a).m1354b(xmlPullParser);
    }

    /* renamed from: a */
    public static C6207gy m2616a(XmlPullParser xmlPullParser, AbstractC6191gj abstractC6191gj) {
        String attributeValue = xmlPullParser.getAttributeValue("", "id");
        String attributeValue2 = xmlPullParser.getAttributeValue("", "to");
        String attributeValue3 = xmlPullParser.getAttributeValue("", "from");
        String attributeValue4 = xmlPullParser.getAttributeValue("", "chid");
        C6207gy.C6208a m2688a = C6207gy.C6208a.m2688a(xmlPullParser.getAttributeValue("", "type"));
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            hashMap.put(attributeName, xmlPullParser.getAttributeValue("", attributeName));
        }
        C6207gy c6207gy = null;
        C6217he c6217he = null;
        while (!z) {
            int next = xmlPullParser.next();
            if (next == 2) {
                String name = xmlPullParser.getName();
                String namespace = xmlPullParser.getNamespace();
                if (name.equals("error")) {
                    c6217he = m2618a(xmlPullParser);
                } else {
                    c6207gy = new C6207gy();
                    c6207gy.m2662a(m2622a(name, namespace, xmlPullParser));
                }
            } else if (next == 3 && xmlPullParser.getName().equals("iq")) {
                z = true;
            }
        }
        if (c6207gy == null) {
            if (C6207gy.C6208a.f21793a == m2688a || C6207gy.C6208a.f21794b == m2688a) {
                C6223hj c6223hj = new C6223hj();
                c6223hj.m2653k(attributeValue);
                c6223hj.m2649m(attributeValue3);
                c6223hj.m2647n(attributeValue2);
                c6223hj.m2690a(C6207gy.C6208a.f21796d);
                c6223hj.m2651l(attributeValue4);
                c6223hj.m2661a(new C6217he(C6217he.C6218a.f21857e));
                abstractC6191gj.mo2754a(c6223hj);
                AbstractC5876b.m4138d("iq usage error. send packet in packet parser.");
                return null;
            }
            c6207gy = new C6224hk();
        }
        c6207gy.m2653k(attributeValue);
        c6207gy.m2649m(attributeValue2);
        c6207gy.m2651l(attributeValue4);
        c6207gy.m2647n(attributeValue3);
        c6207gy.m2690a(m2688a);
        c6207gy.m2661a(c6217he);
        c6207gy.m2689a(hashMap);
        return c6207gy;
    }

    /* renamed from: a */
    public static AbstractC6211ha m2621a(XmlPullParser xmlPullParser) {
        String str;
        boolean z = false;
        String str2 = null;
        if ("1".equals(xmlPullParser.getAttributeValue("", UMCommonContent.f19398az))) {
            String attributeValue = xmlPullParser.getAttributeValue("", "chid");
            String attributeValue2 = xmlPullParser.getAttributeValue("", "id");
            String attributeValue3 = xmlPullParser.getAttributeValue("", "from");
            String attributeValue4 = xmlPullParser.getAttributeValue("", "to");
            String attributeValue5 = xmlPullParser.getAttributeValue("", "type");
            C6381bd.C6383b m1498a = C6381bd.m1509a().m1498a(attributeValue, attributeValue4);
            if (m1498a == null) {
                m1498a = C6381bd.m1509a().m1498a(attributeValue, attributeValue3);
            }
            if (m1498a != null) {
                AbstractC6211ha abstractC6211ha = null;
                while (!z) {
                    int next = xmlPullParser.next();
                    if (next == 2) {
                        if (!UMCommonContent.f19398az.equals(xmlPullParser.getName())) {
                            throw new C6203gu("error while receiving a encrypted message with wrong format");
                        }
                        if (xmlPullParser.next() != 4) {
                            throw new C6203gu("error while receiving a encrypted message with wrong format");
                        }
                        String text = xmlPullParser.getText();
                        if ("5".equals(attributeValue) || Constants.VIA_SHARE_TYPE_INFO.equals(attributeValue)) {
                            C6209gz c6209gz = new C6209gz();
                            c6209gz.m2651l(attributeValue);
                            c6209gz.m2682b(true);
                            c6209gz.m2647n(attributeValue3);
                            c6209gz.m2649m(attributeValue4);
                            c6209gz.m2653k(attributeValue2);
                            c6209gz.m2674f(attributeValue5);
                            C6206gx c6206gx = new C6206gx(UMCommonContent.f19398az, null, null, null);
                            c6206gx.m2696a(text);
                            c6209gz.m2662a(c6206gx);
                            return c6209gz;
                        }
                        m2615a(C6398bm.m1458a(C6398bm.m1461a(m1498a.f23043h, attributeValue2), text));
                        f21881a.next();
                        abstractC6211ha = m2621a(f21881a);
                    } else if (next == 3 && xmlPullParser.getName().equals(CrashHianalyticsData.MESSAGE)) {
                        z = true;
                    }
                }
                if (abstractC6211ha != null) {
                    return abstractC6211ha;
                }
                throw new C6203gu("error while receiving a encrypted message with wrong format");
            }
            throw new C6203gu("the channel id is wrong while receiving a encrypted message");
        }
        C6209gz c6209gz2 = new C6209gz();
        String attributeValue6 = xmlPullParser.getAttributeValue("", "id");
        if (attributeValue6 == null) {
            attributeValue6 = "ID_NOT_AVAILABLE";
        }
        c6209gz2.m2653k(attributeValue6);
        c6209gz2.m2649m(xmlPullParser.getAttributeValue("", "to"));
        c6209gz2.m2647n(xmlPullParser.getAttributeValue("", "from"));
        c6209gz2.m2651l(xmlPullParser.getAttributeValue("", "chid"));
        c6209gz2.m2687a(xmlPullParser.getAttributeValue("", "appid"));
        try {
            str = xmlPullParser.getAttributeValue("", "transient");
        } catch (Exception unused) {
            str = null;
        }
        try {
            String attributeValue7 = xmlPullParser.getAttributeValue("", "seq");
            if (!TextUtils.isEmpty(attributeValue7)) {
                c6209gz2.m2683b(attributeValue7);
            }
        } catch (Exception unused2) {
        }
        try {
            String attributeValue8 = xmlPullParser.getAttributeValue("", "mseq");
            if (!TextUtils.isEmpty(attributeValue8)) {
                c6209gz2.m2680c(attributeValue8);
            }
        } catch (Exception unused3) {
        }
        try {
            String attributeValue9 = xmlPullParser.getAttributeValue("", "fseq");
            if (!TextUtils.isEmpty(attributeValue9)) {
                c6209gz2.m2678d(attributeValue9);
            }
        } catch (Exception unused4) {
        }
        try {
            String attributeValue10 = xmlPullParser.getAttributeValue("", "status");
            if (!TextUtils.isEmpty(attributeValue10)) {
                c6209gz2.m2676e(attributeValue10);
            }
        } catch (Exception unused5) {
        }
        c6209gz2.m2685a(!TextUtils.isEmpty(str) && str.equalsIgnoreCase("true"));
        c6209gz2.m2674f(xmlPullParser.getAttributeValue("", "type"));
        String m2614b = m2614b(xmlPullParser);
        if (m2614b == null || "".equals(m2614b.trim())) {
            AbstractC6211ha.m2643q();
        } else {
            c6209gz2.m2668j(m2614b);
        }
        while (!z) {
            int next2 = xmlPullParser.next();
            if (next2 == 2) {
                String name = xmlPullParser.getName();
                String namespace = xmlPullParser.getNamespace();
                if (TextUtils.isEmpty(namespace)) {
                    namespace = "xm";
                }
                if (name.equals("subject")) {
                    m2614b(xmlPullParser);
                    c6209gz2.m2672g(m2617a(xmlPullParser));
                } else if (name.equals("body")) {
                    String attributeValue11 = xmlPullParser.getAttributeValue("", "encode");
                    String m2617a = m2617a(xmlPullParser);
                    if (TextUtils.isEmpty(attributeValue11)) {
                        c6209gz2.m2670h(m2617a);
                    } else {
                        c6209gz2.m2686a(m2617a, attributeValue11);
                    }
                } else if (name.equals("thread")) {
                    if (str2 == null) {
                        str2 = xmlPullParser.nextText();
                    }
                } else if (name.equals("error")) {
                    c6209gz2.m2661a(m2618a(xmlPullParser));
                } else {
                    c6209gz2.m2662a(m2622a(name, namespace, xmlPullParser));
                }
            } else if (next2 == 3 && xmlPullParser.getName().equals(CrashHianalyticsData.MESSAGE)) {
                z = true;
            }
        }
        c6209gz2.m2669i(str2);
        return c6209gz2;
    }

    /* renamed from: a */
    public static C6213hc m2620a(XmlPullParser xmlPullParser) {
        C6213hc.EnumC6215b enumC6215b = C6213hc.EnumC6215b.available;
        String attributeValue = xmlPullParser.getAttributeValue("", "type");
        if (attributeValue != null && !attributeValue.equals("")) {
            try {
                enumC6215b = C6213hc.EnumC6215b.valueOf(attributeValue);
            } catch (IllegalArgumentException unused) {
                PrintStream printStream = System.err;
                printStream.println("Found invalid presence type " + attributeValue);
            }
        }
        C6213hc c6213hc = new C6213hc(enumC6215b);
        c6213hc.m2649m(xmlPullParser.getAttributeValue("", "to"));
        c6213hc.m2647n(xmlPullParser.getAttributeValue("", "from"));
        c6213hc.m2651l(xmlPullParser.getAttributeValue("", "chid"));
        String attributeValue2 = xmlPullParser.getAttributeValue("", "id");
        if (attributeValue2 == null) {
            attributeValue2 = "ID_NOT_AVAILABLE";
        }
        c6213hc.m2653k(attributeValue2);
        boolean z = false;
        while (!z) {
            int next = xmlPullParser.next();
            if (next == 2) {
                String name = xmlPullParser.getName();
                String namespace = xmlPullParser.getNamespace();
                if (name.equals("status")) {
                    c6213hc.m2636a(xmlPullParser.nextText());
                } else if (name.equals("priority")) {
                    try {
                        c6213hc.m2639a(Integer.parseInt(xmlPullParser.nextText()));
                    } catch (NumberFormatException unused2) {
                    } catch (IllegalArgumentException unused3) {
                        c6213hc.m2639a(0);
                    }
                } else if (name.equals("show")) {
                    String nextText = xmlPullParser.nextText();
                    try {
                        c6213hc.m2638a(C6213hc.EnumC6214a.valueOf(nextText));
                    } catch (IllegalArgumentException unused4) {
                        PrintStream printStream2 = System.err;
                        printStream2.println("Found invalid presence mode " + nextText);
                    }
                } else if (name.equals("error")) {
                    c6213hc.m2661a(m2618a(xmlPullParser));
                } else {
                    c6213hc.m2662a(m2622a(name, namespace, xmlPullParser));
                }
            } else if (next == 3 && xmlPullParser.getName().equals("presence")) {
                z = true;
            }
        }
        return c6213hc;
    }

    /* renamed from: a */
    public static C6216hd m2619a(XmlPullParser xmlPullParser) {
        C6216hd c6216hd = null;
        boolean z = false;
        while (!z) {
            int next = xmlPullParser.next();
            if (next == 2) {
                c6216hd = new C6216hd(xmlPullParser.getName());
            } else if (next == 3 && xmlPullParser.getName().equals("error")) {
                z = true;
            }
        }
        return c6216hd;
    }

    /* renamed from: a */
    public static C6217he m2618a(XmlPullParser xmlPullParser) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        String str = "-1";
        String str2 = null;
        String str3 = null;
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            if (xmlPullParser.getAttributeName(i).equals("code")) {
                str = xmlPullParser.getAttributeValue("", "code");
            }
            if (xmlPullParser.getAttributeName(i).equals("type")) {
                str3 = xmlPullParser.getAttributeValue("", "type");
            }
            if (xmlPullParser.getAttributeName(i).equals("reason")) {
                str2 = xmlPullParser.getAttributeValue("", "reason");
            }
        }
        String str4 = null;
        String str5 = null;
        while (!z) {
            int next = xmlPullParser.next();
            if (next == 2) {
                if (xmlPullParser.getName().equals(TextBundle.TEXT_ENTRY)) {
                    str5 = xmlPullParser.nextText();
                } else {
                    String name = xmlPullParser.getName();
                    String namespace = xmlPullParser.getNamespace();
                    if ("urn:ietf:params:xml:ns:xmpp-stanzas".equals(namespace)) {
                        str4 = name;
                    } else {
                        arrayList.add(m2622a(name, namespace, xmlPullParser));
                    }
                }
            } else if (next == 3) {
                if (xmlPullParser.getName().equals("error")) {
                    z = true;
                }
            } else if (next == 4) {
                str5 = xmlPullParser.getText();
            }
        }
        return new C6217he(Integer.parseInt(str), str3 == null ? "cancel" : str3, str2, str4, str5, arrayList);
    }

    /* renamed from: a */
    private static String m2617a(XmlPullParser xmlPullParser) {
        int depth = xmlPullParser.getDepth();
        String str = "";
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getDepth() == depth) {
                return str;
            }
            str = str + xmlPullParser.getText();
        }
    }

    /* renamed from: a */
    private static void m2615a(byte[] bArr) {
        if (f21881a == null) {
            try {
                XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                f21881a = newPullParser;
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
            } catch (XmlPullParserException e) {
                e.printStackTrace();
            }
        }
        f21881a.setInput(new InputStreamReader(new ByteArrayInputStream(bArr)));
    }

    /* renamed from: b */
    private static String m2614b(XmlPullParser xmlPullParser) {
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            if ("xml:lang".equals(attributeName) || ("lang".equals(attributeName) && "xml".equals(xmlPullParser.getAttributePrefix(i)))) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }
}
