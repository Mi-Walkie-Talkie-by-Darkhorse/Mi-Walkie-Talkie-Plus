package com.bumptech.glide.request;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.q;

/* compiled from: ResourceCallback */
public interface e {
    void a(GlideException glideException);

    void a(q<?> qVar, DataSource dataSource);
}
