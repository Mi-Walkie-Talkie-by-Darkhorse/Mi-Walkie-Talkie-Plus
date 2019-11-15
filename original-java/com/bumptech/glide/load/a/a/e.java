package com.bumptech.glide.load.a.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.a.b;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* compiled from: ThumbnailStreamOpener */
class e {
    private static final a a = new a();
    private final a b;
    private final d c;
    private final b d;
    private final ContentResolver e;
    private final List<ImageHeaderParser> f;

    public e(List<ImageHeaderParser> list, d dVar, b bVar, ContentResolver contentResolver) {
        this(list, a, dVar, bVar, contentResolver);
    }

    public e(List<ImageHeaderParser> list, a aVar, d dVar, b bVar, ContentResolver contentResolver) {
        this.b = aVar;
        this.c = dVar;
        this.d = bVar;
        this.e = contentResolver;
        this.f = list;
    }

    public int a(Uri uri) {
        boolean z = null;
        try {
            z = this.e.openInputStream(uri);
            int b2 = com.bumptech.glide.load.b.b(this.f, z, this.d);
            if (z == null) {
                return b2;
            }
            try {
                z.close();
                return b2;
            } catch (IOException e2) {
                return b2;
            }
        } catch (IOException | NullPointerException e3) {
            z = Log.isLoggable("ThumbStreamOpener", 3);
            if (z) {
                Log.d("ThumbStreamOpener", "Failed to open uri: " + uri, e3);
            }
            if (z != null) {
                try {
                    z.close();
                } catch (IOException e4) {
                }
            }
            return -1;
        } finally {
            if (z != null) {
                try {
                    z.close();
                } catch (IOException e5) {
                }
            }
        }
    }

    /* JADX INFO: finally extract failed */
    public InputStream b(Uri uri) throws FileNotFoundException {
        Uri uri2;
        Cursor a2 = this.c.a(uri);
        if (a2 != null) {
            try {
                if (a2.moveToFirst()) {
                    String string = a2.getString(0);
                    if (!TextUtils.isEmpty(string)) {
                        File a3 = this.b.a(string);
                        if (!this.b.a(a3) || this.b.b(a3) <= 0) {
                            uri2 = null;
                        } else {
                            uri2 = Uri.fromFile(a3);
                        }
                        if (a2 != null) {
                            a2.close();
                        }
                        if (uri2 == null) {
                            return null;
                        }
                        try {
                            return this.e.openInputStream(uri2);
                        } catch (NullPointerException e2) {
                            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri2).initCause(e2));
                        }
                    } else if (a2 == null) {
                        return null;
                    } else {
                        a2.close();
                        return null;
                    }
                }
            } catch (Throwable th) {
                if (a2 != null) {
                    a2.close();
                }
                throw th;
            }
        }
        if (a2 == null) {
            return null;
        }
        a2.close();
        return null;
    }
}
