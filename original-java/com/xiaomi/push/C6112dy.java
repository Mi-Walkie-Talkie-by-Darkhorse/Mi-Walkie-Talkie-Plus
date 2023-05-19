package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.open.SocialConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.util.HashMap;

/* renamed from: com.xiaomi.push.dy */
/* loaded from: classes2.dex */
public class C6112dy {
    /* renamed from: a */
    public static void m3151a(Context context, String str, int i, String str2) {
        C5978ak.m3784a(context).m3775a(new RunnableC6113dz(context, str, i, str2));
    }

    /* renamed from: a */
    private static void m3150a(Context context, HashMap<String, String> hashMap) {
        InterfaceC6121eg m3123a = C6117ec.m3120a(context).m3123a();
        if (m3123a != null) {
            m3123a.mo1472a(context, hashMap);
        }
    }

    /* renamed from: b */
    private static void m3148b(Context context, HashMap<String, String> hashMap) {
        InterfaceC6121eg m3123a = C6117ec.m3120a(context).m3123a();
        if (m3123a != null) {
            m3123a.mo1470c(context, hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static void m3147c(Context context, String str, int i, String str2) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("awake_info", str);
            hashMap.put("event_type", String.valueOf(i));
            hashMap.put(SocialConstants.PARAM_COMMENT, str2);
            int m3124a = C6117ec.m3120a(context).m3124a();
            if (m3124a != 1) {
                if (m3124a != 2) {
                    if (m3124a == 3) {
                        m3150a(context, hashMap);
                    }
                }
                m3146c(context, hashMap);
            } else {
                m3150a(context, hashMap);
            }
            m3148b(context, hashMap);
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
        }
    }

    /* renamed from: c */
    private static void m3146c(Context context, HashMap<String, String> hashMap) {
        InterfaceC6121eg m3123a = C6117ec.m3120a(context).m3123a();
        if (m3123a != null) {
            m3123a.mo1471b(context, hashMap);
        }
    }
}
