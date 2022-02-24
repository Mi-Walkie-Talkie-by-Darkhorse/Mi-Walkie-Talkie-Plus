package com.xiaomi.push.service;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.umeng.analytics.pro.ai;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.cq;
import com.xiaomi.push.ct;
import com.xiaomi.push.cu;
import com.xiaomi.push.dv;
import com.xiaomi.push.dw;
import com.xiaomi.push.fm;
import com.xiaomi.push.fu;
import com.xiaomi.push.fw;
import com.xiaomi.push.gj;
import com.xiaomi.push.hl;
import com.xiaomi.push.service.bs;
import com.xiaomi.push.u;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* loaded from: classes2.dex */
public class bi extends bs.a implements cu.a {

    /* renamed from: a  reason: collision with root package name */
    private long f9285a;

    /* renamed from: a  reason: collision with other field name */
    private XMPushService f956a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a implements cu.b {
        a() {
        }

        @Override // com.xiaomi.push.cu.b
        public String a(String str) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            buildUpon.appendQueryParameter("sdkver", String.valueOf(47));
            buildUpon.appendQueryParameter("osver", String.valueOf(Build.VERSION.SDK_INT));
            buildUpon.appendQueryParameter(ai.x, hl.a(Build.MODEL + Constants.COLON_SEPARATOR + Build.VERSION.INCREMENTAL));
            buildUpon.appendQueryParameter("mi", String.valueOf(u.a()));
            String builder = buildUpon.toString();
            com.xiaomi.channel.commonutils.logger.b.c("fetch bucket from : " + builder);
            URL url = new URL(builder);
            int port = url.getPort() == -1 ? 80 : url.getPort();
            try {
                long currentTimeMillis = System.currentTimeMillis();
                String a2 = com.xiaomi.push.bi.a(u.m658a(), url);
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                fw.a(url.getHost() + Constants.COLON_SEPARATOR + port, (int) currentTimeMillis2, null);
                return a2;
            } catch (IOException e) {
                fw.a(url.getHost() + Constants.COLON_SEPARATOR + port, -1, e);
                throw e;
            }
        }
    }

    /* loaded from: classes2.dex */
    static class b extends cu {
        protected b(Context context, ct ctVar, cu.b bVar, String str) {
            super(context, ctVar, bVar, str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xiaomi.push.cu
        public String a(ArrayList<String> arrayList, String str, String str2, boolean z) {
            try {
                if (fu.m284a().m289a()) {
                    str2 = bs.m625a();
                }
                return super.a(arrayList, str, str2, z);
            } catch (IOException e) {
                fw.a(0, fm.GSLB_ERR.a(), 1, null, com.xiaomi.push.bi.c(cu.f8823a) ? 1 : 0);
                throw e;
            }
        }
    }

    bi(XMPushService xMPushService) {
        this.f956a = xMPushService;
    }

    public static void a(XMPushService xMPushService) {
        bi biVar = new bi(xMPushService);
        bs.a().a(biVar);
        synchronized (cu.class) {
            cu.a(biVar);
            cu.a(xMPushService, null, new a(), "0", "push", "2.2");
        }
    }

    @Override // com.xiaomi.push.cu.a
    public cu a(Context context, ct ctVar, cu.b bVar, String str) {
        return new b(context, ctVar, bVar, str);
    }

    @Override // com.xiaomi.push.service.bs.a
    public void a(dv.a aVar) {
    }

    @Override // com.xiaomi.push.service.bs.a
    public void a(dw.b bVar) {
        cq b2;
        if (bVar.mo225b() && bVar.mo223a() && System.currentTimeMillis() - this.f9285a > OpenStreetMapTileProviderConstants.ONE_HOUR) {
            com.xiaomi.channel.commonutils.logger.b.m1a("fetch bucket :" + bVar.mo223a());
            this.f9285a = System.currentTimeMillis();
            cu a2 = cu.a();
            a2.m152a();
            a2.m155b();
            gj a3 = this.f956a.m549a();
            if (a3 != null && (b2 = a2.b(a3.m314a().c())) != null) {
                ArrayList<String> a4 = b2.m140a();
                boolean z = true;
                Iterator<String> it = a4.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().equals(a3.m315a())) {
                            z = false;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (z && !a4.isEmpty()) {
                    com.xiaomi.channel.commonutils.logger.b.m1a("bucket changed, force reconnect");
                    this.f956a.a(0, (Exception) null);
                    this.f956a.a(false);
                }
            }
        }
    }
}
