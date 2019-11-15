package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.view.Surface;
import java.io.FileDescriptor;
import java.io.IOException;

final class GifInfoHandle {
    private volatile long a;

    private static native void bindSurface(long j, Surface surface, long[] jArr);

    private static native void free(long j);

    private static native int getCurrentFrameIndex(long j);

    private static native int getCurrentLoop(long j);

    private static native int getCurrentPosition(long j);

    private static native int getDuration(long j);

    private static native int getHeight(long j);

    private static native int getLoopCount(long j);

    private static native int getNativeErrorCode(long j);

    private static native int getNumberOfFrames(long j);

    private static native long[] getSavedState(long j);

    private static native int getWidth(long j);

    private static native boolean isOpaque(long j);

    static native long openFd(FileDescriptor fileDescriptor, long j) throws GifIOException;

    static native long openFile(String str) throws GifIOException;

    private static native void postUnbindSurface(long j);

    private static native long renderFrame(long j, Bitmap bitmap);

    private static native boolean reset(long j);

    private static native long restoreRemainder(long j);

    private static native int restoreSavedState(long j, long[] jArr, Bitmap bitmap);

    private static native void saveRemainder(long j);

    private static native void seekToTime(long j, int i, Bitmap bitmap);

    private static native void setOptions(long j, char c, boolean z);

    private static native void setSpeedFactor(long j, float f);

    static {
        h.a(null);
    }

    GifInfoHandle() {
    }

    GifInfoHandle(String str) throws GifIOException {
        this.a = openFile(str);
    }

    GifInfoHandle(AssetFileDescriptor assetFileDescriptor) throws IOException {
        try {
            this.a = openFd(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset());
        } finally {
            try {
                assetFileDescriptor.close();
            } catch (IOException e) {
            }
        }
    }

    static GifInfoHandle a(ContentResolver contentResolver, Uri uri) throws IOException {
        if (HttpPostBodyUtil.FILE.equals(uri.getScheme())) {
            return new GifInfoHandle(uri.getPath());
        }
        return new GifInfoHandle(contentResolver.openAssetFileDescriptor(uri, "r"));
    }

    /* access modifiers changed from: 0000 */
    public synchronized long a(Bitmap bitmap) {
        return renderFrame(this.a, bitmap);
    }

    /* access modifiers changed from: 0000 */
    public void a(Surface surface, long[] jArr) {
        bindSurface(this.a, surface, jArr);
    }

    /* access modifiers changed from: 0000 */
    public synchronized void a() {
        free(this.a);
        this.a = 0;
    }

    /* access modifiers changed from: 0000 */
    public synchronized long b() {
        return restoreRemainder(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized boolean c() {
        return reset(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized void d() {
        saveRemainder(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized int e() {
        return getLoopCount(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized int f() {
        return getNativeErrorCode(this.a);
    }

    /* access modifiers changed from: 0000 */
    public void a(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f || Float.isNaN(f)) {
            throw new IllegalArgumentException("Speed factor is not positive");
        }
        if (f < 4.656613E-10f) {
            f = 4.656613E-10f;
        }
        synchronized (this) {
            setSpeedFactor(this.a, f);
        }
    }

    /* access modifiers changed from: 0000 */
    public synchronized int g() {
        return getDuration(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized int h() {
        return getCurrentPosition(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized int i() {
        return getCurrentFrameIndex(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized int j() {
        return getCurrentLoop(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized void a(@IntRange(from = 0, to = 2147483647L) int i, Bitmap bitmap) {
        seekToTime(this.a, i, bitmap);
    }

    /* access modifiers changed from: 0000 */
    public synchronized boolean k() {
        return this.a == 0;
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        try {
            a();
        } finally {
            super.finalize();
        }
    }

    /* access modifiers changed from: 0000 */
    public synchronized void l() {
        postUnbindSurface(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized long[] m() {
        return getSavedState(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized int a(long[] jArr, Bitmap bitmap) {
        return restoreSavedState(this.a, jArr, bitmap);
    }

    /* access modifiers changed from: 0000 */
    public void a(char c, boolean z) {
        setOptions(this.a, c, z);
    }

    /* access modifiers changed from: 0000 */
    public synchronized int n() {
        return getWidth(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized int o() {
        return getHeight(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized int p() {
        return getNumberOfFrames(this.a);
    }

    /* access modifiers changed from: 0000 */
    public synchronized boolean q() {
        return isOpaque(this.a);
    }
}
