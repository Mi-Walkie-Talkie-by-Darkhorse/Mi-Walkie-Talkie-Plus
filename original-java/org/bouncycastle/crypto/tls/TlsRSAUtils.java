package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.encodings.PKCS1Encoding;
import org.bouncycastle.crypto.engines.RSABlindedEngine;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.util.Arrays;

public class TlsRSAUtils {
    public static byte[] generateEncryptedPreMasterSecret(TlsContext tlsContext, RSAKeyParameters rSAKeyParameters, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[48];
        tlsContext.getSecureRandom().nextBytes(bArr);
        TlsUtils.writeVersion(tlsContext.getClientVersion(), bArr, 0);
        PKCS1Encoding pKCS1Encoding = new PKCS1Encoding(new RSABlindedEngine());
        pKCS1Encoding.init(true, new ParametersWithRandom(rSAKeyParameters, tlsContext.getSecureRandom()));
        try {
            byte[] processBlock = pKCS1Encoding.processBlock(bArr, 0, bArr.length);
            if (TlsUtils.isSSL(tlsContext)) {
                outputStream.write(processBlock);
            } else {
                TlsUtils.writeOpaque16(processBlock, outputStream);
            }
            return bArr;
        } catch (InvalidCipherTextException e) {
            throw new TlsFatalAlert(80, e);
        }
    }

    public static byte[] safeDecryptPreMasterSecret(TlsContext tlsContext, RSAKeyParameters rSAKeyParameters, byte[] bArr) {
        ProtocolVersion clientVersion = tlsContext.getClientVersion();
        byte[] bArr2 = new byte[48];
        tlsContext.getSecureRandom().nextBytes(bArr2);
        byte[] clone = Arrays.clone(bArr2);
        try {
            PKCS1Encoding pKCS1Encoding = new PKCS1Encoding((AsymmetricBlockCipher) new RSABlindedEngine(), bArr2);
            pKCS1Encoding.init(false, new ParametersWithRandom(rSAKeyParameters, tlsContext.getSecureRandom()));
            clone = pKCS1Encoding.processBlock(bArr, 0, bArr.length);
        } catch (Exception e) {
        }
        byte minorVersion = (clientVersion.getMinorVersion() ^ (clone[1] & 255)) | (clientVersion.getMajorVersion() ^ (clone[0] & 255));
        byte b = minorVersion | (minorVersion >> 1);
        byte b2 = b | (b >> 2);
        byte b3 = (((b2 | (b2 >> 4)) & 1) - 1) ^ -1;
        for (int i = 0; i < 48; i++) {
            clone[i] = (byte) ((clone[i] & (b3 ^ -1)) | (bArr2[i] & b3));
        }
        return clone;
    }
}
