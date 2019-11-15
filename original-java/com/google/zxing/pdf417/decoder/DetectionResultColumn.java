package com.google.zxing.pdf417.decoder;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.Formatter;

class DetectionResultColumn {
    private static final int MAX_NEARBY_DISTANCE = 5;
    private final BoundingBox boundingBox;
    private final Codeword[] codewords;

    DetectionResultColumn(BoundingBox boundingBox2) {
        this.boundingBox = new BoundingBox(boundingBox2);
        this.codewords = new Codeword[((boundingBox2.getMaxY() - boundingBox2.getMinY()) + 1)];
    }

    /* access modifiers changed from: 0000 */
    public final Codeword getCodewordNearby(int i) {
        Codeword codeword = getCodeword(i);
        if (codeword != null) {
            return codeword;
        }
        int i2 = 1;
        while (true) {
            int i3 = i2;
            if (i3 >= 5) {
                return null;
            }
            int imageRowToCodewordIndex = imageRowToCodewordIndex(i) - i3;
            if (imageRowToCodewordIndex >= 0) {
                Codeword codeword2 = this.codewords[imageRowToCodewordIndex];
                if (codeword2 != null) {
                    return codeword2;
                }
            }
            int imageRowToCodewordIndex2 = imageRowToCodewordIndex(i) + i3;
            if (imageRowToCodewordIndex2 < this.codewords.length) {
                Codeword codeword3 = this.codewords[imageRowToCodewordIndex2];
                if (codeword3 != null) {
                    return codeword3;
                }
            }
            i2 = i3 + 1;
        }
    }

    /* access modifiers changed from: 0000 */
    public final int imageRowToCodewordIndex(int i) {
        return i - this.boundingBox.getMinY();
    }

    /* access modifiers changed from: 0000 */
    public final void setCodeword(int i, Codeword codeword) {
        this.codewords[imageRowToCodewordIndex(i)] = codeword;
    }

    /* access modifiers changed from: 0000 */
    public final Codeword getCodeword(int i) {
        return this.codewords[imageRowToCodewordIndex(i)];
    }

    /* access modifiers changed from: 0000 */
    public final BoundingBox getBoundingBox() {
        return this.boundingBox;
    }

    /* access modifiers changed from: 0000 */
    public final Codeword[] getCodewords() {
        return this.codewords;
    }

    public String toString() {
        int i;
        Formatter formatter = new Formatter();
        Throwable th = null;
        try {
            Codeword[] codewordArr = this.codewords;
            int length = codewordArr.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                Codeword codeword = codewordArr[i2];
                if (codeword == null) {
                    i = i3 + 1;
                    formatter.format("%3d:    |   %n", new Object[]{Integer.valueOf(i3)});
                } else {
                    i = i3 + 1;
                    formatter.format("%3d: %3d|%3d%n", new Object[]{Integer.valueOf(i3), Integer.valueOf(codeword.getRowNumber()), Integer.valueOf(codeword.getValue())});
                }
                i2++;
                i3 = i;
            }
            String formatter2 = formatter.toString();
            formatter.close();
            return formatter2;
        } catch (Throwable th2) {
            Throwable th3 = th2;
            th = r0;
            th = th3;
        }
        if (th != null) {
            try {
                formatter.close();
            } catch (Throwable th4) {
                ThrowableExtension.addSuppressed(th, th4);
            }
        } else {
            formatter.close();
        }
        throw th;
        throw th;
    }
}
