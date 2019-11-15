package com.bumptech.glide.load.resource.d;

import android.util.Log;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.g;
import com.bumptech.glide.util.a;
import java.io.File;
import java.io.IOException;

/* compiled from: GifDrawableEncoder */
public class d implements g<c> {
    public EncodeStrategy a(e eVar) {
        return EncodeStrategy.SOURCE;
    }

    public boolean a(q<c> qVar, File file, e eVar) {
        try {
            a.a(((c) qVar.c()).c(), file);
            return true;
        } catch (IOException e) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e);
            }
            return false;
        }
    }
}
