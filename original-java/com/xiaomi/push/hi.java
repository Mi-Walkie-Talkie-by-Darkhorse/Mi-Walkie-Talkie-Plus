package com.xiaomi.push;

import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import com.umeng.analytics.pro.ai;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.gy;
import com.xiaomi.push.hc;
import com.xiaomi.push.he;
import com.xiaomi.push.service.bd;
import com.xiaomi.push.service.bm;
import com.xiaomi.push.service.k;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import org.bouncycastle.i18n.TextBundle;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes2.dex */
public class hi {

    /* renamed from: a  reason: collision with root package name */
    private static XmlPullParser f9039a;

    public static gx a(String str, String str2, XmlPullParser xmlPullParser) {
        Object a2 = hh.a().m341a("all", "xm:chat");
        if (a2 == null || !(a2 instanceof k)) {
            return null;
        }
        return ((k) a2).b(xmlPullParser);
    }

    public static gy a(XmlPullParser xmlPullParser, gj gjVar) {
        String attributeValue = xmlPullParser.getAttributeValue("", "id");
        String attributeValue2 = xmlPullParser.getAttributeValue("", "to");
        String attributeValue3 = xmlPullParser.getAttributeValue("", "from");
        String attributeValue4 = xmlPullParser.getAttributeValue("", "chid");
        gy.a a2 = gy.a.a(xmlPullParser.getAttributeValue("", "type"));
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            hashMap.put(attributeName, xmlPullParser.getAttributeValue("", attributeName));
        }
        gy gyVar = null;
        he heVar = null;
        while (!z) {
            int next = xmlPullParser.next();
            if (next == 2) {
                String name = xmlPullParser.getName();
                String namespace = xmlPullParser.getNamespace();
                if (name.equals("error")) {
                    heVar = m345a(xmlPullParser);
                } else {
                    gyVar = new gy();
                    gyVar.a(a(name, namespace, xmlPullParser));
                }
            } else if (next == 3 && xmlPullParser.getName().equals("iq")) {
                z = true;
            }
        }
        if (gyVar == null) {
            if (gy.a.f9012a == a2 || gy.a.f9013b == a2) {
                hj hjVar = new hj();
                hjVar.k(attributeValue);
                hjVar.m(attributeValue3);
                hjVar.n(attributeValue2);
                hjVar.a(gy.a.d);
                hjVar.l(attributeValue4);
                hjVar.a(new he(he.a.e));
                gjVar.a(hjVar);
                b.d("iq usage error. send packet in packet parser.");
                return null;
            }
            gyVar = new hk();
        }
        gyVar.k(attributeValue);
        gyVar.m(attributeValue2);
        gyVar.l(attributeValue4);
        gyVar.n(attributeValue3);
        gyVar.a(a2);
        gyVar.a(heVar);
        gyVar.a(hashMap);
        return gyVar;
    }

    public static ha a(XmlPullParser xmlPullParser) {
        String str;
        boolean z = false;
        String str2 = null;
        if ("1".equals(xmlPullParser.getAttributeValue("", ai.az))) {
            String attributeValue = xmlPullParser.getAttributeValue("", "chid");
            String attributeValue2 = xmlPullParser.getAttributeValue("", "id");
            String attributeValue3 = xmlPullParser.getAttributeValue("", "from");
            String attributeValue4 = xmlPullParser.getAttributeValue("", "to");
            String attributeValue5 = xmlPullParser.getAttributeValue("", "type");
            bd.b a2 = bd.a().a(attributeValue, attributeValue4);
            if (a2 == null) {
                a2 = bd.a().a(attributeValue, attributeValue3);
            }
            if (a2 != null) {
                ha haVar = null;
                while (!z) {
                    int next = xmlPullParser.next();
                    if (next == 2) {
                        if (!ai.az.equals(xmlPullParser.getName())) {
                            throw new gu("error while receiving a encrypted message with wrong format");
                        } else if (xmlPullParser.next() == 4) {
                            String text = xmlPullParser.getText();
                            if ("5".equals(attributeValue) || Constants.VIA_SHARE_TYPE_INFO.equals(attributeValue)) {
                                gz gzVar = new gz();
                                gzVar.l(attributeValue);
                                gzVar.b(true);
                                gzVar.n(attributeValue3);
                                gzVar.m(attributeValue4);
                                gzVar.k(attributeValue2);
                                gzVar.f(attributeValue5);
                                gx gxVar = new gx(ai.az, null, null, null);
                                gxVar.m331a(text);
                                gzVar.a(gxVar);
                                return gzVar;
                            }
                            a(bm.a(bm.a(a2.h, attributeValue2), text));
                            f9039a.next();
                            haVar = a(f9039a);
                        } else {
                            throw new gu("error while receiving a encrypted message with wrong format");
                        }
                    } else if (next == 3 && xmlPullParser.getName().equals("message")) {
                        z = true;
                    }
                }
                if (haVar != null) {
                    return haVar;
                }
                throw new gu("error while receiving a encrypted message with wrong format");
            }
            throw new gu("the channel id is wrong while receiving a encrypted message");
        }
        gz gzVar2 = new gz();
        String attributeValue6 = xmlPullParser.getAttributeValue("", "id");
        if (attributeValue6 == null) {
            attributeValue6 = "ID_NOT_AVAILABLE";
        }
        gzVar2.k(attributeValue6);
        gzVar2.m(xmlPullParser.getAttributeValue("", "to"));
        gzVar2.n(xmlPullParser.getAttributeValue("", "from"));
        gzVar2.l(xmlPullParser.getAttributeValue("", "chid"));
        gzVar2.a(xmlPullParser.getAttributeValue("", "appid"));
        try {
            str = xmlPullParser.getAttributeValue("", "transient");
        } catch (Exception unused) {
            str = null;
        }
        try {
            String attributeValue7 = xmlPullParser.getAttributeValue("", "seq");
            if (!TextUtils.isEmpty(attributeValue7)) {
                gzVar2.b(attributeValue7);
            }
        } catch (Exception unused2) {
        }
        try {
            String attributeValue8 = xmlPullParser.getAttributeValue("", "mseq");
            if (!TextUtils.isEmpty(attributeValue8)) {
                gzVar2.c(attributeValue8);
            }
        } catch (Exception unused3) {
        }
        try {
            String attributeValue9 = xmlPullParser.getAttributeValue("", "fseq");
            if (!TextUtils.isEmpty(attributeValue9)) {
                gzVar2.d(attributeValue9);
            }
        } catch (Exception unused4) {
        }
        try {
            String attributeValue10 = xmlPullParser.getAttributeValue("", "status");
            if (!TextUtils.isEmpty(attributeValue10)) {
                gzVar2.e(attributeValue10);
            }
        } catch (Exception unused5) {
        }
        gzVar2.a(!TextUtils.isEmpty(str) && str.equalsIgnoreCase("true"));
        gzVar2.f(xmlPullParser.getAttributeValue("", "type"));
        String b2 = b(xmlPullParser);
        if (b2 == null || "".equals(b2.trim())) {
            ha.q();
        } else {
            gzVar2.j(b2);
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
                    b(xmlPullParser);
                    gzVar2.g(m346a(xmlPullParser));
                } else if (name.equals("body")) {
                    String attributeValue11 = xmlPullParser.getAttributeValue("", "encode");
                    String a3 = m346a(xmlPullParser);
                    if (!TextUtils.isEmpty(attributeValue11)) {
                        gzVar2.a(a3, attributeValue11);
                    } else {
                        gzVar2.h(a3);
                    }
                } else if (name.equals("thread")) {
                    if (str2 == null) {
                        str2 = xmlPullParser.nextText();
                    }
                } else if (name.equals("error")) {
                    gzVar2.a(m345a(xmlPullParser));
                } else {
                    gzVar2.a(a(name, namespace, xmlPullParser));
                }
            } else if (next2 == 3 && xmlPullParser.getName().equals("message")) {
                z = true;
            }
        }
        gzVar2.i(str2);
        return gzVar2;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static hc m343a(XmlPullParser xmlPullParser) {
        hc.b bVar = hc.b.available;
        String attributeValue = xmlPullParser.getAttributeValue("", "type");
        if (attributeValue != null && !attributeValue.equals("")) {
            try {
                bVar = hc.b.valueOf(attributeValue);
            } catch (IllegalArgumentException unused) {
                PrintStream printStream = System.err;
                printStream.println("Found invalid presence type " + attributeValue);
            }
        }
        hc hcVar = new hc(bVar);
        hcVar.m(xmlPullParser.getAttributeValue("", "to"));
        hcVar.n(xmlPullParser.getAttributeValue("", "from"));
        hcVar.l(xmlPullParser.getAttributeValue("", "chid"));
        String attributeValue2 = xmlPullParser.getAttributeValue("", "id");
        if (attributeValue2 == null) {
            attributeValue2 = "ID_NOT_AVAILABLE";
        }
        hcVar.k(attributeValue2);
        boolean z = false;
        while (!z) {
            int next = xmlPullParser.next();
            if (next == 2) {
                String name = xmlPullParser.getName();
                String namespace = xmlPullParser.getNamespace();
                if (name.equals("status")) {
                    hcVar.a(xmlPullParser.nextText());
                } else if (name.equals("priority")) {
                    try {
                        hcVar.a(Integer.parseInt(xmlPullParser.nextText()));
                    } catch (NumberFormatException unused2) {
                    } catch (IllegalArgumentException unused3) {
                        hcVar.a(0);
                    }
                } else if (name.equals("show")) {
                    String nextText = xmlPullParser.nextText();
                    try {
                        hcVar.a(hc.a.valueOf(nextText));
                    } catch (IllegalArgumentException unused4) {
                        PrintStream printStream2 = System.err;
                        printStream2.println("Found invalid presence mode " + nextText);
                    }
                } else if (name.equals("error")) {
                    hcVar.a(m345a(xmlPullParser));
                } else {
                    hcVar.a(a(name, namespace, xmlPullParser));
                }
            } else if (next == 3 && xmlPullParser.getName().equals("presence")) {
                z = true;
            }
        }
        return hcVar;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static hd m344a(XmlPullParser xmlPullParser) {
        hd hdVar = null;
        boolean z = false;
        while (!z) {
            int next = xmlPullParser.next();
            if (next == 2) {
                hdVar = new hd(xmlPullParser.getName());
            } else if (next == 3 && xmlPullParser.getName().equals("error")) {
                z = true;
            }
        }
        return hdVar;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static he m345a(XmlPullParser xmlPullParser) {
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
                        arrayList.add(a(name, namespace, xmlPullParser));
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
        return new he(Integer.parseInt(str), str3 == null ? "cancel" : str3, str2, str4, str5, arrayList);
    }

    /* renamed from: a  reason: collision with other method in class */
    private static String m346a(XmlPullParser xmlPullParser) {
        int depth = xmlPullParser.getDepth();
        String str = "";
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getDepth() == depth) {
                return str;
            }
            str = str + xmlPullParser.getText();
        }
    }

    private static void a(byte[] bArr) {
        if (f9039a == null) {
            try {
                XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                f9039a = newPullParser;
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
            } catch (XmlPullParserException e) {
                e.printStackTrace();
            }
        }
        f9039a.setInput(new InputStreamReader(new ByteArrayInputStream(bArr)));
    }

    private static String b(XmlPullParser xmlPullParser) {
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            if ("xml:lang".equals(attributeName) || ("lang".equals(attributeName) && "xml".equals(xmlPullParser.getAttributePrefix(i)))) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }
}
