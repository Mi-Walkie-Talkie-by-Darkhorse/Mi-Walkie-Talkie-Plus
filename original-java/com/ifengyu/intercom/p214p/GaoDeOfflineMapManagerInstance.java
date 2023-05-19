package com.ifengyu.intercom.p214p;

import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.event.OfflineMapDownloadedEvent;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.ifengyu.intercom.p.u */
/* loaded from: classes2.dex */
public class GaoDeOfflineMapManagerInstance {

    /* renamed from: a */
    private static OfflineMapManager f14483a = null;

    /* renamed from: b */
    private static List<InterfaceC4160b> f14484b = null;

    /* renamed from: c */
    private static boolean f14485c = false;

    /* compiled from: GaoDeOfflineMapManagerInstance.java */
    /* renamed from: com.ifengyu.intercom.p.u$a */
    /* loaded from: classes2.dex */
    class C4159a implements OfflineMapManager.OfflineMapDownloadListener {
        C4159a() {
        }

        @Override // com.amap.api.maps.offlinemap.OfflineMapManager.OfflineMapDownloadListener
        public void onCheckUpdate(boolean z, String str) {
        }

        @Override // com.amap.api.maps.offlinemap.OfflineMapManager.OfflineMapDownloadListener
        public void onDownload(int i, int i2, String str) {
            for (InterfaceC4160b interfaceC4160b : GaoDeOfflineMapManagerInstance.f14484b) {
                interfaceC4160b.onDownload(i, i2, str);
            }
            if (i == 4 && i2 == 100) {
                if (MiTalkClientUtil.m11215e() != null && MiTalkClientUtil.m11215e().equals(str)) {
                    MiTalkClientUtil.m11210g0(true);
                }
                MiBus.getInstance().m6412i(new OfflineMapDownloadedEvent());
            }
        }

        @Override // com.amap.api.maps.offlinemap.OfflineMapManager.OfflineMapDownloadListener
        public void onRemove(boolean z, String str, String str2) {
            for (InterfaceC4160b interfaceC4160b : GaoDeOfflineMapManagerInstance.f14484b) {
                interfaceC4160b.onRemove(z, str, str2);
            }
        }
    }

    /* compiled from: GaoDeOfflineMapManagerInstance.java */
    /* renamed from: com.ifengyu.intercom.p.u$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC4160b {
        void onDownload(int i, int i2, String str);

        void onRemove(boolean z, String str, String str2);
    }

    /* renamed from: b */
    public static void m11072b(InterfaceC4160b interfaceC4160b) {
        if (f14484b == null) {
            f14484b = new ArrayList();
        }
        f14484b.add(interfaceC4160b);
    }

    /* renamed from: c */
    public static OfflineMapManager m11071c() {
        if (f14483a == null) {
            try {
                f14483a = new OfflineMapManager(MiTalkiApp.m14296h(), new C4159a());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return f14483a;
    }

    /* renamed from: d */
    public static boolean m11070d() {
        return f14485c;
    }

    /* renamed from: e */
    public static void m11069e(InterfaceC4160b interfaceC4160b) {
        List<InterfaceC4160b> list = f14484b;
        if (list != null) {
            list.remove(interfaceC4160b);
        }
    }

    /* renamed from: f */
    public static void m11068f(boolean z) {
        f14485c = z;
    }
}
