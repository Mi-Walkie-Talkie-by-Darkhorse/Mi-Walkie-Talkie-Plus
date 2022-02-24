package com.ifengyu.intercom.node;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.utils.e;
import com.ifengyu.intercom.node.btkey.BtKeyConnect;
import com.ifengyu.intercom.node.transport.f;
import com.ifengyu.intercom.node.transport.g;
import com.ifengyu.intercom.node.transport.h;
import com.ifengyu.intercom.node.transport.i;
import com.ifengyu.intercom.node.transport.j;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;

/* compiled from: WalkTalkTransportManager.java */
/* loaded from: classes2.dex */
public class p {
    private static final String m = "p";

    /* renamed from: a  reason: collision with root package name */
    private ExecutorService f5937a;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f5939c;
    private InputStream g;
    private OutputStream h;
    private j i;
    private ConnectionConfiguration j;
    private int k;
    private String l;

    /* renamed from: b  reason: collision with root package name */
    private final Object f5938b = new Object();
    public final List<g> d = new ArrayList();
    private final Map<String, f> e = new HashMap();
    private volatile boolean f = false;

    /* compiled from: WalkTalkTransportManager.java */
    /* loaded from: classes2.dex */
    class a implements ThreadFactory {
        a(p pVar) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new n(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalkTalkTransportManager.java */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f5940a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ OutputStream f5941b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SendDataWrap f5942c;
        final /* synthetic */ j d;

        b(p pVar, h hVar, OutputStream outputStream, SendDataWrap sendDataWrap, j jVar) {
            this.f5940a = hVar;
            this.f5941b = outputStream;
            this.f5942c = sendDataWrap;
            this.d = jVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                i.a(this.f5940a, this.f5941b, this.f5942c, this.d);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalkTalkTransportManager.java */
    /* loaded from: classes2.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f5943a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ OutputStream f5944b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SendDataWrap f5945c;
        final /* synthetic */ j d;

        c(p pVar, h hVar, OutputStream outputStream, SendDataWrap sendDataWrap, j jVar) {
            this.f5943a = hVar;
            this.f5944b = outputStream;
            this.f5945c = sendDataWrap;
            this.d = jVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                i.b(this.f5943a, this.f5944b, this.f5945c, this.d);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* compiled from: WalkTalkTransportManager.java */
    /* loaded from: classes2.dex */
    private class d extends Handler {
        d(p pVar, p pVar2, Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            j jVar = (j) message.obj;
            if (jVar == null || !jVar.b()) {
                z.d("TxWdtHandler", "Write is not stuck. No action needed.");
                return;
            }
            z.e("TxWdtHandler", "Write is stuck. Killing thread: " + jVar.f5970a.getId());
            jVar.a("stuck while writing");
            jVar.a();
        }
    }

    public p(Context context) {
        HandlerThread handlerThread = new HandlerThread("writer-watchdog");
        handlerThread.start();
        this.f5939c = new d(this, this, handlerThread.getLooper());
        com.ifengyu.intercom.eventbus.a.a().b(this);
    }

    private d b(InputStream inputStream, OutputStream outputStream, ConnectionConfiguration connectionConfiguration, j jVar, Handler handler) throws ConnectionPermissionException, VersionMismatchException {
        z.d(m, "doDolphinHandshake: start...");
        h a2 = i.a();
        try {
            SendDataWrap a3 = SendDataWrap.a(1, com.ifengyu.intercom.node.transport.d.a(MitalkProtos.Command.newBuilder(), connectionConfiguration), -1);
            i.b(a2, outputStream, a3, jVar);
            c cVar = new c(this, a2, outputStream, a3, jVar);
            handler.postDelayed(cVar, 2000L);
            d0.e(1);
            MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
            i.a(a2, inputStream, newBuilder, jVar);
            handler.removeCallbacks(cVar);
            if (!newBuilder.hasConnectResp()) {
                String str = m;
                z.e(str, "error, device didn't start with a connectResponse message, found: " + a(newBuilder.build()));
                return null;
            }
            d0.f5308a = Math.min(2, newBuilder.getConnectResp().getVersion());
            d a4 = a(connectionConfiguration, newBuilder.build());
            String str2 = m;
            z.d(str2, "doDolphinHandshake: isWaitingConfirm = " + this.f);
            if (!this.f) {
                return a4;
            }
            newBuilder.clear();
            try {
                i.a(a2, inputStream, newBuilder, jVar);
                if (!newBuilder.hasConnectResp()) {
                    return a4;
                }
                d0.f5308a = Math.min(2, newBuilder.getConnectResp().getVersion());
                c();
                d a5 = a(connectionConfiguration, newBuilder.build());
                if (a5 == null) {
                    try {
                        z.e(m, "connect failed, refused or timeout");
                    } catch (IOException unused) {
                        a4 = a5;
                        z.e(m, "error while waiting for confirm");
                        return a4;
                    }
                }
                return a5;
            } catch (IOException unused2) {
            }
        } catch (IOException e) {
            z.b(m, "error while connecting to device:", e);
            return null;
        }
    }

    private d c(InputStream inputStream, OutputStream outputStream, ConnectionConfiguration connectionConfiguration, j jVar, Handler handler) throws ConnectionPermissionException, VersionMismatchException {
        z.d(m, "doSealHandshake: start...");
        h a2 = i.a();
        try {
            i.b(a2, outputStream, SendDataWrap.a(5, f.a(connectionConfiguration), 20001), jVar);
            d0.e(5);
            com.google.protobuf.Message b2 = i.b(a2, inputStream, jVar);
            if (!(b2 instanceof SealProtos.SEAL_Connect)) {
                z.e(m, "error, device didn't start with a connectResponse message");
                return null;
            }
            d a3 = a(connectionConfiguration, (SealProtos.SEAL_Connect) b2);
            String str = m;
            z.d(str, "doSealHandshake: isWaitingConfirm = " + this.f);
            if (!this.f) {
                return a3;
            }
            try {
                com.google.protobuf.Message b3 = i.b(a2, inputStream, jVar);
                if (!(b3 instanceof SealProtos.SEAL_Connect)) {
                    return a3;
                }
                c();
                d a4 = a(connectionConfiguration, (SealProtos.SEAL_Connect) b3);
                if (a4 == null) {
                    try {
                        z.e(m, "connect failed, refused or timeout");
                    } catch (IOException unused) {
                        a3 = a4;
                        z.e(m, "error while waiting for confirm");
                        return a3;
                    }
                }
                return a4;
            } catch (IOException unused2) {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private d d(InputStream inputStream, OutputStream outputStream, ConnectionConfiguration connectionConfiguration, j jVar, Handler handler) throws ConnectionPermissionException, VersionMismatchException {
        z.d(m, "doSharkHandshake: start...");
        h a2 = i.a();
        try {
            i.b(a2, outputStream, SendDataWrap.a(4, g.a(connectionConfiguration), 20001), jVar);
            d0.e(4);
            com.google.protobuf.Message c2 = i.c(a2, inputStream, jVar);
            if (!(c2 instanceof SharkProtos.SHARK_Connect)) {
                z.e(m, "error, device didn't start with a connectResponse message");
                return null;
            }
            d a3 = a(connectionConfiguration, (SharkProtos.SHARK_Connect) c2);
            String str = m;
            z.d(str, "doSharkHandshake: isWaitingConfirm = " + this.f);
            if (!this.f) {
                return a3;
            }
            try {
                com.google.protobuf.Message c3 = i.c(a2, inputStream, jVar);
                if (!(c3 instanceof SharkProtos.SHARK_Connect)) {
                    return a3;
                }
                c();
                d a4 = a(connectionConfiguration, (SharkProtos.SHARK_Connect) c3);
                if (a4 == null) {
                    try {
                        z.e(m, "connect failed, refused or timeout");
                    } catch (IOException unused) {
                        a3 = a4;
                        z.e(m, "error while waiting for confirm");
                        return a3;
                    }
                }
                return a4;
            } catch (IOException unused2) {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public final void a(InputStream inputStream, OutputStream outputStream, j jVar, ConnectionConfiguration connectionConfiguration, int i, Handler handler) throws ConnectionPermissionException, VersionMismatchException {
        z.d(m, "startProcessLoop()");
        this.g = inputStream;
        this.h = outputStream;
        this.i = jVar;
        this.j = connectionConfiguration;
        this.k = i;
        c();
        synchronized (this.f5938b) {
            if (this.f5937a == null || this.f5937a.isShutdown()) {
                this.f5937a = Executors.newCachedThreadPool(new a(this));
            }
        }
        this.i.f5970a = Thread.currentThread();
        z.d(m, "before doHandshake()");
        ConnectionConfiguration a2 = com.ifengyu.intercom.node.q.d.c().d.a(this.j.a());
        d dVar = null;
        if (a2 != null) {
            this.l = a2.e();
            if (this.j.c() == 0 || this.j.c() == 1) {
                this.j.b(a2.c());
            }
        } else {
            this.l = null;
        }
        this.j.c(this.l);
        if (this.j.c() == 0) {
            this.j.b(1);
        }
        String str = m;
        z.e(str, "config.getDeviceType : " + this.j.toString());
        int c2 = this.j.c();
        if (c2 == 1) {
            dVar = b(this.g, this.h, this.j, this.i, handler);
        } else if (c2 == 4) {
            dVar = d(this.g, this.h, this.j, this.i, handler);
        } else if (c2 == 5) {
            dVar = c(this.g, this.h, this.j, this.i, handler);
        } else if (c2 == 6) {
            dVar = a(this.g, this.h, this.j, this.i, handler);
        }
        z.c(m, "doHandshake end");
        a(this.g, this.h, this.i, this.j, this.l, dVar);
    }

    private void c() {
        this.f = false;
    }

    private void c(String str) {
        for (g gVar : this.d) {
            gVar.a(str);
        }
    }

    private void b(String str) {
        for (g gVar : this.d) {
            gVar.b(str);
        }
    }

    public int b() {
        return this.k;
    }

    private void a(InputStream inputStream, OutputStream outputStream, j jVar, ConnectionConfiguration connectionConfiguration, String str, d dVar) {
        try {
            if (dVar != null) {
                String a2 = dVar.a();
                if (a2 != null) {
                    String str2 = m;
                    z.d(str2, "connected to device=" + connectionConfiguration.d() + ", oldId=" + str + ", nodeId=" + a2);
                    if (TextUtils.isEmpty(str)) {
                        z.a(m, "first connect");
                        connectionConfiguration.b(false);
                    }
                    connectionConfiguration.c(a2);
                    com.ifengyu.intercom.node.q.d.c().d.a(connectionConfiguration);
                } else {
                    z.e(m, "can not get node id.");
                }
                o oVar = new o(outputStream, dVar, jVar);
                Future submit = this.f5937a.submit(new c(this, a2, oVar));
                Future submit2 = this.f5937a.submit(new c(this, a2, new k(this, inputStream, dVar, jVar)));
                synchronized (this.e) {
                    this.e.put(dVar.a(), new f(this, connectionConfiguration, oVar, submit, submit2, inputStream, outputStream));
                }
                a(oVar);
                e.a(connectionConfiguration.c());
                z.d(m, "blocking until processing loop finishes...");
                try {
                    try {
                        submit2.get();
                    } catch (ExecutionException e) {
                        String str3 = m;
                        z.e(str3, "Tx or Rx thread threw a exception: " + e.getMessage());
                        z.d(m, "Process loop is finished.");
                        jVar.c();
                        c(dVar.a());
                        submit.cancel(true);
                    }
                } catch (CancellationException unused) {
                    z.a(m, "Rx thread was cancelled");
                }
                try {
                    submit.get();
                } catch (CancellationException unused2) {
                    z.a(m, "Tx thread was cancelled");
                }
                z.d(m, "Process loop is finished.");
                jVar.c();
                c(dVar.a());
                submit.cancel(true);
                submit2.cancel(true);
                return;
            }
            z.e(m, "connect failed, close.");
            jVar.c();
        } catch (InterruptedException e2) {
            String str4 = m;
            z.e(str4, "Interrupted exception:" + e2.getMessage());
        }
    }

    private d a(InputStream inputStream, OutputStream outputStream, ConnectionConfiguration connectionConfiguration, j jVar, Handler handler) throws ConnectionPermissionException {
        z.d(m, "doBtKeyHandshake: start...");
        h a2 = i.a();
        SendDataWrap a3 = SendDataWrap.a(6, com.ifengyu.intercom.node.transport.a.a(connectionConfiguration), 20001);
        try {
            i.a(a2, outputStream, a3, jVar);
            b bVar = new b(this, a2, outputStream, a3, jVar);
            handler.postDelayed(bVar, 2000L);
            d0.e(6);
            com.ifengyu.intercom.node.btkey.a a4 = i.a(a2, inputStream, jVar);
            handler.removeCallbacks(bVar);
            if (a4 instanceof BtKeyConnect) {
                return a(connectionConfiguration, (BtKeyConnect) a4);
            }
            z.e(m, "error, device didn't start with a connectResponse message");
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private d a(ConnectionConfiguration connectionConfiguration, SealProtos.SEAL_Connect sEAL_Connect) throws ConnectionPermissionException, VersionMismatchException {
        com.ifengyu.intercom.node.q.d a2;
        z.c(m, "getSealConnectionInfo");
        int version = sEAL_Connect.getVersion();
        int deviceId = sEAL_Connect.getDeviceId();
        SealProtos.SEAL_CONNCODE connCode = sEAL_Connect.getConnCode();
        SealProtos.SEAL_Connect.SEAL_LANGUAGETYPE language = sEAL_Connect.getLanguage();
        if (connCode == SealProtos.SEAL_CONNCODE.SEAL_ALLOW) {
            z.d(m, "allow to connect");
            d0.a();
            d dVar = new d(String.valueOf(deviceId), version);
            d0.e(5);
            d0.m(String.valueOf(deviceId));
            d0.n(language.getNumber() == 0 ? "mcu_language_type_chinese" : "mcu_language_type_english");
            connectionConfiguration.a(sEAL_Connect.hasColor() ? sEAL_Connect.getColor() : 0);
            c();
            return dVar;
        } else if (connCode != SealProtos.SEAL_CONNCODE.SEAL_REFUSE) {
            if (connCode == SealProtos.SEAL_CONNCODE.SEAL_WAIT) {
                z.e(m, "Need confirm connection on your intercom screen!");
                b(connectionConfiguration.a());
                this.f = true;
            } else if (connCode == SealProtos.SEAL_CONNCODE.SEAL_LOWPOWER) {
                z.b(m, "Intercom is low power");
                a(connectionConfiguration.a(), ConnectionFailedReason.LOWPOWER);
                c();
                throw new ConnectionPermissionException();
            } else if (connCode == SealProtos.SEAL_CONNCODE.SEAL_BUSY) {
                String a3 = connectionConfiguration.a();
                if (!TextUtils.isEmpty(a3) && (a2 = com.ifengyu.intercom.service.a.a()) != null) {
                    a2.c(a3);
                }
            }
            return null;
        } else {
            z.b(m, "Intercom refuse connect request or waiting confrim timeout!!!");
            a(connectionConfiguration.a(), ConnectionFailedReason.DENIED);
            c();
            throw new ConnectionPermissionException();
        }
    }

    private d a(ConnectionConfiguration connectionConfiguration, SharkProtos.SHARK_Connect sHARK_Connect) throws ConnectionPermissionException, VersionMismatchException {
        com.ifengyu.intercom.node.q.d a2;
        z.c(m, "getSharkConnectionInfo");
        int version = sHARK_Connect.getVersion();
        int deviceId = sHARK_Connect.getDeviceId();
        SharkProtos.SHARK_CONNCODE connCode = sHARK_Connect.getConnCode();
        SharkProtos.SHARK_Connect.SHARK_LANGUAGETYPE language = sHARK_Connect.getLanguage();
        if (connCode == SharkProtos.SHARK_CONNCODE.SHARK_ALLOW) {
            z.d(m, "allow to connect");
            d0.a();
            d dVar = new d(String.valueOf(deviceId), version);
            d0.e(4);
            d0.o(String.valueOf(deviceId));
            d0.p(language.getNumber() == 0 ? "mcu_language_type_chinese" : "mcu_language_type_english");
            c();
            return dVar;
        } else if (connCode != SharkProtos.SHARK_CONNCODE.SHARK_REFUSE) {
            if (connCode == SharkProtos.SHARK_CONNCODE.SHARK_WAIT) {
                z.e(m, "Need confirm connection on your intercom screen!");
                b(connectionConfiguration.a());
                this.f = true;
            } else if (connCode == SharkProtos.SHARK_CONNCODE.SHARK_LOWPOWER) {
                z.b(m, "Intercom is low power");
                a(connectionConfiguration.a(), ConnectionFailedReason.LOWPOWER);
                c();
                throw new ConnectionPermissionException();
            } else if (connCode == SharkProtos.SHARK_CONNCODE.SHARK_BUSY) {
                String a3 = connectionConfiguration.a();
                if (!TextUtils.isEmpty(a3) && (a2 = com.ifengyu.intercom.service.a.a()) != null) {
                    a2.c(a3);
                }
            }
            return null;
        } else {
            z.b(m, "Intercom refuse connect request or waiting confrim timeout!!!");
            a(connectionConfiguration.a(), ConnectionFailedReason.DENIED);
            c();
            throw new ConnectionPermissionException();
        }
    }

    private d a(ConnectionConfiguration connectionConfiguration, BtKeyConnect btKeyConnect) throws ConnectionPermissionException {
        z.c(m, "getBtKeyConnectionInfo");
        BtKeyConnect.BTKEY_CONNCODE a2 = btKeyConnect.a();
        if (a2 == BtKeyConnect.BTKEY_CONNCODE.BTKEY_ALLOW) {
            z.d(m, "allow to connect");
            d dVar = new d(String.valueOf(0), 1);
            d0.e(6);
            c();
            return dVar;
        } else if (a2 != BtKeyConnect.BTKEY_CONNCODE.BTKEY_LOWPOWER) {
            return null;
        } else {
            z.b(m, "Intercom is low power");
            a(connectionConfiguration.a(), ConnectionFailedReason.LOWPOWER);
            c();
            throw new ConnectionPermissionException();
        }
    }

    private d a(ConnectionConfiguration connectionConfiguration, MitalkProtos.Command command) throws ConnectionPermissionException, VersionMismatchException {
        MitalkProtos.CONNCODE connCode = command.getConnectResp().getConnCode();
        if (connCode == MitalkProtos.CONNCODE.ALLOW) {
            z.d(m, "allow to connect");
            d0.a();
            int version = command.getConnectResp().getVersion();
            if (version >= 1) {
                d dVar = new d(String.valueOf(command.getConnectResp().getDeviceId()), version);
                d0.e(1);
                c();
                return dVar;
            }
            String str = m;
            z.b(str, "Support min version is 1, but got version " + version);
            a(connectionConfiguration.a(), ConnectionFailedReason.VERSION_NOT_SUPPORT);
            c();
            throw new VersionMismatchException();
        } else if (connCode != MitalkProtos.CONNCODE.REFUSE) {
            if (connCode == MitalkProtos.CONNCODE.WAIT) {
                z.e(m, "Need confirm connection on your intercom screen!");
                b(connectionConfiguration.a());
                this.f = true;
            } else if (connCode == MitalkProtos.CONNCODE.REFUSE_LOWPOWER) {
                z.b(m, "Intercom is low power");
                a(connectionConfiguration.a(), ConnectionFailedReason.LOWPOWER);
                c();
                throw new ConnectionPermissionException();
            }
            return null;
        } else {
            z.b(m, "Intercom refuse connect request or waiting confrim timeout!!!");
            a(connectionConfiguration.a(), ConnectionFailedReason.DENIED);
            c();
            throw new ConnectionPermissionException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        String str2 = m;
        z.a(str2, "onCallableEnded: nodeId " + str);
        f fVar = this.e.get(str);
        try {
            fVar.f5921c.close();
        } catch (IOException unused) {
            z.e(m, "Got exception while close inputStream");
        }
        try {
            fVar.d.close();
        } catch (IOException unused2) {
            z.e(m, "Got exception while close outputStream");
        }
        try {
            if (!fVar.f5920b.isDone() || !fVar.f5919a.isDone()) {
                if (!fVar.f5920b.isDone()) {
                    z.d(m, "onCallableEnded - stopping rx thread");
                    fVar.f5920b.cancel(true);
                }
                if (!fVar.f5919a.isDone()) {
                    z.d(m, "onCallableEnded - stopping tx thread");
                    fVar.f5919a.cancel(true);
                    return;
                }
                return;
            }
            z.d(m, "onCallableEnded - both reader and writer threads are already closed");
            this.e.remove(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public j a() {
        return new j(this.f5939c);
    }

    public static String a(MitalkProtos.Command command) {
        return command.hasConnectQuery() ? "ConnectQuery" : command.hasConnectResp() ? "ConnectResp" : command.hasHeartbeat() ? "Heartbeat" : command.hasControl() ? "Control" : command.hasParamQuery() ? "ParamQuery" : command.hasParamResp() ? "ParamResp" : command.hasParamUpdate() ? "ParamUpdate" : command.hasStateQuery() ? "StateQuery" : command.hasStateResp() ? "StateResp" : command.hasLocationSync() ? "LocationSync" : command.hasLocationCtl() ? "LocationCtl" : command.hasFileReq() ? "FileReq" : command.hasFilePack() ? "FilePack" : command.hasFileResp() ? "FileResponse" : command.hasUpdateResponse() ? "UpdateResponse" : "UnknownType";
    }

    private void a(String str, ConnectionFailedReason connectionFailedReason) {
        for (g gVar : this.d) {
            gVar.a(str, connectionFailedReason);
        }
    }

    private void a(i iVar) {
        for (g gVar : this.d) {
            gVar.a(iVar);
        }
    }

    public void a(g gVar) {
        this.d.add(gVar);
    }
}
