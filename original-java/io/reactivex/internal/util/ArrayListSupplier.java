package io.reactivex.internal.util;

import io.reactivex.b.g;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public enum ArrayListSupplier implements g<Object, List<Object>>, Callable<List<Object>> {
    INSTANCE;

    public static <T> Callable<List<T>> a() {
        return INSTANCE;
    }

    public static <T, O> g<O, List<T>> b() {
        return INSTANCE;
    }

    /* renamed from: c */
    public List<Object> call() throws Exception {
        return new ArrayList();
    }

    /* renamed from: a */
    public List<Object> apply(Object obj) throws Exception {
        return new ArrayList();
    }
}
