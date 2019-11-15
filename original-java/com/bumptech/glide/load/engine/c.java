package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.b.a.b;
import java.io.File;

/* compiled from: DataCacheWriter */
class c<DataType> implements b {
    private final a<DataType> a;
    private final DataType b;
    private final e c;

    c(a<DataType> aVar, DataType datatype, e eVar) {
        this.a = aVar;
        this.b = datatype;
        this.c = eVar;
    }

    public boolean a(File file) {
        return this.a.a(this.b, file, this.c);
    }
}
