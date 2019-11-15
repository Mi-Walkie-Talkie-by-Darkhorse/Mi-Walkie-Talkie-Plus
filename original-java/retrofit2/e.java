package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import retrofit2.c.a;

/* compiled from: DefaultCallAdapterFactory */
final class e extends a {
    static final a a = new e();

    e() {
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
                return bVar;
            }
        };
    }
}
