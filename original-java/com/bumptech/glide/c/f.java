package com.bumptech.glide.c;

import android.support.annotation.Nullable;
import com.bumptech.glide.load.g;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResourceEncoderRegistry */
public class f {
    final List<a<?>> a = new ArrayList();

    /* compiled from: ResourceEncoderRegistry */
    private static final class a<T> {
        final g<T> a;
        private final Class<T> b;

        a(Class<T> cls, g<T> gVar) {
            this.b = cls;
            this.a = gVar;
        }

        /* access modifiers changed from: 0000 */
        public boolean a(Class<?> cls) {
            return this.b.isAssignableFrom(cls);
        }
    }

    public synchronized <Z> void a(Class<Z> cls, g<Z> gVar) {
        this.a.add(new a(cls, gVar));
    }

    @Nullable
    public synchronized <Z> g<Z> a(Class<Z> cls) {
        g<T> gVar;
        int size = this.a.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                gVar = null;
                break;
            }
            a aVar = (a) this.a.get(i);
            if (aVar.a(cls)) {
                gVar = aVar.a;
                break;
            }
            i++;
        }
        return gVar;
    }
}
