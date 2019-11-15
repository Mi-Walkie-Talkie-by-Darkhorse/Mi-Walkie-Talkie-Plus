package rx.f;

import rx.f;

/* compiled from: Subscriptions */
public final class d {
    private static final a a = new a();

    /* compiled from: Subscriptions */
    private static final class a implements f {
        private a() {
        }

        public void unsubscribe() {
        }

        public boolean isUnsubscribed() {
            return true;
        }
    }

    public static f a() {
        return a.a();
    }

    public static f b() {
        return a;
    }

    public static f a(rx.b.a aVar) {
        return a.a(aVar);
    }
}
