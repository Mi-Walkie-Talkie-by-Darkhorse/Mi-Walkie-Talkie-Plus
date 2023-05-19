package com.xiaomi.mipush.sdk;

import com.xiaomi.push.EnumC6243ia;
import java.util.HashMap;

/* renamed from: com.xiaomi.mipush.sdk.l */
/* loaded from: classes2.dex */
public class C5949l {

    /* renamed from: a */
    private static HashMap<EnumC5942e, C5950a> f20964a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.mipush.sdk.l$a */
    /* loaded from: classes2.dex */
    public static class C5950a {

        /* renamed from: a */
        public String f20965a;

        /* renamed from: b */
        public String f20966b;

        public C5950a(String str, String str2) {
            this.f20965a = str;
            this.f20966b = str2;
        }
    }

    static {
        m3846a(EnumC5942e.ASSEMBLE_PUSH_HUAWEI, new C5950a("com.xiaomi.assemble.control.HmsPushManager", "newInstance"));
        m3846a(EnumC5942e.ASSEMBLE_PUSH_FCM, new C5950a("com.xiaomi.assemble.control.FCMPushManager", "newInstance"));
        m3846a(EnumC5942e.ASSEMBLE_PUSH_COS, new C5950a("com.xiaomi.assemble.control.COSPushManager", "newInstance"));
        m3846a(EnumC5942e.ASSEMBLE_PUSH_FTOS, new C5950a("com.xiaomi.assemble.control.FTOSPushManager", "newInstance"));
    }

    /* renamed from: a */
    public static EnumC5935au m3849a(EnumC5942e enumC5942e) {
        int i = C5951m.f20967a[enumC5942e.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return null;
                    }
                    return EnumC5935au.UPLOAD_FTOS_TOKEN;
                }
                return EnumC5935au.UPLOAD_COS_TOKEN;
            }
            return EnumC5935au.UPLOAD_FCM_TOKEN;
        }
        return EnumC5935au.UPLOAD_HUAWEI_TOKEN;
    }

    /* renamed from: a */
    public static C5950a m3848a(EnumC5942e enumC5942e) {
        return f20964a.get(enumC5942e);
    }

    /* renamed from: a */
    public static EnumC6243ia m3847a(EnumC5942e enumC5942e) {
        return EnumC6243ia.AggregatePushSwitch;
    }

    /* renamed from: a */
    private static void m3846a(EnumC5942e enumC5942e, C5950a c5950a) {
        if (c5950a != null) {
            f20964a.put(enumC5942e, c5950a);
        }
    }
}
