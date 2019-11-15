package com.yalantis.ucrop.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.yalantis.ucrop.c.e;
import com.yalantis.ucrop.c.f;
import com.yalantis.ucrop.model.b;
import com.yalantis.ucrop.model.c;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.WeakReference;

/* compiled from: BitmapCropTask */
public class a extends AsyncTask<Void, Void, Throwable> {
    private final WeakReference<Context> a;
    private Bitmap b;
    private final RectF c;
    private final RectF d;
    private float e;
    private float f;
    private final int g;
    private final int h;
    private final CompressFormat i;
    private final int j;
    private final String k;
    private final String l;
    private final b m;
    private final com.yalantis.ucrop.a.a n;
    private int o;
    private int p;
    private int q;
    private int r;

    public a(@NonNull Context context, @Nullable Bitmap bitmap, @NonNull c cVar, @NonNull com.yalantis.ucrop.model.a aVar, @Nullable com.yalantis.ucrop.a.a aVar2) {
        this.a = new WeakReference<>(context);
        this.b = bitmap;
        this.c = cVar.a();
        this.d = cVar.b();
        this.e = cVar.c();
        this.f = cVar.d();
        this.g = aVar.a();
        this.h = aVar.b();
        this.i = aVar.c();
        this.j = aVar.d();
        this.k = aVar.e();
        this.l = aVar.f();
        this.m = aVar.g();
        this.n = aVar2;
    }

    /* access modifiers changed from: protected */
    @Nullable
    /* renamed from: a */
    public Throwable doInBackground(Void... voidArr) {
        if (this.b == null) {
            return new NullPointerException("ViewBitmap is null");
        }
        if (this.b.isRecycled()) {
            return new NullPointerException("ViewBitmap is recycled");
        }
        if (this.d.isEmpty()) {
            return new NullPointerException("CurrentImageRect is empty");
        }
        try {
            a();
            this.b = null;
            return null;
        } catch (Throwable th) {
            return th;
        }
    }

    private boolean a() throws IOException {
        if (this.g > 0 && this.h > 0) {
            float width = this.c.width() / this.e;
            float height = this.c.height() / this.e;
            if (width > ((float) this.g) || height > ((float) this.h)) {
                float min = Math.min(((float) this.g) / width, ((float) this.h) / height);
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(this.b, Math.round(((float) this.b.getWidth()) * min), Math.round(((float) this.b.getHeight()) * min), false);
                if (this.b != createScaledBitmap) {
                    this.b.recycle();
                }
                this.b = createScaledBitmap;
                this.e /= min;
            }
        }
        if (this.f != 0.0f) {
            Matrix matrix = new Matrix();
            matrix.setRotate(this.f, (float) (this.b.getWidth() / 2), (float) (this.b.getHeight() / 2));
            Bitmap createBitmap = Bitmap.createBitmap(this.b, 0, 0, this.b.getWidth(), this.b.getHeight(), matrix, true);
            if (this.b != createBitmap) {
                this.b.recycle();
            }
            this.b = createBitmap;
        }
        this.q = Math.round((this.c.left - this.d.left) / this.e);
        this.r = Math.round((this.c.top - this.d.top) / this.e);
        this.o = Math.round(this.c.width() / this.e);
        this.p = Math.round(this.c.height() / this.e);
        boolean a2 = a(this.o, this.p);
        Log.i("BitmapCropTask", "Should crop: " + a2);
        if (a2) {
            ExifInterface exifInterface = new ExifInterface(this.k);
            a(Bitmap.createBitmap(this.b, this.q, this.r, this.o, this.p));
            if (!this.i.equals(CompressFormat.JPEG)) {
                return true;
            }
            f.a(exifInterface, this.o, this.p, this.l);
            return true;
        }
        e.a(this.k, this.l);
        return false;
    }

    private void a(@NonNull Bitmap bitmap) throws FileNotFoundException {
        Context context = (Context) this.a.get();
        if (context != null) {
            OutputStream outputStream = null;
            try {
                outputStream = context.getContentResolver().openOutputStream(Uri.fromFile(new File(this.l)));
                bitmap.compress(this.i, this.j, outputStream);
                bitmap.recycle();
            } finally {
                com.yalantis.ucrop.c.a.a((Closeable) outputStream);
            }
        }
    }

    private boolean a(int i2, int i3) {
        int round = Math.round(((float) Math.max(i2, i3)) / 1000.0f) + 1;
        if ((this.g <= 0 || this.h <= 0) && Math.abs(this.c.left - this.d.left) <= ((float) round) && Math.abs(this.c.top - this.d.top) <= ((float) round) && Math.abs(this.c.bottom - this.d.bottom) <= ((float) round) && Math.abs(this.c.right - this.d.right) <= ((float) round)) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(@Nullable Throwable th) {
        if (this.n == null) {
            return;
        }
        if (th == null) {
            this.n.a(Uri.fromFile(new File(this.l)), this.q, this.r, this.o, this.p);
            return;
        }
        this.n.a(th);
    }
}
