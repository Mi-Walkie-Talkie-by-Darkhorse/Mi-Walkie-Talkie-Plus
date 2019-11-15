package io.reactivex.observers;

import io.reactivex.disposables.b;
import io.reactivex.internal.util.VolatileSizeArrayList;
import io.reactivex.observers.a;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* compiled from: BaseTestConsumer */
public abstract class a<T, U extends a<T, U>> implements b {
    protected final CountDownLatch a = new CountDownLatch(1);
    protected final List<T> b = new VolatileSizeArrayList();
    protected final List<Throwable> c = new VolatileSizeArrayList();
    protected long d;
    protected Thread e;
    protected boolean f;
    protected int g;
    protected int h;
}
