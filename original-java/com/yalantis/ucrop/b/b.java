package com.yalantis.ucrop.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.yalantis.ucrop.c.e;
import java.io.Closeable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.OkHttpClient;
import okhttp3.Request.Builder;
import okhttp3.Response;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import org.apache.http.HttpHost;

/* compiled from: BitmapLoadTask */
public class b extends AsyncTask<Void, Void, a> {
    private final Context a;
    private Uri b;
    private Uri c;
    private final int d;
    private final int e;
    private final com.yalantis.ucrop.a.b f;

    /* compiled from: BitmapLoadTask */
    public static class a {
        Bitmap a;
        com.yalantis.ucrop.model.b b;
        Exception c;

        public a(@NonNull Bitmap bitmap, @NonNull com.yalantis.ucrop.model.b bVar) {
            this.a = bitmap;
            this.b = bVar;
        }

        public a(@NonNull Exception exc) {
            this.c = exc;
        }
    }

    public b(@NonNull Context context, @NonNull Uri uri, @Nullable Uri uri2, int i, int i2, com.yalantis.ucrop.a.b bVar) {
        this.a = context;
        this.b = uri;
        this.c = uri2;
        this.d = i;
        this.e = i2;
        this.f = bVar;
    }

    /* access modifiers changed from: protected */
    @NonNull
    /* renamed from: a */
    public a doInBackground(Void... voidArr) {
        boolean z = false;
        Bitmap bitmap = null;
        if (this.b == null) {
            return new a(new NullPointerException("Input Uri cannot be null"));
        }
        try {
            a();
            try {
                ParcelFileDescriptor openFileDescriptor = this.a.getContentResolver().openFileDescriptor(this.b, "r");
                if (openFileDescriptor == null) {
                    return new a(new NullPointerException("ParcelFileDescriptor was null for given Uri: [" + this.b + "]"));
                }
                FileDescriptor fileDescriptor = openFileDescriptor.getFileDescriptor();
                Options options = new Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                if (options.outWidth == -1 || options.outHeight == -1) {
                    return new a(new IllegalArgumentException("Bounds for bitmap could not be retrieved from the Uri: [" + this.b + "]"));
                }
                options.inSampleSize = com.yalantis.ucrop.c.a.a(options, this.d, this.e);
                options.inJustDecodeBounds = false;
                while (!z) {
                    try {
                        bitmap = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                        z = true;
                    } catch (OutOfMemoryError e2) {
                        Log.e("BitmapWorkerTask", "doInBackground: BitmapFactory.decodeFileDescriptor: ", e2);
                        options.inSampleSize *= 2;
                    }
                }
                if (bitmap == null) {
                    return new a(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + this.b + "]"));
                }
                if (VERSION.SDK_INT >= 16) {
                    com.yalantis.ucrop.c.a.a((Closeable) openFileDescriptor);
                }
                int a2 = com.yalantis.ucrop.c.a.a(this.a, this.b);
                int a3 = com.yalantis.ucrop.c.a.a(a2);
                int b2 = com.yalantis.ucrop.c.a.b(a2);
                com.yalantis.ucrop.model.b bVar = new com.yalantis.ucrop.model.b(a2, a3, b2);
                Matrix matrix = new Matrix();
                if (a3 != 0) {
                    matrix.preRotate((float) a3);
                }
                if (b2 != 1) {
                    matrix.postScale((float) b2, 1.0f);
                }
                if (!matrix.isIdentity()) {
                    return new a(com.yalantis.ucrop.c.a.a(bitmap, matrix), bVar);
                }
                return new a(bitmap, bVar);
            } catch (FileNotFoundException e3) {
                return new a(e3);
            }
        } catch (IOException | NullPointerException e4) {
            return new a(e4);
        }
    }

    private void a() throws NullPointerException, IOException {
        String scheme = this.b.getScheme();
        Log.d("BitmapWorkerTask", "Uri scheme: " + scheme);
        if (HttpHost.DEFAULT_SCHEME_NAME.equals(scheme) || "https".equals(scheme)) {
            try {
                b(this.b, this.c);
            } catch (IOException | NullPointerException e2) {
                Log.e("BitmapWorkerTask", "Downloading failed", e2);
                throw e2;
            }
        } else if ("content".equals(scheme)) {
            String a2 = e.a(this.a, this.b);
            if (TextUtils.isEmpty(a2) || !new File(a2).exists()) {
                try {
                    a(this.b, this.c);
                } catch (IOException | NullPointerException e3) {
                    Log.e("BitmapWorkerTask", "Copying failed", e3);
                    throw e3;
                }
            } else {
                this.b = Uri.fromFile(new File(a2));
            }
        } else if (!HttpPostBodyUtil.FILE.equals(scheme)) {
            Log.e("BitmapWorkerTask", "Invalid Uri scheme " + scheme);
            throw new IllegalArgumentException("Invalid Uri scheme" + scheme);
        }
    }

    private void a(@NonNull Uri uri, @Nullable Uri uri2) throws NullPointerException, IOException {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        Log.d("BitmapWorkerTask", "copyFile");
        if (uri2 == null) {
            throw new NullPointerException("Output Uri is null - cannot copy image");
        }
        try {
            InputStream openInputStream = this.a.getContentResolver().openInputStream(uri);
            try {
                fileOutputStream = new FileOutputStream(new File(uri2.getPath()));
                if (openInputStream == null) {
                    try {
                        throw new NullPointerException("InputStream for given input Uri is null");
                    } catch (Throwable th) {
                        th = th;
                        inputStream = openInputStream;
                        com.yalantis.ucrop.c.a.a((Closeable) fileOutputStream);
                        com.yalantis.ucrop.c.a.a((Closeable) inputStream);
                        this.b = this.c;
                        throw th;
                    }
                } else {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = openInputStream.read(bArr);
                        if (read > 0) {
                            fileOutputStream.write(bArr, 0, read);
                        } else {
                            com.yalantis.ucrop.c.a.a((Closeable) fileOutputStream);
                            com.yalantis.ucrop.c.a.a((Closeable) openInputStream);
                            this.b = this.c;
                            return;
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
                inputStream = openInputStream;
                com.yalantis.ucrop.c.a.a((Closeable) fileOutputStream);
                com.yalantis.ucrop.c.a.a((Closeable) inputStream);
                this.b = this.c;
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    private void b(@NonNull Uri uri, @Nullable Uri uri2) throws NullPointerException, IOException {
        Response response;
        BufferedSource bufferedSource;
        Log.d("BitmapWorkerTask", "downloadFile");
        if (uri2 == null) {
            throw new NullPointerException("Output Uri is null - cannot download image");
        }
        OkHttpClient okHttpClient = new OkHttpClient();
        try {
            response = okHttpClient.newCall(new Builder().url(uri.toString()).build()).execute();
            try {
                bufferedSource = response.body().source();
                try {
                    OutputStream openOutputStream = this.a.getContentResolver().openOutputStream(uri2);
                    if (openOutputStream != null) {
                        Sink sink = Okio.sink(openOutputStream);
                        bufferedSource.readAll(sink);
                        com.yalantis.ucrop.c.a.a((Closeable) bufferedSource);
                        com.yalantis.ucrop.c.a.a((Closeable) sink);
                        if (response != null) {
                            com.yalantis.ucrop.c.a.a((Closeable) response.body());
                        }
                        okHttpClient.dispatcher().cancelAll();
                        this.b = this.c;
                        return;
                    }
                    throw new NullPointerException("OutputStream for given output Uri is null");
                } catch (Throwable th) {
                    th = th;
                    com.yalantis.ucrop.c.a.a((Closeable) bufferedSource);
                    com.yalantis.ucrop.c.a.a((Closeable) null);
                    if (response != null) {
                        com.yalantis.ucrop.c.a.a((Closeable) response.body());
                    }
                    okHttpClient.dispatcher().cancelAll();
                    this.b = this.c;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedSource = null;
            }
        } catch (Throwable th3) {
            th = th3;
            response = null;
            bufferedSource = null;
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(@NonNull a aVar) {
        if (aVar.c == null) {
            this.f.a(aVar.a, aVar.b, this.b.getPath(), this.c == null ? null : this.c.getPath());
        } else {
            this.f.a(aVar.c);
        }
    }
}
