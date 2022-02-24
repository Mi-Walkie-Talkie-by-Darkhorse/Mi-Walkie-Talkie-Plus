package com.ifengyu.intercom.node.transport;

import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.btkey.BtKeyConnect;
import com.ifengyu.intercom.node.btkey.BtKeyDevParam;

/* compiled from: BtKeyCommandHelper.java */
/* loaded from: classes2.dex */
public class a {
    public static byte[] a(ConnectionConfiguration connectionConfiguration) {
        byte[] bArr = {2, 1, (byte) BtKeyConnect.BTKEY_CONNCODE.BTKEY_CONNECT.a()};
        byte[] bArr2 = {2, 2, 6};
        byte[] bArr3 = new byte[a(bArr, bArr2)];
        System.arraycopy(bArr, 0, bArr3, 0, 3);
        System.arraycopy(bArr2, 0, bArr3, 3, 3);
        z.d("BtKeyCommandHelper", "getConnectReq:" + b.a(bArr3));
        return bArr3;
    }

    public static byte[] a() {
        byte[] bArr = {2, 1, (byte) BtKeyDevParam.BTKEY_PARAM_TYPE.BTKEY_POWER.a()};
        byte[] bArr2 = new byte[a(bArr)];
        System.arraycopy(bArr, 0, bArr2, 0, 3);
        z.d("BtKeyCommandHelper", "getDevParamQueryPower:" + b.a(bArr2));
        return bArr2;
    }

    private static int a(byte[]... bArr) {
        int i = 0;
        for (byte[] bArr2 : bArr) {
            i += bArr2.length;
        }
        return i;
    }
}
