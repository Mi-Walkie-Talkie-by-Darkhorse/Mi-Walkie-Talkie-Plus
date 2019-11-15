package com.liulishuo.filedownloader.message;

/* compiled from: MessageSnapshotFlow */
public class c {
    private volatile e a;
    private volatile b b;

    /* compiled from: MessageSnapshotFlow */
    public static final class a {
        /* access modifiers changed from: private */
        public static final c a = new c();
    }

    /* compiled from: MessageSnapshotFlow */
    public interface b {
        void a(MessageSnapshot messageSnapshot);
    }

    public static c a() {
        return a.a;
    }

    public void a(b bVar) {
        this.b = bVar;
        if (bVar == null) {
            this.a = null;
        } else {
            this.a = new e(5, bVar);
        }
    }

    public void a(MessageSnapshot messageSnapshot) {
        if (messageSnapshot instanceof a) {
            if (this.b != null) {
                this.b.a(messageSnapshot);
            }
        } else if (this.a != null) {
            this.a.a(messageSnapshot);
        }
    }
}
