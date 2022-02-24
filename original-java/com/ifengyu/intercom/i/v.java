package com.ifengyu.intercom.i;

import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.ifengyu.intercom.MiTalkiApp;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GaoDeOfflineMapManagerInstance.java */
/* loaded from: classes2.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    private static OfflineMapManager f5327a = null;

    /* renamed from: b  reason: collision with root package name */
    private static List<b> f5328b = null;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f5329c = false;

    /* compiled from: GaoDeOfflineMapManagerInstance.java */
    /* loaded from: classes2.dex */
    static class a implements OfflineMapManager.OfflineMapDownloadListener {
        a() {
        }

        @Override // com.amap.api.maps.offlinemap.OfflineMapManager.OfflineMapDownloadListener
        public void onCheckUpdate(boolean z, String str) {
        }

        @Override // com.amap.api.maps.offlinemap.OfflineMapManager.OfflineMapDownloadListener
        public void onDownload(int i, int i2, String str) {
            for (b bVar : v.f5328b) {
                bVar.onDownload(i, i2, str);
            }
            if (i == 4 && i2 == 100 && d0.e() != null && d0.e().equals(str)) {
                d0.b(true);
            }
        }

        @Override // com.amap.api.maps.offlinemap.OfflineMapManager.OfflineMapDownloadListener
        public void onRemove(boolean z, String str, String str2) {
            for (b bVar : v.f5328b) {
                bVar.onRemove(z, str, str2);
            }
        }
    }

    /* compiled from: GaoDeOfflineMapManagerInstance.java */
    /* loaded from: classes2.dex */
    public interface b {
        void onDownload(int i, int i2, String str);

        void onRemove(boolean z, String str, String str2);
    }

    public static OfflineMapManager b() {
        if (f5327a == null) {
            f5327a = new OfflineMapManager(MiTalkiApp.b(), new a());
        }
        return f5327a;
    }

    public static boolean c() {
        return f5329c;
    }

    public static void a(b bVar) {
        if (f5328b == null) {
            f5328b = new ArrayList();
        }
        f5328b.add(bVar);
    }

    public static void b(b bVar) {
        List<b> list = f5328b;
        if (list != null) {
            list.remove(bVar);
        }
    }

    public static void a(boolean z) {
        f5329c = z;
    }
}
