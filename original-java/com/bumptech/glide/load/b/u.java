package com.bumptech.glide.load.b;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.bumptech.glide.load.e;
import java.io.File;
import java.io.InputStream;

/* compiled from: StringLoader */
public class u<Data> implements n<String, Data> {
    private final n<Uri, Data> a;

    /* compiled from: StringLoader */
    public static class a implements o<String, ParcelFileDescriptor> {
        public n<String, ParcelFileDescriptor> a(r rVar) {
            return new u(rVar.a(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* compiled from: StringLoader */
    public static class b implements o<String, InputStream> {
        public n<String, InputStream> a(r rVar) {
            return new u(rVar.a(Uri.class, InputStream.class));
        }
    }

    public u(n<Uri, Data> nVar) {
        this.a = nVar;
    }

    public com.bumptech.glide.load.b.n.a<Data> a(String str, int i, int i2, e eVar) {
        Uri b2 = b(str);
        if (b2 == null) {
            return null;
        }
        return this.a.a(b2, i, i2, eVar);
    }

    public boolean a(String str) {
        return true;
    }

    @Nullable
    private static Uri b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("/")) {
            return c(str);
        }
        Uri parse = Uri.parse(str);
        if (parse.getScheme() == null) {
            return c(str);
        }
        return parse;
    }

    private static Uri c(String str) {
        return Uri.fromFile(new File(str));
    }
}
