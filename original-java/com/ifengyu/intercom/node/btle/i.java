package com.ifengyu.intercom.node.btle;

import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import android.os.Build;
import com.ifengyu.intercom.i.o;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.transport.TransMode;
import com.ifengyu.intercom.node.transport.b;
import com.ifengyu.intercom.node.transport.e;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: DataSender.java */
/* loaded from: classes2.dex */
public class i {

    /* renamed from: b  reason: collision with root package name */
    private final BtleCentralService f5905b;

    /* renamed from: c  reason: collision with root package name */
    private BluetoothGattCharacteristic f5906c;

    /* renamed from: a  reason: collision with root package name */
    private final Lock f5904a = new ReentrantLock();
    private boolean d = false;
    private int e = 0;
    private boolean f = false;
    private int g = 0;
    private final LinkedBlockingQueue<byte[]> h = new LinkedBlockingQueue<>();
    private final ExecutorService i = Executors.newSingleThreadExecutor(new g("DataTransport", "DataSender", 10));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataSender.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ byte[] f5907a;

        a(byte[] bArr) {
            this.f5907a = bArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.d(this.f5907a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context, BtleCentralService btleCentralService, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.f5905b = btleCentralService;
        this.f5906c = bluetoothGattCharacteristic;
    }

    private int b(byte[] bArr) throws InterruptedException {
        int d = e.d(bArr);
        if (!TransMode.a(d)) {
            return 0;
        }
        z.a("DataSender", "getCmdId: trans mode ordinal=" + d);
        TransMode b2 = TransMode.b(d);
        if (b2 == TransMode.NORMAL) {
            return 10009;
        }
        if (b2 == TransMode.UPDATE) {
            return 10008;
        }
        z.b("DataSender", "Invalid Trans mode, ordinal=" + d);
        throw new InterruptedException(String.format("Invalid Trans mode, ordinal=%s.", String.valueOf(d)));
    }

    private void c(byte[] bArr, int i, boolean z) throws InterruptedException, IOException {
        if (z.c()) {
            int i2 = 0;
            if (z) {
                StringBuilder sb = new StringBuilder();
                sb.append("sendReliableMessage: origin packet size = ");
                if (bArr != null) {
                    i2 = bArr.length - 4;
                }
                sb.append(i2);
                z.d("DataSender", sb.toString());
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("sendReliableMessage: origin packet size = ");
                if (bArr != null) {
                    i2 = bArr.length;
                }
                sb2.append(i2);
                z.d("DataSender", sb2.toString());
            }
        }
        e(b(bArr, i, z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(byte[] bArr) {
        z.d("DataSender", "writeCharacteristic");
        if (this.d) {
            z.a("DataSender", "In lame duck mode. Ignoring write");
        } else if (Build.VERSION.SDK_INT >= 18) {
            BluetoothGattCharacteristic bluetoothGattCharacteristic = new BluetoothGattCharacteristic(null, 0, 0);
            bluetoothGattCharacteristic.setValue(bArr);
            try {
                this.f5905b.a(this.f5906c, bluetoothGattCharacteristic.getValue());
            } catch (GattException e) {
                this.f5905b.a((Exception) e);
            }
        }
    }

    private void e(byte[] bArr) {
        if (z.c()) {
            StringBuilder sb = new StringBuilder();
            sb.append("writeOrEnqueue: total send packet size = ");
            sb.append(bArr != null ? bArr.length : 0);
            z.d("DataSender", sb.toString());
        }
        if (this.d) {
            z.a("DataSender", "In lame duck mode. Ignoring write");
        } else if (this.f) {
            z.a("DataSender", "writeOrEnqueue: ble is busy, so we put data into buffer.");
            this.h.add(bArr);
        } else {
            this.f = true;
            c(bArr);
        }
    }

    public void a(byte[] bArr, int i, boolean z) throws IOException {
        try {
            if (b()) {
                z.e("DataSender", "write: dropping write as we are in lame duck mode");
            } else {
                c(bArr, i, z);
            }
        } catch (InterruptedException e) {
            throw new IOException(e);
        }
    }

    private void c(byte[] bArr) {
        if (bArr != null) {
            this.i.execute(new a(bArr));
        }
    }

    public void a(byte[] bArr) {
        e(bArr);
    }

    private byte[] c() {
        if (this.h.isEmpty()) {
            return null;
        }
        return this.h.poll();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.f5904a.lock();
        try {
            if (this.d) {
                z.e("DataSender", "Ignoring onCharacteristicWrite as we are in lame duck mode");
            } else {
                byte[] c2 = c();
                if (c2 == null) {
                    this.f = false;
                } else {
                    if (z.a()) {
                        z.a("DataSender", "onCharacteristicWrite: data=" + b.a(c2));
                    }
                    c(c2);
                }
            }
        } finally {
            this.f5904a.unlock();
        }
    }

    private byte[] b(byte[] bArr, int i, boolean z) throws InterruptedException {
        if (z) {
            int i2 = this.g;
            o.a(i2 >= 0 && i2 < 256);
            int b2 = b(bArr);
            int i3 = (i + 8) - 4;
            byte[] a2 = a(bArr.length, i3, b2, this.g);
            System.arraycopy(bArr, 4, a2, 8, bArr.length - 4);
            if (z.a()) {
                z.a("DataSender", "addPacketHeader: data[cmdId=" + b2 + ",seqId=" + this.g + ",len=" + i3 + "]");
                StringBuilder sb = new StringBuilder();
                sb.append("addPacketHeader: data=");
                sb.append(b.a(a2, a2.length));
                z.a("DataSender", sb.toString());
            }
            this.g = (this.g + 1) % 256;
            return a2;
        }
        if (z.a()) {
            z.a("DataSender", "addPacketHeader: data=" + b.a(bArr, bArr.length));
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f5904a.lock();
        try {
            this.d = true;
        } finally {
            this.f5904a.unlock();
        }
    }

    private boolean b() throws IOException {
        if (this.d) {
            if (this.e < 3) {
                this.e = 1;
            } else {
                throw new IOException("enter lame duck mode too long, restart connection.");
            }
        }
        return this.d;
    }

    private byte[] a(int i, int i2, int i3, int i4) {
        byte[] bArr = new byte[(i + 8) - 4];
        bArr[0] = -2;
        bArr[1] = 1;
        e.a(bArr, i2, 2, 2);
        e.a(bArr, i3, 4, 2);
        e.a(bArr, i4, 6, 2);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.h.clear();
        this.f5906c = bluetoothGattCharacteristic;
        this.f5904a.lock();
        try {
            this.d = false;
            this.f = false;
            this.e = 0;
        } finally {
            this.f5904a.unlock();
        }
    }
}
