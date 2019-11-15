package com.bumptech.glide.c;

import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: EncoderRegistry */
public class a {
    private final List<C0011a<?>> a = new ArrayList();

    /* renamed from: com.bumptech.glide.c.a$a reason: collision with other inner class name */
    /* compiled from: EncoderRegistry */
    private static final class C0011a<T> {
        final com.bumptech.glide.load.a<T> a;
        private final Class<T> b;

        public C0011a(Class<T> cls, com.bumptech.glide.load.a<T> aVar) {
            this.b = cls;
            this.a = aVar;
        }

        public boolean a(Class<?> cls) {
            return this.b.isAssignableFrom(cls);
        }
    }

    @Nullable
    public synchronized <T> com.bumptech.glide.load.a<T> a(Class<T> cls) {
        com.bumptech.glide.load.a<T> aVar;
        Iterator it = this.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                aVar = null;
                break;
            }
            C0011a aVar2 = (C0011a) it.next();
            if (aVar2.a(cls)) {
                aVar = aVar2.a;
                break;
            }
        }
        return aVar;
    }

    public synchronized <T> void a(Class<T> cls, com.bumptech.glide.load.a<T> aVar) {
        this.a.add(new C0011a(cls, aVar));
    }
}
