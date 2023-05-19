package com.xiaomi.push.service;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.umeng.analytics.pro.UMCommonContent;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.AbstractC6191gj;
import com.xiaomi.push.C6013bi;
import com.xiaomi.push.C6058cq;
import com.xiaomi.push.C6062cu;
import com.xiaomi.push.C6097dv;
import com.xiaomi.push.C6099dw;
import com.xiaomi.push.C6167fu;
import com.xiaomi.push.C6170fw;
import com.xiaomi.push.C6225hl;
import com.xiaomi.push.C6469u;
import com.xiaomi.push.EnumC6158fm;
import com.xiaomi.push.InterfaceC6061ct;
import com.xiaomi.push.service.C6404bs;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.xiaomi.push.service.bi */
/* loaded from: classes2.dex */
public class C6392bi extends C6404bs.AbstractC6405a implements C6062cu.InterfaceC6063a {

    /* renamed from: a */
    private long f23101a;

    /* renamed from: a */
    private XMPushService f23102a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.service.bi$a */
    /* loaded from: classes2.dex */
    public static class C6393a implements C6062cu.InterfaceC6064b {
        C6393a() {
        }

        @Override // com.xiaomi.push.C6062cu.InterfaceC6064b
        /* renamed from: a */
        public String mo1474a(String str) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            buildUpon.appendQueryParameter("sdkver", String.valueOf(47));
            buildUpon.appendQueryParameter("osver", String.valueOf(Build.VERSION.SDK_INT));
            buildUpon.appendQueryParameter(UMCommonContent.f19432x, C6225hl.m2611a(Build.MODEL + Constants.COLON_SEPARATOR + Build.VERSION.INCREMENTAL));
            buildUpon.appendQueryParameter("mi", String.valueOf(C6469u.m1241a()));
            String builder = buildUpon.toString();
            AbstractC5876b.m4139c("fetch bucket from : " + builder);
            URL url = new URL(builder);
            int port = url.getPort() == -1 ? 80 : url.getPort();
            try {
                long currentTimeMillis = System.currentTimeMillis();
                String m3671a = C6013bi.m3671a(C6469u.m1240a(), url);
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                C6170fw.m2849a(url.getHost() + Constants.COLON_SEPARATOR + port, (int) currentTimeMillis2, null);
                return m3671a;
            } catch (IOException e) {
                C6170fw.m2849a(url.getHost() + Constants.COLON_SEPARATOR + port, -1, e);
                throw e;
            }
        }
    }

    /* renamed from: com.xiaomi.push.service.bi$b */
    /* loaded from: classes2.dex */
    static class C6394b extends C6062cu {
        protected C6394b(Context context, InterfaceC6061ct interfaceC6061ct, C6062cu.InterfaceC6064b interfaceC6064b, String str) {
            super(context, interfaceC6061ct, interfaceC6064b, str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xiaomi.push.C6062cu
        /* renamed from: a */
        public String mo1473a(ArrayList<String> arrayList, String str, String str2, boolean z) {
            try {
                if (C6167fu.m2865a().m2863a()) {
                    str2 = C6404bs.m1446a();
                }
                return super.mo1473a(arrayList, str, str2, z);
            } catch (IOException e) {
                C6170fw.m2852a(0, EnumC6158fm.GSLB_ERR.m2919a(), 1, null, C6013bi.m3661c(C6062cu.f21206a) ? 1 : 0);
                throw e;
            }
        }
    }

    C6392bi(XMPushService xMPushService) {
        this.f23102a = xMPushService;
    }

    /* renamed from: a */
    public static void m1475a(XMPushService xMPushService) {
        C6392bi c6392bi = new C6392bi(xMPushService);
        C6404bs.m1447a().m1443a(c6392bi);
        synchronized (C6062cu.class) {
            C6062cu.m3453a(c6392bi);
            C6062cu.m3454a(xMPushService, null, new C6393a(), "0", "push", "2.2");
        }
    }

    @Override // com.xiaomi.push.C6062cu.InterfaceC6063a
    /* renamed from: a */
    public C6062cu mo1476a(Context context, InterfaceC6061ct interfaceC6061ct, C6062cu.InterfaceC6064b interfaceC6064b, String str) {
        return new C6394b(context, interfaceC6061ct, interfaceC6064b, str);
    }

    @Override // com.xiaomi.push.service.C6404bs.AbstractC6405a
    /* renamed from: a */
    public void mo1433a(C6097dv.C6098a c6098a) {
    }

    @Override // com.xiaomi.push.service.C6404bs.AbstractC6405a
    /* renamed from: a */
    public void mo1432a(C6099dw.C6101b c6101b) {
        C6058cq m3443b;
        if (c6101b.m3283b() && c6101b.m3287a() && System.currentTimeMillis() - this.f23101a > 3600000) {
            AbstractC5876b.m4147a("fetch bucket :" + c6101b.m3287a());
            this.f23101a = System.currentTimeMillis();
            C6062cu m3459a = C6062cu.m3459a();
            m3459a.m3456a();
            m3459a.m3444b();
            AbstractC6191gj m1801a = this.f23102a.m1801a();
            if (m1801a == null || (m3443b = m3459a.m3443b(m1801a.m2763a().m2730c())) == null) {
                return;
            }
            ArrayList<String> m3489a = m3443b.m3489a();
            boolean z = true;
            Iterator<String> it2 = m3489a.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (it2.next().equals(m1801a.mo2721a())) {
                    z = false;
                    break;
                }
            }
            if (!z || m3489a.isEmpty()) {
                return;
            }
            AbstractC5876b.m4147a("bucket changed, force reconnect");
            this.f23102a.m1793a(0, (Exception) null);
            this.f23102a.m1761a(false);
        }
    }
}
