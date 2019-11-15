package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.functions.a;
import io.reactivex.internal.util.NotificationLite;

/* compiled from: Notification */
public final class j<T> {
    static final j<Object> b = new j<>(null);
    final Object a;

    private j(Object obj) {
        this.a = obj;
    }

    public boolean a() {
        return this.a == null;
    }

    public boolean b() {
        return NotificationLite.c(this.a);
    }

    public boolean c() {
        Object obj = this.a;
        return obj != null && !NotificationLite.c(obj);
    }

    @Nullable
    public T d() {
        Object obj = this.a;
        if (obj == null || NotificationLite.c(obj)) {
            return null;
        }
        return this.a;
    }

    @Nullable
    public Throwable e() {
        Object obj = this.a;
        if (NotificationLite.c(obj)) {
            return NotificationLite.f(obj);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        return a.a(this.a, ((j) obj).a);
    }

    public int hashCode() {
        Object obj = this.a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public String toString() {
        Object obj = this.a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (NotificationLite.c(obj)) {
            return "OnErrorNotification[" + NotificationLite.f(obj) + "]";
        }
        return "OnNextNotification[" + this.a + "]";
    }

    @NonNull
    public static <T> j<T> a(@NonNull T t) {
        a.a(t, "value is null");
        return new j<>(t);
    }

    @NonNull
    public static <T> j<T> a(@NonNull Throwable th) {
        a.a(th, "error is null");
        return new j<>(NotificationLite.a(th));
    }

    @NonNull
    public static <T> j<T> f() {
        return b;
    }
}
