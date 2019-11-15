package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.support.annotation.DrawableRes;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RawRes;
import android.widget.MediaController.MediaPlayerControl;
import java.io.IOException;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import pl.droidsonroids.gif.a.a;

/* compiled from: GifDrawable */
public class c extends Drawable implements Animatable, MediaPlayerControl {
    final ScheduledThreadPoolExecutor a;
    volatile boolean b;
    long c;
    protected final Paint d;
    final Bitmap e;
    final GifInfoHandle f;
    final ConcurrentLinkedQueue<a> g;
    final boolean h;
    final g i;
    ScheduledFuture<?> j;
    private final Rect k;
    private ColorStateList l;
    private PorterDuffColorFilter m;
    private Mode n;
    private final k o;
    private final Rect p;
    private int q;
    private int r;
    private a s;

    public c(@NonNull Resources resources, @RawRes @DrawableRes int i2) throws NotFoundException, IOException {
        this(resources.openRawResourceFd(i2));
        float a2 = e.a(resources, i2);
        this.r = (int) (((float) this.f.o()) * a2);
        this.q = (int) (a2 * ((float) this.f.n()));
    }

    public c(@NonNull String str) throws IOException {
        this(new GifInfoHandle(str), null, null, true);
    }

    public c(@NonNull AssetFileDescriptor assetFileDescriptor) throws IOException {
        this(new GifInfoHandle(assetFileDescriptor), null, null, true);
    }

    public c(@Nullable ContentResolver contentResolver, @NonNull Uri uri) throws IOException {
        this(GifInfoHandle.a(contentResolver, uri), null, null, true);
    }

    c(GifInfoHandle gifInfoHandle, c cVar, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, boolean z) {
        boolean z2 = true;
        this.b = true;
        this.c = Long.MIN_VALUE;
        this.k = new Rect();
        this.d = new Paint(6);
        this.g = new ConcurrentLinkedQueue<>();
        this.o = new k(this);
        this.h = z;
        if (scheduledThreadPoolExecutor == null) {
            scheduledThreadPoolExecutor = d.a();
        }
        this.a = scheduledThreadPoolExecutor;
        this.f = gifInfoHandle;
        Bitmap bitmap = null;
        if (cVar != null) {
            synchronized (cVar.f) {
                if (!cVar.f.k() && cVar.f.o() >= this.f.o() && cVar.f.n() >= this.f.n()) {
                    cVar.f();
                    bitmap = cVar.e;
                    bitmap.eraseColor(0);
                }
            }
        }
        if (bitmap == null) {
            this.e = Bitmap.createBitmap(this.f.n(), this.f.o(), Config.ARGB_8888);
        } else {
            this.e = bitmap;
        }
        if (VERSION.SDK_INT >= 12) {
            Bitmap bitmap2 = this.e;
            if (gifInfoHandle.q()) {
                z2 = false;
            }
            bitmap2.setHasAlpha(z2);
        }
        this.p = new Rect(0, 0, this.f.n(), this.f.o());
        this.i = new g(this);
        this.o.a();
        this.q = this.f.n();
        this.r = this.f.o();
    }

    private void f() {
        this.b = false;
        this.i.removeMessages(-1);
        this.f.a();
    }

    public boolean a() {
        return this.f.k();
    }

    public int getIntrinsicHeight() {
        return this.r;
    }

    public int getIntrinsicWidth() {
        return this.q;
    }

    public void setAlpha(@IntRange(from = 0, to = 255) int i2) {
        this.d.setAlpha(i2);
    }

    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.d.setColorFilter(colorFilter);
    }

    public int getOpacity() {
        if (!this.f.q() || this.d.getAlpha() < 255) {
            return -2;
        }
        return -1;
    }

    public void start() {
        synchronized (this) {
            if (!this.b) {
                this.b = true;
                a(this.f.b());
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(long j2) {
        if (this.h) {
            this.c = 0;
            this.i.sendEmptyMessageAtTime(-1, 0);
            return;
        }
        g();
        this.j = this.a.schedule(this.o, Math.max(j2, 0), TimeUnit.MILLISECONDS);
    }

    public void b() {
        this.a.execute(new l(this) {
            public void a() {
                if (c.this.f.c()) {
                    c.this.start();
                }
            }
        });
    }

    public void stop() {
        synchronized (this) {
            if (this.b) {
                this.b = false;
                g();
                this.f.d();
            }
        }
    }

    private void g() {
        if (this.j != null) {
            this.j.cancel(false);
        }
        this.i.removeMessages(-1);
    }

    public boolean isRunning() {
        return this.b;
    }

    public String toString() {
        return String.format(Locale.ENGLISH, "GIF: size: %dx%d, frames: %d, error: %d", new Object[]{Integer.valueOf(this.f.n()), Integer.valueOf(this.f.o()), Integer.valueOf(this.f.p()), Integer.valueOf(this.f.f())});
    }

    public int c() {
        return this.f.p();
    }

    public void pause() {
        stop();
    }

    public int getDuration() {
        return this.f.g();
    }

    public int getCurrentPosition() {
        return this.f.h();
    }

    public void seekTo(@IntRange(from = 0, to = 2147483647L) final int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Position is not positive");
        }
        this.a.execute(new l(this) {
            public void a() {
                c.this.f.a(i2, c.this.e);
                this.c.i.sendEmptyMessageAtTime(-1, 0);
            }
        });
    }

    public boolean isPlaying() {
        return this.b;
    }

    public int getBufferPercentage() {
        return 100;
    }

    public boolean canPause() {
        return true;
    }

    public boolean canSeekBackward() {
        return c() > 1;
    }

    public boolean canSeekForward() {
        return c() > 1;
    }

    public int getAudioSessionId() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        this.k.set(rect);
        if (this.s != null) {
            this.s.a(rect);
        }
    }

    public void draw(@NonNull Canvas canvas) {
        boolean z;
        if (this.m == null || this.d.getColorFilter() != null) {
            z = false;
        } else {
            this.d.setColorFilter(this.m);
            z = true;
        }
        if (this.s == null) {
            canvas.drawBitmap(this.e, this.p, this.k, this.d);
        } else {
            this.s.a(canvas, this.d, this.e);
        }
        if (z) {
            this.d.setColorFilter(null);
        }
        if (this.h && this.b && this.c != Long.MIN_VALUE) {
            long max = Math.max(0, this.c - SystemClock.uptimeMillis());
            this.c = Long.MIN_VALUE;
            this.a.remove(this.o);
            this.j = this.a.schedule(this.o, max, TimeUnit.MILLISECONDS);
        }
    }

    public int getAlpha() {
        return this.d.getAlpha();
    }

    public void setFilterBitmap(boolean z) {
        this.d.setFilterBitmap(z);
        invalidateSelf();
    }

    @Deprecated
    public void setDither(boolean z) {
        this.d.setDither(z);
        invalidateSelf();
    }

    public ColorFilter getColorFilter() {
        return this.d.getColorFilter();
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public void setTintList(ColorStateList colorStateList) {
        this.l = colorStateList;
        this.m = a(colorStateList, this.n);
        invalidateSelf();
    }

    public void setTintMode(@NonNull Mode mode) {
        this.n = mode;
        this.m = a(this.l, mode);
        invalidateSelf();
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        if (this.l == null || this.n == null) {
            return false;
        }
        this.m = a(this.l, this.n);
        return true;
    }

    public boolean isStateful() {
        return super.isStateful() || (this.l != null && this.l.isStateful());
    }

    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (!this.h) {
            if (z) {
                if (z2) {
                    b();
                }
                if (visible) {
                    start();
                }
            } else if (visible) {
                stop();
            }
        }
        return visible;
    }

    public int d() {
        return this.f.i();
    }

    public int e() {
        int j2 = this.f.j();
        return (j2 == 0 || j2 < this.f.e()) ? j2 : j2 - 1;
    }
}
