package com.ifengyu.intercom.node.transport;

import android.support.v4.internal.view.SupportMenu;
import com.google.protobuf.Message;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.SendDataWrap;
import com.ifengyu.intercom.node.btkey.BtKeyConnect;
import com.ifengyu.intercom.node.btkey.a;
import com.ifengyu.intercom.protos.MitalkProtos.Command.Builder;
import com.ifengyu.intercom.protos.SealProtos.SEAL_Connect;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_Connect;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: TransportHelper */
public final class i {
    private static int a = 1;
    private static int b = 0;

    public static h a() {
        return new h();
    }

    public static void a(h hVar, OutputStream outputStream, byte[] bArr, j jVar) throws IOException {
        a(hVar, outputStream, bArr, jVar, TransMode.UPDATE, bArr.length);
    }

    public static void a(h hVar, OutputStream outputStream, SendDataWrap sendDataWrap, j jVar) throws IOException {
        a(hVar, outputStream, sendDataWrap.c(), sendDataWrap.a(), sendDataWrap.a.toByteArray(), jVar, TransMode.NORMAL, sendDataWrap.a.getSerializedSize());
    }

    public static void b(h hVar, OutputStream outputStream, SendDataWrap sendDataWrap, j jVar) throws IOException {
        a(hVar, outputStream, sendDataWrap.c(), sendDataWrap.a(), sendDataWrap.b(), jVar, TransMode.NORMAL, sendDataWrap.b().length);
    }

    private static void a(h hVar, OutputStream outputStream, int i, int i2, byte[] bArr, j jVar, TransMode transMode, int i3) throws IOException {
        jVar.a(true);
        if (s.b()) {
            s.b("TransportHelper", "sending message of length " + i3 + ", sending mode " + transMode);
        }
        byte[] a2 = a(i, i2, bArr, i3, transMode);
        if (i != 1) {
            a2 = a(a2, a2.length);
        }
        outputStream.write(a2);
        jVar.a(false);
        if (s.a()) {
            s.a("TransportHelper", "sending message of length " + i3 + " is done.");
        }
    }

    public static byte[] a(int i, int i2, byte[] bArr, int i3, TransMode transMode) {
        if (i == 1) {
            byte[] a2 = a(bArr.length, i3 + 8, a(transMode), a);
            System.arraycopy(bArr, 0, a2, 8, bArr.length);
            return a2;
        }
        byte[] a3 = a(bArr.length, i3 + 8 + 2, i2, b);
        System.arraycopy(bArr, 0, a3, 8, bArr.length);
        b = (b + 1) % SupportMenu.USER_MASK;
        return a3;
    }

    private static byte[] a(int i, int i2, int i3, int i4) {
        byte[] bArr = new byte[(i + 8)];
        bArr[0] = -2;
        bArr[1] = 1;
        e.a(bArr, (long) i2, 2, 2);
        e.a(bArr, (long) i3, 4, 2);
        e.a(bArr, (long) i4, 6, 2);
        return bArr;
    }

    private static byte[] a(byte[] bArr, int i) {
        byte[] bArr2 = new byte[(i + 2)];
        byte[] a2 = c.a(bArr);
        System.arraycopy(bArr, 0, bArr2, 0, i);
        System.arraycopy(a2, 0, bArr2, i, 2);
        return bArr2;
    }

    private static int a(TransMode transMode) {
        if (transMode != TransMode.NORMAL && transMode == TransMode.UPDATE) {
            return 10008;
        }
        return 10009;
    }

    private static void a(h hVar, OutputStream outputStream, byte[] bArr, j jVar, TransMode transMode, int i) throws IOException {
        jVar.a(true);
        a(hVar, i + 4);
        System.arraycopy(a(transMode.ordinal()), 0, hVar.b, 0, 4);
        System.arraycopy(bArr, 0, hVar.b, 4, i);
        if (s.b()) {
            s.b("TransportHelper", "sending message of length " + i + ", sending mode " + transMode);
        }
        outputStream.write(hVar.b, 0, i + 4);
        jVar.a(false);
        if (s.a()) {
            s.a("TransportHelper", "sending message of length " + i + " is done.");
        }
    }

    private static void a(h hVar, int i) throws IOException {
        if (i > 1048576) {
            throw new IOException("ensureBuffersHaveSpace: can not malloc " + i + " byte memory.");
        } else if (hVar.b == null || i > hVar.b.length) {
            int round = Math.round(1.1f * ((float) i));
            if (hVar.b != null && s.a()) {
                s.a("TransportHelper", "ensureBuffersHaveSpace: incoming message size " + i + " byte, increasing current buffer size from " + hVar.b.length + " to " + round);
            }
            hVar.b = new byte[round];
        }
    }

    public static Message a(h hVar, InputStream inputStream, j jVar) throws IOException {
        jVar.b(true);
        hVar.a.clear();
        a(inputStream, hVar.a.array(), 4);
        hVar.a.position(4);
        hVar.a.flip();
        int i = hVar.a.getInt();
        hVar.b = new byte[i];
        a(inputStream, hVar.b, i);
        s.c("TransportHelper", "removeLocalHeaderRealData :" + b.a(hVar.b, hVar.b.length));
        SEAL_Connect parseFrom = SEAL_Connect.parseFrom(hVar.b);
        s.c("TransportHelper", "connectResp:" + parseFrom.toString());
        jVar.b(false);
        return parseFrom;
    }

    public static Message b(h hVar, InputStream inputStream, j jVar) throws IOException {
        jVar.b(true);
        hVar.a.clear();
        a(inputStream, hVar.a.array(), 4);
        hVar.a.position(4);
        hVar.a.flip();
        int i = hVar.a.getInt();
        hVar.b = new byte[i];
        a(inputStream, hVar.b, i);
        s.c("TransportHelper", "removeLocalHeaderRealData :" + b.a(hVar.b, hVar.b.length));
        SHARK_Connect parseFrom = SHARK_Connect.parseFrom(hVar.b);
        s.c("TransportHelper", "connectResp:" + parseFrom.toString());
        jVar.b(false);
        return parseFrom;
    }

    public static a c(h hVar, InputStream inputStream, j jVar) throws IOException {
        jVar.b(true);
        hVar.a.clear();
        a(inputStream, hVar.a.array(), 4);
        hVar.a.position(4);
        hVar.a.flip();
        int i = hVar.a.getInt();
        hVar.b = new byte[i];
        a(inputStream, hVar.b, i);
        s.c("TransportHelper", "removeLocalHeaderRealData :" + b.a(hVar.b, hVar.b.length));
        BtKeyConnect a2 = BtKeyConnect.a(hVar.b);
        s.c("TransportHelper", "connectResp:" + a2.toString());
        jVar.b(false);
        return a2;
    }

    public static int a(h hVar, InputStream inputStream, Builder builder, j jVar) throws IOException {
        jVar.b(true);
        hVar.a.clear();
        a(inputStream, hVar.a.array(), 4);
        hVar.a.position(4);
        hVar.a.flip();
        int i = hVar.a.getInt();
        a(hVar, i);
        a(inputStream, hVar.b, i);
        ((Builder) builder.mergeFrom(hVar.b, 0, i)).build();
        jVar.b(false);
        return i;
    }

    private static void a(InputStream inputStream, byte[] bArr, int i) throws IOException {
        s.a("TransportHelper", "read input data");
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read <= 0) {
                if (s.a()) {
                    s.a("TransportHelper", "read fail. len = " + read + ", offset = " + i2);
                }
                throw new IOException("connection closed");
            }
            i2 += read;
        }
        if (s.a()) {
            s.a("TransportHelper", "reading message of length " + i + " is done.");
        }
    }

    private static byte[] a(int i) {
        byte[] bArr = new byte[4];
        bArr[0] = -2;
        bArr[1] = 1;
        e.a(bArr, (long) i, 2, 2);
        return bArr;
    }
}
