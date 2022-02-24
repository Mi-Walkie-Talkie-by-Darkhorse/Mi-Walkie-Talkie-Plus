package com.ifengyu.intercom.lite.e;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.w;
import com.ifengyu.intercom.lite.database.LiteDatabase;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.ifengyu.intercom.lite.utils.j;
import com.ifengyu.intercom.protos.LiteProtos;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.UUID;
import no.nordicsemi.android.ble.t2;

/* compiled from: LiteBleClient.java */
/* loaded from: classes2.dex */
public class f extends com.ifengyu.blelib.b.e implements com.ifengyu.blelib.c.b {
    public static final UUID A = UUID.fromString("0000FDAB-0000-1000-8000-00805f9b34fb");
    public static final UUID B = UUID.fromString("0000AEC7-0000-1000-8000-00805f9b34fb");
    public static final UUID C = UUID.fromString("0000AEC8-0000-1000-8000-00805f9b34fb");
    public static final UUID D = UUID.fromString("00010203-0405-0607-0809-0a0b0c0d1912");
    public static final UUID E = UUID.fromString("00010203-0405-0607-0809-0a0b0c0d2b12");
    private static volatile f F;
    private boolean x;
    private boolean y;
    private Handler w = new Handler(Looper.getMainLooper());
    private Runnable z = new Runnable() { // from class: com.ifengyu.intercom.lite.e.b
        @Override // java.lang.Runnable
        public final void run() {
            f.this.B();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteBleClient.java */
    /* loaded from: classes2.dex */
    public class a implements Consumer<DeviceModel> {
        a() {
        }

        /* renamed from: a */
        public void accept(DeviceModel deviceModel) throws Exception {
            com.ifengyu.blelib.a.a(((com.ifengyu.blelib.b.e) f.this).l, "update device model disconnect success ");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteBleClient.java */
    /* loaded from: classes2.dex */
    public class b implements Consumer<Throwable> {
        b() {
        }

        /* renamed from: a */
        public void accept(Throwable th) throws Exception {
            com.ifengyu.blelib.a.b(((com.ifengyu.blelib.b.e) f.this).l, "update device model disconnect failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteBleClient.java */
    /* loaded from: classes2.dex */
    public class e extends com.ifengyu.blelib.c.e {
        e() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            f.this.b(cVar);
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = ((com.ifengyu.blelib.b.e) f.this).l;
            com.ifengyu.blelib.a.b(str, "login commend write failed, status: " + i);
            f.this.d(i == -5 ? 6 : 7);
            f.this.c().a();
        }
    }

    public f(@NonNull Context context) {
        super(context);
    }

    private void j(@NonNull BluetoothDevice bluetoothDevice) {
        Observable.just(bluetoothDevice).map(new Function() { // from class: com.ifengyu.intercom.lite.e.a
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return f.this.i((BluetoothDevice) obj);
            }
        }).subscribeOn(Schedulers.io()).subscribe(new a(), new b());
    }

    public boolean A() {
        return this.x;
    }

    public /* synthetic */ void B() {
        d(6);
        c().a();
        com.ifengyu.blelib.a.d(this.l, "connect failed, timeout");
    }

    public /* synthetic */ DeviceModel i(BluetoothDevice bluetoothDevice) throws Exception {
        com.ifengyu.intercom.lite.f.e n = LiteDatabase.a(g()).n();
        DeviceModel b2 = n.b(bluetoothDevice.getAddress());
        if (b2 == null) {
            return new DeviceModel();
        }
        b2.setConnected(false);
        b2.setUpdateTime(System.currentTimeMillis());
        n.b(b2);
        return b2;
    }

    @Override // com.ifengyu.blelib.b.e
    @NonNull
    public com.ifengyu.blelib.d.d n() {
        return new com.ifengyu.intercom.lite.e.i.a();
    }

    @Override // com.ifengyu.blelib.b.e
    protected com.ifengyu.blelib.d.c o() {
        return null;
    }

    @Override // com.ifengyu.blelib.b.e
    protected UUID s() {
        return C;
    }

    @Override // com.ifengyu.blelib.b.e
    protected UUID t() {
        return A;
    }

    @Override // com.ifengyu.blelib.b.e
    protected UUID v() {
        return D;
    }

    @Override // com.ifengyu.blelib.b.e
    protected UUID w() {
        return E;
    }

    @Override // com.ifengyu.blelib.b.e
    protected UUID x() {
        return B;
    }

    public boolean z() {
        return this.y;
    }

    public void c(boolean z) {
        this.y = z;
    }

    public void d(boolean z) {
        this.x = z;
    }

    public t2 e(byte[] bArr) {
        return b(this.p, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteBleClient.java */
    /* loaded from: classes2.dex */
    public class c extends com.ifengyu.blelib.c.e {
        c(long j) {
            super(j);
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            if (f.this.y()) {
                f.this.a((LiteProtos.ConnectResponse) cVar.b());
            } else {
                f.this.a(cVar);
            }
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = ((com.ifengyu.blelib.b.e) f.this).l;
            com.ifengyu.blelib.a.b(str, "connect commend write failed, status: " + i);
            f.this.d(i == -5 ? 6 : 7);
            f.this.c().a();
        }
    }

    public void b(com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20003, com.ifengyu.intercom.lite.e.h.a.d()), eVar);
    }

    public void c(int i, com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20005, com.ifengyu.intercom.lite.e.h.a.c(i)), eVar);
    }

    public void d(boolean z, com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20005, com.ifengyu.intercom.lite.e.h.a.d(z)), eVar);
    }

    public void e(com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20014, com.ifengyu.intercom.lite.e.h.a.b()), eVar);
    }

    public void b(int i, com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20005, com.ifengyu.intercom.lite.e.h.a.b(i)), eVar);
    }

    public void c(boolean z, com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20005, com.ifengyu.intercom.lite.e.h.a.c(z)), eVar);
    }

    public void d(com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20020, com.ifengyu.intercom.lite.e.h.a.a()), eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteBleClient.java */
    /* loaded from: classes2.dex */
    public class d extends com.ifengyu.blelib.c.e {
        d() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            String str = ((com.ifengyu.blelib.b.e) f.this).l;
            com.ifengyu.blelib.a.a(str, "query device param success, param: " + cVar.b().toString());
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) cVar.b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                f.this.a(devResponse.getDevInfo(), (byte[]) null);
                d0.f(devResponse.getDevInfo().getName().toStringUtf8());
            }
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = ((com.ifengyu.blelib.b.e) f.this).l;
            com.ifengyu.blelib.a.d(str, "query device param failed, status: " + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        if (i == 1) {
            j.a().a(new com.ifengyu.intercom.lite.event.b(com.ifengyu.intercom.lite.event.b.f5421c));
        }
        j.a().a(new com.ifengyu.intercom.lite.event.a(i));
        for (com.ifengyu.blelib.c.b bVar : this.m) {
            if (bVar instanceof com.ifengyu.intercom.lite.e.g.a) {
                ((com.ifengyu.intercom.lite.e.g.a) bVar).a(i);
            }
        }
    }

    public void b(boolean z, com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20005, com.ifengyu.intercom.lite.e.h.a.b(z)), eVar);
    }

    public void c(com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20018, com.ifengyu.intercom.lite.e.h.a.a()), eVar);
    }

    public static f a(Context context) {
        if (F == null) {
            synchronized (f.class) {
                if (F == null) {
                    F = new f(context);
                }
            }
        }
        return F;
    }

    public void b(byte[] bArr, com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20023, com.ifengyu.intercom.lite.e.h.a.a(bArr)), eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteBleClient.java */
    /* renamed from: com.ifengyu.intercom.lite.e.f$f  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0154f extends com.ifengyu.blelib.c.e {
        C0154f() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            String str = ((com.ifengyu.blelib.b.e) f.this).l;
            com.ifengyu.blelib.a.a(str, "query device param success, param: " + cVar.b().toString());
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) cVar.b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                f.this.a(devResponse.getDevInfo(), f.this.u());
                d0.f(devResponse.getDevInfo().getName().toStringUtf8());
                if (devResponse.getDevInfo().hasVox() && devResponse.getDevInfo().getVox() == LiteProtos.SWITCH.ON) {
                    w.b().a();
                }
            }
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = ((com.ifengyu.blelib.b.e) f.this).l;
            com.ifengyu.blelib.a.d(str, "query device param failed, status: " + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.ifengyu.blelib.d.c cVar) {
        this.w.removeCallbacks(this.z);
        LiteProtos.LoginResponse loginResponse = (LiteProtos.LoginResponse) cVar.b();
        if (loginResponse.getConnectCode() == LiteProtos.CONNECT_CODE.ALLOW) {
            if (A()) {
                com.ifengyu.blelib.a.d(this.l, "Connection is allowed, no need to call repeatedly");
                return;
            }
            d(true);
            d0.e(36611);
            d0.e(e().getAddress());
            d0.i(true);
            c(loginResponse.getKey().toByteArray());
            b(loginResponse.getIv().toByteArray());
            d(loginResponse.getToken().toByteArray());
            if (com.ifengyu.blelib.a.a()) {
                String str = this.l;
                com.ifengyu.blelib.a.a(str, "received key: " + com.ifengyu.blelib.d.a.a(r()) + ", iv: " + com.ifengyu.blelib.d.a.a(q()) + ", token: " + com.ifengyu.blelib.d.a.a(u()));
            }
            a(1000L).a();
            b(new C0154f());
            com.ifengyu.blelib.a.a(this.l, "Allow to connect");
            d(1);
            com.ifengyu.intercom.lite.utils.e.a(36611);
        } else if (loginResponse.getConnectCode() == LiteProtos.CONNECT_CODE.WAIT) {
            com.ifengyu.blelib.a.a(this.l, "waiting confirm connection");
            d(3);
            this.w.postDelayed(this.z, 20000L);
        } else if (loginResponse.getConnectCode() == LiteProtos.CONNECT_CODE.LOWPOWER) {
            com.ifengyu.blelib.a.d(this.l, "connect failed, device low power");
            d(4);
            c().a();
        } else if (loginResponse.getConnectCode() == LiteProtos.CONNECT_CODE.REFUSE) {
            com.ifengyu.blelib.a.d(this.l, "connect failed, device refused");
            d(2);
            c().a();
        } else {
            com.ifengyu.blelib.a.d(this.l, "connect failed, other reason");
            d(7);
            c().a();
        }
    }

    public void a(com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20009, com.ifengyu.intercom.lite.e.h.a.c()), eVar);
    }

    public void a(int i, com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20007, com.ifengyu.intercom.lite.e.h.a.a(i)), eVar);
    }

    public void a(int i, int i2, int i3, int i4, int i5, com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20012, com.ifengyu.intercom.lite.e.h.a.a(i, i2, i3, i4, i5)), eVar);
    }

    public void a(LiteProtos.ChannelInfo channelInfo, com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20012, com.ifengyu.intercom.lite.e.h.a.a(channelInfo)), eVar);
    }

    public void a(LiteProtos.LANGUAGE_TYPE language_type, com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20005, com.ifengyu.intercom.lite.e.h.a.a(language_type)), eVar);
    }

    public void a(boolean z, com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20005, com.ifengyu.intercom.lite.e.h.a.a(z)), eVar);
    }

    public void a(String str, com.ifengyu.blelib.c.e eVar) {
        a(new com.ifengyu.blelib.d.c(20005, com.ifengyu.intercom.lite.e.h.a.a(str)), eVar);
    }

    @Override // com.ifengyu.blelib.c.a
    public void a(@NonNull BluetoothDevice bluetoothDevice, @NonNull com.ifengyu.blelib.d.c cVar) {
        if (cVar.a() == 20002) {
            if (((LiteProtos.ConnectResponse) cVar.b()).getConnectCode() != LiteProtos.CONNECT_CODE.WAIT && !y()) {
                a(cVar);
            }
        } else if (cVar.a() == 20024) {
            if (((LiteProtos.LoginResponse) cVar.b()).getConnectCode() != LiteProtos.CONNECT_CODE.WAIT && y()) {
                b(cVar);
            }
        } else if (cVar.a() == 20022) {
            c(((LiteProtos.BatchBrodFskResponse) cVar.b()).getResult() == LiteProtos.SWITCH.ON);
        }
    }

    @Override // com.ifengyu.blelib.b.e, no.nordicsemi.android.ble.w2.b
    public void a(@NonNull BluetoothDevice bluetoothDevice) {
        super.a(bluetoothDevice);
        d(false);
        com.ifengyu.blelib.utils.a aVar = new com.ifengyu.blelib.utils.a();
        aVar.a();
        a(aVar);
        DeviceModel b2 = LiteDatabase.o().n().b(bluetoothDevice.getAddress());
        if (b2 != null) {
            d(com.ifengyu.blelib.d.a.a(b2.getToken()));
            a(b2.getDeviceId(), aVar.d());
            return;
        }
        a((String) null, aVar.d());
    }

    @Override // com.ifengyu.blelib.b.e, no.nordicsemi.android.ble.w2.b
    public void a(@NonNull BluetoothDevice bluetoothDevice, int i) {
        super.a(bluetoothDevice, i);
        this.w.removeCallbacks(this.z);
        j(bluetoothDevice);
        com.ifengyu.intercom.lite.a.a.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    public void a(final LiteProtos.DevInfo devInfo, final byte[] bArr) {
        Observable.just(devInfo).map(new Function() { // from class: com.ifengyu.intercom.lite.e.d
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return f.this.a(devInfo, bArr, (LiteProtos.DevInfo) obj);
            }
        }).subscribeOn(Schedulers.io()).subscribe(c.f5391a, new Consumer() { // from class: com.ifengyu.intercom.lite.e.e
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                f.this.a((Throwable) obj);
            }
        });
    }

    public /* synthetic */ DeviceModel a(LiteProtos.DevInfo devInfo, byte[] bArr, LiteProtos.DevInfo devInfo2) throws Exception {
        BluetoothDevice e2 = e();
        if (e2 != null) {
            com.ifengyu.intercom.lite.f.e n = LiteDatabase.a(g()).n();
            DeviceModel b2 = n.b(e2.getAddress());
            if (b2 == null) {
                b2 = new DeviceModel();
            }
            b2.setAddress(e2.getAddress());
            b2.setName(devInfo.getName().toStringUtf8());
            b2.setDeviceType(36611);
            b2.setConnected(true);
            b2.setDeviceId(String.valueOf(devInfo2.getDeviceId()));
            b2.setVersionHw(devInfo2.getVerHw());
            b2.setVersionSoft(devInfo2.getVerSoft());
            b2.setVersionVoice(devInfo2.getVerVoice());
            b2.setDeviceColor(devInfo2.getDeviceColor());
            b2.setToken(com.ifengyu.blelib.d.a.a(bArr));
            if (b2.getId() != null) {
                b2.setUpdateTime(System.currentTimeMillis());
                n.b(b2);
            } else {
                b2.setCreateTime(System.currentTimeMillis());
                b2.setUpdateTime(System.currentTimeMillis());
                n.a(b2);
            }
            return b2;
        }
        throw new IllegalArgumentException("device is null");
    }

    public /* synthetic */ void a(Throwable th) throws Exception {
        com.ifengyu.blelib.a.b(this.l, "update device param failed", th);
    }

    private void a(String str, byte[] bArr) {
        a(1000L).a();
        a(new com.ifengyu.blelib.d.c(20001, com.ifengyu.intercom.lite.e.h.a.a(str, bArr)), new c(20000L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.ifengyu.blelib.d.c cVar) {
        this.w.removeCallbacks(this.z);
        LiteProtos.ConnectResponse connectResponse = (LiteProtos.ConnectResponse) cVar.b();
        if (connectResponse.getConnectCode() == LiteProtos.CONNECT_CODE.ALLOW) {
            if (A()) {
                com.ifengyu.blelib.a.d(this.l, "Connection is allowed, no need to call repeatedly");
                return;
            }
            d(true);
            d0.e(36611);
            d0.e(e().getAddress());
            d0.i(true);
            a(1000L).a();
            b(new d());
            com.ifengyu.blelib.a.a(this.l, "Allow to connect");
            d(1);
            com.ifengyu.intercom.lite.utils.e.a(36611);
        } else if (connectResponse.getConnectCode() == LiteProtos.CONNECT_CODE.WAIT) {
            com.ifengyu.blelib.a.a(this.l, "waiting confirm connection");
            d(3);
            this.w.postDelayed(this.z, 20000L);
        } else if (connectResponse.getConnectCode() == LiteProtos.CONNECT_CODE.LOWPOWER) {
            com.ifengyu.blelib.a.d(this.l, "connect failed, device low power");
            d(4);
            c().a();
        } else if (connectResponse.getConnectCode() == LiteProtos.CONNECT_CODE.REFUSE) {
            com.ifengyu.blelib.a.d(this.l, "connect failed, device refused");
            d(2);
            c().a();
        } else {
            com.ifengyu.blelib.a.d(this.l, "connect failed, other reason");
            d(7);
            c().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(LiteProtos.ConnectResponse connectResponse) {
        byte[] byteArray = connectResponse.getPublicKey().toByteArray();
        if (com.ifengyu.blelib.a.a()) {
            String str = this.l;
            com.ifengyu.blelib.a.a(str, "received public key: " + com.ifengyu.blelib.d.a.a(byteArray));
        }
        p().a(byteArray);
        if (com.ifengyu.blelib.a.a()) {
            String str2 = this.l;
            com.ifengyu.blelib.a.a(str2, "generate secret key: " + com.ifengyu.blelib.d.a.a(p().e()));
        }
        b(u(), new e());
    }
}
