package com.bumptech.glide;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.bumptech.glide.load.engine.g;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.a;
import com.bumptech.glide.request.b;
import com.bumptech.glide.request.c;
import com.bumptech.glide.request.d;
import com.bumptech.glide.util.h;
import com.bumptech.glide.util.i;

/* compiled from: RequestBuilder */
public class f<TranscodeType> implements Cloneable {
    protected static final d a = new d().b(g.c).a(Priority.LOW).a(true);
    @NonNull
    protected d b;
    private final e c;
    private final g d;
    private final Class<TranscodeType> e;
    private final d f;
    private final c g;
    @NonNull
    private h<?, ? super TranscodeType> h;
    @Nullable
    private Object i;
    @Nullable
    private c<TranscodeType> j;
    @Nullable
    private f<TranscodeType> k;
    @Nullable
    private Float l;
    private boolean m = true;
    private boolean n;
    private boolean o;

    /* renamed from: com.bumptech.glide.f$1 reason: invalid class name */
    /* compiled from: RequestBuilder */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[ScaleType.values().length];

        static {
            b = new int[Priority.values().length];
            try {
                b[Priority.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                b[Priority.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                b[Priority.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                b[Priority.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                a[ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                a[ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                a[ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
            try {
                a[ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    protected f(c cVar, g gVar, Class<TranscodeType> cls) {
        this.g = cVar;
        this.d = gVar;
        this.c = cVar.e();
        this.e = cls;
        this.f = gVar.h();
        this.h = gVar.b(cls);
        this.b = this.f;
    }

    public f<TranscodeType> a(@NonNull d dVar) {
        h.a(dVar);
        this.b = a().a(dVar);
        return this;
    }

    /* access modifiers changed from: protected */
    public d a() {
        return this.f == this.b ? this.b.clone() : this.b;
    }

    public f<TranscodeType> a(@NonNull h<?, ? super TranscodeType> hVar) {
        this.h = (h) h.a(hVar);
        this.m = false;
        return this;
    }

    public f<TranscodeType> a(@Nullable c<TranscodeType> cVar) {
        this.j = cVar;
        return this;
    }

    public f<TranscodeType> a(@Nullable Object obj) {
        return b(obj);
    }

    private f<TranscodeType> b(@Nullable Object obj) {
        this.i = obj;
        this.n = true;
        return this;
    }

    @CheckResult
    /* renamed from: b */
    public f<TranscodeType> clone() {
        try {
            f<TranscodeType> fVar = (f) super.clone();
            fVar.b = fVar.b.clone();
            fVar.h = fVar.h.clone();
            return fVar;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public <Y extends com.bumptech.glide.request.a.h<TranscodeType>> Y a(@NonNull Y y) {
        return a(y, a());
    }

    private <Y extends com.bumptech.glide.request.a.h<TranscodeType>> Y a(@NonNull Y y, d dVar) {
        i.a();
        h.a(y);
        if (!this.n) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        a b2 = b(y, dVar.h());
        a b3 = y.b();
        if (b2.a(b3)) {
            b2.i();
            if (!((a) h.a(b3)).e()) {
                b3.a();
            }
        } else {
            this.d.a((com.bumptech.glide.request.a.h<?>) y);
            y.a(b2);
            this.d.a(y, b2);
        }
        return y;
    }

    public com.bumptech.glide.request.a.h<TranscodeType> a(ImageView imageView) {
        i.a();
        h.a(imageView);
        d dVar = this.b;
        if (!dVar.c() && dVar.b() && imageView.getScaleType() != null) {
            switch (AnonymousClass1.a[imageView.getScaleType().ordinal()]) {
                case 1:
                    dVar = dVar.clone().d();
                    break;
                case 2:
                    dVar = dVar.clone().f();
                    break;
                case 3:
                case 4:
                case 5:
                    dVar = dVar.clone().e();
                    break;
                case 6:
                    dVar = dVar.clone().f();
                    break;
            }
        }
        return a(this.c.a(imageView, this.e), dVar);
    }

    private Priority a(Priority priority) {
        switch (priority) {
            case LOW:
                return Priority.NORMAL;
            case NORMAL:
                return Priority.HIGH;
            case HIGH:
            case IMMEDIATE:
                return Priority.IMMEDIATE;
            default:
                throw new IllegalArgumentException("unknown priority: " + this.b.x());
        }
    }

    private a b(com.bumptech.glide.request.a.h<TranscodeType> hVar, d dVar) {
        return a(hVar, (com.bumptech.glide.request.f) null, this.h, dVar.x(), dVar.y(), dVar.A(), dVar);
    }

    private a a(com.bumptech.glide.request.a.h<TranscodeType> hVar, @Nullable com.bumptech.glide.request.f fVar, h<?, ? super TranscodeType> hVar2, Priority priority, int i2, int i3, d dVar) {
        h<?, ? super TranscodeType> hVar3;
        Priority a2;
        int i4;
        int i5;
        if (this.k != null) {
            if (this.o) {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
            h<?, ? super TranscodeType> hVar4 = this.k.h;
            if (this.k.m) {
                hVar3 = hVar2;
            } else {
                hVar3 = hVar4;
            }
            if (this.k.b.w()) {
                a2 = this.k.b.x();
            } else {
                a2 = a(priority);
            }
            int y = this.k.b.y();
            int A = this.k.b.A();
            if (!i.a(i2, i3) || this.k.b.z()) {
                i4 = A;
                i5 = y;
            } else {
                int y2 = dVar.y();
                i4 = dVar.A();
                i5 = y2;
            }
            com.bumptech.glide.request.f fVar2 = new com.bumptech.glide.request.f(fVar);
            a a3 = a(hVar, dVar, (b) fVar2, hVar2, priority, i2, i3);
            this.o = true;
            a a4 = this.k.a(hVar, fVar2, hVar3, a2, i5, i4, this.k.b);
            this.o = false;
            fVar2.a(a3, a4);
            return fVar2;
        } else if (this.l == null) {
            return a(hVar, dVar, (b) fVar, hVar2, priority, i2, i3);
        } else {
            com.bumptech.glide.request.f fVar3 = new com.bumptech.glide.request.f(fVar);
            fVar3.a(a(hVar, dVar, (b) fVar3, hVar2, priority, i2, i3), a(hVar, dVar.clone().a(this.l.floatValue()), (b) fVar3, hVar2, a(priority), i2, i3));
            return fVar3;
        }
    }

    private a a(com.bumptech.glide.request.a.h<TranscodeType> hVar, d dVar, b bVar, h<?, ? super TranscodeType> hVar2, Priority priority, int i2, int i3) {
        return SingleRequest.a(this.c, this.i, this.e, dVar, i2, i3, priority, hVar, this.j, bVar, this.c.b(), hVar2.b());
    }
}
