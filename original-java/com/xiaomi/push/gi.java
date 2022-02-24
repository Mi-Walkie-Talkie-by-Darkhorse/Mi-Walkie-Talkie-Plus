package com.xiaomi.push;

import com.xiaomi.channel.commonutils.logger.b;
import java.util.Date;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class gi implements gm {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ gh f8988a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gi(gh ghVar) {
        this.f8988a = ghVar;
    }

    @Override // com.xiaomi.push.gm
    public void a(gj gjVar) {
        b.c("[Slim] " + this.f8988a.f421a.format(new Date()) + " Connection started (" + this.f8988a.f418a.hashCode() + ")");
    }

    @Override // com.xiaomi.push.gm
    public void a(gj gjVar, int i, Exception exc) {
        b.c("[Slim] " + this.f8988a.f421a.format(new Date()) + " Connection closed (" + this.f8988a.f418a.hashCode() + ")");
    }

    @Override // com.xiaomi.push.gm
    public void a(gj gjVar, Exception exc) {
        b.c("[Slim] " + this.f8988a.f421a.format(new Date()) + " Reconnection failed due to an exception (" + this.f8988a.f418a.hashCode() + ")");
        exc.printStackTrace();
    }

    @Override // com.xiaomi.push.gm
    public void b(gj gjVar) {
        b.c("[Slim] " + this.f8988a.f421a.format(new Date()) + " Connection reconnected (" + this.f8988a.f418a.hashCode() + ")");
    }
}
