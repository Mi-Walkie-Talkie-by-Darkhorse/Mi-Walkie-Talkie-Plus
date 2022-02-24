package com.xiaomi.push;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class gg extends Thread {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ gf f8984a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gg(gf gfVar, String str) {
        super(str);
        this.f8984a = gfVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        ga gaVar;
        try {
            gaVar = this.f8984a.f8983a;
            gaVar.m308a();
        } catch (Exception e) {
            this.f8984a.c(9, e);
        }
    }
}
