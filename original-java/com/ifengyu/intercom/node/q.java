package com.ifengyu.intercom.node;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.node.a.d;
import com.ifengyu.intercom.node.btkey.BtKeyConnect;
import com.ifengyu.intercom.node.btkey.BtKeyConnect.BTKEY_CONNCODE;
import com.ifengyu.intercom.node.transport.f;
import com.ifengyu.intercom.node.transport.g;
import com.ifengyu.intercom.node.transport.h;
import com.ifengyu.intercom.node.transport.i;
import com.ifengyu.intercom.node.transport.j;
import com.ifengyu.intercom.protos.MitalkProtos.CONNCODE;
import com.ifengyu.intercom.protos.MitalkProtos.Command;
import com.ifengyu.intercom.protos.MitalkProtos.Command.Builder;
import com.ifengyu.intercom.protos.SealProtos.SEAL_CONNCODE;
import com.ifengyu.intercom.protos.SealProtos.SEAL_Connect;
import com.ifengyu.intercom.protos.SealProtos.SEAL_Connect.SEAL_LANGUAGETYPE;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_CONNCODE;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_Connect;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_Connect.SHARK_LANGUAGETYPE;
import com.mi.milinkforgame.sdk.client.ClientConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* compiled from: WalkTalkTransportManager */
public class q {
    private static final String c = q.class.getSimpleName();
    public final Context a;
    public final List<h> b = new ArrayList();
    private ExecutorService d;
    private final Object e = new Object();
    private final Handler f;
    private final Map<String, g> g = new HashMap();
    private volatile boolean h = false;
    private InputStream i;
    private OutputStream j;
    private j k;
    private ConnectionConfiguration l;
    private int m;
    private String n;

    /* compiled from: WalkTalkTransportManager */
    private class a extends Handler {
        private q b;

        a(q qVar, Looper looper) {
            super(looper);
            this.b = qVar;
        }

        public void handleMessage(Message message) {
            j jVar = (j) message.obj;
            if (jVar == null || !jVar.c()) {
                s.a("TxWdtHandler", "Write is not stuck. No action needed.");
                return;
            }
            s.d("TxWdtHandler", "Write is stuck. Killing thread: " + jVar.a.getId());
            jVar.a("stuck while writing");
            jVar.a();
        }
    }

    public q(Context context) {
        this.a = context;
        HandlerThread handlerThread = new HandlerThread("writer-watchdog");
        handlerThread.start();
        this.f = new a(this, handlerThread.getLooper());
        com.ifengyu.intercom.eventbus.a.a().a((Object) this);
    }

    public final void a(InputStream inputStream, OutputStream outputStream, j jVar, ConnectionConfiguration connectionConfiguration, int i2, Handler handler) throws ConnectionPermissionException, VersionMismatchException {
        e eVar = null;
        s.a(c, "startProcessLoop()");
        this.i = inputStream;
        this.j = outputStream;
        this.k = jVar;
        this.l = connectionConfiguration;
        this.m = i2;
        c();
        synchronized (this.e) {
            if (this.d == null || this.d.isShutdown()) {
                this.d = Executors.newCachedThreadPool(new ThreadFactory() {
                    public Thread newThread(@NonNull Runnable runnable) {
                        return new o(runnable);
                    }
                });
            }
        }
        this.k.a = Thread.currentThread();
        s.a(c, "before doHandshake()");
        ConnectionConfiguration a2 = d.a().d.a(this.l.c());
        if (a2 != null) {
            this.n = a2.e();
            if (this.l.f() == 0 || this.l.f() == 1) {
                this.l.a(a2.f());
            }
        } else {
            this.n = null;
        }
        this.l.a(this.n);
        s.d(c, "config.getDeviceType : " + this.l.toString());
        switch (this.l.f()) {
            case 1:
                eVar = d(this.i, this.j, this.l, this.k, handler);
                break;
            case 4:
                eVar = b(this.i, this.j, this.l, this.k, handler);
                break;
            case 5:
                eVar = a(this.i, this.j, this.l, this.k, handler);
                break;
            case 6:
                eVar = c(this.i, this.j, this.l, this.k, handler);
                break;
        }
        s.c(c, "doHandshake end");
        a(this.i, this.j, this.k, this.l, this.n, eVar);
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(java.io.InputStream r10, java.io.OutputStream r11, com.ifengyu.intercom.node.transport.j r12, com.ifengyu.intercom.node.ConnectionConfiguration r13, java.lang.String r14, com.ifengyu.intercom.node.e r15) {
        /*
            r9 = this;
            if (r15 == 0) goto L_0x00de
            java.lang.String r0 = r15.a()     // Catch:{ InterruptedException -> 0x00bd }
            if (r0 == 0) goto L_0x00b5
            java.lang.String r1 = c     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ InterruptedException -> 0x00bd }
            r2.<init>()     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r3 = "connected to device="
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r3 = r13.b()     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r3 = ", oldId="
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.StringBuilder r2 = r2.append(r14)     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r3 = ", nodeId="
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.StringBuilder r2 = r2.append(r0)     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r2 = r2.toString()     // Catch:{ InterruptedException -> 0x00bd }
            com.ifengyu.intercom.b.s.a(r1, r2)     // Catch:{ InterruptedException -> 0x00bd }
            boolean r1 = android.text.TextUtils.isEmpty(r14)     // Catch:{ InterruptedException -> 0x00bd }
            if (r1 == 0) goto L_0x0049
            java.lang.String r1 = c     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r2 = "first connect"
            com.ifengyu.intercom.b.s.b(r1, r2)     // Catch:{ InterruptedException -> 0x00bd }
            r1 = 0
            r13.b(r1)     // Catch:{ InterruptedException -> 0x00bd }
        L_0x0049:
            r13.a(r0)     // Catch:{ InterruptedException -> 0x00bd }
            com.ifengyu.intercom.node.a.d r1 = com.ifengyu.intercom.node.a.d.a()     // Catch:{ InterruptedException -> 0x00bd }
            com.ifengyu.intercom.node.a.a r1 = r1.d     // Catch:{ InterruptedException -> 0x00bd }
            r1.a(r13)     // Catch:{ InterruptedException -> 0x00bd }
        L_0x0055:
            com.ifengyu.intercom.node.p r3 = new com.ifengyu.intercom.node.p     // Catch:{ InterruptedException -> 0x00bd }
            r3.<init>(r11, r15, r12)     // Catch:{ InterruptedException -> 0x00bd }
            com.ifengyu.intercom.node.d r1 = new com.ifengyu.intercom.node.d     // Catch:{ InterruptedException -> 0x00bd }
            r1.<init>(r9, r0, r3)     // Catch:{ InterruptedException -> 0x00bd }
            java.util.concurrent.ExecutorService r2 = r9.d     // Catch:{ InterruptedException -> 0x00bd }
            java.util.concurrent.Future r4 = r2.submit(r1)     // Catch:{ InterruptedException -> 0x00bd }
            com.ifengyu.intercom.node.l r1 = new com.ifengyu.intercom.node.l     // Catch:{ InterruptedException -> 0x00bd }
            r1.<init>(r9, r10, r15, r12)     // Catch:{ InterruptedException -> 0x00bd }
            com.ifengyu.intercom.node.d r2 = new com.ifengyu.intercom.node.d     // Catch:{ InterruptedException -> 0x00bd }
            r2.<init>(r9, r0, r1)     // Catch:{ InterruptedException -> 0x00bd }
            java.util.concurrent.ExecutorService r0 = r9.d     // Catch:{ InterruptedException -> 0x00bd }
            java.util.concurrent.Future r5 = r0.submit(r2)     // Catch:{ InterruptedException -> 0x00bd }
            java.util.Map<java.lang.String, com.ifengyu.intercom.node.g> r8 = r9.g     // Catch:{ InterruptedException -> 0x00bd }
            monitor-enter(r8)     // Catch:{ InterruptedException -> 0x00bd }
            com.ifengyu.intercom.node.g r0 = new com.ifengyu.intercom.node.g     // Catch:{ all -> 0x00db }
            r1 = r9
            r2 = r13
            r6 = r10
            r7 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ all -> 0x00db }
            java.util.Map<java.lang.String, com.ifengyu.intercom.node.g> r1 = r9.g     // Catch:{ all -> 0x00db }
            java.lang.String r2 = r15.a()     // Catch:{ all -> 0x00db }
            r1.put(r2, r0)     // Catch:{ all -> 0x00db }
            monitor-exit(r8)     // Catch:{ all -> 0x00db }
            r9.a(r3)     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r0 = c     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r1 = "blocking until processing loop finishes..."
            com.ifengyu.intercom.b.s.a(r0, r1)     // Catch:{ InterruptedException -> 0x00bd }
            r5.get()     // Catch:{ CancellationException -> 0x00e9 }
        L_0x0098:
            r4.get()     // Catch:{ CancellationException -> 0x0129 }
        L_0x009b:
            java.lang.String r0 = c     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r1 = "Process loop is finished."
            com.ifengyu.intercom.b.s.a(r0, r1)     // Catch:{ InterruptedException -> 0x00bd }
            r12.b()     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r0 = r15.a()     // Catch:{ InterruptedException -> 0x00bd }
            r9.c(r0)     // Catch:{ InterruptedException -> 0x00bd }
            r0 = 1
            r4.cancel(r0)     // Catch:{ InterruptedException -> 0x00bd }
            r0 = 1
            r5.cancel(r0)     // Catch:{ InterruptedException -> 0x00bd }
        L_0x00b4:
            return
        L_0x00b5:
            java.lang.String r1 = c     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r2 = "can not get node id."
            com.ifengyu.intercom.b.s.d(r1, r2)     // Catch:{ InterruptedException -> 0x00bd }
            goto L_0x0055
        L_0x00bd:
            r0 = move-exception
            java.lang.String r1 = c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Interrupted exception:"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            com.ifengyu.intercom.b.s.d(r1, r0)
            goto L_0x00b4
        L_0x00db:
            r0 = move-exception
            monitor-exit(r8)     // Catch:{ all -> 0x00db }
            throw r0     // Catch:{ InterruptedException -> 0x00bd }
        L_0x00de:
            java.lang.String r0 = c     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r1 = "connect failed, close."
            com.ifengyu.intercom.b.s.d(r0, r1)     // Catch:{ InterruptedException -> 0x00bd }
            r12.b()     // Catch:{ InterruptedException -> 0x00bd }
            goto L_0x00b4
        L_0x00e9:
            r0 = move-exception
            java.lang.String r0 = c     // Catch:{ ExecutionException -> 0x00f2 }
            java.lang.String r1 = "Rx thread was cancelled"
            com.ifengyu.intercom.b.s.b(r0, r1)     // Catch:{ ExecutionException -> 0x00f2 }
            goto L_0x0098
        L_0x00f2:
            r0 = move-exception
            java.lang.String r1 = c     // Catch:{ all -> 0x0133 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0133 }
            r2.<init>()     // Catch:{ all -> 0x0133 }
            java.lang.String r3 = "Tx or Rx thread threw a exception: "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x0133 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0133 }
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch:{ all -> 0x0133 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0133 }
            com.ifengyu.intercom.b.s.d(r1, r0)     // Catch:{ all -> 0x0133 }
            java.lang.String r0 = c     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r1 = "Process loop is finished."
            com.ifengyu.intercom.b.s.a(r0, r1)     // Catch:{ InterruptedException -> 0x00bd }
            r12.b()     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r0 = r15.a()     // Catch:{ InterruptedException -> 0x00bd }
            r9.c(r0)     // Catch:{ InterruptedException -> 0x00bd }
            r0 = 1
            r4.cancel(r0)     // Catch:{ InterruptedException -> 0x00bd }
            r0 = 1
            r5.cancel(r0)     // Catch:{ InterruptedException -> 0x00bd }
            goto L_0x00b4
        L_0x0129:
            r0 = move-exception
            java.lang.String r0 = c     // Catch:{ ExecutionException -> 0x00f2 }
            java.lang.String r1 = "Tx thread was cancelled"
            com.ifengyu.intercom.b.s.b(r0, r1)     // Catch:{ ExecutionException -> 0x00f2 }
            goto L_0x009b
        L_0x0133:
            r0 = move-exception
            java.lang.String r1 = c     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r2 = "Process loop is finished."
            com.ifengyu.intercom.b.s.a(r1, r2)     // Catch:{ InterruptedException -> 0x00bd }
            r12.b()     // Catch:{ InterruptedException -> 0x00bd }
            java.lang.String r1 = r15.a()     // Catch:{ InterruptedException -> 0x00bd }
            r9.c(r1)     // Catch:{ InterruptedException -> 0x00bd }
            r1 = 1
            r4.cancel(r1)     // Catch:{ InterruptedException -> 0x00bd }
            r1 = 1
            r5.cancel(r1)     // Catch:{ InterruptedException -> 0x00bd }
            throw r0     // Catch:{ InterruptedException -> 0x00bd }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.node.q.a(java.io.InputStream, java.io.OutputStream, com.ifengyu.intercom.node.transport.j, com.ifengyu.intercom.node.ConnectionConfiguration, java.lang.String, com.ifengyu.intercom.node.e):void");
    }

    private e a(InputStream inputStream, OutputStream outputStream, ConnectionConfiguration connectionConfiguration, j jVar, Handler handler) throws ConnectionPermissionException, VersionMismatchException {
        e eVar;
        s.a(c, "doSealHandshake: start...");
        h a2 = i.a();
        try {
            i.a(a2, outputStream, SendDataWrap.a(5, (com.google.protobuf.Message) f.a(connectionConfiguration), (int) ClientConstants.LOGIN_RET_CODE_USER_ID_NEEDED), jVar);
            w.n(5);
            com.google.protobuf.Message a3 = i.a(a2, inputStream, jVar);
            if (!(a3 instanceof SEAL_Connect)) {
                s.d(c, "error, device didn't start with a connectResponse message");
                return null;
            }
            e a4 = a(connectionConfiguration, (SEAL_Connect) a3);
            s.a(c, "doSealHandshake: isWaitingConfirm = " + this.h);
            if (this.h) {
                try {
                    com.google.protobuf.Message a5 = i.a(a2, inputStream, jVar);
                    if (a5 instanceof SEAL_Connect) {
                        c();
                        eVar = a(connectionConfiguration, (SEAL_Connect) a5);
                        if (eVar != null) {
                            return eVar;
                        }
                        try {
                            s.d(c, "connect failed, refused or timeout");
                            return eVar;
                        } catch (IOException e2) {
                        }
                    }
                } catch (IOException e3) {
                    eVar = a4;
                    s.d(c, "error while waiting for confirm");
                    return eVar;
                }
            }
            return a4;
        } catch (IOException e4) {
            ThrowableExtension.printStackTrace(e4);
            return null;
        }
    }

    private e b(InputStream inputStream, OutputStream outputStream, ConnectionConfiguration connectionConfiguration, j jVar, Handler handler) throws ConnectionPermissionException, VersionMismatchException {
        e eVar;
        s.a(c, "doSharkHandshake: start...");
        h a2 = i.a();
        try {
            i.a(a2, outputStream, SendDataWrap.a(4, (com.google.protobuf.Message) g.a(connectionConfiguration), (int) ClientConstants.LOGIN_RET_CODE_USER_ID_NEEDED), jVar);
            w.n(4);
            com.google.protobuf.Message b2 = i.b(a2, inputStream, jVar);
            if (!(b2 instanceof SHARK_Connect)) {
                s.d(c, "error, device didn't start with a connectResponse message");
                return null;
            }
            e a3 = a(connectionConfiguration, (SHARK_Connect) b2);
            s.a(c, "doSharkHandshake: isWaitingConfirm = " + this.h);
            if (this.h) {
                try {
                    com.google.protobuf.Message b3 = i.b(a2, inputStream, jVar);
                    if (b3 instanceof SHARK_Connect) {
                        c();
                        eVar = a(connectionConfiguration, (SHARK_Connect) b3);
                        if (eVar != null) {
                            return eVar;
                        }
                        try {
                            s.d(c, "connect failed, refused or timeout");
                            return eVar;
                        } catch (IOException e2) {
                        }
                    }
                } catch (IOException e3) {
                    eVar = a3;
                    s.d(c, "error while waiting for confirm");
                    return eVar;
                }
            }
            return a3;
        } catch (IOException e4) {
            ThrowableExtension.printStackTrace(e4);
            return null;
        }
    }

    private e c(InputStream inputStream, OutputStream outputStream, ConnectionConfiguration connectionConfiguration, j jVar, Handler handler) throws ConnectionPermissionException {
        s.a(c, "doBtKeyHandshake: start...");
        final h a2 = i.a();
        final SendDataWrap a3 = SendDataWrap.a(6, com.ifengyu.intercom.node.transport.a.a(connectionConfiguration), (int) ClientConstants.LOGIN_RET_CODE_USER_ID_NEEDED);
        try {
            i.b(a2, outputStream, a3, jVar);
            final OutputStream outputStream2 = outputStream;
            final j jVar2 = jVar;
            AnonymousClass2 r2 = new Runnable() {
                public void run() {
                    try {
                        i.b(a2, outputStream2, a3, jVar2);
                    } catch (IOException e2) {
                        ThrowableExtension.printStackTrace(e2);
                    }
                }
            };
            handler.postDelayed(r2, 2000);
            w.n(6);
            com.ifengyu.intercom.node.btkey.a c2 = i.c(a2, inputStream, jVar);
            handler.removeCallbacks(r2);
            if (c2 instanceof BtKeyConnect) {
                return a(connectionConfiguration, (BtKeyConnect) c2);
            }
            s.d(c, "error, device didn't start with a connectResponse message");
            return null;
        } catch (IOException e2) {
            ThrowableExtension.printStackTrace(e2);
            return null;
        }
    }

    private e d(InputStream inputStream, OutputStream outputStream, ConnectionConfiguration connectionConfiguration, j jVar, Handler handler) throws ConnectionPermissionException, VersionMismatchException {
        s.a(c, "doDolphinHandshake: start...");
        final h a2 = i.a();
        try {
            final SendDataWrap a3 = SendDataWrap.a(1, (com.google.protobuf.Message) com.ifengyu.intercom.node.transport.d.a(Command.newBuilder(), connectionConfiguration), -1);
            i.a(a2, outputStream, a3, jVar);
            final OutputStream outputStream2 = outputStream;
            final j jVar2 = jVar;
            AnonymousClass3 r0 = new Runnable() {
                public void run() {
                    try {
                        i.a(a2, outputStream2, a3, jVar2);
                    } catch (IOException e2) {
                        ThrowableExtension.printStackTrace(e2);
                    }
                }
            };
            handler.postDelayed(r0, 2000);
            w.n(1);
            Builder newBuilder = Command.newBuilder();
            i.a(a2, inputStream, newBuilder, jVar);
            handler.removeCallbacks(r0);
            if (!newBuilder.hasConnectResp()) {
                s.d(c, "error, device didn't start with a connectResponse message, found: " + a(newBuilder.build()));
                return null;
            }
            w.a = Math.min(2, newBuilder.getConnectResp().getVersion());
            e a4 = a(connectionConfiguration, newBuilder.build());
            s.a(c, "doDolphinHandshake: isWaitingConfirm = " + this.h);
            if (!this.h) {
                return a4;
            }
            newBuilder.clear();
            try {
                i.a(a2, inputStream, newBuilder, jVar);
                if (!newBuilder.hasConnectResp()) {
                    return a4;
                }
                w.a = Math.min(2, newBuilder.getConnectResp().getVersion());
                c();
                e a5 = a(connectionConfiguration, newBuilder.build());
                if (a5 != null) {
                    return a5;
                }
                s.d(c, "connect failed, refused or timeout");
                return a5;
            } catch (IOException e2) {
                s.d(c, "error while waiting for confirm");
                return a4;
            }
        } catch (IOException e3) {
            s.a(c, "error while connecting to device:", e3);
            return null;
        }
    }

    private e a(ConnectionConfiguration connectionConfiguration, SEAL_Connect sEAL_Connect) throws ConnectionPermissionException, VersionMismatchException {
        s.c(c, "getSealConnectionInfo");
        int version = sEAL_Connect.getVersion();
        int deviceId = sEAL_Connect.getDeviceId();
        SEAL_CONNCODE connCode = sEAL_Connect.getConnCode();
        SEAL_LANGUAGETYPE language = sEAL_Connect.getLanguage();
        if (connCode == SEAL_CONNCODE.SEAL_ALLOW) {
            s.a(c, "allow to connect");
            w.h();
            e eVar = new e(String.valueOf(deviceId), version);
            w.n(5);
            w.c(String.valueOf(deviceId));
            w.d(language.getNumber() == 0 ? "mcu_language_type_chinese" : "mcu_language_type_english");
            connectionConfiguration.b(sEAL_Connect.hasColor() ? sEAL_Connect.getColor() : 0);
            c();
            return eVar;
        } else if (connCode == SEAL_CONNCODE.SEAL_REFUSE) {
            s.e(c, "Intercom refuse connect request or waiting confrim timeout!!!");
            a(connectionConfiguration.c(), ConnectionFailedReason.DENIED);
            c();
            throw new ConnectionPermissionException();
        } else if (connCode == SEAL_CONNCODE.SEAL_WAIT) {
            s.d(c, "Need confirm connection on your intercom screen!");
            b(connectionConfiguration.c());
            this.h = true;
            return null;
        } else if (connCode == SEAL_CONNCODE.SEAL_LOWPOWER) {
            s.e(c, "Intercom is low power");
            a(connectionConfiguration.c(), ConnectionFailedReason.LOWPOWER);
            c();
            throw new ConnectionPermissionException();
        } else if (connCode != SEAL_CONNCODE.SEAL_BUSY) {
            return null;
        } else {
            String c2 = connectionConfiguration.c();
            if (TextUtils.isEmpty(c2)) {
                return null;
            }
            d b2 = com.ifengyu.intercom.service.a.b();
            if (b2 == null) {
                return null;
            }
            b2.a(c2);
            return null;
        }
    }

    private e a(ConnectionConfiguration connectionConfiguration, SHARK_Connect sHARK_Connect) throws ConnectionPermissionException, VersionMismatchException {
        s.c(c, "getSharkConnectionInfo");
        int version = sHARK_Connect.getVersion();
        int deviceId = sHARK_Connect.getDeviceId();
        SHARK_CONNCODE connCode = sHARK_Connect.getConnCode();
        SHARK_LANGUAGETYPE language = sHARK_Connect.getLanguage();
        if (connCode == SHARK_CONNCODE.SHARK_ALLOW) {
            s.a(c, "allow to connect");
            w.h();
            e eVar = new e(String.valueOf(deviceId), version);
            w.n(4);
            w.e(String.valueOf(deviceId));
            w.f(language.getNumber() == 0 ? "mcu_language_type_chinese" : "mcu_language_type_english");
            c();
            return eVar;
        } else if (connCode == SHARK_CONNCODE.SHARK_REFUSE) {
            s.e(c, "Intercom refuse connect request or waiting confrim timeout!!!");
            a(connectionConfiguration.c(), ConnectionFailedReason.DENIED);
            c();
            throw new ConnectionPermissionException();
        } else if (connCode == SHARK_CONNCODE.SHARK_WAIT) {
            s.d(c, "Need confirm connection on your intercom screen!");
            b(connectionConfiguration.c());
            this.h = true;
            return null;
        } else if (connCode == SHARK_CONNCODE.SHARK_LOWPOWER) {
            s.e(c, "Intercom is low power");
            a(connectionConfiguration.c(), ConnectionFailedReason.LOWPOWER);
            c();
            throw new ConnectionPermissionException();
        } else if (connCode != SHARK_CONNCODE.SHARK_BUSY) {
            return null;
        } else {
            String c2 = connectionConfiguration.c();
            if (TextUtils.isEmpty(c2)) {
                return null;
            }
            d b2 = com.ifengyu.intercom.service.a.b();
            if (b2 == null) {
                return null;
            }
            b2.a(c2);
            return null;
        }
    }

    private e a(ConnectionConfiguration connectionConfiguration, BtKeyConnect btKeyConnect) throws ConnectionPermissionException {
        s.c(c, "getBtKeyConnectionInfo");
        BTKEY_CONNCODE a2 = btKeyConnect.a();
        if (a2 == BTKEY_CONNCODE.BTKEY_ALLOW) {
            s.a(c, "allow to connect");
            e eVar = new e(String.valueOf(0), 1);
            w.n(6);
            c();
            return eVar;
        } else if (a2 != BTKEY_CONNCODE.BTKEY_LOWPOWER) {
            return null;
        } else {
            s.e(c, "Intercom is low power");
            a(connectionConfiguration.c(), ConnectionFailedReason.LOWPOWER);
            c();
            throw new ConnectionPermissionException();
        }
    }

    private e a(ConnectionConfiguration connectionConfiguration, Command command) throws ConnectionPermissionException, VersionMismatchException {
        CONNCODE connCode = command.getConnectResp().getConnCode();
        if (connCode == CONNCODE.ALLOW) {
            s.a(c, "allow to connect");
            w.h();
            int version = command.getConnectResp().getVersion();
            if (version < 1) {
                s.e(c, "Support min version is 1, but got version " + version);
                a(connectionConfiguration.c(), ConnectionFailedReason.VERSION_NOT_SUPPORT);
                c();
                throw new VersionMismatchException();
            }
            e eVar = new e(String.valueOf(command.getConnectResp().getDeviceId()), version);
            w.n(1);
            c();
            return eVar;
        } else if (connCode == CONNCODE.REFUSE) {
            s.e(c, "Intercom refuse connect request or waiting confrim timeout!!!");
            a(connectionConfiguration.c(), ConnectionFailedReason.DENIED);
            c();
            throw new ConnectionPermissionException();
        } else if (connCode == CONNCODE.WAIT) {
            s.d(c, "Need confirm connection on your intercom screen!");
            b(connectionConfiguration.c());
            this.h = true;
            return null;
        } else if (connCode != CONNCODE.REFUSE_LOWPOWER) {
            return null;
        } else {
            s.e(c, "Intercom is low power");
            a(connectionConfiguration.c(), ConnectionFailedReason.LOWPOWER);
            c();
            throw new ConnectionPermissionException();
        }
    }

    private void c() {
        this.h = false;
    }

    /* access modifiers changed from: 0000 */
    public void a(String str) {
        s.b(c, "onCallableEnded: nodeId " + str);
        g gVar = (g) this.g.get(str);
        try {
            gVar.f.close();
        } catch (IOException e2) {
            s.d(c, "Got exception while close inputStream");
        }
        try {
            gVar.g.close();
        } catch (IOException e3) {
            s.d(c, "Got exception while close outputStream");
        }
        try {
            if (!gVar.e.isDone() || !gVar.d.isDone()) {
                if (!gVar.e.isDone()) {
                    s.a(c, "onCallableEnded - stopping rx thread");
                    gVar.e.cancel(true);
                }
                if (!gVar.d.isDone()) {
                    s.a(c, "onCallableEnded - stopping tx thread");
                    gVar.d.cancel(true);
                    return;
                }
                return;
            }
            s.a(c, "onCallableEnded - both reader and writer threads are already closed");
            this.g.remove(str);
        } catch (Exception e4) {
            ThrowableExtension.printStackTrace(e4);
        }
    }

    public j a() {
        return new j(this.f);
    }

    public static String a(Command command) {
        if (command.hasConnectQuery()) {
            return "ConnectQuery";
        }
        if (command.hasConnectResp()) {
            return "ConnectResp";
        }
        if (command.hasHeartbeat()) {
            return "Heartbeat";
        }
        if (command.hasControl()) {
            return "Control";
        }
        if (command.hasParamQuery()) {
            return "ParamQuery";
        }
        if (command.hasParamResp()) {
            return "ParamResp";
        }
        if (command.hasParamUpdate()) {
            return "ParamUpdate";
        }
        if (command.hasStateQuery()) {
            return "StateQuery";
        }
        if (command.hasStateResp()) {
            return "StateResp";
        }
        if (command.hasLocationSync()) {
            return "LocationSync";
        }
        if (command.hasLocationCtl()) {
            return "LocationCtl";
        }
        if (command.hasFileReq()) {
            return "FileReq";
        }
        if (command.hasFilePack()) {
            return "FilePack";
        }
        if (command.hasFileResp()) {
            return "FileResponse";
        }
        if (command.hasUpdateResponse()) {
            return "UpdateResponse";
        }
        return "UnknownType";
    }

    private void a(String str, ConnectionFailedReason connectionFailedReason) {
        for (h a2 : this.b) {
            a2.a(str, connectionFailedReason);
        }
    }

    private void b(String str) {
        for (h b2 : this.b) {
            b2.b(str);
        }
    }

    private void a(j jVar) {
        for (h a2 : this.b) {
            a2.a(jVar);
        }
    }

    private void c(String str) {
        for (h a2 : this.b) {
            a2.a(str);
        }
    }

    public void a(h hVar) {
        this.b.add(hVar);
    }

    public int b() {
        return this.m;
    }
}
