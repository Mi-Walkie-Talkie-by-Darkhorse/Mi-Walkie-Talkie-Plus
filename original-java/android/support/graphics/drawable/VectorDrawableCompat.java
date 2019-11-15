package android.support.graphics.drawable;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.VectorDrawable;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
import org.apache.http.cookie.ClientCookie;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class VectorDrawableCompat extends e {
    static final Mode a = Mode.SRC_IN;
    private f c;
    private PorterDuffColorFilter d;
    private ColorFilter e;
    private boolean f;
    private boolean g;
    private ConstantState h;
    private final float[] i;
    private final Matrix j;
    private final Rect k;

    private static class a extends d {
        public a() {
        }

        public a(a aVar) {
            super(aVar);
        }

        public void a(Resources resources, AttributeSet attributeSet, Theme theme, XmlPullParser xmlPullParser) {
            if (d.a(xmlPullParser, "pathData")) {
                TypedArray a = e.a(resources, theme, attributeSet, a.d);
                a(a);
                a.recycle();
            }
        }

        private void a(TypedArray typedArray) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.n = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.m = c.a(string2);
            }
        }

        public boolean a() {
            return true;
        }
    }

    private static class b extends d {
        int a = 0;
        float b = 0.0f;
        int c = 0;
        float d = 1.0f;
        int e;
        float f = 1.0f;
        float g = 0.0f;
        float h = 1.0f;
        float i = 0.0f;
        Cap j = Cap.BUTT;
        Join k = Join.MITER;
        float l = 4.0f;
        private int[] p;

        public b() {
        }

        public b(b bVar) {
            super(bVar);
            this.p = bVar.p;
            this.a = bVar.a;
            this.b = bVar.b;
            this.d = bVar.d;
            this.c = bVar.c;
            this.e = bVar.e;
            this.f = bVar.f;
            this.g = bVar.g;
            this.h = bVar.h;
            this.i = bVar.i;
            this.j = bVar.j;
            this.k = bVar.k;
            this.l = bVar.l;
        }

        private Cap a(int i2, Cap cap) {
            switch (i2) {
                case 0:
                    return Cap.BUTT;
                case 1:
                    return Cap.ROUND;
                case 2:
                    return Cap.SQUARE;
                default:
                    return cap;
            }
        }

        private Join a(int i2, Join join) {
            switch (i2) {
                case 0:
                    return Join.MITER;
                case 1:
                    return Join.ROUND;
                case 2:
                    return Join.BEVEL;
                default:
                    return join;
            }
        }

        public void a(Resources resources, AttributeSet attributeSet, Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a2 = e.a(resources, theme, attributeSet, a.c);
            a(a2, xmlPullParser);
            a2.recycle();
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.p = null;
            if (d.a(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.n = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.m = c.a(string2);
                }
                this.c = d.b(typedArray, xmlPullParser, "fillColor", 1, this.c);
                this.f = d.a(typedArray, xmlPullParser, "fillAlpha", 12, this.f);
                this.j = a(d.a(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.j);
                this.k = a(d.a(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.k);
                this.l = d.a(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.l);
                this.a = d.b(typedArray, xmlPullParser, "strokeColor", 3, this.a);
                this.d = d.a(typedArray, xmlPullParser, "strokeAlpha", 11, this.d);
                this.b = d.a(typedArray, xmlPullParser, "strokeWidth", 4, this.b);
                this.h = d.a(typedArray, xmlPullParser, "trimPathEnd", 6, this.h);
                this.i = d.a(typedArray, xmlPullParser, "trimPathOffset", 7, this.i);
                this.g = d.a(typedArray, xmlPullParser, "trimPathStart", 5, this.g);
            }
        }

        /* access modifiers changed from: 0000 */
        public int getStrokeColor() {
            return this.a;
        }

        /* access modifiers changed from: 0000 */
        public void setStrokeColor(int i2) {
            this.a = i2;
        }

        /* access modifiers changed from: 0000 */
        public float getStrokeWidth() {
            return this.b;
        }

        /* access modifiers changed from: 0000 */
        public void setStrokeWidth(float f2) {
            this.b = f2;
        }

        /* access modifiers changed from: 0000 */
        public float getStrokeAlpha() {
            return this.d;
        }

        /* access modifiers changed from: 0000 */
        public void setStrokeAlpha(float f2) {
            this.d = f2;
        }

        /* access modifiers changed from: 0000 */
        public int getFillColor() {
            return this.c;
        }

        /* access modifiers changed from: 0000 */
        public void setFillColor(int i2) {
            this.c = i2;
        }

        /* access modifiers changed from: 0000 */
        public float getFillAlpha() {
            return this.f;
        }

        /* access modifiers changed from: 0000 */
        public void setFillAlpha(float f2) {
            this.f = f2;
        }

        /* access modifiers changed from: 0000 */
        public float getTrimPathStart() {
            return this.g;
        }

        /* access modifiers changed from: 0000 */
        public void setTrimPathStart(float f2) {
            this.g = f2;
        }

        /* access modifiers changed from: 0000 */
        public float getTrimPathEnd() {
            return this.h;
        }

        /* access modifiers changed from: 0000 */
        public void setTrimPathEnd(float f2) {
            this.h = f2;
        }

        /* access modifiers changed from: 0000 */
        public float getTrimPathOffset() {
            return this.i;
        }

        /* access modifiers changed from: 0000 */
        public void setTrimPathOffset(float f2) {
            this.i = f2;
        }
    }

    private static class c {
        final ArrayList<Object> a = new ArrayList<>();
        float b = 0.0f;
        int c;
        /* access modifiers changed from: private */
        public final Matrix d = new Matrix();
        private float e = 0.0f;
        private float f = 0.0f;
        private float g = 1.0f;
        private float h = 1.0f;
        private float i = 0.0f;
        private float j = 0.0f;
        /* access modifiers changed from: private */
        public final Matrix k = new Matrix();
        private int[] l;
        private String m = null;

        public c(c cVar, ArrayMap<String, Object> arrayMap) {
            d aVar;
            this.b = cVar.b;
            this.e = cVar.e;
            this.f = cVar.f;
            this.g = cVar.g;
            this.h = cVar.h;
            this.i = cVar.i;
            this.j = cVar.j;
            this.l = cVar.l;
            this.m = cVar.m;
            this.c = cVar.c;
            if (this.m != null) {
                arrayMap.put(this.m, this);
            }
            this.k.set(cVar.k);
            ArrayList<Object> arrayList = cVar.a;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < arrayList.size()) {
                    Object obj = arrayList.get(i3);
                    if (obj instanceof c) {
                        this.a.add(new c((c) obj, arrayMap));
                    } else {
                        if (obj instanceof b) {
                            aVar = new b((b) obj);
                        } else if (obj instanceof a) {
                            aVar = new a((a) obj);
                        } else {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        this.a.add(aVar);
                        if (aVar.n != null) {
                            arrayMap.put(aVar.n, aVar);
                        }
                    }
                    i2 = i3 + 1;
                } else {
                    return;
                }
            }
        }

        public c() {
        }

        public String getGroupName() {
            return this.m;
        }

        public Matrix getLocalMatrix() {
            return this.k;
        }

        public void a(Resources resources, AttributeSet attributeSet, Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a2 = e.a(resources, theme, attributeSet, a.b);
            a(a2, xmlPullParser);
            a2.recycle();
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.l = null;
            this.b = d.a(typedArray, xmlPullParser, "rotation", 5, this.b);
            this.e = typedArray.getFloat(1, this.e);
            this.f = typedArray.getFloat(2, this.f);
            this.g = d.a(typedArray, xmlPullParser, "scaleX", 3, this.g);
            this.h = d.a(typedArray, xmlPullParser, "scaleY", 4, this.h);
            this.i = d.a(typedArray, xmlPullParser, "translateX", 6, this.i);
            this.j = d.a(typedArray, xmlPullParser, "translateY", 7, this.j);
            String string = typedArray.getString(0);
            if (string != null) {
                this.m = string;
            }
            a();
        }

        private void a() {
            this.k.reset();
            this.k.postTranslate(-this.e, -this.f);
            this.k.postScale(this.g, this.h);
            this.k.postRotate(this.b, 0.0f, 0.0f);
            this.k.postTranslate(this.i + this.e, this.j + this.f);
        }

        public float getRotation() {
            return this.b;
        }

        public void setRotation(float f2) {
            if (f2 != this.b) {
                this.b = f2;
                a();
            }
        }

        public float getPivotX() {
            return this.e;
        }

        public void setPivotX(float f2) {
            if (f2 != this.e) {
                this.e = f2;
                a();
            }
        }

        public float getPivotY() {
            return this.f;
        }

        public void setPivotY(float f2) {
            if (f2 != this.f) {
                this.f = f2;
                a();
            }
        }

        public float getScaleX() {
            return this.g;
        }

        public void setScaleX(float f2) {
            if (f2 != this.g) {
                this.g = f2;
                a();
            }
        }

        public float getScaleY() {
            return this.h;
        }

        public void setScaleY(float f2) {
            if (f2 != this.h) {
                this.h = f2;
                a();
            }
        }

        public float getTranslateX() {
            return this.i;
        }

        public void setTranslateX(float f2) {
            if (f2 != this.i) {
                this.i = f2;
                a();
            }
        }

        public float getTranslateY() {
            return this.j;
        }

        public void setTranslateY(float f2) {
            if (f2 != this.j) {
                this.j = f2;
                a();
            }
        }
    }

    private static class d {
        protected android.support.graphics.drawable.c.b[] m = null;
        String n;
        int o;

        public d() {
        }

        public d(d dVar) {
            this.n = dVar.n;
            this.o = dVar.o;
            this.m = c.a(dVar.m);
        }

        public void a(Path path) {
            path.reset();
            if (this.m != null) {
                android.support.graphics.drawable.c.b.a(this.m, path);
            }
        }

        public String getPathName() {
            return this.n;
        }

        public boolean a() {
            return false;
        }

        public android.support.graphics.drawable.c.b[] getPathData() {
            return this.m;
        }

        public void setPathData(android.support.graphics.drawable.c.b[] bVarArr) {
            if (!c.a(this.m, bVarArr)) {
                this.m = c.a(bVarArr);
            } else {
                c.b(this.m, bVarArr);
            }
        }
    }

    private static class e {
        private static final Matrix k = new Matrix();
        final c a;
        float b;
        float c;
        float d;
        float e;
        int f;
        String g;
        final ArrayMap<String, Object> h;
        private final Path i;
        private final Path j;
        private final Matrix l;
        /* access modifiers changed from: private */
        public Paint m;
        /* access modifiers changed from: private */
        public Paint n;
        private PathMeasure o;
        private int p;

        public e() {
            this.l = new Matrix();
            this.b = 0.0f;
            this.c = 0.0f;
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 255;
            this.g = null;
            this.h = new ArrayMap<>();
            this.a = new c();
            this.i = new Path();
            this.j = new Path();
        }

        public void setRootAlpha(int i2) {
            this.f = i2;
        }

        public int getRootAlpha() {
            return this.f;
        }

        public void setAlpha(float f2) {
            setRootAlpha((int) (255.0f * f2));
        }

        public float getAlpha() {
            return ((float) getRootAlpha()) / 255.0f;
        }

        public e(e eVar) {
            this.l = new Matrix();
            this.b = 0.0f;
            this.c = 0.0f;
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 255;
            this.g = null;
            this.h = new ArrayMap<>();
            this.a = new c(eVar.a, this.h);
            this.i = new Path(eVar.i);
            this.j = new Path(eVar.j);
            this.b = eVar.b;
            this.c = eVar.c;
            this.d = eVar.d;
            this.e = eVar.e;
            this.p = eVar.p;
            this.f = eVar.f;
            this.g = eVar.g;
            if (eVar.g != null) {
                this.h.put(eVar.g, this);
            }
        }

        private void a(c cVar, Matrix matrix, Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            cVar.d.set(matrix);
            cVar.d.preConcat(cVar.k);
            canvas.save();
            int i4 = 0;
            while (true) {
                int i5 = i4;
                if (i5 < cVar.a.size()) {
                    Object obj = cVar.a.get(i5);
                    if (obj instanceof c) {
                        a((c) obj, cVar.d, canvas, i2, i3, colorFilter);
                    } else if (obj instanceof d) {
                        a(cVar, (d) obj, canvas, i2, i3, colorFilter);
                    }
                    i4 = i5 + 1;
                } else {
                    canvas.restore();
                    return;
                }
            }
        }

        public void a(Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            a(this.a, k, canvas, i2, i3, colorFilter);
        }

        private void a(c cVar, d dVar, Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            float f2 = ((float) i2) / this.d;
            float f3 = ((float) i3) / this.e;
            float min = Math.min(f2, f3);
            Matrix a2 = cVar.d;
            this.l.set(a2);
            this.l.postScale(f2, f3);
            float a3 = a(a2);
            if (a3 != 0.0f) {
                dVar.a(this.i);
                Path path = this.i;
                this.j.reset();
                if (dVar.a()) {
                    this.j.addPath(path, this.l);
                    canvas.clipPath(this.j);
                    return;
                }
                b bVar = (b) dVar;
                if (!(bVar.g == 0.0f && bVar.h == 1.0f)) {
                    float f4 = (bVar.g + bVar.i) % 1.0f;
                    float f5 = (bVar.h + bVar.i) % 1.0f;
                    if (this.o == null) {
                        this.o = new PathMeasure();
                    }
                    this.o.setPath(this.i, false);
                    float length = this.o.getLength();
                    float f6 = f4 * length;
                    float f7 = f5 * length;
                    path.reset();
                    if (f6 > f7) {
                        this.o.getSegment(f6, length, path, true);
                        this.o.getSegment(0.0f, f7, path, true);
                    } else {
                        this.o.getSegment(f6, f7, path, true);
                    }
                    path.rLineTo(0.0f, 0.0f);
                }
                this.j.addPath(path, this.l);
                if (bVar.c != 0) {
                    if (this.n == null) {
                        this.n = new Paint();
                        this.n.setStyle(Style.FILL);
                        this.n.setAntiAlias(true);
                    }
                    Paint paint = this.n;
                    paint.setColor(VectorDrawableCompat.a(bVar.c, bVar.f));
                    paint.setColorFilter(colorFilter);
                    canvas.drawPath(this.j, paint);
                }
                if (bVar.a != 0) {
                    if (this.m == null) {
                        this.m = new Paint();
                        this.m.setStyle(Style.STROKE);
                        this.m.setAntiAlias(true);
                    }
                    Paint paint2 = this.m;
                    if (bVar.k != null) {
                        paint2.setStrokeJoin(bVar.k);
                    }
                    if (bVar.j != null) {
                        paint2.setStrokeCap(bVar.j);
                    }
                    paint2.setStrokeMiter(bVar.l);
                    paint2.setColor(VectorDrawableCompat.a(bVar.a, bVar.d));
                    paint2.setColorFilter(colorFilter);
                    paint2.setStrokeWidth(a3 * min * bVar.b);
                    canvas.drawPath(this.j, paint2);
                }
            }
        }

        private static float a(float f2, float f3, float f4, float f5) {
            return (f2 * f5) - (f3 * f4);
        }

        private float a(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float hypot = (float) Math.hypot((double) fArr[0], (double) fArr[1]);
            float hypot2 = (float) Math.hypot((double) fArr[2], (double) fArr[3]);
            float a2 = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max(hypot, hypot2);
            if (max > 0.0f) {
                return Math.abs(a2) / max;
            }
            return 0.0f;
        }
    }

    private static class f extends ConstantState {
        int a;
        e b;
        ColorStateList c;
        Mode d;
        boolean e;
        Bitmap f;
        ColorStateList g;
        Mode h;
        int i;
        boolean j;
        boolean k;
        Paint l;

        public f(f fVar) {
            this.c = null;
            this.d = VectorDrawableCompat.a;
            if (fVar != null) {
                this.a = fVar.a;
                this.b = new e(fVar.b);
                if (fVar.b.n != null) {
                    this.b.n = new Paint(fVar.b.n);
                }
                if (fVar.b.m != null) {
                    this.b.m = new Paint(fVar.b.m);
                }
                this.c = fVar.c;
                this.d = fVar.d;
                this.e = fVar.e;
            }
        }

        public void a(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f, null, rect, a(colorFilter));
        }

        public boolean a() {
            return this.b.getRootAlpha() < 255;
        }

        public Paint a(ColorFilter colorFilter) {
            if (!a() && colorFilter == null) {
                return null;
            }
            if (this.l == null) {
                this.l = new Paint();
                this.l.setFilterBitmap(true);
            }
            this.l.setAlpha(this.b.getRootAlpha());
            this.l.setColorFilter(colorFilter);
            return this.l;
        }

        public void a(int i2, int i3) {
            this.f.eraseColor(0);
            this.b.a(new Canvas(this.f), i2, i3, (ColorFilter) null);
        }

        public void b(int i2, int i3) {
            if (this.f == null || !c(i2, i3)) {
                this.f = Bitmap.createBitmap(i2, i3, Config.ARGB_8888);
                this.k = true;
            }
        }

        public boolean c(int i2, int i3) {
            if (i2 == this.f.getWidth() && i3 == this.f.getHeight()) {
                return true;
            }
            return false;
        }

        public boolean b() {
            if (!this.k && this.g == this.c && this.h == this.d && this.j == this.e && this.i == this.b.getRootAlpha()) {
                return true;
            }
            return false;
        }

        public void c() {
            this.g = this.c;
            this.h = this.d;
            this.i = this.b.getRootAlpha();
            this.j = this.e;
            this.k = false;
        }

        public f() {
            this.c = null;
            this.d = VectorDrawableCompat.a;
            this.b = new e();
        }

        public Drawable newDrawable() {
            return new VectorDrawableCompat(this);
        }

        public Drawable newDrawable(Resources resources) {
            return new VectorDrawableCompat(this);
        }

        public int getChangingConfigurations() {
            return this.a;
        }
    }

    private static class g extends ConstantState {
        private final ConstantState a;

        public g(ConstantState constantState) {
            this.a = constantState;
        }

        public Drawable newDrawable() {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.b = (VectorDrawable) this.a.newDrawable();
            return vectorDrawableCompat;
        }

        public Drawable newDrawable(Resources resources) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.b = (VectorDrawable) this.a.newDrawable(resources);
            return vectorDrawableCompat;
        }

        public Drawable newDrawable(Resources resources, Theme theme) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.b = (VectorDrawable) this.a.newDrawable(resources, theme);
            return vectorDrawableCompat;
        }

        public boolean canApplyTheme() {
            return this.a.canApplyTheme();
        }

        public int getChangingConfigurations() {
            return this.a.getChangingConfigurations();
        }
    }

    public /* bridge */ /* synthetic */ void applyTheme(Theme theme) {
        super.applyTheme(theme);
    }

    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    public /* bridge */ /* synthetic */ ColorFilter getColorFilter() {
        return super.getColorFilter();
    }

    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i2) {
        super.setChangingConfigurations(i2);
    }

    public /* bridge */ /* synthetic */ void setColorFilter(int i2, Mode mode) {
        super.setColorFilter(i2, mode);
    }

    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    public /* bridge */ /* synthetic */ void setHotspot(float f2, float f3) {
        super.setHotspot(f2, f3);
    }

    public /* bridge */ /* synthetic */ void setHotspotBounds(int i2, int i3, int i4, int i5) {
        super.setHotspotBounds(i2, i3, i4, i5);
    }

    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    VectorDrawableCompat() {
        this.g = true;
        this.i = new float[9];
        this.j = new Matrix();
        this.k = new Rect();
        this.c = new f();
    }

    VectorDrawableCompat(@NonNull f fVar) {
        this.g = true;
        this.i = new float[9];
        this.j = new Matrix();
        this.k = new Rect();
        this.c = fVar;
        this.d = a(this.d, fVar.c, fVar.d);
    }

    public Drawable mutate() {
        if (this.b != null) {
            this.b.mutate();
        } else if (!this.f && super.mutate() == this) {
            this.c = new f(this.c);
            this.f = true;
        }
        return this;
    }

    /* access modifiers changed from: 0000 */
    public Object a(String str) {
        return this.c.b.h.get(str);
    }

    public ConstantState getConstantState() {
        if (this.b != null) {
            return new g(this.b.getConstantState());
        }
        this.c.a = getChangingConfigurations();
        return this.c;
    }

    public void draw(Canvas canvas) {
        if (this.b != null) {
            this.b.draw(canvas);
            return;
        }
        copyBounds(this.k);
        if (this.k.width() > 0 && this.k.height() > 0) {
            ColorFilter colorFilter = this.e == null ? this.d : this.e;
            canvas.getMatrix(this.j);
            this.j.getValues(this.i);
            float abs = Math.abs(this.i[0]);
            float abs2 = Math.abs(this.i[4]);
            float abs3 = Math.abs(this.i[1]);
            float abs4 = Math.abs(this.i[3]);
            if (!(abs3 == 0.0f && abs4 == 0.0f)) {
                abs2 = 1.0f;
                abs = 1.0f;
            }
            int height = (int) (abs2 * ((float) this.k.height()));
            int min = Math.min(2048, (int) (abs * ((float) this.k.width())));
            int min2 = Math.min(2048, height);
            if (min > 0 && min2 > 0) {
                int save = canvas.save();
                canvas.translate((float) this.k.left, (float) this.k.top);
                if (a()) {
                    canvas.translate((float) this.k.width(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                }
                this.k.offsetTo(0, 0);
                this.c.b(min, min2);
                if (!this.g) {
                    this.c.a(min, min2);
                } else if (!this.c.b()) {
                    this.c.a(min, min2);
                    this.c.c();
                }
                this.c.a(canvas, colorFilter, this.k);
                canvas.restoreToCount(save);
            }
        }
    }

    public int getAlpha() {
        if (this.b != null) {
            return DrawableCompat.getAlpha(this.b);
        }
        return this.c.b.getRootAlpha();
    }

    public void setAlpha(int i2) {
        if (this.b != null) {
            this.b.setAlpha(i2);
        } else if (this.c.b.getRootAlpha() != i2) {
            this.c.b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.b != null) {
            this.b.setColorFilter(colorFilter);
            return;
        }
        this.e = colorFilter;
        invalidateSelf();
    }

    /* access modifiers changed from: 0000 */
    public PorterDuffColorFilter a(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @SuppressLint({"NewApi"})
    public void setTint(int i2) {
        if (this.b != null) {
            DrawableCompat.setTint(this.b, i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    public void setTintList(ColorStateList colorStateList) {
        if (this.b != null) {
            DrawableCompat.setTintList(this.b, colorStateList);
            return;
        }
        f fVar = this.c;
        if (fVar.c != colorStateList) {
            fVar.c = colorStateList;
            this.d = a(this.d, colorStateList, fVar.d);
            invalidateSelf();
        }
    }

    public void setTintMode(Mode mode) {
        if (this.b != null) {
            DrawableCompat.setTintMode(this.b, mode);
            return;
        }
        f fVar = this.c;
        if (fVar.d != mode) {
            fVar.d = mode;
            this.d = a(this.d, fVar.c, mode);
            invalidateSelf();
        }
    }

    public boolean isStateful() {
        if (this.b != null) {
            return this.b.isStateful();
        }
        return super.isStateful() || !(this.c == null || this.c.c == null || !this.c.c.isStateful());
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        if (this.b != null) {
            return this.b.setState(iArr);
        }
        f fVar = this.c;
        if (fVar.c == null || fVar.d == null) {
            return false;
        }
        this.d = a(this.d, fVar.c, fVar.d);
        invalidateSelf();
        return true;
    }

    public int getOpacity() {
        if (this.b != null) {
            return this.b.getOpacity();
        }
        return -3;
    }

    public int getIntrinsicWidth() {
        if (this.b != null) {
            return this.b.getIntrinsicWidth();
        }
        return (int) this.c.b.b;
    }

    public int getIntrinsicHeight() {
        if (this.b != null) {
            return this.b.getIntrinsicHeight();
        }
        return (int) this.c.b.c;
    }

    public boolean canApplyTheme() {
        if (this.b != null) {
            DrawableCompat.canApplyTheme(this.b);
        }
        return false;
    }

    public boolean isAutoMirrored() {
        if (this.b != null) {
            return DrawableCompat.isAutoMirrored(this.b);
        }
        return this.c.e;
    }

    public void setAutoMirrored(boolean z) {
        if (this.b != null) {
            DrawableCompat.setAutoMirrored(this.b, z);
        } else {
            this.c.e = z;
        }
    }

    @Nullable
    @SuppressLint({"NewApi"})
    public static VectorDrawableCompat a(@NonNull Resources resources, @DrawableRes int i2, @Nullable Theme theme) {
        int next;
        if (VERSION.SDK_INT >= 24) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.b = ResourcesCompat.getDrawable(resources, i2, theme);
            vectorDrawableCompat.h = new g(vectorDrawableCompat.b.getConstantState());
            return vectorDrawableCompat;
        }
        try {
            XmlResourceParser xml = resources.getXml(i2);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return a(resources, xml, asAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (XmlPullParserException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
        } catch (IOException e3) {
            Log.e("VectorDrawableCompat", "parser error", e3);
        }
        return null;
    }

    @SuppressLint({"NewApi"})
    public static VectorDrawableCompat a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
        vectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return vectorDrawableCompat;
    }

    static int a(int i2, float f2) {
        return (((int) (((float) Color.alpha(i2)) * f2)) << 24) | (16777215 & i2);
    }

    @SuppressLint({"NewApi"})
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        if (this.b != null) {
            this.b.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Theme theme) throws XmlPullParserException, IOException {
        if (this.b != null) {
            DrawableCompat.inflate(this.b, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        f fVar = this.c;
        fVar.b = new e();
        TypedArray a2 = a(resources, theme, attributeSet, a.a);
        a(a2, xmlPullParser);
        a2.recycle();
        fVar.a = getChangingConfigurations();
        fVar.k = true;
        b(resources, xmlPullParser, attributeSet, theme);
        this.d = a(this.d, fVar.c, fVar.d);
    }

    private static Mode a(int i2, Mode mode) {
        switch (i2) {
            case 3:
                return Mode.SRC_OVER;
            case 5:
                return Mode.SRC_IN;
            case 9:
                return Mode.SRC_ATOP;
            case 14:
                return Mode.MULTIPLY;
            case 15:
                return Mode.SCREEN;
            case 16:
                if (VERSION.SDK_INT >= 11) {
                    return Mode.ADD;
                }
                return mode;
            default:
                return mode;
        }
    }

    private void a(TypedArray typedArray, XmlPullParser xmlPullParser) throws XmlPullParserException {
        f fVar = this.c;
        e eVar = fVar.b;
        fVar.d = a(d.a(typedArray, xmlPullParser, "tintMode", 6, -1), Mode.SRC_IN);
        ColorStateList colorStateList = typedArray.getColorStateList(1);
        if (colorStateList != null) {
            fVar.c = colorStateList;
        }
        fVar.e = d.a(typedArray, xmlPullParser, "autoMirrored", 5, fVar.e);
        eVar.d = d.a(typedArray, xmlPullParser, "viewportWidth", 7, eVar.d);
        eVar.e = d.a(typedArray, xmlPullParser, "viewportHeight", 8, eVar.e);
        if (eVar.d <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (eVar.e <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        } else {
            eVar.b = typedArray.getDimension(3, eVar.b);
            eVar.c = typedArray.getDimension(2, eVar.c);
            if (eVar.b <= 0.0f) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (eVar.c <= 0.0f) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
            } else {
                eVar.setAlpha(d.a(typedArray, xmlPullParser, "alpha", 4, eVar.getAlpha()));
                String string = typedArray.getString(0);
                if (string != null) {
                    eVar.g = string;
                    eVar.h.put(string, eVar);
                }
            }
        }
    }

    private void b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Theme theme) throws XmlPullParserException, IOException {
        boolean z;
        f fVar = this.c;
        e eVar = fVar.b;
        Stack stack = new Stack();
        stack.push(eVar.a);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z2 = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                c cVar = (c) stack.peek();
                if (ClientCookie.PATH_ATTR.equals(name)) {
                    b bVar = new b();
                    bVar.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.a.add(bVar);
                    if (bVar.getPathName() != null) {
                        eVar.h.put(bVar.getPathName(), bVar);
                    }
                    z = false;
                    fVar.a = bVar.o | fVar.a;
                } else if ("clip-path".equals(name)) {
                    a aVar = new a();
                    aVar.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.a.add(aVar);
                    if (aVar.getPathName() != null) {
                        eVar.h.put(aVar.getPathName(), aVar);
                    }
                    fVar.a |= aVar.o;
                    z = z2;
                } else {
                    if ("group".equals(name)) {
                        c cVar2 = new c();
                        cVar2.a(resources, attributeSet, theme, xmlPullParser);
                        cVar.a.add(cVar2);
                        stack.push(cVar2);
                        if (cVar2.getGroupName() != null) {
                            eVar.h.put(cVar2.getGroupName(), cVar2);
                        }
                        fVar.a |= cVar2.c;
                    }
                    z = z2;
                }
                z2 = z;
            } else if (eventType == 3) {
                if ("group".equals(xmlPullParser.getName())) {
                    stack.pop();
                }
            }
            eventType = xmlPullParser.next();
        }
        if (z2) {
            StringBuffer stringBuffer = new StringBuffer();
            if (stringBuffer.length() > 0) {
                stringBuffer.append(" or ");
            }
            stringBuffer.append(ClientCookie.PATH_ATTR);
            throw new XmlPullParserException("no " + stringBuffer + " defined");
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(boolean z) {
        this.g = z;
    }

    @SuppressLint({"NewApi"})
    private boolean a() {
        boolean z = true;
        if (VERSION.SDK_INT < 17) {
            return false;
        }
        if (!isAutoMirrored() || getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        if (this.b != null) {
            this.b.setBounds(rect);
        }
    }

    public int getChangingConfigurations() {
        if (this.b != null) {
            return this.b.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.c.getChangingConfigurations();
    }

    public void invalidateSelf() {
        if (this.b != null) {
            this.b.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    public void scheduleSelf(Runnable runnable, long j2) {
        if (this.b != null) {
            this.b.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        if (this.b != null) {
            return this.b.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    public void unscheduleSelf(Runnable runnable) {
        if (this.b != null) {
            this.b.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}
