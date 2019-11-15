package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.digests.SkeinEngine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.SkeinParameters;
import org.bouncycastle.crypto.params.SkeinParameters.Builder;

public class SkeinMac implements Mac {
    public static final int SKEIN_1024 = 1024;
    public static final int SKEIN_256 = 256;
    public static final int SKEIN_512 = 512;
    private SkeinEngine engine;

    public SkeinMac(int i, int i2) {
        this.engine = new SkeinEngine(i, i2);
    }

    public SkeinMac(SkeinMac skeinMac) {
        this.engine = new SkeinEngine(skeinMac.engine);
    }

    public int doFinal(byte[] bArr, int i) {
        return this.engine.doFinal(bArr, i);
    }

    public String getAlgorithmName() {
        return "Skein-MAC-" + (this.engine.getBlockSize() * 8) + "-" + (this.engine.getOutputSize() * 8);
    }

    public int getMacSize() {
        return this.engine.getOutputSize();
    }

    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        SkeinParameters build;
        if (cipherParameters instanceof SkeinParameters) {
            build = (SkeinParameters) cipherParameters;
        } else if (cipherParameters instanceof KeyParameter) {
            build = new Builder().setKey(((KeyParameter) cipherParameters).getKey()).build();
        } else {
            throw new IllegalArgumentException("Invalid parameter passed to Skein MAC init - " + cipherParameters.getClass().getName());
        }
        if (build.getKey() == null) {
            throw new IllegalArgumentException("Skein MAC requires a key parameter.");
        }
        this.engine.init(build);
    }

    public void reset() {
        this.engine.reset();
    }

    public void update(byte b) {
        this.engine.update(b);
    }

    public void update(byte[] bArr, int i, int i2) {
        this.engine.update(bArr, i, i2);
    }
}
