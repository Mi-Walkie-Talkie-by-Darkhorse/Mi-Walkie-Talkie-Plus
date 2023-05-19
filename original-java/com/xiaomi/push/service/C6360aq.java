package com.xiaomi.push.service;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6016bj;
import com.xiaomi.push.C6175g;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6306l;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: com.xiaomi.push.service.aq */
/* loaded from: classes2.dex */
public class C6360aq {

    /* renamed from: a */
    private static final boolean f22978a = Log.isLoggable("NCHelper", 3);

    /* renamed from: a */
    private static int m1622a(NotificationChannel notificationChannel) {
        int i = 0;
        try {
            i = ((Integer) C6016bj.m3640b((Object) notificationChannel, "getUserLockedFields", new Object[0])).intValue();
            if (f22978a) {
                m1612a("isUserLockedChannel:" + i + " " + notificationChannel);
            }
        } catch (Exception e) {
            AbstractC5876b.m4145a("NCHelper", "is user locked error" + e);
        }
        return i;
    }

    @TargetApi(26)
    /* renamed from: a */
    private static NotificationChannel m1611a(String str, NotificationChannel notificationChannel) {
        NotificationChannel notificationChannel2 = new NotificationChannel(str, notificationChannel.getName(), notificationChannel.getImportance());
        notificationChannel2.setDescription(notificationChannel.getDescription());
        notificationChannel2.enableVibration(notificationChannel.shouldVibrate());
        notificationChannel2.enableLights(notificationChannel.shouldShowLights());
        notificationChannel2.setSound(notificationChannel.getSound(), notificationChannel.getAudioAttributes());
        notificationChannel2.setLockscreenVisibility(notificationChannel.getLockscreenVisibility());
        return notificationChannel2;
    }

    /* renamed from: a */
    private static SharedPreferences m1620a(Context context) {
        return context.getSharedPreferences("mipush_channel_copy_sp", 0);
    }

    @TargetApi(26)
    /* renamed from: a */
    public static String m1613a(C6368au c6368au, String str, CharSequence charSequence, String str2, int i, int i2, String str3, String str4) {
        String m1568a = c6368au.m1568a(str);
        boolean z = f22978a;
        if (z) {
            m1612a("createChannel: appChannelId:" + m1568a + " serverChannelId:" + str + " serverChannelName:" + ((Object) charSequence) + " serverChannelDesc:" + str2 + " serverChannelNotifyType:" + i + " serverChannelName:" + ((Object) charSequence) + " serverChannelImportance:" + i2 + " channelSoundStr:" + str3 + " channelPermissions:" + str4);
        }
        NotificationChannel notificationChannel = new NotificationChannel(m1568a, charSequence, i2);
        notificationChannel.setDescription(str2);
        notificationChannel.enableVibration((i & 2) != 0);
        notificationChannel.enableLights((i & 4) != 0);
        if ((i & 1) == 0) {
            notificationChannel.setSound(null, null);
        } else if (!TextUtils.isEmpty(str3)) {
            if (str3.startsWith("android.resource://" + c6368au.m1582a())) {
                notificationChannel.setSound(Uri.parse(str3), Notification.AUDIO_ATTRIBUTES_DEFAULT);
            }
        }
        if (z) {
            m1612a("create channel:" + notificationChannel);
        }
        m1614a(c6368au, notificationChannel, str4);
        return m1568a;
    }

    @SuppressLint({"WrongConstant"})
    @TargetApi(26)
    /* renamed from: a */
    static void m1619a(Context context, C6368au c6368au, NotificationChannel notificationChannel, int i, String str) {
        if (i <= 0) {
            c6368au.m1576a(notificationChannel);
            return;
        }
        int m1373a = C6175g.m2819a(context) >= 2 ? C6437e.m1373a(context.getPackageName(), str) : 0;
        NotificationChannel m1611a = m1611a(notificationChannel.getId(), notificationChannel);
        if ((i & 32) != 0) {
            if (notificationChannel.getSound() != null) {
                m1611a.setSound(null, null);
            } else {
                m1611a.setSound(Settings.System.DEFAULT_NOTIFICATION_URI, Notification.AUDIO_ATTRIBUTES_DEFAULT);
            }
        }
        if ((i & 16) != 0) {
            if (notificationChannel.shouldVibrate()) {
                m1611a.enableVibration(false);
            } else {
                m1611a.enableVibration(true);
            }
        }
        if ((i & 8) != 0) {
            if (notificationChannel.shouldShowLights()) {
                m1611a.enableLights(false);
            } else {
                m1611a.enableLights(true);
            }
        }
        if ((i & 4) != 0) {
            int importance = notificationChannel.getImportance() - 1;
            if (importance <= 0) {
                importance = 2;
            }
            m1611a.setImportance(importance);
        }
        if ((i & 2) != 0) {
            m1611a.setLockscreenVisibility(notificationChannel.getLockscreenVisibility() - 1);
        }
        c6368au.m1576a(m1611a);
        c6368au.m1575a(notificationChannel, true);
        C6437e.m1371a(c6368au.m1582a(), notificationChannel.getId(), m1373a, 0);
    }

    /* renamed from: a */
    public static void m1618a(Context context, String str) {
        if (!C6306l.m1851a(context) || TextUtils.isEmpty(str)) {
            return;
        }
        m1609c(context, str);
        C6437e.m1379a(context, str);
    }

    /* renamed from: a */
    private static void m1616a(Context context, List<String> list) {
        if (f22978a) {
            m1612a("deleteCopiedChannelRecord:" + list);
        }
        if (list.isEmpty()) {
            return;
        }
        SharedPreferences.Editor edit = m1620a(context).edit();
        for (String str : list) {
            edit.remove(str);
        }
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1615a(C6251ii c6251ii) {
        Map<String, String> map;
        if (c6251ii == null || (map = c6251ii.f22309a) == null || !map.containsKey("REMOVE_CHANNEL_MARK")) {
            return;
        }
        c6251ii.f22305a = 0;
        c6251ii.f22309a.remove("channel_id");
        c6251ii.f22309a.remove("channel_importance");
        c6251ii.f22309a.remove("channel_name");
        c6251ii.f22309a.remove("channel_description");
        c6251ii.f22309a.remove("channel_perm");
        AbstractC5876b.m4147a("delete channel info by:" + c6251ii.f22309a.get("REMOVE_CHANNEL_MARK"));
        c6251ii.f22309a.remove("REMOVE_CHANNEL_MARK");
    }

    @TargetApi(26)
    /* renamed from: a */
    private static void m1614a(C6368au c6368au, NotificationChannel notificationChannel, String str) {
        int i;
        char c;
        int i2;
        Context m1583a = c6368au.m1583a();
        String id = notificationChannel.getId();
        String m1565a = C6368au.m1565a(id, c6368au.m1582a());
        boolean z = f22978a;
        if (z) {
            m1612a("appChannelId:" + id + " oldChannelId:" + m1565a);
        }
        if (!C6306l.m1851a(m1583a) || TextUtils.equals(id, m1565a)) {
            NotificationChannel m1569a = c6368au.m1569a(id);
            if (z) {
                m1612a("elseLogic getNotificationChannel:" + m1569a);
            }
            if (m1569a == null) {
                c6368au.m1576a(notificationChannel);
            }
            i = 0;
            c = 0;
        } else {
            NotificationManager notificationManager = (NotificationManager) m1583a.getSystemService("notification");
            NotificationChannel notificationChannel2 = notificationManager.getNotificationChannel(m1565a);
            NotificationChannel m1569a2 = c6368au.m1569a(id);
            if (z) {
                m1612a("xmsfChannel:" + notificationChannel2);
                m1612a("appChannel:" + m1569a2);
            }
            if (notificationChannel2 != null) {
                NotificationChannel m1611a = m1611a(id, notificationChannel2);
                if (z) {
                    m1612a("copyXmsf copyXmsfChannel:" + m1611a);
                }
                if (m1569a2 != null) {
                    i2 = m1622a(m1569a2);
                    c6368au.m1575a(m1611a, i2 == 0);
                    c = 3;
                } else {
                    i2 = m1622a(notificationChannel2);
                    m1619a(m1583a, c6368au, m1611a, i2, notificationChannel2.getId());
                    c = 4;
                }
                m1610b(m1583a, id);
                notificationManager.deleteNotificationChannel(m1565a);
            } else if (m1569a2 == null) {
                if (z) {
                    m1612a("appHack createNotificationChannel:" + notificationChannel);
                }
                c6368au.m1576a(notificationChannel);
                i2 = 0;
                c = 1;
            } else if (m1617a(m1583a, id) || !m1621a(notificationChannel, m1569a2)) {
                i2 = 0;
                c = 0;
            } else {
                if (z) {
                    m1612a("appHack updateNotificationChannel:" + notificationChannel);
                }
                i2 = m1622a(m1569a2);
                c6368au.m1575a(notificationChannel, i2 == 0);
                c = 2;
            }
            i = i2;
        }
        C6437e.m1378a(c6368au.m1583a(), c6368au.m1582a(), id, notificationChannel.getImportance(), str, c == 1 || c == 4 || c == 3, i);
    }

    /* renamed from: a */
    private static void m1612a(String str) {
        AbstractC5876b.m4145a("NCHelper", str);
    }

    @TargetApi(26)
    /* renamed from: a */
    private static boolean m1621a(NotificationChannel notificationChannel, NotificationChannel notificationChannel2) {
        boolean z;
        if (notificationChannel == null || notificationChannel2 == null) {
            return false;
        }
        boolean z2 = true;
        if (TextUtils.equals(notificationChannel.getName(), notificationChannel2.getName())) {
            z = false;
        } else {
            if (f22978a) {
                m1612a("appHack channelConfigLowerCompare:getName");
            }
            z = true;
        }
        if (!TextUtils.equals(notificationChannel.getDescription(), notificationChannel2.getDescription())) {
            if (f22978a) {
                m1612a("appHack channelConfigLowerCompare:getDescription");
            }
            z = true;
        }
        if (notificationChannel.getImportance() != notificationChannel2.getImportance()) {
            notificationChannel.setImportance(Math.min(notificationChannel.getImportance(), notificationChannel2.getImportance()));
            if (f22978a) {
                m1612a("appHack channelConfigLowerCompare:getImportance  " + notificationChannel.getImportance() + " " + notificationChannel2.getImportance());
            }
            z = true;
        }
        if (notificationChannel.shouldVibrate() != notificationChannel2.shouldVibrate()) {
            notificationChannel.enableVibration(false);
            if (f22978a) {
                m1612a("appHack channelConfigLowerCompare:enableVibration");
            }
            z = true;
        }
        if (notificationChannel.shouldShowLights() != notificationChannel2.shouldShowLights()) {
            notificationChannel.enableLights(false);
            if (f22978a) {
                m1612a("appHack channelConfigLowerCompare:enableLights");
            }
            z = true;
        }
        if ((notificationChannel.getSound() != null) != (notificationChannel2.getSound() != null)) {
            notificationChannel.setSound(null, null);
            if (f22978a) {
                m1612a("appHack channelConfigLowerCompare:setSound");
            }
        } else {
            z2 = z;
        }
        if (f22978a) {
            m1612a("appHack channelConfigLowerCompare:isDifferent:" + z2);
        }
        return z2;
    }

    /* renamed from: a */
    private static boolean m1617a(Context context, String str) {
        if (f22978a) {
            m1612a("checkCopeidChannel:newFullChannelId:" + str + "  " + m1620a(context).getBoolean(str, false));
        }
        return m1620a(context).getBoolean(str, false);
    }

    /* renamed from: b */
    private static void m1610b(Context context, String str) {
        if (f22978a) {
            m1612a("recordCopiedChannel:" + str);
        }
        m1620a(context).edit().putBoolean(str, true).apply();
    }

    /* renamed from: c */
    private static void m1609c(Context context, String str) {
        try {
            C6368au m1572a = C6368au.m1572a(context, str);
            Set<String> keySet = m1620a(context).getAll().keySet();
            ArrayList arrayList = new ArrayList();
            for (String str2 : keySet) {
                if (m1572a.m1566a(str2)) {
                    arrayList.add(str2);
                    if (f22978a) {
                        m1612a("delete channel copy record:" + str2);
                    }
                }
            }
            m1616a(context, arrayList);
        } catch (Exception unused) {
        }
    }
}
