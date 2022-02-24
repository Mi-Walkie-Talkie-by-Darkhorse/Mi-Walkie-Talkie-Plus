package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.bu;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
class bv implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bu f9302a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bv(bu buVar) {
        this.f9302a = buVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ConcurrentHashMap concurrentHashMap;
        try {
            concurrentHashMap = this.f9302a.f972a;
            for (bu.a aVar : concurrentHashMap.values()) {
                aVar.run();
            }
        } catch (Exception e) {
            b.m1a("Sync job exception :" + e.getMessage());
        }
        this.f9302a.f973a = false;
    }
}
