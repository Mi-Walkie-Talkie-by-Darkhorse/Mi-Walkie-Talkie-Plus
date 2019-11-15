package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import okhttp3.Call.Factory;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

/* compiled from: Retrofit */
public final class l {
    final Factory a;
    final HttpUrl b;
    final List<retrofit2.d.a> c;
    final List<retrofit2.c.a> d;
    @Nullable
    final Executor e;
    final boolean f;
    private final Map<Method, m<?, ?>> g = new ConcurrentHashMap();

    /* compiled from: Retrofit */
    public static final class a {
        private final i a;
        @Nullable
        private Factory b;
        private HttpUrl c;
        private final List<retrofit2.d.a> d;
        private final List<retrofit2.c.a> e;
        @Nullable
        private Executor f;
        private boolean g;

        a(i iVar) {
            this.d = new ArrayList();
            this.e = new ArrayList();
            this.a = iVar;
            this.d.add(new a());
        }

        public a() {
            this(i.a());
        }

        public a a(OkHttpClient okHttpClient) {
            return a((Factory) n.a(okHttpClient, "client == null"));
        }

        public a a(Factory factory) {
            this.b = (Factory) n.a(factory, "factory == null");
            return this;
        }

        public a a(String str) {
            n.a(str, "baseUrl == null");
            HttpUrl parse = HttpUrl.parse(str);
            if (parse != null) {
                return a(parse);
            }
            throw new IllegalArgumentException("Illegal URL: " + str);
        }

        public a a(HttpUrl httpUrl) {
            n.a(httpUrl, "baseUrl == null");
            List pathSegments = httpUrl.pathSegments();
            if (!"".equals(pathSegments.get(pathSegments.size() - 1))) {
                throw new IllegalArgumentException("baseUrl must end in /: " + httpUrl);
            }
            this.c = httpUrl;
            return this;
        }

        public a a(retrofit2.d.a aVar) {
            this.d.add(n.a(aVar, "factory == null"));
            return this;
        }

        public a a(retrofit2.c.a aVar) {
            this.e.add(n.a(aVar, "factory == null"));
            return this;
        }

        public l a() {
            if (this.c == null) {
                throw new IllegalStateException("Base URL required.");
            }
            Factory factory = this.b;
            if (factory == null) {
                factory = new OkHttpClient();
            }
            Executor executor = this.f;
            if (executor == null) {
                executor = this.a.b();
            }
            ArrayList arrayList = new ArrayList(this.e);
            arrayList.add(this.a.a(executor));
            return new l(factory, this.c, new ArrayList(this.d), arrayList, executor, this.g);
        }
    }

    l(Factory factory, HttpUrl httpUrl, List<retrofit2.d.a> list, List<retrofit2.c.a> list2, @Nullable Executor executor, boolean z) {
        this.a = factory;
        this.b = httpUrl;
        this.c = Collections.unmodifiableList(list);
        this.d = Collections.unmodifiableList(list2);
        this.e = executor;
        this.f = z;
    }

    public <T> T a(final Class<T> cls) {
        n.a(cls);
        if (this.f) {
            b(cls);
        }
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() {
            private final i c = i.a();

            public Object invoke(Object obj, Method method, @Nullable Object[] objArr) throws Throwable {
                if (method.getDeclaringClass() == Object.class) {
                    return method.invoke(this, objArr);
                }
                if (this.c.a(method)) {
                    return this.c.a(method, cls, obj, objArr);
                }
                m a2 = l.this.a(method);
                return a2.d.adapt(new g(a2, objArr));
            }
        });
    }

    private void b(Class<?> cls) {
        Method[] declaredMethods;
        i a2 = i.a();
        for (Method method : cls.getDeclaredMethods()) {
            if (!a2.a(method)) {
                a(method);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public m<?, ?> a(Method method) {
        m<?, ?> mVar = (m) this.g.get(method);
        if (mVar == null) {
            synchronized (this.g) {
                mVar = (m) this.g.get(method);
                if (mVar == null) {
                    mVar = new a(this, method).a();
                    this.g.put(method, mVar);
                }
            }
        }
        return mVar;
    }

    public Factory a() {
        return this.a;
    }

    public HttpUrl b() {
        return this.b;
    }

    public c<?, ?> a(Type type, Annotation[] annotationArr) {
        return a((retrofit2.c.a) null, type, annotationArr);
    }

    public c<?, ?> a(@Nullable retrofit2.c.a aVar, Type type, Annotation[] annotationArr) {
        n.a(type, "returnType == null");
        n.a(annotationArr, "annotations == null");
        int indexOf = this.d.indexOf(aVar) + 1;
        int size = this.d.size();
        for (int i = indexOf; i < size; i++) {
            c<?, ?> cVar = ((retrofit2.c.a) this.d.get(i)).get(type, annotationArr, this);
            if (cVar != null) {
                return cVar;
            }
        }
        StringBuilder append = new StringBuilder("Could not locate call adapter for ").append(type).append(".\n");
        if (aVar != null) {
            append.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                append.append("\n   * ").append(((retrofit2.c.a) this.d.get(i2)).getClass().getName());
            }
            append.append(10);
        }
        append.append("  Tried:");
        int size2 = this.d.size();
        while (indexOf < size2) {
            append.append("\n   * ").append(((retrofit2.c.a) this.d.get(indexOf)).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(append.toString());
    }

    public <T> d<T, RequestBody> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return a(null, type, annotationArr, annotationArr2);
    }

    public <T> d<T, RequestBody> a(@Nullable retrofit2.d.a aVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        n.a(type, "type == null");
        n.a(annotationArr, "parameterAnnotations == null");
        n.a(annotationArr2, "methodAnnotations == null");
        int indexOf = this.c.indexOf(aVar) + 1;
        int size = this.c.size();
        for (int i = indexOf; i < size; i++) {
            d<T, RequestBody> a2 = ((retrofit2.d.a) this.c.get(i)).a(type, annotationArr, annotationArr2, this);
            if (a2 != null) {
                return a2;
            }
        }
        StringBuilder append = new StringBuilder("Could not locate RequestBody converter for ").append(type).append(".\n");
        if (aVar != null) {
            append.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                append.append("\n   * ").append(((retrofit2.d.a) this.c.get(i2)).getClass().getName());
            }
            append.append(10);
        }
        append.append("  Tried:");
        int size2 = this.c.size();
        while (indexOf < size2) {
            append.append("\n   * ").append(((retrofit2.d.a) this.c.get(indexOf)).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(append.toString());
    }

    public <T> d<ResponseBody, T> b(Type type, Annotation[] annotationArr) {
        return a((retrofit2.d.a) null, type, annotationArr);
    }

    public <T> d<ResponseBody, T> a(@Nullable retrofit2.d.a aVar, Type type, Annotation[] annotationArr) {
        n.a(type, "type == null");
        n.a(annotationArr, "annotations == null");
        int indexOf = this.c.indexOf(aVar) + 1;
        int size = this.c.size();
        for (int i = indexOf; i < size; i++) {
            d<ResponseBody, T> a2 = ((retrofit2.d.a) this.c.get(i)).a(type, annotationArr, this);
            if (a2 != null) {
                return a2;
            }
        }
        StringBuilder append = new StringBuilder("Could not locate ResponseBody converter for ").append(type).append(".\n");
        if (aVar != null) {
            append.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                append.append("\n   * ").append(((retrofit2.d.a) this.c.get(i2)).getClass().getName());
            }
            append.append(10);
        }
        append.append("  Tried:");
        int size2 = this.c.size();
        while (indexOf < size2) {
            append.append("\n   * ").append(((retrofit2.d.a) this.c.get(indexOf)).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(append.toString());
    }

    public <T> d<T, String> c(Type type, Annotation[] annotationArr) {
        n.a(type, "type == null");
        n.a(annotationArr, "annotations == null");
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            d<T, String> b2 = ((retrofit2.d.a) this.c.get(i)).b(type, annotationArr, this);
            if (b2 != null) {
                return b2;
            }
        }
        return d.a;
    }
}
