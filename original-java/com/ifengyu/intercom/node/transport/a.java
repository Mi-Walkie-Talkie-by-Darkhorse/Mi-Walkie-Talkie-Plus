package com.ifengyu.intercom.node.transport;

import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.btkey.BtKeyConnect.BTKEY_CONNCODE;
import com.ifengyu.intercom.node.btkey.BtKeyDevParam.BTKEY_PARAM_TYPE;

/* compiled from: BtKeyCommandHelper */
public class a {
    public static byte[] a(ConnectionConfiguration connectionConfiguration) {
        byte[] bArr = {2, 1, (byte) BTKEY_CONNCODE.BTKEY_CONNECT.a()};
        byte[] bArr2 = {2, 2, 6};
        byte[] bArr3 = new byte[a(bArr, bArr2)];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        s.a("BtKeyCommandHelper", "getConnectReq:" + b.a(bArr3));
        return bArr3;
    }

    public static byte[] a() {
        byte[] bArr = {2, 1, (byte) BTKEY_PARAM_TYPE.BTKEY_POWER.a()};
        byte[] bArr2 = new byte[a(bArr)];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        s.a("BtKeyCommandHelper", "getDevParamQueryPower:" + b.a(bArr2));
        return bArr2;
    }

    private static int a(byte[]... bArr) {
        int i = 0;
        for (byte[] length : bArr) {
            i += length.length;
        }
        return i;
    }
}
