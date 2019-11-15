package com.google.zxing.pdf417.decoder.ec;

import com.google.zxing.ChecksumException;

public final class ErrorCorrection {
    private final ModulusGF field = ModulusGF.PDF417_GF;

    public int decode(int[] iArr, int i, int[] iArr2) throws ChecksumException {
        ModulusPoly modulusPoly = new ModulusPoly(this.field, iArr);
        int[] iArr3 = new int[i];
        boolean z = false;
        for (int i2 = i; i2 > 0; i2--) {
            int evaluateAt = modulusPoly.evaluateAt(this.field.exp(i2));
            iArr3[i - i2] = evaluateAt;
            if (evaluateAt != 0) {
                z = true;
            }
        }
        if (!z) {
            return 0;
        }
        ModulusPoly one = this.field.getOne();
        if (iArr2 != null) {
            ModulusPoly modulusPoly2 = one;
            for (int length : iArr2) {
                modulusPoly2 = modulusPoly2.multiply(new ModulusPoly(this.field, new int[]{this.field.subtract(0, this.field.exp((iArr.length - 1) - length)), 1}));
            }
        }
        ModulusPoly[] runEuclideanAlgorithm = runEuclideanAlgorithm(this.field.buildMonomial(i, 1), new ModulusPoly(this.field, iArr3), i);
        ModulusPoly modulusPoly3 = runEuclideanAlgorithm[0];
        ModulusPoly modulusPoly4 = runEuclideanAlgorithm[1];
        int[] findErrorLocations = findErrorLocations(modulusPoly3);
        int[] findErrorMagnitudes = findErrorMagnitudes(modulusPoly4, modulusPoly3, findErrorLocations);
        for (int i3 = 0; i3 < findErrorLocations.length; i3++) {
            int length2 = (iArr.length - 1) - this.field.log(findErrorLocations[i3]);
            if (length2 < 0) {
                throw ChecksumException.getChecksumInstance();
            }
            iArr[length2] = this.field.subtract(iArr[length2], findErrorMagnitudes[i3]);
        }
        return findErrorLocations.length;
    }

    private ModulusPoly[] runEuclideanAlgorithm(ModulusPoly modulusPoly, ModulusPoly modulusPoly2, int i) throws ChecksumException {
        if (modulusPoly.getDegree() >= modulusPoly2.getDegree()) {
            ModulusPoly modulusPoly3 = modulusPoly2;
            modulusPoly2 = modulusPoly;
            modulusPoly = modulusPoly3;
        }
        ModulusPoly zero = this.field.getZero();
        ModulusPoly one = this.field.getOne();
        while (modulusPoly.getDegree() >= i / 2) {
            if (modulusPoly.isZero()) {
                throw ChecksumException.getChecksumInstance();
            }
            ModulusPoly zero2 = this.field.getZero();
            int inverse = this.field.inverse(modulusPoly.getCoefficient(modulusPoly.getDegree()));
            ModulusPoly modulusPoly4 = zero2;
            ModulusPoly modulusPoly5 = modulusPoly2;
            while (modulusPoly5.getDegree() >= modulusPoly.getDegree() && !modulusPoly5.isZero()) {
                int degree = modulusPoly5.getDegree() - modulusPoly.getDegree();
                int multiply = this.field.multiply(modulusPoly5.getCoefficient(modulusPoly5.getDegree()), inverse);
                modulusPoly4 = modulusPoly4.add(this.field.buildMonomial(degree, multiply));
                modulusPoly5 = modulusPoly5.subtract(modulusPoly.multiplyByMonomial(degree, multiply));
            }
            modulusPoly2 = modulusPoly;
            modulusPoly = modulusPoly5;
            ModulusPoly modulusPoly6 = one;
            one = modulusPoly4.multiply(one).subtract(zero).negative();
            zero = modulusPoly6;
        }
        int coefficient = one.getCoefficient(0);
        if (coefficient == 0) {
            throw ChecksumException.getChecksumInstance();
        }
        int inverse2 = this.field.inverse(coefficient);
        return new ModulusPoly[]{one.multiply(inverse2), modulusPoly.multiply(inverse2)};
    }

    private int[] findErrorLocations(ModulusPoly modulusPoly) throws ChecksumException {
        int degree = modulusPoly.getDegree();
        int[] iArr = new int[degree];
        int i = 0;
        for (int i2 = 1; i2 < this.field.getSize() && i < degree; i2++) {
            if (modulusPoly.evaluateAt(i2) == 0) {
                iArr[i] = this.field.inverse(i2);
                i++;
            }
        }
        if (i == degree) {
            return iArr;
        }
        throw ChecksumException.getChecksumInstance();
    }

    private int[] findErrorMagnitudes(ModulusPoly modulusPoly, ModulusPoly modulusPoly2, int[] iArr) {
        int degree = modulusPoly2.getDegree();
        int[] iArr2 = new int[degree];
        for (int i = 1; i <= degree; i++) {
            iArr2[degree - i] = this.field.multiply(i, modulusPoly2.getCoefficient(i));
        }
        ModulusPoly modulusPoly3 = new ModulusPoly(this.field, iArr2);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            int inverse = this.field.inverse(iArr[i2]);
            iArr3[i2] = this.field.multiply(this.field.subtract(0, modulusPoly.evaluateAt(inverse)), this.field.inverse(modulusPoly3.evaluateAt(inverse)));
        }
        return iArr3;
    }
}
