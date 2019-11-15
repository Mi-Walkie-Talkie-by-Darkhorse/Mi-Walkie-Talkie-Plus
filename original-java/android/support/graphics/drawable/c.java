package android.support.graphics.drawable;

import android.graphics.Path;
import android.util.Log;
import com.mi.milinkforgame.sdk.data.Error;
import java.util.ArrayList;

/* compiled from: PathParser */
class c {

    /* compiled from: PathParser */
    private static class a {
        int a;
        boolean b;

        a() {
        }
    }

    /* compiled from: PathParser */
    public static class b {
        char a;
        float[] b;

        b(char c, float[] fArr) {
            this.a = c;
            this.b = fArr;
        }

        b(b bVar) {
            this.a = bVar.a;
            this.b = c.a(bVar.b, 0, bVar.b.length);
        }

        public static void a(b[] bVarArr, Path path) {
            float[] fArr = new float[6];
            char c = 'm';
            for (int i = 0; i < bVarArr.length; i++) {
                a(path, fArr, c, bVarArr[i].a, bVarArr[i].b);
                c = bVarArr[i].a;
            }
        }

        private static void a(Path path, float[] fArr, char c, char c2, float[] fArr2) {
            int i;
            boolean z;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            boolean z2;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            float f12;
            float f13 = fArr[0];
            float f14 = fArr[1];
            float f15 = fArr[2];
            float f16 = fArr[3];
            float f17 = fArr[4];
            float f18 = fArr[5];
            switch (c2) {
                case 'A':
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case 'c':
                    i = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case Error.E_REG_WRONG_TOKEN /*116*/:
                    i = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f17, f18);
                    f16 = f18;
                    f15 = f17;
                    f14 = f18;
                    f13 = f17;
                    i = 2;
                    break;
                default:
                    i = 2;
                    break;
            }
            int i2 = 0;
            float f19 = f18;
            float f20 = f17;
            float f21 = f14;
            float f22 = f13;
            while (i2 < fArr2.length) {
                switch (c2) {
                    case 'A':
                        float f23 = fArr2[i2 + 5];
                        float f24 = fArr2[i2 + 6];
                        float f25 = fArr2[i2 + 0];
                        float f26 = fArr2[i2 + 1];
                        float f27 = fArr2[i2 + 2];
                        boolean z3 = fArr2[i2 + 3] != 0.0f;
                        if (fArr2[i2 + 4] != 0.0f) {
                            z = true;
                        } else {
                            z = false;
                        }
                        a(path, f22, f21, f23, f24, f25, f26, f27, z3, z);
                        float f28 = fArr2[i2 + 5];
                        float f29 = fArr2[i2 + 6];
                        f = f19;
                        f2 = f20;
                        f3 = f28;
                        f4 = f29;
                        f5 = f28;
                        f6 = f29;
                        break;
                    case 'C':
                        path.cubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3], fArr2[i2 + 4], fArr2[i2 + 5]);
                        float f30 = fArr2[i2 + 4];
                        float f31 = fArr2[i2 + 5];
                        f3 = fArr2[i2 + 2];
                        f4 = f31;
                        f5 = f30;
                        f = f19;
                        f2 = f20;
                        f6 = fArr2[i2 + 3];
                        break;
                    case 'H':
                        path.lineTo(fArr2[i2 + 0], f21);
                        f = f19;
                        f3 = f15;
                        f4 = f21;
                        f5 = fArr2[i2 + 0];
                        f6 = f16;
                        f2 = f20;
                        break;
                    case 'L':
                        path.lineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                        float f32 = fArr2[i2 + 0];
                        f3 = f15;
                        f4 = fArr2[i2 + 1];
                        f5 = f32;
                        f = f19;
                        f2 = f20;
                        f6 = f16;
                        break;
                    case 'M':
                        f2 = fArr2[i2 + 0];
                        f = fArr2[i2 + 1];
                        if (i2 <= 0) {
                            path.moveTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f3 = f15;
                            f4 = f;
                            f5 = f2;
                            f6 = f16;
                            break;
                        } else {
                            path.lineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f3 = f15;
                            f4 = f;
                            f5 = f2;
                            f = f19;
                            f2 = f20;
                            f6 = f16;
                            break;
                        }
                    case 'Q':
                        path.quadTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        float f33 = fArr2[i2 + 0];
                        float f34 = fArr2[i2 + 1];
                        float f35 = fArr2[i2 + 2];
                        f3 = f33;
                        f4 = fArr2[i2 + 3];
                        f5 = f35;
                        f = f19;
                        f2 = f20;
                        f6 = f34;
                        break;
                    case 'S':
                        if (c == 'c' || c == 's' || c == 'C' || c == 'S') {
                            f10 = (2.0f * f22) - f15;
                            f9 = (2.0f * f21) - f16;
                        } else {
                            f9 = f21;
                            f10 = f22;
                        }
                        path.cubicTo(f10, f9, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        float f36 = fArr2[i2 + 0];
                        float f37 = fArr2[i2 + 1];
                        float f38 = fArr2[i2 + 2];
                        f3 = f36;
                        f4 = fArr2[i2 + 3];
                        f5 = f38;
                        f = f19;
                        f2 = f20;
                        f6 = f37;
                        break;
                    case 'T':
                        if (c == 'q' || c == 't' || c == 'Q' || c == 'T') {
                            f22 = (2.0f * f22) - f15;
                            f21 = (2.0f * f21) - f16;
                        }
                        path.quadTo(f22, f21, fArr2[i2 + 0], fArr2[i2 + 1]);
                        float f39 = fArr2[i2 + 0];
                        f6 = f21;
                        f3 = f22;
                        f4 = fArr2[i2 + 1];
                        f5 = f39;
                        f = f19;
                        f2 = f20;
                        break;
                    case 'V':
                        path.lineTo(f22, fArr2[i2 + 0]);
                        f2 = f20;
                        f3 = f15;
                        f4 = fArr2[i2 + 0];
                        f5 = f22;
                        f6 = f16;
                        f = f19;
                        break;
                    case 'a':
                        float f40 = fArr2[i2 + 5] + f22;
                        float f41 = fArr2[i2 + 6] + f21;
                        float f42 = fArr2[i2 + 0];
                        float f43 = fArr2[i2 + 1];
                        float f44 = fArr2[i2 + 2];
                        boolean z4 = fArr2[i2 + 3] != 0.0f;
                        if (fArr2[i2 + 4] != 0.0f) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        a(path, f22, f21, f40, f41, f42, f43, f44, z4, z2);
                        float f45 = f22 + fArr2[i2 + 5];
                        float f46 = fArr2[i2 + 6] + f21;
                        f = f19;
                        f2 = f20;
                        f3 = f45;
                        f4 = f46;
                        f5 = f45;
                        f6 = f46;
                        break;
                    case 'c':
                        path.rCubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3], fArr2[i2 + 4], fArr2[i2 + 5]);
                        f3 = f22 + fArr2[i2 + 2];
                        f4 = fArr2[i2 + 5] + f21;
                        f5 = f22 + fArr2[i2 + 4];
                        f = f19;
                        f2 = f20;
                        f6 = fArr2[i2 + 3] + f21;
                        break;
                    case 'h':
                        path.rLineTo(fArr2[i2 + 0], 0.0f);
                        f = f19;
                        f3 = f15;
                        f4 = f21;
                        f5 = f22 + fArr2[i2 + 0];
                        f6 = f16;
                        f2 = f20;
                        break;
                    case 'l':
                        path.rLineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                        f3 = f15;
                        f4 = fArr2[i2 + 1] + f21;
                        f5 = f22 + fArr2[i2 + 0];
                        f = f19;
                        f2 = f20;
                        f6 = f16;
                        break;
                    case 'm':
                        f2 = f22 + fArr2[i2 + 0];
                        f = fArr2[i2 + 1] + f21;
                        if (i2 <= 0) {
                            path.rMoveTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f3 = f15;
                            f4 = f;
                            f5 = f2;
                            f6 = f16;
                            break;
                        } else {
                            path.rLineTo(fArr2[i2 + 0], fArr2[i2 + 1]);
                            f3 = f15;
                            f4 = f;
                            f5 = f2;
                            f = f19;
                            f2 = f20;
                            f6 = f16;
                            break;
                        }
                    case 'q':
                        path.rQuadTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        f3 = f22 + fArr2[i2 + 0];
                        f4 = fArr2[i2 + 3] + f21;
                        f5 = f22 + fArr2[i2 + 2];
                        f = f19;
                        f2 = f20;
                        f6 = fArr2[i2 + 1] + f21;
                        break;
                    case 's':
                        if (c == 'c' || c == 's' || c == 'C' || c == 'S') {
                            f12 = f22 - f15;
                            f11 = f21 - f16;
                        } else {
                            f11 = 0.0f;
                            f12 = 0.0f;
                        }
                        path.rCubicTo(f12, f11, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3]);
                        f3 = f22 + fArr2[i2 + 0];
                        f4 = fArr2[i2 + 3] + f21;
                        f5 = f22 + fArr2[i2 + 2];
                        f = f19;
                        f2 = f20;
                        f6 = fArr2[i2 + 1] + f21;
                        break;
                    case Error.E_REG_WRONG_TOKEN /*116*/:
                        if (c == 'q' || c == 't' || c == 'Q' || c == 'T') {
                            f7 = f22 - f15;
                            f8 = f21 - f16;
                        } else {
                            f8 = 0;
                            f7 = 0.0f;
                        }
                        path.rQuadTo(f7, f8, fArr2[i2 + 0], fArr2[i2 + 1]);
                        f3 = f22 + f7;
                        f4 = fArr2[i2 + 1] + f21;
                        f5 = f22 + fArr2[i2 + 0];
                        f = f19;
                        f2 = f20;
                        f6 = f8 + f21;
                        break;
                    case 'v':
                        path.rLineTo(0.0f, fArr2[i2 + 0]);
                        f2 = f20;
                        f3 = f15;
                        f4 = fArr2[i2 + 0] + f21;
                        f5 = f22;
                        f6 = f16;
                        f = f19;
                        break;
                    default:
                        f = f19;
                        f2 = f20;
                        f3 = f15;
                        f4 = f21;
                        f5 = f22;
                        f6 = f16;
                        break;
                }
                i2 += i;
                f19 = f;
                f20 = f2;
                f21 = f4;
                f22 = f5;
                c = c2;
                f16 = f6;
                f15 = f3;
            }
            fArr[0] = f22;
            fArr[1] = f21;
            fArr[2] = f15;
            fArr[3] = f16;
            fArr[4] = f20;
            fArr[5] = f19;
        }

        private static void a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d;
            double d2;
            double radians = Math.toRadians((double) f7);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d3 = ((((double) f) * cos) + (((double) f2) * sin)) / ((double) f5);
            double d4 = ((((double) (-f)) * sin) + (((double) f2) * cos)) / ((double) f6);
            double d5 = ((((double) f3) * cos) + (((double) f4) * sin)) / ((double) f5);
            double d6 = ((((double) (-f3)) * sin) + (((double) f4) * cos)) / ((double) f6);
            double d7 = d3 - d5;
            double d8 = d4 - d6;
            double d9 = (d3 + d5) / 2.0d;
            double d10 = (d4 + d6) / 2.0d;
            double d11 = (d7 * d7) + (d8 * d8);
            if (d11 == 0.0d) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d12 = (1.0d / d11) - 0.25d;
            if (d12 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d11);
                float sqrt = (float) (Math.sqrt(d11) / 1.99999d);
                a(path, f, f2, f3, f4, f5 * sqrt, f6 * sqrt, f7, z, z2);
                return;
            }
            double sqrt2 = Math.sqrt(d12);
            double d13 = d7 * sqrt2;
            double d14 = d8 * sqrt2;
            if (z == z2) {
                d = d9 - d14;
                d2 = d13 + d10;
            } else {
                d = d14 + d9;
                d2 = d10 - d13;
            }
            double atan2 = Math.atan2(d4 - d2, d3 - d);
            double atan22 = Math.atan2(d6 - d2, d5 - d) - atan2;
            if (z2 != (atan22 >= 0.0d)) {
                if (atan22 > 0.0d) {
                    atan22 -= 6.283185307179586d;
                } else {
                    atan22 += 6.283185307179586d;
                }
            }
            double d15 = ((double) f5) * d;
            double d16 = d2 * ((double) f6);
            a(path, (d15 * cos) - (d16 * sin), (d15 * sin) + (d16 * cos), (double) f5, (double) f6, (double) f, (double) f2, radians, atan2, atan22);
        }

        private static void a(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
            int ceil = (int) Math.ceil(Math.abs((4.0d * d9) / 3.141592653589793d));
            double cos = Math.cos(d7);
            double sin = Math.sin(d7);
            double cos2 = Math.cos(d8);
            double sin2 = Math.sin(d8);
            double d10 = (((-d3) * cos) * sin2) - ((d4 * sin) * cos2);
            double d11 = d9 / ((double) ceil);
            int i = 0;
            double d12 = (sin2 * (-d3) * sin) + (cos2 * d4 * cos);
            double d13 = d10;
            while (i < ceil) {
                double d14 = d8 + d11;
                double sin3 = Math.sin(d14);
                double cos3 = Math.cos(d14);
                double d15 = (((d3 * cos) * cos3) + d) - ((d4 * sin) * sin3);
                double d16 = (d4 * cos * sin3) + (d3 * sin * cos3) + d2;
                double d17 = (((-d3) * cos) * sin3) - ((d4 * sin) * cos3);
                double d18 = (cos3 * d4 * cos) + (sin3 * (-d3) * sin);
                double tan = Math.tan((d14 - d8) / 2.0d);
                double sqrt = ((Math.sqrt((tan * (3.0d * tan)) + 4.0d) - 1.0d) * Math.sin(d14 - d8)) / 3.0d;
                double d19 = (d13 * sqrt) + d5;
                double d20 = d6 + (d12 * sqrt);
                double d21 = d15 - (sqrt * d17);
                double d22 = d16 - (sqrt * d18);
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) d19, (float) d20, (float) d21, (float) d22, (float) d15, (float) d16);
                i++;
                d13 = d17;
                d8 = d14;
                d6 = d16;
                d5 = d15;
                d12 = d18;
            }
        }
    }

    static float[] a(float[] fArr, int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (i < 0 || i > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = i2 - i;
        int min = Math.min(i3, length - i);
        float[] fArr2 = new float[i3];
        System.arraycopy(fArr, i, fArr2, 0, min);
        return fArr2;
    }

    public static b[] a(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int a2 = a(str, i);
            String trim = str.substring(i2, a2).trim();
            if (trim.length() > 0) {
                a(arrayList, trim.charAt(0), b(trim));
            }
            i = a2 + 1;
            i2 = a2;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            a(arrayList, str.charAt(i2), new float[0]);
        }
        return (b[]) arrayList.toArray(new b[arrayList.size()]);
    }

    public static b[] a(b[] bVarArr) {
        if (bVarArr == null) {
            return null;
        }
        b[] bVarArr2 = new b[bVarArr.length];
        for (int i = 0; i < bVarArr.length; i++) {
            bVarArr2[i] = new b(bVarArr[i]);
        }
        return bVarArr2;
    }

    public static boolean a(b[] bVarArr, b[] bVarArr2) {
        if (bVarArr == null || bVarArr2 == null || bVarArr.length != bVarArr2.length) {
            return false;
        }
        for (int i = 0; i < bVarArr.length; i++) {
            if (bVarArr[i].a != bVarArr2[i].a || bVarArr[i].b.length != bVarArr2[i].b.length) {
                return false;
            }
        }
        return true;
    }

    public static void b(b[] bVarArr, b[] bVarArr2) {
        for (int i = 0; i < bVarArr2.length; i++) {
            bVarArr[i].a = bVarArr2[i].a;
            for (int i2 = 0; i2 < bVarArr2[i].b.length; i2++) {
                bVarArr[i].b[i2] = bVarArr2[i].b[i2];
            }
        }
    }

    private static int a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                break;
            }
            i++;
        }
        return i;
    }

    private static void a(ArrayList<b> arrayList, char c, float[] fArr) {
        arrayList.add(new b(c, fArr));
    }

    private static float[] b(String str) {
        int i;
        if ((str.charAt(0) == 'z') || (str.charAt(0) == 'Z')) {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            a aVar = new a();
            int length = str.length();
            int i2 = 0;
            int i3 = 1;
            while (i3 < length) {
                a(str, i3, aVar);
                int i4 = aVar.a;
                if (i3 < i4) {
                    i = i2 + 1;
                    fArr[i2] = Float.parseFloat(str.substring(i3, i4));
                } else {
                    i = i2;
                }
                if (aVar.b) {
                    i3 = i4;
                    i2 = i;
                } else {
                    i3 = i4 + 1;
                    i2 = i;
                }
            }
            return a(fArr, 0, i2);
        } catch (NumberFormatException e) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e);
        }
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(java.lang.String r7, int r8, android.support.graphics.drawable.c.a r9) {
        /*
            r1 = 0
            r5 = 1
            r9.b = r1
            r0 = r1
            r2 = r1
            r3 = r1
            r4 = r8
        L_0x0008:
            int r6 = r7.length()
            if (r4 >= r6) goto L_0x0018
            char r6 = r7.charAt(r4)
            switch(r6) {
                case 32: goto L_0x001b;
                case 44: goto L_0x001b;
                case 45: goto L_0x001e;
                case 46: goto L_0x0027;
                case 69: goto L_0x0031;
                case 101: goto L_0x0031;
                default: goto L_0x0015;
            }
        L_0x0015:
            r0 = r1
        L_0x0016:
            if (r3 == 0) goto L_0x0033
        L_0x0018:
            r9.a = r4
            return
        L_0x001b:
            r0 = r1
            r3 = r5
            goto L_0x0016
        L_0x001e:
            if (r4 == r8) goto L_0x0015
            if (r0 != 0) goto L_0x0015
            r9.b = r5
            r0 = r1
            r3 = r5
            goto L_0x0016
        L_0x0027:
            if (r2 != 0) goto L_0x002c
            r0 = r1
            r2 = r5
            goto L_0x0016
        L_0x002c:
            r9.b = r5
            r0 = r1
            r3 = r5
            goto L_0x0016
        L_0x0031:
            r0 = r5
            goto L_0x0016
        L_0x0033:
            int r4 = r4 + 1
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.graphics.drawable.c.a(java.lang.String, int, android.support.graphics.drawable.c$a):void");
    }
}
