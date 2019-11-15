package com.xiaomi.smack.util;

import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.mimsgsdk.database.IMessageDao;
import com.tencent.connect.common.Constants;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.push.service.am;
import com.xiaomi.push.service.as;
import com.xiaomi.smack.l;
import com.xiaomi.smack.packet.b;
import com.xiaomi.smack.packet.d;
import com.xiaomi.smack.packet.f;
import com.xiaomi.smack.packet.g;
import com.xiaomi.smack.packet.h;
import com.xiaomi.smack.provider.c;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.i18n.TextBundle;
import org.jboss.netty.channel.ChannelPipelineCoverage;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class a {
    private static XmlPullParser a = null;

    public static com.xiaomi.smack.packet.a a(String str, String str2, XmlPullParser xmlPullParser) {
        Object a2 = c.a().a(ChannelPipelineCoverage.ALL, "xm:chat");
        if (a2 == null || !(a2 instanceof com.xiaomi.push.service.c)) {
            return null;
        }
        return ((com.xiaomi.push.service.c) a2).b(xmlPullParser);
    }

    public static b a(XmlPullParser xmlPullParser, com.xiaomi.smack.a aVar) {
        String attributeValue = xmlPullParser.getAttributeValue("", "id");
        String attributeValue2 = xmlPullParser.getAttributeValue("", "to");
        String attributeValue3 = xmlPullParser.getAttributeValue("", "from");
        String attributeValue4 = xmlPullParser.getAttributeValue("", "chid");
        com.xiaomi.smack.packet.b.a a2 = com.xiaomi.smack.packet.b.a.a(xmlPullParser.getAttributeValue("", "type"));
        HashMap hashMap = new HashMap();
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            hashMap.put(attributeName, xmlPullParser.getAttributeValue("", attributeName));
        }
        boolean z = false;
        h hVar = null;
        b bVar = null;
        while (!z) {
            int next = xmlPullParser.next();
            if (next == 2) {
                String name = xmlPullParser.getName();
                String namespace = xmlPullParser.getNamespace();
                if (name.equals(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2)) {
                    hVar = d(xmlPullParser);
                } else {
                    bVar = new b();
                    bVar.a(a(name, namespace, xmlPullParser));
                }
            } else if (next == 3 && xmlPullParser.getName().equals("iq")) {
                z = true;
            }
            boolean z2 = z;
            b bVar2 = bVar;
            hVar = hVar;
            bVar = bVar2;
            z = z2;
        }
        if (bVar == null) {
            if (com.xiaomi.smack.packet.b.a.a == a2 || com.xiaomi.smack.packet.b.a.b == a2) {
                b bVar3 = new b();
                bVar3.k(attributeValue);
                bVar3.m(attributeValue3);
                bVar3.n(attributeValue2);
                bVar3.a(com.xiaomi.smack.packet.b.a.d);
                bVar3.l(attributeValue4);
                bVar3.a(new h(com.xiaomi.smack.packet.h.a.e));
                aVar.a((d) bVar3);
                com.xiaomi.channel.commonutils.logger.b.d("iq usage error. send packet in packet parser.");
                return null;
            }
            bVar = new c();
        }
        bVar.k(attributeValue);
        bVar.m(attributeValue2);
        bVar.l(attributeValue4);
        bVar.n(attributeValue3);
        bVar.a(a2);
        bVar.a(hVar);
        bVar.a((Map<String, String>) hashMap);
        return bVar;
    }

    public static d a(XmlPullParser xmlPullParser) {
        String str;
        if ("1".equals(xmlPullParser.getAttributeValue("", "s"))) {
            String attributeValue = xmlPullParser.getAttributeValue("", "chid");
            String attributeValue2 = xmlPullParser.getAttributeValue("", "id");
            String attributeValue3 = xmlPullParser.getAttributeValue("", "from");
            String attributeValue4 = xmlPullParser.getAttributeValue("", "to");
            String attributeValue5 = xmlPullParser.getAttributeValue("", "type");
            am.b b = am.a().b(attributeValue, attributeValue4);
            am.b bVar = b == null ? am.a().b(attributeValue, attributeValue3) : b;
            if (bVar == null) {
                throw new l("the channel id is wrong while receiving a encrypted message");
            }
            boolean z = false;
            d dVar = null;
            while (!z) {
                int next = xmlPullParser.next();
                if (next == 2) {
                    if (!"s".equals(xmlPullParser.getName())) {
                        throw new l("error while receiving a encrypted message with wrong format");
                    } else if (xmlPullParser.next() != 4) {
                        throw new l("error while receiving a encrypted message with wrong format");
                    } else {
                        String text = xmlPullParser.getText();
                        if ("5".equals(attributeValue) || Constants.VIA_SHARE_TYPE_INFO.equals(attributeValue)) {
                            com.xiaomi.smack.packet.c cVar = new com.xiaomi.smack.packet.c();
                            cVar.l(attributeValue);
                            cVar.b(true);
                            cVar.n(attributeValue3);
                            cVar.m(attributeValue4);
                            cVar.k(attributeValue2);
                            cVar.f(attributeValue5);
                            com.xiaomi.smack.packet.a aVar = new com.xiaomi.smack.packet.a("s", null, null, null);
                            aVar.b(text);
                            cVar.a(aVar);
                            return cVar;
                        }
                        a(as.b(as.a(bVar.i, attributeValue2), text));
                        a.next();
                        dVar = a(a);
                    }
                } else if (next == 3 && xmlPullParser.getName().equals("message")) {
                    z = true;
                }
            }
            if (dVar != null) {
                return dVar;
            }
            throw new l("error while receiving a encrypted message with wrong format");
        }
        com.xiaomi.smack.packet.c cVar2 = new com.xiaomi.smack.packet.c();
        String attributeValue6 = xmlPullParser.getAttributeValue("", "id");
        if (attributeValue6 == null) {
            attributeValue6 = "ID_NOT_AVAILABLE";
        }
        cVar2.k(attributeValue6);
        cVar2.m(xmlPullParser.getAttributeValue("", "to"));
        cVar2.n(xmlPullParser.getAttributeValue("", "from"));
        cVar2.l(xmlPullParser.getAttributeValue("", "chid"));
        cVar2.a(xmlPullParser.getAttributeValue("", "appid"));
        try {
            str = xmlPullParser.getAttributeValue("", "transient");
        } catch (Exception e) {
            str = null;
        }
        try {
            String attributeValue7 = xmlPullParser.getAttributeValue("", Values.SEQ);
            if (!TextUtils.isEmpty(attributeValue7)) {
                cVar2.b(attributeValue7);
            }
        } catch (Exception e2) {
        }
        try {
            String attributeValue8 = xmlPullParser.getAttributeValue("", "mseq");
            if (!TextUtils.isEmpty(attributeValue8)) {
                cVar2.c(attributeValue8);
            }
        } catch (Exception e3) {
        }
        try {
            String attributeValue9 = xmlPullParser.getAttributeValue("", "fseq");
            if (!TextUtils.isEmpty(attributeValue9)) {
                cVar2.d(attributeValue9);
            }
        } catch (Exception e4) {
        }
        try {
            String attributeValue10 = xmlPullParser.getAttributeValue("", "status");
            if (!TextUtils.isEmpty(attributeValue10)) {
                cVar2.e(attributeValue10);
            }
        } catch (Exception e5) {
        }
        cVar2.a(!TextUtils.isEmpty(str) && str.equalsIgnoreCase("true"));
        cVar2.f(xmlPullParser.getAttributeValue("", "type"));
        String f = f(xmlPullParser);
        if (f == null || "".equals(f.trim())) {
            d.u();
        } else {
            cVar2.j(f);
        }
        String str2 = null;
        boolean z2 = false;
        while (!z2) {
            int next2 = xmlPullParser.next();
            if (next2 == 2) {
                String name = xmlPullParser.getName();
                String namespace = xmlPullParser.getNamespace();
                if (TextUtils.isEmpty(namespace)) {
                    namespace = "xm";
                }
                if (name.equals("subject")) {
                    if (f(xmlPullParser) == null) {
                    }
                    cVar2.g(e(xmlPullParser));
                } else if (name.equals(IMessageDao.BODY)) {
                    String attributeValue11 = xmlPullParser.getAttributeValue("", "encode");
                    String e6 = e(xmlPullParser);
                    if (!TextUtils.isEmpty(attributeValue11)) {
                        cVar2.a(e6, attributeValue11);
                    } else {
                        cVar2.h(e6);
                    }
                } else if (name.equals("thread")) {
                    if (str2 == null) {
                        str2 = xmlPullParser.nextText();
                    }
                } else if (name.equals(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2)) {
                    cVar2.a(d(xmlPullParser));
                } else {
                    cVar2.a(a(name, namespace, xmlPullParser));
                }
            } else if (next2 == 3 && xmlPullParser.getName().equals("message")) {
                z2 = true;
            }
        }
        cVar2.i(str2);
        return cVar2;
    }

    private static void a(byte[] bArr) {
        if (a == null) {
            try {
                a = XmlPullParserFactory.newInstance().newPullParser();
                a.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
            } catch (XmlPullParserException e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
        a.setInput(new InputStreamReader(new ByteArrayInputStream(bArr)));
    }

    public static f b(XmlPullParser xmlPullParser) {
        f.b bVar = f.b.available;
        String attributeValue = xmlPullParser.getAttributeValue("", "type");
        if (attributeValue != null && !attributeValue.equals("")) {
            try {
                bVar = f.b.valueOf(attributeValue);
            } catch (IllegalArgumentException e) {
                System.err.println("Found invalid presence type " + attributeValue);
            }
        }
        f fVar = new f(bVar);
        fVar.m(xmlPullParser.getAttributeValue("", "to"));
        fVar.n(xmlPullParser.getAttributeValue("", "from"));
        fVar.l(xmlPullParser.getAttributeValue("", "chid"));
        String attributeValue2 = xmlPullParser.getAttributeValue("", "id");
        if (attributeValue2 == null) {
            attributeValue2 = "ID_NOT_AVAILABLE";
        }
        fVar.k(attributeValue2);
        boolean z = false;
        while (!z) {
            int next = xmlPullParser.next();
            if (next == 2) {
                String name = xmlPullParser.getName();
                String namespace = xmlPullParser.getNamespace();
                if (name.equals("status")) {
                    fVar.a(xmlPullParser.nextText());
                } else if (name.equals("priority")) {
                    try {
                        fVar.a(Integer.parseInt(xmlPullParser.nextText()));
                    } catch (NumberFormatException e2) {
                    } catch (IllegalArgumentException e3) {
                        fVar.a(0);
                    }
                } else if (name.equals("show")) {
                    String nextText = xmlPullParser.nextText();
                    try {
                        fVar.a(com.xiaomi.smack.packet.f.a.valueOf(nextText));
                    } catch (IllegalArgumentException e4) {
                        System.err.println("Found invalid presence mode " + nextText);
                    }
                } else if (name.equals(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2)) {
                    fVar.a(d(xmlPullParser));
                } else {
                    fVar.a(a(name, namespace, xmlPullParser));
                }
            } else if (next == 3 && xmlPullParser.getName().equals("presence")) {
                z = true;
            }
        }
        return fVar;
    }

    public static g c(XmlPullParser xmlPullParser) {
        g gVar = null;
        boolean z = false;
        while (!z) {
            int next = xmlPullParser.next();
            if (next == 2) {
                gVar = new g(xmlPullParser.getName());
            } else if (next == 3 && xmlPullParser.getName().equals(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2)) {
                z = true;
            }
        }
        return gVar;
    }

    public static h d(XmlPullParser xmlPullParser) {
        String str = "urn:ietf:params:xml:ns:xmpp-stanzas";
        ArrayList arrayList = new ArrayList();
        String str2 = null;
        String str3 = null;
        String str4 = "-1";
        int i = 0;
        while (i < xmlPullParser.getAttributeCount()) {
            String str5 = xmlPullParser.getAttributeName(i).equals("code") ? xmlPullParser.getAttributeValue("", "code") : str4;
            String str6 = xmlPullParser.getAttributeName(i).equals("type") ? xmlPullParser.getAttributeValue("", "type") : str3;
            if (xmlPullParser.getAttributeName(i).equals("reason")) {
                str2 = xmlPullParser.getAttributeValue("", "reason");
            }
            i++;
            str3 = str6;
            str4 = str5;
        }
        boolean z = false;
        String str7 = null;
        String str8 = null;
        while (!z) {
            int next = xmlPullParser.next();
            if (next == 2) {
                if (xmlPullParser.getName().equals(TextBundle.TEXT_ENTRY)) {
                    str8 = xmlPullParser.nextText();
                } else {
                    String name = xmlPullParser.getName();
                    String namespace = xmlPullParser.getNamespace();
                    if ("urn:ietf:params:xml:ns:xmpp-stanzas".equals(namespace)) {
                        str7 = name;
                    } else {
                        arrayList.add(a(name, namespace, xmlPullParser));
                    }
                }
            } else if (next == 3) {
                if (xmlPullParser.getName().equals(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2)) {
                    z = true;
                }
            } else if (next == 4) {
                str8 = xmlPullParser.getText();
            }
        }
        return new h(Integer.parseInt(str4), str3 == null ? "cancel" : str3, str2, str7, str8, arrayList);
    }

    private static String e(XmlPullParser xmlPullParser) {
        String str = "";
        int depth = xmlPullParser.getDepth();
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getDepth() == depth) {
                return str;
            }
            str = str + xmlPullParser.getText();
        }
    }

    private static String f(XmlPullParser xmlPullParser) {
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            if ("xml:lang".equals(attributeName) || ("lang".equals(attributeName) && "xml".equals(xmlPullParser.getAttributePrefix(i)))) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }
}
