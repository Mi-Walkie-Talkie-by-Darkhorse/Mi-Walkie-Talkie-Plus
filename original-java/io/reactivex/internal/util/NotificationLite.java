package io.reactivex.internal.util;

import io.reactivex.disposables.b;
import io.reactivex.internal.functions.a;
import io.reactivex.q;
import java.io.Serializable;

public enum NotificationLite {
    COMPLETE;

    static final class DisposableNotification implements Serializable {
        private static final long serialVersionUID = -7482590109178395495L;
        final b a;

        DisposableNotification(b bVar) {
            this.a = bVar;
        }

        public String toString() {
            return "NotificationLite.Disposable[" + this.a + "]";
        }
    }

    static final class ErrorNotification implements Serializable {
        private static final long serialVersionUID = -8759979445933046293L;
        final Throwable a;

        ErrorNotification(Throwable th) {
            this.a = th;
        }

        public String toString() {
            return "NotificationLite.Error[" + this.a + "]";
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ErrorNotification)) {
                return false;
            }
            return a.a((Object) this.a, (Object) ((ErrorNotification) obj).a);
        }
    }

    public static <T> Object a(T t) {
        return t;
    }

    public static Object a() {
        return COMPLETE;
    }

    public static Object a(Throwable th) {
        return new ErrorNotification(th);
    }

    public static Object a(b bVar) {
        return new DisposableNotification(bVar);
    }

    public static boolean b(Object obj) {
        return obj == COMPLETE;
    }

    public static boolean c(Object obj) {
        return obj instanceof ErrorNotification;
    }

    public static boolean d(Object obj) {
        return obj instanceof DisposableNotification;
    }

    public static <T> T e(Object obj) {
        return obj;
    }

    public static Throwable f(Object obj) {
        return ((ErrorNotification) obj).a;
    }

    public static b g(Object obj) {
        return ((DisposableNotification) obj).a;
    }

    public static <T> boolean a(Object obj, q<? super T> qVar) {
        if (obj == COMPLETE) {
            qVar.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            qVar.onError(((ErrorNotification) obj).a);
            return true;
        } else {
            qVar.onNext(obj);
            return false;
        }
    }

    public static <T> boolean b(Object obj, q<? super T> qVar) {
        if (obj == COMPLETE) {
            qVar.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            qVar.onError(((ErrorNotification) obj).a);
            return true;
        } else if (obj instanceof DisposableNotification) {
            qVar.onSubscribe(((DisposableNotification) obj).a);
            return false;
        } else {
            qVar.onNext(obj);
            return false;
        }
    }

    public String toString() {
        return "NotificationLite.Complete";
    }
}
