package com.liulishuo.filedownloader.message;

import com.liulishuo.filedownloader.message.c.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: MessageSnapshotThreadPool */
public class e {
    private final List<a> a = new ArrayList();
    /* access modifiers changed from: private */
    public final b b;

    /* compiled from: MessageSnapshotThreadPool */
    public class a {
        /* access modifiers changed from: private */
        public final List<Integer> b = new ArrayList();
        private final Executor c;

        public a(int i) {
            this.c = com.liulishuo.filedownloader.e.b.a(1, "Flow-" + i);
        }

        public void a(int i) {
            this.b.add(Integer.valueOf(i));
        }

        public void a(final MessageSnapshot messageSnapshot) {
            this.c.execute(new Runnable() {
                public void run() {
                    e.this.b.a(messageSnapshot);
                    a.this.b.remove(Integer.valueOf(messageSnapshot.m()));
                }
            });
        }
    }

    e(int i, b bVar) {
        this.b = bVar;
        for (int i2 = 0; i2 < i; i2++) {
            this.a.add(new a(i2));
        }
    }

    public void a(MessageSnapshot messageSnapshot) {
        a aVar;
        int i;
        a aVar2 = null;
        try {
            synchronized (this.a) {
                int m = messageSnapshot.m();
                Iterator it = this.a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    a aVar3 = (a) it.next();
                    if (aVar3.b.contains(Integer.valueOf(m))) {
                        aVar2 = aVar3;
                        break;
                    }
                }
                if (aVar2 == null) {
                    int i2 = 0;
                    Iterator it2 = this.a.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        a aVar4 = (a) it2.next();
                        if (aVar4.b.size() <= 0) {
                            aVar2 = aVar4;
                            break;
                        }
                        if (i2 != 0) {
                            if (aVar4.b.size() >= i2) {
                                i = i2;
                                aVar = aVar2;
                                aVar2 = aVar;
                                i2 = i;
                            }
                        }
                        aVar = aVar4;
                        i = aVar4.b.size();
                        aVar2 = aVar;
                        i2 = i;
                    }
                }
                aVar2.a(m);
            }
        } finally {
            aVar2.a(messageSnapshot);
        }
    }
}
