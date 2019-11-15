package org.bouncycastle.asn1.nist;

import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.sec.SECNamedCurves;
import org.bouncycastle.asn1.sec.SECObjectIdentifiers;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.util.Strings;

public class NISTNamedCurves {
    static final Hashtable names = new Hashtable();
    static final Hashtable objIds = new Hashtable();

    static {
        defineCurveAlias("B-163", SECObjectIdentifiers.sect163r2);
        defineCurveAlias("B-233", SECObjectIdentifiers.sect233r1);
        defineCurveAlias("B-283", SECObjectIdentifiers.sect283r1);
        defineCurveAlias("B-409", SECObjectIdentifiers.sect409r1);
        defineCurveAlias("B-571", SECObjectIdentifiers.sect571r1);
        defineCurveAlias("K-163", SECObjectIdentifiers.sect163k1);
        defineCurveAlias("K-233", SECObjectIdentifiers.sect233k1);
        defineCurveAlias("K-283", SECObjectIdentifiers.sect283k1);
        defineCurveAlias("K-409", SECObjectIdentifiers.sect409k1);
        defineCurveAlias("K-571", SECObjectIdentifiers.sect571k1);
        defineCurveAlias("P-192", SECObjectIdentifiers.secp192r1);
        defineCurveAlias("P-224", SECObjectIdentifiers.secp224r1);
        defineCurveAlias("P-256", SECObjectIdentifiers.secp256r1);
        defineCurveAlias("P-384", SECObjectIdentifiers.secp384r1);
        defineCurveAlias("P-521", SECObjectIdentifiers.secp521r1);
    }

    static void defineCurveAlias(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        objIds.put(str.toUpperCase(), aSN1ObjectIdentifier);
        names.put(aSN1ObjectIdentifier, str);
    }

    public static X9ECParameters getByName(String str) {
        ASN1ObjectIdentifier oid = getOID(str);
        if (oid == null) {
            return null;
        }
        return getByOID(oid);
    }

    public static X9ECParameters getByOID(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return SECNamedCurves.getByOID(aSN1ObjectIdentifier);
    }

    public static String getName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return (String) names.get(aSN1ObjectIdentifier);
    }

    public static Enumeration getNames() {
        return names.elements();
    }

    public static ASN1ObjectIdentifier getOID(String str) {
        return (ASN1ObjectIdentifier) objIds.get(Strings.toUpperCase(str));
    }
}
