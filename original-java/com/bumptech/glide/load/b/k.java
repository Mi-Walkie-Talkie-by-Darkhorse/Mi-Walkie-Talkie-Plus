package com.bumptech.glide.load.b;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.e;
import java.io.File;
import java.io.FileNotFoundException;

/* compiled from: MediaStoreFileLoader */
public final class k implements n<Uri, File> {
    private final Context a;

    /* compiled from: MediaStoreFileLoader */
    public static final class a implements o<Uri, File> {
        private final Context a;

        public a(Context context) {
            this.a = context;
        }

        public n<Uri, File> a(r rVar) {
            return new k(this.a);
        }
    }

    /* compiled from: MediaStoreFileLoader */
    private static class b implements com.bumptech.glide.load.a.b<File> {
        private static final String[] a = {"_data"};
        private final Context b;
        private final Uri c;

        b(Context context, Uri uri) {
            this.b = context;
            this.c = uri;
        }

        public void a(Priority priority, com.bumptech.glide.load.a.b.a<? super File> aVar) {
            String str = null;
            Cursor query = this.b.getContentResolver().query(this.c, a, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(query.getColumnIndexOrThrow("_data"));
                    }
                } finally {
                    query.close();
                }
            }
            if (TextUtils.isEmpty(str)) {
                aVar.a((Exception) new FileNotFoundException("Failed to find file path for: " + this.c));
            } else {
                aVar.a(new File(str));
            }
        }

        public void a() {
        }

        public void b() {
        }

        @NonNull
        public Class<File> d() {
            return File.class;
        }

        @NonNull
        public DataSource c() {
            return DataSource.LOCAL;
        }
    }

    k(Context context) {
        this.a = context;
    }

    public com.bumptech.glide.load.b.n.a<File> a(Uri uri, int i, int i2, e eVar) {
        return new com.bumptech.glide.load.b.n.a<>(new com.bumptech.glide.d.b(uri), new b(this.a, uri));
    }

    public boolean a(Uri uri) {
        return com.bumptech.glide.load.a.a.b.a(uri);
    }
}
