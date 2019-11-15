package org.bouncycastle.pqc.jcajce.provider.rainbow;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.asn1.RainbowPrivateKey;
import org.bouncycastle.pqc.crypto.rainbow.Layer;
import org.bouncycastle.pqc.crypto.rainbow.RainbowPrivateKeyParameters;
import org.bouncycastle.pqc.crypto.rainbow.util.RainbowUtil;
import org.bouncycastle.pqc.jcajce.spec.RainbowPrivateKeySpec;

public class BCRainbowPrivateKey implements PrivateKey {
    private static final long serialVersionUID = 1;
    private short[][] A1inv;
    private short[][] A2inv;
    private short[] b1;
    private short[] b2;
    private Layer[] layers;
    private int[] vi;

    public BCRainbowPrivateKey(RainbowPrivateKeyParameters rainbowPrivateKeyParameters) {
        this(rainbowPrivateKeyParameters.getInvA1(), rainbowPrivateKeyParameters.getB1(), rainbowPrivateKeyParameters.getInvA2(), rainbowPrivateKeyParameters.getB2(), rainbowPrivateKeyParameters.getVi(), rainbowPrivateKeyParameters.getLayers());
    }

    public BCRainbowPrivateKey(RainbowPrivateKeySpec rainbowPrivateKeySpec) {
        this(rainbowPrivateKeySpec.getInvA1(), rainbowPrivateKeySpec.getB1(), rainbowPrivateKeySpec.getInvA2(), rainbowPrivateKeySpec.getB2(), rainbowPrivateKeySpec.getVi(), rainbowPrivateKeySpec.getLayers());
    }

    public BCRainbowPrivateKey(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, Layer[] layerArr) {
        this.A1inv = sArr;
        this.b1 = sArr2;
        this.A2inv = sArr3;
        this.b2 = sArr4;
        this.vi = iArr;
        this.layers = layerArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        boolean z2 = false;
        if (obj != null && (obj instanceof BCRainbowPrivateKey)) {
            BCRainbowPrivateKey bCRainbowPrivateKey = (BCRainbowPrivateKey) obj;
            if (!((((RainbowUtil.equals(this.A1inv, bCRainbowPrivateKey.getInvA1())) && RainbowUtil.equals(this.A2inv, bCRainbowPrivateKey.getInvA2())) && RainbowUtil.equals(this.b1, bCRainbowPrivateKey.getB1())) && RainbowUtil.equals(this.b2, bCRainbowPrivateKey.getB2())) || !Arrays.equals(this.vi, bCRainbowPrivateKey.getVi())) {
                z = false;
            }
            if (this.layers.length == bCRainbowPrivateKey.getLayers().length) {
                z2 = z;
                for (int length = this.layers.length - 1; length >= 0; length--) {
                    z2 &= this.layers[length].equals(bCRainbowPrivateKey.getLayers()[length]);
                }
            }
        }
        return z2;
    }

    public final String getAlgorithm() {
        return "Rainbow";
    }

    public short[] getB1() {
        return this.b1;
    }

    public short[] getB2() {
        return this.b2;
    }

    public byte[] getEncoded() {
        try {
            try {
                return new PrivateKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.rainbow, DERNull.INSTANCE), new RainbowPrivateKey(this.A1inv, this.b1, this.A2inv, this.b2, this.vi, this.layers)).getEncoded();
            } catch (IOException e) {
                ThrowableExtension.printStackTrace(e);
                return null;
            }
        } catch (IOException e2) {
            ThrowableExtension.printStackTrace(e2);
            return null;
        }
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public short[][] getInvA1() {
        return this.A1inv;
    }

    public short[][] getInvA2() {
        return this.A2inv;
    }

    public Layer[] getLayers() {
        return this.layers;
    }

    public int[] getVi() {
        return this.vi;
    }

    public int hashCode() {
        int hashCode = org.bouncycastle.util.Arrays.hashCode(this.vi) + (((((((((this.layers.length * 37) + org.bouncycastle.util.Arrays.hashCode(this.A1inv)) * 37) + org.bouncycastle.util.Arrays.hashCode(this.b1)) * 37) + org.bouncycastle.util.Arrays.hashCode(this.A2inv)) * 37) + org.bouncycastle.util.Arrays.hashCode(this.b2)) * 37);
        for (int length = this.layers.length - 1; length >= 0; length--) {
            hashCode = (hashCode * 37) + this.layers[length].hashCode();
        }
        return hashCode;
    }
}
