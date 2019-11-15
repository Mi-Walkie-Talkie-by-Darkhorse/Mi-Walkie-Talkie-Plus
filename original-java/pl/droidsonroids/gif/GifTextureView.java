package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.os.Parcelable;
import android.support.annotation.FloatRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.widget.ImageView.ScaleType;
import java.io.IOException;
import java.lang.ref.WeakReference;
import pl.droidsonroids.gif.annotations.Beta;

@RequiresApi(14)
public class GifTextureView extends TextureView {
    private static final ScaleType[] a = {ScaleType.MATRIX, ScaleType.FIT_XY, ScaleType.FIT_START, ScaleType.FIT_CENTER, ScaleType.FIT_END, ScaleType.CENTER, ScaleType.CENTER_CROP, ScaleType.CENTER_INSIDE};
    private ScaleType b = ScaleType.FIT_CENTER;
    private final Matrix c = new Matrix();
    /* access modifiers changed from: private */
    public f d;
    private boolean e;
    private b f;
    /* access modifiers changed from: private */
    public float g = 1.0f;

    /* renamed from: pl.droidsonroids.gif.GifTextureView$1 reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[ScaleType.values().length];

        static {
            try {
                a[ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    @Beta
    public interface a {
        void a(Canvas canvas);
    }

    private static class b extends Thread implements SurfaceTextureListener {
        final b a = new b();
        long[] b;
        /* access modifiers changed from: private */
        public GifInfoHandle c = new GifInfoHandle();
        /* access modifiers changed from: private */
        public IOException d;
        private final WeakReference<GifTextureView> e;

        b(GifTextureView gifTextureView) {
            super("GifRenderThread");
            this.e = new WeakReference<>(gifTextureView);
        }

        public void run() {
            try {
                GifTextureView gifTextureView = (GifTextureView) this.e.get();
                if (gifTextureView != null) {
                    this.c = gifTextureView.d.a();
                    this.c.a(1, gifTextureView.isOpaque());
                    final GifTextureView gifTextureView2 = (GifTextureView) this.e.get();
                    if (gifTextureView2 == null) {
                        this.c.a();
                        return;
                    }
                    gifTextureView2.setSuperSurfaceTextureListener(this);
                    boolean isAvailable = gifTextureView2.isAvailable();
                    this.a.a(isAvailable);
                    if (isAvailable) {
                        gifTextureView2.post(new Runnable() {
                            public void run() {
                                gifTextureView2.a(b.this.c);
                            }
                        });
                    }
                    this.c.a(gifTextureView2.g);
                    while (!isInterrupted()) {
                        try {
                            this.a.c();
                            SurfaceTexture surfaceTexture = gifTextureView2.getSurfaceTexture();
                            if (surfaceTexture != null) {
                                Surface surface = new Surface(surfaceTexture);
                                try {
                                    this.c.a(surface, this.b);
                                } finally {
                                    surface.release();
                                    surfaceTexture.release();
                                }
                            }
                        } catch (InterruptedException e2) {
                            Thread.currentThread().interrupt();
                        }
                    }
                    this.c.a();
                    this.c = new GifInfoHandle();
                }
            } catch (IOException e3) {
                this.d = e3;
            }
        }

        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            GifTextureView gifTextureView = (GifTextureView) this.e.get();
            if (gifTextureView != null) {
                gifTextureView.a(this.c);
            }
            this.a.a();
        }

        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        }

        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            this.a.b();
            this.c.l();
            return false;
        }

        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        /* access modifiers changed from: 0000 */
        public void a(@NonNull GifTextureView gifTextureView, @Nullable a aVar) {
            this.a.b();
            gifTextureView.setSuperSurfaceTextureListener(aVar != null ? new i(aVar) : null);
            this.c.l();
            interrupt();
        }
    }

    public GifTextureView(Context context) {
        super(context);
        a(null, 0, 0);
    }

    public GifTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet, 0, 0);
    }

    public GifTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet, i, 0);
    }

    private void a(AttributeSet attributeSet, int i, int i2) {
        if (attributeSet != null) {
            int attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "scaleType", -1);
            if (attributeIntValue >= 0 && attributeIntValue < a.length) {
                this.b = a[attributeIntValue];
            }
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.GifTextureView, i, i2);
            this.d = a(obtainStyledAttributes);
            super.setOpaque(obtainStyledAttributes.getBoolean(R.styleable.GifTextureView_isOpaque, false));
            obtainStyledAttributes.recycle();
            this.e = e.a((View) this, attributeSet, i, i2);
        } else {
            super.setOpaque(false);
        }
        if (!isInEditMode()) {
            this.f = new b(this);
            if (this.d != null) {
                this.f.start();
            }
        }
    }

    public void setSurfaceTextureListener(SurfaceTextureListener surfaceTextureListener) {
        throw new UnsupportedOperationException("Changing SurfaceTextureListener is not supported");
    }

    public SurfaceTextureListener getSurfaceTextureListener() {
        return null;
    }

    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        throw new UnsupportedOperationException("Changing SurfaceTexture is not supported");
    }

    private static f a(TypedArray typedArray) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(R.styleable.GifTextureView_gifSource, typedValue)) {
            return null;
        }
        if (typedValue.resourceId != 0) {
            String resourceTypeName = typedArray.getResources().getResourceTypeName(typedValue.resourceId);
            if (e.a.contains(resourceTypeName)) {
                return new pl.droidsonroids.gif.f.b(typedArray.getResources(), typedValue.resourceId);
            }
            if (!"string".equals(resourceTypeName)) {
                throw new IllegalArgumentException("Expected string, drawable, mipmap or raw resource type. '" + resourceTypeName + "' is not supported");
            }
        }
        return new pl.droidsonroids.gif.f.a(typedArray.getResources().getAssets(), typedValue.string.toString());
    }

    /* access modifiers changed from: private */
    public void setSuperSurfaceTextureListener(SurfaceTextureListener surfaceTextureListener) {
        super.setSurfaceTextureListener(surfaceTextureListener);
    }

    public void setOpaque(boolean z) {
        if (z != isOpaque()) {
            super.setOpaque(z);
            setInputSource(this.d);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        this.f.a(this, null);
        super.onDetachedFromWindow();
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
    }

    public synchronized void setInputSource(@Nullable f fVar) {
        setInputSource(fVar, null);
    }

    @Beta
    public synchronized void setInputSource(@Nullable f fVar, @Nullable a aVar) {
        this.f.a(this, aVar);
        this.d = fVar;
        this.f = new b(this);
        if (fVar != null) {
            this.f.start();
        }
    }

    public void setSpeed(@FloatRange(from = 0.0d, fromInclusive = false) float f2) {
        this.g = f2;
        this.f.c.a(f2);
    }

    @Nullable
    public IOException getIOException() {
        if (this.f.d != null) {
            return this.f.d;
        }
        return GifIOException.a(this.f.c.f());
    }

    public void setScaleType(@NonNull ScaleType scaleType) {
        this.b = scaleType;
        a(this.f.c);
    }

    public ScaleType getScaleType() {
        return this.b;
    }

    /* access modifiers changed from: private */
    public void a(GifInfoHandle gifInfoHandle) {
        float f2 = 1.0f;
        Matrix matrix = new Matrix();
        float width = (float) getWidth();
        float height = (float) getHeight();
        float n = ((float) gifInfoHandle.n()) / width;
        float o = ((float) gifInfoHandle.o()) / height;
        RectF rectF = new RectF(0.0f, 0.0f, (float) gifInfoHandle.n(), (float) gifInfoHandle.o());
        RectF rectF2 = new RectF(0.0f, 0.0f, width, height);
        switch (AnonymousClass1.a[this.b.ordinal()]) {
            case 1:
                matrix.setScale(n, o, width / 2.0f, height / 2.0f);
                break;
            case 2:
                float min = 1.0f / Math.min(n, o);
                matrix.setScale(n * min, min * o, width / 2.0f, height / 2.0f);
                break;
            case 3:
                if (((float) gifInfoHandle.n()) > width || ((float) gifInfoHandle.o()) > height) {
                    f2 = Math.min(1.0f / n, 1.0f / o);
                }
                matrix.setScale(n * f2, f2 * o, width / 2.0f, height / 2.0f);
                break;
            case 4:
                matrix.setRectToRect(rectF, rectF2, ScaleToFit.CENTER);
                matrix.preScale(n, o);
                break;
            case 5:
                matrix.setRectToRect(rectF, rectF2, ScaleToFit.END);
                matrix.preScale(n, o);
                break;
            case 6:
                matrix.setRectToRect(rectF, rectF2, ScaleToFit.START);
                matrix.preScale(n, o);
                break;
            case 7:
                return;
            case 8:
                matrix.set(this.c);
                matrix.preScale(n, o);
                break;
        }
        super.setTransform(matrix);
    }

    public void setImageMatrix(Matrix matrix) {
        setTransform(matrix);
    }

    public void setTransform(Matrix matrix) {
        this.c.set(matrix);
        a(this.f.c);
    }

    public Matrix getTransform(Matrix matrix) {
        if (matrix == null) {
            matrix = new Matrix();
        }
        matrix.set(this.c);
        return matrix;
    }

    public Parcelable onSaveInstanceState() {
        this.f.b = this.f.c.m();
        return new GifViewSavedState(super.onSaveInstanceState(), this.e ? this.f.b : null);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof GifViewSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        GifViewSavedState gifViewSavedState = (GifViewSavedState) parcelable;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        this.f.b = gifViewSavedState.a[0];
    }

    public void setFreezesAnimation(boolean z) {
        this.e = z;
    }
}
