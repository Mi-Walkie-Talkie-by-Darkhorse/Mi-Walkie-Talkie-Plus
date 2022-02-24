package com.xiaomi.mipush.sdk;

import com.xiaomi.push.ia;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap<e, a> f8715a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f8716a;

        /* renamed from: b  reason: collision with root package name */
        public String f8717b;

        public a(String str, String str2) {
            this.f8716a = str;
            this.f8717b = str2;
        }
    }

    static {
        a(e.ASSEMBLE_PUSH_HUAWEI, new a("com.xiaomi.assemble.control.HmsPushManager", "newInstance"));
        a(e.ASSEMBLE_PUSH_FCM, new a("com.xiaomi.assemble.control.FCMPushManager", "newInstance"));
        a(e.ASSEMBLE_PUSH_COS, new a("com.xiaomi.assemble.control.COSPushManager", "newInstance"));
        a(e.ASSEMBLE_PUSH_FTOS, new a("com.xiaomi.assemble.control.FTOSPushManager", "newInstance"));
    }

    public static au a(e eVar) {
        int i = m.f8718a[eVar.ordinal()];
        if (i == 1) {
            return au.UPLOAD_HUAWEI_TOKEN;
        }
        if (i == 2) {
            return au.UPLOAD_FCM_TOKEN;
        }
        if (i == 3) {
            return au.UPLOAD_COS_TOKEN;
        }
        if (i != 4) {
            return null;
        }
        return au.UPLOAD_FTOS_TOKEN;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static a m61a(e eVar) {
        return f8715a.get(eVar);
    }

    /* renamed from: a  reason: collision with other method in class */
    public static ia m62a(e eVar) {
        return ia.AggregatePushSwitch;
    }

    private static void a(e eVar, a aVar) {
        if (aVar != null) {
            f8715a.put(eVar, aVar);
        }
    }
}
