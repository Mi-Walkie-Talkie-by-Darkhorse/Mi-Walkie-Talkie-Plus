package p000a.p007c.p008a.p009a;

import androidx.constraintlayout.motion.widget.MotionInterpolator;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* renamed from: a.c.a.a.g */
/* loaded from: classes.dex */
public class StopLogic extends MotionInterpolator {

    /* renamed from: a */
    private float f120a;

    /* renamed from: b */
    private float f121b;

    /* renamed from: c */
    private float f122c;

    /* renamed from: d */
    private float f123d;

    /* renamed from: e */
    private float f124e;

    /* renamed from: f */
    private float f125f;

    /* renamed from: g */
    private float f126g;

    /* renamed from: h */
    private float f127h;

    /* renamed from: i */
    private float f128i;

    /* renamed from: j */
    private int f129j;

    /* renamed from: k */
    private boolean f130k = false;

    /* renamed from: l */
    private float f131l;

    /* renamed from: m */
    private float f132m;

    /* renamed from: b */
    private float m26406b(float f) {
        float f2 = this.f123d;
        if (f <= f2) {
            float f3 = this.f120a;
            return (f3 * f) + ((((this.f121b - f3) * f) * f) / (f2 * 2.0f));
        }
        int i = this.f129j;
        if (i == 1) {
            return this.f126g;
        }
        float f4 = f - f2;
        float f5 = this.f124e;
        if (f4 < f5) {
            float f6 = this.f126g;
            float f7 = this.f121b;
            return f6 + (f7 * f4) + ((((this.f122c - f7) * f4) * f4) / (f5 * 2.0f));
        } else if (i == 2) {
            return this.f127h;
        } else {
            float f8 = f4 - f5;
            float f9 = this.f125f;
            if (f8 < f9) {
                float f10 = this.f127h;
                float f11 = this.f122c;
                return (f10 + (f11 * f8)) - (((f11 * f8) * f8) / (f9 * 2.0f));
            }
            return this.f128i;
        }
    }

    /* renamed from: e */
    private void m26403e(float f, float f2, float f3, float f4, float f5) {
        if (f == BitmapDescriptorFactory.HUE_RED) {
            f = 1.0E-4f;
        }
        this.f120a = f;
        float f6 = f / f3;
        float f7 = (f6 * f) / 2.0f;
        if (f < BitmapDescriptorFactory.HUE_RED) {
            float sqrt = (float) Math.sqrt((f2 - ((((-f) / f3) * f) / 2.0f)) * f3);
            if (sqrt < f4) {
                this.f129j = 2;
                this.f120a = f;
                this.f121b = sqrt;
                this.f122c = BitmapDescriptorFactory.HUE_RED;
                float f8 = (sqrt - f) / f3;
                this.f123d = f8;
                this.f124e = sqrt / f3;
                this.f126g = ((f + sqrt) * f8) / 2.0f;
                this.f127h = f2;
                this.f128i = f2;
                return;
            }
            this.f129j = 3;
            this.f120a = f;
            this.f121b = f4;
            this.f122c = f4;
            float f9 = (f4 - f) / f3;
            this.f123d = f9;
            float f10 = f4 / f3;
            this.f125f = f10;
            float f11 = ((f + f4) * f9) / 2.0f;
            float f12 = (f10 * f4) / 2.0f;
            this.f124e = ((f2 - f11) - f12) / f4;
            this.f126g = f11;
            this.f127h = f2 - f12;
            this.f128i = f2;
        } else if (f7 >= f2) {
            this.f129j = 1;
            this.f120a = f;
            this.f121b = BitmapDescriptorFactory.HUE_RED;
            this.f126g = f2;
            this.f123d = (2.0f * f2) / f;
        } else {
            float f13 = f2 - f7;
            float f14 = f13 / f;
            if (f14 + f6 < f5) {
                this.f129j = 2;
                this.f120a = f;
                this.f121b = f;
                this.f122c = BitmapDescriptorFactory.HUE_RED;
                this.f126g = f13;
                this.f127h = f2;
                this.f123d = f14;
                this.f124e = f6;
                return;
            }
            float sqrt2 = (float) Math.sqrt((f3 * f2) + ((f * f) / 2.0f));
            float f15 = (sqrt2 - f) / f3;
            this.f123d = f15;
            float f16 = sqrt2 / f3;
            this.f124e = f16;
            if (sqrt2 < f4) {
                this.f129j = 2;
                this.f120a = f;
                this.f121b = sqrt2;
                this.f122c = BitmapDescriptorFactory.HUE_RED;
                this.f123d = f15;
                this.f124e = f16;
                this.f126g = ((f + sqrt2) * f15) / 2.0f;
                this.f127h = f2;
                return;
            }
            this.f129j = 3;
            this.f120a = f;
            this.f121b = f4;
            this.f122c = f4;
            float f17 = (f4 - f) / f3;
            this.f123d = f17;
            float f18 = f4 / f3;
            this.f125f = f18;
            float f19 = ((f + f4) * f17) / 2.0f;
            float f20 = (f18 * f4) / 2.0f;
            this.f124e = ((f2 - f19) - f20) / f4;
            this.f126g = f19;
            this.f127h = f2 - f20;
            this.f128i = f2;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
    /* renamed from: a */
    public float mo24792a() {
        return this.f130k ? -m26404d(this.f132m) : m26404d(this.f132m);
    }

    /* renamed from: c */
    public void m26405c(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f131l = f;
        boolean z = f > f2;
        this.f130k = z;
        if (z) {
            m26403e(-f3, f - f2, f5, f6, f4);
        } else {
            m26403e(f3, f2 - f, f5, f6, f4);
        }
    }

    /* renamed from: d */
    public float m26404d(float f) {
        float f2 = this.f123d;
        if (f <= f2) {
            float f3 = this.f120a;
            return f3 + (((this.f121b - f3) * f) / f2);
        }
        int i = this.f129j;
        if (i == 1) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f4 = f - f2;
        float f5 = this.f124e;
        if (f4 < f5) {
            float f6 = this.f121b;
            return f6 + (((this.f122c - f6) * f4) / f5);
        } else if (i == 2) {
            return this.f127h;
        } else {
            float f7 = f4 - f5;
            float f8 = this.f125f;
            if (f7 < f8) {
                float f9 = this.f122c;
                return f9 - ((f7 * f9) / f8);
            }
            return this.f128i;
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float m26406b = m26406b(f);
        this.f132m = f;
        return this.f130k ? this.f131l - m26406b : this.f131l + m26406b;
    }
}
