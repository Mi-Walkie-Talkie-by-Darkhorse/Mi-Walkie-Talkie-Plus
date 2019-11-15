package com.ifengyu.intercom.node;

import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.btkey.BtKeyButtonEvent;
import com.ifengyu.intercom.node.btkey.BtKeyDevParam;
import com.mi.milinkforgame.sdk.client.ClientConstants;

/* compiled from: BtKeyCommand */
public class c {
    private final int a;
    private final com.ifengyu.intercom.node.btkey.a b;

    /* compiled from: BtKeyCommand */
    public static class a {
        /* access modifiers changed from: private */
        public int a;
        /* access modifiers changed from: private */
        public com.ifengyu.intercom.node.btkey.a b;

        public a a(int i) {
            this.a = i;
            return this;
        }

        public a a(com.ifengyu.intercom.node.btkey.a aVar) {
            this.b = aVar;
            return this;
        }

        public c a() {
            return new c(this);
        }
    }

    public c(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
    }

    public static c a(byte[] bArr, int i) {
        a aVar = new a();
        aVar.a(i);
        switch (i) {
            case ClientConstants.LOGIN_RET_CODE_PASSTOKEN_NEEDED /*20003*/:
                BtKeyButtonEvent a2 = BtKeyButtonEvent.a(bArr);
                s.c("BtKeyCommand", "btnEvent:\n" + a2.toString());
                aVar.a((com.ifengyu.intercom.node.btkey.a) a2);
                break;
            case ClientConstants.LOGIN_RET_CODE_PASSTOKEN_EXPIRED /*20004*/:
                BtKeyDevParam a3 = BtKeyDevParam.a(bArr);
                s.c("BtKeyCommand", "btkeyDevParam:\n" + a3.toString());
                aVar.a((com.ifengyu.intercom.node.btkey.a) a3);
                break;
        }
        return aVar.a();
    }
}
