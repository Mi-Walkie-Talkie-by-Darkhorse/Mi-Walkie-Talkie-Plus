package de.greenrobot.event;

/* compiled from: AsyncPoster */
class a implements Runnable {
    private final h a = new h();
    private final c b;

    a(c cVar) {
        this.b = cVar;
    }

    public void a(l lVar, Object obj) {
        this.a.a(g.a(lVar, obj));
        this.b.c().execute(this);
    }

    public void run() {
        g a2 = this.a.a();
        if (a2 == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.b.a(a2);
    }
}
