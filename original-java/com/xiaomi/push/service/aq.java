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
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.bj;
import com.xiaomi.push.g;
import com.xiaomi.push.ii;
import com.xiaomi.push.l;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public class aq {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f9243a = Log.isLoggable("NCHelper", 3);

    private static int a(NotificationChannel notificationChannel) {
        int i = 0;
        try {
            i = ((Integer) bj.b((Object) notificationChannel, "getUserLockedFields", new Object[0])).intValue();
            if (f9243a) {
                a("isUserLockedChannel:" + i + " " + notificationChannel);
            }
        } catch (Exception e) {
            b.m2a("NCHelper", "is user locked error" + e);
        }
        return i;
    }

    @TargetApi(26)
    private static NotificationChannel a(String str, NotificationChannel notificationChannel) {
        NotificationChannel notificationChannel2 = new NotificationChannel(str, notificationChannel.getName(), notificationChannel.getImportance());
        notificationChannel2.setDescription(notificationChannel.getDescription());
        notificationChannel2.enableVibration(notificationChannel.shouldVibrate());
        notificationChannel2.enableLights(notificationChannel.shouldShowLights());
        notificationChannel2.setSound(notificationChannel.getSound(), notificationChannel.getAudioAttributes());
        notificationChannel2.setLockscreenVisibility(notificationChannel.getLockscreenVisibility());
        return notificationChannel2;
    }

    private static SharedPreferences a(Context context) {
        return context.getSharedPreferences("mipush_channel_copy_sp", 0);
    }

    @TargetApi(26)
    public static String a(au auVar, String str, CharSequence charSequence, String str2, int i, int i2, String str3, String str4) {
        String a2 = auVar.m602a(str);
        if (f9243a) {
            a("createChannel: appChannelId:" + a2 + " serverChannelId:" + str + " serverChannelName:" + ((Object) charSequence) + " serverChannelDesc:" + str2 + " serverChannelNotifyType:" + i + " serverChannelName:" + ((Object) charSequence) + " serverChannelImportance:" + i2 + " channelSoundStr:" + str3 + " channelPermissions:" + str4);
        }
        NotificationChannel notificationChannel = new NotificationChannel(a2, charSequence, i2);
        notificationChannel.setDescription(str2);
        boolean z = false;
        notificationChannel.enableVibration((i & 2) != 0);
        if ((i & 4) != 0) {
            z = true;
        }
        notificationChannel.enableLights(z);
        if ((i & 1) == 0) {
            notificationChannel.setSound(null, null);
        } else if (!TextUtils.isEmpty(str3)) {
            if (str3.startsWith("android.resource://" + auVar.m601a())) {
                notificationChannel.setSound(Uri.parse(str3), Notification.AUDIO_ATTRIBUTES_DEFAULT);
            }
        }
        if (f9243a) {
            a("create channel:" + notificationChannel);
        }
        a(auVar, notificationChannel, str4);
        return a2;
    }

    @SuppressLint({"WrongConstant"})
    @TargetApi(26)
    static void a(Context context, au auVar, NotificationChannel notificationChannel, int i, String str) {
        if (i > 0) {
            int a2 = g.a(context) >= 2 ? e.a(context.getPackageName(), str) : 0;
            NotificationChannel a3 = a(notificationChannel.getId(), notificationChannel);
            if ((i & 32) != 0) {
                if (notificationChannel.getSound() != null) {
                    a3.setSound(null, null);
                } else {
                    a3.setSound(Settings.System.DEFAULT_NOTIFICATION_URI, Notification.AUDIO_ATTRIBUTES_DEFAULT);
                }
            }
            if ((i & 16) != 0) {
                if (notificationChannel.shouldVibrate()) {
                    a3.enableVibration(false);
                } else {
                    a3.enableVibration(true);
                }
            }
            if ((i & 8) != 0) {
                if (notificationChannel.shouldShowLights()) {
                    a3.enableLights(false);
                } else {
                    a3.enableLights(true);
                }
            }
            if ((i & 4) != 0) {
                int importance = notificationChannel.getImportance() - 1;
                if (importance <= 0) {
                    importance = 2;
                }
                a3.setImportance(importance);
            }
            if ((i & 2) != 0) {
                a3.setLockscreenVisibility(notificationChannel.getLockscreenVisibility() - 1);
            }
            auVar.a(a3);
            auVar.a(notificationChannel, true);
            e.a(auVar.m601a(), notificationChannel.getId(), a2, 0);
            return;
        }
        auVar.a(notificationChannel);
    }

    public static void a(Context context, String str) {
        if (l.m528a(context) && !TextUtils.isEmpty(str)) {
            c(context, str);
            e.a(context, str);
        }
    }

    private static void a(Context context, List<String> list) {
        if (f9243a) {
            a("deleteCopiedChannelRecord:" + list);
        }
        if (!list.isEmpty()) {
            SharedPreferences.Editor edit = a(context).edit();
            for (String str : list) {
                edit.remove(str);
            }
            edit.apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ii iiVar) {
        Map<String, String> map;
        if (iiVar != null && (map = iiVar.f562a) != null && map.containsKey("REMOVE_CHANNEL_MARK")) {
            iiVar.f558a = 0;
            iiVar.f562a.remove("channel_id");
            iiVar.f562a.remove("channel_importance");
            iiVar.f562a.remove("channel_name");
            iiVar.f562a.remove("channel_description");
            iiVar.f562a.remove("channel_perm");
            b.m1a("delete channel info by:" + iiVar.f562a.get("REMOVE_CHANNEL_MARK"));
            iiVar.f562a.remove("REMOVE_CHANNEL_MARK");
        }
    }

    @TargetApi(26)
    private static void a(au auVar, NotificationChannel notificationChannel, String str) {
        char c2;
        int i;
        Context a2 = auVar.m600a();
        String id = notificationChannel.getId();
        String a3 = au.a(id, auVar.m601a());
        if (f9243a) {
            a("appChannelId:" + id + " oldChannelId:" + a3);
        }
        boolean z = true;
        if (!l.m528a(a2) || TextUtils.equals(id, a3)) {
            NotificationChannel a4 = auVar.m599a(id);
            if (f9243a) {
                a("elseLogic getNotificationChannel:" + a4);
            }
            if (a4 == null) {
                auVar.a(notificationChannel);
            }
        } else {
            NotificationManager notificationManager = (NotificationManager) a2.getSystemService("notification");
            NotificationChannel notificationChannel2 = notificationManager.getNotificationChannel(a3);
            NotificationChannel a5 = auVar.m599a(id);
            if (f9243a) {
                a("xmsfChannel:" + notificationChannel2);
                a("appChannel:" + a5);
            }
            if (notificationChannel2 != null) {
                NotificationChannel a6 = a(id, notificationChannel2);
                if (f9243a) {
                    a("copyXmsf copyXmsfChannel:" + a6);
                }
                if (a5 != null) {
                    i = a(a5);
                    auVar.a(a6, i == 0);
                    c2 = 3;
                } else {
                    int a7 = a(notificationChannel2);
                    a(a2, auVar, a6, a7, notificationChannel2.getId());
                    i = a7;
                    c2 = 4;
                }
                b(a2, id);
                notificationManager.deleteNotificationChannel(a3);
            } else if (a5 == null) {
                if (f9243a) {
                    a("appHack createNotificationChannel:" + notificationChannel);
                }
                auVar.a(notificationChannel);
                i = 0;
                c2 = 1;
            } else if (!m591a(a2, id) && a(notificationChannel, a5)) {
                if (f9243a) {
                    a("appHack updateNotificationChannel:" + notificationChannel);
                }
                i = a(a5);
                auVar.a(notificationChannel, i == 0);
                c2 = 2;
            }
            if (!(c2 == 1 || c2 == 4 || c2 == 3)) {
                z = false;
            }
            e.a(auVar.m600a(), auVar.m601a(), id, notificationChannel.getImportance(), str, z, i);
        }
        i = 0;
        c2 = 0;
        if (c2 == 1) {
            z = false;
        }
        e.a(auVar.m600a(), auVar.m601a(), id, notificationChannel.getImportance(), str, z, i);
    }

    private static void a(String str) {
        b.m2a("NCHelper", str);
    }

    @TargetApi(26)
    private static boolean a(NotificationChannel notificationChannel, NotificationChannel notificationChannel2) {
        boolean z = false;
        if (notificationChannel == null || notificationChannel2 == null) {
            return false;
        }
        boolean z2 = true;
        if (!TextUtils.equals(notificationChannel.getName(), notificationChannel2.getName())) {
            if (f9243a) {
                a("appHack channelConfigLowerCompare:getName");
            }
            z2 = true;
        } else {
            z2 = false;
        }
        if (!TextUtils.equals(notificationChannel.getDescription(), notificationChannel2.getDescription())) {
            if (f9243a) {
                a("appHack channelConfigLowerCompare:getDescription");
            }
            z2 = true;
        }
        if (notificationChannel.getImportance() != notificationChannel2.getImportance()) {
            notificationChannel.setImportance(Math.min(notificationChannel.getImportance(), notificationChannel2.getImportance()));
            if (f9243a) {
                a("appHack channelConfigLowerCompare:getImportance  " + notificationChannel.getImportance() + " " + notificationChannel2.getImportance());
            }
            z2 = true;
        }
        if (notificationChannel.shouldVibrate() != notificationChannel2.shouldVibrate()) {
            notificationChannel.enableVibration(false);
            if (f9243a) {
                a("appHack channelConfigLowerCompare:enableVibration");
            }
            z2 = true;
        }
        if (notificationChannel.shouldShowLights() != notificationChannel2.shouldShowLights()) {
            notificationChannel.enableLights(false);
            if (f9243a) {
                a("appHack channelConfigLowerCompare:enableLights");
            }
            z2 = true;
        }
        boolean z3 = notificationChannel.getSound() != null;
        if (notificationChannel2.getSound() != null) {
            z = true;
        }
        if (z3 != z) {
            notificationChannel.setSound(null, null);
            if (f9243a) {
                a("appHack channelConfigLowerCompare:setSound");
            }
        }
        if (f9243a) {
            a("appHack channelConfigLowerCompare:isDifferent:" + z2);
        }
        return z2;
    }

    /* renamed from: a  reason: collision with other method in class */
    private static boolean m591a(Context context, String str) {
        if (f9243a) {
            a("checkCopeidChannel:newFullChannelId:" + str + "  " + a(context).getBoolean(str, false));
        }
        return a(context).getBoolean(str, false);
    }

    private static void b(Context context, String str) {
        if (f9243a) {
            a("recordCopiedChannel:" + str);
        }
        a(context).edit().putBoolean(str, true).apply();
    }

    private static void c(Context context, String str) {
        try {
            au a2 = au.a(context, str);
            Set<String> keySet = a(context).getAll().keySet();
            ArrayList arrayList = new ArrayList();
            for (String str2 : keySet) {
                if (a2.m604a(str2)) {
                    arrayList.add(str2);
                    if (f9243a) {
                        a("delete channel copy record:" + str2);
                    }
                }
            }
            a(context, arrayList);
        } catch (Exception unused) {
        }
    }
}
