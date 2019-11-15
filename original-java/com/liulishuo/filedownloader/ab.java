package com.liulishuo.filedownloader;

import android.os.Handler;
import android.util.SparseArray;
import java.util.List;

/* compiled from: QueuesHandler */
class ab implements w {
    private final SparseArray<Handler> a = new SparseArray<>();

    ab() {
    }

    public void a() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.a.size()) {
                a((Handler) this.a.get(this.a.keyAt(i2)));
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void a(List<Integer> list) {
        for (Integer intValue : list) {
            b((Handler) this.a.get(intValue.intValue()));
        }
    }

    public int b() {
        return this.a.size();
    }

    public boolean a(int i) {
        return this.a.get(i) != null;
    }

    private void a(Handler handler) {
        handler.sendEmptyMessage(2);
    }

    private void b(Handler handler) {
        handler.sendEmptyMessage(3);
    }
}
