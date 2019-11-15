package retrofit2.a.a;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.d;
import retrofit2.l;

/* compiled from: GsonConverterFactory */
public final class a extends retrofit2.d.a {
    private final Gson a;

    public static a a() {
        return a(new Gson());
    }

    public static a a(Gson gson) {
        if (gson != null) {
            return new a(gson);
        }
        throw new NullPointerException("gson == null");
    }

    private a(Gson gson) {
        this.a = gson;
    }

    public d<ResponseBody, ?> a(Type type, Annotation[] annotationArr, l lVar) {
        return new c(this.a, this.a.getAdapter(TypeToken.get(type)));
    }

    public d<?, RequestBody> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, l lVar) {
        return new b(this.a, this.a.getAdapter(TypeToken.get(type)));
    }
}
