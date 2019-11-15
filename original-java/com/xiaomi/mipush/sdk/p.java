package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.c.a;
import com.xiaomi.xmpush.thrift.ah;
import com.xiaomi.xmpush.thrift.ao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class p {
    private static Map<String, a> a = new HashMap();
    private static q b;

    public static void a(Context context, ah ahVar) {
        ArrayList arrayList;
        String k = ahVar.k();
        if (ahVar.f() == 0) {
            a aVar = (a) a.get(k);
            if (aVar != null) {
                aVar.b(ahVar.h, ahVar.i);
                c.a(context).a(k, aVar);
            }
        }
        if (!TextUtils.isEmpty(ahVar.h)) {
            arrayList = new ArrayList();
            arrayList.add(ahVar.h);
        } else {
            arrayList = null;
        }
        MiPushCommandMessage generateCommandMessage = PushMessageHelper.generateCommandMessage(MiPushClient.COMMAND_REGISTER, arrayList, ahVar.f, ahVar.g, null);
        if (b != null) {
            b.a(k, generateCommandMessage);
        }
    }

    public static void a(Context context, ao aoVar) {
        MiPushCommandMessage generateCommandMessage = PushMessageHelper.generateCommandMessage(MiPushClient.COMMAND_UNREGISTER, null, aoVar.f, aoVar.g, null);
        String h = aoVar.h();
        if (b != null) {
            b.b(h, generateCommandMessage);
        }
    }

    public static void a(Context context, String str, MiPushMessage miPushMessage) {
        if (!TextUtils.isEmpty(str) && b != null) {
            b.a(str, miPushMessage);
        }
    }
}
