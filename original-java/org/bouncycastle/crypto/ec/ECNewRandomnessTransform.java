package org.bouncycastle.crypto.ec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.ec.FixedPointCombMultiplier;

public class ECNewRandomnessTransform implements ECPairFactorTransform {
    private ECPublicKeyParameters key;
    private BigInteger lastK;
    private SecureRandom random;

    /* access modifiers changed from: protected */
    public ECMultiplier createBasePointMultiplier() {
        return new FixedPointCombMultiplier();
    }

    public BigInteger getTransformValue() {
        return this.lastK;
    }

    public void init(CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            if (!(parametersWithRandom.getParameters() instanceof ECPublicKeyParameters)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for new randomness transform.");
            }
            this.key = (ECPublicKeyParameters) parametersWithRandom.getParameters();
            this.random = parametersWithRandom.getRandom();
        } else if (!(cipherParameters instanceof ECPublicKeyParameters)) {
            throw new IllegalArgumentException("ECPublicKeyParameters are required for new randomness transform.");
        } else {
            this.key = (ECPublicKeyParameters) cipherParameters;
            this.random = new SecureRandom();
        }
    }

    public ECPair transform(ECPair eCPair) {
        if (this.key == null) {
            throw new IllegalStateException("ECNewRandomnessTransform not initialised");
        }
        ECDomainParameters parameters = this.key.getParameters();
        BigInteger n = parameters.getN();
        ECMultiplier createBasePointMultiplier = createBasePointMultiplier();
        BigInteger generateK = ECUtil.generateK(n, this.random);
        ECPoint[] eCPointArr = {createBasePointMultiplier.multiply(parameters.getG(), generateK).add(eCPair.getX()), this.key.getQ().multiply(generateK).add(eCPair.getY())};
        parameters.getCurve().normalizeAll(eCPointArr);
        this.lastK = generateK;
        return new ECPair(eCPointArr[0], eCPointArr[1]);
    }
}
