package p000a.p007c.p008a.p009a;

import androidx.constraintlayout.motion.widget.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.SplineSet;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* renamed from: a.c.a.a.h */
/* loaded from: classes.dex */
public class VelocityMatrix {

    /* renamed from: a */
    float f133a;

    /* renamed from: b */
    float f134b;

    /* renamed from: c */
    float f135c;

    /* renamed from: d */
    float f136d;

    /* renamed from: e */
    float f137e;

    /* renamed from: f */
    float f138f;

    /* renamed from: a */
    public void m26402a(float f, float f2, int i, int i2, float[] fArr) {
        float f3;
        float f4 = fArr[0];
        float f5 = fArr[1];
        float f6 = (f2 - 0.5f) * 2.0f;
        float f7 = f4 + this.f135c;
        float f8 = f5 + this.f136d;
        float f9 = f7 + (this.f133a * (f - 0.5f) * 2.0f);
        float f10 = f8 + (this.f134b * f6);
        float radians = (float) Math.toRadians(this.f137e);
        double radians2 = (float) Math.toRadians(this.f138f);
        double d = i2 * f6;
        fArr[0] = f9 + (((float) ((((-i) * f3) * Math.sin(radians2)) - (Math.cos(radians2) * d))) * radians);
        fArr[1] = f10 + (radians * ((float) (((i * f3) * Math.cos(radians2)) - (d * Math.sin(radians2)))));
    }

    /* renamed from: b */
    public void m26401b() {
        this.f137e = BitmapDescriptorFactory.HUE_RED;
        this.f136d = BitmapDescriptorFactory.HUE_RED;
        this.f135c = BitmapDescriptorFactory.HUE_RED;
        this.f134b = BitmapDescriptorFactory.HUE_RED;
        this.f133a = BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: c */
    public void m26400c(KeyCycleOscillator keyCycleOscillator, float f) {
        if (keyCycleOscillator != null) {
            this.f137e = keyCycleOscillator.m24895b(f);
        }
    }

    /* renamed from: d */
    public void m26399d(SplineSet splineSet, float f) {
        if (splineSet != null) {
            this.f137e = splineSet.m24697b(f);
            this.f138f = splineSet.m24698a(f);
        }
    }

    /* renamed from: e */
    public void m26398e(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f) {
        if (keyCycleOscillator == null && keyCycleOscillator2 == null) {
            return;
        }
        if (keyCycleOscillator == null) {
            this.f133a = keyCycleOscillator.m24895b(f);
        }
        if (keyCycleOscillator2 == null) {
            this.f134b = keyCycleOscillator2.m24895b(f);
        }
    }

    /* renamed from: f */
    public void m26397f(SplineSet splineSet, SplineSet splineSet2, float f) {
        if (splineSet != null) {
            this.f133a = splineSet.m24697b(f);
        }
        if (splineSet2 != null) {
            this.f134b = splineSet2.m24697b(f);
        }
    }

    /* renamed from: g */
    public void m26396g(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f) {
        if (keyCycleOscillator != null) {
            this.f135c = keyCycleOscillator.m24895b(f);
        }
        if (keyCycleOscillator2 != null) {
            this.f136d = keyCycleOscillator2.m24895b(f);
        }
    }

    /* renamed from: h */
    public void m26395h(SplineSet splineSet, SplineSet splineSet2, float f) {
        if (splineSet != null) {
            this.f135c = splineSet.m24697b(f);
        }
        if (splineSet2 != null) {
            this.f136d = splineSet2.m24697b(f);
        }
    }
}
