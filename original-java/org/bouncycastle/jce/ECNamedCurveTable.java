package org.bouncycastle.jce;

import java.util.Enumeration;

public class ECNamedCurveTable {
    public static Enumeration getNames() {
        return org.bouncycastle.asn1.x9.ECNamedCurveTable.getNames();
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0023  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0028  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static org.bouncycastle.jce.spec.ECNamedCurveParameterSpec getParameterSpec(java.lang.String r7) {
        /*
            org.bouncycastle.asn1.x9.X9ECParameters r0 = org.bouncycastle.crypto.ec.CustomNamedCurves.getByName(r7)
            if (r0 != 0) goto L_0x0045
            org.bouncycastle.asn1.ASN1ObjectIdentifier r1 = new org.bouncycastle.asn1.ASN1ObjectIdentifier     // Catch:{ IllegalArgumentException -> 0x0043 }
            r1.<init>(r7)     // Catch:{ IllegalArgumentException -> 0x0043 }
            org.bouncycastle.asn1.x9.X9ECParameters r0 = org.bouncycastle.crypto.ec.CustomNamedCurves.getByOID(r1)     // Catch:{ IllegalArgumentException -> 0x0043 }
        L_0x000f:
            if (r0 != 0) goto L_0x0045
            org.bouncycastle.asn1.x9.X9ECParameters r0 = org.bouncycastle.asn1.x9.ECNamedCurveTable.getByName(r7)
            if (r0 != 0) goto L_0x0045
            org.bouncycastle.asn1.ASN1ObjectIdentifier r1 = new org.bouncycastle.asn1.ASN1ObjectIdentifier     // Catch:{ IllegalArgumentException -> 0x0025 }
            r1.<init>(r7)     // Catch:{ IllegalArgumentException -> 0x0025 }
            org.bouncycastle.asn1.x9.X9ECParameters r0 = org.bouncycastle.asn1.x9.ECNamedCurveTable.getByOID(r1)     // Catch:{ IllegalArgumentException -> 0x0025 }
            r1 = r0
        L_0x0021:
            if (r1 != 0) goto L_0x0028
            r0 = 0
        L_0x0024:
            return r0
        L_0x0025:
            r1 = move-exception
            r1 = r0
            goto L_0x0021
        L_0x0028:
            org.bouncycastle.jce.spec.ECNamedCurveParameterSpec r0 = new org.bouncycastle.jce.spec.ECNamedCurveParameterSpec
            org.bouncycastle.math.ec.ECCurve r2 = r1.getCurve()
            org.bouncycastle.math.ec.ECPoint r3 = r1.getG()
            java.math.BigInteger r4 = r1.getN()
            java.math.BigInteger r5 = r1.getH()
            byte[] r6 = r1.getSeed()
            r1 = r7
            r0.<init>(r1, r2, r3, r4, r5, r6)
            goto L_0x0024
        L_0x0043:
            r1 = move-exception
            goto L_0x000f
        L_0x0045:
            r1 = r0
            goto L_0x0021
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.ECNamedCurveTable.getParameterSpec(java.lang.String):org.bouncycastle.jce.spec.ECNamedCurveParameterSpec");
    }
}
