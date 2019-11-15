package com.ksyun.ks3.services.a;

import com.ksyun.ks3.exception.a;
import com.ksyun.ks3.model.a.c;
import org.apache.http.Header;

/* compiled from: ListPartsResponseHandler */
public abstract class d extends c {
    private static String RESPONSE_TAG_PRIFIX = "ns2:";

    public abstract void onFailure(int i, a aVar, Header[] headerArr, String str, Throwable th);

    public abstract void onSuccess(int i, Header[] headerArr, c cVar);

    public final void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        onSuccess(i, headerArr, parseXml(headerArr, bArr));
    }

    public final void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        onFailure(i, new a(i, bArr, th), headerArr, bArr == null ? "" : new String(bArr), th);
    }

    public final void onProgress(int i, int i2) {
    }

    public final void onStart() {
    }

    public final void onFinish() {
    }

    public final void onCancel() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:110:0x01ea, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x01eb, code lost:
        r12 = r0;
        r0 = r1;
        r1 = r12;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
        r0 = r8.next();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0190, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x0191, code lost:
        r12 = r0;
        r0 = r1;
        r1 = r12;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x01a1, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x01a2, code lost:
        r12 = r0;
        r0 = r1;
        r1 = r12;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.ksyun.ks3.model.a.c parseXml(org.apache.http.Header[] r14, byte[] r15) {
        /*
            r13 = this;
            r1 = 0
            r5 = 0
            r4 = 0
            r3 = 0
            r2 = 0
            org.xmlpull.v1.XmlPullParserFactory r0 = org.xmlpull.v1.XmlPullParserFactory.newInstance()     // Catch:{ XmlPullParserException -> 0x01f8, IOException -> 0x01f1, Exception -> 0x01e2 }
            org.xmlpull.v1.XmlPullParser r8 = r0.newPullParser()     // Catch:{ XmlPullParserException -> 0x01f8, IOException -> 0x01f1, Exception -> 0x01e2 }
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream     // Catch:{ XmlPullParserException -> 0x01f8, IOException -> 0x01f1, Exception -> 0x01e2 }
            r0.<init>(r15)     // Catch:{ XmlPullParserException -> 0x01f8, IOException -> 0x01f1, Exception -> 0x01e2 }
            java.lang.String r6 = "UTF-8"
            r8.setInput(r0, r6)     // Catch:{ XmlPullParserException -> 0x01f8, IOException -> 0x01f1, Exception -> 0x01e2 }
            int r0 = r8.getEventType()     // Catch:{ XmlPullParserException -> 0x01f8, IOException -> 0x01f1, Exception -> 0x01e2 }
            r6 = r0
            r7 = r3
            r3 = r5
            r0 = r1
        L_0x001f:
            r1 = 1
            if (r1 == r6) goto L_0x0197
            java.lang.String r1 = r8.getName()     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            boolean r5 = com.ksyun.ks3.a.f.a(r1)     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            if (r5 != 0) goto L_0x020d
            java.lang.String r5 = RESPONSE_TAG_PRIFIX     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            boolean r5 = r1.startsWith(r5)     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            if (r5 == 0) goto L_0x020d
            r5 = 4
            java.lang.String r1 = r1.substring(r5)     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            r5 = r1
        L_0x003a:
            switch(r6) {
                case 0: goto L_0x0049;
                case 1: goto L_0x0049;
                case 2: goto L_0x004d;
                case 3: goto L_0x01a9;
                case 4: goto L_0x01dd;
                default: goto L_0x003d;
            }
        L_0x003d:
            r5 = r3
            r1 = r0
            r3 = r7
        L_0x0040:
            int r0 = r8.next()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r6 = r0
            r7 = r3
            r3 = r5
            r0 = r1
            goto L_0x001f
        L_0x0049:
            r5 = r3
            r1 = r0
            r3 = r7
            goto L_0x0040
        L_0x004d:
            java.lang.String r1 = "ListPartsResult"
            boolean r1 = r1.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            if (r1 == 0) goto L_0x020a
            com.ksyun.ks3.model.a.c r1 = new com.ksyun.ks3.model.a.c     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            r1.<init>()     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
        L_0x005a:
            java.lang.String r0 = "Bucket"
            boolean r0 = r0.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r0 == 0) goto L_0x0069
            java.lang.String r0 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r1.a(r0)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x0069:
            java.lang.String r0 = "Key"
            boolean r0 = r0.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r0 == 0) goto L_0x0078
            java.lang.String r0 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r1.b(r0)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x0078:
            java.lang.String r0 = "UploadId"
            boolean r0 = r0.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r0 == 0) goto L_0x0087
            java.lang.String r0 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r1.c(r0)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x0087:
            java.lang.String r0 = "Initiator"
            boolean r0 = r0.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r0 == 0) goto L_0x0095
            com.ksyun.ks3.model.Owner r0 = new com.ksyun.ks3.model.Owner     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r0.<init>()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r4 = r0
        L_0x0095:
            java.lang.String r0 = "Owner"
            boolean r0 = r0.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r0 == 0) goto L_0x0207
            r2 = 1
            com.ksyun.ks3.model.Owner r0 = new com.ksyun.ks3.model.Owner     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r0.<init>()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x00a3:
            java.lang.String r3 = "ID"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x00b4
            if (r2 == 0) goto L_0x0187
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r0.a(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x00b4:
            java.lang.String r3 = "DisplayName"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x00c5
            if (r2 == 0) goto L_0x0198
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r0.b(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x00c5:
            java.lang.String r3 = "StorageClass"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x00cd
        L_0x00cd:
            java.lang.String r3 = "PartNumberMarker"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x00dc
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r1.d(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x00dc:
            java.lang.String r3 = "NextPartNumberMarker"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x00eb
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r1.e(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x00eb:
            java.lang.String r3 = "MaxParts"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x00fa
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r1.f(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x00fa:
            java.lang.String r3 = "IsTruncated"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x0111
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            boolean r3 = r3.booleanValue()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r1.a(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x0111:
            java.lang.String r3 = "Part"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x011e
            com.ksyun.ks3.model.c r7 = new com.ksyun.ks3.model.c     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r7.<init>()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x011e:
            java.lang.String r3 = "PartNumber"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x0135
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            int r3 = r3.intValue()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r7.a(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x0135:
            java.lang.String r3 = "LastModified"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x014e
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            boolean r6 = com.ksyun.ks3.a.f.a(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r6 != 0) goto L_0x014e
            java.util.Date r3 = com.ksyun.ks3.a.b.a(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r7.a(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x014e:
            java.lang.String r3 = "ETag"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x015d
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r7.a(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x015d:
            java.lang.String r3 = "Size"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x0174
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            long r10 = r3.longValue()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r7.a(r10)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
        L_0x0174:
            java.lang.String r3 = "Encoding-Type"
            boolean r3 = r3.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            if (r3 == 0) goto L_0x0210
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r1.g(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r3 = r7
            r5 = r0
            goto L_0x0040
        L_0x0187:
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r4.a(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            goto L_0x00b4
        L_0x0190:
            r0 = move-exception
            r12 = r0
            r0 = r1
            r1 = r12
        L_0x0194:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
        L_0x0197:
            return r0
        L_0x0198:
            java.lang.String r3 = r8.nextText()     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            r4.b(r3)     // Catch:{ XmlPullParserException -> 0x0190, IOException -> 0x01a1, Exception -> 0x01ea }
            goto L_0x00c5
        L_0x01a1:
            r0 = move-exception
            r12 = r0
            r0 = r1
            r1 = r12
        L_0x01a5:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0197
        L_0x01a9:
            java.lang.String r1 = "ListPartsResult"
            boolean r1 = r1.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            if (r1 == 0) goto L_0x01b1
        L_0x01b1:
            java.lang.String r1 = "Initiator"
            boolean r1 = r1.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            if (r1 == 0) goto L_0x01bc
            r0.a(r4)     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
        L_0x01bc:
            java.lang.String r1 = "Owner"
            boolean r1 = r1.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            if (r1 == 0) goto L_0x0205
            r1 = 0
            r0.b(r3)     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
        L_0x01c8:
            java.lang.String r2 = "Part"
            boolean r2 = r2.equalsIgnoreCase(r5)     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            if (r2 == 0) goto L_0x01ff
            java.util.List r2 = r0.d()     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            r2.add(r7)     // Catch:{ XmlPullParserException -> 0x01fd, IOException -> 0x01f6, Exception -> 0x01ef }
            r2 = r1
            r5 = r3
            r3 = r7
            r1 = r0
            goto L_0x0040
        L_0x01dd:
            r5 = r3
            r1 = r0
            r3 = r7
            goto L_0x0040
        L_0x01e2:
            r0 = move-exception
            r12 = r0
            r0 = r1
            r1 = r12
        L_0x01e6:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0197
        L_0x01ea:
            r0 = move-exception
            r12 = r0
            r0 = r1
            r1 = r12
            goto L_0x01e6
        L_0x01ef:
            r1 = move-exception
            goto L_0x01e6
        L_0x01f1:
            r0 = move-exception
            r12 = r0
            r0 = r1
            r1 = r12
            goto L_0x01a5
        L_0x01f6:
            r1 = move-exception
            goto L_0x01a5
        L_0x01f8:
            r0 = move-exception
            r12 = r0
            r0 = r1
            r1 = r12
            goto L_0x0194
        L_0x01fd:
            r1 = move-exception
            goto L_0x0194
        L_0x01ff:
            r2 = r1
            r5 = r3
            r3 = r7
            r1 = r0
            goto L_0x0040
        L_0x0205:
            r1 = r2
            goto L_0x01c8
        L_0x0207:
            r0 = r3
            goto L_0x00a3
        L_0x020a:
            r1 = r0
            goto L_0x005a
        L_0x020d:
            r5 = r1
            goto L_0x003a
        L_0x0210:
            r3 = r7
            r5 = r0
            goto L_0x0040
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksyun.ks3.services.a.d.parseXml(org.apache.http.Header[], byte[]):com.ksyun.ks3.model.a.c");
    }
}
