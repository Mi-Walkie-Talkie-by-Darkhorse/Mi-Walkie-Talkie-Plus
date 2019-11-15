package com.bumptech.glide.load.b;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.a.f;
import com.bumptech.glide.load.a.k;
import com.bumptech.glide.load.e;
import java.io.InputStream;

/* compiled from: AssetUriLoader */
public class a<Data> implements n<Uri, Data> {
    private static final int a = "file:///android_asset/".length();
    private final AssetManager b;
    private final C0012a<Data> c;

    /* renamed from: com.bumptech.glide.load.b.a$a reason: collision with other inner class name */
    /* compiled from: AssetUriLoader */
    public interface C0012a<Data> {
        com.bumptech.glide.load.a.b<Data> a(AssetManager assetManager, String str);
    }

    /* compiled from: AssetUriLoader */
    public static class b implements C0012a<ParcelFileDescriptor>, o<Uri, ParcelFileDescriptor> {
        private final AssetManager a;

        public b(AssetManager assetManager) {
            this.a = assetManager;
        }

        public n<Uri, ParcelFileDescriptor> a(r rVar) {
            return new a(this.a, this);
        }

        public com.bumptech.glide.load.a.b<ParcelFileDescriptor> a(AssetManager assetManager, String str) {
            return new f(assetManager, str);
        }
    }

    /* compiled from: AssetUriLoader */
    public static class c implements C0012a<InputStream>, o<Uri, InputStream> {
        private final AssetManager a;

        public c(AssetManager assetManager) {
            this.a = assetManager;
        }

        public n<Uri, InputStream> a(r rVar) {
            return new a(this.a, this);
        }

        public com.bumptech.glide.load.a.b<InputStream> a(AssetManager assetManager, String str) {
            return new k(assetManager, str);
        }
    }

    public a(AssetManager assetManager, C0012a<Data> aVar) {
        this.b = assetManager;
        this.c = aVar;
    }

    public com.bumptech.glide.load.b.n.a<Data> a(Uri uri, int i, int i2, e eVar) {
        return new com.bumptech.glide.load.b.n.a<>(new com.bumptech.glide.d.b(uri), this.c.a(this.b, uri.toString().substring(a)));
    }

    public boolean a(Uri uri) {
        if (!HttpPostBodyUtil.FILE.equals(uri.getScheme()) || uri.getPathSegments().isEmpty() || !"android_asset".equals(uri.getPathSegments().get(0))) {
            return false;
        }
        return true;
    }
}
