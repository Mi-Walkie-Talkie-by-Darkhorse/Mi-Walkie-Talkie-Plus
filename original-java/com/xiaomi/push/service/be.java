package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class be implements bd.b.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bd.b f9279a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public be(bd.b bVar) {
        this.f9279a = bVar;
    }

    @Override // com.xiaomi.push.service.bd.b.a
    public void a(bd.c cVar, bd.c cVar2, int i) {
        XMPushService.c cVar3;
        XMPushService.c cVar4;
        if (cVar2 == bd.c.binding) {
            XMPushService xMPushService = this.f9279a.f943a;
            cVar4 = this.f9279a.f942a;
            xMPushService.a(cVar4, OpenStreetMapTileProviderConstants.ONE_MINUTE);
            return;
        }
        XMPushService xMPushService2 = this.f9279a.f943a;
        cVar3 = this.f9279a.f942a;
        xMPushService2.b(cVar3);
    }
}
