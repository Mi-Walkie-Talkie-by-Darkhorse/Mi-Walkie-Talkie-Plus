package p000a.p007c.p008a.p009a;

import android.util.Log;
import java.util.Arrays;

/* renamed from: a.c.a.a.c */
/* loaded from: classes.dex */
public class Easing {

    /* renamed from: b */
    static Easing f101b = new Easing();

    /* renamed from: c */
    public static String[] f102c = {"standard", "accelerate", "decelerate", "linear"};

    /* renamed from: a */
    String f103a = "identity";

    /* compiled from: Easing.java */
    /* renamed from: a.c.a.a.c$a */
    /* loaded from: classes.dex */
    static class C0017a extends Easing {

        /* renamed from: h */
        private static double f104h = 0.01d;

        /* renamed from: i */
        private static double f105i = 1.0E-4d;

        /* renamed from: d */
        double f106d;

        /* renamed from: e */
        double f107e;

        /* renamed from: f */
        double f108f;

        /* renamed from: g */
        double f109g;

        C0017a(String str) {
            this.f103a = str;
            int indexOf = str.indexOf(40);
            int indexOf2 = str.indexOf(44, indexOf);
            this.f106d = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
            int i = indexOf2 + 1;
            int indexOf3 = str.indexOf(44, i);
            this.f107e = Double.parseDouble(str.substring(i, indexOf3).trim());
            int i2 = indexOf3 + 1;
            int indexOf4 = str.indexOf(44, i2);
            this.f108f = Double.parseDouble(str.substring(i2, indexOf4).trim());
            int i3 = indexOf4 + 1;
            this.f109g = Double.parseDouble(str.substring(i3, str.indexOf(41, i3)).trim());
        }

        /* renamed from: d */
        private double m26423d(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f106d * d2 * d3 * d) + (this.f108f * d3 * d * d) + (d * d * d);
        }

        /* renamed from: e */
        private double m26422e(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f107e * d2 * d3 * d) + (this.f109g * d3 * d * d) + (d * d * d);
        }

        @Override // p000a.p007c.p008a.p009a.Easing
        /* renamed from: a */
        public double mo26425a(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > f104h) {
                d2 *= 0.5d;
                d3 = m26423d(d3) < d ? d3 + d2 : d3 - d2;
            }
            double d4 = d3 - d2;
            double m26423d = m26423d(d4);
            double d5 = d3 + d2;
            double m26423d2 = m26423d(d5);
            double m26422e = m26422e(d4);
            return (((m26422e(d5) - m26422e) * (d - m26423d)) / (m26423d2 - m26423d)) + m26422e;
        }

        @Override // p000a.p007c.p008a.p009a.Easing
        /* renamed from: b */
        public double mo26424b(double d) {
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > f105i) {
                d2 *= 0.5d;
                d3 = m26423d(d3) < d ? d3 + d2 : d3 - d2;
            }
            double d4 = d3 - d2;
            double d5 = d3 + d2;
            return (m26422e(d5) - m26422e(d4)) / (m26423d(d5) - m26423d(d4));
        }
    }

    /* renamed from: c */
    public static Easing m26426c(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new C0017a(str);
        }
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1354466595:
                if (str.equals("accelerate")) {
                    c = 0;
                    break;
                }
                break;
            case -1263948740:
                if (str.equals("decelerate")) {
                    c = 1;
                    break;
                }
                break;
            case -1102672091:
                if (str.equals("linear")) {
                    c = 2;
                    break;
                }
                break;
            case 1312628413:
                if (str.equals("standard")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return new C0017a("cubic(0.4, 0.05, 0.8, 0.7)");
            case 1:
                return new C0017a("cubic(0.0, 0.0, 0.2, 0.95)");
            case 2:
                return new C0017a("cubic(1, 1, 0, 0)");
            case 3:
                return new C0017a("cubic(0.4, 0.0, 0.2, 1)");
            default:
                Log.e("ConstraintSet", "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(f102c));
                return f101b;
        }
    }

    /* renamed from: a */
    public double mo26425a(double d) {
        return d;
    }

    /* renamed from: b */
    public double mo26424b(double d) {
        return 1.0d;
    }

    public String toString() {
        return this.f103a;
    }
}
