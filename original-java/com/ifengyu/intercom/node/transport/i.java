package com.ifengyu.intercom.node.transport;

import com.google.protobuf.Message;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.SendDataWrap;
import com.ifengyu.intercom.node.btkey.BtKeyConnect;
import com.ifengyu.intercom.node.btkey.a;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: TransportHelper.java */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static int f5968a = 1;

    /* renamed from: b  reason: collision with root package name */
    private static int f5969b;

    public static h a() {
        return new h();
    }

    public static void b(h hVar, OutputStream outputStream, SendDataWrap sendDataWrap, j jVar) throws IOException {
        a(hVar, outputStream, sendDataWrap.b(), sendDataWrap.a(), sendDataWrap.f5840c.toByteArray(), jVar, TransMode.NORMAL, sendDataWrap.f5840c.getSerializedSize());
    }

    public static Message c(h hVar, InputStream inputStream, j jVar) throws IOException {
        jVar.a(true);
        hVar.f5966a.clear();
        a(inputStream, hVar.f5966a.array(), 4);
        hVar.f5966a.position(4);
        hVar.f5966a.flip();
        int i = hVar.f5966a.getInt();
        byte[] bArr = new byte[i];
        hVar.f5967b = bArr;
        a(inputStream, bArr, i);
        StringBuilder sb = new StringBuilder();
        sb.append("removeLocalHeaderRealData :");
        byte[] bArr2 = hVar.f5967b;
        sb.append(b.a(bArr2, bArr2.length));
        z.c("TransportHelper", sb.toString());
        SharkProtos.SHARK_Connect parseFrom = SharkProtos.SHARK_Connect.parseFrom(hVar.f5967b);
        z.c("TransportHelper", "connectResp:" + parseFrom.toString());
        jVar.a(false);
        return parseFrom;
    }

    public static void a(h hVar, OutputStream outputStream, byte[] bArr, j jVar) throws IOException {
        a(hVar, outputStream, bArr, jVar, TransMode.UPDATE, bArr.length);
    }

    public static Message b(h hVar, InputStream inputStream, j jVar) throws IOException {
        jVar.a(true);
        hVar.f5966a.clear();
        a(inputStream, hVar.f5966a.array(), 4);
        hVar.f5966a.position(4);
        hVar.f5966a.flip();
        int i = hVar.f5966a.getInt();
        byte[] bArr = new byte[i];
        hVar.f5967b = bArr;
        a(inputStream, bArr, i);
        StringBuilder sb = new StringBuilder();
        sb.append("removeLocalHeaderRealData :");
        byte[] bArr2 = hVar.f5967b;
        sb.append(b.a(bArr2, bArr2.length));
        z.c("TransportHelper", sb.toString());
        SealProtos.SEAL_Connect parseFrom = SealProtos.SEAL_Connect.parseFrom(hVar.f5967b);
        z.c("TransportHelper", "connectResp:" + parseFrom.toString());
        jVar.a(false);
        return parseFrom;
    }

    public static void a(h hVar, OutputStream outputStream, SendDataWrap sendDataWrap, j jVar) throws IOException {
        a(hVar, outputStream, sendDataWrap.b(), sendDataWrap.a(), sendDataWrap.c(), jVar, TransMode.NORMAL, sendDataWrap.c().length);
    }

    private static void a(h hVar, OutputStream outputStream, int i, int i2, byte[] bArr, j jVar, TransMode transMode, int i3) throws IOException {
        jVar.b(true);
        if (z.a()) {
            z.a("TransportHelper", "sending message of length " + i3 + ", sending mode " + transMode);
        }
        byte[] a2 = a(i, i2, bArr, i3, transMode);
        if (i != 1) {
            a2 = a(a2, a2.length);
        }
        outputStream.write(a2);
        jVar.b(false);
        if (z.c()) {
            z.d("TransportHelper", "sending message of length " + i3 + " is done.");
        }
    }

    public static byte[] a(int i, int i2, byte[] bArr, int i3, TransMode transMode) {
        if (i == 1) {
            byte[] a2 = a(bArr.length, i3 + 8, a(transMode), f5968a);
            System.arraycopy(bArr, 0, a2, 8, bArr.length);
            return a2;
        }
        byte[] a3 = a(bArr.length, i3 + 8 + 2, i2, f5969b);
        System.arraycopy(bArr, 0, a3, 8, bArr.length);
        f5969b = (f5969b + 1) % 65535;
        return a3;
    }

    private static byte[] a(int i, int i2, int i3, int i4) {
        byte[] bArr = new byte[i + 8];
        bArr[0] = -2;
        bArr[1] = 1;
        e.a(bArr, i2, 2, 2);
        e.a(bArr, i3, 4, 2);
        e.a(bArr, i4, 6, 2);
        return bArr;
    }

    private static byte[] a(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i + 2];
        byte[] a2 = c.a(bArr);
        System.arraycopy(bArr, 0, bArr2, 0, i);
        System.arraycopy(a2, 0, bArr2, i, 2);
        return bArr2;
    }

    private static int a(TransMode transMode) {
        return (transMode != TransMode.NORMAL && transMode == TransMode.UPDATE) ? 10008 : 10009;
    }

    private static void a(h hVar, OutputStream outputStream, byte[] bArr, j jVar, TransMode transMode, int i) throws IOException {
        jVar.b(true);
        int i2 = i + 4;
        a(hVar, i2);
        System.arraycopy(a(transMode.ordinal()), 0, hVar.f5967b, 0, 4);
        System.arraycopy(bArr, 0, hVar.f5967b, 4, i);
        if (z.a()) {
            z.a("TransportHelper", "sending message of length " + i + ", sending mode " + transMode);
        }
        outputStream.write(hVar.f5967b, 0, i2);
        jVar.b(false);
        if (z.c()) {
            z.d("TransportHelper", "sending message of length " + i + " is done.");
        }
    }

    private static void a(h hVar, int i) throws IOException {
        if (i <= 1048576) {
            byte[] bArr = hVar.f5967b;
            if (bArr == null || i > bArr.length) {
                int round = Math.round(i * 1.1f);
                if (hVar.f5967b != null && z.c()) {
                    z.d("TransportHelper", "ensureBuffersHaveSpace: incoming message size " + i + " byte, increasing current buffer size from " + hVar.f5967b.length + " to " + round);
                }
                hVar.f5967b = new byte[round];
                return;
            }
            return;
        }
        throw new IOException("ensureBuffersHaveSpace: can not malloc " + i + " byte memory.");
    }

    public static a a(h hVar, InputStream inputStream, j jVar) throws IOException {
        jVar.a(true);
        hVar.f5966a.clear();
        a(inputStream, hVar.f5966a.array(), 4);
        hVar.f5966a.position(4);
        hVar.f5966a.flip();
        int i = hVar.f5966a.getInt();
        byte[] bArr = new byte[i];
        hVar.f5967b = bArr;
        a(inputStream, bArr, i);
        StringBuilder sb = new StringBuilder();
        sb.append("removeLocalHeaderRealData :");
        byte[] bArr2 = hVar.f5967b;
        sb.append(b.a(bArr2, bArr2.length));
        z.c("TransportHelper", sb.toString());
        BtKeyConnect a2 = BtKeyConnect.a(hVar.f5967b);
        z.c("TransportHelper", "connectResp:" + a2.toString());
        jVar.a(false);
        return a2;
    }

    public static int a(h hVar, InputStream inputStream, MitalkProtos.Command.Builder builder, j jVar) throws IOException {
        jVar.a(true);
        hVar.f5966a.clear();
        a(inputStream, hVar.f5966a.array(), 4);
        hVar.f5966a.position(4);
        hVar.f5966a.flip();
        int i = hVar.f5966a.getInt();
        a(hVar, i);
        a(inputStream, hVar.f5967b, i);
        ((MitalkProtos.Command.Builder) builder.mergeFrom(hVar.f5967b, 0, i)).build();
        jVar.a(false);
        return i;
    }

    private static void a(InputStream inputStream, byte[] bArr, int i) throws IOException {
        z.d("TransportHelper", "read input data");
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read <= 0) {
                if (z.c()) {
                    z.d("TransportHelper", "read fail. len = " + read + ", offset = " + i2);
                }
                throw new IOException("connection closed");
            }
            i2 += read;
        }
        if (z.c()) {
            z.d("TransportHelper", "reading message of length " + i + " is done.");
        }
    }

    private static byte[] a(int i) {
        byte[] bArr = new byte[4];
        bArr[0] = -2;
        bArr[1] = 1;
        e.a(bArr, i, 2, 2);
        return bArr;
    }
}
