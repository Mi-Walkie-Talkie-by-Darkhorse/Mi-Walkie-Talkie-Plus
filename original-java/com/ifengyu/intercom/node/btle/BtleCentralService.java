package com.ifengyu.intercom.node.btle;

import android.annotation.SuppressLint;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.SystemClock;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.g;
import com.ifengyu.intercom.node.q.d;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/* loaded from: classes2.dex */
public class BtleCentralService extends Service implements j {
    private static final UUID q = UUID.fromString("0000aee7-0000-1000-8000-00805f9b34fb");
    private static final UUID r = UUID.fromString("0000fdab-0000-1000-8000-00805f9b34fb");
    private static final UUID s = UUID.fromString("0000fee7-0000-1000-8000-00805f9b34fb");
    private static final UUID t = UUID.fromString("0000aec7-0000-1000-8000-00805f9b34fb");
    private static final UUID u = UUID.fromString("0000aec8-0000-1000-8000-00805f9b34fb");
    private static final UUID v = UUID.fromString("0000feab-0000-1000-8000-00805f9b34fb");
    private static final UUID w = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");

    /* renamed from: a  reason: collision with root package name */
    private BluetoothStateReceiver f5865a;

    /* renamed from: b  reason: collision with root package name */
    private RetryConnectReceiver f5866b;

    /* renamed from: c  reason: collision with root package name */
    private volatile ConnectionConfiguration f5867c;
    private volatile f d;
    private volatile b e;
    private volatile i g;
    private volatile h h;
    private volatile e i;
    private volatile d j;
    private int k;
    protected HandlerThread n;
    private int o;
    private BluetoothGattCharacteristic p;
    private ConnectState f = ConnectState.DISCONNECTED;
    private volatile boolean l = false;
    private volatile boolean m = false;

    /* loaded from: classes2.dex */
    public class a extends Binder {
        public a() {
        }

        public ConnectionConfiguration a() {
            return BtleCentralService.this.c();
        }
    }

    private void c(boolean z) {
        z.e("BtleCentralService", "Interrupting connection thread");
        if (!z || this.d != null) {
            if (Thread.currentThread() == this.d) {
                z.e("BtleCentralService", "Interrupting self, warning...");
            }
            this.d.interrupt();
            return;
        }
        z.e("BtleCentralService", "No connection thread to interrupt");
    }

    private void s() {
        z.e("BtleCentralService", "In connectToDevice");
        if (this.f5867c != null && this.f5867c.a() != null) {
            BluetoothDevice remoteDevice = BluetoothAdapter.getDefaultAdapter().getRemoteDevice(this.f5867c.a());
            a(ConnectState.CONNECTING);
            HandlerThread handlerThread = new HandlerThread("BtleCentralService");
            this.n = handlerThread;
            handlerThread.start();
            a(new f(this, this, remoteDevice, this.f5867c, new Handler(this.n.getLooper())));
            d().start();
        }
    }

    private List<BluetoothGattService> t() throws GattException {
        ArrayList arrayList = new ArrayList();
        for (BluetoothGattService bluetoothGattService : this.e.d()) {
            z.d("BtleCentralService", "getMTGattServices uuid = " + bluetoothGattService.getUuid());
            if (bluetoothGattService.getUuid().equals(q) || bluetoothGattService.getUuid().equals(r) || bluetoothGattService.getUuid().equals(s)) {
                arrayList.add(bluetoothGattService);
            }
        }
        return arrayList;
    }

    private void u() throws GattException {
        z.e("BtleCentralService", "Request connection priority high");
        if (c0.f(21)) {
            this.e.a(1);
        }
    }

    private void v() {
        b();
        c(true);
    }

    @Override // com.ifengyu.intercom.node.btle.j
    public void a(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        if (this.f != ConnectState.CONNECTED) {
            return;
        }
        if (bluetoothGattCharacteristic.getUuid().equals(u)) {
            this.h.a(bluetoothGattCharacteristic.getValue());
        } else if (bluetoothGattCharacteristic.getUuid().equals(v)) {
            this.h.b(bluetoothGattCharacteristic.getValue());
        }
    }

    public void b(boolean z) {
        this.m = z;
    }

    protected f d() {
        return this.d;
    }

    public int e() {
        return this.k;
    }

    public b f() {
        return this.e;
    }

    public InputStream g() {
        return this.j;
    }

    public int h() {
        return this.o;
    }

    public OutputStream i() {
        return this.i;
    }

    public void j() {
        a(false);
    }

    public int k() {
        int i = this.k;
        this.k = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized boolean l() {
        return this.f == ConnectState.CONNECTED;
    }

    protected synchronized boolean m() {
        return this.f == ConnectState.CONNECTING;
    }

    protected synchronized boolean n() {
        return this.f == ConnectState.DISCONNECTED;
    }

    public boolean o() {
        return this.m;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new a();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        z.a("BtleCentralService", "onCreate");
        if (com.ifengyu.intercom.service.a.a(getApplicationContext())) {
            BluetoothStateReceiver bluetoothStateReceiver = new BluetoothStateReceiver(this);
            this.f5865a = bluetoothStateReceiver;
            registerReceiver(bluetoothStateReceiver, BluetoothStateReceiver.a());
            RetryConnectReceiver retryConnectReceiver = new RetryConnectReceiver(this);
            this.f5866b = retryConnectReceiver;
            registerReceiver(retryConnectReceiver, retryConnectReceiver.a());
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        z.e("BtleCentralService", "onDestroy");
        unregisterReceiver(this.f5865a);
        unregisterReceiver(this.f5866b);
        a(ConnectState.DISCONNECTED);
        if (this.e != null && this.e.f()) {
            a();
        }
        for (g gVar : d.c().e.d) {
            gVar.a((String) null);
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        z.a("BtleCentralService", "onStartCommand() current state " + this.f);
        this.f5867c = (ConnectionConfiguration) intent.getParcelableExtra("connection_config");
        z.a("BtleCentralService", "config: " + this.f5867c.toString());
        b(intent.getBooleanExtra("notReConn", false));
        int intExtra = intent.getIntExtra("ble_priority", 0);
        try {
            if (intExtra == 1) {
                u();
                return 3;
            } else if (intExtra == 2) {
                r();
                return 3;
            } else {
                if (this.f5867c == null || !this.f5867c.g() || intent.getBooleanExtra("connection_remove", false)) {
                    if (n()) {
                        z.e("BtleCentralService", "DisConnected, nothing to do.");
                    }
                    if (this.e != null) {
                        a();
                    }
                    a(true);
                } else if (l()) {
                    z.a("BtleCentralService", "has connected, nothing to do");
                    return 3;
                } else {
                    if (m()) {
                        z.a("BtleCentralService", "connecting, interrupt current thread and restart a new connection.");
                        a(false);
                    }
                    if (BluetoothAdapter.getDefaultAdapter().getState() == 12) {
                        p();
                    } else {
                        z.e("BtleCentralService", "bluetooth state off, please enable it first.");
                    }
                }
                return 3;
            }
        } catch (GattException e) {
            z.b("BtleCentralService", "requestConnectionPriority error, " + e.getMessage());
            return 3;
        }
    }

    protected synchronized void p() {
        z.e("BtleCentralService", "maybeStartConnection");
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        try {
            if (this.e == null) {
                this.e = new b(this, this);
            }
            if (defaultAdapter.getState() != 12) {
                z.e("BtleCentralService", "Not starting connection as the Bluetooth adapter is not on");
            } else {
                s();
            }
        } catch (GattException e) {
            throw new RuntimeException("Failed to create BluetoothGattHelper", e);
        }
    }

    public void q() {
        this.k = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void r() throws GattException {
        z.e("BtleCentralService", "Request connection priority low-power");
        if (c0.f(21)) {
            this.e.a(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.ifengyu.intercom.node.btle.d, com.ifengyu.intercom.node.btle.e] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b() {
        /*
            r5 = this;
            java.lang.String r0 = "doShutdownWork: "
            java.lang.String r1 = "BtleCentralService"
            com.ifengyu.intercom.node.btle.i r2 = r5.g
            if (r2 == 0) goto L_0x000d
            com.ifengyu.intercom.node.btle.i r2 = r5.g
            r2.a()
        L_0x000d:
            boolean r2 = r5.o()
            if (r2 == 0) goto L_0x006b
            r2 = 0
            r5.g = r2
            com.ifengyu.intercom.node.btle.d r3 = r5.j     // Catch: all -> 0x0022, IOException -> 0x0024
            if (r3 == 0) goto L_0x001f
            com.ifengyu.intercom.node.btle.d r3 = r5.j     // Catch: all -> 0x0022, IOException -> 0x0024
            r3.close()     // Catch: all -> 0x0022, IOException -> 0x0024
        L_0x001f:
            r5.j = r2
            goto L_0x003c
        L_0x0022:
            r0 = move-exception
            goto L_0x0068
        L_0x0024:
            r3 = move-exception
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: all -> 0x0022
            r4.<init>()     // Catch: all -> 0x0022
            r4.append(r0)     // Catch: all -> 0x0022
            java.lang.String r3 = r3.getMessage()     // Catch: all -> 0x0022
            r4.append(r3)     // Catch: all -> 0x0022
            java.lang.String r3 = r4.toString()     // Catch: all -> 0x0022
            com.ifengyu.intercom.i.z.e(r1, r3)     // Catch: all -> 0x0022
            goto L_0x001f
        L_0x003c:
            com.ifengyu.intercom.node.btle.e r3 = r5.i     // Catch: all -> 0x0048, IOException -> 0x004a
            if (r3 == 0) goto L_0x0045
            com.ifengyu.intercom.node.btle.e r3 = r5.i     // Catch: all -> 0x0048, IOException -> 0x004a
            r3.close()     // Catch: all -> 0x0048, IOException -> 0x004a
        L_0x0045:
            r5.i = r2
            goto L_0x0062
        L_0x0048:
            r0 = move-exception
            goto L_0x0065
        L_0x004a:
            r3 = move-exception
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: all -> 0x0048
            r4.<init>()     // Catch: all -> 0x0048
            r4.append(r0)     // Catch: all -> 0x0048
            java.lang.String r0 = r3.getMessage()     // Catch: all -> 0x0048
            r4.append(r0)     // Catch: all -> 0x0048
            java.lang.String r0 = r4.toString()     // Catch: all -> 0x0048
            com.ifengyu.intercom.i.z.e(r1, r0)     // Catch: all -> 0x0048
            goto L_0x0045
        L_0x0062:
            r5.h = r2
            goto L_0x006b
        L_0x0065:
            r5.i = r2
            throw r0
        L_0x0068:
            r5.j = r2
            throw r0
        L_0x006b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.node.btle.BtleCentralService.b():void");
    }

    @Override // com.ifengyu.intercom.node.btle.j
    public final void a(Exception exc) {
        z.e("BtleCentralService", "onError");
        if (exc != null) {
            b(exc);
        }
        if (l()) {
            c(false);
        }
    }

    public ConnectionConfiguration c() {
        if (this.f5867c != null) {
            this.f5867c.a(l());
        }
        return this.f5867c;
    }

    @Override // com.ifengyu.intercom.node.btle.j
    public void a(BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        if (bluetoothGattCharacteristic.getUuid().equals(t) && i == 0 && l()) {
            this.g.a(bluetoothGattCharacteristic);
        }
    }

    @SuppressLint({"SimpleDateFormat"})
    public void a(String str) {
        z.d("BtleCentralService", "handleRetryConnection");
        String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        z.a("BtleCentralService", format + ", received connection retry intent for device address: " + str);
        if (d() != null) {
            d().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        z.c("BtleCentralService", "cancelConnection byUser:" + z);
        this.m = z;
        b();
        c(true);
        q();
        a(ConnectState.DISCONNECTED);
    }

    private void b(BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) throws GattException {
        z.e("BtleCentralService", "Subscribing to characteristic: " + bluetoothGattCharacteristic.getUuid());
        if ((i & 48) == 0) {
            z.e("BtleCentralService", "no indicate and notify");
            return;
        }
        this.e.a(bluetoothGattCharacteristic);
        BluetoothGattDescriptor descriptor = bluetoothGattCharacteristic.getDescriptor(w);
        if ((i & 32) != 0) {
            z.c("BtleCentralService", "set indication");
            descriptor.setValue(BluetoothGattDescriptor.ENABLE_INDICATION_VALUE);
        }
        if ((i & 16) != 0) {
            z.c("BtleCentralService", "set notification");
            descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
        }
        this.e.a(descriptor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(BluetoothDevice bluetoothDevice) throws GattException {
        z.d("BtleCentralService", "Connecting to " + bluetoothDevice.getAddress());
        this.e.a(bluetoothDevice);
        a((GattException) null);
        z.d("BtleCentralService", "Requesting connection priority");
        u();
        z.d("BtleCentralService", "Requesting connection mtu");
        this.o = this.e.i();
        z.d("BtleCentralService", "Setting up Common Data UserChannel Service");
        a(this.o);
    }

    protected static void b(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        z.b("BtleCentralService", "Got exception: " + stringWriter, exc);
    }

    private void a(int i) throws GattException {
        boolean z = false;
        for (BluetoothGattService bluetoothGattService : t()) {
            UUID uuid = bluetoothGattService.getUuid();
            z.d("BtleCentralService", "setupCommonDataChannelService() gattService udid = " + uuid);
            try {
                BluetoothGattCharacteristic a2 = b.a(bluetoothGattService, u);
                BluetoothGattCharacteristic a3 = b.a(bluetoothGattService, t);
                if (uuid.equals(r)) {
                    this.p = b.a(bluetoothGattService, v);
                }
                z = true;
                z.e("BtleCentralService", "Trying to subscribe to intercom services");
                b(a2, a2.getProperties());
                if (uuid.equals(r)) {
                    BluetoothGattCharacteristic bluetoothGattCharacteristic = this.p;
                    b(bluetoothGattCharacteristic, bluetoothGattCharacteristic.getProperties());
                }
                a(i, a3);
            } catch (GattException unused) {
                z.e("BtleCentralService", "Could not find all the walktalk characteristics in MiTalk service");
            }
        }
        if (!z) {
            this.e.h();
            throw new GattException("Some characteristics were missing from clockwork service");
        }
    }

    private void a(int i, BluetoothGattCharacteristic bluetoothGattCharacteristic) throws GattException {
        if (this.g == null) {
            this.g = new i(this, this, bluetoothGattCharacteristic);
        } else {
            this.g.b(bluetoothGattCharacteristic);
        }
        if (this.i == null) {
            this.i = new e(i, this.g);
        } else {
            this.i.a(this.g);
        }
        if (this.j == null) {
            this.j = new d();
        }
        if (this.h == null) {
            this.h = new h(this.j, this.g);
        } else {
            this.h.a(this.j, this.g);
        }
    }

    public boolean a(BluetoothGattCharacteristic bluetoothGattCharacteristic, byte[] bArr) throws GattException {
        if (!bluetoothGattCharacteristic.getUuid().equals(t) || this.f == ConnectState.CONNECTED) {
            long currentTimeMillis = System.currentTimeMillis();
            this.e.a(bluetoothGattCharacteristic, bArr);
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (currentTimeMillis2 <= 1000) {
                return true;
            }
            z.e("BtleCentralService", "BLE write took " + currentTimeMillis2 + "ms");
            return true;
        }
        z.e("BtleCentralService", "Outgoing characteristic write failed because device has not connected.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(ConnectState connectState) {
        z.e("BtleCentralService", "Changing from " + this.f.name() + " to " + connectState.name());
        this.f = connectState;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized boolean a(ConnectState connectState, String str) {
        if (this.f == connectState) {
            return true;
        }
        if (str != null) {
            z.e("BtleCentralService", "Invalid state: " + this.f.name() + ". Expected state: " + connectState.name() + ". Context: " + str);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        try {
            if (this.e != null) {
                this.e.a();
            }
        } catch (GattException e) {
            z.e("BtleCentralService", "Got bluetooth exception when disconnecting，" + e.getMessage());
        }
    }

    protected void a(f fVar) {
        this.d = fVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(GattException gattException) {
        if (gattException == null) {
            return;
        }
        if (this.l || ((gattException.b() && gattException.a() == 1) || gattException.a() == 2 || gattException.a() == 3)) {
            z.e("BtleCentralService", "Got gatt status code: " + gattException.a() + ".shouldRefreshGatt = " + gattException.b() + ". Referashing gatt");
            this.e.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(int i, int i2) {
        z.e("BtleCentralService", "Bluetooth state change from " + i2 + " to " + i);
        if (i == 12) {
            a(ConnectState.CONNECTING);
            if (this.l) {
                this.l = false;
                z.e("BtleCentralService", "Refreshing gatt as a precaution");
                this.e.h();
            }
            SystemClock.sleep(1000L);
            p();
        } else if (i == 13) {
            a(ConnectState.DISCONNECTED);
            v();
        }
    }
}
