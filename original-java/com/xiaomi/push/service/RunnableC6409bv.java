package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.C6407bu;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.xiaomi.push.service.bv */
/* loaded from: classes2.dex */
class RunnableC6409bv implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C6407bu f23139a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6409bv(C6407bu c6407bu) {
        this.f23139a = c6407bu;
    }

    @Override // java.lang.Runnable
    public void run() {
        ConcurrentHashMap concurrentHashMap;
        try {
            concurrentHashMap = this.f23139a.f23135a;
            for (C6407bu.AbstractRunnableC6408a abstractRunnableC6408a : concurrentHashMap.values()) {
                abstractRunnableC6408a.run();
            }
        } catch (Exception e) {
            AbstractC5876b.m4147a("Sync job exception :" + e.getMessage());
        }
        this.f23139a.f23136a = false;
    }
}
