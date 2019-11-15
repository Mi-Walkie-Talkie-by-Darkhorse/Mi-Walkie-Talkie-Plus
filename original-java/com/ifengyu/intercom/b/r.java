package com.ifengyu.intercom.b;

import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.amap.api.maps.offlinemap.OfflineMapManager.OfflineMapDownloadListener;
import com.ifengyu.intercom.MiTalkiApp;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GaoDeOfflineMapManagerInstance */
public class r {
    private static OfflineMapManager a;
    /* access modifiers changed from: private */
    public static List<a> b;
    private static boolean c = false;

    /* compiled from: GaoDeOfflineMapManagerInstance */
    public interface a {
        void a(int i, int i2, String str);

        void a(boolean z, String str, String str2);
    }

    public static OfflineMapManager a() {
        if (a == null) {
            a = new OfflineMapManager(MiTalkiApp.a(), new OfflineMapDownloadListener() {
                public void onDownload(int i, int i2, String str) {
                    for (a a : r.b) {
                        a.a(i, i2, str);
                    }
                    if (i == 4 && i2 == 100 && w.V() != null && w.V().equals(str)) {
                        w.m(true);
                    }
                }

                public void onCheckUpdate(boolean z, String str) {
                }

                public void onRemove(boolean z, String str, String str2) {
                    for (a a : r.b) {
                        a.a(z, str, str2);
                    }
                }
            });
        }
        return a;
    }

    public static void a(a aVar) {
        if (b == null) {
            b = new ArrayList();
        }
        b.add(aVar);
    }

    public static void b(a aVar) {
        if (b != null) {
            b.remove(aVar);
        }
    }

    public static void a(boolean z) {
        c = z;
    }

    public static boolean b() {
        return c;
    }
}
