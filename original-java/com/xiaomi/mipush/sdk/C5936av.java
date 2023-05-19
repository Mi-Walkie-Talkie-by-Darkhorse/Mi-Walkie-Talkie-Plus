package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5973af;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6023bo;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.EnumC6243ia;
import com.xiaomi.push.service.C6372ax;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* renamed from: com.xiaomi.mipush.sdk.av */
/* loaded from: classes2.dex */
public class C5936av {
    /* renamed from: a */
    public static void m3936a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        long j = sharedPreferences.getLong("last_sync_info", -1L);
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        long m1534a = C6372ax.m1530a(context).m1534a(EnumC6243ia.SyncInfoFrequency.m2484a(), 1209600);
        if (j != -1) {
            if (Math.abs(currentTimeMillis - j) <= m1534a) {
                return;
            }
            m3934a(context, true);
        }
        sharedPreferences.edit().putLong("last_sync_info", currentTimeMillis).commit();
    }

    /* renamed from: a */
    public static void m3935a(Context context, C6263iu c6263iu) {
        AbstractC5876b.m4147a("need to update local info with: " + c6263iu.m2195a());
        String str = c6263iu.m2195a().get(Constants.EXTRA_KEY_ACCEPT_TIME);
        if (str != null) {
            MiPushClient.removeAcceptTime(context);
            String[] split = str.split(Constants.ACCEPT_TIME_SEPARATOR_SERVER);
            if (split.length == 2) {
                MiPushClient.addAcceptTime(context, split[0], split[1]);
                if ("00:00".equals(split[0]) && "00:00".equals(split[1])) {
                    C5938b.m3923a(context).m3916a(true);
                } else {
                    C5938b.m3923a(context).m3916a(false);
                }
            }
        }
        String str2 = c6263iu.m2195a().get(Constants.EXTRA_KEY_ALIASES);
        if (str2 != null) {
            MiPushClient.removeAllAliases(context);
            if (!"".equals(str2)) {
                for (String str3 : str2.split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
                    MiPushClient.addAlias(context, str3);
                }
            }
        }
        String str4 = c6263iu.m2195a().get(Constants.EXTRA_KEY_TOPICS);
        if (str4 != null) {
            MiPushClient.removeAllTopics(context);
            if (!"".equals(str4)) {
                for (String str5 : str4.split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
                    MiPushClient.addTopic(context, str5);
                }
            }
        }
        String str6 = c6263iu.m2195a().get(Constants.EXTRA_KEY_ACCOUNTS);
        if (str6 != null) {
            MiPushClient.removeAllAccounts(context);
            if ("".equals(str6)) {
                return;
            }
            for (String str7 : str6.split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
                MiPushClient.addAccount(context, str7);
            }
        }
    }

    /* renamed from: a */
    public static void m3934a(Context context, boolean z) {
        C5978ak.m3784a(context).m3775a(new RunnableC5937aw(context, z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static String m3931c(List<String> list) {
        String m3620a = C6023bo.m3620a(m3930d(list));
        return (TextUtils.isEmpty(m3620a) || m3620a.length() <= 4) ? "" : m3620a.substring(0, 4).toLowerCase();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static String m3930d(List<String> list) {
        String str = "";
        if (C5973af.m3791a(list)) {
            return "";
        }
        ArrayList<String> arrayList = new ArrayList(list);
        Collections.sort(arrayList, Collator.getInstance(Locale.CHINA));
        for (String str2 : arrayList) {
            if (!TextUtils.isEmpty(str)) {
                str = str + Constants.ACCEPT_TIME_SEPARATOR_SP;
            }
            str = str + str2;
        }
        return str;
    }
}
