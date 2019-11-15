package com.ifengyu.intercom.b;

import com.ifengyu.intercom.node.SendDataWrap;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.node.transport.a;
import com.mi.milinkforgame.sdk.client.ClientConstants;

/* compiled from: BtKeyCmdUtils */
public class h {
    public static void a() {
        a(SendDataWrap.a(6, a.a(), (int) ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED));
    }

    private static void a(SendDataWrap sendDataWrap) {
        f.a().a(sendDataWrap);
    }
}
