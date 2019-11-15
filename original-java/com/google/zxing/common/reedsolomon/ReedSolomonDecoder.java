package com.google.zxing.common.reedsolomon;

public final class ReedSolomonDecoder {
    private final GenericGF field;

    public ReedSolomonDecoder(GenericGF genericGF) {
        this.field = genericGF;
    }

    public void decode(int[] iArr, int i) throws ReedSolomonException {
        GenericGFPoly genericGFPoly = new GenericGFPoly(this.field, iArr);
        int[] iArr2 = new int[i];
        boolean z = true;
        for (int i2 = 0; i2 < i; i2++) {
            int evaluateAt = genericGFPoly.evaluateAt(this.field.exp(this.field.getGeneratorBase() + i2));
            iArr2[(i - 1) - i2] = evaluateAt;
            if (evaluateAt != 0) {
                z = false;
            }
        }
        if (!z) {
            GenericGFPoly[] runEuclideanAlgorithm = runEuclideanAlgorithm(this.field.buildMonomial(i, 1), new GenericGFPoly(this.field, iArr2), i);
            GenericGFPoly genericGFPoly2 = runEuclideanAlgorithm[0];
            GenericGFPoly genericGFPoly3 = runEuclideanAlgorithm[1];
            int[] findErrorLocations = findErrorLocations(genericGFPoly2);
            int[] findErrorMagnitudes = findErrorMagnitudes(genericGFPoly3, findErrorLocations);
            for (int i3 = 0; i3 < findErrorLocations.length; i3++) {
                int length = (iArr.length - 1) - this.field.log(findErrorLocations[i3]);
                if (length < 0) {
                    throw new ReedSolomonException("Bad error location");
                }
                iArr[length] = GenericGF.addOrSubtract(iArr[length], findErrorMagnitudes[i3]);
            }
        }
    }

    private GenericGFPoly[] runEuclideanAlgorithm(GenericGFPoly genericGFPoly, GenericGFPoly genericGFPoly2, int i) throws ReedSolomonException {
        if (genericGFPoly.getDegree() >= genericGFPoly2.getDegree()) {
            GenericGFPoly genericGFPoly3 = genericGFPoly2;
            genericGFPoly2 = genericGFPoly;
            genericGFPoly = genericGFPoly3;
        }
        GenericGFPoly zero = this.field.getZero();
        GenericGFPoly one = this.field.getOne();
        while (genericGFPoly.getDegree() >= i / 2) {
            if (genericGFPoly.isZero()) {
                throw new ReedSolomonException("r_{i-1} was zero");
            }
            GenericGFPoly zero2 = this.field.getZero();
            int inverse = this.field.inverse(genericGFPoly.getCoefficient(genericGFPoly.getDegree()));
            GenericGFPoly genericGFPoly4 = zero2;
            GenericGFPoly genericGFPoly5 = genericGFPoly2;
            while (genericGFPoly5.getDegree() >= genericGFPoly.getDegree() && !genericGFPoly5.isZero()) {
                int degree = genericGFPoly5.getDegree() - genericGFPoly.getDegree();
                int multiply = this.field.multiply(genericGFPoly5.getCoefficient(genericGFPoly5.getDegree()), inverse);
                genericGFPoly4 = genericGFPoly4.addOrSubtract(this.field.buildMonomial(degree, multiply));
                genericGFPoly5 = genericGFPoly5.addOrSubtract(genericGFPoly.multiplyByMonomial(degree, multiply));
            }
            GenericGFPoly addOrSubtract = genericGFPoly4.multiply(one).addOrSubtract(zero);
            if (genericGFPoly5.getDegree() >= genericGFPoly.getDegree()) {
                throw new IllegalStateException("Division algorithm failed to reduce polynomial?");
            }
            genericGFPoly2 = genericGFPoly;
            genericGFPoly = genericGFPoly5;
            GenericGFPoly genericGFPoly6 = one;
            one = addOrSubtract;
            zero = genericGFPoly6;
        }
        int coefficient = one.getCoefficient(0);
        if (coefficient == 0) {
            throw new ReedSolomonException("sigmaTilde(0) was zero");
        }
        int inverse2 = this.field.inverse(coefficient);
        return new GenericGFPoly[]{one.multiply(inverse2), genericGFPoly.multiply(inverse2)};
    }

    private int[] findErrorLocations(GenericGFPoly genericGFPoly) throws ReedSolomonException {
        int i = 0;
        int degree = genericGFPoly.getDegree();
        if (degree == 1) {
            return new int[]{genericGFPoly.getCoefficient(1)};
        }
        int[] iArr = new int[degree];
        for (int i2 = 1; i2 < this.field.getSize() && i < degree; i2++) {
            if (genericGFPoly.evaluateAt(i2) == 0) {
                iArr[i] = this.field.inverse(i2);
                i++;
            }
        }
        if (i == degree) {
            return iArr;
        }
        throw new ReedSolomonException("Error locator degree does not match number of roots");
    }

    private int[] findErrorMagnitudes(GenericGFPoly genericGFPoly, int[] iArr) {
        int i;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            int inverse = this.field.inverse(iArr[i2]);
            int i3 = 1;
            int i4 = 0;
            while (i4 < length) {
                if (i2 != i4) {
                    int multiply = this.field.multiply(iArr[i4], inverse);
                    i = this.field.multiply(i3, (multiply & 1) == 0 ? multiply | 1 : multiply & -2);
                } else {
                    i = i3;
                }
                i4++;
                i3 = i;
            }
            iArr2[i2] = this.field.multiply(genericGFPoly.evaluateAt(inverse), this.field.inverse(i3));
            if (this.field.getGeneratorBase() != 0) {
                iArr2[i2] = this.field.multiply(iArr2[i2], inverse);
            }
        }
        return iArr2;
    }
}
