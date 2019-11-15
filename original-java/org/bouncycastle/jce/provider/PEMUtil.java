package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.util.encoders.Base64;

public class PEMUtil {
    private final String _footer1;
    private final String _footer2;
    private final String _header1;
    private final String _header2;

    PEMUtil(String str) {
        this._header1 = "-----BEGIN " + str + "-----";
        this._header2 = "-----BEGIN X509 " + str + "-----";
        this._footer1 = "-----END " + str + "-----";
        this._footer2 = "-----END X509 " + str + "-----";
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0024  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String readLine(java.io.InputStream r5) throws java.io.IOException {
        /*
            r4 = this;
            r3 = 13
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
        L_0x0007:
            int r1 = r5.read()
            if (r1 == r3) goto L_0x001a
            r2 = 10
            if (r1 == r2) goto L_0x001a
            if (r1 < 0) goto L_0x001a
            if (r1 == r3) goto L_0x0007
            char r1 = (char) r1
            r0.append(r1)
            goto L_0x0007
        L_0x001a:
            if (r1 < 0) goto L_0x0022
            int r2 = r0.length()
            if (r2 == 0) goto L_0x0007
        L_0x0022:
            if (r1 >= 0) goto L_0x0026
            r0 = 0
        L_0x0025:
            return r0
        L_0x0026:
            java.lang.String r0 = r0.toString()
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.PEMUtil.readLine(java.io.InputStream):java.lang.String");
    }

    /* access modifiers changed from: 0000 */
    public ASN1Sequence readPEMObject(InputStream inputStream) throws IOException {
        String readLine;
        StringBuffer stringBuffer = new StringBuffer();
        do {
            readLine = readLine(inputStream);
            if (readLine == null || readLine.startsWith(this._header1)) {
            }
        } while (!readLine.startsWith(this._header2));
        while (true) {
            String readLine2 = readLine(inputStream);
            if (readLine2 != null && !readLine2.startsWith(this._footer1) && !readLine2.startsWith(this._footer2)) {
                stringBuffer.append(readLine2);
            }
        }
        if (stringBuffer.length() == 0) {
            return null;
        }
        ASN1Primitive readObject = new ASN1InputStream(Base64.decode(stringBuffer.toString())).readObject();
        if (readObject instanceof ASN1Sequence) {
            return (ASN1Sequence) readObject;
        }
        throw new IOException("malformed PEM data encountered");
    }
}
