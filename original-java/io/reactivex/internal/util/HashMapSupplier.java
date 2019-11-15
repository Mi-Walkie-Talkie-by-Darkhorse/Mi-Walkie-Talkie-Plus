package io.reactivex.internal.util;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

public enum HashMapSupplier implements Callable<Map<Object, Object>> {
    INSTANCE;

    public static <K, V> Callable<Map<K, V>> a() {
        return INSTANCE;
    }

    /* renamed from: b */
    public Map<Object, Object> call() throws Exception {
        return new HashMap();
    }
}
