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
import android.os.SystemClock;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.o;
import com.ifengyu.intercom.i.z;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.bouncycastle.crypto.tls.CipherSuite;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BluetoothGattHelper.java */
/* loaded from: classes2.dex */
public final class b {
    private static final long l = TimeUnit.SECONDS.toMillis(10);
    private static final long m = TimeUnit.SECONDS.toMillis(20);

    /* renamed from: a  reason: collision with root package name */
    private final Context f5879a;

    /* renamed from: b  reason: collision with root package name */
    private final BluetoothManager f5880b;
    private GattException d;
    private UUID h;
    private final j k;

    /* renamed from: c  reason: collision with root package name */
    private volatile BluetoothGatt f5881c = null;
    private final Object e = new Object();
    private int f = 23;
    private GattOperation g = GattOperation.NO_OPERATION;
    private boolean i = false;
    private final BluetoothGattCallback j = new a(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, j jVar) throws GattException {
        o.a(context);
        this.f5879a = context;
        BluetoothManager bluetoothManager = (BluetoothManager) context.getSystemService("bluetooth");
        this.f5880b = bluetoothManager;
        if (bluetoothManager != null) {
            o.a(jVar);
            this.k = jVar;
            return;
        }
        throw new GattException("Bluetooth is not supported on this device.");
    }

    private void b(GattOperation gattOperation) throws GattException {
        a(gattOperation, null, l);
    }

    private BluetoothGatt j() throws GattException {
        GattException gattException = this.d;
        if (gattException != null) {
            try {
                throw gattException;
            } catch (Throwable th) {
                this.d = null;
                throw th;
            }
        } else if (this.f5881c != null) {
            return this.f5881c;
        } else {
            throw new GattException("BluetoothGatt not connected");
        }
    }

    private void k() throws GattException {
        c.a();
        try {
            synchronized (this.e) {
                BluetoothGatt j = j();
                SystemClock.sleep(500L);
                if (j.discoverServices()) {
                    b(GattOperation.DISCOVER_SERVICES);
                    this.i = true;
                } else {
                    throw new GattException(String.format("Cannot start discovering services on device %s.", j.getDevice().getAddress()));
                }
            }
        } finally {
            c.b();
        }
    }

    public void a(BluetoothDevice bluetoothDevice) throws GattException {
        StringBuilder sb = new StringBuilder();
        sb.append("connect to ");
        sb.append(bluetoothDevice != null ? bluetoothDevice.getAddress() : "device is null!");
        z.d("BluetoothGattHelper", sb.toString());
        SystemClock.sleep(1000L);
        this.i = false;
        o.a(bluetoothDevice);
        c.a();
        try {
            synchronized (this.e) {
                if (!f()) {
                    if (this.f5881c != null) {
                        this.f5881c.close();
                    }
                    BluetoothGatt connectGatt = bluetoothDevice.connectGatt(this.f5879a, false, this.j);
                    if (connectGatt != null) {
                        this.f5881c = connectGatt;
                        a(GattOperation.CONNECT, null, m);
                    } else {
                        throw new GattException(String.format("Cannot connect to device %s.", bluetoothDevice.getAddress()));
                    }
                } else {
                    z.e("BluetoothGattHelper", String.format("Device %s already connected.", bluetoothDevice.getAddress()));
                }
            }
        } finally {
            c.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j c() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<BluetoothGattService> d() throws GattException {
        List<BluetoothGattService> services;
        try {
            c.a();
            synchronized (this.e) {
                BluetoothGatt j = j();
                if (!this.i) {
                    k();
                }
                services = j.getServices();
            }
            return services;
        } finally {
            c.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object e() {
        return this.e;
    }

    public boolean f() {
        return this.f5881c != null && this.f5880b.getConnectionState(this.f5881c.getDevice(), 7) == 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        synchronized (this.e) {
            this.e.notify();
        }
        this.g = GattOperation.NO_OPERATION;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        z.d("BluetoothGattHelper", "refreshGatt");
        if (this.f5881c == null) {
            z.e("BluetoothGattHelper", "mBluetoothGatt was null");
            return;
        }
        try {
            this.f5881c.getClass().getMethod("refresh", new Class[0]).invoke(this.f5881c, new Object[0]);
        } catch (IllegalAccessException e) {
            z.b("BluetoothGattHelper", "Illegal access exception", e);
        } catch (NoSuchMethodException e2) {
            z.b("BluetoothGattHelper", "Couldn't find refresh method", e2);
        } catch (InvocationTargetException e3) {
            z.b("BluetoothGattHelper", "Invocation target exception", e3);
        } catch (Exception e4) {
            z.b("BluetoothGattHelper", "exception", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() throws GattException {
        z.d("BluetoothGattHelper", "requestMTU");
        if (z.c()) {
            z.d("BluetoothGattHelper", "\nMANUFACTURER:" + Build.MANUFACTURER + "\nBRAND:" + Build.BRAND + "\nMODEL:" + Build.MODEL + "\nRELEASE:" + Build.VERSION.RELEASE);
        }
        if (Build.MODEL.contains("Mi-4c") || Build.MODEL.contains("MI 4S") || Build.MODEL.contains("MI NOTE") || Build.MODEL.contains("ONEPLUS") || Build.MODEL.contains("m1 metal")) {
            this.f = 23;
        } else if ("5.1.1".equals(Build.VERSION.RELEASE)) {
            z.a("BluetoothGattHelper", "Android version is 5.1.1,Set mtu size 23");
            this.f = 23;
        } else if (c0.f(21)) {
            try {
                c.a();
                synchronized (this.e) {
                    if (!j().requestMtu(CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384)) {
                        z.a("BluetoothGattHelper", "Calling requestMtu() return false, so set mtu size 23");
                        this.f = 23;
                    }
                    try {
                        b(GattOperation.REQUEST_MTU);
                    } catch (Exception unused) {
                        z.e("BluetoothGattHelper", "waitForCompletion(requestMtu): has been interrupted.");
                        this.f = 23;
                    }
                }
            } finally {
                c.b();
            }
        } else {
            this.f = 23;
        }
        z.d("BluetoothGattHelper", "mMtu = " + this.f);
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        this.f = i;
    }

    private void b(Exception exc) {
        z.a("BluetoothGattHelper", "cleanUpAfterDisconnect");
        if (this.f5881c != null) {
            try {
                this.f5881c.close();
                this.k.a(exc);
            } finally {
                this.f5881c = null;
                this.i = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GattOperation b() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    public void a(int i) throws GattException {
        z.d("BluetoothGattHelper", "requestConnectionPrio " + i);
        c.a();
        try {
            try {
                if (!j().requestConnectionPriority(i)) {
                    throw new GattException("Error calling requestConnectionPriority()");
                }
            } catch (Exception e) {
                z.e("BluetoothGattHelper", "requestConnectionPrio Got exception, " + e.getMessage());
            } catch (NoSuchMethodError e2) {
                z.b("BluetoothGattHelper", "requestConnectionPrio error," + e2.getMessage());
            }
        } finally {
            c.b();
        }
    }

    private void a(GattOperation gattOperation, UUID uuid) throws GattException {
        a(gattOperation, uuid, l);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.ifengyu.intercom.node.btle.GattException, java.util.UUID] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(com.ifengyu.intercom.node.btle.GattOperation r6, java.util.UUID r7, long r8) throws com.ifengyu.intercom.node.btle.GattException {
        /*
            r5 = this;
            r0 = 0
            java.lang.Object r1 = r5.e     // Catch: all -> 0x005b, InterruptedException -> 0x005d
            monitor-enter(r1)     // Catch: all -> 0x005b, InterruptedException -> 0x005d
            java.lang.String r2 = "BluetoothGattHelper"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: all -> 0x0058
            r3.<init>()     // Catch: all -> 0x0058
            java.lang.String r4 = "waiting for operation "
            r3.append(r4)     // Catch: all -> 0x0058
            java.lang.String r4 = r6.name()     // Catch: all -> 0x0058
            r3.append(r4)     // Catch: all -> 0x0058
            java.lang.String r4 = " to be complete."
            r3.append(r4)     // Catch: all -> 0x0058
            java.lang.String r3 = r3.toString()     // Catch: all -> 0x0058
            com.ifengyu.intercom.i.z.c(r2, r3)     // Catch: all -> 0x0058
            r5.g = r6     // Catch: all -> 0x0058
            r5.h = r7     // Catch: all -> 0x0058
            r5.d = r0     // Catch: all -> 0x0058
            java.lang.Object r6 = r5.e     // Catch: all -> 0x0058
            r6.wait(r8)     // Catch: all -> 0x0058
            com.ifengyu.intercom.node.btle.GattOperation r6 = r5.g     // Catch: all -> 0x0058
            com.ifengyu.intercom.node.btle.GattOperation r7 = com.ifengyu.intercom.node.btle.GattOperation.NO_OPERATION     // Catch: all -> 0x0058
            if (r6 != r7) goto L_0x003d
            com.ifengyu.intercom.node.btle.GattException r6 = r5.d     // Catch: all -> 0x0058
            if (r6 != 0) goto L_0x003a
            monitor-exit(r1)     // Catch: all -> 0x0058
            goto L_0x006b
        L_0x003a:
            com.ifengyu.intercom.node.btle.GattException r6 = r5.d     // Catch: all -> 0x0058
            throw r6     // Catch: all -> 0x0058
        L_0x003d:
            com.ifengyu.intercom.node.btle.GattException r6 = new com.ifengyu.intercom.node.btle.GattException     // Catch: all -> 0x0058
            java.lang.String r7 = "Operation %s timed out after %dms."
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: all -> 0x0058
            r3 = 0
            com.ifengyu.intercom.node.btle.GattOperation r4 = r5.g     // Catch: all -> 0x0058
            r2[r3] = r4     // Catch: all -> 0x0058
            r3 = 1
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch: all -> 0x0058
            r2[r3] = r8     // Catch: all -> 0x0058
            java.lang.String r7 = java.lang.String.format(r7, r2)     // Catch: all -> 0x0058
            r6.<init>(r7)     // Catch: all -> 0x0058
            throw r6     // Catch: all -> 0x0058
        L_0x0058:
            r6 = move-exception
            monitor-exit(r1)     // Catch: all -> 0x0058
            throw r6     // Catch: all -> 0x005b, InterruptedException -> 0x005d
        L_0x005b:
            r6 = move-exception
            goto L_0x0074
        L_0x005d:
            java.lang.Thread r6 = java.lang.Thread.currentThread()     // Catch: all -> 0x005b
            r6.interrupt()     // Catch: all -> 0x005b
            java.lang.String r6 = "BluetoothGattHelper"
            java.lang.String r7 = "waitForCompletion: has been interrupted."
            com.ifengyu.intercom.i.z.b(r6, r7)     // Catch: all -> 0x005b
        L_0x006b:
            com.ifengyu.intercom.node.btle.GattOperation r6 = com.ifengyu.intercom.node.btle.GattOperation.NO_OPERATION
            r5.g = r6
            r5.h = r0
            r5.d = r0
            return
        L_0x0074:
            com.ifengyu.intercom.node.btle.GattOperation r7 = com.ifengyu.intercom.node.btle.GattOperation.NO_OPERATION
            r5.g = r7
            r5.h = r0
            r5.d = r0
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.node.btle.b.a(com.ifengyu.intercom.node.btle.GattOperation, java.util.UUID, long):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(BluetoothGattDescriptor bluetoothGattDescriptor) throws GattException {
        try {
            c.a();
            synchronized (this.e) {
                BluetoothGatt j = j();
                if (j.writeDescriptor(bluetoothGattDescriptor)) {
                    a(GattOperation.WRITE_DESCRIPTOR, bluetoothGattDescriptor.getUuid());
                } else {
                    throw new GattException(String.format("Cannot write descriptor %s on device %s.", bluetoothGattDescriptor, j.getDevice().getAddress()));
                }
            }
        } finally {
            c.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(BluetoothGattCharacteristic bluetoothGattCharacteristic) throws GattException {
        try {
            c.a();
            BluetoothGatt j = j();
            if (!j.setCharacteristicNotification(bluetoothGattCharacteristic, true)) {
                throw new GattException(String.format("Cannot set characteristic notification %s on device %s.", bluetoothGattCharacteristic, j.getDevice().getAddress()));
            }
        } finally {
            c.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(BluetoothGattCharacteristic bluetoothGattCharacteristic, byte[] bArr) throws GattException {
        if (z.c()) {
            z.d("BluetoothGattHelper", "writeCharacteristic " + bluetoothGattCharacteristic.getUuid() + ", value size = " + bArr.length);
        }
        c.a();
        synchronized (this.e) {
            BluetoothGatt j = j();
            o.a(bluetoothGattCharacteristic.setValue(bArr));
            if (j.writeCharacteristic(bluetoothGattCharacteristic)) {
                a(GattOperation.WRITE_CHARACTERISTIC, bluetoothGattCharacteristic.getUuid());
            } else {
                throw new GattException(String.format("Cannot write characteristic %s on device %s.", bluetoothGattCharacteristic, j.getDevice().getAddress()));
            }
        }
        c.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BluetoothGatt a(BluetoothGatt bluetoothGatt) throws GattException {
        if (this.f5881c == null) {
            throw new GattException("Received an event for device " + bluetoothGatt.getDevice() + " when not connected.");
        } else if (bluetoothGatt.getDevice().equals(this.f5881c.getDevice())) {
            return this.f5881c;
        } else {
            throw new GattException("Received an event for un unexpected device. Expected " + this.f5881c.getDevice() + " Received: " + bluetoothGatt.getDevice());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(BluetoothGatt bluetoothGatt, UUID uuid) {
        if (this.h == null) {
            z.e("BluetoothGattHelper", "Received event for a characteristic for " + this.g + " on device  when not expected a characteristic. Received: " + bluetoothGatt.getDevice().getAddress());
        }
        if (!uuid.equals(this.h)) {
            z.e("BluetoothGattHelper", "Received event for an unexpected characteristic for " + this.g + " on device  Expected: " + this.f5881c.getDevice().getAddress() + ". Received: " + bluetoothGatt.getDevice().getAddress());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(GattOperation gattOperation) {
        if (!this.g.equals(gattOperation)) {
            z.e("BluetoothGattHelper", "Received result for an operation " + gattOperation + " while expecting " + this.g + " on device " + this.f5881c.getDevice().getAddress());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(BluetoothGatt bluetoothGatt, int i) throws GattException {
        String str;
        if (i != 0) {
            if (i == 13) {
                str = "GATT_INVALID_ATTRIBUTE_LENGTH";
            } else if (i != 143) {
                str = i != 257 ? i != 2 ? i != 3 ? i != 5 ? i != 6 ? i != 7 ? "Unknow error code" : "GATT_INVALID_OFFSET" : "GATT_REQUEST_NOT_SUPPORTED" : "GATT_INSUFFICIENT_AUTHENTICATION" : "GATT_WRITE_NOT_PERMITTED" : "GATT_READ_NOT_PERMITTED" : "GATT_FAILURE";
            } else {
                z.a("BluetoothGattHelper", "Connection congested.");
                return;
            }
            throw new GattException("Operation " + this.g + " on device " + bluetoothGatt.getDevice() + " failed: " + i + " - " + str);
        }
        z.a("BluetoothGattHelper", "Connection GATT_SUCCESS.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(GattException gattException) {
        z.b("BluetoothGattHelper", gattException.getMessage());
        this.d = gattException;
        g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Exception exc) {
        b(exc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BluetoothGattCharacteristic a(BluetoothGattService bluetoothGattService, UUID uuid) throws GattException {
        BluetoothGattCharacteristic characteristic = bluetoothGattService.getCharacteristic(uuid);
        if (characteristic != null) {
            return characteristic;
        }
        throw new GattException(String.format("Service %s is missing characteristic %s", bluetoothGattService.getUuid(), uuid), true);
    }

    public void a() throws GattException {
        z.a("BluetoothGattHelper", "disconnect");
        if (this.f5881c != null) {
            try {
                int connectionState = this.f5880b.getConnectionState(this.f5881c.getDevice(), 7);
                if (this.f5881c != null) {
                    this.f5881c.disconnect();
                }
                h();
                if (this.f5881c != null) {
                    this.f5881c.close();
                }
                if (connectionState != 0) {
                    a(GattOperation.DISCONNECT, null, 100L);
                    g();
                    a((Exception) null);
                }
            } finally {
                b((Exception) null);
            }
        } else {
            throw new GattException("BluetoothGattHelper not connected.");
        }
    }
}
