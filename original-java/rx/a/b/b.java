package rx.a.b;

import android.os.Handler;
import java.util.concurrent.TimeUnit;
import rx.d;
import rx.f;
import rx.internal.schedulers.ScheduledAction;

/* compiled from: HandlerScheduler */
public final class b extends d {
    private final Handler a;

    /* compiled from: HandlerScheduler */
    static class a extends rx.d.a {
        /* access modifiers changed from: private */
        public final Handler a;
        private final rx.f.b b = new rx.f.b();

        a(Handler handler) {
            this.a = handler;
        }

        public void unsubscribe() {
            this.b.unsubscribe();
        }

        public boolean isUnsubscribed() {
            return this.b.isUnsubscribed();
        }

        public f a(rx.b.a aVar, long j, TimeUnit timeUnit) {
            if (this.b.isUnsubscribed()) {
                return rx.f.d.b();
            }
            final ScheduledAction scheduledAction = new ScheduledAction(rx.a.a.a.a().b().a(aVar));
            scheduledAction.a(this.b);
            this.b.a((f) scheduledAction);
            this.a.postDelayed(scheduledAction, timeUnit.toMillis(j));
            scheduledAction.a(rx.f.d.a(new rx.b.a() {
                public void a() {
                    a.this.a.removeCallbacks(scheduledAction);
                }
            }));
            return scheduledAction;
        }

        public f a(rx.b.a aVar) {
            return a(aVar, 0, TimeUnit.MILLISECONDS);
        }
    }

    b(Handler handler) {
        this.a = handler;
    }

    public rx.d.a a() {
        return new a(this.a);
    }
}
