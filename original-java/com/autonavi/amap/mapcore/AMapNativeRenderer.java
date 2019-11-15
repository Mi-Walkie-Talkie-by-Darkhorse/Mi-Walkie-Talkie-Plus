package com.autonavi.amap.mapcore;

public class AMapNativeRenderer {
    public static native void nativeDrawGradientColorLine(float[] fArr, int i, float f, int[] iArr, int i2, int[] iArr2, int i3, int i4, float[] fArr2);

    public static native void nativeDrawLineByMultiColor(float[] fArr, int i, float f, int i2, int[] iArr, int i3, int[] iArr2, int i4, float[] fArr2);

    public static native void nativeDrawLineByMultiTextureID(float[] fArr, int i, float f, int[] iArr, int i2, int[] iArr2, int i3, float f2, float[] fArr2);

    public static native void nativeDrawLineByTextureID(float[] fArr, int i, float f, int i2, float f2, float f3, float f4, float f5, float f6, boolean z, boolean z2, boolean z3, float[] fArr2);

    public static native void nativeDrawLineInit();
}
