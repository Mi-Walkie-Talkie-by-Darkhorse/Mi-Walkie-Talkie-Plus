package com.ifengyu.intercom.node.btle;

import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import android.os.Build.VERSION;
import com.ifengyu.intercom.b.k;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.transport.TransMode;
import com.ifengyu.intercom.node.transport.b;
import com.ifengyu.intercom.node.transport.e;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: DataSender */
public class i {
    private final Lock a = new ReentrantLock();
    private final Context b;
    private final BtleCentralService c;
    private BluetoothGattCharacteristic d;
    private boolean e = false;
    private int f = 0;
    private boolean g = false;
    private int h = 0;
    private final LinkedBlockingQueue<byte[]> i = new LinkedBlockingQueue<>();
    private final ExecutorService j;

    i(Context context, BtleCentralService btleCentralService, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.b = context;
        this.c = btleCentralService;
        this.d = bluetoothGattCharacteristic;
        this.j = Executors.newSingleThreadExecutor(new g("DataTransport", "DataSender", 10));
    }

    private void b(byte[] bArr, int i2, boolean z) throws InterruptedException, IOException {
        int i3 = 0;
        if (s.a()) {
            if (z) {
                String str = "DataSender";
                StringBuilder append = new StringBuilder().append("sendReliableMessage: origin packet size = ");
                if (bArr != null) {
                    i3 = bArr.length - 4;
                }
                s.a(str, append.append(i3).toString());
            } else {
                String str2 = "DataSender";
                StringBuilder append2 = new StringBuilder().append("sendReliableMessage: origin packet size = ");
                if (bArr != null) {
                    i3 = bArr.length;
                }
                s.a(str2, append2.append(i3).toString());
            }
        }
        c(c(bArr, i2, z));
    }

    private int b(byte[] bArr) throws InterruptedException {
        int d2 = e.d(bArr);
        if (!TransMode.b(d2)) {
            return 0;
        }
        s.b("DataSender", "getCmdId: trans mode ordinal=" + d2);
        TransMode a2 = TransMode.a(d2);
        if (a2 == TransMode.NORMAL) {
            return 10009;
        }
        if (a2 == TransMode.UPDATE) {
            return 10008;
        }
        s.e("DataSender", "Invalid Trans mode, ordinal=" + d2);
        throw new InterruptedException(String.format("Invalid Trans mode, ordinal=%s.", new Object[]{String.valueOf(d2)}));
    }

    private byte[] c(byte[] bArr, int i2, boolean z) throws InterruptedException {
        if (z) {
            k.a(this.h >= 0 && this.h < 256);
            int b2 = b(bArr);
            int i3 = (i2 + 8) - 4;
            byte[] a2 = a(bArr.length, i3, b2, this.h);
            System.arraycopy(bArr, 4, a2, 8, bArr.length - 4);
            if (s.b()) {
                s.b("DataSender", "addPacketHeader: data[cmdId=" + b2 + ",seqId=" + this.h + ",len=" + i3 + "]");
                s.b("DataSender", "addPacketHeader: data=" + b.a(a2, a2.length));
            }
            this.h = (this.h + 1) % 256;
            return a2;
        } else if (!s.b()) {
            return bArr;
        } else {
            s.b("DataSender", "addPacketHeader: data=" + b.a(bArr, bArr.length));
            return bArr;
        }
    }

    private void c(byte[] bArr) {
        if (s.a()) {
            s.a("DataSender", "writeOrEnqueue: total send packet size = " + (bArr != null ? bArr.length : 0));
        }
        if (this.e) {
            s.b("DataSender", "In lame duck mode. Ignoring write");
        } else if (this.g) {
            s.b("DataSender", "writeOrEnqueue: ble is busy, so we put data into buffer.");
            this.i.add(bArr);
        } else {
            this.g = true;
            d(bArr);
        }
    }

    private void d(final byte[] bArr) {
        if (bArr != null) {
            this.j.execute(new Runnable() {
                public void run() {
                    i.this.e(bArr);
                }
            });
        }
    }

    public void a(byte[] bArr, int i2, boolean z) throws IOException {
        try {
            if (b()) {
                s.d("DataSender", "write: dropping write as we are in lame duck mode");
            } else {
                b(bArr, i2, z);
            }
        } catch (InterruptedException e2) {
            throw new IOException(e2);
        }
    }

    public void a(byte[] bArr) {
        c(bArr);
    }

    /* access modifiers changed from: private */
    public void e(byte[] bArr) {
        s.a("DataSender", "writeCharacteristic");
        if (this.e) {
            s.b("DataSender", "In lame duck mode. Ignoring write");
        } else if (VERSION.SDK_INT >= 18) {
            BluetoothGattCharacteristic bluetoothGattCharacteristic = new BluetoothGattCharacteristic(null, 0, 0);
            bluetoothGattCharacteristic.setValue(bArr);
            try {
                this.c.a(this.d, bluetoothGattCharacteristic.getValue());
            } catch (GattException e2) {
                this.c.a((Exception) e2);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.a.lock();
        try {
            if (this.e) {
                s.d("DataSender", "Ignoring onCharacteristicWrite as we are in lame duck mode");
                return;
            }
            byte[] c2 = c();
            if (c2 == null) {
                this.g = false;
                this.a.unlock();
                return;
            }
            if (s.b()) {
                s.b("DataSender", "onCharacteristicWrite: data=" + b.a(c2));
            }
            d(c2);
            this.a.unlock();
        } finally {
            this.a.unlock();
        }
    }

    private boolean b() throws IOException {
        if (this.e) {
            if (this.f < 3) {
                this.f = 1;
            } else {
                throw new IOException("enter lame duck mode too long, restart connection.");
            }
        }
        return this.e;
    }

    private byte[] c() {
        if (this.i.isEmpty()) {
            return null;
        }
        return (byte[]) this.i.poll();
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        this.a.lock();
        try {
            this.e = true;
        } finally {
            this.a.unlock();
        }
    }

    /* access modifiers changed from: 0000 */
    public void b(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.i.clear();
        this.d = bluetoothGattCharacteristic;
        this.a.lock();
        try {
            this.e = false;
            this.g = false;
            this.f = 0;
        } finally {
            this.a.unlock();
        }
    }

    private byte[] a(int i2, int i3, int i4, int i5) {
        byte[] bArr = new byte[((i2 + 8) - 4)];
        bArr[0] = -2;
        bArr[1] = 1;
        e.a(bArr, (long) i3, 2, 2);
        e.a(bArr, (long) i4, 4, 2);
        e.a(bArr, (long) i5, 6, 2);
        return bArr;
    }
}
