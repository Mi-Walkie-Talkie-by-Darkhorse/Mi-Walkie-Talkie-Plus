package com.bumptech.glide.load.b;

import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.Nullable;
import android.util.Log;
import com.bumptech.glide.load.e;
import com.mi.milinkforgame.sdk.base.os.Http;
import java.io.InputStream;

/* compiled from: ResourceLoader */
public class s<Data> implements n<Integer, Data> {
    private final n<Uri, Data> a;
    private final Resources b;

    /* compiled from: ResourceLoader */
    public static class a implements o<Integer, ParcelFileDescriptor> {
        private final Resources a;

        public a(Resources resources) {
            this.a = resources;
        }

        public n<Integer, ParcelFileDescriptor> a(r rVar) {
            return new s(this.a, rVar.a(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* compiled from: ResourceLoader */
    public static class b implements o<Integer, InputStream> {
        private final Resources a;

        public b(Resources resources) {
            this.a = resources;
        }

        public n<Integer, InputStream> a(r rVar) {
            return new s(this.a, rVar.a(Uri.class, InputStream.class));
        }
    }

    public s(Resources resources, n<Uri, Data> nVar) {
        this.b = resources;
        this.a = nVar;
    }

    public com.bumptech.glide.load.b.n.a<Data> a(Integer num, int i, int i2, e eVar) {
        Uri b2 = b(num);
        if (b2 == null) {
            return null;
        }
        return this.a.a(b2, i, i2, eVar);
    }

    @Nullable
    private Uri b(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.b.getResourcePackageName(num.intValue()) + Http.PROTOCOL_HOST_SPLITTER + this.b.getResourceTypeName(num.intValue()) + Http.PROTOCOL_HOST_SPLITTER + this.b.getResourceEntryName(num.intValue()));
        } catch (NotFoundException e) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num, e);
            }
            return null;
        }
    }

    public boolean a(Integer num) {
        return true;
    }
}
