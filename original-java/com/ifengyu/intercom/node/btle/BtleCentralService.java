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
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.a.d;
import com.ifengyu.intercom.node.h;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public class BtleCentralService extends Service implements j {
    private static final UUID b = UUID.fromString("0000aee7-0000-1000-8000-00805f9b34fb");
    private static final UUID c = UUID.fromString("0000fdab-0000-1000-8000-00805f9b34fb");
    private static final UUID d = UUID.fromString("0000fee7-0000-1000-8000-00805f9b34fb");
    private static final UUID e = UUID.fromString("0000aec7-0000-1000-8000-00805f9b34fb");
    private static final UUID f = UUID.fromString("0000aec8-0000-1000-8000-00805f9b34fb");
    private static final UUID g = UUID.fromString("0000feab-0000-1000-8000-00805f9b34fb");
    private static final UUID h = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
    protected HandlerThread a;
    private BluetoothStateReceiver i;
    private RetryConnectReceiver j;
    private volatile ConnectionConfiguration k;
    private volatile f l;
    private volatile b m;
    private ConnectState n = ConnectState.DISCONNECTED;
    private volatile i o;
    private volatile h p;
    private volatile e q;
    private volatile d r;
    private int s;
    private volatile boolean t = false;
    private volatile boolean u = false;
    private int v;
    private BluetoothGattCharacteristic w;

    public class a extends Binder {
        public a() {
        }

        public BtleCentralService a() {
            return BtleCentralService.this;
        }

        public ConnectionConfiguration b() {
            return BtleCentralService.this.s();
        }
    }

    public BluetoothGattCharacteristic a() {
        return this.w;
    }

    public void onCreate() {
        super.onCreate();
        s.b("BtleCentralService", "onCreate");
        if (com.ifengyu.intercom.service.a.a(getApplicationContext())) {
            this.i = new BluetoothStateReceiver(this);
            registerReceiver(this.i, BluetoothStateReceiver.a());
            this.j = new RetryConnectReceiver(this);
            registerReceiver(this.j, this.j.a());
        }
    }

    public void onDestroy() {
        s.d("BtleCentralService", "onDestroy");
        unregisterReceiver(this.i);
        unregisterReceiver(this.j);
        a(ConnectState.DISCONNECTED);
        if (this.m != null && this.m.b()) {
            l();
        }
        for (h a2 : d.a().e.b) {
            a2.a((String) null);
        }
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i2, int i3) {
        s.b("BtleCentralService", "onStartCommand() current state " + this.n);
        this.k = (ConnectionConfiguration) intent.getParcelableExtra("connection_config");
        s.b("BtleCentralService", "config: " + this.k.toString());
        b(intent.getBooleanExtra("notReConn", false));
        int intExtra = intent.getIntExtra("ble_priority", 0);
        if (intExtra == 1) {
            try {
                v();
            } catch (GattException e2) {
                s.e("BtleCentralService", "requestConnectionPriority error, " + e2.getMessage());
            }
        } else if (intExtra == 2) {
            h();
        } else if (this.k == null || !this.k.d() || intent.getBooleanExtra("connection_remove", false)) {
            if (k()) {
                s.d("BtleCentralService", "DisConnected, nothing to do.");
            }
            if (this.m != null) {
                l();
            }
            a(true);
        } else if (j()) {
            s.b("BtleCentralService", "has connected, nothing to do");
        } else {
            if (i()) {
                s.b("BtleCentralService", "connecting, interrupt current thread and restart a new connection.");
                a(false);
            }
            if (BluetoothAdapter.getDefaultAdapter().getState() == 12) {
                b();
            } else {
                s.d("BtleCentralService", "bluetooth state off, please enable it first.");
            }
        }
        return 3;
    }

    public IBinder onBind(Intent intent) {
        return new a();
    }

    public void a(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        if (this.n != ConnectState.CONNECTED) {
            return;
        }
        if (bluetoothGattCharacteristic.getUuid().equals(f)) {
            this.p.a(bluetoothGattCharacteristic.getValue());
        } else if (bluetoothGattCharacteristic.getUuid().equals(g)) {
            this.p.b(bluetoothGattCharacteristic.getValue());
        }
    }

    public final void a(Exception exc) {
        s.d("BtleCentralService", "onError");
        if (exc != null) {
            b(exc);
        }
        if (j()) {
            c(false);
        }
    }

    public void a(BluetoothGattCharacteristic bluetoothGattCharacteristic, int i2) {
        if (bluetoothGattCharacteristic.getUuid().equals(e) && i2 == 0 && j()) {
            this.o.a(bluetoothGattCharacteristic);
        }
    }

    @SuppressLint({"SimpleDateFormat"})
    public void a(String str) {
        s.a("BtleCentralService", "handleRetryConnection");
        s.b("BtleCentralService", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()) + ", received connection retry intent for device address: " + str);
        if (m() != null) {
            m().a();
        }
    }

    /* access modifiers changed from: protected */
    public synchronized void b() {
        s.d("BtleCentralService", "maybeStartConnection");
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        try {
            if (this.m == null) {
                this.m = new b(this, this);
            }
            if (defaultAdapter.getState() != 12) {
                s.d("BtleCentralService", "Not starting connection as the Bluetooth adapter is not on");
            } else {
                t();
            }
        } catch (GattException e2) {
            throw new RuntimeException("Failed to create BluetoothGattHelper", e2);
        }
    }

    private void t() {
        s.d("BtleCentralService", "In connectToDevice");
        if (this.k != null && this.k.c() != null) {
            BluetoothDevice remoteDevice = BluetoothAdapter.getDefaultAdapter().getRemoteDevice(this.k.c());
            a(ConnectState.CONNECTING);
            this.a = new HandlerThread("BtleCentralService");
            this.a.start();
            a(new f(this, this, remoteDevice, this.k, new Handler(this.a.getLooper())));
            m().start();
        }
    }

    private void c(boolean z) {
        s.d("BtleCentralService", "Interrupting connection thread");
        if (!z || this.l != null) {
            if (Thread.currentThread() == this.l) {
                s.d("BtleCentralService", "Interrupting self, warning...");
            }
            this.l.interrupt();
            return;
        }
        s.d("BtleCentralService", "No connection thread to interrupt");
    }

    private void u() {
        d();
        c(true);
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        s.c("BtleCentralService", "cancelConnection byUser:" + z);
        this.u = z;
        d();
        c(true);
        q();
        a(ConnectState.DISCONNECTED);
    }

    public boolean c() {
        return this.u;
    }

    public void b(boolean z) {
        this.u = z;
    }

    /* access modifiers changed from: protected */
    public void d() {
        if (this.o != null) {
            this.o.a();
        }
        if (c()) {
            this.o = null;
            try {
                if (this.r != null) {
                    this.r.close();
                }
            } catch (IOException e2) {
                s.d("BtleCentralService", "doShutdownWork: " + e2.getMessage());
            } finally {
                this.r = null;
            }
            try {
                if (this.q != null) {
                    this.q.close();
                }
            } catch (IOException e3) {
                s.d("BtleCentralService", "doShutdownWork: " + e3.getMessage());
            } finally {
                this.q = null;
            }
            this.p = null;
        }
    }

    public InputStream e() {
        return this.r;
    }

    public OutputStream f() {
        return this.q;
    }

    public int g() {
        return this.v;
    }

    /* access modifiers changed from: protected */
    public void a(BluetoothDevice bluetoothDevice) throws GattException {
        s.a("BtleCentralService", "Connecting to " + bluetoothDevice.getAddress());
        this.m.a(bluetoothDevice);
        a((GattException) null);
        s.a("BtleCentralService", "Requesting connection priority");
        v();
        s.a("BtleCentralService", "Requesting connection mtu");
        this.v = this.m.a();
        s.a("BtleCentralService", "Setting up Common Data UserChannel Service");
        a(this.v);
    }

    private void v() throws GattException {
        s.d("BtleCentralService", "Request connection priority high");
        if (v.h(21)) {
            this.m.a(1);
        }
    }

    /* access modifiers changed from: protected */
    public synchronized void h() throws GattException {
        s.d("BtleCentralService", "Request connection priority low-power");
        if (v.h(21)) {
            this.m.a(0);
        }
    }

    private void b(BluetoothGattCharacteristic bluetoothGattCharacteristic, int i2) throws GattException {
        s.d("BtleCentralService", "Subscribing to characteristic: " + bluetoothGattCharacteristic.getUuid());
        if ((i2 & 48) == 0) {
            s.d("BtleCentralService", "no indicate and notify");
            return;
        }
        this.m.a(bluetoothGattCharacteristic);
        BluetoothGattDescriptor descriptor = bluetoothGattCharacteristic.getDescriptor(h);
        if ((i2 & 32) != 0) {
            s.c("BtleCentralService", "set indication");
            descriptor.setValue(BluetoothGattDescriptor.ENABLE_INDICATION_VALUE);
        }
        if ((i2 & 16) != 0) {
            s.c("BtleCentralService", "set notification");
            descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
        }
        this.m.a(descriptor);
    }

    private void a(int i2) throws GattException {
        boolean z = false;
        for (BluetoothGattService bluetoothGattService : w()) {
            UUID uuid = bluetoothGattService.getUuid();
            s.a("BtleCentralService", "setupCommonDataChannelService() gattService udid = " + uuid);
            try {
                BluetoothGattCharacteristic a2 = b.a(bluetoothGattService, f);
                BluetoothGattCharacteristic a3 = b.a(bluetoothGattService, e);
                if (uuid.equals(c)) {
                    this.w = b.a(bluetoothGattService, g);
                }
                s.d("BtleCentralService", "Trying to subscribe to intercom services");
                b(a2, a2.getProperties());
                if (uuid.equals(c)) {
                    b(this.w, this.w.getProperties());
                }
                a(i2, a3);
                z = true;
            } catch (GattException e2) {
                s.d("BtleCentralService", "Could not find all the walktalk characteristics in MiTalk service");
            }
        }
        if (!z) {
            this.m.c();
            throw new GattException("Some characteristics were missing from clockwork service");
        }
    }

    private void a(int i2, BluetoothGattCharacteristic bluetoothGattCharacteristic) throws GattException {
        if (this.o == null) {
            this.o = new i(this, this, bluetoothGattCharacteristic);
        } else {
            this.o.b(bluetoothGattCharacteristic);
        }
        if (this.q == null) {
            this.q = new e(i2, this.o);
        } else {
            this.q.a(this.o);
        }
        if (this.r == null) {
            this.r = new d();
        }
        if (this.p == null) {
            this.p = new h(this.r, this.o);
        } else {
            this.p.a(this.r, this.o);
        }
    }

    private List<BluetoothGattService> w() throws GattException {
        ArrayList arrayList = new ArrayList();
        for (BluetoothGattService bluetoothGattService : this.m.d()) {
            s.a("BtleCentralService", "getMTGattServices uuid = " + bluetoothGattService.getUuid());
            if (bluetoothGattService.getUuid().equals(b) || bluetoothGattService.getUuid().equals(c) || bluetoothGattService.getUuid().equals(d)) {
                arrayList.add(bluetoothGattService);
            }
        }
        return arrayList;
    }

    public boolean a(BluetoothGattCharacteristic bluetoothGattCharacteristic, byte[] bArr) throws GattException {
        if (!bluetoothGattCharacteristic.getUuid().equals(e) || this.n == ConnectState.CONNECTED) {
            long currentTimeMillis = System.currentTimeMillis();
            this.m.a(bluetoothGattCharacteristic, bArr);
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (currentTimeMillis2 > 1000) {
                s.d("BtleCentralService", "BLE write took " + currentTimeMillis2 + "ms");
            }
            return true;
        }
        s.d("BtleCentralService", "Outgoing characteristic write failed because device has not connected.");
        return false;
    }

    /* access modifiers changed from: protected */
    public synchronized boolean i() {
        return this.n == ConnectState.CONNECTING;
    }

    /* access modifiers changed from: protected */
    public synchronized boolean j() {
        return this.n == ConnectState.CONNECTED;
    }

    /* access modifiers changed from: protected */
    public synchronized boolean k() {
        return this.n == ConnectState.DISCONNECTED;
    }

    /* access modifiers changed from: protected */
    public synchronized void a(ConnectState connectState) {
        s.d("BtleCentralService", "Changing from " + this.n.name() + " to " + connectState.name());
        this.n = connectState;
    }

    /* access modifiers changed from: protected */
    public synchronized boolean a(ConnectState connectState, String str) {
        boolean z;
        if (this.n == connectState) {
            z = true;
        } else {
            if (str != null) {
                s.d("BtleCentralService", "Invalid state: " + this.n.name() + ". Expected state: " + connectState.name() + ". Context: " + str);
            }
            z = false;
        }
        return z;
    }

    protected static void b(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        ThrowableExtension.printStackTrace((Throwable) exc, new PrintWriter(stringWriter));
        s.a("BtleCentralService", "Got exception: " + stringWriter, exc);
    }

    /* access modifiers changed from: protected */
    public void l() {
        try {
            if (this.m != null) {
                this.m.i();
            }
        } catch (GattException e2) {
            s.d("BtleCentralService", "Got bluetooth exception when disconnecting，" + e2.getMessage());
        }
    }

    /* access modifiers changed from: protected */
    public void a(f fVar) {
        this.l = fVar;
    }

    /* access modifiers changed from: protected */
    public f m() {
        return this.l;
    }

    /* access modifiers changed from: protected */
    public void a(GattException gattException) {
        if (gattException == null) {
            return;
        }
        if (this.t || ((gattException.b() && gattException.a() == 1) || gattException.a() == 2 || gattException.a() == 3)) {
            s.d("BtleCentralService", "Got gatt status code: " + gattException.a() + ".shouldRefreshGatt = " + gattException.b() + ". Referashing gatt");
            this.m.c();
        }
    }

    public b n() {
        return this.m;
    }

    public int o() {
        int i2 = this.s;
        this.s = i2 + 1;
        return i2;
    }

    public int p() {
        return this.s;
    }

    public void q() {
        this.s = 0;
    }

    public void r() {
        a(false);
    }

    public ConnectionConfiguration s() {
        if (this.k != null) {
            this.k.a(j());
        }
        return this.k;
    }

    /* access modifiers changed from: protected */
    public synchronized void a(int i2, int i3) {
        s.d("BtleCentralService", "Bluetooth state change from " + i3 + " to " + i2);
        if (i2 == 12) {
            a(ConnectState.CONNECTING);
            if (this.t) {
                this.t = false;
                s.d("BtleCentralService", "Refreshing gatt as a precaution");
                this.m.c();
            }
            SystemClock.sleep(1000);
            b();
        } else if (i2 == 13) {
            a(ConnectState.DISCONNECTED);
            u();
        }
    }
}
