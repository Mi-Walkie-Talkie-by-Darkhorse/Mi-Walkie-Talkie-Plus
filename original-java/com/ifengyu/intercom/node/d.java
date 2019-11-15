package com.ifengyu.intercom.node;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.ifengyu.intercom.b.s;
import java.io.IOException;
import java.util.concurrent.Callable;

/* compiled from: CallableWrapper */
public final class d implements Callable<Void> {
    private final String a;
    private final Callable<Void> b;
    private final q c;

    public d(q qVar, String str, Callable<Void> callable) {
        this.c = qVar;
        this.a = str;
        this.b = callable;
    }

    /* renamed from: a */
    public Void call() {
        String str;
        StringBuilder sb;
        String str2;
        StringBuilder append;
        Thread currentThread;
        String name;
        StringBuilder append2;
        String str3;
        StringBuilder append3;
        Thread currentThread2;
        StringBuilder append4;
        String str4;
        q qVar;
        String str5;
        try {
            ((o) Thread.currentThread()).b();
            return (Void) this.b.call();
        } catch (IOException e) {
            s.b("CallableWrapper", "Reader or writer threw an IOException: " + e.getMessage());
        } catch (InterruptedException e2) {
            s.b("CallableWrapper", "Reader or writer was interrupted: " + e2.getMessage());
            Thread.currentThread().interrupt();
            s.b("CallableWrapper", "CallableWrapper ending for thread " + Thread.currentThread().getName() + Token.SEPARATOR + Thread.currentThread());
            this.c.a(this.a);
        } catch (Exception e3) {
            s.b("CallableWrapper", "Unexpected exception in reader or writer:", e3);
            s.b("CallableWrapper", "CallableWrapper ending for thread " + Thread.currentThread().getName() + Token.SEPARATOR + Thread.currentThread());
            this.c.a(this.a);
        } finally {
            s.b("CallableWrapper", "CallableWrapper ending for thread " + Thread.currentThread().getName() + Token.SEPARATOR + Thread.currentThread());
            this.c.a(this.a);
        }
        return null;
    }
}
