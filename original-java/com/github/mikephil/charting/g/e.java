package com.github.mikephil.charting.g;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.github.mikephil.charting.g.f.a;

/* compiled from: MPPointF */
public class e extends a {
    public static final Creator<e> c = new Creator<e>() {
        /* renamed from: a */
        public e createFromParcel(Parcel parcel) {
            e eVar = new e(0.0f, 0.0f);
            eVar.a(parcel);
            return eVar;
        }

        /* renamed from: a */
        public e[] newArray(int i) {
            return new e[i];
        }
    };
    private static f<e> f = f.a(32, new e(0.0f, 0.0f));
    public float a;
    public float b;

    static {
        f.a(0.5f);
    }

    public e() {
    }

    public e(float f2, float f3) {
        this.a = f2;
        this.b = f3;
    }

    public static e a(float f2, float f3) {
        e eVar = (e) f.a();
        eVar.a = f2;
        eVar.b = f3;
        return eVar;
    }

    public static void a(e eVar) {
        f.a(eVar);
    }

    public void a(Parcel parcel) {
        this.a = parcel.readFloat();
        this.b = parcel.readFloat();
    }

    /* access modifiers changed from: protected */
    public a a() {
        return new e(0.0f, 0.0f);
    }
}
