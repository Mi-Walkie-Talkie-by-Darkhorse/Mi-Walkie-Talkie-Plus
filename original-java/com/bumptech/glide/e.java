package com.bumptech.glide;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.request.d;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

@TargetApi(14)
/* compiled from: GlideContext */
public class e extends ContextWrapper {
    @VisibleForTesting
    static final h<?, ?> a = new b();
    private final Handler b = new Handler(Looper.getMainLooper());
    private final Registry c;
    private final com.bumptech.glide.request.a.e d;
    private final d e;
    private final Map<Class<?>, h<?, ?>> f;
    private final h g;
    private final int h;

    public e(Context context, Registry registry, com.bumptech.glide.request.a.e eVar, d dVar, Map<Class<?>, h<?, ?>> map, h hVar, int i) {
        super(context.getApplicationContext());
        this.c = registry;
        this.d = eVar;
        this.e = dVar;
        this.f = map;
        this.g = hVar;
        this.h = i;
    }

    public d a() {
        return this.e;
    }

    @NonNull
    public <T> h<?, T> a(Class<T> cls) {
        h<?, T> hVar;
        h<?, T> hVar2 = (h) this.f.get(cls);
        if (hVar2 == null) {
            Iterator it = this.f.entrySet().iterator();
            while (true) {
                hVar = hVar2;
                if (!it.hasNext()) {
                    break;
                }
                Entry entry = (Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    hVar2 = (h) entry.getValue();
                } else {
                    hVar2 = hVar;
                }
            }
            hVar2 = hVar;
        }
        if (hVar2 == null) {
            return a;
        }
        return hVar2;
    }

    public <X> com.bumptech.glide.request.a.h<X> a(ImageView imageView, Class<X> cls) {
        return this.d.a(imageView, cls);
    }

    public h b() {
        return this.g;
    }

    public Registry c() {
        return this.c;
    }

    public int d() {
        return this.h;
    }
}
