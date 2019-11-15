package pl.droidsonroids.gif;

import android.graphics.Canvas;
import android.graphics.SurfaceTexture;
import android.support.annotation.RequiresApi;
import android.view.Surface;
import android.view.TextureView.SurfaceTextureListener;
import pl.droidsonroids.gif.GifTextureView.a;

@RequiresApi(14)
/* compiled from: PlaceholderDrawingSurfaceTextureListener */
class i implements SurfaceTextureListener {
    private final a a;

    i(a aVar) {
        this.a = aVar;
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Surface surface = new Surface(surfaceTexture);
        Canvas lockCanvas = surface.lockCanvas(null);
        this.a.a(lockCanvas);
        surface.unlockCanvasAndPost(lockCanvas);
        surface.release();
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
