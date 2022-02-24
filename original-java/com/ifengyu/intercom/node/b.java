package com.ifengyu.intercom.node;

import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.btkey.BtKeyButtonEvent;
import com.ifengyu.intercom.node.btkey.BtKeyDevParam;

/* compiled from: BtKeyCommand.java */
/* loaded from: classes2.dex */
public class b {

    /* compiled from: BtKeyCommand.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f5843a;

        /* renamed from: b  reason: collision with root package name */
        private com.ifengyu.intercom.node.btkey.a f5844b;

        public a a(int i) {
            this.f5843a = i;
            return this;
        }

        public a a(com.ifengyu.intercom.node.btkey.a aVar) {
            this.f5844b = aVar;
            return this;
        }

        public b a() {
            return new b(this);
        }
    }

    public b(a aVar) {
        int unused = aVar.f5843a;
        com.ifengyu.intercom.node.btkey.a unused2 = aVar.f5844b;
    }

    public static b a(byte[] bArr, int i) {
        a aVar = new a();
        aVar.a(i);
        if (i == 20003) {
            BtKeyButtonEvent a2 = BtKeyButtonEvent.a(bArr);
            z.c("BtKeyCommand", "btnEvent:\n" + a2.toString());
            aVar.a(a2);
        } else if (i == 20004) {
            BtKeyDevParam a3 = BtKeyDevParam.a(bArr);
            z.c("BtKeyCommand", "btkeyDevParam:\n" + a3.toString());
            aVar.a(a3);
        }
        return aVar.a();
    }
}
