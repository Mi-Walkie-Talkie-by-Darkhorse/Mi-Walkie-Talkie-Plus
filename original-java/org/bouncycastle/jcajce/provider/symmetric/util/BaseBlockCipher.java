package org.bouncycastle.jcajce.provider.symmetric.util;

import java.lang.reflect.Constructor;
import java.nio.ByteBuffer;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import org.bouncycastle.asn1.cms.GCMParameters;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.modes.AEADBlockCipher;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.modes.CCMBlockCipher;
import org.bouncycastle.crypto.modes.CFBBlockCipher;
import org.bouncycastle.crypto.modes.CTSBlockCipher;
import org.bouncycastle.crypto.modes.EAXBlockCipher;
import org.bouncycastle.crypto.modes.GCFBBlockCipher;
import org.bouncycastle.crypto.modes.GCMBlockCipher;
import org.bouncycastle.crypto.modes.GOFBBlockCipher;
import org.bouncycastle.crypto.modes.OCBBlockCipher;
import org.bouncycastle.crypto.modes.OFBBlockCipher;
import org.bouncycastle.crypto.modes.OpenPGPCFBBlockCipher;
import org.bouncycastle.crypto.modes.PGPCFBBlockCipher;
import org.bouncycastle.crypto.modes.SICBlockCipher;
import org.bouncycastle.crypto.paddings.BlockCipherPadding;
import org.bouncycastle.crypto.paddings.ISO10126d2Padding;
import org.bouncycastle.crypto.paddings.ISO7816d4Padding;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.paddings.TBCPadding;
import org.bouncycastle.crypto.paddings.X923Padding;
import org.bouncycastle.crypto.paddings.ZeroBytePadding;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithSBox;
import org.bouncycastle.jcajce.spec.GOST28147ParameterSpec;
import org.bouncycastle.util.Strings;

public class BaseBlockCipher extends BaseWrapCipher implements PBE {
    private static final Class gcmSpecClass = lookup("javax.crypto.spec.GCMParameterSpec");
    private AEADParameters aeadParams;
    private Class[] availableSpecs = {RC2ParameterSpec.class, RC5ParameterSpec.class, gcmSpecClass, IvParameterSpec.class, PBEParameterSpec.class, GOST28147ParameterSpec.class};
    private BlockCipher baseEngine;
    private GenericBlockCipher cipher;
    private int digest;
    private BlockCipherProvider engineProvider;
    private boolean fixedIv = true;
    private int ivLength = 0;
    private ParametersWithIV ivParam;
    private int keySizeInBits;
    private String modeName = null;
    private boolean padded;
    private String pbeAlgorithm = null;
    private PBEParameterSpec pbeSpec = null;
    private int scheme = -1;

    private static class AEADGenericBlockCipher implements GenericBlockCipher {
        private static final Constructor aeadBadTagConstructor;
        private AEADBlockCipher cipher;

        static {
            Class access$000 = BaseBlockCipher.lookup("javax.crypto.AEADBadTagException");
            if (access$000 != null) {
                aeadBadTagConstructor = findExceptionConstructor(access$000);
            } else {
                aeadBadTagConstructor = null;
            }
        }

        AEADGenericBlockCipher(AEADBlockCipher aEADBlockCipher) {
            this.cipher = aEADBlockCipher;
        }

        private static Constructor findExceptionConstructor(Class cls) {
            try {
                return cls.getConstructor(new Class[]{String.class});
            } catch (Exception e) {
                return null;
            }
        }

        public int doFinal(byte[] bArr, int i) throws IllegalStateException, BadPaddingException {
            BadPaddingException badPaddingException;
            try {
                return this.cipher.doFinal(bArr, i);
            } catch (InvalidCipherTextException e) {
                InvalidCipherTextException invalidCipherTextException = e;
                if (aeadBadTagConstructor != null) {
                    try {
                        badPaddingException = (BadPaddingException) aeadBadTagConstructor.newInstance(new Object[]{invalidCipherTextException.getMessage()});
                    } catch (Exception e2) {
                        badPaddingException = null;
                    }
                    if (badPaddingException != null) {
                        throw badPaddingException;
                    }
                }
                throw new BadPaddingException(invalidCipherTextException.getMessage());
            }
        }

        public String getAlgorithmName() {
            return this.cipher.getUnderlyingCipher().getAlgorithmName();
        }

        public int getOutputSize(int i) {
            return this.cipher.getOutputSize(i);
        }

        public BlockCipher getUnderlyingCipher() {
            return this.cipher.getUnderlyingCipher();
        }

        public int getUpdateOutputSize(int i) {
            return this.cipher.getUpdateOutputSize(i);
        }

        public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
            this.cipher.init(z, cipherParameters);
        }

        public int processByte(byte b, byte[] bArr, int i) throws DataLengthException {
            return this.cipher.processByte(b, bArr, i);
        }

        public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
            return this.cipher.processBytes(bArr, i, i2, bArr2, i3);
        }

        public void updateAAD(byte[] bArr, int i, int i2) {
            this.cipher.processAADBytes(bArr, i, i2);
        }

        public boolean wrapOnNoPadding() {
            return false;
        }
    }

    private static class BufferedGenericBlockCipher implements GenericBlockCipher {
        private BufferedBlockCipher cipher;

        BufferedGenericBlockCipher(BlockCipher blockCipher) {
            this.cipher = new PaddedBufferedBlockCipher(blockCipher);
        }

        BufferedGenericBlockCipher(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
            this.cipher = new PaddedBufferedBlockCipher(blockCipher, blockCipherPadding);
        }

        BufferedGenericBlockCipher(BufferedBlockCipher bufferedBlockCipher) {
            this.cipher = bufferedBlockCipher;
        }

        public int doFinal(byte[] bArr, int i) throws IllegalStateException, BadPaddingException {
            try {
                return this.cipher.doFinal(bArr, i);
            } catch (InvalidCipherTextException e) {
                throw new BadPaddingException(e.getMessage());
            }
        }

        public String getAlgorithmName() {
            return this.cipher.getUnderlyingCipher().getAlgorithmName();
        }

        public int getOutputSize(int i) {
            return this.cipher.getOutputSize(i);
        }

        public BlockCipher getUnderlyingCipher() {
            return this.cipher.getUnderlyingCipher();
        }

        public int getUpdateOutputSize(int i) {
            return this.cipher.getUpdateOutputSize(i);
        }

        public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
            this.cipher.init(z, cipherParameters);
        }

        public int processByte(byte b, byte[] bArr, int i) throws DataLengthException {
            return this.cipher.processByte(b, bArr, i);
        }

        public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
            return this.cipher.processBytes(bArr, i, i2, bArr2, i3);
        }

        public void updateAAD(byte[] bArr, int i, int i2) {
            throw new UnsupportedOperationException("AAD is not supported in the current mode.");
        }

        public boolean wrapOnNoPadding() {
            return !(this.cipher instanceof CTSBlockCipher);
        }
    }

    private interface GenericBlockCipher {
        int doFinal(byte[] bArr, int i) throws IllegalStateException, BadPaddingException;

        String getAlgorithmName();

        int getOutputSize(int i);

        BlockCipher getUnderlyingCipher();

        int getUpdateOutputSize(int i);

        void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException;

        int processByte(byte b, byte[] bArr, int i) throws DataLengthException;

        int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException;

        void updateAAD(byte[] bArr, int i, int i2);

        boolean wrapOnNoPadding();
    }

    protected BaseBlockCipher(BlockCipher blockCipher) {
        this.baseEngine = blockCipher;
        this.cipher = new BufferedGenericBlockCipher(blockCipher);
    }

    protected BaseBlockCipher(BlockCipher blockCipher, int i) {
        this.baseEngine = blockCipher;
        this.cipher = new BufferedGenericBlockCipher(blockCipher);
        this.ivLength = i / 8;
    }

    protected BaseBlockCipher(BlockCipher blockCipher, int i, int i2, int i3, int i4) {
        this.baseEngine = blockCipher;
        this.scheme = i;
        this.digest = i2;
        this.keySizeInBits = i3;
        this.ivLength = i4;
        this.cipher = new BufferedGenericBlockCipher(blockCipher);
    }

    protected BaseBlockCipher(BufferedBlockCipher bufferedBlockCipher, int i) {
        this.baseEngine = bufferedBlockCipher.getUnderlyingCipher();
        this.cipher = new BufferedGenericBlockCipher(bufferedBlockCipher);
        this.ivLength = i / 8;
    }

    protected BaseBlockCipher(AEADBlockCipher aEADBlockCipher) {
        this.baseEngine = aEADBlockCipher.getUnderlyingCipher();
        this.ivLength = this.baseEngine.getBlockSize();
        this.cipher = new AEADGenericBlockCipher(aEADBlockCipher);
    }

    protected BaseBlockCipher(AEADBlockCipher aEADBlockCipher, boolean z, int i) {
        this.baseEngine = aEADBlockCipher.getUnderlyingCipher();
        this.fixedIv = z;
        this.ivLength = i;
        this.cipher = new AEADGenericBlockCipher(aEADBlockCipher);
    }

    protected BaseBlockCipher(BlockCipherProvider blockCipherProvider) {
        this.baseEngine = blockCipherProvider.get();
        this.engineProvider = blockCipherProvider;
        this.cipher = new BufferedGenericBlockCipher(blockCipherProvider.get());
    }

    private CipherParameters adjustParameters(AlgorithmParameterSpec algorithmParameterSpec, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithIV) {
            CipherParameters parameters = ((ParametersWithIV) cipherParameters).getParameters();
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                this.ivParam = new ParametersWithIV(parameters, ((IvParameterSpec) algorithmParameterSpec).getIV());
                return this.ivParam;
            } else if (!(algorithmParameterSpec instanceof GOST28147ParameterSpec)) {
                return cipherParameters;
            } else {
                GOST28147ParameterSpec gOST28147ParameterSpec = (GOST28147ParameterSpec) algorithmParameterSpec;
                CipherParameters parametersWithSBox = new ParametersWithSBox(cipherParameters, gOST28147ParameterSpec.getSbox());
                if (!(gOST28147ParameterSpec.getIV() == null || this.ivLength == 0)) {
                    this.ivParam = new ParametersWithIV(parameters, gOST28147ParameterSpec.getIV());
                    parametersWithSBox = this.ivParam;
                }
                return parametersWithSBox;
            }
        } else if (algorithmParameterSpec instanceof IvParameterSpec) {
            this.ivParam = new ParametersWithIV(cipherParameters, ((IvParameterSpec) algorithmParameterSpec).getIV());
            return this.ivParam;
        } else if (!(algorithmParameterSpec instanceof GOST28147ParameterSpec)) {
            return cipherParameters;
        } else {
            GOST28147ParameterSpec gOST28147ParameterSpec2 = (GOST28147ParameterSpec) algorithmParameterSpec;
            ParametersWithSBox parametersWithSBox2 = new ParametersWithSBox(cipherParameters, gOST28147ParameterSpec2.getSbox());
            return (gOST28147ParameterSpec2.getIV() == null || this.ivLength == 0) ? parametersWithSBox2 : new ParametersWithIV(parametersWithSBox2, gOST28147ParameterSpec2.getIV());
        }
    }

    private boolean isAEADModeName(String str) {
        return "CCM".equals(str) || "EAX".equals(str) || "GCM".equals(str) || "OCB".equals(str);
    }

    /* access modifiers changed from: private */
    public static Class lookup(String str) {
        try {
            return BaseBlockCipher.class.getClassLoader().loadClass(str);
        } catch (Exception e) {
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalBlockSizeException, BadPaddingException, ShortBufferException {
        int i4 = 0;
        if (engineGetOutputSize(i2) + i3 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        if (i2 != 0) {
            try {
                i4 = this.cipher.processBytes(bArr, i, i2, bArr2, i3);
            } catch (OutputLengthException e) {
                throw new IllegalBlockSizeException(e.getMessage());
            } catch (DataLengthException e2) {
                throw new IllegalBlockSizeException(e2.getMessage());
            }
        }
        return i4 + this.cipher.doFinal(bArr2, i3 + i4);
    }

    /* access modifiers changed from: protected */
    public byte[] engineDoFinal(byte[] bArr, int i, int i2) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr2 = new byte[engineGetOutputSize(i2)];
        int i3 = i2 != 0 ? this.cipher.processBytes(bArr, i, i2, bArr2, 0) : 0;
        try {
            int doFinal = this.cipher.doFinal(bArr2, i3) + i3;
            if (doFinal == bArr2.length) {
                return bArr2;
            }
            byte[] bArr3 = new byte[doFinal];
            System.arraycopy(bArr2, 0, bArr3, 0, doFinal);
            return bArr3;
        } catch (DataLengthException e) {
            throw new IllegalBlockSizeException(e.getMessage());
        }
    }

    /* access modifiers changed from: protected */
    public int engineGetBlockSize() {
        return this.baseEngine.getBlockSize();
    }

    /* access modifiers changed from: protected */
    public byte[] engineGetIV() {
        if (this.aeadParams != null) {
            return this.aeadParams.getNonce();
        }
        if (this.ivParam != null) {
            return this.ivParam.getIV();
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public int engineGetKeySize(Key key) {
        return key.getEncoded().length * 8;
    }

    /* access modifiers changed from: protected */
    public int engineGetOutputSize(int i) {
        return this.cipher.getOutputSize(i);
    }

    /* access modifiers changed from: protected */
    public AlgorithmParameters engineGetParameters() {
        if (this.engineParams == null) {
            if (this.pbeSpec != null) {
                try {
                    this.engineParams = createParametersInstance(this.pbeAlgorithm);
                    this.engineParams.init(this.pbeSpec);
                } catch (Exception e) {
                    return null;
                }
            } else if (this.ivParam != null) {
                String algorithmName = this.cipher.getUnderlyingCipher().getAlgorithmName();
                if (algorithmName.indexOf(47) >= 0) {
                    algorithmName = algorithmName.substring(0, algorithmName.indexOf(47));
                }
                try {
                    this.engineParams = createParametersInstance(algorithmName);
                    this.engineParams.init(this.ivParam.getIV());
                } catch (Exception e2) {
                    throw new RuntimeException(e2.toString());
                }
            } else if (this.aeadParams != null) {
                try {
                    this.engineParams = createParametersInstance("GCM");
                    this.engineParams.init(new GCMParameters(this.aeadParams.getNonce(), this.aeadParams.getMacSize() / 8).getEncoded());
                } catch (Exception e3) {
                    throw new RuntimeException(e3.toString());
                }
            }
        }
        return this.engineParams;
    }

    /* access modifiers changed from: protected */
    public void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec algorithmParameterSpec;
        if (algorithmParameters != null) {
            int i2 = 0;
            while (true) {
                if (i2 == this.availableSpecs.length) {
                    algorithmParameterSpec = null;
                    break;
                }
                if (this.availableSpecs[i2] != null) {
                    try {
                        algorithmParameterSpec = algorithmParameters.getParameterSpec(this.availableSpecs[i2]);
                        break;
                    } catch (Exception e) {
                    }
                }
                i2++;
            }
            if (algorithmParameterSpec == null) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        } else {
            algorithmParameterSpec = null;
        }
        engineInit(i, key, algorithmParameterSpec, secureRandom);
        this.engineParams = algorithmParameters;
    }

    /* access modifiers changed from: protected */
    public void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new InvalidKeyException(e.getMessage());
        }
    }

    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r1v1, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r1v15 */
    /* JADX WARNING: type inference failed for: r2v20, types: [org.bouncycastle.crypto.params.RC5Parameters, org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r2v22 */
    /* JADX WARNING: type inference failed for: r1v23 */
    /* JADX WARNING: type inference failed for: r3v17, types: [org.bouncycastle.crypto.params.ParametersWithIV] */
    /* JADX WARNING: type inference failed for: r2v23 */
    /* JADX WARNING: type inference failed for: r2v24 */
    /* JADX WARNING: type inference failed for: r1v25 */
    /* JADX WARNING: type inference failed for: r3v18, types: [org.bouncycastle.crypto.params.ParametersWithIV] */
    /* JADX WARNING: type inference failed for: r2v27 */
    /* JADX WARNING: type inference failed for: r2v30, types: [org.bouncycastle.crypto.params.RC2Parameters, org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r2v31 */
    /* JADX WARNING: type inference failed for: r1v38 */
    /* JADX WARNING: type inference failed for: r3v34, types: [org.bouncycastle.crypto.params.ParametersWithIV] */
    /* JADX WARNING: type inference failed for: r2v32 */
    /* JADX WARNING: type inference failed for: r2v33 */
    /* JADX WARNING: type inference failed for: r1v40 */
    /* JADX WARNING: type inference failed for: r3v35, types: [org.bouncycastle.crypto.params.ParametersWithIV] */
    /* JADX WARNING: type inference failed for: r2v36 */
    /* JADX WARNING: type inference failed for: r2v37, types: [org.bouncycastle.crypto.params.ParametersWithSBox, org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r2v38 */
    /* JADX WARNING: type inference failed for: r1v45 */
    /* JADX WARNING: type inference failed for: r3v40, types: [org.bouncycastle.crypto.params.ParametersWithIV] */
    /* JADX WARNING: type inference failed for: r2v39 */
    /* JADX WARNING: type inference failed for: r2v40 */
    /* JADX WARNING: type inference failed for: r1v47 */
    /* JADX WARNING: type inference failed for: r3v41, types: [org.bouncycastle.crypto.params.ParametersWithIV] */
    /* JADX WARNING: type inference failed for: r2v43 */
    /* JADX WARNING: type inference failed for: r1v50, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r2v45 */
    /* JADX WARNING: type inference failed for: r2v46, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r1v51 */
    /* JADX WARNING: type inference failed for: r1v52, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r1v56, types: [org.bouncycastle.crypto.params.ParametersWithRandom] */
    /* JADX WARNING: type inference failed for: r2v86, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r2v87 */
    /* JADX WARNING: type inference failed for: r1v72 */
    /* JADX WARNING: type inference failed for: r1v73 */
    /* JADX WARNING: type inference failed for: r2v88, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r2v89, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r2v98, types: [org.bouncycastle.crypto.params.KeyParameter] */
    /* JADX WARNING: type inference failed for: r1v85 */
    /* JADX WARNING: type inference failed for: r2v103, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r1v90 */
    /* JADX WARNING: type inference failed for: r1v91 */
    /* JADX WARNING: type inference failed for: r2v116, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r2v117 */
    /* JADX WARNING: type inference failed for: r1v97 */
    /* JADX WARNING: type inference failed for: r1v98 */
    /* JADX WARNING: type inference failed for: r2v118, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r2v126, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARNING: type inference failed for: r1v105 */
    /* JADX WARNING: type inference failed for: r1v106 */
    /* JADX WARNING: type inference failed for: r2v141 */
    /* JADX WARNING: type inference failed for: r2v142 */
    /* JADX WARNING: type inference failed for: r2v143 */
    /* JADX WARNING: type inference failed for: r1v110 */
    /* JADX WARNING: type inference failed for: r2v144 */
    /* JADX WARNING: type inference failed for: r2v145 */
    /* JADX WARNING: type inference failed for: r2v146 */
    /* JADX WARNING: type inference failed for: r2v147 */
    /* JADX WARNING: type inference failed for: r2v148 */
    /* access modifiers changed from: protected */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:133:0x0291 A[SYNTHETIC, Splitter:B:133:0x0291] */
    /* JADX WARNING: Removed duplicated region for block: B:227:0x04d9 A[SYNTHETIC, Splitter:B:227:0x04d9] */
    /* JADX WARNING: Removed duplicated region for block: B:229:0x04e0 A[Catch:{ Exception -> 0x02b0 }] */
    /* JADX WARNING: Unknown variable types count: 31 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void engineInit(int r11, java.security.Key r12, java.security.spec.AlgorithmParameterSpec r13, java.security.SecureRandom r14) throws java.security.InvalidKeyException, java.security.InvalidAlgorithmParameterException {
        /*
            r10 = this;
            r2 = 2
            r9 = 1
            r1 = 0
            r8 = 0
            r10.pbeSpec = r1
            r10.pbeAlgorithm = r1
            r10.engineParams = r1
            r10.aeadParams = r1
            boolean r3 = r12 instanceof javax.crypto.SecretKey
            if (r3 != 0) goto L_0x0033
            java.security.InvalidKeyException r1 = new java.security.InvalidKeyException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Key for algorithm "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r12.getAlgorithm()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = " not suitable for symmetric enryption."
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L_0x0033:
            if (r13 != 0) goto L_0x004b
            org.bouncycastle.crypto.BlockCipher r3 = r10.baseEngine
            java.lang.String r3 = r3.getAlgorithmName()
            java.lang.String r4 = "RC5-64"
            boolean r3 = r3.startsWith(r4)
            if (r3 == 0) goto L_0x004b
            java.security.InvalidAlgorithmParameterException r1 = new java.security.InvalidAlgorithmParameterException
            java.lang.String r2 = "RC5 requires an RC5ParametersSpec to be passed in."
            r1.<init>(r2)
            throw r1
        L_0x004b:
            int r3 = r10.scheme
            if (r3 == r2) goto L_0x0053
            boolean r3 = r12 instanceof org.bouncycastle.jcajce.PKCS12Key
            if (r3 == 0) goto L_0x0124
        L_0x0053:
            r0 = r12
            javax.crypto.SecretKey r0 = (javax.crypto.SecretKey) r0     // Catch:{ Exception -> 0x008d }
            r1 = r0
            boolean r3 = r13 instanceof javax.crypto.spec.PBEParameterSpec
            if (r3 == 0) goto L_0x0060
            r3 = r13
            javax.crypto.spec.PBEParameterSpec r3 = (javax.crypto.spec.PBEParameterSpec) r3
            r10.pbeSpec = r3
        L_0x0060:
            boolean r3 = r1 instanceof javax.crypto.interfaces.PBEKey
            if (r3 == 0) goto L_0x007d
            javax.crypto.spec.PBEParameterSpec r3 = r10.pbeSpec
            if (r3 != 0) goto L_0x007d
            javax.crypto.spec.PBEParameterSpec r4 = new javax.crypto.spec.PBEParameterSpec
            r3 = r1
            javax.crypto.interfaces.PBEKey r3 = (javax.crypto.interfaces.PBEKey) r3
            byte[] r5 = r3.getSalt()
            r3 = r1
            javax.crypto.interfaces.PBEKey r3 = (javax.crypto.interfaces.PBEKey) r3
            int r3 = r3.getIterationCount()
            r4.<init>(r5, r3)
            r10.pbeSpec = r4
        L_0x007d:
            javax.crypto.spec.PBEParameterSpec r3 = r10.pbeSpec
            if (r3 != 0) goto L_0x0096
            boolean r3 = r1 instanceof javax.crypto.interfaces.PBEKey
            if (r3 != 0) goto L_0x0096
            java.security.InvalidKeyException r1 = new java.security.InvalidKeyException
            java.lang.String r2 = "Algorithm requires a PBE key"
            r1.<init>(r2)
            throw r1
        L_0x008d:
            r1 = move-exception
            java.security.InvalidKeyException r1 = new java.security.InvalidKeyException
            java.lang.String r2 = "PKCS12 requires a SecretKey/PBEKey"
            r1.<init>(r2)
            throw r1
        L_0x0096:
            boolean r3 = r12 instanceof org.bouncycastle.jcajce.provider.symmetric.util.BCPBEKey
            if (r3 == 0) goto L_0x010b
            r3 = r12
            org.bouncycastle.jcajce.provider.symmetric.util.BCPBEKey r3 = (org.bouncycastle.jcajce.provider.symmetric.util.BCPBEKey) r3
            org.bouncycastle.crypto.CipherParameters r3 = r3.getParam()
            if (r3 == 0) goto L_0x00f2
            r1 = r12
            org.bouncycastle.jcajce.provider.symmetric.util.BCPBEKey r1 = (org.bouncycastle.jcajce.provider.symmetric.util.BCPBEKey) r1
            org.bouncycastle.crypto.CipherParameters r2 = r1.getParam()
        L_0x00aa:
            boolean r1 = r2 instanceof org.bouncycastle.crypto.params.ParametersWithIV
            if (r1 == 0) goto L_0x00b3
            r1 = r2
            org.bouncycastle.crypto.params.ParametersWithIV r1 = (org.bouncycastle.crypto.params.ParametersWithIV) r1
            r10.ivParam = r1
        L_0x00b3:
            r1 = r2
        L_0x00b4:
            boolean r2 = r13 instanceof javax.crypto.spec.IvParameterSpec
            if (r2 == 0) goto L_0x02db
            int r2 = r10.ivLength
            if (r2 == 0) goto L_0x02c5
            javax.crypto.spec.IvParameterSpec r13 = (javax.crypto.spec.IvParameterSpec) r13
            byte[] r2 = r13.getIV()
            int r2 = r2.length
            int r3 = r10.ivLength
            if (r2 == r3) goto L_0x0241
            org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$GenericBlockCipher r2 = r10.cipher
            boolean r2 = r2 instanceof org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.AEADGenericBlockCipher
            if (r2 != 0) goto L_0x0241
            boolean r2 = r10.fixedIv
            if (r2 == 0) goto L_0x0241
            java.security.InvalidAlgorithmParameterException r1 = new java.security.InvalidAlgorithmParameterException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "IV must be "
            java.lang.StringBuilder r2 = r2.append(r3)
            int r3 = r10.ivLength
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = " bytes long."
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L_0x00f2:
            byte[] r1 = r1.getEncoded()
            int r3 = r10.digest
            int r4 = r10.keySizeInBits
            int r5 = r10.ivLength
            int r5 = r5 * 8
            javax.crypto.spec.PBEParameterSpec r6 = r10.pbeSpec
            org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$GenericBlockCipher r7 = r10.cipher
            java.lang.String r7 = r7.getAlgorithmName()
            org.bouncycastle.crypto.CipherParameters r2 = org.bouncycastle.jcajce.provider.symmetric.util.PBE.Util.makePBEParameters(r1, r2, r3, r4, r5, r6, r7)
            goto L_0x00aa
        L_0x010b:
            byte[] r1 = r1.getEncoded()
            int r3 = r10.digest
            int r4 = r10.keySizeInBits
            int r5 = r10.ivLength
            int r5 = r5 * 8
            javax.crypto.spec.PBEParameterSpec r6 = r10.pbeSpec
            org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$GenericBlockCipher r7 = r10.cipher
            java.lang.String r7 = r7.getAlgorithmName()
            org.bouncycastle.crypto.CipherParameters r2 = org.bouncycastle.jcajce.provider.symmetric.util.PBE.Util.makePBEParameters(r1, r2, r3, r4, r5, r6, r7)
            goto L_0x00aa
        L_0x0124:
            boolean r2 = r12 instanceof org.bouncycastle.jcajce.PBKDF1Key
            if (r2 == 0) goto L_0x0176
            r1 = r12
            org.bouncycastle.jcajce.PBKDF1Key r1 = (org.bouncycastle.jcajce.PBKDF1Key) r1
            boolean r2 = r13 instanceof javax.crypto.spec.PBEParameterSpec
            if (r2 == 0) goto L_0x0134
            r2 = r13
            javax.crypto.spec.PBEParameterSpec r2 = (javax.crypto.spec.PBEParameterSpec) r2
            r10.pbeSpec = r2
        L_0x0134:
            boolean r2 = r1 instanceof org.bouncycastle.jcajce.PBKDF1KeyWithParameters
            if (r2 == 0) goto L_0x0151
            javax.crypto.spec.PBEParameterSpec r2 = r10.pbeSpec
            if (r2 != 0) goto L_0x0151
            javax.crypto.spec.PBEParameterSpec r3 = new javax.crypto.spec.PBEParameterSpec
            r2 = r1
            org.bouncycastle.jcajce.PBKDF1KeyWithParameters r2 = (org.bouncycastle.jcajce.PBKDF1KeyWithParameters) r2
            byte[] r4 = r2.getSalt()
            r2 = r1
            org.bouncycastle.jcajce.PBKDF1KeyWithParameters r2 = (org.bouncycastle.jcajce.PBKDF1KeyWithParameters) r2
            int r2 = r2.getIterationCount()
            r3.<init>(r4, r2)
            r10.pbeSpec = r3
        L_0x0151:
            byte[] r1 = r1.getEncoded()
            int r3 = r10.digest
            int r4 = r10.keySizeInBits
            int r2 = r10.ivLength
            int r5 = r2 * 8
            javax.crypto.spec.PBEParameterSpec r6 = r10.pbeSpec
            org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$GenericBlockCipher r2 = r10.cipher
            java.lang.String r7 = r2.getAlgorithmName()
            r2 = r8
            org.bouncycastle.crypto.CipherParameters r2 = org.bouncycastle.jcajce.provider.symmetric.util.PBE.Util.makePBEParameters(r1, r2, r3, r4, r5, r6, r7)
            boolean r1 = r2 instanceof org.bouncycastle.crypto.params.ParametersWithIV
            if (r1 == 0) goto L_0x0173
            r1 = r2
            org.bouncycastle.crypto.params.ParametersWithIV r1 = (org.bouncycastle.crypto.params.ParametersWithIV) r1
            r10.ivParam = r1
        L_0x0173:
            r1 = r2
            goto L_0x00b4
        L_0x0176:
            boolean r2 = r12 instanceof org.bouncycastle.jcajce.provider.symmetric.util.BCPBEKey
            if (r2 == 0) goto L_0x01ce
            r1 = r12
            org.bouncycastle.jcajce.provider.symmetric.util.BCPBEKey r1 = (org.bouncycastle.jcajce.provider.symmetric.util.BCPBEKey) r1
            org.bouncycastle.asn1.ASN1ObjectIdentifier r2 = r1.getOID()
            if (r2 == 0) goto L_0x01a7
            org.bouncycastle.asn1.ASN1ObjectIdentifier r2 = r1.getOID()
            java.lang.String r2 = r2.getId()
            r10.pbeAlgorithm = r2
        L_0x018d:
            org.bouncycastle.crypto.CipherParameters r2 = r1.getParam()
            if (r2 == 0) goto L_0x01ae
            org.bouncycastle.crypto.CipherParameters r1 = r1.getParam()
            org.bouncycastle.crypto.CipherParameters r2 = r10.adjustParameters(r13, r1)
        L_0x019b:
            boolean r1 = r2 instanceof org.bouncycastle.crypto.params.ParametersWithIV
            if (r1 == 0) goto L_0x01a4
            r1 = r2
            org.bouncycastle.crypto.params.ParametersWithIV r1 = (org.bouncycastle.crypto.params.ParametersWithIV) r1
            r10.ivParam = r1
        L_0x01a4:
            r1 = r2
            goto L_0x00b4
        L_0x01a7:
            java.lang.String r2 = r1.getAlgorithm()
            r10.pbeAlgorithm = r2
            goto L_0x018d
        L_0x01ae:
            boolean r2 = r13 instanceof javax.crypto.spec.PBEParameterSpec
            if (r2 == 0) goto L_0x01c6
            r2 = r13
            javax.crypto.spec.PBEParameterSpec r2 = (javax.crypto.spec.PBEParameterSpec) r2
            r10.pbeSpec = r2
            org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$GenericBlockCipher r2 = r10.cipher
            org.bouncycastle.crypto.BlockCipher r2 = r2.getUnderlyingCipher()
            java.lang.String r2 = r2.getAlgorithmName()
            org.bouncycastle.crypto.CipherParameters r2 = org.bouncycastle.jcajce.provider.symmetric.util.PBE.Util.makePBEParameters(r1, r13, r2)
            goto L_0x019b
        L_0x01c6:
            java.security.InvalidAlgorithmParameterException r1 = new java.security.InvalidAlgorithmParameterException
            java.lang.String r2 = "PBE requires PBE parameters to be set."
            r1.<init>(r2)
            throw r1
        L_0x01ce:
            boolean r2 = r12 instanceof javax.crypto.interfaces.PBEKey
            if (r2 == 0) goto L_0x0217
            r1 = r12
            javax.crypto.interfaces.PBEKey r1 = (javax.crypto.interfaces.PBEKey) r1
            r2 = r13
            javax.crypto.spec.PBEParameterSpec r2 = (javax.crypto.spec.PBEParameterSpec) r2
            r10.pbeSpec = r2
            boolean r2 = r1 instanceof org.bouncycastle.jcajce.PKCS12KeyWithParameters
            if (r2 == 0) goto L_0x01f1
            javax.crypto.spec.PBEParameterSpec r2 = r10.pbeSpec
            if (r2 != 0) goto L_0x01f1
            javax.crypto.spec.PBEParameterSpec r2 = new javax.crypto.spec.PBEParameterSpec
            byte[] r3 = r1.getSalt()
            int r4 = r1.getIterationCount()
            r2.<init>(r3, r4)
            r10.pbeSpec = r2
        L_0x01f1:
            byte[] r1 = r1.getEncoded()
            int r2 = r10.scheme
            int r3 = r10.digest
            int r4 = r10.keySizeInBits
            int r5 = r10.ivLength
            int r5 = r5 * 8
            javax.crypto.spec.PBEParameterSpec r6 = r10.pbeSpec
            org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$GenericBlockCipher r7 = r10.cipher
            java.lang.String r7 = r7.getAlgorithmName()
            org.bouncycastle.crypto.CipherParameters r2 = org.bouncycastle.jcajce.provider.symmetric.util.PBE.Util.makePBEParameters(r1, r2, r3, r4, r5, r6, r7)
            boolean r1 = r2 instanceof org.bouncycastle.crypto.params.ParametersWithIV
            if (r1 == 0) goto L_0x0214
            r1 = r2
            org.bouncycastle.crypto.params.ParametersWithIV r1 = (org.bouncycastle.crypto.params.ParametersWithIV) r1
            r10.ivParam = r1
        L_0x0214:
            r1 = r2
            goto L_0x00b4
        L_0x0217:
            boolean r2 = r12 instanceof org.bouncycastle.jcajce.spec.RepeatedSecretKeySpec
            if (r2 != 0) goto L_0x00b4
            int r1 = r10.scheme
            if (r1 == 0) goto L_0x022d
            int r1 = r10.scheme
            r2 = 4
            if (r1 == r2) goto L_0x022d
            int r1 = r10.scheme
            if (r1 == r9) goto L_0x022d
            int r1 = r10.scheme
            r2 = 5
            if (r1 != r2) goto L_0x0235
        L_0x022d:
            java.security.InvalidKeyException r1 = new java.security.InvalidKeyException
            java.lang.String r2 = "Algorithm requires a PBE key"
            r1.<init>(r2)
            throw r1
        L_0x0235:
            org.bouncycastle.crypto.params.KeyParameter r2 = new org.bouncycastle.crypto.params.KeyParameter
            byte[] r1 = r12.getEncoded()
            r2.<init>(r1)
            r1 = r2
            goto L_0x00b4
        L_0x0241:
            boolean r2 = r1 instanceof org.bouncycastle.crypto.params.ParametersWithIV
            if (r2 == 0) goto L_0x02bb
            org.bouncycastle.crypto.params.ParametersWithIV r2 = new org.bouncycastle.crypto.params.ParametersWithIV
            org.bouncycastle.crypto.params.ParametersWithIV r1 = (org.bouncycastle.crypto.params.ParametersWithIV) r1
            org.bouncycastle.crypto.CipherParameters r1 = r1.getParameters()
            byte[] r3 = r13.getIV()
            r2.<init>(r1, r3)
        L_0x0254:
            r1 = r2
            org.bouncycastle.crypto.params.ParametersWithIV r1 = (org.bouncycastle.crypto.params.ParametersWithIV) r1
            r10.ivParam = r1
            r1 = r2
        L_0x025a:
            int r2 = r10.ivLength
            if (r2 == 0) goto L_0x04ea
            boolean r2 = r1 instanceof org.bouncycastle.crypto.params.ParametersWithIV
            if (r2 != 0) goto L_0x04ea
            boolean r2 = r1 instanceof org.bouncycastle.crypto.params.AEADParameters
            if (r2 != 0) goto L_0x04ea
            if (r14 != 0) goto L_0x04ed
            java.security.SecureRandom r2 = new java.security.SecureRandom
            r2.<init>()
        L_0x026d:
            if (r11 == r9) goto L_0x0272
            r3 = 3
            if (r11 != r3) goto L_0x04bf
        L_0x0272:
            int r3 = r10.ivLength
            byte[] r3 = new byte[r3]
            r2.nextBytes(r3)
            org.bouncycastle.crypto.params.ParametersWithIV r2 = new org.bouncycastle.crypto.params.ParametersWithIV
            r2.<init>(r1, r3)
            r1 = r2
            org.bouncycastle.crypto.params.ParametersWithIV r1 = (org.bouncycastle.crypto.params.ParametersWithIV) r1
            r10.ivParam = r1
        L_0x0283:
            if (r14 == 0) goto L_0x04e7
            boolean r1 = r10.padded
            if (r1 == 0) goto L_0x04e7
            org.bouncycastle.crypto.params.ParametersWithRandom r1 = new org.bouncycastle.crypto.params.ParametersWithRandom
            r1.<init>(r2, r14)
        L_0x028e:
            switch(r11) {
                case 1: goto L_0x04d9;
                case 2: goto L_0x04e0;
                case 3: goto L_0x04d9;
                case 4: goto L_0x04e0;
                default: goto L_0x0291;
            }
        L_0x0291:
            java.security.InvalidParameterException r1 = new java.security.InvalidParameterException     // Catch:{ Exception -> 0x02b0 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x02b0 }
            r2.<init>()     // Catch:{ Exception -> 0x02b0 }
            java.lang.String r3 = "unknown opmode "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Exception -> 0x02b0 }
            java.lang.StringBuilder r2 = r2.append(r11)     // Catch:{ Exception -> 0x02b0 }
            java.lang.String r3 = " passed"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Exception -> 0x02b0 }
            java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x02b0 }
            r1.<init>(r2)     // Catch:{ Exception -> 0x02b0 }
            throw r1     // Catch:{ Exception -> 0x02b0 }
        L_0x02b0:
            r1 = move-exception
            org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$1 r2 = new org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$1
            java.lang.String r3 = r1.getMessage()
            r2.<init>(r3, r1)
            throw r2
        L_0x02bb:
            org.bouncycastle.crypto.params.ParametersWithIV r2 = new org.bouncycastle.crypto.params.ParametersWithIV
            byte[] r3 = r13.getIV()
            r2.<init>(r1, r3)
            goto L_0x0254
        L_0x02c5:
            java.lang.String r2 = r10.modeName
            if (r2 == 0) goto L_0x025a
            java.lang.String r2 = r10.modeName
            java.lang.String r3 = "ECB"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x025a
            java.security.InvalidAlgorithmParameterException r1 = new java.security.InvalidAlgorithmParameterException
            java.lang.String r2 = "ECB mode does not use an IV"
            r1.<init>(r2)
            throw r1
        L_0x02db:
            boolean r2 = r13 instanceof org.bouncycastle.jcajce.spec.GOST28147ParameterSpec
            if (r2 == 0) goto L_0x0327
            r1 = r13
            org.bouncycastle.jcajce.spec.GOST28147ParameterSpec r1 = (org.bouncycastle.jcajce.spec.GOST28147ParameterSpec) r1
            org.bouncycastle.crypto.params.ParametersWithSBox r2 = new org.bouncycastle.crypto.params.ParametersWithSBox
            org.bouncycastle.crypto.params.KeyParameter r3 = new org.bouncycastle.crypto.params.KeyParameter
            byte[] r4 = r12.getEncoded()
            r3.<init>(r4)
            org.bouncycastle.jcajce.spec.GOST28147ParameterSpec r13 = (org.bouncycastle.jcajce.spec.GOST28147ParameterSpec) r13
            byte[] r4 = r13.getSbox()
            r2.<init>(r3, r4)
            byte[] r3 = r1.getIV()
            if (r3 == 0) goto L_0x0319
            int r3 = r10.ivLength
            if (r3 == 0) goto L_0x0319
            boolean r3 = r2 instanceof org.bouncycastle.crypto.params.ParametersWithIV
            if (r3 == 0) goto L_0x031c
            org.bouncycastle.crypto.params.ParametersWithIV r3 = new org.bouncycastle.crypto.params.ParametersWithIV
            org.bouncycastle.crypto.params.ParametersWithIV r2 = (org.bouncycastle.crypto.params.ParametersWithIV) r2
            org.bouncycastle.crypto.CipherParameters r2 = r2.getParameters()
            byte[] r1 = r1.getIV()
            r3.<init>(r2, r1)
            r2 = r3
        L_0x0314:
            r1 = r2
            org.bouncycastle.crypto.params.ParametersWithIV r1 = (org.bouncycastle.crypto.params.ParametersWithIV) r1
            r10.ivParam = r1
        L_0x0319:
            r1 = r2
            goto L_0x025a
        L_0x031c:
            org.bouncycastle.crypto.params.ParametersWithIV r3 = new org.bouncycastle.crypto.params.ParametersWithIV
            byte[] r1 = r1.getIV()
            r3.<init>(r2, r1)
            r2 = r3
            goto L_0x0314
        L_0x0327:
            boolean r2 = r13 instanceof javax.crypto.spec.RC2ParameterSpec
            if (r2 == 0) goto L_0x036e
            r1 = r13
            javax.crypto.spec.RC2ParameterSpec r1 = (javax.crypto.spec.RC2ParameterSpec) r1
            org.bouncycastle.crypto.params.RC2Parameters r2 = new org.bouncycastle.crypto.params.RC2Parameters
            byte[] r3 = r12.getEncoded()
            javax.crypto.spec.RC2ParameterSpec r13 = (javax.crypto.spec.RC2ParameterSpec) r13
            int r4 = r13.getEffectiveKeyBits()
            r2.<init>(r3, r4)
            byte[] r3 = r1.getIV()
            if (r3 == 0) goto L_0x0360
            int r3 = r10.ivLength
            if (r3 == 0) goto L_0x0360
            boolean r3 = r2 instanceof org.bouncycastle.crypto.params.ParametersWithIV
            if (r3 == 0) goto L_0x0363
            org.bouncycastle.crypto.params.ParametersWithIV r3 = new org.bouncycastle.crypto.params.ParametersWithIV
            org.bouncycastle.crypto.params.ParametersWithIV r2 = (org.bouncycastle.crypto.params.ParametersWithIV) r2
            org.bouncycastle.crypto.CipherParameters r2 = r2.getParameters()
            byte[] r1 = r1.getIV()
            r3.<init>(r2, r1)
            r2 = r3
        L_0x035b:
            r1 = r2
            org.bouncycastle.crypto.params.ParametersWithIV r1 = (org.bouncycastle.crypto.params.ParametersWithIV) r1
            r10.ivParam = r1
        L_0x0360:
            r1 = r2
            goto L_0x025a
        L_0x0363:
            org.bouncycastle.crypto.params.ParametersWithIV r3 = new org.bouncycastle.crypto.params.ParametersWithIV
            byte[] r1 = r1.getIV()
            r3.<init>(r2, r1)
            r2 = r3
            goto L_0x035b
        L_0x036e:
            boolean r2 = r13 instanceof javax.crypto.spec.RC5ParameterSpec
            if (r2 == 0) goto L_0x043d
            r1 = r13
            javax.crypto.spec.RC5ParameterSpec r1 = (javax.crypto.spec.RC5ParameterSpec) r1
            org.bouncycastle.crypto.params.RC5Parameters r2 = new org.bouncycastle.crypto.params.RC5Parameters
            byte[] r3 = r12.getEncoded()
            javax.crypto.spec.RC5ParameterSpec r13 = (javax.crypto.spec.RC5ParameterSpec) r13
            int r4 = r13.getRounds()
            r2.<init>(r3, r4)
            org.bouncycastle.crypto.BlockCipher r3 = r10.baseEngine
            java.lang.String r3 = r3.getAlgorithmName()
            java.lang.String r4 = "RC5"
            boolean r3 = r3.startsWith(r4)
            if (r3 == 0) goto L_0x0404
            org.bouncycastle.crypto.BlockCipher r3 = r10.baseEngine
            java.lang.String r3 = r3.getAlgorithmName()
            java.lang.String r4 = "RC5-32"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x03cb
            int r3 = r1.getWordSize()
            r4 = 32
            if (r3 == r4) goto L_0x040c
            java.security.InvalidAlgorithmParameterException r2 = new java.security.InvalidAlgorithmParameterException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "RC5 already set up for a word size of 32 not "
            java.lang.StringBuilder r3 = r3.append(r4)
            int r1 = r1.getWordSize()
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r3 = "."
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r1 = r1.toString()
            r2.<init>(r1)
            throw r2
        L_0x03cb:
            org.bouncycastle.crypto.BlockCipher r3 = r10.baseEngine
            java.lang.String r3 = r3.getAlgorithmName()
            java.lang.String r4 = "RC5-64"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x040c
            int r3 = r1.getWordSize()
            r4 = 64
            if (r3 == r4) goto L_0x040c
            java.security.InvalidAlgorithmParameterException r2 = new java.security.InvalidAlgorithmParameterException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "RC5 already set up for a word size of 64 not "
            java.lang.StringBuilder r3 = r3.append(r4)
            int r1 = r1.getWordSize()
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r3 = "."
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r1 = r1.toString()
            r2.<init>(r1)
            throw r2
        L_0x0404:
            java.security.InvalidAlgorithmParameterException r1 = new java.security.InvalidAlgorithmParameterException
            java.lang.String r2 = "RC5 parameters passed to a cipher that is not RC5."
            r1.<init>(r2)
            throw r1
        L_0x040c:
            byte[] r3 = r1.getIV()
            if (r3 == 0) goto L_0x042f
            int r3 = r10.ivLength
            if (r3 == 0) goto L_0x042f
            boolean r3 = r2 instanceof org.bouncycastle.crypto.params.ParametersWithIV
            if (r3 == 0) goto L_0x0432
            org.bouncycastle.crypto.params.ParametersWithIV r3 = new org.bouncycastle.crypto.params.ParametersWithIV
            org.bouncycastle.crypto.params.ParametersWithIV r2 = (org.bouncycastle.crypto.params.ParametersWithIV) r2
            org.bouncycastle.crypto.CipherParameters r2 = r2.getParameters()
            byte[] r1 = r1.getIV()
            r3.<init>(r2, r1)
            r2 = r3
        L_0x042a:
            r1 = r2
            org.bouncycastle.crypto.params.ParametersWithIV r1 = (org.bouncycastle.crypto.params.ParametersWithIV) r1
            r10.ivParam = r1
        L_0x042f:
            r1 = r2
            goto L_0x025a
        L_0x0432:
            org.bouncycastle.crypto.params.ParametersWithIV r3 = new org.bouncycastle.crypto.params.ParametersWithIV
            byte[] r1 = r1.getIV()
            r3.<init>(r2, r1)
            r2 = r3
            goto L_0x042a
        L_0x043d:
            java.lang.Class r2 = gcmSpecClass
            if (r2 == 0) goto L_0x04b1
            java.lang.Class r2 = gcmSpecClass
            boolean r2 = r2.isInstance(r13)
            if (r2 == 0) goto L_0x04b1
            java.lang.String r2 = r10.modeName
            boolean r2 = r10.isAEADModeName(r2)
            if (r2 != 0) goto L_0x045f
            org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$GenericBlockCipher r2 = r10.cipher
            boolean r2 = r2 instanceof org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.AEADGenericBlockCipher
            if (r2 != 0) goto L_0x045f
            java.security.InvalidAlgorithmParameterException r1 = new java.security.InvalidAlgorithmParameterException
            java.lang.String r2 = "GCMParameterSpec can only be used with AEAD modes."
            r1.<init>(r2)
            throw r1
        L_0x045f:
            java.lang.Class r2 = gcmSpecClass     // Catch:{ Exception -> 0x04a8 }
            java.lang.String r3 = "getTLen"
            r4 = 0
            java.lang.Class[] r4 = new java.lang.Class[r4]     // Catch:{ Exception -> 0x04a8 }
            java.lang.reflect.Method r4 = r2.getDeclaredMethod(r3, r4)     // Catch:{ Exception -> 0x04a8 }
            java.lang.Class r2 = gcmSpecClass     // Catch:{ Exception -> 0x04a8 }
            java.lang.String r3 = "getIV"
            r5 = 0
            java.lang.Class[] r5 = new java.lang.Class[r5]     // Catch:{ Exception -> 0x04a8 }
            java.lang.reflect.Method r5 = r2.getDeclaredMethod(r3, r5)     // Catch:{ Exception -> 0x04a8 }
            boolean r2 = r1 instanceof org.bouncycastle.crypto.params.ParametersWithIV     // Catch:{ Exception -> 0x04a8 }
            if (r2 == 0) goto L_0x04a4
            org.bouncycastle.crypto.params.ParametersWithIV r1 = (org.bouncycastle.crypto.params.ParametersWithIV) r1     // Catch:{ Exception -> 0x04a8 }
            org.bouncycastle.crypto.CipherParameters r1 = r1.getParameters()     // Catch:{ Exception -> 0x04a8 }
            org.bouncycastle.crypto.params.KeyParameter r1 = (org.bouncycastle.crypto.params.KeyParameter) r1     // Catch:{ Exception -> 0x04a8 }
            r3 = r1
        L_0x0482:
            org.bouncycastle.crypto.params.AEADParameters r2 = new org.bouncycastle.crypto.params.AEADParameters     // Catch:{ Exception -> 0x04a8 }
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Exception -> 0x04a8 }
            java.lang.Object r1 = r4.invoke(r13, r1)     // Catch:{ Exception -> 0x04a8 }
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch:{ Exception -> 0x04a8 }
            int r4 = r1.intValue()     // Catch:{ Exception -> 0x04a8 }
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Exception -> 0x04a8 }
            java.lang.Object r1 = r5.invoke(r13, r1)     // Catch:{ Exception -> 0x04a8 }
            byte[] r1 = (byte[]) r1     // Catch:{ Exception -> 0x04a8 }
            byte[] r1 = (byte[]) r1     // Catch:{ Exception -> 0x04a8 }
            r2.<init>(r3, r4, r1)     // Catch:{ Exception -> 0x04a8 }
            r10.aeadParams = r2     // Catch:{ Exception -> 0x04a8 }
            r1 = r2
            goto L_0x025a
        L_0x04a4:
            org.bouncycastle.crypto.params.KeyParameter r1 = (org.bouncycastle.crypto.params.KeyParameter) r1     // Catch:{ Exception -> 0x04a8 }
            r3 = r1
            goto L_0x0482
        L_0x04a8:
            r1 = move-exception
            java.security.InvalidAlgorithmParameterException r1 = new java.security.InvalidAlgorithmParameterException
            java.lang.String r2 = "Cannot process GCMParameterSpec."
            r1.<init>(r2)
            throw r1
        L_0x04b1:
            if (r13 == 0) goto L_0x025a
            boolean r2 = r13 instanceof javax.crypto.spec.PBEParameterSpec
            if (r2 != 0) goto L_0x025a
            java.security.InvalidAlgorithmParameterException r1 = new java.security.InvalidAlgorithmParameterException
            java.lang.String r2 = "unknown parameter type."
            r1.<init>(r2)
            throw r1
        L_0x04bf:
            org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$GenericBlockCipher r2 = r10.cipher
            org.bouncycastle.crypto.BlockCipher r2 = r2.getUnderlyingCipher()
            java.lang.String r2 = r2.getAlgorithmName()
            java.lang.String r3 = "PGPCFB"
            int r2 = r2.indexOf(r3)
            if (r2 >= 0) goto L_0x04ea
            java.security.InvalidAlgorithmParameterException r1 = new java.security.InvalidAlgorithmParameterException
            java.lang.String r2 = "no IV set when one expected"
            r1.<init>(r2)
            throw r1
        L_0x04d9:
            org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$GenericBlockCipher r2 = r10.cipher     // Catch:{ Exception -> 0x02b0 }
            r3 = 1
            r2.init(r3, r1)     // Catch:{ Exception -> 0x02b0 }
        L_0x04df:
            return
        L_0x04e0:
            org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$GenericBlockCipher r2 = r10.cipher     // Catch:{ Exception -> 0x02b0 }
            r3 = 0
            r2.init(r3, r1)     // Catch:{ Exception -> 0x02b0 }
            goto L_0x04df
        L_0x04e7:
            r1 = r2
            goto L_0x028e
        L_0x04ea:
            r2 = r1
            goto L_0x0283
        L_0x04ed:
            r2 = r14
            goto L_0x026d
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.engineInit(int, java.security.Key, java.security.spec.AlgorithmParameterSpec, java.security.SecureRandom):void");
    }

    /* access modifiers changed from: protected */
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        this.modeName = Strings.toUpperCase(str);
        if (this.modeName.equals("ECB")) {
            this.ivLength = 0;
            this.cipher = new BufferedGenericBlockCipher(this.baseEngine);
        } else if (this.modeName.equals("CBC")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new BufferedGenericBlockCipher((BlockCipher) new CBCBlockCipher(this.baseEngine));
        } else if (this.modeName.startsWith("OFB")) {
            this.ivLength = this.baseEngine.getBlockSize();
            if (this.modeName.length() != 3) {
                this.cipher = new BufferedGenericBlockCipher((BlockCipher) new OFBBlockCipher(this.baseEngine, Integer.parseInt(this.modeName.substring(3))));
                return;
            }
            this.cipher = new BufferedGenericBlockCipher((BlockCipher) new OFBBlockCipher(this.baseEngine, this.baseEngine.getBlockSize() * 8));
        } else if (this.modeName.startsWith("CFB")) {
            this.ivLength = this.baseEngine.getBlockSize();
            if (this.modeName.length() != 3) {
                this.cipher = new BufferedGenericBlockCipher((BlockCipher) new CFBBlockCipher(this.baseEngine, Integer.parseInt(this.modeName.substring(3))));
                return;
            }
            this.cipher = new BufferedGenericBlockCipher((BlockCipher) new CFBBlockCipher(this.baseEngine, this.baseEngine.getBlockSize() * 8));
        } else if (this.modeName.startsWith("PGP")) {
            boolean equalsIgnoreCase = this.modeName.equalsIgnoreCase("PGPCFBwithIV");
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new BufferedGenericBlockCipher((BlockCipher) new PGPCFBBlockCipher(this.baseEngine, equalsIgnoreCase));
        } else if (this.modeName.equalsIgnoreCase("OpenPGPCFB")) {
            this.ivLength = 0;
            this.cipher = new BufferedGenericBlockCipher((BlockCipher) new OpenPGPCFBBlockCipher(this.baseEngine));
        } else if (this.modeName.startsWith("SIC")) {
            this.ivLength = this.baseEngine.getBlockSize();
            if (this.ivLength < 16) {
                throw new IllegalArgumentException("Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)");
            }
            this.fixedIv = false;
            this.cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(new SICBlockCipher(this.baseEngine)));
        } else if (this.modeName.startsWith("CTR")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.fixedIv = false;
            this.cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(new SICBlockCipher(this.baseEngine)));
        } else if (this.modeName.startsWith("GOFB")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(new GOFBBlockCipher(this.baseEngine)));
        } else if (this.modeName.startsWith("GCFB")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(new GCFBBlockCipher(this.baseEngine)));
        } else if (this.modeName.startsWith("CTS")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new BufferedGenericBlockCipher((BufferedBlockCipher) new CTSBlockCipher(new CBCBlockCipher(this.baseEngine)));
        } else if (this.modeName.startsWith("CCM")) {
            this.ivLength = 13;
            this.cipher = new AEADGenericBlockCipher(new CCMBlockCipher(this.baseEngine));
        } else if (this.modeName.startsWith("OCB")) {
            if (this.engineProvider != null) {
                this.ivLength = 15;
                this.cipher = new AEADGenericBlockCipher(new OCBBlockCipher(this.baseEngine, this.engineProvider.get()));
                return;
            }
            throw new NoSuchAlgorithmException("can't support mode " + str);
        } else if (this.modeName.startsWith("EAX")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new AEADGenericBlockCipher(new EAXBlockCipher(this.baseEngine));
        } else if (this.modeName.startsWith("GCM")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new AEADGenericBlockCipher(new GCMBlockCipher(this.baseEngine));
        } else {
            throw new NoSuchAlgorithmException("can't support mode " + str);
        }
    }

    /* access modifiers changed from: protected */
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        String upperCase = Strings.toUpperCase(str);
        if (upperCase.equals("NOPADDING")) {
            if (this.cipher.wrapOnNoPadding()) {
                this.cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(this.cipher.getUnderlyingCipher()));
            }
        } else if (upperCase.equals("WITHCTS")) {
            this.cipher = new BufferedGenericBlockCipher((BufferedBlockCipher) new CTSBlockCipher(this.cipher.getUnderlyingCipher()));
        } else {
            this.padded = true;
            if (isAEADModeName(this.modeName)) {
                throw new NoSuchPaddingException("Only NoPadding can be used with AEAD modes.");
            } else if (upperCase.equals("PKCS5PADDING") || upperCase.equals("PKCS7PADDING")) {
                this.cipher = new BufferedGenericBlockCipher(this.cipher.getUnderlyingCipher());
            } else if (upperCase.equals("ZEROBYTEPADDING")) {
                this.cipher = new BufferedGenericBlockCipher(this.cipher.getUnderlyingCipher(), new ZeroBytePadding());
            } else if (upperCase.equals("ISO10126PADDING") || upperCase.equals("ISO10126-2PADDING")) {
                this.cipher = new BufferedGenericBlockCipher(this.cipher.getUnderlyingCipher(), new ISO10126d2Padding());
            } else if (upperCase.equals("X9.23PADDING") || upperCase.equals("X923PADDING")) {
                this.cipher = new BufferedGenericBlockCipher(this.cipher.getUnderlyingCipher(), new X923Padding());
            } else if (upperCase.equals("ISO7816-4PADDING") || upperCase.equals("ISO9797-1PADDING")) {
                this.cipher = new BufferedGenericBlockCipher(this.cipher.getUnderlyingCipher(), new ISO7816d4Padding());
            } else if (upperCase.equals("TBCPADDING")) {
                this.cipher = new BufferedGenericBlockCipher(this.cipher.getUnderlyingCipher(), new TBCPadding());
            } else {
                throw new NoSuchPaddingException("Padding " + str + " unknown.");
            }
        }
    }

    /* access modifiers changed from: protected */
    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException {
        if (this.cipher.getUpdateOutputSize(i2) + i3 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        try {
            return this.cipher.processBytes(bArr, i, i2, bArr2, i3);
        } catch (DataLengthException e) {
            throw new IllegalStateException(e.toString());
        }
    }

    /* access modifiers changed from: protected */
    public byte[] engineUpdate(byte[] bArr, int i, int i2) {
        int updateOutputSize = this.cipher.getUpdateOutputSize(i2);
        if (updateOutputSize > 0) {
            byte[] bArr2 = new byte[updateOutputSize];
            int processBytes = this.cipher.processBytes(bArr, i, i2, bArr2, 0);
            if (processBytes == 0) {
                return null;
            }
            if (processBytes == bArr2.length) {
                return bArr2;
            }
            byte[] bArr3 = new byte[processBytes];
            System.arraycopy(bArr2, 0, bArr3, 0, processBytes);
            return bArr3;
        }
        this.cipher.processBytes(bArr, i, i2, null, 0);
        return null;
    }

    /* access modifiers changed from: protected */
    public void engineUpdateAAD(ByteBuffer byteBuffer) {
        engineUpdateAAD(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.limit() - byteBuffer.position());
    }

    /* access modifiers changed from: protected */
    public void engineUpdateAAD(byte[] bArr, int i, int i2) {
        this.cipher.updateAAD(bArr, i, i2);
    }
}
