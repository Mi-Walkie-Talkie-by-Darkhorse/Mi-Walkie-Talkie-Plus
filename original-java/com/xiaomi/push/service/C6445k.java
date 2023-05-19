package com.xiaomi.push.service;

import com.xiaomi.push.C6206gx;
import com.xiaomi.push.C6221hh;
import com.xiaomi.push.C6225hl;
import com.xiaomi.push.InterfaceC6220hg;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: com.xiaomi.push.service.k */
/* loaded from: classes2.dex */
public class C6445k implements InterfaceC6220hg {
    /* renamed from: a */
    public static C6206gx m1355a(XmlPullParser xmlPullParser) {
        String[] strArr;
        String[] strArr2;
        String str;
        ArrayList arrayList;
        if (xmlPullParser.getEventType() != 2) {
            return null;
        }
        String name = xmlPullParser.getName();
        String namespace = xmlPullParser.getNamespace();
        if (xmlPullParser.getAttributeCount() > 0) {
            String[] strArr3 = new String[xmlPullParser.getAttributeCount()];
            String[] strArr4 = new String[xmlPullParser.getAttributeCount()];
            for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
                strArr3[i] = xmlPullParser.getAttributeName(i);
                strArr4[i] = C6225hl.m2608b(xmlPullParser.getAttributeValue(i));
            }
            strArr = strArr3;
            str = null;
            arrayList = null;
            strArr2 = strArr4;
        } else {
            strArr = null;
            strArr2 = null;
            str = null;
            arrayList = null;
        }
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3) {
                return new C6206gx(name, namespace, strArr, strArr2, str, arrayList);
            }
            if (next == 4) {
                str = xmlPullParser.getText().trim();
            } else if (next == 2) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                C6206gx m1355a = m1355a(xmlPullParser);
                if (m1355a != null) {
                    arrayList.add(m1355a);
                }
            }
        }
    }

    /* renamed from: a */
    public void m1356a() {
        C6221hh.m2628a().m2623a("all", "xm:chat", this);
    }

    /* renamed from: b */
    public C6206gx m1354b(XmlPullParser xmlPullParser) {
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1 && eventType != 2) {
            eventType = xmlPullParser.next();
        }
        if (eventType == 2) {
            return m1355a(xmlPullParser);
        }
        return null;
    }
}
