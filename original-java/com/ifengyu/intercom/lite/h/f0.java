package com.ifengyu.intercom.lite.h;

import android.app.Application;
import android.bluetooth.BluetoothDevice;
import androidx.annotation.NonNull;
import androidx.lifecycle.p;
import com.ifengyu.blelib.c.e;
import com.ifengyu.blelib.d.c;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.e.f;
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.library.a.m;

/* compiled from: BatchConfigViewModel.java */
/* loaded from: classes2.dex */
public class f0 extends androidx.lifecycle.a implements com.ifengyu.blelib.c.b {

    /* renamed from: b  reason: collision with root package name */
    private final f f5601b;

    /* renamed from: c  reason: collision with root package name */
    private p<Boolean> f5602c = new p<>();
    private p<String> d = new p<>();
    private p<String> e = new p<>();

    public f0(@NonNull Application application) {
        super(application);
        f a2 = f.a(application);
        this.f5601b = a2;
        a2.a((com.ifengyu.blelib.c.b) this);
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void a(@NonNull BluetoothDevice bluetoothDevice) {
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void a(@NonNull BluetoothDevice bluetoothDevice, int i) {
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void b(@NonNull BluetoothDevice bluetoothDevice) {
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void b(@NonNull BluetoothDevice bluetoothDevice, int i) {
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void c(@NonNull BluetoothDevice bluetoothDevice) {
    }

    public p<String> d() {
        return this.d;
    }

    public p<String> e() {
        return this.e;
    }

    public void f() {
        this.f5601b.c(new a());
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void f(@NonNull BluetoothDevice bluetoothDevice) {
    }

    public void g() {
        this.f5601b.d(new b());
    }

    @Override // com.ifengyu.blelib.c.a
    public void a(@NonNull BluetoothDevice bluetoothDevice, @NonNull c cVar) {
        if (cVar.a() != 20022) {
            return;
        }
        if (((LiteProtos.BatchBrodFskResponse) cVar.b()).getResult() == LiteProtos.SWITCH.ON) {
            c().postValue(true);
        } else {
            c().postValue(false);
        }
    }

    public f b() {
        return this.f5601b;
    }

    public p<Boolean> c() {
        return this.f5602c;
    }

    /* compiled from: BatchConfigViewModel.java */
    /* loaded from: classes2.dex */
    class a extends e {
        a() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(c cVar) {
            if (((LiteProtos.BatchBrodCfgResponse) cVar.b()).getResult() == LiteProtos.RESULT.SUCCESS) {
                f0.this.f5601b.c(true);
                f0.this.d.postValue(null);
                return;
            }
            f0.this.d.postValue(m.b((int) R.string.set_failed));
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            f0.this.d.postValue(m.b((int) R.string.set_failed));
        }
    }

    /* compiled from: BatchConfigViewModel.java */
    /* loaded from: classes2.dex */
    class b extends e {
        b() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(c cVar) {
            if (((LiteProtos.BatchBrodCfgResponse) cVar.b()).getResult() == LiteProtos.RESULT.SUCCESS) {
                f0.this.f5601b.c(false);
                f0.this.e.postValue(null);
                return;
            }
            f0.this.e.postValue(m.b((int) R.string.set_failed));
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            f0.this.e.postValue(m.b((int) R.string.set_failed));
        }
    }
}
