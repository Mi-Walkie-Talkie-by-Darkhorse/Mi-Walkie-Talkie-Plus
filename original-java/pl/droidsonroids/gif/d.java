package pl.droidsonroids.gif;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;

/* compiled from: GifRenderingExecutor */
final class d extends ScheduledThreadPoolExecutor {

    /* compiled from: GifRenderingExecutor */
    private static final class a {
        /* access modifiers changed from: private */
        public static final d a = new d();
    }

    static d a() {
        return a.a;
    }

    private d() {
        super(1, new DiscardPolicy());
    }
}
