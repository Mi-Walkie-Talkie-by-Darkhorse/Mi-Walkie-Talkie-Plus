package com.ifengyu.intercom.p189l.p190a.p197d;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.ifengyu.intercom.MiTalkiApp;
import com.umeng.analytics.MobclickAgent;
import java.util.HashMap;

/* renamed from: com.ifengyu.intercom.l.a.d.b */
/* loaded from: classes2.dex */
public class MobReportUtils {
    /* renamed from: a */
    public static void m11810a(int i) {
        HashMap hashMap = new HashMap();
        hashMap.put(i != 1 ? i != 9 ? i != 14 ? i != 4 ? i != 5 ? GrsBaseInfo.CountryCodeSource.UNKNOWN : "SEAL" : "SHARK" : "MI3" : "LITE" : "DOLPHIN", 1);
        MobclickAgent.onEventObject(MiTalkiApp.m14296h(), "Device_Connection_Counter_Event", hashMap);
    }
}
