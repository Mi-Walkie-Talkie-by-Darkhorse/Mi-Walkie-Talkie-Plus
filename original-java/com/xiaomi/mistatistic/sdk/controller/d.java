package com.xiaomi.mistatistic.sdk.controller;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: AsyncJobDispatcher */
public class d {
    private static d a = null;
    private static d b = null;
    /* access modifiers changed from: private */
    public volatile Handler c;
    /* access modifiers changed from: private */
    public ArrayList<a> d = new ArrayList<>();

    /* compiled from: AsyncJobDispatcher */
    public interface a {
        void a();
    }

    /* compiled from: AsyncJobDispatcher */
    private class b extends HandlerThread {
        public b(String str) {
            super(str);
        }

        /* access modifiers changed from: protected */
        public void onLooperPrepared() {
            d.this.c = new Handler();
            ArrayList arrayList = null;
            synchronized (d.this.d) {
                if (!d.this.d.isEmpty()) {
                    arrayList = (ArrayList) d.this.d.clone();
                    String valueOf = String.valueOf(d.this.d.size());
                    d.this.d.clear();
                    h.a("mPendingJob(cnt=" + valueOf + ") not empty, clone a job list and clear original list");
                }
            }
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    a aVar = (a) it.next();
                    try {
                        h.a("execute a pending job");
                        aVar.a();
                    } catch (Exception e) {
                        h.a("error while executing job.", (Throwable) e);
                    }
                }
            }
            super.onLooperPrepared();
        }
    }

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            if (a == null) {
                a = new d("local_job_dispatcher");
            }
            dVar = a;
        }
        return dVar;
    }

    public static synchronized d b() {
        d dVar;
        synchronized (d.class) {
            if (b == null) {
                b = new d("remote_job_dispatcher");
            }
            dVar = b;
        }
        return dVar;
    }

    private d(String str) {
        new b(str).start();
    }

    public void a(final a aVar) {
        synchronized (this.d) {
            if (this.c == null) {
                h.a("AsyncJobDispatcher.mHander is null, add job to pending queue");
                this.d.add(aVar);
            } else {
                this.c.post(new Runnable() {
                    public void run() {
                        try {
                            aVar.a();
                        } catch (Exception e) {
                            h.a("error while executing job.", (Throwable) e);
                        }
                    }
                });
            }
        }
    }

    public void a(final a aVar, final long j) {
        if (this.c != null) {
            this.c.postDelayed(new Runnable() {
                public void run() {
                    try {
                        h.a("AsyncJobDispatcher run a job with delay " + String.valueOf(j));
                        aVar.a();
                    } catch (Exception e) {
                        h.a("error while executing job.", (Throwable) e);
                    }
                }
            }, j);
        } else {
            h.a("drop the job as handler is not ready.", (Throwable) null);
        }
    }
}
