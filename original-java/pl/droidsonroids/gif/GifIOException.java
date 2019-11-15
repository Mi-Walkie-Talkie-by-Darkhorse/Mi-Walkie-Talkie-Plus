package pl.droidsonroids.gif;

import android.support.annotation.NonNull;
import java.io.IOException;

public class GifIOException extends IOException {
    private static final long serialVersionUID = 13038402904505L;
    @NonNull
    public final GifError a;
    private final String b;

    public String getMessage() {
        if (this.b == null) {
            return this.a.a();
        }
        return this.a.a() + ": " + this.b;
    }

    private GifIOException(int i, String str) {
        this.a = GifError.a(i);
        this.b = str;
    }

    static GifIOException a(int i) {
        if (i == GifError.NO_ERROR.w) {
            return null;
        }
        return new GifIOException(i, null);
    }
}
