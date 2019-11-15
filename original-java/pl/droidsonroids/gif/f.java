package pl.droidsonroids.gif;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.RawRes;
import java.io.IOException;

/* compiled from: InputSource */
public abstract class f {

    /* compiled from: InputSource */
    public static final class a extends f {
        private final AssetManager a;
        private final String b;

        public a(@NonNull AssetManager assetManager, @NonNull String str) {
            super();
            this.a = assetManager;
            this.b = str;
        }

        /* access modifiers changed from: 0000 */
        public GifInfoHandle a() throws IOException {
            return new GifInfoHandle(this.a.openFd(this.b));
        }
    }

    /* compiled from: InputSource */
    public static class b extends f {
        private final Resources a;
        private final int b;

        public b(@NonNull Resources resources, @RawRes @DrawableRes int i) {
            super();
            this.a = resources;
            this.b = i;
        }

        /* access modifiers changed from: 0000 */
        public GifInfoHandle a() throws IOException {
            return new GifInfoHandle(this.a.openRawResourceFd(this.b));
        }
    }

    /* access modifiers changed from: 0000 */
    public abstract GifInfoHandle a() throws IOException;

    private f() {
    }
}
