package com.liulishuo.filedownloader;

import com.liulishuo.filedownloader.a.b;
import com.liulishuo.filedownloader.e.d;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: FileDownloadList */
public class h {
    private final ArrayList<b> a;

    /* compiled from: FileDownloadList */
    private static final class a {
        /* access modifiers changed from: private */
        public static final h a = new h();
    }

    public static h a() {
        return a.a;
    }

    private h() {
        this.a = new ArrayList<>();
    }

    /* access modifiers changed from: 0000 */
    public int b() {
        return this.a.size();
    }

    /* access modifiers changed from: 0000 */
    public int a(int i) {
        int i2;
        int i3 = 0;
        synchronized (this.a) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                if (((b) it.next()).a(i)) {
                    i2 = i3 + 1;
                } else {
                    i2 = i3;
                }
                i3 = i2;
            }
        }
        return i3;
    }

    /* access modifiers changed from: 0000 */
    public List<b> b(int i) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.a) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                if (bVar.a(i) && !bVar.A()) {
                    byte q = bVar.y().q();
                    if (!(q == 0 || q == 10)) {
                        arrayList.add(bVar);
                    }
                }
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: 0000 */
    public boolean a(b bVar) {
        return this.a.isEmpty() || !this.a.contains(bVar);
    }

    /* access modifiers changed from: 0000 */
    public void a(List<b> list) {
        synchronized (this.a) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                if (!list.contains(bVar)) {
                    list.add(bVar);
                }
            }
            this.a.clear();
        }
    }

    public boolean a(b bVar, MessageSnapshot messageSnapshot) {
        boolean remove;
        byte b = messageSnapshot.b();
        synchronized (this.a) {
            remove = this.a.remove(bVar);
        }
        if (d.a && this.a.size() == 0) {
            d.e(this, "remove %s left %d %d", bVar, Byte.valueOf(b), Integer.valueOf(this.a.size()));
        }
        if (remove) {
            t d = bVar.z().d();
            switch (b) {
                case -4:
                    d.g(messageSnapshot);
                    break;
                case -3:
                    d.e(com.liulishuo.filedownloader.message.d.a(messageSnapshot));
                    break;
                case -2:
                    d.i(messageSnapshot);
                    break;
                case -1:
                    d.h(messageSnapshot);
                    break;
            }
        } else {
            d.a(this, "remove error, not exist: %s %d", bVar, Byte.valueOf(b));
        }
        return remove;
    }

    /* access modifiers changed from: 0000 */
    public void b(b bVar) {
        if (!bVar.y().b()) {
            bVar.C();
        }
        if (bVar.z().d().a()) {
            c(bVar);
        }
    }

    /* access modifiers changed from: 0000 */
    public void c(b bVar) {
        if (!bVar.D()) {
            synchronized (this.a) {
                if (this.a.contains(bVar)) {
                    d.d(this, "already has %s", bVar);
                } else {
                    bVar.E();
                    this.a.add(bVar);
                    if (d.a) {
                        d.e(this, "add list in all %s %d %d", bVar, Byte.valueOf(bVar.y().q()), Integer.valueOf(this.a.size()));
                    }
                }
            }
        }
    }
}
