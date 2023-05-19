package com.xiaomi.push.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.C5971ad;
import com.xiaomi.push.C6013bi;
import com.xiaomi.push.C6151fg;
import com.xiaomi.push.C6206gx;
import com.xiaomi.push.C6207gy;
import com.xiaomi.push.C6209gz;
import com.xiaomi.push.C6213hc;
import com.xiaomi.push.C6225hl;
import com.xiaomi.push.C6306l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.NameValuePair;

/* loaded from: classes2.dex */
public class ServiceClient {

    /* renamed from: a */
    private static ServiceClient f22854a;

    /* renamed from: a */
    private static String f22855a;

    /* renamed from: a */
    private Context f22857a;

    /* renamed from: a */
    private boolean f22860a;

    /* renamed from: b */
    private Messenger f22861b;

    /* renamed from: b */
    private static String f22856b = C6225hl.m2612a(5) + Constants.ACCEPT_TIME_SEPARATOR_SERVER;

    /* renamed from: a */
    private static long f22853a = 0;

    /* renamed from: a */
    private Messenger f22858a = null;

    /* renamed from: a */
    private List<Message> f22859a = new ArrayList();

    /* renamed from: b */
    private boolean f22862b = false;

    private ServiceClient(Context context) {
        this.f22860a = false;
        this.f22857a = context.getApplicationContext();
        if (m1812a()) {
            AbstractC5876b.m4139c("use miui push service");
            this.f22860a = true;
        }
    }

    /* renamed from: a */
    private Intent m1815a() {
        if (!isMiuiPushServiceEnabled()) {
            Intent intent = new Intent(this.f22857a, XMPushService.class);
            intent.putExtra(AbstractC6391bh.f23062C, this.f22857a.getPackageName());
            m1802b();
            return intent;
        }
        Intent intent2 = new Intent();
        intent2.setPackage("com.xiaomi.xmsf");
        intent2.setClassName("com.xiaomi.xmsf", m1814a());
        intent2.putExtra(AbstractC6391bh.f23062C, this.f22857a.getPackageName());
        m1813a();
        return intent2;
    }

    /* renamed from: a */
    private Message m1811a(Intent intent) {
        Message obtain = Message.obtain();
        obtain.what = 17;
        obtain.obj = intent;
        return obtain;
    }

    /* renamed from: a */
    private String m1814a() {
        try {
            return this.f22857a.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= 106 ? "com.xiaomi.push.service.XMPushService" : "com.xiaomi.xmsf.push.service.XMPushService";
        } catch (Exception unused) {
            return "com.xiaomi.xmsf.push.service.XMPushService";
        }
    }

    /* renamed from: a */
    private String m1803a(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        int i = 1;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append(entry.getKey());
            sb.append(Constants.COLON_SEPARATOR);
            sb.append(entry.getValue());
            if (i < map.size()) {
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            }
            i++;
        }
        return sb.toString();
    }

    /* renamed from: a */
    private Map<String, String> m1804a(List<NameValuePair> list) {
        HashMap hashMap = new HashMap();
        if (list != null && list.size() > 0) {
            for (NameValuePair nameValuePair : list) {
                if (nameValuePair != null) {
                    hashMap.put(nameValuePair.getName(), nameValuePair.getValue());
                }
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    private void m1813a() {
        this.f22857a.getPackageManager().setComponentEnabledSetting(new ComponentName(this.f22857a, XMPushService.class), 2, 1);
    }

    /* renamed from: a */
    private synchronized void m1810a(Intent intent) {
        if (this.f22862b) {
            Message m1811a = m1811a(intent);
            if (this.f22859a.size() >= 50) {
                this.f22859a.remove(0);
            }
            this.f22859a.add(m1811a);
            return;
        }
        if (this.f22861b == null) {
            this.f22857a.bindService(intent, new ServiceConnectionC6403br(this), 1);
            this.f22862b = true;
            this.f22859a.clear();
            this.f22859a.add(m1811a(intent));
        } else {
            try {
                this.f22861b.send(m1811a(intent));
            } catch (RemoteException unused) {
                this.f22861b = null;
                this.f22862b = false;
            }
        }
    }

    /* renamed from: a */
    private void m1809a(Intent intent, String str, String str2, String str3, String str4, String str5, boolean z, Map<String, String> map, Map<String, String> map2) {
        intent.putExtra(AbstractC6391bh.f23092r, str);
        intent.putExtra(AbstractC6391bh.f23095u, str2);
        intent.putExtra(AbstractC6391bh.f23097w, str3);
        intent.putExtra(AbstractC6391bh.f23099y, str5);
        intent.putExtra(AbstractC6391bh.f23098x, str4);
        intent.putExtra(AbstractC6391bh.f23100z, z);
        intent.putExtra(AbstractC6391bh.f23066G, f22855a);
        intent.putExtra(AbstractC6391bh.f23070K, this.f22858a);
        if (map != null && map.size() > 0) {
            String m1803a = m1803a(map);
            if (!TextUtils.isEmpty(m1803a)) {
                intent.putExtra(AbstractC6391bh.f23060A, m1803a);
            }
        }
        if (map2 == null || map2.size() <= 0) {
            return;
        }
        String m1803a2 = m1803a(map2);
        if (TextUtils.isEmpty(m1803a2)) {
            return;
        }
        intent.putExtra(AbstractC6391bh.f23061B, m1803a2);
    }

    /* renamed from: a */
    private boolean m1812a() {
        if (C5971ad.f20995e) {
            return false;
        }
        try {
            PackageInfo packageInfo = this.f22857a.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4);
            if (packageInfo == null) {
                return false;
            }
            return packageInfo.versionCode >= 104;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: b */
    private void m1802b() {
        this.f22857a.getPackageManager().setComponentEnabledSetting(new ComponentName(this.f22857a, XMPushService.class), 1, 1);
    }

    public static ServiceClient getInstance(Context context) {
        if (f22854a == null) {
            f22854a = new ServiceClient(context);
        }
        return f22854a;
    }

    public static String getSession() {
        return f22855a;
    }

    public static void setSession(String str) {
        f22855a = str;
    }

    public boolean batchSendMessage(C6209gz[] c6209gzArr, boolean z) {
        if (C6013bi.m3662b(this.f22857a)) {
            Intent m1815a = m1815a();
            int length = c6209gzArr.length;
            Bundle[] bundleArr = new Bundle[length];
            for (int i = 0; i < c6209gzArr.length; i++) {
                String m2936a = C6151fg.m2936a();
                if (!TextUtils.isEmpty(m2936a)) {
                    C6206gx c6206gx = new C6206gx(com.tencent.connect.common.Constants.PARAM_PLATFORM_ID, null, null, null);
                    C6206gx c6206gx2 = new C6206gx("sent", null, null, null);
                    c6206gx2.m2696a(m2936a);
                    c6206gx.m2698a(c6206gx2);
                    c6209gzArr[i].m2662a(c6206gx);
                }
                AbstractC5876b.m4139c("SEND:" + c6209gzArr[i].mo2640a());
                bundleArr[i] = c6209gzArr[i].mo2641a();
            }
            if (length > 0) {
                m1815a.setAction(AbstractC6391bh.f23081g);
                m1815a.putExtra(AbstractC6391bh.f23066G, f22855a);
                m1815a.putExtra("ext_packets", bundleArr);
                m1815a.putExtra("ext_encrypt", z);
                return startServiceSafely(m1815a);
            }
            return false;
        }
        return false;
    }

    public void checkAlive() {
        Intent m1815a = m1815a();
        m1815a.setAction("com.xiaomi.push.check_alive");
        startServiceSafely(m1815a);
    }

    public boolean closeChannel() {
        Intent m1815a = m1815a();
        m1815a.setAction(AbstractC6391bh.f23083i);
        return startServiceSafely(m1815a);
    }

    public boolean closeChannel(String str) {
        Intent m1815a = m1815a();
        m1815a.setAction(AbstractC6391bh.f23083i);
        m1815a.putExtra(AbstractC6391bh.f23095u, str);
        return startServiceSafely(m1815a);
    }

    public boolean closeChannel(String str, String str2) {
        Intent m1815a = m1815a();
        m1815a.setAction(AbstractC6391bh.f23083i);
        m1815a.putExtra(AbstractC6391bh.f23095u, str);
        m1815a.putExtra(AbstractC6391bh.f23092r, str2);
        return startServiceSafely(m1815a);
    }

    @Deprecated
    public boolean forceReconnection(String str, String str2, String str3, String str4, String str5, boolean z, List<NameValuePair> list, List<NameValuePair> list2) {
        return forceReconnection(str, str2, str3, str4, str5, z, m1804a(list), m1804a(list2));
    }

    public boolean forceReconnection(String str, String str2, String str3, String str4, String str5, boolean z, Map<String, String> map, Map<String, String> map2) {
        Intent m1815a = m1815a();
        m1815a.setAction(AbstractC6391bh.f23084j);
        m1809a(m1815a, str, str2, str3, str4, str5, z, map, map2);
        return startServiceSafely(m1815a);
    }

    public boolean isMiuiPushServiceEnabled() {
        return this.f22860a;
    }

    public int openChannel(String str, String str2, String str3, String str4, String str5, Map<String, String> map, Map<String, String> map2, boolean z) {
        Intent m1815a = m1815a();
        m1815a.setAction(AbstractC6391bh.f23078d);
        m1809a(m1815a, str, str2, str3, str4, str5, z, map, map2);
        startServiceSafely(m1815a);
        return 0;
    }

    @Deprecated
    public int openChannel(String str, String str2, String str3, String str4, String str5, boolean z, List<NameValuePair> list, List<NameValuePair> list2) {
        return openChannel(str, str2, str3, str4, str5, m1804a(list), m1804a(list2), z);
    }

    @Deprecated
    public void resetConnection(String str, String str2, String str3, String str4, String str5, boolean z, List<NameValuePair> list, List<NameValuePair> list2) {
        resetConnection(str, str2, str3, str4, str5, z, m1804a(list), m1804a(list2));
    }

    public void resetConnection(String str, String str2, String str3, String str4, String str5, boolean z, Map<String, String> map, Map<String, String> map2) {
        Intent m1815a = m1815a();
        m1815a.setAction(AbstractC6391bh.f23085k);
        m1809a(m1815a, str, str2, str3, str4, str5, z, map, map2);
        startServiceSafely(m1815a);
    }

    public boolean sendIQ(C6207gy c6207gy) {
        if (C6013bi.m3662b(this.f22857a)) {
            Intent m1815a = m1815a();
            Bundle mo2641a = c6207gy.mo2641a();
            if (mo2641a != null) {
                AbstractC5876b.m4139c("SEND:" + c6207gy.mo2640a());
                m1815a.setAction(AbstractC6391bh.f23080f);
                m1815a.putExtra(AbstractC6391bh.f23066G, f22855a);
                m1815a.putExtra("ext_packet", mo2641a);
                return startServiceSafely(m1815a);
            }
            return false;
        }
        return false;
    }

    public boolean sendMessage(C6209gz c6209gz, boolean z) {
        if (C6013bi.m3662b(this.f22857a)) {
            Intent m1815a = m1815a();
            String m2936a = C6151fg.m2936a();
            if (!TextUtils.isEmpty(m2936a)) {
                C6206gx c6206gx = new C6206gx(com.tencent.connect.common.Constants.PARAM_PLATFORM_ID, null, null, null);
                C6206gx c6206gx2 = new C6206gx("sent", null, null, null);
                c6206gx2.m2696a(m2936a);
                c6206gx.m2698a(c6206gx2);
                c6209gz.m2662a(c6206gx);
            }
            Bundle mo2641a = c6209gz.mo2641a();
            if (mo2641a != null) {
                AbstractC5876b.m4139c("SEND:" + c6209gz.mo2640a());
                m1815a.setAction(AbstractC6391bh.f23079e);
                m1815a.putExtra(AbstractC6391bh.f23066G, f22855a);
                m1815a.putExtra("ext_packet", mo2641a);
                m1815a.putExtra("ext_encrypt", z);
                return startServiceSafely(m1815a);
            }
            return false;
        }
        return false;
    }

    public boolean sendMessage(byte[] bArr, String str, String str2) {
        String str3;
        if (!C6013bi.m3662b(this.f22857a) || bArr == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            AbstractC5876b.m4147a("Failed to send message: message|userId|chid may be empty, or the network is unavailable.");
            return false;
        }
        Intent m1815a = m1815a();
        if (bArr != null) {
            m1815a.setAction(AbstractC6391bh.f23079e);
            m1815a.putExtra(AbstractC6391bh.f23066G, f22855a);
            m1815a.putExtra("ext_raw_packet", bArr);
            int indexOf = str.indexOf("@");
            String str4 = null;
            String substring = indexOf != -1 ? str.substring(0, indexOf) : null;
            int lastIndexOf = str.lastIndexOf("/");
            if (lastIndexOf != -1) {
                str4 = str.substring(indexOf + 1, lastIndexOf);
                str3 = str.substring(lastIndexOf + 1);
            } else {
                str3 = null;
            }
            m1815a.putExtra(AbstractC6391bh.f23092r, substring);
            m1815a.putExtra(AbstractC6391bh.f23093s, str4);
            m1815a.putExtra(AbstractC6391bh.f23094t, str3);
            StringBuilder sb = new StringBuilder();
            sb.append(f22856b);
            long j = f22853a;
            f22853a = 1 + j;
            sb.append(j);
            String sb2 = sb.toString();
            m1815a.putExtra("ext_pkt_id", sb2);
            m1815a.putExtra("ext_chid", str2);
            AbstractC5876b.m4137e("SEND: chid=" + str2 + ", packetId=" + sb2);
            return startServiceSafely(m1815a);
        }
        return false;
    }

    public boolean sendPresence(C6213hc c6213hc) {
        if (C6013bi.m3662b(this.f22857a)) {
            Intent m1815a = m1815a();
            Bundle mo2641a = c6213hc.mo2641a();
            if (mo2641a != null) {
                AbstractC5876b.m4139c("SEND:" + c6213hc.mo2640a());
                m1815a.setAction(AbstractC6391bh.f23082h);
                m1815a.putExtra(AbstractC6391bh.f23066G, f22855a);
                m1815a.putExtra("ext_packet", mo2641a);
                return startServiceSafely(m1815a);
            }
            return false;
        }
        return false;
    }

    public void setMessenger(Messenger messenger) {
        this.f22858a = messenger;
    }

    public boolean startServiceSafely(Intent intent) {
        try {
            if (C6306l.m1853a() || Build.VERSION.SDK_INT < 26) {
                this.f22857a.startService(intent);
                return true;
            }
            m1810a(intent);
            return true;
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
            return false;
        }
    }

    @Deprecated
    public void updateChannelInfo(String str, List<NameValuePair> list, List<NameValuePair> list2) {
        updateChannelInfo(str, m1804a(list), m1804a(list2));
    }

    public void updateChannelInfo(String str, Map<String, String> map, Map<String, String> map2) {
        Intent m1815a = m1815a();
        m1815a.setAction(AbstractC6391bh.f23086l);
        if (map != null) {
            String m1803a = m1803a(map);
            if (!TextUtils.isEmpty(m1803a)) {
                m1815a.putExtra(AbstractC6391bh.f23060A, m1803a);
            }
        }
        if (map2 != null) {
            String m1803a2 = m1803a(map2);
            if (!TextUtils.isEmpty(m1803a2)) {
                m1815a.putExtra(AbstractC6391bh.f23061B, m1803a2);
            }
        }
        m1815a.putExtra(AbstractC6391bh.f23095u, str);
        startServiceSafely(m1815a);
    }
}
