package retrofit2.a.a;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import retrofit2.d;

/* compiled from: GsonRequestBodyConverter */
final class b<T> implements d<T, RequestBody> {
    private static final MediaType a = MediaType.parse("application/json; charset=UTF-8");
    private static final Charset b = Charset.forName("UTF-8");
    private final Gson c;
    private final TypeAdapter<T> d;

    b(Gson gson, TypeAdapter<T> typeAdapter) {
        this.c = gson;
        this.d = typeAdapter;
    }

    /* renamed from: b */
    public RequestBody a(T t) throws IOException {
        Buffer buffer = new Buffer();
        JsonWriter newJsonWriter = this.c.newJsonWriter(new OutputStreamWriter(buffer.outputStream(), b));
        this.d.write(newJsonWriter, t);
        newJsonWriter.close();
        return RequestBody.create(a, buffer.readByteString());
    }
}
