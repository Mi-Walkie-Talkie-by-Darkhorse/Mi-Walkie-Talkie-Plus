package com.xiaomi.push;

import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* renamed from: com.xiaomi.push.gd */
/* loaded from: classes2.dex */
public class C6184gd {

    /* renamed from: a */
    private XmlPullParser f21711a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6184gd() {
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            this.f21711a = newPullParser;
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        } catch (XmlPullParserException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public AbstractC6211ha m2779a(byte[] bArr, AbstractC6191gj abstractC6191gj) {
        this.f21711a.setInput(new InputStreamReader(new ByteArrayInputStream(bArr)));
        this.f21711a.next();
        int eventType = this.f21711a.getEventType();
        String name = this.f21711a.getName();
        if (eventType == 2) {
            if (name.equals(CrashHianalyticsData.MESSAGE)) {
                return C6222hi.m2621a(this.f21711a);
            }
            if (name.equals("iq")) {
                return C6222hi.m2616a(this.f21711a, abstractC6191gj);
            }
            if (name.equals("presence")) {
                return C6222hi.m2620a(this.f21711a);
            }
            if (this.f21711a.getName().equals("stream")) {
                return null;
            }
            if (this.f21711a.getName().equals("error")) {
                throw new C6203gu(C6222hi.m2619a(this.f21711a));
            }
            if (!this.f21711a.getName().equals("warning")) {
                this.f21711a.getName().equals("bind");
                return null;
            }
            this.f21711a.next();
            this.f21711a.getName().equals("multi-login");
            return null;
        }
        return null;
    }
}
