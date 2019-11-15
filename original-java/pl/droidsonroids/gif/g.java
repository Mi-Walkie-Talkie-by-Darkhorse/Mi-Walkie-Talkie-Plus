package pl.droidsonroids.gif;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* compiled from: InvalidationHandler */
class g extends Handler {
    private final WeakReference<c> a;

    public g(c cVar) {
        super(Looper.getMainLooper());
        this.a = new WeakReference<>(cVar);
    }

    public void handleMessage(Message message) {
        c cVar = (c) this.a.get();
        if (cVar != null) {
            if (message.what == -1) {
                cVar.invalidateSelf();
                return;
            }
            Iterator it = cVar.g.iterator();
            while (it.hasNext()) {
                ((a) it.next()).a(message.what);
            }
        }
    }
}
