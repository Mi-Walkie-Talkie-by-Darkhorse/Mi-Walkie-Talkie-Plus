package com.xiaomi.mistatistic.sdk.controller;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.mi.milinkforgame.sdk.data.Const.Service;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import com.xiaomi.mistatistic.sdk.b;
import com.xiaomi.mistatistic.sdk.controller.d.a;

/* compiled from: UploadPolicyEngine */
public class p {
    private static p a = null;
    /* access modifiers changed from: private */
    public boolean b = false;
    /* access modifiers changed from: private */
    public int c = 3;
    /* access modifiers changed from: private */
    public long d;
    private long e;
    private Handler f = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    d.a().a((a) new a() {
                        public void a() {
                            if (p.this.e()) {
                                new l().a();
                            }
                        }
                    });
                    return;
                case 2:
                    p.this.b = true;
                    d.a().a((a) new a() {
                        public void a() {
                            if (p.this.e() || p.this.c == 3) {
                                new l().a();
                            }
                        }
                    });
                    return;
                default:
                    return;
            }
        }
    };

    public static synchronized p a() {
        p pVar;
        synchronized (p.class) {
            if (a == null) {
                a = new p();
            }
            pVar = a;
        }
        return pVar;
    }

    private p() {
    }

    public void b() {
        d.a().a((a) new a() {
            public void a() {
                Context a2 = c.a();
                p.this.c = k.a(a2, "upload_policy", 4);
                if (p.this.c == 4) {
                    p.this.d = k.a(a2, "upload_interval", (long) Service.DefHeartBeatInterval);
                } else {
                    p.this.d = -1;
                }
            }
        });
        this.f.sendEmptyMessageDelayed(2, 5000);
    }

    public void a(final int i, final long j) {
        d.a().a((a) new a() {
            public void a() {
                p.this.c = i;
                if (p.this.c == 4) {
                    p.this.d = j;
                } else {
                    p.this.d = -1;
                }
                Context a2 = c.a();
                k.b(a2, "upload_policy", p.this.c);
                if (p.this.c == 4) {
                    k.b(a2, "upload_interval", p.this.d);
                    d.a().a((a) new a() {
                        public void a() {
                            if (p.this.e()) {
                                new l().a();
                            }
                        }
                    }, p.this.d);
                }
            }
        });
    }

    public void c() {
        try {
            if (this.f.hasMessages(1)) {
                return;
            }
            if (this.c == 4) {
                this.f.sendEmptyMessageDelayed(1, this.d);
                h.a("UPE", "onEventRecorded, no MESSAGE_UPLOAD_EVENT, send a msg for UPLOAD_POLICY_INTERVAL " + this.d);
            } else if (this.c == 0 || this.c == 1) {
                this.f.sendEmptyMessageDelayed(1, 60000);
                h.a("UPE", "onEventRecorded, no MESSAGE_UPLOAD_EVENT, send a msg for UPLOAD_POLICY %d with delay %dms ", Integer.valueOf(this.c), Long.valueOf(60000));
            } else {
                this.f.sendEmptyMessage(1);
                h.a("UPE", "onEventRecorded, no MESSAGE_UPLOAD_EVENT, send a msg for UPLOAD_POLICY " + this.c);
            }
        } catch (Exception e2) {
            h.a("onEventRecorded exception: ", (Throwable) e2);
        }
    }

    public void d() {
        this.e = System.currentTimeMillis();
        d.b().a((a) new a() {
            public void a() {
                if (MiStatInterface.isExceptionCatcherEnabled() && !MiStatInterface.shouldExceptionUploadImmediately()) {
                    for (b.a a2 : b.b()) {
                        b.a(a2, false);
                    }
                    b.c();
                }
            }
        });
    }

    public boolean e() {
        if (l.b()) {
            h.a("RemoteDataUploadManager isUploading, should NOT upload now");
            return false;
        }
        switch (this.c) {
            case 0:
                return true;
            case 1:
                if (j.a(c.a())) {
                    return true;
                }
                return false;
            case 2:
                int d2 = new f().d();
                if (!this.b && d2 < 50) {
                    return false;
                }
                this.b = false;
                return true;
            case 4:
                long currentTimeMillis = System.currentTimeMillis();
                if (!this.b && currentTimeMillis - this.e <= this.d) {
                    return false;
                }
                this.b = false;
                return true;
            default:
                return false;
        }
    }

    public long f() {
        return this.d;
    }

    public int g() {
        return this.c;
    }
}
