package com.ifengyu.intercom.node.btle;

import android.support.v4.internal.view.SupportMenu;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.InvalidProtocolBufferException;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.node.a.d;
import com.ifengyu.intercom.node.m;
import com.ifengyu.intercom.node.n;
import com.ifengyu.intercom.node.q;
import com.ifengyu.intercom.node.transport.b;
import com.ifengyu.intercom.node.transport.c;
import com.ifengyu.intercom.node.transport.e;
import com.ifengyu.intercom.protos.MitalkProtos.Command;
import com.ifengyu.intercom.protos.MitalkProtos.Command.Builder;
import com.ifengyu.intercom.protos.MitalkProtos.UPDATESTATECODE;
import com.ifengyu.intercom.protos.MitalkProtos.UpdateResponse;
import com.ifengyu.intercom.update.a;
import java.nio.ByteBuffer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: DataReceiver */
public class h {
    private final ByteBuffer a = ByteBuffer.allocate(4);
    private byte[] b;
    private Builder c;
    private i d;
    private d e;
    private int f = 0;
    private int g = 0;
    private int h;
    private int i;
    private int j;
    /* access modifiers changed from: private */
    public byte[] k;
    private byte[] l;
    private int m;
    private final ExecutorService n;

    public h(d dVar, i iVar) {
        this.d = iVar;
        this.e = dVar;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.n = Executors.newCachedThreadPool();
    }

    public void a(d dVar, i iVar) {
        this.d = iVar;
        this.e = dVar;
    }

    public void a(byte[] bArr) {
        s.c("DataReceiver", "handleIncomingUpdate");
        switch (w.ad()) {
            case 1:
                f(bArr);
                return;
            case 4:
                d(bArr);
                return;
            case 5:
                c(bArr);
                return;
            case 6:
                e(bArr);
                return;
            default:
                return;
        }
    }

    public void b(byte[] bArr) {
        s.c("DataReceiver", "handlePttKeyEvent");
        switch (w.ad()) {
            case 4:
            case 5:
                int b2 = b.b(bArr);
                for (com.ifengyu.intercom.node.h b3 : d.a().e.b) {
                    b3.b(b2);
                }
                return;
            default:
                return;
        }
    }

    private void c(byte[] bArr) {
        if (s.b()) {
            s.b("DataReceiver", "processSealWireData: ");
        }
        if (bArr.length >= 8 && bArr[0] == -2 && bArr[1] == 1) {
            c();
            this.g = e.b(bArr);
            s.b("DataReceiver", "Got packet id: " + this.g);
            if (this.g != this.f) {
                this.f = this.g;
            }
            this.f = (this.f + 1) % SupportMenu.USER_MASK;
            this.h = e.c(bArr);
            this.i = bArr.length;
            this.j = e.a(bArr);
            this.l = new byte[this.h];
            System.arraycopy(bArr, 0, this.l, 0, bArr.length);
        } else {
            System.arraycopy(bArr, 0, this.l, this.i, bArr.length);
            this.i += bArr.length;
        }
        if (this.i != 0 && this.i == this.h) {
            byte[] bArr2 = new byte[(this.h - 2)];
            System.arraycopy(this.l, 0, bArr2, 0, this.h - 2);
            byte[] bArr3 = new byte[2];
            System.arraycopy(this.l, this.h - 2, bArr3, 0, 2);
            if (b.a(c.a(bArr2), bArr3)) {
                byte[] bArr4 = new byte[((this.h - 8) - 2)];
                System.arraycopy(this.l, 8, bArr4, 0, (this.h - 8) - 2);
                if (this.j == 20002) {
                    s.c("DataReceiver", "receive Command is ECI_ConnectResp Command");
                    this.a.clear();
                    this.a.putInt(bArr4.length);
                    this.a.flip();
                    byte[] bArr5 = new byte[(bArr4.length + 4)];
                    System.arraycopy(this.a.array(), this.a.position(), bArr5, 0, this.a.limit());
                    System.arraycopy(bArr4, 0, bArr5, 4, bArr4.length);
                    this.e.a(bArr5);
                    return;
                }
                try {
                    m a2 = m.a(bArr4, this.j);
                    for (com.ifengyu.intercom.node.h a3 : d.a().e.b) {
                        a3.a("", a2);
                    }
                } catch (InvalidProtocolBufferException e2) {
                    s.b("DataReceiver", "parse protobuf error!!!");
                    ThrowableExtension.printStackTrace(e2);
                }
            } else {
                s.b("DataReceiver", "Crc16 check error!");
            }
        }
    }

    private void d(byte[] bArr) {
        s.b("DataReceiver", "processSharkWireData:");
        if (bArr.length >= 8 && bArr[0] == -2 && bArr[1] == 1) {
            c();
            this.g = e.b(bArr);
            s.b("DataReceiver", "Got packet id: " + this.g);
            if (this.g != this.f) {
                this.f = this.g;
            }
            this.f = (this.f + 1) % SupportMenu.USER_MASK;
            this.h = e.c(bArr);
            this.i = bArr.length;
            this.j = e.a(bArr);
            this.l = new byte[this.h];
            System.arraycopy(bArr, 0, this.l, 0, bArr.length);
        } else {
            System.arraycopy(bArr, 0, this.l, this.i, bArr.length);
            this.i += bArr.length;
        }
        if (this.i != 0 && this.i == this.h) {
            byte[] bArr2 = new byte[(this.h - 2)];
            System.arraycopy(this.l, 0, bArr2, 0, this.h - 2);
            byte[] bArr3 = new byte[2];
            System.arraycopy(this.l, this.h - 2, bArr3, 0, 2);
            if (b.a(c.a(bArr2), bArr3)) {
                byte[] bArr4 = new byte[((this.h - 8) - 2)];
                System.arraycopy(this.l, 8, bArr4, 0, (this.h - 8) - 2);
                if (this.j == 20002) {
                    s.c("DataReceiver", "receive Command is ECI_ConnectResp Command");
                    this.a.clear();
                    this.a.putInt(bArr4.length);
                    this.a.flip();
                    byte[] bArr5 = new byte[(bArr4.length + 4)];
                    System.arraycopy(this.a.array(), this.a.position(), bArr5, 0, this.a.limit());
                    System.arraycopy(bArr4, 0, bArr5, 4, bArr4.length);
                    this.e.a(bArr5);
                    return;
                }
                try {
                    n a2 = n.a(bArr4, this.j);
                    for (com.ifengyu.intercom.node.h a3 : d.a().e.b) {
                        a3.a("", a2);
                    }
                } catch (InvalidProtocolBufferException e2) {
                    s.b("DataReceiver", "parse protobuf error!!!");
                    ThrowableExtension.printStackTrace(e2);
                }
            } else {
                s.b("DataReceiver", "Crc16 check error!");
            }
        }
    }

    private void e(byte[] bArr) {
        s.b("DataReceiver", "processBtKeyWireData:");
        if (bArr.length >= 8 && bArr[0] == -2 && bArr[1] == 1) {
            c();
            this.g = e.b(bArr);
            s.b("DataReceiver", "Got packet id: " + this.g);
            if (this.g != this.f) {
                this.f = this.g;
            }
            this.f = (this.f + 1) % SupportMenu.USER_MASK;
            this.h = e.c(bArr);
            this.i = bArr.length;
            this.j = e.a(bArr);
            this.l = new byte[this.h];
            System.arraycopy(bArr, 0, this.l, 0, bArr.length);
        } else {
            System.arraycopy(bArr, 0, this.l, this.i, bArr.length);
            this.i += bArr.length;
        }
        if (this.i != 0 && this.i == this.h) {
            byte[] bArr2 = new byte[(this.h - 2)];
            System.arraycopy(this.l, 0, bArr2, 0, this.h - 2);
            byte[] bArr3 = new byte[2];
            System.arraycopy(this.l, this.h - 2, bArr3, 0, 2);
            if (b.a(c.a(bArr2), bArr3)) {
                byte[] bArr4 = new byte[((this.h - 8) - 2)];
                System.arraycopy(this.l, 8, bArr4, 0, (this.h - 8) - 2);
                if (this.j == 20002) {
                    s.c("DataReceiver", "receive Command is ECI_ConnectResp Command");
                    this.a.clear();
                    this.a.putInt(bArr4.length);
                    this.a.flip();
                    byte[] bArr5 = new byte[(bArr4.length + 4)];
                    System.arraycopy(this.a.array(), this.a.position(), bArr5, 0, this.a.limit());
                    System.arraycopy(bArr4, 0, bArr5, 4, bArr4.length);
                    this.e.a(bArr5);
                    return;
                }
                try {
                    if (s.b()) {
                        s.b("DataReceiver", "realData:" + b.a(bArr4));
                    }
                    com.ifengyu.intercom.node.c a2 = com.ifengyu.intercom.node.c.a(bArr4, this.j);
                    for (com.ifengyu.intercom.node.h a3 : d.a().e.b) {
                        a3.a("", a2);
                    }
                } catch (Exception e2) {
                    s.b("DataReceiver", "parse data error!!");
                    ThrowableExtension.printStackTrace(e2);
                }
            } else {
                s.b("DataReceiver", "Crc16 check error!");
            }
        }
    }

    private void f(byte[] bArr) {
        if (s.b()) {
            s.b("DataReceiver", "processDolphinWireData:");
        }
        if (bArr.length >= 8 && bArr[0] == -2 && bArr[1] == 1) {
            c();
            this.g = e.b(bArr);
            s.b("DataReceiver", "Got packet id: " + this.g);
            if (this.g != this.f) {
                this.f = this.g;
            }
            this.f = (this.f + 1) % 256;
            this.h = e.c(bArr);
            this.i = bArr.length;
            this.m = bArr.length - 8;
            this.j = e.a(bArr);
            s.b("DataReceiver", "received cmdId=" + this.j + ", mRecvDataLen=" + this.h);
            if (this.j == 10009) {
                this.a.clear();
                this.a.putInt(this.h - 8);
                this.a.flip();
                if (this.g <= 5) {
                    this.k = new byte[((bArr.length - 8) + 4)];
                    System.arraycopy(this.a.array(), this.a.position(), this.k, 0, this.a.limit());
                    System.arraycopy(bArr, 8, this.k, 4, bArr.length - 8);
                } else {
                    this.k = new byte[(this.h - 8)];
                    System.arraycopy(bArr, 8, this.k, 0, bArr.length - 8);
                }
            } else if (this.j == 10008) {
                this.b = new byte[(this.h - 8)];
                System.arraycopy(bArr, 8, this.b, 0, bArr.length - 8);
            }
        } else {
            this.i += bArr.length;
            if (this.j == 10009) {
                if (this.g <= 5) {
                    s.b("DataReceiver", "first blood is comming!!!");
                    this.k = new byte[bArr.length];
                    System.arraycopy(bArr, 0, this.k, 0, bArr.length);
                } else {
                    System.arraycopy(bArr, 0, this.k, this.m, bArr.length);
                    this.m += bArr.length;
                }
            } else if (this.j == 10008) {
                if (this.b == null || this.b.length <= 0) {
                    s.e("DataReceiver", "receive update response error!");
                    c();
                } else {
                    System.arraycopy(bArr, 0, this.b, this.i - 8, bArr.length);
                }
            }
        }
        if (this.j == 10009) {
            if (this.g <= 5) {
                this.e.a(this.k);
            }
            if (this.i != 0 && this.i == this.h) {
                if (this.g > 5) {
                    this.n.execute(new Runnable() {
                        public void run() {
                            Builder newBuilder = Command.newBuilder();
                            try {
                                ((Builder) newBuilder.mergeFrom(h.this.k, 0, h.this.k.length)).build();
                            } catch (InvalidProtocolBufferException e) {
                                s.b("DataReceiver", "parse protobuf error!!!");
                                ThrowableExtension.printStackTrace(e);
                            }
                            if (s.a()) {
                                s.a("DataReceiver", "incoming DolphinCommand: " + q.a(newBuilder.build()));
                                s.a("DataReceiver", "notifying message transports");
                            }
                            for (com.ifengyu.intercom.node.h a2 : d.a().e.b) {
                                a2.a("12345", newBuilder.build());
                            }
                        }
                    });
                }
                s.a("DataReceiver", "reading from peer is done");
                c();
            }
        } else if (this.j == 10008 && this.b != null && this.b.length > 0 && this.i != 0 && this.i == this.h) {
            a();
            if (this.c == null) {
                c();
                return;
            }
            final Command build = this.c.build();
            this.n.execute(new Runnable() {
                public void run() {
                    a.a().a("12345", build);
                }
            });
            c();
        }
    }

    private void a() {
        boolean z = true;
        s.b("DataReceiver", "generatorUpdateResponse");
        UPDATESTATECODE updatestatecode = UPDATESTATECODE.PREPARE;
        if (this.b[0] >= 0 && this.b[0] < UPDATESTATECODE.values().length) {
            updatestatecode = UPDATESTATECODE.valueOf((int) this.b[0]);
        }
        if (this.b[1] != 0) {
            z = false;
        }
        int e2 = e.e(this.b);
        s.b("DataReceiver", "state=" + updatestatecode + ", result=" + z + ", ack=" + e2);
        b();
        if (this.c != null) {
            UpdateResponse.Builder newBuilder = UpdateResponse.newBuilder();
            newBuilder.setState(updatestatecode);
            newBuilder.setResult(z);
            newBuilder.setAck(e2);
            this.c.setUpdateResponse(newBuilder).build();
        }
    }

    private void b() {
        if (this.c == null) {
            this.c = Command.newBuilder();
        }
        this.c.clear();
    }

    private void c() {
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.m = 0;
        this.b = null;
    }
}
