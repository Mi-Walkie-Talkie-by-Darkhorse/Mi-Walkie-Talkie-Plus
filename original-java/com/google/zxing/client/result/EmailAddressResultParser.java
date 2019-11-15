package com.google.zxing.client.result;

import com.xiaomi.mipush.sdk.Constants;
import java.util.regex.Pattern;

public final class EmailAddressResultParser extends ResultParser {
    private static final Pattern COMMA = Pattern.compile(Constants.ACCEPT_TIME_SEPARATOR_SP);

    /* JADX WARNING: Removed duplicated region for block: B:20:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x006c  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.zxing.client.result.EmailAddressParsedResult parse(com.google.zxing.Result r7) {
        /*
            r6 = this;
            r2 = 0
            java.lang.String r3 = getMassagedText(r7)
            java.lang.String r0 = "mailto:"
            boolean r0 = r3.startsWith(r0)
            if (r0 != 0) goto L_0x0015
            java.lang.String r0 = "MAILTO:"
            boolean r0 = r3.startsWith(r0)
            if (r0 == 0) goto L_0x008e
        L_0x0015:
            r0 = 7
            java.lang.String r0 = r3.substring(r0)
            r1 = 63
            int r1 = r0.indexOf(r1)
            if (r1 < 0) goto L_0x0027
            r4 = 0
            java.lang.String r0 = r0.substring(r4, r1)
        L_0x0027:
            java.lang.String r0 = urlDecode(r0)     // Catch:{ IllegalArgumentException -> 0x009a }
            boolean r1 = r0.isEmpty()
            if (r1 != 0) goto L_0x00a4
            java.util.regex.Pattern r1 = COMMA
            java.lang.String[] r0 = r1.split(r0)
            r1 = r0
        L_0x0038:
            java.util.Map r5 = parseNameValuePairs(r3)
            if (r5 == 0) goto L_0x00a0
            if (r1 != 0) goto L_0x009e
            java.lang.String r0 = "to"
            java.lang.Object r0 = r5.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L_0x009e
            java.util.regex.Pattern r1 = COMMA
            java.lang.String[] r1 = r1.split(r0)
            r3 = r1
        L_0x0051:
            java.lang.String r0 = "cc"
            java.lang.Object r0 = r5.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L_0x009c
            java.util.regex.Pattern r1 = COMMA
            java.lang.String[] r0 = r1.split(r0)
            r4 = r0
        L_0x0062:
            java.lang.String r0 = "bcc"
            java.lang.Object r0 = r5.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L_0x0072
            java.util.regex.Pattern r1 = COMMA
            java.lang.String[] r2 = r1.split(r0)
        L_0x0072:
            java.lang.String r0 = "subject"
            java.lang.Object r0 = r5.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.String r1 = "body"
            java.lang.Object r1 = r5.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            r5 = r1
            r1 = r3
            r3 = r2
            r2 = r4
            r4 = r0
        L_0x0087:
            com.google.zxing.client.result.EmailAddressParsedResult r0 = new com.google.zxing.client.result.EmailAddressParsedResult
            r0.<init>(r1, r2, r3, r4, r5)
            r2 = r0
        L_0x008d:
            return r2
        L_0x008e:
            boolean r0 = com.google.zxing.client.result.EmailDoCoMoResultParser.isBasicallyValidEmailAddress(r3)
            if (r0 == 0) goto L_0x008d
            com.google.zxing.client.result.EmailAddressParsedResult r2 = new com.google.zxing.client.result.EmailAddressParsedResult
            r2.<init>(r3)
            goto L_0x008d
        L_0x009a:
            r0 = move-exception
            goto L_0x008d
        L_0x009c:
            r4 = r2
            goto L_0x0062
        L_0x009e:
            r3 = r1
            goto L_0x0051
        L_0x00a0:
            r5 = r2
            r4 = r2
            r3 = r2
            goto L_0x0087
        L_0x00a4:
            r1 = r2
            goto L_0x0038
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.result.EmailAddressResultParser.parse(com.google.zxing.Result):com.google.zxing.client.result.EmailAddressParsedResult");
    }
}
