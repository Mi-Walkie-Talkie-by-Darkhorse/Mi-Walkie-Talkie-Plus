package com.amap.api.maps.model;

import android.graphics.Color;
import android.util.Log;
import com.amap.api.maps.AMapException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.HashMap;

public class Gradient {
    private int a;
    private int[] b;
    private float[] c;
    private boolean d;

    private class a {
        /* access modifiers changed from: private */
        public final int b;
        /* access modifiers changed from: private */
        public final int c;
        /* access modifiers changed from: private */
        public final float d;

        private a(int i, int i2, float f) {
            this.b = i;
            this.c = i2;
            this.d = f;
        }
    }

    public Gradient(int[] iArr, float[] fArr) {
        this(iArr, fArr, 1000);
    }

    private Gradient(int[] iArr, float[] fArr, int i) {
        this.d = true;
        if (iArr == null || fArr == null) {
            try {
                throw new AMapException("colors and startPoints should not be null");
            } catch (AMapException e) {
                this.d = false;
                Log.e("amap", e.getErrorMessage());
                ThrowableExtension.printStackTrace(e);
            }
        } else if (iArr.length != fArr.length) {
            throw new AMapException("colors and startPoints should be same length");
        } else if (iArr.length == 0) {
            throw new AMapException("No colors have been defined");
        } else {
            for (int i2 = 1; i2 < fArr.length; i2++) {
                if (fArr[i2] <= fArr[i2 - 1]) {
                    throw new AMapException("startPoints should be in increasing order");
                }
            }
            this.a = i;
            this.b = new int[iArr.length];
            this.c = new float[fArr.length];
            System.arraycopy(iArr, 0, this.b, 0, iArr.length);
            System.arraycopy(fArr, 0, this.c, 0, fArr.length);
            this.d = true;
        }
    }

    private HashMap<Integer, a> a() {
        HashMap<Integer, a> hashMap = new HashMap<>();
        if (this.c[0] != 0.0f) {
            int argb = Color.argb(0, Color.red(this.b[0]), Color.green(this.b[0]), Color.blue(this.b[0]));
            hashMap.put(Integer.valueOf(0), new a(argb, this.b[0], this.c[0] * ((float) this.a)));
        }
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 >= this.b.length) {
                break;
            }
            hashMap.put(Integer.valueOf((int) (((float) this.a) * this.c[i2 - 1])), new a(this.b[i2 - 1], this.b[i2], (this.c[i2] - this.c[i2 - 1]) * ((float) this.a)));
            i = i2 + 1;
        }
        if (this.c[this.c.length - 1] != 1.0f) {
            int length = this.c.length - 1;
            hashMap.put(Integer.valueOf((int) (((float) this.a) * this.c[length])), new a(this.b[length], this.b[length], ((float) this.a) * (1.0f - this.c[length])));
        }
        return hashMap;
    }

    /* access modifiers changed from: protected */
    public int[] generateColorMap(double d2) {
        a aVar;
        int i;
        HashMap a2 = a();
        int[] iArr = new int[this.a];
        int i2 = 0;
        a aVar2 = (a) a2.get(Integer.valueOf(0));
        int i3 = 0;
        while (i2 < this.a) {
            if (a2.containsKey(Integer.valueOf(i2))) {
                i = i2;
                aVar = (a) a2.get(Integer.valueOf(i2));
            } else {
                aVar = aVar2;
                i = i3;
            }
            iArr[i2] = a(aVar.b, aVar.c, ((float) (i2 - i)) / aVar.d);
            i2++;
            i3 = i;
            aVar2 = aVar;
        }
        if (d2 != 1.0d) {
            for (int i4 = 0; i4 < this.a; i4++) {
                int i5 = iArr[i4];
                iArr[i4] = Color.argb((int) (((double) Color.alpha(i5)) * d2), Color.red(i5), Color.green(i5), Color.blue(i5));
            }
        }
        return iArr;
    }

    static int a(int i, int i2, float f) {
        int alpha = (int) ((((float) (Color.alpha(i2) - Color.alpha(i))) * f) + ((float) Color.alpha(i)));
        float[] fArr = new float[3];
        Color.RGBToHSV(Color.red(i), Color.green(i), Color.blue(i), fArr);
        float[] fArr2 = new float[3];
        Color.RGBToHSV(Color.red(i2), Color.green(i2), Color.blue(i2), fArr2);
        if (fArr[0] - fArr2[0] > 180.0f) {
            fArr2[0] = fArr2[0] + 360.0f;
        } else if (fArr2[0] - fArr[0] > 180.0f) {
            fArr[0] = fArr[0] + 360.0f;
        }
        float[] fArr3 = new float[3];
        for (int i3 = 0; i3 < 3; i3++) {
            fArr3[i3] = ((fArr2[i3] - fArr[i3]) * f) + fArr[i3];
        }
        return Color.HSVToColor(alpha, fArr3);
    }

    /* access modifiers changed from: protected */
    public boolean isAvailable() {
        return this.d;
    }
}
