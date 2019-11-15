package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.e;
import com.xiaomi.push.service.h;
import com.xiaomi.xmpush.thrift.a;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.ar;
import com.xiaomi.xmpush.thrift.k;
import com.xiaomi.xmpush.thrift.p;
import com.xiaomi.xmpush.thrift.t;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.apache.thrift.f;

public class g {
    private static volatile g a;
    private final String b = "GeoFenceRegMessageProcessor.";
    private Context c;

    private g(Context context) {
        this.c = context;
    }

    public static g a(Context context) {
        if (a == null) {
            synchronized (g.class) {
                if (a == null) {
                    a = new g(context);
                }
            }
        }
        return a;
    }

    private k a(af afVar, boolean z) {
        if (z && !h.a(this.c)) {
            return null;
        }
        if (z && !h.c(this.c)) {
            return null;
        }
        try {
            k kVar = new k();
            ar.a(kVar, afVar.m());
            return kVar;
        } catch (f e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    private t a(boolean z) {
        t tVar = new t();
        TreeSet treeSet = new TreeSet();
        if (z) {
            Iterator it = e.a(this.c).a().iterator();
            while (it.hasNext()) {
                treeSet.add((k) it.next());
            }
        }
        tVar.a((Set<k>) treeSet);
        return tVar;
    }

    private void a(k kVar) {
        byte[] a2 = ar.a(kVar);
        af afVar = new af("-1", false);
        afVar.c(p.GeoPackageUninstalled.T);
        afVar.a(a2);
        z.a(this.c).a(afVar, a.Notification, true, null);
        b.a("GeoFenceRegMessageProcessor.report package not exist geo_fencing id:" + kVar.a());
    }

    private void a(k kVar, boolean z) {
        byte[] a2 = ar.a(kVar);
        af afVar = new af("-1", false);
        afVar.c(z ? p.GeoRegsiterResult.T : p.GeoUnregsiterResult.T);
        afVar.a(a2);
        z.a(this.c).a(afVar, a.Notification, true, null);
        b.a("GeoFenceRegMessageProcessor.report geo_fencing id:" + kVar.a() + Token.SEPARATOR + (z ? "geo_reg" : "geo_unreg"));
    }

    public static boolean a(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        return TextUtils.equals("1", (CharSequence) map.get("__geo_local_cache"));
    }

    private boolean d(af afVar) {
        return a(afVar.i()) && h.d(this.c);
    }

    public void a(af afVar) {
        if (h.e(this.c)) {
            boolean d = d(afVar);
            k a2 = a(afVar, d);
            if (a2 == null) {
                b.d("registration convert geofence object failed notification_id:" + afVar.c());
            } else if (!com.xiaomi.channel.commonutils.android.b.g(this.c, a2.g())) {
                if (d) {
                    a(a2);
                }
            } else if (!d) {
                a(a2, true);
            } else {
                if (e.a(this.c).a(a2) == -1) {
                    b.a("GeoFenceRegMessageProcessor. insert a new geofence failed about geo_id:" + a2.a());
                }
                new h(this.c).a(a2);
                a(a2, true);
                b.a("receive geo reg notification");
            }
        }
    }

    public void b(af afVar) {
        if (h.e(this.c)) {
            boolean d = d(afVar);
            k a2 = a(afVar, d);
            if (a2 == null) {
                b.d("unregistration convert geofence object failed notification_id:" + afVar.c());
            } else if (!com.xiaomi.channel.commonutils.android.b.g(this.c, a2.g())) {
                if (d) {
                    a(a2);
                }
            } else if (!d) {
                a(a2, false);
            } else {
                if (e.a(this.c).d(a2.a()) == 0) {
                    b.a("GeoFenceRegMessageProcessor. delete a geofence about geo_id:" + a2.a() + " falied");
                }
                if (com.xiaomi.push.service.g.a(this.c).b(a2.a()) == 0) {
                    b.a("GeoFenceRegMessageProcessor. delete all geofence messages about geo_id:" + a2.a() + " failed");
                }
                new h(this.c).a(a2.a());
                a(a2, false);
                b.a("receive geo unreg notification");
            }
        }
    }

    public void c(af afVar) {
        if (h.e(this.c)) {
            boolean d = d(afVar);
            if (d && !h.a(this.c)) {
                return;
            }
            if ((!d || h.c(this.c)) && com.xiaomi.channel.commonutils.android.b.g(this.c, afVar.i)) {
                t a2 = a(d);
                byte[] a3 = ar.a(a2);
                af afVar2 = new af("-1", false);
                afVar2.c(p.GeoUpload.T);
                afVar2.a(a3);
                z.a(this.c).a(afVar2, a.Notification, true, null);
                b.c("GeoFenceRegMessageProcessor.sync_geo_data. geos size:" + a2.a().size());
            }
        }
    }
}
