package com.ifengyu.intercom.node.btle;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.SystemClock;
import com.ifengyu.intercom.b.k;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.bouncycastle.crypto.tls.CipherSuite;

/* compiled from: BluetoothGattHelper */
final class b {
    private static final long g = TimeUnit.SECONDS.toMillis(10);
    private static final long h = TimeUnit.SECONDS.toMillis(20);
    private final Context a;
    private final BluetoothManager b;
    private volatile BluetoothGatt c = null;
    private GattException d;
    private final Object e = new Object();
    private int f = 23;
    private GattOperation i = GattOperation.NO_OPERATION;
    private UUID j;
    private boolean k = false;
    private final BluetoothGattCallback l = new a(this);
    private final j m;

    b(Context context, j jVar) throws GattException {
        k.a(context);
        this.a = context;
        this.b = (BluetoothManager) context.getSystemService("bluetooth");
        if (this.b == null) {
            throw new GattException("Bluetooth is not supported on this device.");
        }
        this.m = (j) k.a(jVar);
    }

    public void a(BluetoothDevice bluetoothDevice) throws GattException {
        s.a("BluetoothGattHelper", "connect to " + (bluetoothDevice != null ? bluetoothDevice.getAddress() : "device is null!"));
        SystemClock.sleep(1000);
        this.k = false;
        k.a(bluetoothDevice);
        c.a();
        try {
            synchronized (this.e) {
                if (!b()) {
                    if (this.c != null) {
                        this.c.close();
                    }
                    BluetoothGatt connectGatt = bluetoothDevice.connectGatt(this.a, false, this.l);
                    if (connectGatt != null) {
                        this.c = connectGatt;
                        a(GattOperation.CONNECT, null, h);
                    } else {
                        throw new GattException(String.format("Cannot connect to device %s.", new Object[]{bluetoothDevice.getAddress()}));
                    }
                } else {
                    s.d("BluetoothGattHelper", String.format("Device %s already connected.", new Object[]{bluetoothDevice.getAddress()}));
                }
            }
        } finally {
            c.b();
        }
    }

    /* access modifiers changed from: 0000 */
    @TargetApi(21)
    public void a(int i2) throws GattException {
        s.a("BluetoothGattHelper", "requestConnectionPrio " + i2);
        c.a();
        try {
            if (!j().requestConnectionPriority(i2)) {
                throw new GattException("Error calling requestConnectionPriority()");
            }
        } catch (Exception e2) {
            s.d("BluetoothGattHelper", "requestConnectionPrio Got exception, " + e2.getMessage());
        } catch (NoSuchMethodError e3) {
            s.e("BluetoothGattHelper", "requestConnectionPrio error," + e3.getMessage());
        } finally {
            c.b();
        }
    }

    private BluetoothGatt j() throws GattException {
        if (this.d != null) {
            try {
                throw this.d;
            } catch (Throwable th) {
                this.d = null;
                throw th;
            }
        } else if (this.c != null) {
            return this.c;
        } else {
            throw new GattException("BluetoothGatt not connected");
        }
    }

    /* access modifiers changed from: 0000 */
    public int a() throws GattException {
        s.a("BluetoothGattHelper", "requestMTU");
        if (s.a()) {
            s.a("BluetoothGattHelper", "\nMANUFACTURER:" + Build.MANUFACTURER + "\nBRAND:" + Build.BRAND + "\nMODEL:" + Build.MODEL + "\nRELEASE:" + VERSION.RELEASE);
        }
        if (Build.MODEL.contains("Mi-4c") || Build.MODEL.contains("MI 4S") || Build.MODEL.contains("MI NOTE") || Build.MODEL.contains("ONEPLUS") || Build.MODEL.contains("m1 metal")) {
            this.f = 23;
        } else if ("5.1.1".equals(VERSION.RELEASE)) {
            s.b("BluetoothGattHelper", "Android version is 5.1.1,Set mtu size 23");
            this.f = 23;
        } else if (v.h(21)) {
            try {
                c.a();
                synchronized (this.e) {
                    if (!j().requestMtu(163)) {
                        s.b("BluetoothGattHelper", "Calling requestMtu() return false, so set mtu size 23");
                        this.f = 23;
                    }
                    try {
                        b(GattOperation.REQUEST_MTU);
                    } catch (Exception e2) {
                        s.d("BluetoothGattHelper", "waitForCompletion(requestMtu): has been interrupted.");
                        this.f = 23;
                    }
                }
            } finally {
                c.b();
            }
        } else {
            this.f = 23;
        }
        s.a("BluetoothGattHelper", "mMtu = " + this.f);
        return this.f;
    }

    private void b(GattOperation gattOperation) throws GattException {
        a(gattOperation, null, g);
    }

    private void a(GattOperation gattOperation, UUID uuid) throws GattException {
        a(gattOperation, uuid, g);
    }

    private void a(GattOperation gattOperation, UUID uuid, long j2) throws GattException {
        try {
            synchronized (this.e) {
                s.c("BluetoothGattHelper", "waiting for operation " + gattOperation.name() + " to be complete.");
                this.i = gattOperation;
                this.j = uuid;
                this.d = null;
                this.e.wait(j2);
                if (this.i != GattOperation.NO_OPERATION) {
                    throw new GattException(String.format("Operation %s timed out after %dms.", new Object[]{this.i, Long.valueOf(j2)}));
                } else if (this.d != null) {
                    throw this.d;
                }
            }
            this.i = GattOperation.NO_OPERATION;
            this.j = null;
            this.d = null;
        } catch (InterruptedException e2) {
            try {
                Thread.currentThread().interrupt();
                s.e("BluetoothGattHelper", "waitForCompletion: has been interrupted.");
            } finally {
                this.i = GattOperation.NO_OPERATION;
                this.j = null;
                this.d = null;
            }
        }
    }

    public boolean b() {
        return this.c != null && this.b.getConnectionState(this.c.getDevice(), 7) == 2;
    }

    /* access modifiers changed from: 0000 */
    public void a(BluetoothGattDescriptor bluetoothGattDescriptor) throws GattException {
        try {
            c.a();
            synchronized (this.e) {
                BluetoothGatt j2 = j();
                if (!j2.writeDescriptor(bluetoothGattDescriptor)) {
                    throw new GattException(String.format("Cannot write descriptor %s on device %s.", new Object[]{bluetoothGattDescriptor, j2.getDevice().getAddress()}));
                }
                a(GattOperation.WRITE_DESCRIPTOR, bluetoothGattDescriptor.getUuid());
            }
        } finally {
            c.b();
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(BluetoothGattCharacteristic bluetoothGattCharacteristic) throws GattException {
        try {
            c.a();
            BluetoothGatt j2 = j();
            if (!j2.setCharacteristicNotification(bluetoothGattCharacteristic, true)) {
                throw new GattException(String.format("Cannot set characteristic notification %s on device %s.", new Object[]{bluetoothGattCharacteristic, j2.getDevice().getAddress()}));
            }
        } finally {
            c.b();
        }
    }

    /* access modifiers changed from: 0000 */
    public void c() {
        s.a("BluetoothGattHelper", "refreshGatt");
        if (this.c == null) {
            s.d("BluetoothGattHelper", "mBluetoothGatt was null");
            return;
        }
        try {
            this.c.getClass().getMethod("refresh", new Class[0]).invoke(this.c, new Object[0]);
        } catch (NoSuchMethodException e2) {
            s.a("BluetoothGattHelper", "Couldn't find refresh method", e2);
        } catch (InvocationTargetException e3) {
            s.a("BluetoothGattHelper", "Invocation target exception", e3);
        } catch (IllegalAccessException e4) {
            s.a("BluetoothGattHelper", "Illegal access exception", e4);
        } catch (Exception e5) {
            s.a("BluetoothGattHelper", "exception", e5);
        }
    }

    /* access modifiers changed from: 0000 */
    public List<BluetoothGattService> d() throws GattException {
        List<BluetoothGattService> services;
        try {
            c.a();
            synchronized (this.e) {
                BluetoothGatt j2 = j();
                if (!this.k) {
                    k();
                }
                services = j2.getServices();
            }
            return services;
        } finally {
            c.b();
        }
    }

    private void k() throws GattException {
        c.a();
        try {
            synchronized (this.e) {
                BluetoothGatt j2 = j();
                SystemClock.sleep(500);
                if (!j2.discoverServices()) {
                    throw new GattException(String.format("Cannot start discovering services on device %s.", new Object[]{j2.getDevice().getAddress()}));
                } else {
                    b(GattOperation.DISCOVER_SERVICES);
                    this.k = true;
                }
            }
        } finally {
            c.b();
        }
    }

    /* access modifiers changed from: 0000 */
    public synchronized void a(BluetoothGattCharacteristic bluetoothGattCharacteristic, byte[] bArr) throws GattException {
        if (s.a()) {
            s.a("BluetoothGattHelper", "writeCharacteristic " + bluetoothGattCharacteristic.getUuid() + ", value size = " + bArr.length);
        }
        c.a();
        try {
            synchronized (this.e) {
                BluetoothGatt j2 = j();
                k.a(bluetoothGattCharacteristic.setValue(bArr));
                if (!j2.writeCharacteristic(bluetoothGattCharacteristic)) {
                    throw new GattException(String.format("Cannot write characteristic %s on device %s.", new Object[]{bluetoothGattCharacteristic, j2.getDevice().getAddress()}));
                }
                a(GattOperation.WRITE_CHARACTERISTIC, bluetoothGattCharacteristic.getUuid());
            }
        } finally {
            c.b();
        }
    }

    /* access modifiers changed from: 0000 */
    public Object e() {
        return this.e;
    }

    /* access modifiers changed from: 0000 */
    public j f() {
        return this.m;
    }

    /* access modifiers changed from: 0000 */
    public BluetoothGatt a(BluetoothGatt bluetoothGatt) throws GattException {
        if (this.c == null) {
            throw new GattException("Received an event for device " + bluetoothGatt.getDevice() + " when not connected.");
        } else if (bluetoothGatt.getDevice().equals(this.c.getDevice())) {
            return this.c;
        } else {
            throw new GattException("Received an event for un unexpected device. Expected " + this.c.getDevice() + " Received: " + bluetoothGatt.getDevice());
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(BluetoothGatt bluetoothGatt, UUID uuid) {
        if (this.j == null) {
            s.d("BluetoothGattHelper", "Received event for a characteristic for " + this.i + " on device  when not expected a characteristic. Received: " + bluetoothGatt.getDevice().getAddress());
        }
        if (!uuid.equals(this.j)) {
            s.d("BluetoothGattHelper", "Received event for an unexpected characteristic for " + this.i + " on device  Expected: " + this.c.getDevice().getAddress() + ". Received: " + bluetoothGatt.getDevice().getAddress());
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(GattOperation gattOperation) {
        if (!this.i.equals(gattOperation)) {
            s.d("BluetoothGattHelper", "Received result for an operation " + gattOperation + " while expecting " + this.i + " on device " + this.c.getDevice().getAddress());
        }
    }

    /* access modifiers changed from: 0000 */
    public void g() {
        synchronized (this.e) {
            this.e.notify();
        }
        this.i = GattOperation.NO_OPERATION;
    }

    /* access modifiers changed from: 0000 */
    public void a(BluetoothGatt bluetoothGatt, int i2) throws GattException {
        String str;
        switch (i2) {
            case 0:
                s.b("BluetoothGattHelper", "Connection GATT_SUCCESS.");
                return;
            case 2:
                str = "GATT_READ_NOT_PERMITTED";
                break;
            case 3:
                str = "GATT_WRITE_NOT_PERMITTED";
                break;
            case 5:
                str = "GATT_INSUFFICIENT_AUTHENTICATION";
                break;
            case 6:
                str = "GATT_REQUEST_NOT_SUPPORTED";
                break;
            case 7:
                str = "GATT_INVALID_OFFSET";
                break;
            case 13:
                str = "GATT_INVALID_ATTRIBUTE_LENGTH";
                break;
            case CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA /*143*/:
                s.b("BluetoothGattHelper", "Connection congested.");
                return;
            case 257:
                str = "GATT_FAILURE";
                break;
            default:
                str = "Unknow error code";
                break;
        }
        throw new GattException("Operation " + this.i + " on device " + bluetoothGatt.getDevice() + " failed: " + i2 + " - " + str);
    }

    /* access modifiers changed from: 0000 */
    public void a(GattException gattException) {
        s.e("BluetoothGattHelper", gattException.getMessage());
        this.d = gattException;
        g();
    }

    /* access modifiers changed from: 0000 */
    public void b(int i2) {
        this.f = i2;
    }

    /* access modifiers changed from: 0000 */
    public void a(Exception exc) {
        b(exc);
    }

    private void b(Exception exc) {
        s.b("BluetoothGattHelper", "cleanUpAfterDisconnect");
        if (this.c != null) {
            try {
                this.c.close();
                this.m.a(exc);
            } finally {
                this.c = null;
                this.k = false;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public GattOperation h() {
        return this.i;
    }

    static BluetoothGattCharacteristic a(BluetoothGattService bluetoothGattService, UUID uuid) throws GattException {
        BluetoothGattCharacteristic characteristic = bluetoothGattService.getCharacteristic(uuid);
        if (characteristic != null) {
            return characteristic;
        }
        throw new GattException(String.format("Service %s is missing characteristic %s", new Object[]{bluetoothGattService.getUuid(), uuid}), true);
    }

    public void i() throws GattException {
        s.b("BluetoothGattHelper", "disconnect");
        if (this.c == null) {
            throw new GattException("BluetoothGattHelper not connected.");
        }
        try {
            int connectionState = this.b.getConnectionState(this.c.getDevice(), 7);
            if (this.c != null) {
                this.c.disconnect();
            }
            c();
            if (this.c != null) {
                this.c.close();
            }
            if (connectionState != 0) {
                a(GattOperation.DISCONNECT, null, 100);
                g();
                a((Exception) null);
            }
        } finally {
            b((Exception) null);
        }
    }
}
