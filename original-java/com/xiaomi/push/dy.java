package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.open.SocialConstants;
import com.xiaomi.channel.commonutils.logger.b;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class dy {
    public static void a(Context context, String str, int i, String str2) {
        ak.a(context).a(new dz(context, str, i, str2));
    }

    private static void a(Context context, HashMap<String, String> hashMap) {
        eg a2 = ec.a(context).m230a();
        if (a2 != null) {
            a2.a(context, hashMap);
        }
    }

    private static void b(Context context, HashMap<String, String> hashMap) {
        eg a2 = ec.a(context).m230a();
        if (a2 != null) {
            a2.c(context, hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, String str, int i, String str2) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("awake_info", str);
                hashMap.put("event_type", String.valueOf(i));
                hashMap.put(SocialConstants.PARAM_COMMENT, str2);
                int a2 = ec.a(context).a();
                if (a2 != 1) {
                    if (a2 != 2) {
                        if (a2 == 3) {
                            a(context, hashMap);
                        }
                    }
                    c(context, hashMap);
                } else {
                    a(context, hashMap);
                }
                b(context, hashMap);
            } catch (Exception e) {
                b.a(e);
            }
        }
    }

    private static void c(Context context, HashMap<String, String> hashMap) {
        eg a2 = ec.a(context).m230a();
        if (a2 != null) {
            a2.b(context, hashMap);
        }
    }
}
