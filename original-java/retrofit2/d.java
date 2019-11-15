package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

/* compiled from: Converter */
public interface d<F, T> {

    /* compiled from: Converter */
    public static abstract class a {
        @Nullable
        public d<ResponseBody, ?> a(Type type, Annotation[] annotationArr, l lVar) {
            return null;
        }

        @Nullable
        public d<?, RequestBody> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, l lVar) {
            return null;
        }

        @Nullable
        public d<?, String> b(Type type, Annotation[] annotationArr, l lVar) {
            return null;
        }
    }

    T a(F f) throws IOException;
}
