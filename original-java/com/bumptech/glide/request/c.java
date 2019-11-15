package com.bumptech.glide.request;

import android.support.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.a.h;

/* compiled from: RequestListener */
public interface c<R> {
    boolean a(@Nullable GlideException glideException, Object obj, h<R> hVar, boolean z);

    boolean a(R r, Object obj, h<R> hVar, DataSource dataSource, boolean z);
}
