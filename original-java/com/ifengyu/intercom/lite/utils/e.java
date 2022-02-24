package com.ifengyu.intercom.lite.utils;

import com.ifengyu.intercom.MiTalkiApp;
import com.umeng.analytics.MobclickAgent;
import java.util.HashMap;

/* compiled from: EventUtils.java */
/* loaded from: classes2.dex */
public class e {
    public static void a(int i) {
        HashMap hashMap = new HashMap();
        hashMap.put(i != 4 ? i != 5 ? i != 36611 ? "DOLPHIN" : "LITE" : "SEAL" : "SHARK", 1);
        MobclickAgent.onEventObject(MiTalkiApp.b(), "Device_Connection_Counter_Event", hashMap);
    }
}
