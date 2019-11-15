package com.bumptech.glide.util.a;

/* compiled from: StateVerifier */
public abstract class b {

    /* compiled from: StateVerifier */
    private static class a extends b {
        private volatile boolean a;

        a() {
            super();
        }

        public void b() {
            if (this.a) {
                throw new IllegalStateException("Already released");
            }
        }

        public void a(boolean z) {
            this.a = z;
        }
    }

    /* access modifiers changed from: 0000 */
    public abstract void a(boolean z);

    public abstract void b();

    public static b a() {
        return new a();
    }

    private b() {
    }
}
