package com.xiaomi.push.service;

import com.xiaomi.smack.packet.a;
import com.xiaomi.smack.provider.b;
import org.jboss.netty.channel.ChannelPipelineCoverage;
import org.xmlpull.v1.XmlPullParser;

public class c implements b {
    /* JADX WARNING: type inference failed for: r6v0 */
    /* JADX WARNING: type inference failed for: r6v1, types: [java.util.List] */
    /* JADX WARNING: type inference failed for: r0v3, types: [com.xiaomi.smack.packet.a] */
    /* JADX WARNING: type inference failed for: r6v2 */
    /* JADX WARNING: type inference failed for: r6v3, types: [java.util.List] */
    /* JADX WARNING: type inference failed for: r6v4, types: [java.util.ArrayList] */
    /* JADX WARNING: type inference failed for: r6v5, types: [com.xiaomi.smack.packet.a] */
    /* JADX WARNING: type inference failed for: r6v6 */
    /* JADX WARNING: type inference failed for: r6v7 */
    /* JADX WARNING: CFG modification limit reached, blocks count: 127 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r6v0
  assigns: [?[int, float, boolean, short, byte, char, OBJECT, ARRAY], ?[OBJECT, ARRAY]]
  uses: [com.xiaomi.smack.packet.a, ?[int, boolean, OBJECT, ARRAY, byte, short, char], java.util.List]
  mth insns count: 40
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.xiaomi.smack.packet.a a(org.xmlpull.v1.XmlPullParser r9) {
        /*
            r8 = 2
            r6 = 0
            int r0 = r9.getEventType()
            if (r0 == r8) goto L_0x0009
        L_0x0008:
            return r6
        L_0x0009:
            java.lang.String r1 = r9.getName()
            java.lang.String r2 = r9.getNamespace()
            int r0 = r9.getAttributeCount()
            if (r0 <= 0) goto L_0x006b
            int r0 = r9.getAttributeCount()
            java.lang.String[] r3 = new java.lang.String[r0]
            int r0 = r9.getAttributeCount()
            java.lang.String[] r4 = new java.lang.String[r0]
            r0 = 0
        L_0x0024:
            int r5 = r9.getAttributeCount()
            if (r0 >= r5) goto L_0x0069
            java.lang.String r5 = r9.getAttributeName(r0)
            r3[r0] = r5
            java.lang.String r5 = r9.getAttributeValue(r0)
            java.lang.String r5 = com.xiaomi.smack.util.d.b(r5)
            r4[r0] = r5
            int r0 = r0 + 1
            goto L_0x0024
        L_0x003d:
            if (r0 != r8) goto L_0x004f
            if (r6 != 0) goto L_0x0046
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
        L_0x0046:
            com.xiaomi.smack.packet.a r0 = a(r9)
            if (r0 == 0) goto L_0x004f
            r6.add(r0)
        L_0x004f:
            int r0 = r9.next()
            r7 = 3
            if (r0 == r7) goto L_0x0062
            r7 = 4
            if (r0 != r7) goto L_0x003d
            java.lang.String r0 = r9.getText()
            java.lang.String r5 = r0.trim()
            goto L_0x004f
        L_0x0062:
            com.xiaomi.smack.packet.a r0 = new com.xiaomi.smack.packet.a
            r0.<init>(r1, r2, r3, r4, r5, r6)
            r6 = r0
            goto L_0x0008
        L_0x0069:
            r5 = r6
            goto L_0x004f
        L_0x006b:
            r5 = r6
            r4 = r6
            r3 = r6
            goto L_0x004f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.c.a(org.xmlpull.v1.XmlPullParser):com.xiaomi.smack.packet.a");
    }

    public void a() {
        com.xiaomi.smack.provider.c.a().a(ChannelPipelineCoverage.ALL, "xm:chat", this);
    }

    public a b(XmlPullParser xmlPullParser) {
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1 && eventType != 2) {
            eventType = xmlPullParser.next();
        }
        if (eventType == 2) {
            return a(xmlPullParser);
        }
        return null;
    }
}
