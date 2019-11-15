package com.liulishuo.filedownloader;

import com.liulishuo.filedownloader.a.b;
import com.liulishuo.filedownloader.a.d;
import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.message.BlockCompleteMessage;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.x.a;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: FileDownloadMessenger */
class k implements t {
    private b a;
    private d b;
    private Queue<MessageSnapshot> c;
    private boolean d = false;

    k(b bVar, d dVar) {
        a(bVar, dVar);
    }

    private void a(b bVar, d dVar) {
        this.a = bVar;
        this.b = dVar;
        this.c = new LinkedBlockingQueue();
    }

    public boolean a() {
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "notify begin %s", this.a);
        }
        if (this.a == null) {
            com.liulishuo.filedownloader.e.d.d(this, "can't begin the task, the holder fo the messenger is nil, %d", Integer.valueOf(this.c.size()));
            return false;
        }
        this.b.a();
        return true;
    }

    public void a(MessageSnapshot messageSnapshot) {
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "notify pending %s", this.a);
        }
        this.b.b();
        k(messageSnapshot);
    }

    public void b(MessageSnapshot messageSnapshot) {
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "notify started %s", this.a);
        }
        this.b.b();
        k(messageSnapshot);
    }

    public void c(MessageSnapshot messageSnapshot) {
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "notify connected %s", this.a);
        }
        this.b.b();
        k(messageSnapshot);
    }

    public void d(MessageSnapshot messageSnapshot) {
        a y = this.a.y();
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "notify progress %s %d %d", y, Long.valueOf(y.n()), Long.valueOf(y.p()));
        }
        if (y.f() > 0) {
            this.b.b();
            k(messageSnapshot);
        } else if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "notify progress but client not request notify %s", this.a);
        }
    }

    public void e(MessageSnapshot messageSnapshot) {
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "notify block completed %s %s", this.a, Thread.currentThread().getName());
        }
        this.b.b();
        k(messageSnapshot);
    }

    public void f(MessageSnapshot messageSnapshot) {
        if (com.liulishuo.filedownloader.e.d.a) {
            a y = this.a.y();
            com.liulishuo.filedownloader.e.d.c(this, "notify retry %s %d %d %s", this.a, Integer.valueOf(y.u()), Integer.valueOf(y.v()), y.s());
        }
        this.b.b();
        k(messageSnapshot);
    }

    public void g(MessageSnapshot messageSnapshot) {
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "notify warn %s", this.a);
        }
        this.b.c();
        k(messageSnapshot);
    }

    public void h(MessageSnapshot messageSnapshot) {
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "notify error %s %s", this.a, this.a.y().s());
        }
        this.b.c();
        k(messageSnapshot);
    }

    public void i(MessageSnapshot messageSnapshot) {
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "notify paused %s", this.a);
        }
        this.b.c();
        k(messageSnapshot);
    }

    public void j(MessageSnapshot messageSnapshot) {
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "notify completed %s", this.a);
        }
        this.b.c();
        k(messageSnapshot);
    }

    private void k(MessageSnapshot messageSnapshot) {
        if (this.a == null) {
            if (com.liulishuo.filedownloader.e.d.a) {
                com.liulishuo.filedownloader.e.d.c(this, "occur this case, it would be the host task of this messenger has been over(paused/warn/completed/error) on the other thread before receiving the snapshot(id[%d], status[%d])", Integer.valueOf(messageSnapshot.m()), Byte.valueOf(messageSnapshot.b()));
            }
        } else if (this.d || this.a.y().l() == null) {
            if ((l.b() || this.a.I()) && messageSnapshot.b() == 4) {
                this.b.c();
            }
            a((int) messageSnapshot.b());
        } else {
            this.c.offer(messageSnapshot);
            j.a().a((t) this);
        }
    }

    private void a(int i) {
        if (com.liulishuo.filedownloader.model.b.a(i)) {
            if (!this.c.isEmpty()) {
                MessageSnapshot messageSnapshot = (MessageSnapshot) this.c.peek();
                com.liulishuo.filedownloader.e.d.d(this, "the messenger[%s](with id[%d]) has already accomplished all his job, but there still are some messages in parcel queue[%d] queue-top-status[%d]", this, Integer.valueOf(messageSnapshot.m()), Integer.valueOf(this.c.size()), Byte.valueOf(messageSnapshot.b()));
            }
            this.a = null;
        }
    }

    public void b() {
        if (!this.d) {
            MessageSnapshot messageSnapshot = (MessageSnapshot) this.c.poll();
            byte b2 = messageSnapshot.b();
            b bVar = this.a;
            if (bVar == null) {
                throw new IllegalArgumentException(g.a("can't handover the message, no master to receive this message(status[%d]) size[%d]", Integer.valueOf(b2), Integer.valueOf(this.c.size())));
            }
            a y = bVar.y();
            i l = y.l();
            a z = bVar.z();
            a((int) b2);
            if (l != null && !l.isInvalid()) {
                if (b2 == 4) {
                    try {
                        l.blockComplete(y);
                        j(((BlockCompleteMessage) messageSnapshot).d_());
                    } catch (Throwable th) {
                        h(z.a(th));
                    }
                } else {
                    g gVar = null;
                    if (l instanceof g) {
                        gVar = (g) l;
                    }
                    switch (b2) {
                        case -4:
                            l.warn(y);
                            return;
                        case -3:
                            l.completed(y);
                            return;
                        case -2:
                            if (gVar != null) {
                                gVar.c(y, messageSnapshot.i(), messageSnapshot.d());
                                return;
                            } else {
                                l.paused(y, messageSnapshot.a(), messageSnapshot.c());
                                return;
                            }
                        case -1:
                            l.error(y, messageSnapshot.j());
                            return;
                        case 1:
                            if (gVar != null) {
                                gVar.a(y, messageSnapshot.i(), messageSnapshot.d());
                                return;
                            } else {
                                l.pending(y, messageSnapshot.a(), messageSnapshot.c());
                                return;
                            }
                        case 2:
                            if (gVar != null) {
                                gVar.a(y, messageSnapshot.h(), messageSnapshot.g(), y.n(), messageSnapshot.d());
                                return;
                            }
                            l.connected(y, messageSnapshot.h(), messageSnapshot.g(), y.m(), messageSnapshot.c());
                            return;
                        case 3:
                            if (gVar != null) {
                                gVar.b(y, messageSnapshot.i(), y.p());
                                return;
                            } else {
                                l.progress(y, messageSnapshot.a(), y.o());
                                return;
                            }
                        case 5:
                            if (gVar != null) {
                                gVar.a(y, messageSnapshot.j(), messageSnapshot.k(), messageSnapshot.i());
                                return;
                            } else {
                                l.retry(y, messageSnapshot.j(), messageSnapshot.k(), messageSnapshot.a());
                                return;
                            }
                        case 6:
                            l.started(y);
                            return;
                        default:
                            return;
                    }
                }
            }
        }
    }

    public boolean c() {
        return this.a.y().w();
    }

    public boolean d() {
        return ((MessageSnapshot) this.c.peek()).b() == 4;
    }

    public String toString() {
        int d2;
        String str = "%d:%s";
        Object[] objArr = new Object[2];
        if (this.a == null) {
            d2 = -1;
        } else {
            d2 = this.a.y().d();
        }
        objArr[0] = Integer.valueOf(d2);
        objArr[1] = super.toString();
        return g.a(str, objArr);
    }
}
