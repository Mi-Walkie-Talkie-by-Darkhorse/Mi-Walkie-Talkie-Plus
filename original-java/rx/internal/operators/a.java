package rx.internal.operators;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: BackpressureUtils */
public final class a {
    public static long a(AtomicLong atomicLong, long j) {
        long j2;
        do {
            j2 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j2, a(j2, j)));
        return j2;
    }

    public static long a(long j, long j2) {
        long j3 = j + j2;
        if (j3 < 0) {
            return FileTracerConfig.FOREVER;
        }
        return j3;
    }
}
