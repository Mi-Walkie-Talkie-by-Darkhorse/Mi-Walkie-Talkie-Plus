package com.bumptech.glide.load.engine.a;

import android.support.annotation.Nullable;
import com.bumptech.glide.load.engine.a.m;
import com.mi.milinkforgame.sdk.base.os.Http;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: GroupedLinkedMap */
class h<K extends m, V> {
    private final a<K, V> a = new a<>();
    private final Map<K, a<K, V>> b = new HashMap();

    /* compiled from: GroupedLinkedMap */
    private static class a<K, V> {
        final K a;
        a<K, V> b;
        a<K, V> c;
        private List<V> d;

        public a() {
            this(null);
        }

        public a(K k) {
            this.c = this;
            this.b = this;
            this.a = k;
        }

        @Nullable
        public V a() {
            int b2 = b();
            if (b2 > 0) {
                return this.d.remove(b2 - 1);
            }
            return null;
        }

        public int b() {
            if (this.d != null) {
                return this.d.size();
            }
            return 0;
        }

        public void a(V v) {
            if (this.d == null) {
                this.d = new ArrayList();
            }
            this.d.add(v);
        }
    }

    h() {
    }

    public void a(K k, V v) {
        a aVar = (a) this.b.get(k);
        if (aVar == null) {
            aVar = new a(k);
            b(aVar);
            this.b.put(k, aVar);
        } else {
            k.a();
        }
        aVar.a(v);
    }

    @Nullable
    public V a(K k) {
        a aVar = (a) this.b.get(k);
        if (aVar == null) {
            aVar = new a(k);
            this.b.put(k, aVar);
        } else {
            k.a();
        }
        a(aVar);
        return aVar.a();
    }

    @Nullable
    public V a() {
        a<K, V> aVar = this.a.c;
        while (true) {
            a<K, V> aVar2 = aVar;
            if (aVar2.equals(this.a)) {
                return null;
            }
            V a2 = aVar2.a();
            if (a2 != null) {
                return a2;
            }
            d(aVar2);
            this.b.remove(aVar2.a);
            ((m) aVar2.a).a();
            aVar = aVar2.c;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (a<K, V> aVar = this.a.b; !aVar.equals(this.a); aVar = aVar.b) {
            z = true;
            sb.append('{').append(aVar.a).append(Http.PROTOCOL_PORT_SPLITTER).append(aVar.b()).append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        return sb.append(" )").toString();
    }

    private void a(a<K, V> aVar) {
        d(aVar);
        aVar.c = this.a;
        aVar.b = this.a.b;
        c(aVar);
    }

    private void b(a<K, V> aVar) {
        d(aVar);
        aVar.c = this.a.c;
        aVar.b = this.a;
        c(aVar);
    }

    private static <K, V> void c(a<K, V> aVar) {
        aVar.b.c = aVar;
        aVar.c.b = aVar;
    }

    private static <K, V> void d(a<K, V> aVar) {
        aVar.c.b = aVar.b;
        aVar.b.c = aVar.c;
    }
}
