package android.support.v4.print;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.CancellationSignal.OnCancelListener;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintAttributes.Builder;
import android.print.PrintAttributes.Margins;
import android.print.PrintAttributes.MediaSize;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentAdapter.LayoutResultCallback;
import android.print.PrintDocumentAdapter.WriteResultCallback;
import android.print.PrintDocumentInfo;
import android.print.PrintManager;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

@TargetApi(19)
@RequiresApi(19)
class PrintHelperKitkat {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    private static final String LOG_TAG = "PrintHelperKitkat";
    private static final int MAX_PRINT_SIZE = 3500;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    int mColorMode = 2;
    final Context mContext;
    Options mDecodeOptions = null;
    protected boolean mIsMinMarginsHandlingCorrect = true;
    /* access modifiers changed from: private */
    public final Object mLock = new Object();
    int mOrientation;
    protected boolean mPrintActivityRespectsOrientation = true;
    int mScaleMode = 2;

    public interface OnPrintFinishCallback {
        void onFinish();
    }

    PrintHelperKitkat(Context context) {
        this.mContext = context;
    }

    public void setScaleMode(int i) {
        this.mScaleMode = i;
    }

    public int getScaleMode() {
        return this.mScaleMode;
    }

    public void setColorMode(int i) {
        this.mColorMode = i;
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
    }

    public int getOrientation() {
        if (this.mOrientation == 0) {
            return 1;
        }
        return this.mOrientation;
    }

    public int getColorMode() {
        return this.mColorMode;
    }

    /* access modifiers changed from: private */
    public static boolean isPortrait(Bitmap bitmap) {
        if (bitmap.getWidth() <= bitmap.getHeight()) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public Builder copyAttributes(PrintAttributes printAttributes) {
        Builder minMargins = new Builder().setMediaSize(printAttributes.getMediaSize()).setResolution(printAttributes.getResolution()).setMinMargins(printAttributes.getMinMargins());
        if (printAttributes.getColorMode() != 0) {
            minMargins.setColorMode(printAttributes.getColorMode());
        }
        return minMargins;
    }

    public void printBitmap(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
        MediaSize mediaSize;
        if (bitmap != null) {
            final int i = this.mScaleMode;
            PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
            if (isPortrait(bitmap)) {
                mediaSize = MediaSize.UNKNOWN_PORTRAIT;
            } else {
                mediaSize = MediaSize.UNKNOWN_LANDSCAPE;
            }
            final String str2 = str;
            final Bitmap bitmap2 = bitmap;
            final OnPrintFinishCallback onPrintFinishCallback2 = onPrintFinishCallback;
            printManager.print(str, new PrintDocumentAdapter() {
                private PrintAttributes mAttributes;

                public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, LayoutResultCallback layoutResultCallback, Bundle bundle) {
                    boolean z = true;
                    this.mAttributes = printAttributes2;
                    PrintDocumentInfo build = new PrintDocumentInfo.Builder(str2).setContentType(1).setPageCount(1).build();
                    if (printAttributes2.equals(printAttributes)) {
                        z = false;
                    }
                    layoutResultCallback.onLayoutFinished(build, z);
                }

                public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
                    PrintHelperKitkat.this.writeBitmap(this.mAttributes, i, bitmap2, parcelFileDescriptor, cancellationSignal, writeResultCallback);
                }

                public void onFinish() {
                    if (onPrintFinishCallback2 != null) {
                        onPrintFinishCallback2.onFinish();
                    }
                }
            }, new Builder().setMediaSize(mediaSize).setColorMode(this.mColorMode).build());
        }
    }

    /* access modifiers changed from: private */
    public Matrix getMatrix(int i, int i2, RectF rectF, int i3) {
        float min;
        Matrix matrix = new Matrix();
        float width = rectF.width() / ((float) i);
        if (i3 == 2) {
            min = Math.max(width, rectF.height() / ((float) i2));
        } else {
            min = Math.min(width, rectF.height() / ((float) i2));
        }
        matrix.postScale(min, min);
        matrix.postTranslate((rectF.width() - (((float) i) * min)) / 2.0f, (rectF.height() - (min * ((float) i2))) / 2.0f);
        return matrix;
    }

    /* access modifiers changed from: private */
    public void writeBitmap(PrintAttributes printAttributes, int i, Bitmap bitmap, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
        final PrintAttributes build;
        if (this.mIsMinMarginsHandlingCorrect) {
            build = printAttributes;
        } else {
            build = copyAttributes(printAttributes).setMinMargins(new Margins(0, 0, 0, 0)).build();
        }
        final CancellationSignal cancellationSignal2 = cancellationSignal;
        final Bitmap bitmap2 = bitmap;
        final PrintAttributes printAttributes2 = printAttributes;
        final int i2 = i;
        final ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptor;
        final WriteResultCallback writeResultCallback2 = writeResultCallback;
        new AsyncTask<Void, Void, Throwable>() {
            /* access modifiers changed from: protected */
            /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
            /* JADX WARNING: Unknown top exception splitter block from list: {B:33:0x00b3=Splitter:B:33:0x00b3, B:46:0x00e4=Splitter:B:46:0x00e4, B:20:0x0078=Splitter:B:20:0x0078} */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public java.lang.Throwable doInBackground(java.lang.Void... r10) {
                /*
                    r9 = this;
                    r0 = 0
                    android.os.CancellationSignal r1 = r2     // Catch:{ Throwable -> 0x0080 }
                    boolean r1 = r1.isCanceled()     // Catch:{ Throwable -> 0x0080 }
                    if (r1 == 0) goto L_0x000a
                L_0x0009:
                    return r0
                L_0x000a:
                    android.print.pdf.PrintedPdfDocument r2 = new android.print.pdf.PrintedPdfDocument     // Catch:{ Throwable -> 0x0080 }
                    android.support.v4.print.PrintHelperKitkat r1 = android.support.v4.print.PrintHelperKitkat.this     // Catch:{ Throwable -> 0x0080 }
                    android.content.Context r1 = r1.mContext     // Catch:{ Throwable -> 0x0080 }
                    android.print.PrintAttributes r3 = r3     // Catch:{ Throwable -> 0x0080 }
                    r2.<init>(r1, r3)     // Catch:{ Throwable -> 0x0080 }
                    android.support.v4.print.PrintHelperKitkat r1 = android.support.v4.print.PrintHelperKitkat.this     // Catch:{ Throwable -> 0x0080 }
                    android.graphics.Bitmap r3 = r4     // Catch:{ Throwable -> 0x0080 }
                    android.print.PrintAttributes r4 = r3     // Catch:{ Throwable -> 0x0080 }
                    int r4 = r4.getColorMode()     // Catch:{ Throwable -> 0x0080 }
                    android.graphics.Bitmap r3 = r1.convertBitmapForColorMode(r3, r4)     // Catch:{ Throwable -> 0x0080 }
                    android.os.CancellationSignal r1 = r2     // Catch:{ Throwable -> 0x0080 }
                    boolean r1 = r1.isCanceled()     // Catch:{ Throwable -> 0x0080 }
                    if (r1 != 0) goto L_0x0009
                    r1 = 1
                    android.graphics.pdf.PdfDocument$Page r4 = r2.startPage(r1)     // Catch:{ all -> 0x00a6 }
                    android.support.v4.print.PrintHelperKitkat r1 = android.support.v4.print.PrintHelperKitkat.this     // Catch:{ all -> 0x00a6 }
                    boolean r1 = r1.mIsMinMarginsHandlingCorrect     // Catch:{ all -> 0x00a6 }
                    if (r1 == 0) goto L_0x0082
                    android.graphics.RectF r1 = new android.graphics.RectF     // Catch:{ all -> 0x00a6 }
                    android.graphics.pdf.PdfDocument$PageInfo r5 = r4.getInfo()     // Catch:{ all -> 0x00a6 }
                    android.graphics.Rect r5 = r5.getContentRect()     // Catch:{ all -> 0x00a6 }
                    r1.<init>(r5)     // Catch:{ all -> 0x00a6 }
                L_0x0043:
                    android.support.v4.print.PrintHelperKitkat r5 = android.support.v4.print.PrintHelperKitkat.this     // Catch:{ all -> 0x00a6 }
                    int r6 = r3.getWidth()     // Catch:{ all -> 0x00a6 }
                    int r7 = r3.getHeight()     // Catch:{ all -> 0x00a6 }
                    int r8 = r6     // Catch:{ all -> 0x00a6 }
                    android.graphics.Matrix r5 = r5.getMatrix(r6, r7, r1, r8)     // Catch:{ all -> 0x00a6 }
                    android.support.v4.print.PrintHelperKitkat r6 = android.support.v4.print.PrintHelperKitkat.this     // Catch:{ all -> 0x00a6 }
                    boolean r6 = r6.mIsMinMarginsHandlingCorrect     // Catch:{ all -> 0x00a6 }
                    if (r6 == 0) goto L_0x00bb
                L_0x0059:
                    android.graphics.Canvas r1 = r4.getCanvas()     // Catch:{ all -> 0x00a6 }
                    r6 = 0
                    r1.drawBitmap(r3, r5, r6)     // Catch:{ all -> 0x00a6 }
                    r2.finishPage(r4)     // Catch:{ all -> 0x00a6 }
                    android.os.CancellationSignal r1 = r2     // Catch:{ all -> 0x00a6 }
                    boolean r1 = r1.isCanceled()     // Catch:{ all -> 0x00a6 }
                    if (r1 == 0) goto L_0x00ca
                    r2.close()     // Catch:{ Throwable -> 0x0080 }
                    android.os.ParcelFileDescriptor r1 = r7     // Catch:{ Throwable -> 0x0080 }
                    if (r1 == 0) goto L_0x0078
                    android.os.ParcelFileDescriptor r1 = r7     // Catch:{ IOException -> 0x00f1 }
                    r1.close()     // Catch:{ IOException -> 0x00f1 }
                L_0x0078:
                    android.graphics.Bitmap r1 = r4     // Catch:{ Throwable -> 0x0080 }
                    if (r3 == r1) goto L_0x0009
                    r3.recycle()     // Catch:{ Throwable -> 0x0080 }
                    goto L_0x0009
                L_0x0080:
                    r0 = move-exception
                    goto L_0x0009
                L_0x0082:
                    android.print.pdf.PrintedPdfDocument r5 = new android.print.pdf.PrintedPdfDocument     // Catch:{ all -> 0x00a6 }
                    android.support.v4.print.PrintHelperKitkat r1 = android.support.v4.print.PrintHelperKitkat.this     // Catch:{ all -> 0x00a6 }
                    android.content.Context r1 = r1.mContext     // Catch:{ all -> 0x00a6 }
                    android.print.PrintAttributes r6 = r5     // Catch:{ all -> 0x00a6 }
                    r5.<init>(r1, r6)     // Catch:{ all -> 0x00a6 }
                    r1 = 1
                    android.graphics.pdf.PdfDocument$Page r6 = r5.startPage(r1)     // Catch:{ all -> 0x00a6 }
                    android.graphics.RectF r1 = new android.graphics.RectF     // Catch:{ all -> 0x00a6 }
                    android.graphics.pdf.PdfDocument$PageInfo r7 = r6.getInfo()     // Catch:{ all -> 0x00a6 }
                    android.graphics.Rect r7 = r7.getContentRect()     // Catch:{ all -> 0x00a6 }
                    r1.<init>(r7)     // Catch:{ all -> 0x00a6 }
                    r5.finishPage(r6)     // Catch:{ all -> 0x00a6 }
                    r5.close()     // Catch:{ all -> 0x00a6 }
                    goto L_0x0043
                L_0x00a6:
                    r0 = move-exception
                    r2.close()     // Catch:{ Throwable -> 0x0080 }
                    android.os.ParcelFileDescriptor r1 = r7     // Catch:{ Throwable -> 0x0080 }
                    if (r1 == 0) goto L_0x00b3
                    android.os.ParcelFileDescriptor r1 = r7     // Catch:{ IOException -> 0x00ed }
                    r1.close()     // Catch:{ IOException -> 0x00ed }
                L_0x00b3:
                    android.graphics.Bitmap r1 = r4     // Catch:{ Throwable -> 0x0080 }
                    if (r3 == r1) goto L_0x00ba
                    r3.recycle()     // Catch:{ Throwable -> 0x0080 }
                L_0x00ba:
                    throw r0     // Catch:{ Throwable -> 0x0080 }
                L_0x00bb:
                    float r6 = r1.left     // Catch:{ all -> 0x00a6 }
                    float r7 = r1.top     // Catch:{ all -> 0x00a6 }
                    r5.postTranslate(r6, r7)     // Catch:{ all -> 0x00a6 }
                    android.graphics.Canvas r6 = r4.getCanvas()     // Catch:{ all -> 0x00a6 }
                    r6.clipRect(r1)     // Catch:{ all -> 0x00a6 }
                    goto L_0x0059
                L_0x00ca:
                    java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ all -> 0x00a6 }
                    android.os.ParcelFileDescriptor r4 = r7     // Catch:{ all -> 0x00a6 }
                    java.io.FileDescriptor r4 = r4.getFileDescriptor()     // Catch:{ all -> 0x00a6 }
                    r1.<init>(r4)     // Catch:{ all -> 0x00a6 }
                    r2.writeTo(r1)     // Catch:{ all -> 0x00a6 }
                    r2.close()     // Catch:{ Throwable -> 0x0080 }
                    android.os.ParcelFileDescriptor r1 = r7     // Catch:{ Throwable -> 0x0080 }
                    if (r1 == 0) goto L_0x00e4
                    android.os.ParcelFileDescriptor r1 = r7     // Catch:{ IOException -> 0x00ef }
                    r1.close()     // Catch:{ IOException -> 0x00ef }
                L_0x00e4:
                    android.graphics.Bitmap r1 = r4     // Catch:{ Throwable -> 0x0080 }
                    if (r3 == r1) goto L_0x0009
                    r3.recycle()     // Catch:{ Throwable -> 0x0080 }
                    goto L_0x0009
                L_0x00ed:
                    r1 = move-exception
                    goto L_0x00b3
                L_0x00ef:
                    r1 = move-exception
                    goto L_0x00e4
                L_0x00f1:
                    r1 = move-exception
                    goto L_0x0078
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.v4.print.PrintHelperKitkat.AnonymousClass2.doInBackground(java.lang.Void[]):java.lang.Throwable");
            }

            /* access modifiers changed from: protected */
            public void onPostExecute(Throwable th) {
                if (cancellationSignal2.isCanceled()) {
                    writeResultCallback2.onWriteCancelled();
                } else if (th == null) {
                    writeResultCallback2.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                } else {
                    Log.e(PrintHelperKitkat.LOG_TAG, "Error writing printed content", th);
                    writeResultCallback2.onWriteFailed(null);
                }
            }
        }.execute(new Void[0]);
    }

    public void printBitmap(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) throws FileNotFoundException {
        final int i = this.mScaleMode;
        final String str2 = str;
        final Uri uri2 = uri;
        final OnPrintFinishCallback onPrintFinishCallback2 = onPrintFinishCallback;
        AnonymousClass3 r0 = new PrintDocumentAdapter() {
            /* access modifiers changed from: private */
            public PrintAttributes mAttributes;
            Bitmap mBitmap = null;
            AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;

            public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, LayoutResultCallback layoutResultCallback, Bundle bundle) {
                boolean z = true;
                synchronized (this) {
                    this.mAttributes = printAttributes2;
                }
                if (cancellationSignal.isCanceled()) {
                    layoutResultCallback.onLayoutCancelled();
                } else if (this.mBitmap != null) {
                    PrintDocumentInfo build = new PrintDocumentInfo.Builder(str2).setContentType(1).setPageCount(1).build();
                    if (printAttributes2.equals(printAttributes)) {
                        z = false;
                    }
                    layoutResultCallback.onLayoutFinished(build, z);
                } else {
                    final CancellationSignal cancellationSignal2 = cancellationSignal;
                    final PrintAttributes printAttributes3 = printAttributes2;
                    final PrintAttributes printAttributes4 = printAttributes;
                    final LayoutResultCallback layoutResultCallback2 = layoutResultCallback;
                    this.mLoadBitmap = new AsyncTask<Uri, Boolean, Bitmap>() {
                        /* access modifiers changed from: protected */
                        public void onPreExecute() {
                            cancellationSignal2.setOnCancelListener(new OnCancelListener() {
                                public void onCancel() {
                                    AnonymousClass3.this.cancelLoad();
                                    AnonymousClass1.this.cancel(false);
                                }
                            });
                        }

                        /* access modifiers changed from: protected */
                        public Bitmap doInBackground(Uri... uriArr) {
                            try {
                                return PrintHelperKitkat.this.loadConstrainedBitmap(uri2, PrintHelperKitkat.MAX_PRINT_SIZE);
                            } catch (FileNotFoundException e) {
                                return null;
                            }
                        }

                        /* access modifiers changed from: protected */
                        public void onPostExecute(Bitmap bitmap) {
                            MediaSize mediaSize;
                            boolean z = true;
                            super.onPostExecute(bitmap);
                            if (bitmap != null && (!PrintHelperKitkat.this.mPrintActivityRespectsOrientation || PrintHelperKitkat.this.mOrientation == 0)) {
                                synchronized (this) {
                                    mediaSize = AnonymousClass3.this.mAttributes.getMediaSize();
                                }
                                if (!(mediaSize == null || mediaSize.isPortrait() == PrintHelperKitkat.isPortrait(bitmap))) {
                                    Matrix matrix = new Matrix();
                                    matrix.postRotate(90.0f);
                                    bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                                }
                            }
                            AnonymousClass3.this.mBitmap = bitmap;
                            if (bitmap != null) {
                                PrintDocumentInfo build = new PrintDocumentInfo.Builder(str2).setContentType(1).setPageCount(1).build();
                                if (printAttributes3.equals(printAttributes4)) {
                                    z = false;
                                }
                                layoutResultCallback2.onLayoutFinished(build, z);
                            } else {
                                layoutResultCallback2.onLayoutFailed(null);
                            }
                            AnonymousClass3.this.mLoadBitmap = null;
                        }

                        /* access modifiers changed from: protected */
                        public void onCancelled(Bitmap bitmap) {
                            layoutResultCallback2.onLayoutCancelled();
                            AnonymousClass3.this.mLoadBitmap = null;
                        }
                    }.execute(new Uri[0]);
                }
            }

            /* access modifiers changed from: private */
            public void cancelLoad() {
                synchronized (PrintHelperKitkat.this.mLock) {
                    if (PrintHelperKitkat.this.mDecodeOptions != null) {
                        PrintHelperKitkat.this.mDecodeOptions.requestCancelDecode();
                        PrintHelperKitkat.this.mDecodeOptions = null;
                    }
                }
            }

            public void onFinish() {
                super.onFinish();
                cancelLoad();
                if (this.mLoadBitmap != null) {
                    this.mLoadBitmap.cancel(true);
                }
                if (onPrintFinishCallback2 != null) {
                    onPrintFinishCallback2.onFinish();
                }
                if (this.mBitmap != null) {
                    this.mBitmap.recycle();
                    this.mBitmap = null;
                }
            }

            public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
                PrintHelperKitkat.this.writeBitmap(this.mAttributes, i, this.mBitmap, parcelFileDescriptor, cancellationSignal, writeResultCallback);
            }
        };
        PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
        Builder builder = new Builder();
        builder.setColorMode(this.mColorMode);
        if (this.mOrientation == 1 || this.mOrientation == 0) {
            builder.setMediaSize(MediaSize.UNKNOWN_LANDSCAPE);
        } else if (this.mOrientation == 2) {
            builder.setMediaSize(MediaSize.UNKNOWN_PORTRAIT);
        }
        printManager.print(str, r0, builder.build());
    }

    /* access modifiers changed from: private */
    public Bitmap loadConstrainedBitmap(Uri uri, int i) throws FileNotFoundException {
        Options options;
        int i2 = 1;
        Bitmap bitmap = null;
        if (i <= 0 || uri == null || this.mContext == null) {
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }
        Options options2 = new Options();
        options2.inJustDecodeBounds = true;
        loadBitmap(uri, options2);
        int i3 = options2.outWidth;
        int i4 = options2.outHeight;
        if (i3 > 0 && i4 > 0) {
            int max = Math.max(i3, i4);
            while (max > i) {
                max >>>= 1;
                i2 <<= 1;
            }
            if (i2 > 0 && Math.min(i3, i4) / i2 > 0) {
                synchronized (this.mLock) {
                    this.mDecodeOptions = new Options();
                    this.mDecodeOptions.inMutable = true;
                    this.mDecodeOptions.inSampleSize = i2;
                    options = this.mDecodeOptions;
                }
                try {
                    bitmap = loadBitmap(uri, options);
                    synchronized (this.mLock) {
                        this.mDecodeOptions = null;
                    }
                } catch (Throwable th) {
                    synchronized (this.mLock) {
                        this.mDecodeOptions = null;
                        throw th;
                    }
                }
            }
        }
        return bitmap;
    }

    private Bitmap loadBitmap(Uri uri, Options options) throws FileNotFoundException {
        InputStream inputStream = null;
        if (uri == null || this.mContext == null) {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
        try {
            inputStream = this.mContext.getContentResolver().openInputStream(uri);
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    Log.w(LOG_TAG, "close fail ", e);
                }
            }
            return decodeStream;
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    Log.w(LOG_TAG, "close fail ", e2);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public Bitmap convertBitmapForColorMode(Bitmap bitmap, int i) {
        if (i != 1) {
            return bitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }
}
