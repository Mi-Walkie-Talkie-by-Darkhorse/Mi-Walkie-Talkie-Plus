package com.xiaomi.push;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.util.Date;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.gi */
/* loaded from: classes2.dex */
public class C6190gi implements InterfaceC6195gm {

    /* renamed from: a */
    final /* synthetic */ C6188gh f21727a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6190gi(C6188gh c6188gh) {
        this.f21727a = c6188gh;
    }

    @Override // com.xiaomi.push.InterfaceC6195gm
    /* renamed from: a */
    public void mo1787a(AbstractC6191gj abstractC6191gj) {
        AbstractC5876b.m4139c("[Slim] " + this.f21727a.f21722a.format(new Date()) + " Connection started (" + this.f21727a.f21719a.hashCode() + ")");
    }

    @Override // com.xiaomi.push.InterfaceC6195gm
    /* renamed from: a */
    public void mo1786a(AbstractC6191gj abstractC6191gj, int i, Exception exc) {
        AbstractC5876b.m4139c("[Slim] " + this.f21727a.f21722a.format(new Date()) + " Connection closed (" + this.f21727a.f21719a.hashCode() + ")");
    }

    @Override // com.xiaomi.push.InterfaceC6195gm
    /* renamed from: a */
    public void mo1785a(AbstractC6191gj abstractC6191gj, Exception exc) {
        AbstractC5876b.m4139c("[Slim] " + this.f21727a.f21722a.format(new Date()) + " Reconnection failed due to an exception (" + this.f21727a.f21719a.hashCode() + ")");
        exc.printStackTrace();
    }

    @Override // com.xiaomi.push.InterfaceC6195gm
    /* renamed from: b */
    public void mo1753b(AbstractC6191gj abstractC6191gj) {
        AbstractC5876b.m4139c("[Slim] " + this.f21727a.f21722a.format(new Date()) + " Connection reconnected (" + this.f21727a.f21719a.hashCode() + ")");
    }
}
