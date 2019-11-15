package com.squareup.otto;

import android.os.Looper;

/* compiled from: ThreadEnforcer */
public interface g {
    public static final g a = new g() {
        public void a(b bVar) {
        }
    };
    public static final g b = new g() {
        public void a(b bVar) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                throw new IllegalStateException("Event bus " + bVar + " accessed from non-main thread " + Looper.myLooper());
            }
        }
    };

    void a(b bVar);
}
