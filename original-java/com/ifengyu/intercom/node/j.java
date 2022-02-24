package com.ifengyu.intercom.node;

import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.i.o;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.MitalkProtos;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: NodeService.java */
/* loaded from: classes2.dex */
public class j implements g {

    /* renamed from: c  reason: collision with root package name */
    private static j f5922c;

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f5923a = false;

    /* renamed from: b  reason: collision with root package name */
    private Set<h> f5924b = new HashSet();

    /* compiled from: NodeService.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5925a;

        static {
            int[] iArr = new int[ConnectionFailedReason.values().length];
            f5925a = iArr;
            try {
                iArr[ConnectionFailedReason.TIMEOUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5925a[ConnectionFailedReason.DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5925a[ConnectionFailedReason.VERSION_NOT_SUPPORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5925a[ConnectionFailedReason.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5925a[ConnectionFailedReason.LOWPOWER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private j() {
    }

    public static j b() {
        if (f5922c == null) {
            f5922c = new j();
        }
        return f5922c;
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(int i) {
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(i iVar) {
        z.d("NodeService", "onDeviceConnected");
        this.f5923a = true;
        for (h hVar : this.f5924b) {
            hVar.d(iVar.a());
        }
        MiTalkiApp.b().d(true);
        MiTalkiApp.b().c(true);
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, b bVar) {
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, l lVar) {
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, m mVar) {
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, MitalkProtos.Command command) {
    }

    @Override // com.ifengyu.intercom.node.g
    public void b(String str) {
        z.d("NodeService", "onDeviceConnConfrimRequest");
        for (h hVar : this.f5924b) {
            hVar.e(str);
        }
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str) {
        z.d("NodeService", "onDeviceDisConnected");
        this.f5923a = false;
        for (h hVar : this.f5924b) {
            hVar.f(str);
        }
    }

    public void b(h hVar) {
        Set<h> set = this.f5924b;
        o.a(hVar);
        set.remove(hVar);
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, ConnectionFailedReason connectionFailedReason) {
        z.d("NodeService", "onDeviceConnectFailed");
        Iterator<h> it = this.f5924b.iterator();
        while (it.hasNext()) {
            int i = a.f5925a[connectionFailedReason.ordinal()];
            if (i == 2) {
                it.next().c(str);
            } else if (i == 3) {
                it.next().a(str);
            } else if (i == 5) {
                it.next().b(str);
            }
        }
    }

    public boolean a() {
        return this.f5923a;
    }

    public void a(h hVar) {
        Set<h> set = this.f5924b;
        o.a(hVar);
        set.add(hVar);
    }
}
