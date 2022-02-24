package com.ifengyu.intercom.node;

import com.ifengyu.intercom.i.z;
import java.io.IOException;
import java.util.concurrent.Callable;

/* compiled from: CallableWrapper.java */
/* loaded from: classes2.dex */
public final class c implements Callable<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final String f5909a;

    /* renamed from: b  reason: collision with root package name */
    private final Callable<Void> f5910b;

    /* renamed from: c  reason: collision with root package name */
    private final p f5911c;

    public c(p pVar, String str, Callable<Void> callable) {
        this.f5911c = pVar;
        this.f5909a = str;
        this.f5910b = callable;
    }

    @Override // java.util.concurrent.Callable
    public Void call() {
        StringBuilder sb;
        try {
            try {
                try {
                    try {
                        ((n) Thread.currentThread()).a();
                        Void call = this.f5910b.call();
                        z.a("CallableWrapper", "CallableWrapper ending for thread " + Thread.currentThread().getName() + " " + Thread.currentThread());
                        this.f5911c.a(this.f5909a);
                        return call;
                    } catch (InterruptedException e) {
                        z.a("CallableWrapper", "Reader or writer was interrupted: " + e.getMessage());
                        Thread.currentThread().interrupt();
                        z.a("CallableWrapper", "CallableWrapper ending for thread " + Thread.currentThread().getName() + " " + Thread.currentThread());
                        this.f5911c.a(this.f5909a);
                        sb = new StringBuilder();
                        sb.append("CallableWrapper ending for thread ");
                        sb.append(Thread.currentThread().getName());
                        sb.append(" ");
                        sb.append(Thread.currentThread());
                        z.a("CallableWrapper", sb.toString());
                        this.f5911c.a(this.f5909a);
                        return null;
                    }
                } catch (Exception e2) {
                    z.a("CallableWrapper", "Unexpected exception in reader or writer:", e2);
                    z.a("CallableWrapper", "CallableWrapper ending for thread " + Thread.currentThread().getName() + " " + Thread.currentThread());
                    this.f5911c.a(this.f5909a);
                    sb = new StringBuilder();
                    sb.append("CallableWrapper ending for thread ");
                    sb.append(Thread.currentThread().getName());
                    sb.append(" ");
                    sb.append(Thread.currentThread());
                    z.a("CallableWrapper", sb.toString());
                    this.f5911c.a(this.f5909a);
                    return null;
                }
            } catch (IOException e3) {
                z.a("CallableWrapper", "Reader or writer threw an IOException: " + e3.getMessage());
                sb = new StringBuilder();
                sb.append("CallableWrapper ending for thread ");
                sb.append(Thread.currentThread().getName());
                sb.append(" ");
                sb.append(Thread.currentThread());
                z.a("CallableWrapper", sb.toString());
                this.f5911c.a(this.f5909a);
                return null;
            }
        } catch (Throwable th) {
            z.a("CallableWrapper", "CallableWrapper ending for thread " + Thread.currentThread().getName() + " " + Thread.currentThread());
            this.f5911c.a(this.f5909a);
            throw th;
        }
    }
}
