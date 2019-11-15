package com.ifengyu.intercom.b;

import java.util.zip.CRC32;
import org.jboss.netty.handler.codec.http.HttpConstants;

/* compiled from: AES128 */
public class b {
    public static byte[] a = "WeChatBluetoothDevice".getBytes();
    public static byte[] b = "WeChatDev".getBytes();
    private static final String c = b.class.getSimpleName();
    private static final byte[] d = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, HttpConstants.CR, 14, 15};
    private static final byte[] e = {15, 14, HttpConstants.CR, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0};
    private static byte[] f = d;
    private static boolean g = false;
    private static b h;
    private static byte[] i = e;
    private byte[] j = new byte[4];
    private byte[] k = new byte[4];
    private byte[] l = new byte[4];

    public static b a() {
        if (h == null) {
            h = new b();
        }
        return h;
    }

    public long a(byte[] bArr, int i2, int i3) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, i2, i3);
        return crc32.getValue();
    }
}
