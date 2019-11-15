package org.bouncycastle.jcajce.provider.asymmetric.ec;

import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.bouncycastle.asn1.ASN1Null;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.x9.ECNamedCurveTable;
import org.bouncycastle.asn1.x9.X962Parameters;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.math.ec.ECCurve;

public class AlgorithmParametersSpi extends java.security.AlgorithmParametersSpi {
    private String curveName;
    private ECParameterSpec ecParameterSpec;

    /* access modifiers changed from: protected */
    public byte[] engineGetEncoded() throws IOException {
        return engineGetEncoded("ASN.1");
    }

    /* access modifiers changed from: protected */
    public byte[] engineGetEncoded(String str) throws IOException {
        X962Parameters x962Parameters;
        if (isASN1FormatString(str)) {
            if (this.ecParameterSpec == null) {
                x962Parameters = new X962Parameters((ASN1Null) DERNull.INSTANCE);
            } else if (this.curveName != null) {
                x962Parameters = new X962Parameters(ECUtil.getNamedCurveOid(this.curveName));
            } else {
                org.bouncycastle.jce.spec.ECParameterSpec convertSpec = EC5Util.convertSpec(this.ecParameterSpec, false);
                x962Parameters = new X962Parameters(new X9ECParameters(convertSpec.getCurve(), convertSpec.getG(), convertSpec.getN(), convertSpec.getH(), convertSpec.getSeed()));
            }
            return x962Parameters.getEncoded();
        }
        throw new IOException("Unknown parameters format in AlgorithmParameters object: " + str);
    }

    /* access modifiers changed from: protected */
    public <T extends AlgorithmParameterSpec> T engineGetParameterSpec(Class<T> cls) throws InvalidParameterSpecException {
        if (ECParameterSpec.class.isAssignableFrom(cls) || cls == AlgorithmParameterSpec.class) {
            return this.ecParameterSpec;
        }
        if (ECGenParameterSpec.class.isAssignableFrom(cls)) {
            if (this.curveName != null) {
                ASN1ObjectIdentifier namedCurveOid = ECUtil.getNamedCurveOid(this.curveName);
                return namedCurveOid != null ? new ECGenParameterSpec(namedCurveOid.getId()) : new ECGenParameterSpec(this.curveName);
            }
            ASN1ObjectIdentifier namedCurveOid2 = ECUtil.getNamedCurveOid(EC5Util.convertSpec(this.ecParameterSpec, false));
            if (namedCurveOid2 != null) {
                return new ECGenParameterSpec(namedCurveOid2.getId());
            }
        }
        throw new InvalidParameterSpecException("EC AlgorithmParameters cannot convert to " + cls.getName());
    }

    /* access modifiers changed from: protected */
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        if (algorithmParameterSpec instanceof ECGenParameterSpec) {
            ECGenParameterSpec eCGenParameterSpec = (ECGenParameterSpec) algorithmParameterSpec;
            X9ECParameters domainParametersFromGenSpec = ECUtils.getDomainParametersFromGenSpec(eCGenParameterSpec);
            if (domainParametersFromGenSpec == null) {
                throw new InvalidParameterSpecException("EC curve name not recognized: " + eCGenParameterSpec.getName());
            }
            this.curveName = eCGenParameterSpec.getName();
            this.ecParameterSpec = EC5Util.convertToSpec(domainParametersFromGenSpec);
        } else if (algorithmParameterSpec instanceof ECParameterSpec) {
            this.curveName = null;
            this.ecParameterSpec = (ECParameterSpec) algorithmParameterSpec;
        } else {
            throw new InvalidParameterSpecException("AlgorithmParameterSpec class not recognized: " + algorithmParameterSpec.getClass().getName());
        }
    }

    /* access modifiers changed from: protected */
    public void engineInit(byte[] bArr) throws IOException {
        engineInit(bArr, "ASN.1");
    }

    /* access modifiers changed from: protected */
    public void engineInit(byte[] bArr, String str) throws IOException {
        if (isASN1FormatString(str)) {
            X962Parameters instance = X962Parameters.getInstance(bArr);
            ECCurve curve = EC5Util.getCurve(BouncyCastleProvider.CONFIGURATION, instance);
            if (instance.isNamedCurve()) {
                this.curveName = ECNamedCurveTable.getName(ASN1ObjectIdentifier.getInstance(instance.getParameters()));
            }
            this.ecParameterSpec = EC5Util.convertToSpec(instance, curve);
            return;
        }
        throw new IOException("Unknown encoded parameters format in AlgorithmParameters object: " + str);
    }

    /* access modifiers changed from: protected */
    public String engineToString() {
        return "EC AlgorithmParameters ";
    }

    /* access modifiers changed from: protected */
    public boolean isASN1FormatString(String str) {
        return str == null || str.equals("ASN.1");
    }
}
