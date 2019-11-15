package com.bumptech.glide.load.a.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Images.Thumbnails;
import android.provider.MediaStore.Video;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.e;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ThumbFetcher */
public class c implements com.bumptech.glide.load.a.b<InputStream> {
    private final Uri a;
    private final e b;
    private InputStream c;

    /* compiled from: ThumbFetcher */
    static class a implements d {
        private static final String[] b = {"_data"};
        private final ContentResolver a;

        a(ContentResolver contentResolver) {
            this.a = contentResolver;
        }

        public Cursor a(Uri uri) {
            return this.a.query(Thumbnails.EXTERNAL_CONTENT_URI, b, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* compiled from: ThumbFetcher */
    static class b implements d {
        private static final String[] b = {"_data"};
        private final ContentResolver a;

        b(ContentResolver contentResolver) {
            this.a = contentResolver;
        }

        public Cursor a(Uri uri) {
            return this.a.query(Video.Thumbnails.EXTERNAL_CONTENT_URI, b, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    public static c a(Context context, Uri uri) {
        return a(context, uri, new a(context.getContentResolver()));
    }

    public static c b(Context context, Uri uri) {
        return a(context, uri, new b(context.getContentResolver()));
    }

    private static c a(Context context, Uri uri, d dVar) {
        return new c(uri, new e(com.bumptech.glide.c.a(context).h().a(), dVar, com.bumptech.glide.c.a(context).b(), context.getContentResolver()));
    }

    c(Uri uri, e eVar) {
        this.a = uri;
        this.b = eVar;
    }

    public void a(Priority priority, com.bumptech.glide.load.a.b.a<? super InputStream> aVar) {
        try {
            this.c = e();
            aVar.a(this.c);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e);
            }
            aVar.a((Exception) e);
        }
    }

    private InputStream e() throws FileNotFoundException {
        int i;
        InputStream b2 = this.b.b(this.a);
        if (b2 != null) {
            i = this.b.a(this.a);
        } else {
            i = -1;
        }
        if (i != -1) {
            return new e(b2, i);
        }
        return b2;
    }

    public void a() {
        if (this.c != null) {
            try {
                this.c.close();
            } catch (IOException e) {
            }
        }
    }

    public void b() {
    }

    @NonNull
    public Class<InputStream> d() {
        return InputStream.class;
    }

    @NonNull
    public DataSource c() {
        return DataSource.LOCAL;
    }
}
