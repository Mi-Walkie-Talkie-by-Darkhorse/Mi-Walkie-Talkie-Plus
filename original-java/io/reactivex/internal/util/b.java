package io.reactivex.internal.util;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import io.reactivex.d.a;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: BackpressureHelper */
public final class b {
    public static long a(long j, long j2) {
        long j3 = j + j2;
        if (j3 < 0) {
            return FileTracerConfig.FOREVER;
        }
        return j3;
    }

    public static long a(AtomicLong atomicLong, long j) {
        long j2;
        do {
            j2 = atomicLong.get();
            if (j2 == FileTracerConfig.FOREVER) {
                return FileTracerConfig.FOREVER;
            }
        } while (!atomicLong.compareAndSet(j2, a(j2, j)));
        return j2;
    }

    public static long b(AtomicLong atomicLong, long j) {
        long j2;
        long j3;
        do {
            j2 = atomicLong.get();
            if (j2 == FileTracerConfig.FOREVER) {
                return FileTracerConfig.FOREVER;
            }
            j3 = j2 - j;
            if (j3 < 0) {
                a.a((Throwable) new IllegalStateException("More produced than requested: " + j3));
                j3 = 0;
            }
        } while (!atomicLong.compareAndSet(j2, j3));
        return j3;
    }
}
