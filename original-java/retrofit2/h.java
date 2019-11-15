package retrofit2;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Map;
import java.util.Map.Entry;
import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.MultipartBody.Part;
import okhttp3.RequestBody;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;

/* compiled from: ParameterHandler */
abstract class h<T> {

    /* compiled from: ParameterHandler */
    static final class a<T> extends h<T> {
        private final d<T, RequestBody> a;

        a(d<T, RequestBody> dVar) {
            this.a = dVar;
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable T t) {
            if (t == null) {
                throw new IllegalArgumentException("Body parameter value must not be null.");
            }
            try {
                jVar.a((RequestBody) this.a.a(t));
            } catch (IOException e) {
                throw new RuntimeException("Unable to convert " + t + " to RequestBody", e);
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class b<T> extends h<T> {
        private final String a;
        private final d<T, String> b;
        private final boolean c;

        b(String str, d<T, String> dVar, boolean z) {
            this.a = (String) n.a(str, "name == null");
            this.b = dVar;
            this.c = z;
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable T t) throws IOException {
            if (t != null) {
                String str = (String) this.b.a(t);
                if (str != null) {
                    jVar.c(this.a, str, this.c);
                }
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class c<T> extends h<Map<String, T>> {
        private final d<T, String> a;
        private final boolean b;

        c(d<T, String> dVar, boolean z) {
            this.a = dVar;
            this.b = z;
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Field map was null.");
            }
            for (Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw new IllegalArgumentException("Field map contained null key.");
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Field map contained null value for key '" + str + "'.");
                }
                String str2 = (String) this.a.a(value);
                if (str2 == null) {
                    throw new IllegalArgumentException("Field map value '" + value + "' converted to null by " + this.a.getClass().getName() + " for key '" + str + "'.");
                }
                jVar.c(str, str2, this.b);
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class d<T> extends h<T> {
        private final String a;
        private final d<T, String> b;

        d(String str, d<T, String> dVar) {
            this.a = (String) n.a(str, "name == null");
            this.b = dVar;
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable T t) throws IOException {
            if (t != null) {
                String str = (String) this.b.a(t);
                if (str != null) {
                    jVar.a(this.a, str);
                }
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class e<T> extends h<Map<String, T>> {
        private final d<T, String> a;

        e(d<T, String> dVar) {
            this.a = dVar;
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Header map was null.");
            }
            for (Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw new IllegalArgumentException("Header map contained null key.");
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Header map contained null value for key '" + str + "'.");
                }
                jVar.a(str, (String) this.a.a(value));
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class f<T> extends h<T> {
        private final Headers a;
        private final d<T, RequestBody> b;

        f(Headers headers, d<T, RequestBody> dVar) {
            this.a = headers;
            this.b = dVar;
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable T t) {
            if (t != null) {
                try {
                    jVar.a(this.a, (RequestBody) this.b.a(t));
                } catch (IOException e) {
                    throw new RuntimeException("Unable to convert " + t + " to RequestBody", e);
                }
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class g<T> extends h<Map<String, T>> {
        private final d<T, RequestBody> a;
        private final String b;

        g(d<T, RequestBody> dVar, String str) {
            this.a = dVar;
            this.b = str;
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Part map was null.");
            }
            for (Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw new IllegalArgumentException("Part map contained null key.");
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Part map contained null value for key '" + str + "'.");
                }
                jVar.a(Headers.of(HttpPostBodyUtil.CONTENT_DISPOSITION, "form-data; name=\"" + str + "\"", Names.CONTENT_TRANSFER_ENCODING, this.b), (RequestBody) this.a.a(value));
            }
        }
    }

    /* renamed from: retrofit2.h$h reason: collision with other inner class name */
    /* compiled from: ParameterHandler */
    static final class C0096h<T> extends h<T> {
        private final String a;
        private final d<T, String> b;
        private final boolean c;

        C0096h(String str, d<T, String> dVar, boolean z) {
            this.a = (String) n.a(str, "name == null");
            this.b = dVar;
            this.c = z;
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable T t) throws IOException {
            if (t == null) {
                throw new IllegalArgumentException("Path parameter \"" + this.a + "\" value must not be null.");
            }
            jVar.a(this.a, (String) this.b.a(t), this.c);
        }
    }

    /* compiled from: ParameterHandler */
    static final class i<T> extends h<T> {
        private final String a;
        private final d<T, String> b;
        private final boolean c;

        i(String str, d<T, String> dVar, boolean z) {
            this.a = (String) n.a(str, "name == null");
            this.b = dVar;
            this.c = z;
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable T t) throws IOException {
            if (t != null) {
                String str = (String) this.b.a(t);
                if (str != null) {
                    jVar.b(this.a, str, this.c);
                }
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class j<T> extends h<Map<String, T>> {
        private final d<T, String> a;
        private final boolean b;

        j(d<T, String> dVar, boolean z) {
            this.a = dVar;
            this.b = z;
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Query map was null.");
            }
            for (Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw new IllegalArgumentException("Query map contained null key.");
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Query map contained null value for key '" + str + "'.");
                }
                String str2 = (String) this.a.a(value);
                if (str2 == null) {
                    throw new IllegalArgumentException("Query map value '" + value + "' converted to null by " + this.a.getClass().getName() + " for key '" + str + "'.");
                }
                jVar.b(str, str2, this.b);
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class k<T> extends h<T> {
        private final d<T, String> a;
        private final boolean b;

        k(d<T, String> dVar, boolean z) {
            this.a = dVar;
            this.b = z;
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable T t) throws IOException {
            if (t != null) {
                jVar.b((String) this.a.a(t), null, this.b);
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class l extends h<Part> {
        static final l a = new l();

        private l() {
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable Part part) throws IOException {
            if (part != null) {
                jVar.a(part);
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class m extends h<Object> {
        m() {
        }

        /* access modifiers changed from: 0000 */
        public void a(j jVar, @Nullable Object obj) {
            n.a(obj, "@Url parameter is null.");
            jVar.a(obj);
        }
    }

    /* access modifiers changed from: 0000 */
    public abstract void a(j jVar, @Nullable T t) throws IOException;

    h() {
    }

    /* access modifiers changed from: 0000 */
    public final h<Iterable<T>> a() {
        return new h<Iterable<T>>() {
            /* access modifiers changed from: 0000 */
            public void a(j jVar, @Nullable Iterable<T> iterable) throws IOException {
                if (iterable != null) {
                    for (T a2 : iterable) {
                        h.this.a(jVar, a2);
                    }
                }
            }
        };
    }

    /* access modifiers changed from: 0000 */
    public final h<Object> b() {
        return new h<Object>() {
            /* access modifiers changed from: 0000 */
            public void a(j jVar, @Nullable Object obj) throws IOException {
                if (obj != null) {
                    int length = Array.getLength(obj);
                    for (int i = 0; i < length; i++) {
                        h.this.a(jVar, Array.get(obj, i));
                    }
                }
            }
        };
    }
}
