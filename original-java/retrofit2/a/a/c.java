package retrofit2.a.a;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.d;

/* compiled from: GsonResponseBodyConverter */
final class c<T> implements d<ResponseBody, T> {
    private final Gson a;
    private final TypeAdapter<T> b;

    c(Gson gson, TypeAdapter<T> typeAdapter) {
        this.a = gson;
        this.b = typeAdapter;
    }

    public T a(ResponseBody responseBody) throws IOException {
        try {
            return this.b.read(this.a.newJsonReader(responseBody.charStream()));
        } finally {
            responseBody.close();
        }
    }
}
