package org.bouncycastle.jcajce.provider.asymmetric.ec;

import java.security.spec.ECGenParameterSpec;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil;

class ECUtils {
    ECUtils() {
    }

    static X9ECParameters getDomainParametersFromGenSpec(ECGenParameterSpec eCGenParameterSpec) {
        return getDomainParametersFromName(eCGenParameterSpec.getName());
    }

    static X9ECParameters getDomainParametersFromName(String str) {
        try {
            return (str.charAt(0) < '0' || str.charAt(0) > '2') ? str.indexOf(32) > 0 ? ECUtil.getNamedCurveByName(str.substring(str.indexOf(32) + 1)) : ECUtil.getNamedCurveByName(str) : ECUtil.getNamedCurveByOid(new ASN1ObjectIdentifier(str));
        } catch (IllegalArgumentException e) {
            return ECUtil.getNamedCurveByName(str);
        }
    }
}
