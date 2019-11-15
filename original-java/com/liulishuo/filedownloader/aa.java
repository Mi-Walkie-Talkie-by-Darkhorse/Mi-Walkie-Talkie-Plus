package com.liulishuo.filedownloader;

import com.liulishuo.filedownloader.e.d;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.message.c.b;
import java.util.List;

/* compiled from: MessageSnapshotGate */
public class aa implements b {
    private boolean a(List<a.b> list, MessageSnapshot messageSnapshot) {
        boolean a;
        if (list.size() > 1 && messageSnapshot.b() == -3) {
            for (a.b bVar : list) {
                synchronized (bVar.H()) {
                    if (bVar.z().c(messageSnapshot)) {
                        d.c(this, "updateMoreLikelyCompleted", new Object[0]);
                        return true;
                    }
                }
            }
        }
        for (a.b bVar2 : list) {
            synchronized (bVar2.H()) {
                if (bVar2.z().b(messageSnapshot)) {
                    d.c(this, "updateKeepFlow", new Object[0]);
                    return true;
                }
            }
        }
        if (-4 == messageSnapshot.b()) {
            for (a.b bVar3 : list) {
                synchronized (bVar3.H()) {
                    if (bVar3.z().d(messageSnapshot)) {
                        d.c(this, "updateSampleFilePathTaskRunning", new Object[0]);
                        return true;
                    }
                }
            }
        }
        if (list.size() != 1) {
            return false;
        }
        a.b bVar4 = (a.b) list.get(0);
        synchronized (bVar4.H()) {
            d.c(this, "updateKeepAhead", new Object[0]);
            a = bVar4.z().a(messageSnapshot);
        }
        return a;
    }

    public void a(MessageSnapshot messageSnapshot) {
        synchronized (Integer.toString(messageSnapshot.m()).intern()) {
            List<a.b> b = h.a().b(messageSnapshot.m());
            if (b.size() > 0) {
                a y = ((a.b) b.get(0)).y();
                if (d.a) {
                    d.c(this, "~~~callback %s old[%s] new[%s] %d", Integer.valueOf(messageSnapshot.m()), Byte.valueOf(y.q()), Byte.valueOf(messageSnapshot.b()), Integer.valueOf(b.size()));
                }
                if (!a(b, messageSnapshot)) {
                    StringBuilder sb = new StringBuilder("The event isn't consumed, id:" + messageSnapshot.m() + " status:" + messageSnapshot.b() + " task-count:" + b.size());
                    for (a.b y2 : b) {
                        sb.append(" | ").append(y2.y().q());
                    }
                    d.b(this, sb.toString(), new Object[0]);
                }
            } else {
                d.b(this, "Receive the event %d, but there isn't any running task in the upper layer", Byte.valueOf(messageSnapshot.b()));
            }
        }
    }
}
