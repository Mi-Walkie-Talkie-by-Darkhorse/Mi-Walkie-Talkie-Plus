package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;

/* compiled from: ExecutorCallAdapterFactory */
final class f extends retrofit2.c.a {
    final Executor a;

    /* compiled from: ExecutorCallAdapterFactory */
    static final class a<T> implements b<T> {
        final Executor a;
        final b<T> b;

        a(Executor executor, b<T> bVar) {
            this.a = executor;
            this.b = bVar;
        }

        public k<T> a() throws IOException {
            return this.b.a();
        }

        public void b() {
            this.b.b();
        }

        public boolean c() {
            return this.b.c();
        }

        /* renamed from: d */
        public b<T> clone() {
            return new a(this.a, this.b.d());
        }
    }

    f(Executor executor) {
        this.a = executor;
    }

    public c<?, ?> get(Type type, Annotation[] annotationArr, l lVar) {
        if (getRawType(type) != b.class) {
            return null;
        }
        final Type e = n.e(type);
        return new c<Object, b<?>>() {
            public Type responseType() {
                return e;
            }

            /* renamed from: a */
            public b<Object> adapt(b<Object> bVar) {
                return new a(f.this.a, bVar);
            }
        };
    }
}
