package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.Call.Factory;
import okhttp3.Headers;
import okhttp3.Headers.Builder;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPut;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.HEAD;
import retrofit2.http.HTTP;
import retrofit2.http.Header;
import retrofit2.http.HeaderMap;
import retrofit2.http.Multipart;
import retrofit2.http.OPTIONS;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import retrofit2.http.QueryName;
import retrofit2.http.Url;

/* compiled from: ServiceMethod */
final class m<R, T> {
    static final Pattern a = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");
    static final Pattern b = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");
    final Factory c;
    final c<R, T> d;
    private final HttpUrl e;
    private final d<ResponseBody, R> f;
    private final String g;
    private final String h;
    private final Headers i;
    private final MediaType j;
    private final boolean k;
    private final boolean l;
    private final boolean m;
    private final h<?>[] n;

    /* compiled from: ServiceMethod */
    static final class a<T, R> {
        final l a;
        final Method b;
        final Annotation[] c;
        final Annotation[][] d;
        final Type[] e;
        Type f;
        boolean g;
        boolean h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        String m;
        boolean n;
        boolean o;
        boolean p;
        String q;
        Headers r;
        MediaType s;
        Set<String> t;
        h<?>[] u;
        d<ResponseBody, T> v;
        c<T, R> w;

        a(l lVar, Method method) {
            this.a = lVar;
            this.b = method;
            this.c = method.getAnnotations();
            this.e = method.getGenericParameterTypes();
            this.d = method.getParameterAnnotations();
        }

        public m a() {
            this.w = b();
            this.f = this.w.responseType();
            if (this.f == k.class || this.f == Response.class) {
                throw a("'" + n.a(this.f).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
            }
            this.v = c();
            for (Annotation a2 : this.c) {
                a(a2);
            }
            if (this.m == null) {
                throw a("HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
            }
            if (!this.n) {
                if (this.p) {
                    throw a("Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                } else if (this.o) {
                    throw a("FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
            }
            int length = this.d.length;
            this.u = new h[length];
            for (int i2 = 0; i2 < length; i2++) {
                Type type = this.e[i2];
                if (n.d(type)) {
                    throw a(i2, "Parameter type must not include a type variable or wildcard: %s", type);
                }
                Annotation[] annotationArr = this.d[i2];
                if (annotationArr == null) {
                    throw a(i2, "No Retrofit annotation found.", new Object[0]);
                }
                this.u[i2] = a(i2, type, annotationArr);
            }
            if (this.q == null && !this.l) {
                throw a("Missing either @%s URL or @Url parameter.", this.m);
            } else if (!this.o && !this.p && !this.n && this.i) {
                throw a("Non-body HTTP method cannot contain @Body.", new Object[0]);
            } else if (this.o && !this.g) {
                throw a("Form-encoded method must contain at least one @Field.", new Object[0]);
            } else if (!this.p || this.h) {
                return new m(this);
            } else {
                throw a("Multipart method must contain at least one @Part.", new Object[0]);
            }
        }

        private c<T, R> b() {
            Type genericReturnType = this.b.getGenericReturnType();
            if (n.d(genericReturnType)) {
                throw a("Method return type must not include a type variable or wildcard: %s", genericReturnType);
            } else if (genericReturnType == Void.TYPE) {
                throw a("Service methods cannot return void.", new Object[0]);
            } else {
                try {
                    return this.a.a(genericReturnType, this.b.getAnnotations());
                } catch (RuntimeException e2) {
                    throw a((Throwable) e2, "Unable to create call adapter for %s", genericReturnType);
                }
            }
        }

        private void a(Annotation annotation) {
            if (annotation instanceof DELETE) {
                a(HttpDelete.METHOD_NAME, ((DELETE) annotation).value(), false);
            } else if (annotation instanceof GET) {
                a("GET", ((GET) annotation).value(), false);
            } else if (annotation instanceof HEAD) {
                a(HttpHead.METHOD_NAME, ((HEAD) annotation).value(), false);
                if (!Void.class.equals(this.f)) {
                    throw a("HEAD method must use Void as response type.", new Object[0]);
                }
            } else if (annotation instanceof PATCH) {
                a("PATCH", ((PATCH) annotation).value(), true);
            } else if (annotation instanceof POST) {
                a("POST", ((POST) annotation).value(), true);
            } else if (annotation instanceof PUT) {
                a(HttpPut.METHOD_NAME, ((PUT) annotation).value(), true);
            } else if (annotation instanceof OPTIONS) {
                a(HttpOptions.METHOD_NAME, ((OPTIONS) annotation).value(), false);
            } else if (annotation instanceof HTTP) {
                HTTP http = (HTTP) annotation;
                a(http.method(), http.path(), http.hasBody());
            } else if (annotation instanceof retrofit2.http.Headers) {
                String[] value = ((retrofit2.http.Headers) annotation).value();
                if (value.length == 0) {
                    throw a("@Headers annotation is empty.", new Object[0]);
                }
                this.r = a(value);
            } else if (annotation instanceof Multipart) {
                if (this.o) {
                    throw a("Only one encoding annotation is allowed.", new Object[0]);
                }
                this.p = true;
            } else if (!(annotation instanceof FormUrlEncoded)) {
            } else {
                if (this.p) {
                    throw a("Only one encoding annotation is allowed.", new Object[0]);
                }
                this.o = true;
            }
        }

        private void a(String str, String str2, boolean z) {
            if (this.m != null) {
                throw a("Only one HTTP method is allowed. Found: %s and %s.", this.m, str);
            }
            this.m = str;
            this.n = z;
            if (!str2.isEmpty()) {
                int indexOf = str2.indexOf(63);
                if (indexOf != -1 && indexOf < str2.length() - 1) {
                    String substring = str2.substring(indexOf + 1);
                    if (m.a.matcher(substring).find()) {
                        throw a("URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
                    }
                }
                this.q = str2;
                this.t = m.a(str2);
            }
        }

        private Headers a(String[] strArr) {
            Builder builder = new Builder();
            for (String str : strArr) {
                int indexOf = str.indexOf(58);
                if (indexOf == -1 || indexOf == 0 || indexOf == str.length() - 1) {
                    throw a("@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String substring = str.substring(0, indexOf);
                String trim = str.substring(indexOf + 1).trim();
                if ("Content-Type".equalsIgnoreCase(substring)) {
                    MediaType parse = MediaType.parse(trim);
                    if (parse == null) {
                        throw a("Malformed content type: %s", trim);
                    }
                    this.s = parse;
                } else {
                    builder.add(substring, trim);
                }
            }
            return builder.build();
        }

        private h<?> a(int i2, Type type, Annotation[] annotationArr) {
            h<?> hVar = null;
            for (Annotation a2 : annotationArr) {
                h<?> a3 = a(i2, type, annotationArr, a2);
                if (a3 != null) {
                    if (hVar != null) {
                        throw a(i2, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                    }
                    hVar = a3;
                }
            }
            if (hVar != null) {
                return hVar;
            }
            throw a(i2, "No Retrofit annotation found.", new Object[0]);
        }

        private h<?> a(int i2, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof Url) {
                if (this.l) {
                    throw a(i2, "Multiple @Url method annotations found.", new Object[0]);
                } else if (this.j) {
                    throw a(i2, "@Path parameters may not be used with @Url.", new Object[0]);
                } else if (this.k) {
                    throw a(i2, "A @Url parameter must not come after a @Query", new Object[0]);
                } else if (this.q != null) {
                    throw a(i2, "@Url cannot be used with @%s URL", this.m);
                } else {
                    this.l = true;
                    if (type == HttpUrl.class || type == String.class || type == URI.class || ((type instanceof Class) && "android.net.Uri".equals(((Class) type).getName()))) {
                        return new m();
                    }
                    throw a(i2, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                }
            } else if (annotation instanceof Path) {
                if (this.k) {
                    throw a(i2, "A @Path parameter must not come after a @Query.", new Object[0]);
                } else if (this.l) {
                    throw a(i2, "@Path parameters may not be used with @Url.", new Object[0]);
                } else if (this.q == null) {
                    throw a(i2, "@Path can only be used with relative url on @%s", this.m);
                } else {
                    this.j = true;
                    Path path = (Path) annotation;
                    String value = path.value();
                    a(i2, value);
                    return new C0096h(value, this.a.c(type, annotationArr), path.encoded());
                }
            } else if (annotation instanceof Query) {
                Query query = (Query) annotation;
                String value2 = query.value();
                boolean encoded = query.encoded();
                Class a2 = n.a(type);
                this.k = true;
                if (Iterable.class.isAssignableFrom(a2)) {
                    if (!(type instanceof ParameterizedType)) {
                        throw a(i2, a2.getSimpleName() + " must include generic type (e.g., " + a2.getSimpleName() + "<String>)", new Object[0]);
                    }
                    return new i(value2, this.a.c(n.a(0, (ParameterizedType) type), annotationArr), encoded).a();
                } else if (!a2.isArray()) {
                    return new i(value2, this.a.c(type, annotationArr), encoded);
                } else {
                    return new i(value2, this.a.c(m.a(a2.getComponentType()), annotationArr), encoded).b();
                }
            } else if (annotation instanceof QueryName) {
                boolean encoded2 = ((QueryName) annotation).encoded();
                Class a3 = n.a(type);
                this.k = true;
                if (Iterable.class.isAssignableFrom(a3)) {
                    if (!(type instanceof ParameterizedType)) {
                        throw a(i2, a3.getSimpleName() + " must include generic type (e.g., " + a3.getSimpleName() + "<String>)", new Object[0]);
                    }
                    return new k(this.a.c(n.a(0, (ParameterizedType) type), annotationArr), encoded2).a();
                } else if (!a3.isArray()) {
                    return new k(this.a.c(type, annotationArr), encoded2);
                } else {
                    return new k(this.a.c(m.a(a3.getComponentType()), annotationArr), encoded2).b();
                }
            } else if (annotation instanceof QueryMap) {
                Class a4 = n.a(type);
                if (!Map.class.isAssignableFrom(a4)) {
                    throw a(i2, "@QueryMap parameter type must be Map.", new Object[0]);
                }
                Type b2 = n.b(type, a4, Map.class);
                if (!(b2 instanceof ParameterizedType)) {
                    throw a(i2, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType = (ParameterizedType) b2;
                Type a5 = n.a(0, parameterizedType);
                if (String.class != a5) {
                    throw a(i2, "@QueryMap keys must be of type String: " + a5, new Object[0]);
                }
                return new j(this.a.c(n.a(1, parameterizedType), annotationArr), ((QueryMap) annotation).encoded());
            } else if (annotation instanceof Header) {
                String value3 = ((Header) annotation).value();
                Class a6 = n.a(type);
                if (Iterable.class.isAssignableFrom(a6)) {
                    if (!(type instanceof ParameterizedType)) {
                        throw a(i2, a6.getSimpleName() + " must include generic type (e.g., " + a6.getSimpleName() + "<String>)", new Object[0]);
                    }
                    return new d(value3, this.a.c(n.a(0, (ParameterizedType) type), annotationArr)).a();
                } else if (!a6.isArray()) {
                    return new d(value3, this.a.c(type, annotationArr));
                } else {
                    return new d(value3, this.a.c(m.a(a6.getComponentType()), annotationArr)).b();
                }
            } else if (annotation instanceof HeaderMap) {
                Class a7 = n.a(type);
                if (!Map.class.isAssignableFrom(a7)) {
                    throw a(i2, "@HeaderMap parameter type must be Map.", new Object[0]);
                }
                Type b3 = n.b(type, a7, Map.class);
                if (!(b3 instanceof ParameterizedType)) {
                    throw a(i2, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType2 = (ParameterizedType) b3;
                Type a8 = n.a(0, parameterizedType2);
                if (String.class != a8) {
                    throw a(i2, "@HeaderMap keys must be of type String: " + a8, new Object[0]);
                }
                return new e(this.a.c(n.a(1, parameterizedType2), annotationArr));
            } else if (annotation instanceof Field) {
                if (!this.o) {
                    throw a(i2, "@Field parameters can only be used with form encoding.", new Object[0]);
                }
                Field field = (Field) annotation;
                String value4 = field.value();
                boolean encoded3 = field.encoded();
                this.g = true;
                Class a9 = n.a(type);
                if (Iterable.class.isAssignableFrom(a9)) {
                    if (!(type instanceof ParameterizedType)) {
                        throw a(i2, a9.getSimpleName() + " must include generic type (e.g., " + a9.getSimpleName() + "<String>)", new Object[0]);
                    }
                    return new b(value4, this.a.c(n.a(0, (ParameterizedType) type), annotationArr), encoded3).a();
                } else if (!a9.isArray()) {
                    return new b(value4, this.a.c(type, annotationArr), encoded3);
                } else {
                    return new b(value4, this.a.c(m.a(a9.getComponentType()), annotationArr), encoded3).b();
                }
            } else if (annotation instanceof FieldMap) {
                if (!this.o) {
                    throw a(i2, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                }
                Class a10 = n.a(type);
                if (!Map.class.isAssignableFrom(a10)) {
                    throw a(i2, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                Type b4 = n.b(type, a10, Map.class);
                if (!(b4 instanceof ParameterizedType)) {
                    throw a(i2, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType3 = (ParameterizedType) b4;
                Type a11 = n.a(0, parameterizedType3);
                if (String.class != a11) {
                    throw a(i2, "@FieldMap keys must be of type String: " + a11, new Object[0]);
                }
                d c2 = this.a.c(n.a(1, parameterizedType3), annotationArr);
                this.g = true;
                return new c(c2, ((FieldMap) annotation).encoded());
            } else if (annotation instanceof Part) {
                if (!this.p) {
                    throw a(i2, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                }
                Part part = (Part) annotation;
                this.h = true;
                String value5 = part.value();
                Class a12 = n.a(type);
                if (!value5.isEmpty()) {
                    Headers of = Headers.of(HttpPostBodyUtil.CONTENT_DISPOSITION, "form-data; name=\"" + value5 + "\"", Names.CONTENT_TRANSFER_ENCODING, part.encoding());
                    if (Iterable.class.isAssignableFrom(a12)) {
                        if (!(type instanceof ParameterizedType)) {
                            throw a(i2, a12.getSimpleName() + " must include generic type (e.g., " + a12.getSimpleName() + "<String>)", new Object[0]);
                        }
                        Type a13 = n.a(0, (ParameterizedType) type);
                        if (!MultipartBody.Part.class.isAssignableFrom(n.a(a13))) {
                            return new f(of, this.a.a(a13, annotationArr, this.c)).a();
                        }
                        throw a(i2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    } else if (a12.isArray()) {
                        Class a14 = m.a(a12.getComponentType());
                        if (!MultipartBody.Part.class.isAssignableFrom(a14)) {
                            return new f(of, this.a.a((Type) a14, annotationArr, this.c)).b();
                        }
                        throw a(i2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    } else if (!MultipartBody.Part.class.isAssignableFrom(a12)) {
                        return new f(of, this.a.a(type, annotationArr, this.c));
                    } else {
                        throw a(i2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                } else if (Iterable.class.isAssignableFrom(a12)) {
                    if (!(type instanceof ParameterizedType)) {
                        throw a(i2, a12.getSimpleName() + " must include generic type (e.g., " + a12.getSimpleName() + "<String>)", new Object[0]);
                    } else if (MultipartBody.Part.class.isAssignableFrom(n.a(n.a(0, (ParameterizedType) type)))) {
                        return l.a.a();
                    } else {
                        throw a(i2, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                } else if (a12.isArray()) {
                    if (MultipartBody.Part.class.isAssignableFrom(a12.getComponentType())) {
                        return l.a.b();
                    }
                    throw a(i2, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                } else if (MultipartBody.Part.class.isAssignableFrom(a12)) {
                    return l.a;
                } else {
                    throw a(i2, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                }
            } else if (annotation instanceof PartMap) {
                if (!this.p) {
                    throw a(i2, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                }
                this.h = true;
                Class a15 = n.a(type);
                if (!Map.class.isAssignableFrom(a15)) {
                    throw a(i2, "@PartMap parameter type must be Map.", new Object[0]);
                }
                Type b5 = n.b(type, a15, Map.class);
                if (!(b5 instanceof ParameterizedType)) {
                    throw a(i2, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType4 = (ParameterizedType) b5;
                Type a16 = n.a(0, parameterizedType4);
                if (String.class != a16) {
                    throw a(i2, "@PartMap keys must be of type String: " + a16, new Object[0]);
                }
                Type a17 = n.a(1, parameterizedType4);
                if (!MultipartBody.Part.class.isAssignableFrom(n.a(a17))) {
                    return new g(this.a.a(a17, annotationArr, this.c), ((PartMap) annotation).encoding());
                }
                throw a(i2, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
            } else if (!(annotation instanceof Body)) {
                return null;
            } else {
                if (this.o || this.p) {
                    throw a(i2, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                } else if (this.i) {
                    throw a(i2, "Multiple @Body method annotations found.", new Object[0]);
                } else {
                    try {
                        d a18 = this.a.a(type, annotationArr, this.c);
                        this.i = true;
                        return new a(a18);
                    } catch (RuntimeException e2) {
                        throw a((Throwable) e2, i2, "Unable to create @Body converter for %s", type);
                    }
                }
            }
        }

        private void a(int i2, String str) {
            if (!m.b.matcher(str).matches()) {
                throw a(i2, "@Path parameter name must match %s. Found: %s", m.a.pattern(), str);
            } else if (!this.t.contains(str)) {
                throw a(i2, "URL \"%s\" does not contain \"{%s}\".", this.q, str);
            }
        }

        private d<ResponseBody, T> c() {
            try {
                return this.a.b(this.f, this.b.getAnnotations());
            } catch (RuntimeException e2) {
                throw a((Throwable) e2, "Unable to create converter for %s", this.f);
            }
        }

        private RuntimeException a(String str, Object... objArr) {
            return a((Throwable) null, str, objArr);
        }

        private RuntimeException a(Throwable th, String str, Object... objArr) {
            return new IllegalArgumentException(String.format(str, objArr) + "\n    for method " + this.b.getDeclaringClass().getSimpleName() + "." + this.b.getName(), th);
        }

        private RuntimeException a(Throwable th, int i2, String str, Object... objArr) {
            return a(th, str + " (parameter #" + (i2 + 1) + ")", objArr);
        }

        private RuntimeException a(int i2, String str, Object... objArr) {
            return a(str + " (parameter #" + (i2 + 1) + ")", objArr);
        }
    }

    m(a<R, T> aVar) {
        this.c = aVar.a.a();
        this.d = aVar.w;
        this.e = aVar.a.b();
        this.f = aVar.v;
        this.g = aVar.m;
        this.h = aVar.q;
        this.i = aVar.r;
        this.j = aVar.s;
        this.k = aVar.n;
        this.l = aVar.o;
        this.m = aVar.p;
        this.n = aVar.u;
    }

    /* access modifiers changed from: 0000 */
    public Request a(@Nullable Object... objArr) throws IOException {
        int i2;
        j jVar = new j(this.g, this.e, this.h, this.i, this.j, this.k, this.l, this.m);
        h<?>[] hVarArr = this.n;
        if (objArr != null) {
            i2 = objArr.length;
        } else {
            i2 = 0;
        }
        if (i2 != hVarArr.length) {
            throw new IllegalArgumentException("Argument count (" + i2 + ") doesn't match expected count (" + hVarArr.length + ")");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            hVarArr[i3].a(jVar, objArr[i3]);
        }
        return jVar.a();
    }

    /* access modifiers changed from: 0000 */
    public R a(ResponseBody responseBody) throws IOException {
        return this.f.a(responseBody);
    }

    static Set<String> a(String str) {
        Matcher matcher = a.matcher(str);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (matcher.find()) {
            linkedHashSet.add(matcher.group(1));
        }
        return linkedHashSet;
    }

    static Class<?> a(Class<?> cls) {
        if (Boolean.TYPE == cls) {
            return Boolean.class;
        }
        if (Byte.TYPE == cls) {
            return Byte.class;
        }
        if (Character.TYPE == cls) {
            return Character.class;
        }
        if (Double.TYPE == cls) {
            return Double.class;
        }
        if (Float.TYPE == cls) {
            return Float.class;
        }
        if (Integer.TYPE == cls) {
            return Integer.class;
        }
        if (Long.TYPE == cls) {
            return Long.class;
        }
        if (Short.TYPE == cls) {
            return Short.class;
        }
        return cls;
    }
}
