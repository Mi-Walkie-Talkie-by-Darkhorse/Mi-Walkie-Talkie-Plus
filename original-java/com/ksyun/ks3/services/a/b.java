package com.ksyun.ks3.services.a;

import com.ksyun.ks3.exception.a;
import org.apache.http.Header;

/* compiled from: InitiateMultipartUploadResponceHandler */
public abstract class b extends c {
    public abstract void onFailure(int i, a aVar, Header[] headerArr, String str, Throwable th);

    public abstract void onSuccess(int i, Header[] headerArr, com.ksyun.ks3.model.a.b bVar);

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

    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        r0 = r2.next();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0034, code lost:
        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x007d, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x007e, code lost:
        r4 = r0;
        r0 = r1;
        r1 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0084, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0085, code lost:
        r4 = r0;
        r0 = r1;
        r1 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0090, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0091, code lost:
        r4 = r0;
        r0 = r1;
        r1 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        r1 = r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.ksyun.ks3.model.a.b parseXml(org.apache.http.Header[] r6, byte[] r7) {
        /*
            r5 = this;
            r1 = 0
            org.xmlpull.v1.XmlPullParserFactory r0 = org.xmlpull.v1.XmlPullParserFactory.newInstance()     // Catch:{ XmlPullParserException -> 0x008b, IOException -> 0x006d, Exception -> 0x0075 }
            org.xmlpull.v1.XmlPullParser r2 = r0.newPullParser()     // Catch:{ XmlPullParserException -> 0x008b, IOException -> 0x006d, Exception -> 0x0075 }
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream     // Catch:{ XmlPullParserException -> 0x008b, IOException -> 0x006d, Exception -> 0x0075 }
            r0.<init>(r7)     // Catch:{ XmlPullParserException -> 0x008b, IOException -> 0x006d, Exception -> 0x0075 }
            java.lang.String r3 = "UTF-8"
            r2.setInput(r0, r3)     // Catch:{ XmlPullParserException -> 0x008b, IOException -> 0x006d, Exception -> 0x0075 }
            int r0 = r2.getEventType()     // Catch:{ XmlPullParserException -> 0x008b, IOException -> 0x006d, Exception -> 0x0075 }
            r4 = r0
            r0 = r1
            r1 = r4
        L_0x001a:
            r3 = 1
            if (r3 == r1) goto L_0x0037
            java.lang.String r3 = r2.getName()     // Catch:{ XmlPullParserException -> 0x0033, IOException -> 0x0089, Exception -> 0x0082 }
            switch(r1) {
                case 0: goto L_0x002d;
                case 1: goto L_0x0038;
                case 2: goto L_0x003a;
                case 3: goto L_0x0069;
                case 4: goto L_0x006b;
                default: goto L_0x0024;
            }
        L_0x0024:
            r1 = r0
        L_0x0025:
            int r0 = r2.next()     // Catch:{ XmlPullParserException -> 0x0090, IOException -> 0x0084, Exception -> 0x007d }
            r4 = r0
            r0 = r1
            r1 = r4
            goto L_0x001a
        L_0x002d:
            com.ksyun.ks3.model.a.b r1 = new com.ksyun.ks3.model.a.b     // Catch:{ XmlPullParserException -> 0x0033, IOException -> 0x0089, Exception -> 0x0082 }
            r1.<init>()     // Catch:{ XmlPullParserException -> 0x0033, IOException -> 0x0089, Exception -> 0x0082 }
            goto L_0x0025
        L_0x0033:
            r1 = move-exception
        L_0x0034:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
        L_0x0037:
            return r0
        L_0x0038:
            r1 = r0
            goto L_0x0025
        L_0x003a:
            java.lang.String r1 = "Bucket"
            boolean r1 = r1.equalsIgnoreCase(r3)     // Catch:{ XmlPullParserException -> 0x0033, IOException -> 0x0089, Exception -> 0x0082 }
            if (r1 == 0) goto L_0x0049
            java.lang.String r1 = r2.nextText()     // Catch:{ XmlPullParserException -> 0x0033, IOException -> 0x0089, Exception -> 0x0082 }
            r0.a(r1)     // Catch:{ XmlPullParserException -> 0x0033, IOException -> 0x0089, Exception -> 0x0082 }
        L_0x0049:
            java.lang.String r1 = "Key"
            boolean r1 = r1.equalsIgnoreCase(r3)     // Catch:{ XmlPullParserException -> 0x0033, IOException -> 0x0089, Exception -> 0x0082 }
            if (r1 == 0) goto L_0x0058
            java.lang.String r1 = r2.nextText()     // Catch:{ XmlPullParserException -> 0x0033, IOException -> 0x0089, Exception -> 0x0082 }
            r0.b(r1)     // Catch:{ XmlPullParserException -> 0x0033, IOException -> 0x0089, Exception -> 0x0082 }
        L_0x0058:
            java.lang.String r1 = "UploadId"
            boolean r1 = r1.equalsIgnoreCase(r3)     // Catch:{ XmlPullParserException -> 0x0033, IOException -> 0x0089, Exception -> 0x0082 }
            if (r1 == 0) goto L_0x0024
            java.lang.String r1 = r2.nextText()     // Catch:{ XmlPullParserException -> 0x0033, IOException -> 0x0089, Exception -> 0x0082 }
            r0.c(r1)     // Catch:{ XmlPullParserException -> 0x0033, IOException -> 0x0089, Exception -> 0x0082 }
            r1 = r0
            goto L_0x0025
        L_0x0069:
            r1 = r0
            goto L_0x0025
        L_0x006b:
            r1 = r0
            goto L_0x0025
        L_0x006d:
            r0 = move-exception
            r4 = r0
            r0 = r1
            r1 = r4
        L_0x0071:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0037
        L_0x0075:
            r0 = move-exception
            r4 = r0
            r0 = r1
            r1 = r4
        L_0x0079:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0037
        L_0x007d:
            r0 = move-exception
            r4 = r0
            r0 = r1
            r1 = r4
            goto L_0x0079
        L_0x0082:
            r1 = move-exception
            goto L_0x0079
        L_0x0084:
            r0 = move-exception
            r4 = r0
            r0 = r1
            r1 = r4
            goto L_0x0071
        L_0x0089:
            r1 = move-exception
            goto L_0x0071
        L_0x008b:
            r0 = move-exception
            r4 = r0
            r0 = r1
            r1 = r4
            goto L_0x0034
        L_0x0090:
            r0 = move-exception
            r4 = r0
            r0 = r1
            r1 = r4
            goto L_0x0034
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksyun.ks3.services.a.b.parseXml(org.apache.http.Header[], byte[]):com.ksyun.ks3.model.a.b");
    }
}
