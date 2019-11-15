package com.bumptech.glide.load;

import android.support.annotation.Nullable;
import com.bumptech.glide.load.engine.q;
import java.io.IOException;

/* compiled from: ResourceDecoder */
public interface f<T, Z> {
    @Nullable
    q<Z> a(T t, int i, int i2, e eVar) throws IOException;

    boolean a(T t, e eVar) throws IOException;
}
