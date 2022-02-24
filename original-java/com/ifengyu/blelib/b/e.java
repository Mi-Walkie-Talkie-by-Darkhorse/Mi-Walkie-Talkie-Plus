package com.ifengyu.blelib.b;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.ifengyu.blelib.c.d;
import com.ifengyu.blelib.c.e;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import no.nordicsemi.android.ble.data.Data;
import no.nordicsemi.android.ble.e2;
import no.nordicsemi.android.ble.k2;
import no.nordicsemi.android.ble.r2;
import no.nordicsemi.android.ble.t2;
import no.nordicsemi.android.ble.u1;
import no.nordicsemi.android.ble.u2.f;
import no.nordicsemi.android.ble.u2.j;

/* compiled from: BleClient.java */
/* loaded from: classes.dex */
public abstract class e extends u1 implements no.nordicsemi.android.ble.w2.b, com.ifengyu.blelib.c.a {
    protected BluetoothGattCharacteristic n;
    protected BluetoothGattCharacteristic o;
    protected BluetoothGattCharacteristic p;
    private long q;
    private byte[] s;
    private byte[] t;
    private byte[] u;
    private com.ifengyu.blelib.utils.a v;
    protected final String l = getClass().getSimpleName();
    protected List<com.ifengyu.blelib.c.b> m = new ArrayList();
    private boolean r = false;

    /* compiled from: BleClient.java */
    /* loaded from: classes.dex */
    private class b extends u1.b {

        /* compiled from: BleClient.java */
        /* loaded from: classes.dex */
        class a implements j {
            a() {
            }

            @Override // no.nordicsemi.android.ble.u2.j
            public void a(@NonNull BluetoothDevice bluetoothDevice) {
                String str = e.this.l;
                com.ifengyu.blelib.a.c(str, "enableNotifications onRequestCompleted-->device: " + bluetoothDevice.toString());
            }
        }

        /* compiled from: BleClient.java */
        /* renamed from: com.ifengyu.blelib.b.e$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0144b implements no.nordicsemi.android.ble.u2.d {
            C0144b() {
            }

            @Override // no.nordicsemi.android.ble.u2.d
            public void a(@NonNull BluetoothDevice bluetoothDevice, int i) {
                String str = e.this.l;
                com.ifengyu.blelib.a.b(str, "enableNotifications onRequestFailed-->device: " + bluetoothDevice.toString() + ", status: " + i);
            }
        }

        /* compiled from: BleClient.java */
        /* loaded from: classes.dex */
        class c implements no.nordicsemi.android.ble.u2.d {
            c() {
            }

            @Override // no.nordicsemi.android.ble.u2.d
            public void a(@NonNull BluetoothDevice bluetoothDevice, int i) {
                String str = e.this.l;
                com.ifengyu.blelib.a.b(str, "requestMtu onRequestFailed-->device: " + bluetoothDevice.toString() + ", status: " + i);
            }
        }

        /* compiled from: BleClient.java */
        /* loaded from: classes.dex */
        class d implements f {
            d() {
            }

            @Override // no.nordicsemi.android.ble.u2.f
            public void a(@NonNull BluetoothDevice bluetoothDevice, int i) {
                String str = e.this.l;
                com.ifengyu.blelib.a.a(str, "requestMtu onMtuChanged-->device: " + bluetoothDevice.toString() + ", mtu: " + i);
            }
        }

        private b() {
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0088  */
        @Override // no.nordicsemi.android.ble.w1
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        protected boolean c(@androidx.annotation.NonNull android.bluetooth.BluetoothGatt r8) {
            /*
                r7 = this;
                com.ifengyu.blelib.b.e r0 = com.ifengyu.blelib.b.e.this
                java.util.UUID r0 = r0.t()
                android.bluetooth.BluetoothGattService r0 = r8.getService(r0)
                if (r0 == 0) goto L_0x0024
                com.ifengyu.blelib.b.e r1 = com.ifengyu.blelib.b.e.this
                java.util.UUID r2 = r1.x()
                android.bluetooth.BluetoothGattCharacteristic r2 = r0.getCharacteristic(r2)
                r1.n = r2
                com.ifengyu.blelib.b.e r1 = com.ifengyu.blelib.b.e.this
                java.util.UUID r2 = r1.s()
                android.bluetooth.BluetoothGattCharacteristic r0 = r0.getCharacteristic(r2)
                r1.o = r0
            L_0x0024:
                com.ifengyu.blelib.b.e r0 = com.ifengyu.blelib.b.e.this
                android.bluetooth.BluetoothGattCharacteristic r0 = r0.n
                r1 = 1
                r2 = 0
                if (r0 == 0) goto L_0x003a
                int r0 = r0.getProperties()
                r3 = r0 & 8
                if (r3 > 0) goto L_0x0038
                r0 = r0 & 4
                if (r0 <= 0) goto L_0x003a
            L_0x0038:
                r0 = 1
                goto L_0x003b
            L_0x003a:
                r0 = 0
            L_0x003b:
                com.ifengyu.blelib.b.e r3 = com.ifengyu.blelib.b.e.this
                java.lang.String r3 = r3.l
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                java.lang.String r5 = "isSupportWrite:  "
                r4.append(r5)
                r4.append(r0)
                java.lang.String r4 = r4.toString()
                com.ifengyu.blelib.a.a(r3, r4)
                com.ifengyu.blelib.b.e r3 = com.ifengyu.blelib.b.e.this
                android.bluetooth.BluetoothGattCharacteristic r3 = r3.o
                if (r3 == 0) goto L_0x0063
                int r3 = r3.getProperties()
                r3 = r3 & 16
                if (r3 <= 0) goto L_0x0063
                r3 = 1
                goto L_0x0064
            L_0x0063:
                r3 = 0
            L_0x0064:
                com.ifengyu.blelib.b.e r4 = com.ifengyu.blelib.b.e.this
                java.lang.String r4 = r4.l
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r6 = "isSupportNotify: "
                r5.append(r6)
                r5.append(r3)
                java.lang.String r5 = r5.toString()
                com.ifengyu.blelib.a.a(r4, r5)
                com.ifengyu.blelib.b.e r4 = com.ifengyu.blelib.b.e.this
                java.util.UUID r4 = r4.v()
                android.bluetooth.BluetoothGattService r8 = r8.getService(r4)
                if (r8 == 0) goto L_0x0094
                com.ifengyu.blelib.b.e r4 = com.ifengyu.blelib.b.e.this
                java.util.UUID r5 = r4.w()
                android.bluetooth.BluetoothGattCharacteristic r8 = r8.getCharacteristic(r5)
                r4.p = r8
            L_0x0094:
                com.ifengyu.blelib.b.e r8 = com.ifengyu.blelib.b.e.this
                android.bluetooth.BluetoothGattCharacteristic r8 = r8.p
                if (r8 == 0) goto L_0x00a4
                int r8 = r8.getProperties()
                r8 = r8 & 8
                if (r8 <= 0) goto L_0x00a4
                r8 = 1
                goto L_0x00a5
            L_0x00a4:
                r8 = 0
            L_0x00a5:
                com.ifengyu.blelib.b.e r4 = com.ifengyu.blelib.b.e.this
                java.lang.String r4 = r4.l
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r6 = "isSupportUpgradeWrite: "
                r5.append(r6)
                r5.append(r8)
                java.lang.String r8 = r5.toString()
                com.ifengyu.blelib.a.a(r4, r8)
                com.ifengyu.blelib.b.e r8 = com.ifengyu.blelib.b.e.this
                android.bluetooth.BluetoothGattCharacteristic r4 = r8.n
                if (r4 == 0) goto L_0x00cc
                android.bluetooth.BluetoothGattCharacteristic r8 = r8.o
                if (r8 == 0) goto L_0x00cc
                if (r0 == 0) goto L_0x00cc
                if (r3 == 0) goto L_0x00cc
                goto L_0x00cd
            L_0x00cc:
                r1 = 0
            L_0x00cd:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.blelib.b.e.b.c(android.bluetooth.BluetoothGatt):boolean");
        }

        @Override // no.nordicsemi.android.ble.w1
        protected void f() {
            e eVar = e.this;
            r2 b2 = eVar.b(eVar.o);
            b2.a(new com.ifengyu.blelib.e.a());
            b2.a(new c());
            k2 a2 = e.this.a();
            e2 b3 = e.this.b(500);
            b3.a((f) new d());
            b3.a((no.nordicsemi.android.ble.u2.d) new c());
            a2.a(b3);
            e eVar2 = e.this;
            t2 a3 = eVar2.a(eVar2.o);
            a3.a((no.nordicsemi.android.ble.u2.d) new C0144b());
            a3.a((j) new a());
            a2.a(a3);
            a2.a();
            com.ifengyu.blelib.d.c o = e.this.o();
            if (o != null) {
                byte[] a4 = e.this.a(o);
                if (a4.length != 0) {
                    e.this.a(a4);
                }
            }
        }

        @Override // no.nordicsemi.android.ble.w1
        protected void i() {
            e eVar = e.this;
            eVar.n = null;
            eVar.o = null;
            eVar.s = null;
            e.this.t = null;
            e.this.r = false;
            e.this.u = null;
        }

        @Override // no.nordicsemi.android.ble.w1
        protected void j() {
        }

        @Override // no.nordicsemi.android.ble.w1
        protected void k() {
            com.ifengyu.blelib.a.c(e.this.l, "onManagerReady");
        }
    }

    /* compiled from: BleClient.java */
    /* loaded from: classes.dex */
    private class c implements no.nordicsemi.android.ble.u2.b {
        private c() {
        }

        @Override // no.nordicsemi.android.ble.u2.b
        public void a(@NonNull BluetoothDevice bluetoothDevice, @NonNull Data data) {
            if (com.ifengyu.blelib.a.a()) {
                String str = e.this.l;
                com.ifengyu.blelib.a.a(str, "onDataReceived-->device: " + bluetoothDevice.toString() + ", data: " + data.toString());
            }
            byte[] a2 = data.a();
            if (a2 == null) {
                com.ifengyu.blelib.a.d(e.this.l, "onDataReceived-->data size is 0");
                return;
            }
            int f = com.ifengyu.blelib.d.f.f(a2);
            int g = com.ifengyu.blelib.d.f.g(a2);
            e eVar = e.this;
            boolean z = true;
            if (g <= 1) {
                z = false;
            }
            eVar.b(z);
            com.ifengyu.blelib.c.e a3 = d.c().a(f);
            com.ifengyu.blelib.d.c g2 = e.this.g(a2);
            if (g2 != null) {
                e.this.a(bluetoothDevice, g2);
                if (a3 != null) {
                    a3.a(g2);
                }
                for (com.ifengyu.blelib.c.b bVar : e.this.m) {
                    bVar.a(bluetoothDevice, g2);
                }
            } else if (a3 != null) {
                a3.a(-4);
            }
        }
    }

    public e(@NonNull Context context) {
        super(context);
        a((no.nordicsemi.android.ble.w2.b) this);
    }

    private String d(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 10 ? "UNKNOWN" : "TIMEOUT" : "NOT SUPPORTED" : "LINK LOSS" : "TERMINATE PEER USER" : "TERMINATE LOCAL HOST" : "SUCCESS";
    }

    private boolean e(byte[] bArr) {
        return com.ifengyu.blelib.d.a.a(com.ifengyu.blelib.d.f.b(bArr), com.ifengyu.blelib.d.b.a(com.ifengyu.blelib.d.f.a(bArr, 0, bArr.length - 2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.ifengyu.blelib.d.c g(byte[] bArr) {
        if (!e(bArr)) {
            com.ifengyu.blelib.a.b(this.l, "parse received pack-->invalid crc");
            return null;
        }
        int a2 = com.ifengyu.blelib.d.f.a(bArr);
        int g = com.ifengyu.blelib.d.f.g(bArr);
        int f = com.ifengyu.blelib.d.f.f(bArr);
        byte[] c2 = com.ifengyu.blelib.d.f.c(bArr);
        if (com.ifengyu.blelib.a.a()) {
            String str = this.l;
            com.ifengyu.blelib.a.a(str, "parse received pack-->cmdId: " + a2 + ", version: " + g + ", seq: " + f + ", data: " + com.ifengyu.blelib.d.a.a(c2));
        }
        if (y()) {
            if (a2 == 20002) {
                c2 = f(c2);
            } else if (a2 == 20024) {
                c2 = f(com.ifengyu.blelib.utils.b.a(c2, this.v.c(), this.v.b()));
            } else {
                c2 = f(com.ifengyu.blelib.utils.b.a(c2, r(), q()));
            }
            if (com.ifengyu.blelib.a.a()) {
                String str2 = this.l;
                com.ifengyu.blelib.a.a(str2, "parse received pack-->decrypt data: " + com.ifengyu.blelib.d.a.a(c2));
            }
        }
        if (c2 != null) {
            return n().a(a2, c2);
        }
        com.ifengyu.blelib.a.a(this.l, "parse receive pack-->data is null");
        return null;
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void f(@NonNull BluetoothDevice bluetoothDevice) {
        String str = this.l;
        com.ifengyu.blelib.a.a(str, "onDeviceConnected->device: " + bluetoothDevice.toString());
    }

    @Override // no.nordicsemi.android.ble.u1
    @NonNull
    protected u1.b h() {
        return new b();
    }

    public void m() {
        b();
    }

    @NonNull
    public abstract com.ifengyu.blelib.d.d n();

    protected abstract com.ifengyu.blelib.d.c o();

    public com.ifengyu.blelib.utils.a p() {
        return this.v;
    }

    public byte[] q() {
        return this.t;
    }

    public byte[] r() {
        return this.s;
    }

    protected abstract UUID s();

    protected abstract UUID t();

    public byte[] u() {
        return this.u;
    }

    protected abstract UUID v();

    protected abstract UUID w();

    protected abstract UUID x();

    public boolean y() {
        return this.r;
    }

    private byte[] f(byte[] bArr) {
        if (bArr.length < 2) {
            String str = this.l;
            com.ifengyu.blelib.a.b(str, "unpack, real data length < 2, data: " + com.ifengyu.blelib.d.a.a(bArr));
            return null;
        }
        int d = com.ifengyu.blelib.d.f.d(bArr);
        if (bArr.length >= d + 2) {
            return com.ifengyu.blelib.d.f.a(bArr, 2, d);
        }
        String str2 = this.l;
        com.ifengyu.blelib.a.b(str2, "unpack, real data length < dataLen + 2, data: " + com.ifengyu.blelib.d.a.a(bArr));
        return null;
    }

    public void c(byte[] bArr) {
        this.s = bArr;
    }

    public void d(byte[] bArr) {
        this.u = bArr;
    }

    public /* synthetic */ void h(BluetoothDevice bluetoothDevice) {
        String str = this.l;
        com.ifengyu.blelib.a.c(str, "send data success, device: " + bluetoothDevice.toString());
    }

    public void b(boolean z) {
        this.r = z;
    }

    public /* synthetic */ void c(int i) {
        com.ifengyu.blelib.a.d(this.l, "invalid request");
        com.ifengyu.blelib.c.e a2 = d.c().a(i);
        if (a2 != null) {
            a2.a(-4);
        }
    }

    public void b(byte[] bArr) {
        this.t = bArr;
    }

    public void b(com.ifengyu.blelib.c.b bVar) {
        this.m.remove(bVar);
    }

    public t2 b(BluetoothGattCharacteristic bluetoothGattCharacteristic, byte[] bArr) {
        return a(bluetoothGattCharacteristic, bArr);
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void c(@NonNull BluetoothDevice bluetoothDevice) {
        String str = this.l;
        com.ifengyu.blelib.a.a(str, "onDeviceDisconnecting->device: " + bluetoothDevice.toString());
    }

    public void a(com.ifengyu.blelib.utils.a aVar) {
        this.v = aVar;
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void b(@NonNull BluetoothDevice bluetoothDevice) {
        String str = this.l;
        com.ifengyu.blelib.a.a(str, "onDeviceConnecting->device: " + bluetoothDevice.toString());
    }

    @Override // no.nordicsemi.android.ble.u1
    public void a(int i, @NonNull String str) {
        if (com.ifengyu.blelib.a.a()) {
            Log.println(i, this.l, str);
        }
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void b(@NonNull BluetoothDevice bluetoothDevice, int i) {
        String str = this.l;
        com.ifengyu.blelib.a.a(str, "onDeviceFailedToConnect->device: " + bluetoothDevice.toString() + ", reason: " + d(i));
        List<com.ifengyu.blelib.c.b> list = this.m;
        if (list != null) {
            for (com.ifengyu.blelib.c.b bVar : list) {
                bVar.b(bluetoothDevice, i);
            }
        }
    }

    public void a(com.ifengyu.blelib.c.b bVar) {
        if (!this.m.contains(bVar)) {
            this.m.add(bVar);
        }
    }

    public void a(com.ifengyu.blelib.d.c cVar, com.ifengyu.blelib.c.e eVar) {
        a(a(cVar), eVar);
    }

    public void a(byte[] bArr) {
        a(bArr, (com.ifengyu.blelib.c.e) null);
    }

    public void a(byte[] bArr, final com.ifengyu.blelib.c.e eVar) {
        if (this.n == null) {
            com.ifengyu.blelib.a.b(this.l, "send data failed, device may be disconnected");
            if (eVar != null) {
                eVar.a(-1);
                return;
            }
            return;
        }
        final int f = com.ifengyu.blelib.d.f.f(bArr);
        t2 a2 = a(this.n, bArr);
        a2.j();
        a2.a(new no.nordicsemi.android.ble.u2.a() { // from class: com.ifengyu.blelib.b.d
            @Override // no.nordicsemi.android.ble.u2.a
            public final void a(BluetoothDevice bluetoothDevice) {
                e.a(e.this, f, bluetoothDevice);
            }
        });
        a2.a(new j() { // from class: com.ifengyu.blelib.b.c
            @Override // no.nordicsemi.android.ble.u2.j
            public final void a(BluetoothDevice bluetoothDevice) {
                e.this.h(bluetoothDevice);
            }
        });
        a2.a(new no.nordicsemi.android.ble.u2.d() { // from class: com.ifengyu.blelib.b.a
            @Override // no.nordicsemi.android.ble.u2.d
            public final void a(BluetoothDevice bluetoothDevice, int i) {
                e.this.a(f, bluetoothDevice, i);
            }
        });
        a2.a(new no.nordicsemi.android.ble.u2.e() { // from class: com.ifengyu.blelib.b.b
            @Override // no.nordicsemi.android.ble.u2.e
            public final void a() {
                e.this.c(f);
            }
        });
        a2.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(com.ifengyu.blelib.c.e eVar, int i, BluetoothDevice bluetoothDevice) {
        if (eVar != null) {
            d.c().a(i, eVar);
        }
    }

    public /* synthetic */ void a(int i, BluetoothDevice bluetoothDevice, int i2) {
        String str = this.l;
        com.ifengyu.blelib.a.b(str, "send data failed, device: " + bluetoothDevice.toString() + ", status: " + i2);
        com.ifengyu.blelib.c.e a2 = d.c().a(i);
        if (a2 != null) {
            a2.a(i2);
        }
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void a(@NonNull BluetoothDevice bluetoothDevice) {
        String str = this.l;
        com.ifengyu.blelib.a.a(str, "onDeviceReady->device: " + bluetoothDevice.toString());
        d.c().b();
        List<com.ifengyu.blelib.c.b> list = this.m;
        if (list != null) {
            for (com.ifengyu.blelib.c.b bVar : list) {
                bVar.a(bluetoothDevice);
            }
        }
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void a(@NonNull BluetoothDevice bluetoothDevice, int i) {
        String str = this.l;
        com.ifengyu.blelib.a.a(str, "onDeviceDisconnected->device: " + bluetoothDevice.toString() + ", reason: " + d(i));
        d.c().a();
        List<com.ifengyu.blelib.c.b> list = this.m;
        if (list != null) {
            for (com.ifengyu.blelib.c.b bVar : list) {
                bVar.a(bluetoothDevice, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] a(com.ifengyu.blelib.d.c cVar) {
        int a2 = cVar.a();
        int serializedSize = cVar.b().getSerializedSize();
        byte[] byteArray = cVar.b().toByteArray();
        if (y() && a2 != 20001) {
            byteArray = a2 == 20023 ? com.ifengyu.blelib.utils.b.b(a(byteArray, serializedSize), this.v.c(), this.v.b()) : com.ifengyu.blelib.utils.b.b(a(byteArray, serializedSize), r(), q());
        }
        com.ifengyu.blelib.d.e eVar = new com.ifengyu.blelib.d.e(a2, byteArray);
        byte[] c2 = eVar.c();
        if (com.ifengyu.blelib.a.a()) {
            String str = this.l;
            com.ifengyu.blelib.a.a(str, "send commend-->cmdId: " + a2 + ", encrypt: " + y() + ", packet: " + eVar.toString());
        }
        return c2;
    }

    private byte[] a(byte[] bArr, int i) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis == this.q) {
            currentTimeMillis++;
        }
        this.q = currentTimeMillis;
        byte[] array = ByteBuffer.allocate(8).putLong(currentTimeMillis).array();
        int length = array.length + i;
        byte[] bArr2 = new byte[length + 2];
        com.ifengyu.blelib.d.f.a(bArr2, length, 0, 2);
        System.arraycopy(bArr, 0, bArr2, 2, i);
        System.arraycopy(array, 0, bArr2, i + 2, array.length);
        return bArr2;
    }
}
