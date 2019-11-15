package org.bouncycastle.pqc.jcajce.provider.mceliece;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.crypto.mceliece.McEliecePrivateKeyParameters;
import org.bouncycastle.pqc.crypto.mceliece.McEliecePublicKeyParameters;

public class McElieceKeysToParams {
    public static AsymmetricKeyParameter generatePrivateKeyParameter(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof BCMcEliecePrivateKey) {
            BCMcEliecePrivateKey bCMcEliecePrivateKey = (BCMcEliecePrivateKey) privateKey;
            return new McEliecePrivateKeyParameters(bCMcEliecePrivateKey.getOIDString(), bCMcEliecePrivateKey.getN(), bCMcEliecePrivateKey.getK(), bCMcEliecePrivateKey.getField(), bCMcEliecePrivateKey.getGoppaPoly(), bCMcEliecePrivateKey.getSInv(), bCMcEliecePrivateKey.getP1(), bCMcEliecePrivateKey.getP2(), bCMcEliecePrivateKey.getH(), bCMcEliecePrivateKey.getQInv(), bCMcEliecePrivateKey.getMcElieceParameters());
        }
        throw new InvalidKeyException("can't identify McEliece private key.");
    }

    public static AsymmetricKeyParameter generatePublicKeyParameter(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof BCMcEliecePublicKey) {
            BCMcEliecePublicKey bCMcEliecePublicKey = (BCMcEliecePublicKey) publicKey;
            return new McEliecePublicKeyParameters(bCMcEliecePublicKey.getOIDString(), bCMcEliecePublicKey.getN(), bCMcEliecePublicKey.getT(), bCMcEliecePublicKey.getG(), bCMcEliecePublicKey.getMcElieceParameters());
        }
        throw new InvalidKeyException("can't identify McEliece public key: " + publicKey.getClass().getName());
    }
}
