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
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.ad;
import com.xiaomi.push.bi;
import com.xiaomi.push.fg;
import com.xiaomi.push.gx;
import com.xiaomi.push.gy;
import com.xiaomi.push.gz;
import com.xiaomi.push.hc;
import com.xiaomi.push.hl;
import com.xiaomi.push.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.NameValuePair;

/* loaded from: classes2.dex */
public class ServiceClient {

    /* renamed from: a  reason: collision with other field name */
    private static ServiceClient f847a;

    /* renamed from: a  reason: collision with other field name */
    private static String f848a;

    /* renamed from: a  reason: collision with other field name */
    private Context f849a;

    /* renamed from: a  reason: collision with other field name */
    private boolean f852a;

    /* renamed from: b  reason: collision with other field name */
    private Messenger f853b;

    /* renamed from: b  reason: collision with root package name */
    private static String f9196b = hl.a(5) + Constants.ACCEPT_TIME_SEPARATOR_SERVER;

    /* renamed from: a  reason: collision with root package name */
    private static long f9195a = 0;

    /* renamed from: a  reason: collision with other field name */
    private Messenger f850a = null;

    /* renamed from: a  reason: collision with other field name */
    private List<Message> f851a = new ArrayList();

    /* renamed from: b  reason: collision with other field name */
    private boolean f854b = false;

    private ServiceClient(Context context) {
        this.f852a = false;
        this.f849a = context.getApplicationContext();
        if (m540a()) {
            b.c("use miui push service");
            this.f852a = true;
        }
    }

    private Intent a() {
        if (isMiuiPushServiceEnabled()) {
            Intent intent = new Intent();
            intent.setPackage("com.xiaomi.xmsf");
            intent.setClassName("com.xiaomi.xmsf", m537a());
            intent.putExtra(bh.C, this.f849a.getPackageName());
            m538a();
            return intent;
        }
        Intent intent2 = new Intent(this.f849a, XMPushService.class);
        intent2.putExtra(bh.C, this.f849a.getPackageName());
        b();
        return intent2;
    }

    private Message a(Intent intent) {
        Message obtain = Message.obtain();
        obtain.what = 17;
        obtain.obj = intent;
        return obtain;
    }

    /* renamed from: a  reason: collision with other method in class */
    private String m537a() {
        try {
            return this.f849a.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= 106 ? "com.xiaomi.push.service.XMPushService" : "com.xiaomi.xmsf.push.service.XMPushService";
        } catch (Exception unused) {
            return "com.xiaomi.xmsf.push.service.XMPushService";
        }
    }

    private String a(Map<String, String> map) {
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

    private Map<String, String> a(List<NameValuePair> list) {
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

    /* renamed from: a  reason: collision with other method in class */
    private void m538a() {
        this.f849a.getPackageManager().setComponentEnabledSetting(new ComponentName(this.f849a, XMPushService.class), 2, 1);
    }

    /* renamed from: a  reason: collision with other method in class */
    private synchronized void m539a(Intent intent) {
        if (this.f854b) {
            Message a2 = a(intent);
            if (this.f851a.size() >= 50) {
                this.f851a.remove(0);
            }
            this.f851a.add(a2);
            return;
        }
        if (this.f853b == null) {
            this.f849a.bindService(intent, new br(this), 1);
            this.f854b = true;
            this.f851a.clear();
            this.f851a.add(a(intent));
        } else {
            try {
                this.f853b.send(a(intent));
            } catch (RemoteException unused) {
                this.f853b = null;
                this.f854b = false;
            }
        }
    }

    private void a(Intent intent, String str, String str2, String str3, String str4, String str5, boolean z, Map<String, String> map, Map<String, String> map2) {
        intent.putExtra(bh.r, str);
        intent.putExtra(bh.u, str2);
        intent.putExtra(bh.w, str3);
        intent.putExtra(bh.y, str5);
        intent.putExtra(bh.x, str4);
        intent.putExtra(bh.z, z);
        intent.putExtra(bh.G, f848a);
        intent.putExtra(bh.K, this.f850a);
        if (map != null && map.size() > 0) {
            String a2 = a(map);
            if (!TextUtils.isEmpty(a2)) {
                intent.putExtra(bh.A, a2);
            }
        }
        if (map2 != null && map2.size() > 0) {
            String a3 = a(map2);
            if (!TextUtils.isEmpty(a3)) {
                intent.putExtra(bh.B, a3);
            }
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    private boolean m540a() {
        if (ad.e) {
            return false;
        }
        try {
            PackageInfo packageInfo = this.f849a.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4);
            if (packageInfo == null) {
                return false;
            }
            return packageInfo.versionCode >= 104;
        } catch (Exception unused) {
            return false;
        }
    }

    private void b() {
        this.f849a.getPackageManager().setComponentEnabledSetting(new ComponentName(this.f849a, XMPushService.class), 1, 1);
    }

    public static ServiceClient getInstance(Context context) {
        if (f847a == null) {
            f847a = new ServiceClient(context);
        }
        return f847a;
    }

    public static String getSession() {
        return f848a;
    }

    public static void setSession(String str) {
        f848a = str;
    }

    public boolean batchSendMessage(gz[] gzVarArr, boolean z) {
        if (!bi.b(this.f849a)) {
            return false;
        }
        Intent a2 = a();
        int length = gzVarArr.length;
        Bundle[] bundleArr = new Bundle[length];
        for (int i = 0; i < gzVarArr.length; i++) {
            String a3 = fg.a();
            if (!TextUtils.isEmpty(a3)) {
                gx gxVar = new gx(com.tencent.connect.common.Constants.PARAM_PLATFORM_ID, null, null, null);
                gx gxVar2 = new gx("sent", null, null, null);
                gxVar2.m331a(a3);
                gxVar.a(gxVar2);
                gzVarArr[i].a(gxVar);
            }
            b.c("SEND:" + gzVarArr[i].mo337a());
            bundleArr[i] = gzVarArr[i].mo337a();
        }
        if (length <= 0) {
            return false;
        }
        a2.setAction(bh.g);
        a2.putExtra(bh.G, f848a);
        a2.putExtra("ext_packets", bundleArr);
        a2.putExtra("ext_encrypt", z);
        return startServiceSafely(a2);
    }

    public void checkAlive() {
        Intent a2 = a();
        a2.setAction("com.xiaomi.push.check_alive");
        startServiceSafely(a2);
    }

    public boolean closeChannel() {
        Intent a2 = a();
        a2.setAction(bh.i);
        return startServiceSafely(a2);
    }

    public boolean closeChannel(String str) {
        Intent a2 = a();
        a2.setAction(bh.i);
        a2.putExtra(bh.u, str);
        return startServiceSafely(a2);
    }

    public boolean closeChannel(String str, String str2) {
        Intent a2 = a();
        a2.setAction(bh.i);
        a2.putExtra(bh.u, str);
        a2.putExtra(bh.r, str2);
        return startServiceSafely(a2);
    }

    @Deprecated
    public boolean forceReconnection(String str, String str2, String str3, String str4, String str5, boolean z, List<NameValuePair> list, List<NameValuePair> list2) {
        return forceReconnection(str, str2, str3, str4, str5, z, a(list), a(list2));
    }

    public boolean forceReconnection(String str, String str2, String str3, String str4, String str5, boolean z, Map<String, String> map, Map<String, String> map2) {
        Intent a2 = a();
        a2.setAction(bh.j);
        a(a2, str, str2, str3, str4, str5, z, map, map2);
        return startServiceSafely(a2);
    }

    public boolean isMiuiPushServiceEnabled() {
        return this.f852a;
    }

    public int openChannel(String str, String str2, String str3, String str4, String str5, Map<String, String> map, Map<String, String> map2, boolean z) {
        Intent a2 = a();
        a2.setAction(bh.d);
        a(a2, str, str2, str3, str4, str5, z, map, map2);
        startServiceSafely(a2);
        return 0;
    }

    @Deprecated
    public int openChannel(String str, String str2, String str3, String str4, String str5, boolean z, List<NameValuePair> list, List<NameValuePair> list2) {
        return openChannel(str, str2, str3, str4, str5, a(list), a(list2), z);
    }

    @Deprecated
    public void resetConnection(String str, String str2, String str3, String str4, String str5, boolean z, List<NameValuePair> list, List<NameValuePair> list2) {
        resetConnection(str, str2, str3, str4, str5, z, a(list), a(list2));
    }

    public void resetConnection(String str, String str2, String str3, String str4, String str5, boolean z, Map<String, String> map, Map<String, String> map2) {
        Intent a2 = a();
        a2.setAction(bh.k);
        a(a2, str, str2, str3, str4, str5, z, map, map2);
        startServiceSafely(a2);
    }

    public boolean sendIQ(gy gyVar) {
        if (!bi.b(this.f849a)) {
            return false;
        }
        Intent a2 = a();
        Bundle a3 = gyVar.mo337a();
        if (a3 == null) {
            return false;
        }
        b.c("SEND:" + gyVar.mo337a());
        a2.setAction(bh.f);
        a2.putExtra(bh.G, f848a);
        a2.putExtra("ext_packet", a3);
        return startServiceSafely(a2);
    }

    public boolean sendMessage(gz gzVar, boolean z) {
        if (!bi.b(this.f849a)) {
            return false;
        }
        Intent a2 = a();
        String a3 = fg.a();
        if (!TextUtils.isEmpty(a3)) {
            gx gxVar = new gx(com.tencent.connect.common.Constants.PARAM_PLATFORM_ID, null, null, null);
            gx gxVar2 = new gx("sent", null, null, null);
            gxVar2.m331a(a3);
            gxVar.a(gxVar2);
            gzVar.a(gxVar);
        }
        Bundle a4 = gzVar.mo337a();
        if (a4 == null) {
            return false;
        }
        b.c("SEND:" + gzVar.mo337a());
        a2.setAction(bh.e);
        a2.putExtra(bh.G, f848a);
        a2.putExtra("ext_packet", a4);
        a2.putExtra("ext_encrypt", z);
        return startServiceSafely(a2);
    }

    public boolean sendMessage(byte[] bArr, String str, String str2) {
        String str3;
        if (!bi.b(this.f849a) || bArr == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            b.m1a("Failed to send message: message|userId|chid may be empty, or the network is unavailable.");
            return false;
        }
        Intent a2 = a();
        if (bArr == null) {
            return false;
        }
        a2.setAction(bh.e);
        a2.putExtra(bh.G, f848a);
        a2.putExtra("ext_raw_packet", bArr);
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
        a2.putExtra(bh.r, substring);
        a2.putExtra(bh.s, str4);
        a2.putExtra(bh.t, str3);
        StringBuilder sb = new StringBuilder();
        sb.append(f9196b);
        long j = f9195a;
        f9195a = 1 + j;
        sb.append(j);
        String sb2 = sb.toString();
        a2.putExtra("ext_pkt_id", sb2);
        a2.putExtra("ext_chid", str2);
        b.e("SEND: chid=" + str2 + ", packetId=" + sb2);
        return startServiceSafely(a2);
    }

    public boolean sendPresence(hc hcVar) {
        if (!bi.b(this.f849a)) {
            return false;
        }
        Intent a2 = a();
        Bundle a3 = hcVar.mo337a();
        if (a3 == null) {
            return false;
        }
        b.c("SEND:" + hcVar.mo337a());
        a2.setAction(bh.h);
        a2.putExtra(bh.G, f848a);
        a2.putExtra("ext_packet", a3);
        return startServiceSafely(a2);
    }

    public void setMessenger(Messenger messenger) {
        this.f850a = messenger;
    }

    public boolean startServiceSafely(Intent intent) {
        try {
            if (l.m527a() || Build.VERSION.SDK_INT < 26) {
                this.f849a.startService(intent);
                return true;
            }
            m539a(intent);
            return true;
        } catch (Exception e) {
            b.a(e);
            return false;
        }
    }

    @Deprecated
    public void updateChannelInfo(String str, List<NameValuePair> list, List<NameValuePair> list2) {
        updateChannelInfo(str, a(list), a(list2));
    }

    public void updateChannelInfo(String str, Map<String, String> map, Map<String, String> map2) {
        Intent a2 = a();
        a2.setAction(bh.l);
        if (map != null) {
            String a3 = a(map);
            if (!TextUtils.isEmpty(a3)) {
                a2.putExtra(bh.A, a3);
            }
        }
        if (map2 != null) {
            String a4 = a(map2);
            if (!TextUtils.isEmpty(a4)) {
                a2.putExtra(bh.B, a4);
            }
        }
        a2.putExtra(bh.u, str);
        startServiceSafely(a2);
    }
}
