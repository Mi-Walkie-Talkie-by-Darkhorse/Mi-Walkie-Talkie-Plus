package com.ifengyu.intercom.node.btle;

import com.google.protobuf.InvalidProtocolBufferException;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.g;
import com.ifengyu.intercom.node.l;
import com.ifengyu.intercom.node.m;
import com.ifengyu.intercom.node.p;
import com.ifengyu.intercom.node.q.d;
import com.ifengyu.intercom.node.transport.c;
import com.ifengyu.intercom.node.transport.e;
import com.ifengyu.intercom.protos.MitalkProtos;
import java.nio.ByteBuffer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: DataReceiver.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: b  reason: collision with root package name */
    private byte[] f5900b;

    /* renamed from: c  reason: collision with root package name */
    private MitalkProtos.Command.Builder f5901c;
    private d d;
    private byte[] j;
    private byte[] k;
    private int l;

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f5899a = ByteBuffer.allocate(4);
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private int i = 0;
    private final ExecutorService m = Executors.newCachedThreadPool();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataReceiver.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
            try {
                ((MitalkProtos.Command.Builder) newBuilder.mergeFrom(h.this.j, 0, h.this.j.length)).build();
            } catch (InvalidProtocolBufferException e) {
                z.a("DataReceiver", "parse protobuf error!!!");
                e.printStackTrace();
            }
            if (z.c()) {
                z.d("DataReceiver", "incoming DolphinCommand: " + p.a(newBuilder.build()));
                z.d("DataReceiver", "notifying message transports");
            }
            for (g gVar : d.c().e.d) {
                gVar.a("12345", newBuilder.build());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataReceiver.java */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MitalkProtos.Command f5903a;

        b(h hVar, MitalkProtos.Command command) {
            this.f5903a = command;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ifengyu.intercom.h.a.a().a("12345", this.f5903a);
        }
    }

    public h(d dVar, i iVar) {
        this.d = dVar;
    }

    private void c(byte[] bArr) {
        int i;
        z.a("DataReceiver", "processBtKeyWireData:");
        if (bArr.length >= 8 && bArr[0] == -2 && bArr[1] == 1) {
            c();
            this.f = e.e(bArr);
            z.a("DataReceiver", "Got packet id: " + this.f);
            int i2 = this.f;
            if (i2 != this.e) {
                this.e = i2;
            }
            this.e = (this.e + 1) % 65535;
            this.g = e.c(bArr);
            this.h = bArr.length;
            this.i = e.b(bArr);
            byte[] bArr2 = new byte[this.g];
            this.k = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        } else {
            System.arraycopy(bArr, 0, this.k, this.h, bArr.length);
            this.h += bArr.length;
        }
        int i3 = this.h;
        if (i3 != 0 && i3 == (i = this.g)) {
            byte[] bArr3 = new byte[i - 2];
            System.arraycopy(this.k, 0, bArr3, 0, i - 2);
            byte[] bArr4 = new byte[2];
            System.arraycopy(this.k, this.g - 2, bArr4, 0, 2);
            if (com.ifengyu.intercom.node.transport.b.a(c.a(bArr3), bArr4)) {
                int i4 = this.g;
                int i5 = (i4 - 8) - 2;
                byte[] bArr5 = new byte[i5];
                System.arraycopy(this.k, 8, bArr5, 0, (i4 - 8) - 2);
                if (this.i == 20002) {
                    z.c("DataReceiver", "receive Command is ECI_ConnectResp Command");
                    this.f5899a.clear();
                    this.f5899a.putInt(i5);
                    this.f5899a.flip();
                    byte[] bArr6 = new byte[i5 + 4];
                    System.arraycopy(this.f5899a.array(), this.f5899a.position(), bArr6, 0, this.f5899a.limit());
                    System.arraycopy(bArr5, 0, bArr6, 4, i5);
                    this.d.a(bArr6);
                    return;
                }
                try {
                    if (z.a()) {
                        z.a("DataReceiver", "realData:" + com.ifengyu.intercom.node.transport.b.a(bArr5));
                    }
                    com.ifengyu.intercom.node.b a2 = com.ifengyu.intercom.node.b.a(bArr5, this.i);
                    for (g gVar : d.c().e.d) {
                        gVar.a("", a2);
                    }
                } catch (Exception e) {
                    z.a("DataReceiver", "parse data error!!");
                    e.printStackTrace();
                }
            } else {
                z.a("DataReceiver", "Crc16 check error!");
            }
        }
    }

    private void d(byte[] bArr) {
        byte[] bArr2;
        int i;
        if (z.a()) {
            z.a("DataReceiver", "processDolphinWireData:");
        }
        if (bArr.length >= 8 && bArr[0] == -2 && bArr[1] == 1) {
            c();
            this.f = e.e(bArr);
            z.a("DataReceiver", "Got packet id: " + this.f);
            int i2 = this.f;
            if (i2 != this.e) {
                this.e = i2;
            }
            this.e = (this.e + 1) % 256;
            this.g = e.c(bArr);
            this.h = bArr.length;
            this.l = bArr.length - 8;
            this.i = e.b(bArr);
            z.a("DataReceiver", "received cmdId=" + this.i + ", mRecvDataLen=" + this.g);
            int i3 = this.i;
            if (i3 == 10009) {
                this.f5899a.clear();
                this.f5899a.putInt(this.g - 8);
                this.f5899a.flip();
                if (this.f <= 5) {
                    this.j = new byte[(bArr.length - 8) + 4];
                    System.arraycopy(this.f5899a.array(), this.f5899a.position(), this.j, 0, this.f5899a.limit());
                    System.arraycopy(bArr, 8, this.j, 4, bArr.length - 8);
                } else {
                    byte[] bArr3 = new byte[this.g - 8];
                    this.j = bArr3;
                    System.arraycopy(bArr, 8, bArr3, 0, bArr.length - 8);
                }
            } else if (i3 == 10008) {
                byte[] bArr4 = new byte[this.g - 8];
                this.f5900b = bArr4;
                System.arraycopy(bArr, 8, bArr4, 0, bArr.length - 8);
            }
        } else {
            int length = this.h + bArr.length;
            this.h = length;
            int i4 = this.i;
            if (i4 == 10009) {
                if (this.f <= 5) {
                    z.a("DataReceiver", "first blood is comming!!!");
                    byte[] bArr5 = new byte[bArr.length];
                    this.j = bArr5;
                    System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
                } else {
                    System.arraycopy(bArr, 0, this.j, this.l, bArr.length);
                    this.l += bArr.length;
                }
            } else if (i4 == 10008) {
                byte[] bArr6 = this.f5900b;
                if (bArr6 == null || bArr6.length <= 0) {
                    z.b("DataReceiver", "receive update response error!");
                    c();
                } else {
                    System.arraycopy(bArr, 0, bArr6, length - 8, bArr.length);
                }
            }
        }
        int i5 = this.i;
        if (i5 == 10009) {
            if (this.f <= 5) {
                this.d.a(this.j);
            }
            int i6 = this.h;
            if (i6 != 0 && i6 == this.g) {
                if (this.f > 5) {
                    this.m.execute(new a());
                }
                z.d("DataReceiver", "reading from peer is done");
                c();
            }
        } else if (i5 == 10008 && (bArr2 = this.f5900b) != null && bArr2.length > 0 && (i = this.h) != 0 && i == this.g) {
            b();
            MitalkProtos.Command.Builder builder = this.f5901c;
            if (builder == null) {
                c();
                return;
            }
            this.m.execute(new b(this, builder.build()));
            c();
        }
    }

    private void e(byte[] bArr) {
        int i;
        if (z.a()) {
            z.a("DataReceiver", "processSealWireData: ");
        }
        if (bArr.length >= 8 && bArr[0] == -2 && bArr[1] == 1) {
            c();
            this.f = e.e(bArr);
            z.a("DataReceiver", "Got packet id: " + this.f);
            int i2 = this.f;
            if (i2 != this.e) {
                this.e = i2;
            }
            this.e = (this.e + 1) % 65535;
            this.g = e.c(bArr);
            this.h = bArr.length;
            this.i = e.b(bArr);
            byte[] bArr2 = new byte[this.g];
            this.k = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        } else {
            System.arraycopy(bArr, 0, this.k, this.h, bArr.length);
            this.h += bArr.length;
        }
        int i3 = this.h;
        if (i3 != 0 && i3 == (i = this.g)) {
            byte[] bArr3 = new byte[i - 2];
            System.arraycopy(this.k, 0, bArr3, 0, i - 2);
            byte[] bArr4 = new byte[2];
            System.arraycopy(this.k, this.g - 2, bArr4, 0, 2);
            if (com.ifengyu.intercom.node.transport.b.a(c.a(bArr3), bArr4)) {
                int i4 = this.g;
                int i5 = (i4 - 8) - 2;
                byte[] bArr5 = new byte[i5];
                System.arraycopy(this.k, 8, bArr5, 0, (i4 - 8) - 2);
                int i6 = this.i;
                if (i6 == 20002) {
                    z.c("DataReceiver", "receive Command is ECI_ConnectResp Command");
                    this.f5899a.clear();
                    this.f5899a.putInt(i5);
                    this.f5899a.flip();
                    byte[] bArr6 = new byte[i5 + 4];
                    System.arraycopy(this.f5899a.array(), this.f5899a.position(), bArr6, 0, this.f5899a.limit());
                    System.arraycopy(bArr5, 0, bArr6, 4, i5);
                    this.d.a(bArr6);
                    return;
                }
                try {
                    l a2 = l.a(bArr5, i6);
                    for (g gVar : d.c().e.d) {
                        gVar.a("", a2);
                    }
                } catch (InvalidProtocolBufferException e) {
                    z.a("DataReceiver", "parse protobuf error!!!");
                    e.printStackTrace();
                }
            } else {
                z.a("DataReceiver", "Crc16 check error!");
            }
        }
    }

    private void f(byte[] bArr) {
        int i;
        z.a("DataReceiver", "processSharkWireData:");
        if (bArr.length >= 8 && bArr[0] == -2 && bArr[1] == 1) {
            c();
            this.f = e.e(bArr);
            z.a("DataReceiver", "Got packet id: " + this.f);
            int i2 = this.f;
            if (i2 != this.e) {
                this.e = i2;
            }
            this.e = (this.e + 1) % 65535;
            this.g = e.c(bArr);
            this.h = bArr.length;
            this.i = e.b(bArr);
            byte[] bArr2 = new byte[this.g];
            this.k = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        } else {
            System.arraycopy(bArr, 0, this.k, this.h, bArr.length);
            this.h += bArr.length;
        }
        int i3 = this.h;
        if (i3 != 0 && i3 == (i = this.g)) {
            byte[] bArr3 = new byte[i - 2];
            System.arraycopy(this.k, 0, bArr3, 0, i - 2);
            byte[] bArr4 = new byte[2];
            System.arraycopy(this.k, this.g - 2, bArr4, 0, 2);
            if (com.ifengyu.intercom.node.transport.b.a(c.a(bArr3), bArr4)) {
                int i4 = this.g;
                int i5 = (i4 - 8) - 2;
                byte[] bArr5 = new byte[i5];
                System.arraycopy(this.k, 8, bArr5, 0, (i4 - 8) - 2);
                int i6 = this.i;
                if (i6 == 20002) {
                    z.c("DataReceiver", "receive Command is ECI_ConnectResp Command");
                    this.f5899a.clear();
                    this.f5899a.putInt(i5);
                    this.f5899a.flip();
                    byte[] bArr6 = new byte[i5 + 4];
                    System.arraycopy(this.f5899a.array(), this.f5899a.position(), bArr6, 0, this.f5899a.limit());
                    System.arraycopy(bArr5, 0, bArr6, 4, i5);
                    this.d.a(bArr6);
                    return;
                }
                try {
                    m a2 = m.a(bArr5, i6);
                    for (g gVar : d.c().e.d) {
                        gVar.a("", a2);
                    }
                } catch (InvalidProtocolBufferException e) {
                    z.a("DataReceiver", "parse protobuf error!!!");
                    e.printStackTrace();
                }
            } else {
                z.a("DataReceiver", "Crc16 check error!");
            }
        }
    }

    public void b(byte[] bArr) {
        z.c("DataReceiver", "handlePttKeyEvent");
        int g = d0.g();
        if (g == 4 || g == 5) {
            int b2 = com.ifengyu.intercom.node.transport.b.b(bArr);
            for (g gVar : d.c().e.d) {
                gVar.a(b2);
            }
        }
    }

    public void a(d dVar, i iVar) {
        this.d = dVar;
    }

    public void a(byte[] bArr) {
        z.c("DataReceiver", "handleIncomingUpdate");
        int g = d0.g();
        if (g == 1) {
            d(bArr);
        } else if (g == 4) {
            f(bArr);
        } else if (g == 5) {
            e(bArr);
        } else if (g == 6) {
            c(bArr);
        }
    }

    private void b() {
        z.a("DataReceiver", "generatorUpdateResponse");
        MitalkProtos.UPDATESTATECODE updatestatecode = MitalkProtos.UPDATESTATECODE.PREPARE;
        byte[] bArr = this.f5900b;
        boolean z = false;
        if (bArr[0] >= 0 && bArr[0] < MitalkProtos.UPDATESTATECODE.values().length) {
            updatestatecode = MitalkProtos.UPDATESTATECODE.valueOf(this.f5900b[0]);
        }
        if (this.f5900b[1] == 0) {
            z = true;
        }
        int a2 = e.a(this.f5900b);
        z.a("DataReceiver", "state=" + updatestatecode + ", result=" + z + ", ack=" + a2);
        a();
        if (this.f5901c != null) {
            MitalkProtos.UpdateResponse.Builder newBuilder = MitalkProtos.UpdateResponse.newBuilder();
            newBuilder.setState(updatestatecode);
            newBuilder.setResult(z);
            newBuilder.setAck(a2);
            this.f5901c.setUpdateResponse(newBuilder).build();
        }
    }

    private void a() {
        if (this.f5901c == null) {
            this.f5901c = MitalkProtos.Command.newBuilder();
        }
        this.f5901c.clear();
    }

    private void c() {
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.l = 0;
        this.f5900b = null;
    }
}
