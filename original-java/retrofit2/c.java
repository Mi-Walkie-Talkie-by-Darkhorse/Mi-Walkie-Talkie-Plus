package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;

/* compiled from: CallAdapter */
public interface c<R, T> {

    /* compiled from: CallAdapter */
    public static abstract class a {
        @Nullable
        public abstract c<?, ?> get(Type type, Annotation[] annotationArr, l lVar);

        protected static Type getParameterUpperBound(int i, ParameterizedType parameterizedType) {
            return n.a(i, parameterizedType);
        }

        protected static Class<?> getRawType(Type type) {
            return n.a(type);
        }
    }

    T adapt(b<R> bVar);

    Type responseType();
}
