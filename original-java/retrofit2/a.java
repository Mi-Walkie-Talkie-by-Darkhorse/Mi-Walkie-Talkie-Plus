package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.http.Streaming;

/* compiled from: BuiltInConverters */
final class a extends retrofit2.d.a {

    /* renamed from: retrofit2.a$a reason: collision with other inner class name */
    /* compiled from: BuiltInConverters */
    static final class C0095a implements d<ResponseBody, ResponseBody> {
        static final C0095a a = new C0095a();

        C0095a() {
        }

        public ResponseBody a(ResponseBody responseBody) throws IOException {
            try {
                return n.a(responseBody);
            } finally {
                responseBody.close();
            }
        }
    }

    /* compiled from: BuiltInConverters */
    static final class b implements d<RequestBody, RequestBody> {
        static final b a = new b();

        b() {
        }

        public RequestBody a(RequestBody requestBody) throws IOException {
            return requestBody;
        }
    }

    /* compiled from: BuiltInConverters */
    static final class c implements d<ResponseBody, ResponseBody> {
        static final c a = new c();

        c() {
        }

        public ResponseBody a(ResponseBody responseBody) throws IOException {
            return responseBody;
        }
    }

    /* compiled from: BuiltInConverters */
    static final class d implements d<Object, String> {
        static final d a = new d();

        d() {
        }

        /* renamed from: b */
        public String a(Object obj) {
            return obj.toString();
        }
    }

    /* compiled from: BuiltInConverters */
    static final class e implements d<ResponseBody, Void> {
        static final e a = new e();

        e() {
        }

        public Void a(ResponseBody responseBody) throws IOException {
            responseBody.close();
            return null;
        }
    }

    a() {
    }

    public d<ResponseBody, ?> a(Type type, Annotation[] annotationArr, l lVar) {
        if (type == ResponseBody.class) {
            if (n.a(annotationArr, Streaming.class)) {
                return c.a;
            }
            return C0095a.a;
        } else if (type == Void.class) {
            return e.a;
        } else {
            return null;
        }
    }

    public d<?, RequestBody> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, l lVar) {
        if (RequestBody.class.isAssignableFrom(n.a(type))) {
            return b.a;
        }
        return null;
    }
}
