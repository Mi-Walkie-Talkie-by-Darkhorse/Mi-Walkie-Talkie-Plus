package com.xiaomi.push;

import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes2.dex */
public class gd {

    /* renamed from: a  reason: collision with root package name */
    private XmlPullParser f8982a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gd() {
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            this.f8982a = newPullParser;
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        } catch (XmlPullParserException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ha a(byte[] bArr, gj gjVar) {
        this.f8982a.setInput(new InputStreamReader(new ByteArrayInputStream(bArr)));
        this.f8982a.next();
        int eventType = this.f8982a.getEventType();
        String name = this.f8982a.getName();
        if (eventType != 2) {
            return null;
        }
        if (name.equals("message")) {
            return hi.a(this.f8982a);
        }
        if (name.equals("iq")) {
            return hi.a(this.f8982a, gjVar);
        }
        if (name.equals("presence")) {
            return hi.m343a(this.f8982a);
        }
        if (this.f8982a.getName().equals("stream")) {
            return null;
        }
        if (this.f8982a.getName().equals("error")) {
            throw new gu(hi.m344a(this.f8982a));
        } else if (this.f8982a.getName().equals("warning")) {
            this.f8982a.next();
            this.f8982a.getName().equals("multi-login");
            return null;
        } else {
            this.f8982a.getName().equals("bind");
            return null;
        }
    }
}
