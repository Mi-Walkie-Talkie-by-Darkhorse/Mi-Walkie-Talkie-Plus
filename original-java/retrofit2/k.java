package retrofit2;

import javax.annotation.Nullable;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* compiled from: Response */
public final class k<T> {
    private final Response a;
    @Nullable
    private final T b;
    @Nullable
    private final ResponseBody c;

    public static <T> k<T> a(@Nullable T t, Response response) {
        n.a(response, "rawResponse == null");
        if (response.isSuccessful()) {
            return new k<>(response, t, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    public static <T> k<T> a(ResponseBody responseBody, Response response) {
        n.a(responseBody, "body == null");
        n.a(response, "rawResponse == null");
        if (!response.isSuccessful()) {
            return new k<>(response, null, responseBody);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }

    private k(Response response, @Nullable T t, @Nullable ResponseBody responseBody) {
        this.a = response;
        this.b = t;
        this.c = responseBody;
    }

    public int a() {
        return this.a.code();
    }

    public String b() {
        return this.a.message();
    }

    public boolean c() {
        return this.a.isSuccessful();
    }

    @Nullable
    public T d() {
        return this.b;
    }

    public String toString() {
        return this.a.toString();
    }
}
