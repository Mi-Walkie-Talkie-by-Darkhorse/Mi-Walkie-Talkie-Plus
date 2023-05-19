package p000a.p012e.p013a.p014a;

import android.view.animation.Interpolator;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.e.a.a.d */
/* loaded from: classes.dex */
public abstract class LookupTableInterpolator implements Interpolator {

    /* renamed from: a */
    private final float[] f156a;

    /* renamed from: b */
    private final float f157b;

    /* JADX INFO: Access modifiers changed from: protected */
    public LookupTableInterpolator(float[] fArr) {
        this.f156a = fArr;
        this.f157b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float[] fArr = this.f156a;
        int min = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.f157b;
        float f3 = (f - (min * f2)) / f2;
        float[] fArr2 = this.f156a;
        return fArr2[min] + (f3 * (fArr2[min + 1] - fArr2[min]));
    }
}
