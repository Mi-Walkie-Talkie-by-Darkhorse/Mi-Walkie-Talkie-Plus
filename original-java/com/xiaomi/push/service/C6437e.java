package com.xiaomi.push.service;

import android.app.NotificationChannel;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.SparseArray;
import com.huawei.hms.framework.common.ContainerUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.C6016bj;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.C6469u;
import com.xiaomi.push.C6470v;
import com.xiaomi.push.service.C6369av;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.e */
/* loaded from: classes2.dex */
public class C6437e {

    /* renamed from: a */
    private static final int[] f23185a = {1, 2, 4, 8, 16};

    /* renamed from: a */
    private static final SparseArray<C6369av.C6370a<String, String, String>> f23184a = new C6438f(5);

    /* renamed from: b */
    private static final SparseArray<Integer> f23186b = new C6439g(5);

    C6437e() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m1373a(String str, String str2) {
        int i = m1372a(str, str2, 8) ? 8 : 0;
        if (m1372a(str, str2, 16)) {
            i |= 16;
        }
        if (m1372a(str, str2, 1)) {
            i |= 1;
        }
        if (m1372a(str, str2, 2)) {
            i |= 2;
        }
        return m1372a(str, str2, 4) ? i | 4 : i;
    }

    /* renamed from: a */
    private static SharedPreferences m1380a(Context context) {
        return context.getSharedPreferences("ch_permission_cache_file", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1379a(Context context, String str) {
        List<NotificationChannel> m1581a;
        if (!C6306l.m1851a(context) || TextUtils.isEmpty(str) || (m1581a = C6368au.m1572a(context, str).m1581a()) == null) {
            return;
        }
        synchronized (C6437e.class) {
            SharedPreferences m1380a = m1380a(context);
            ArrayList arrayList = new ArrayList();
            for (NotificationChannel notificationChannel : m1581a) {
                String str2 = (String) C6016bj.m3650a(notificationChannel, "mId");
                if (!TextUtils.isEmpty(str2) && m1380a.contains(str2)) {
                    arrayList.add(str2);
                }
            }
            if (arrayList.size() > 0) {
                m1374a(m1380a, arrayList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1378a(Context context, String str, String str2, int i, String str3, boolean z, int i2) {
        if (!C6306l.m1851a(context) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            if (C6306l.m1851a(context)) {
                AbstractC5876b.m4147a("ChannelPC: can`t setup permission with permissionCode:" + String.valueOf(str3) + " channelId:" + String.valueOf(str2) + " targetPkg:" + str);
                return;
            }
            return;
        }
        int m1229a = C6470v.m1229a(str3, 0);
        boolean m1381a = m1381a(i, m1229a);
        if (z) {
            m1371a(str, str2, m1229a, i2);
            if (m1381a) {
                synchronized (C6437e.class) {
                    m1377a(m1380a(context), m1229a, str2);
                }
                return;
            }
            return;
        }
        synchronized (C6437e.class) {
            SharedPreferences m1380a = m1380a(context);
            if (m1381a || m1380a.contains(str2)) {
                m1376a(m1380a, m1229a, str, str2, i2);
                if (m1381a) {
                    m1377a(m1380a, m1229a, str2);
                } else {
                    m1375a(m1380a, str2);
                }
            }
        }
    }

    /* renamed from: a */
    private static void m1377a(SharedPreferences sharedPreferences, int i, String str) {
        sharedPreferences.edit().putInt(str, i).commit();
    }

    /* renamed from: a */
    private static void m1376a(SharedPreferences sharedPreferences, int i, String str, String str2, int i2) {
        if (sharedPreferences.getInt(str2, 0) != i) {
            m1371a(str, str2, i, i2);
        }
    }

    /* renamed from: a */
    private static void m1375a(SharedPreferences sharedPreferences, String str) {
        m1374a(sharedPreferences, new C6440h(str));
    }

    /* renamed from: a */
    private static void m1374a(SharedPreferences sharedPreferences, List<String> list) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        for (String str : list) {
            edit.remove(str);
        }
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1371a(String str, String str2, int i, int i2) {
        int[] iArr;
        for (int i3 : f23185a) {
            if ((f23186b.get(i3).intValue() & i2) == 0) {
                m1370a(str, str2, i3, (i & i3) > 0);
            } else {
                AbstractC5876b.m4147a("ChannelPermissions.grantPermission:" + str + Constants.COLON_SEPARATOR + str2 + ": <" + i3 + "> :stoped by userLock");
            }
        }
    }

    /* renamed from: a */
    private static void m1370a(String str, String str2, int i, boolean z) {
        boolean m1545a = C6369av.m1545a(C6469u.m1240a(), str, str2, f23184a.get(i), z);
        AbstractC5876b.m4147a("ChannelPermissions.grantPermission:" + str + Constants.COLON_SEPARATOR + str2 + ": <" + i + ContainerUtils.KEY_VALUE_DELIMITER + z + "> :" + m1545a);
    }

    /* renamed from: a */
    private static boolean m1381a(int i, int i2) {
        return i >= 4 || (i2 & 2) > 0 || (i2 & 1) > 0 || (i2 & 8) > 0 || (i2 & 16) > 0;
    }

    /* renamed from: a */
    private static boolean m1372a(String str, String str2, int i) {
        boolean z = C6369av.m1546a(C6469u.m1240a(), str, str2, f23184a.get(i)) == 1;
        AbstractC5876b.m4147a("ChannelPermissions.checkPermission:" + str + Constants.COLON_SEPARATOR + str2 + ": <" + i + ContainerUtils.KEY_VALUE_DELIMITER + z + ">");
        return z;
    }
}
