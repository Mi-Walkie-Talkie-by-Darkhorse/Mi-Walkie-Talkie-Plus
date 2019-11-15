package org.bouncycastle.crypto.prng;

import java.security.SecureRandom;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.prng.drbg.CTRSP800DRBG;
import org.bouncycastle.crypto.prng.drbg.DualECPoints;
import org.bouncycastle.crypto.prng.drbg.DualECSP800DRBG;
import org.bouncycastle.crypto.prng.drbg.HMacSP800DRBG;
import org.bouncycastle.crypto.prng.drbg.HashSP800DRBG;
import org.bouncycastle.crypto.prng.drbg.SP80090DRBG;

public class SP800SecureRandomBuilder {
    private int entropyBitsRequired;
    private final EntropySourceProvider entropySourceProvider;
    private byte[] personalizationString;
    private final SecureRandom random;
    private int securityStrength;

    private static class CTRDRBGProvider implements DRBGProvider {
        private final BlockCipher blockCipher;
        private final int keySizeInBits;
        private final byte[] nonce;
        private final byte[] personalizationString;
        private final int securityStrength;

        public CTRDRBGProvider(BlockCipher blockCipher2, int i, byte[] bArr, byte[] bArr2, int i2) {
            this.blockCipher = blockCipher2;
            this.keySizeInBits = i;
            this.nonce = bArr;
            this.personalizationString = bArr2;
            this.securityStrength = i2;
        }

        public SP80090DRBG get(EntropySource entropySource) {
            return new CTRSP800DRBG(this.blockCipher, this.keySizeInBits, this.securityStrength, entropySource, this.personalizationString, this.nonce);
        }
    }

    private static class ConfigurableDualECDRBGProvider implements DRBGProvider {
        private final Digest digest;
        private final byte[] nonce;
        private final byte[] personalizationString;
        private final DualECPoints[] pointSet;
        private final int securityStrength;

        public ConfigurableDualECDRBGProvider(DualECPoints[] dualECPointsArr, Digest digest2, byte[] bArr, byte[] bArr2, int i) {
            this.pointSet = new DualECPoints[dualECPointsArr.length];
            System.arraycopy(dualECPointsArr, 0, this.pointSet, 0, dualECPointsArr.length);
            this.digest = digest2;
            this.nonce = bArr;
            this.personalizationString = bArr2;
            this.securityStrength = i;
        }

        public SP80090DRBG get(EntropySource entropySource) {
            return new DualECSP800DRBG(this.pointSet, this.digest, this.securityStrength, entropySource, this.personalizationString, this.nonce);
        }
    }

    private static class DualECDRBGProvider implements DRBGProvider {
        private final Digest digest;
        private final byte[] nonce;
        private final byte[] personalizationString;
        private final int securityStrength;

        public DualECDRBGProvider(Digest digest2, byte[] bArr, byte[] bArr2, int i) {
            this.digest = digest2;
            this.nonce = bArr;
            this.personalizationString = bArr2;
            this.securityStrength = i;
        }

        public SP80090DRBG get(EntropySource entropySource) {
            return new DualECSP800DRBG(this.digest, this.securityStrength, entropySource, this.personalizationString, this.nonce);
        }
    }

    private static class HMacDRBGProvider implements DRBGProvider {
        private final Mac hMac;
        private final byte[] nonce;
        private final byte[] personalizationString;
        private final int securityStrength;

        public HMacDRBGProvider(Mac mac, byte[] bArr, byte[] bArr2, int i) {
            this.hMac = mac;
            this.nonce = bArr;
            this.personalizationString = bArr2;
            this.securityStrength = i;
        }

        public SP80090DRBG get(EntropySource entropySource) {
            return new HMacSP800DRBG(this.hMac, this.securityStrength, entropySource, this.personalizationString, this.nonce);
        }
    }

    private static class HashDRBGProvider implements DRBGProvider {
        private final Digest digest;
        private final byte[] nonce;
        private final byte[] personalizationString;
        private final int securityStrength;

        public HashDRBGProvider(Digest digest2, byte[] bArr, byte[] bArr2, int i) {
            this.digest = digest2;
            this.nonce = bArr;
            this.personalizationString = bArr2;
            this.securityStrength = i;
        }

        public SP80090DRBG get(EntropySource entropySource) {
            return new HashSP800DRBG(this.digest, this.securityStrength, entropySource, this.personalizationString, this.nonce);
        }
    }

    public SP800SecureRandomBuilder() {
        this(new SecureRandom(), false);
    }

    public SP800SecureRandomBuilder(SecureRandom secureRandom, boolean z) {
        this.securityStrength = 256;
        this.entropyBitsRequired = 256;
        this.random = secureRandom;
        this.entropySourceProvider = new BasicEntropySourceProvider(this.random, z);
    }

    public SP800SecureRandomBuilder(EntropySourceProvider entropySourceProvider2) {
        this.securityStrength = 256;
        this.entropyBitsRequired = 256;
        this.random = null;
        this.entropySourceProvider = entropySourceProvider2;
    }

    public SP800SecureRandom buildCTR(BlockCipher blockCipher, int i, byte[] bArr, boolean z) {
        return new SP800SecureRandom(this.random, this.entropySourceProvider.get(this.entropyBitsRequired), new CTRDRBGProvider(blockCipher, i, bArr, this.personalizationString, this.securityStrength), z);
    }

    public SP800SecureRandom buildDualEC(Digest digest, byte[] bArr, boolean z) {
        return new SP800SecureRandom(this.random, this.entropySourceProvider.get(this.entropyBitsRequired), new DualECDRBGProvider(digest, bArr, this.personalizationString, this.securityStrength), z);
    }

    public SP800SecureRandom buildDualEC(DualECPoints[] dualECPointsArr, Digest digest, byte[] bArr, boolean z) {
        return new SP800SecureRandom(this.random, this.entropySourceProvider.get(this.entropyBitsRequired), new ConfigurableDualECDRBGProvider(dualECPointsArr, digest, bArr, this.personalizationString, this.securityStrength), z);
    }

    public SP800SecureRandom buildHMAC(Mac mac, byte[] bArr, boolean z) {
        return new SP800SecureRandom(this.random, this.entropySourceProvider.get(this.entropyBitsRequired), new HMacDRBGProvider(mac, bArr, this.personalizationString, this.securityStrength), z);
    }

    public SP800SecureRandom buildHash(Digest digest, byte[] bArr, boolean z) {
        return new SP800SecureRandom(this.random, this.entropySourceProvider.get(this.entropyBitsRequired), new HashDRBGProvider(digest, bArr, this.personalizationString, this.securityStrength), z);
    }

    public SP800SecureRandomBuilder setEntropyBitsRequired(int i) {
        this.entropyBitsRequired = i;
        return this;
    }

    public SP800SecureRandomBuilder setPersonalizationString(byte[] bArr) {
        this.personalizationString = bArr;
        return this;
    }

    public SP800SecureRandomBuilder setSecurityStrength(int i) {
        this.securityStrength = i;
        return this;
    }
}
