package com.ifengyu.intercom.p185i.p186z0;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattService;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.mlsdk.common.internal.client.event.MonitorResult;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.database.p155a.DeviceDao;
import com.ifengyu.intercom.device.common.event.ConnectStateEvent;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.library.utils.C4971k;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.UUID;
import no.nordicsemi.android.ble.BleManager;
import no.nordicsemi.android.ble.MtuRequest;
import no.nordicsemi.android.ble.RequestQueue;
import no.nordicsemi.android.ble.ValueChangedCallback;
import no.nordicsemi.android.ble.WriteRequest;
import no.nordicsemi.android.ble.data.Data;
import no.nordicsemi.android.ble.data.DataMerger;
import no.nordicsemi.android.ble.p307v2.DataReceivedCallback;
import no.nordicsemi.android.ble.p307v2.FailCallback;
import no.nordicsemi.android.ble.p307v2.MtuCallback;
import no.nordicsemi.android.ble.p309x2.ConnectionObserver;

/* renamed from: com.ifengyu.intercom.i.z0.d */
/* loaded from: classes2.dex */
public abstract class BaseBleManager extends BleManager implements ConnectionObserver, DataReceivedCallback {

    /* renamed from: m */
    protected final String f13899m;

    /* renamed from: n */
    protected BluetoothGattCharacteristic f13900n;

    /* renamed from: o */
    protected BluetoothGattCharacteristic f13901o;

    /* renamed from: p */
    protected BluetoothGattCharacteristic f13902p;

    /* renamed from: q */
    protected boolean f13903q;

    /* compiled from: BaseBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.z0.d$b */
    /* loaded from: classes2.dex */
    private class C3937b extends BleManager.AbstractC6657b {

        /* compiled from: BaseBleManager.java */
        /* renamed from: com.ifengyu.intercom.i.z0.d$b$a */
        /* loaded from: classes2.dex */
        class C3938a implements FailCallback {
            C3938a() {
            }

            @Override // no.nordicsemi.android.ble.p307v2.FailCallback
            /* renamed from: a */
            public void mo363a(@NonNull BluetoothDevice bluetoothDevice, int i) {
                String str = BaseBleManager.this.f13899m;
                C4971k.m8657c(str, "requestMtu onRequestFailed-->device: " + bluetoothDevice.toString() + ", status: " + i);
            }
        }

        /* compiled from: BaseBleManager.java */
        /* renamed from: com.ifengyu.intercom.i.z0.d$b$b */
        /* loaded from: classes2.dex */
        class C3939b implements MtuCallback {
            C3939b() {
            }

            @Override // no.nordicsemi.android.ble.p307v2.MtuCallback
            /* renamed from: a */
            public void mo361a(@NonNull BluetoothDevice bluetoothDevice, int i) {
                String str = BaseBleManager.this.f13899m;
                C4971k.m8659a(str, "requestMtu onMtuChanged-->device: " + bluetoothDevice.toString() + ", mtu: " + i);
            }
        }

        private C3937b() {
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00a7  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00d0  */
        @Override // no.nordicsemi.android.ble.BleManagerHandler
        /* renamed from: V0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected boolean mo648V0(@NonNull BluetoothGatt bluetoothGatt) {
            boolean z;
            BluetoothGattCharacteristic bluetoothGattCharacteristic;
            boolean z2;
            BluetoothGattService service;
            C4971k.m8654f(BaseBleManager.this.f13899m, "isRequiredServiceSupported");
            BluetoothGattService service2 = bluetoothGatt.getService(BaseBleManager.this.mo11998V());
            if (service2 != null) {
                BaseBleManager baseBleManager = BaseBleManager.this;
                baseBleManager.f13900n = service2.getCharacteristic(baseBleManager.mo11992b0());
                BaseBleManager baseBleManager2 = BaseBleManager.this;
                baseBleManager2.f13901o = service2.getCharacteristic(baseBleManager2.mo11999U());
            }
            BluetoothGattCharacteristic bluetoothGattCharacteristic2 = BaseBleManager.this.f13900n;
            if (bluetoothGattCharacteristic2 != null) {
                int properties = bluetoothGattCharacteristic2.getProperties();
                if ((properties & 8) > 0 || (properties & 4) > 0) {
                    z = true;
                    String str = BaseBleManager.this.f13899m;
                    C4971k.m8659a(str, "isSupportWrite:  " + z);
                    bluetoothGattCharacteristic = BaseBleManager.this.f13901o;
                    if (bluetoothGattCharacteristic != null) {
                        int properties2 = bluetoothGattCharacteristic.getProperties();
                        if ((properties2 & 16) > 0 || (properties2 & 32) > 0) {
                            z2 = true;
                            String str2 = BaseBleManager.this.f13899m;
                            C4971k.m8659a(str2, "isSupportNotify: " + z2);
                            service = bluetoothGatt.getService(BaseBleManager.this.mo11995Y());
                            if (service != null) {
                                BaseBleManager baseBleManager3 = BaseBleManager.this;
                                baseBleManager3.f13902p = service.getCharacteristic(baseBleManager3.mo11994Z());
                            }
                            BluetoothGattCharacteristic bluetoothGattCharacteristic3 = BaseBleManager.this.f13902p;
                            boolean z3 = bluetoothGattCharacteristic3 == null && (bluetoothGattCharacteristic3.getProperties() & 8) > 0;
                            String str3 = BaseBleManager.this.f13899m;
                            C4971k.m8659a(str3, "isSupportUpgradeWrite: " + z3);
                            BaseBleManager baseBleManager4 = BaseBleManager.this;
                            return baseBleManager4.f13900n == null && baseBleManager4.f13901o != null && z && z2;
                        }
                    }
                    z2 = false;
                    String str22 = BaseBleManager.this.f13899m;
                    C4971k.m8659a(str22, "isSupportNotify: " + z2);
                    service = bluetoothGatt.getService(BaseBleManager.this.mo11995Y());
                    if (service != null) {
                    }
                    BluetoothGattCharacteristic bluetoothGattCharacteristic32 = BaseBleManager.this.f13902p;
                    if (bluetoothGattCharacteristic32 == null) {
                    }
                    String str32 = BaseBleManager.this.f13899m;
                    C4971k.m8659a(str32, "isSupportUpgradeWrite: " + z3);
                    BaseBleManager baseBleManager42 = BaseBleManager.this;
                    if (baseBleManager42.f13900n == null) {
                    }
                }
            }
            z = false;
            String str4 = BaseBleManager.this.f13899m;
            C4971k.m8659a(str4, "isSupportWrite:  " + z);
            bluetoothGattCharacteristic = BaseBleManager.this.f13901o;
            if (bluetoothGattCharacteristic != null) {
            }
            z2 = false;
            String str222 = BaseBleManager.this.f13899m;
            C4971k.m8659a(str222, "isSupportNotify: " + z2);
            service = bluetoothGatt.getService(BaseBleManager.this.mo11995Y());
            if (service != null) {
            }
            BluetoothGattCharacteristic bluetoothGattCharacteristic322 = BaseBleManager.this.f13902p;
            if (bluetoothGattCharacteristic322 == null) {
            }
            String str322 = BaseBleManager.this.f13899m;
            C4971k.m8659a(str322, "isSupportUpgradeWrite: " + z3);
            BaseBleManager baseBleManager422 = BaseBleManager.this;
            if (baseBleManager422.f13900n == null) {
            }
        }

        @Override // no.nordicsemi.android.ble.BleManagerHandler
        /* renamed from: W1 */
        protected void mo644W1() {
            C4971k.m8654f(BaseBleManager.this.f13899m, "onServicesInvalidated");
        }

        @Override // no.nordicsemi.android.ble.BleManagerHandler
        /* renamed from: r0 */
        protected void mo584r0() {
            C4971k.m8654f(BaseBleManager.this.f13899m, "initialize");
            BaseBleManager baseBleManager = BaseBleManager.this;
            ValueChangedCallback m350F = baseBleManager.m350F(baseBleManager.f13901o);
            m350F.m398g(BaseBleManager.this.mo12001S());
            m350F.m396i(BaseBleManager.this);
            RequestQueue m343h = BaseBleManager.this.m343h();
            BaseBleManager baseBleManager2 = BaseBleManager.this;
            MtuRequest m352D = baseBleManager2.m352D(baseBleManager2.mo11997W());
            m352D.m461O(new C3939b());
            m352D.m467I(new C3938a());
            m343h.m434H(m352D);
            BaseBleManager.this.mo12004P(m343h);
            m343h.mo418f();
        }
    }

    public BaseBleManager(@NonNull Context context) {
        super(context);
        this.f13899m = "BleCore " + getClass().getSimpleName();
        this.f13903q = true;
        m351E(this);
    }

    /* renamed from: R */
    private String m12002R(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 10 ? GrsBaseInfo.CountryCodeSource.UNKNOWN : "TIMEOUT" : "NOT SUPPORTED" : "LINK LOSS" : "TERMINATE PEER USER" : "TERMINATE LOCAL HOST" : MonitorResult.SUCCESS;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e0 */
    public static /* synthetic */ DeviceModel m11989e0(BluetoothDevice bluetoothDevice) throws Exception {
        DeviceDao mo14270E = AppDatabase.m14276F().mo14270E();
        DeviceModel mo14239f = mo14270E.mo14239f(bluetoothDevice.getAddress());
        if (mo14239f == null) {
            return new DeviceModel();
        }
        mo14239f.setConnected(false);
        mo14239f.setUpdateTime(System.currentTimeMillis());
        mo14270E.mo14237h(mo14239f);
        return mo14239f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public /* synthetic */ void m11987g0(DeviceModel deviceModel) throws Exception {
        C4971k.m8659a(this.f13899m, "update device model disconnect success ");
        RxBus.m11806d().m11805e(new ConnectStateEvent(ConnectStateEvent.STATE_DISCONNECTED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h0 */
    public /* synthetic */ void m11985i0(Throwable th) throws Exception {
        C4971k.m8656d(this.f13899m, "update device model disconnect failed", th);
    }

    @Override // no.nordicsemi.android.ble.BleManager
    /* renamed from: A */
    public void mo355A(int i, @NonNull String str) {
        if (C4971k.m8653g()) {
            Log.println(i, this.f13899m, str);
        }
    }

    /* renamed from: P */
    protected abstract void mo12004P(RequestQueue requestQueue);

    /* renamed from: Q */
    public void m12003Q() {
        m342i();
    }

    /* renamed from: S */
    protected abstract DataMerger mo12001S();

    /* renamed from: T */
    public int m12000T() {
        return m331t();
    }

    /* renamed from: U */
    protected abstract UUID mo11999U();

    /* renamed from: V */
    protected abstract UUID mo11998V();

    /* renamed from: W */
    protected abstract int mo11997W();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: X */
    public BluetoothGattCharacteristic m11996X() {
        return this.f13902p;
    }

    /* renamed from: Y */
    protected UUID mo11995Y() {
        return null;
    }

    /* renamed from: Z */
    protected UUID mo11994Z() {
        return null;
    }

    /* renamed from: a */
    public void mo305a(@NonNull BluetoothDevice bluetoothDevice) {
        String str = this.f13899m;
        C4971k.m8659a(str, "onDeviceReady->device: " + bluetoothDevice.toString());
        BleCoreClient.m12373n().m12368s(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a0 */
    public WriteRequest m11993a0(BluetoothGattCharacteristic bluetoothGattCharacteristic, byte[] bArr) {
        return m346J(bluetoothGattCharacteristic, bArr);
    }

    @Override // no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: b */
    public void mo304b(@NonNull BluetoothDevice bluetoothDevice) {
        String str = this.f13899m;
        C4971k.m8659a(str, "on ble Connecting->device: " + bluetoothDevice.toString());
    }

    /* renamed from: b0 */
    protected abstract UUID mo11992b0();

    @Override // no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: c */
    public void mo303c(@NonNull BluetoothDevice bluetoothDevice) {
        String str = this.f13899m;
        C4971k.m8659a(str, "onDeviceDisconnecting->device: " + bluetoothDevice.toString());
    }

    /* renamed from: c0 */
    protected abstract void mo11991c0(BluetoothDevice bluetoothDevice, byte[] bArr);

    /* renamed from: d */
    public void mo302d(@NonNull BluetoothDevice bluetoothDevice, int i) {
        String str = this.f13899m;
        C4971k.m8659a(str, "onDeviceDisconnected->device: " + bluetoothDevice.toString() + ", reason: " + m12002R(i));
        BleCoreClient.m12373n().m12368s(null);
        if (i != 3) {
            m341j();
        }
    }

    /* renamed from: d0 */
    public boolean m11990d0() {
        return this.f13903q;
    }

    /* renamed from: e */
    public void mo301e(@NonNull BluetoothDevice bluetoothDevice, int i) {
        String str = this.f13899m;
        C4971k.m8659a(str, "onDeviceFailedToConnect->device: " + bluetoothDevice.toString() + ", reason: " + m12002R(i));
    }

    @Override // no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: f */
    public void mo300f(@NonNull BluetoothDevice bluetoothDevice) {
        String str = this.f13899m;
        C4971k.m8659a(str, "on ble Connected->device: " + bluetoothDevice.toString());
    }

    @Override // no.nordicsemi.android.ble.p307v2.DataReceivedCallback
    /* renamed from: g */
    public void mo365g(@NonNull BluetoothDevice bluetoothDevice, @NonNull Data data) {
        if (C4971k.m8653g()) {
            String str = this.f13899m;
            C4971k.m8659a(str, "onDataReceived-->device: " + bluetoothDevice.toString() + ", data: " + data.toString());
        }
        byte[] m483c = data.m483c();
        if (m483c == null) {
            C4971k.m8647m(this.f13899m, "onDataReceived-->data size is 0");
        } else {
            mo11991c0(bluetoothDevice, m483c);
        }
    }

    /* renamed from: j0 */
    public void m11984j0(boolean z) {
        this.f13903q = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"CheckResult"})
    /* renamed from: k0 */
    public void m11983k0(@NonNull BluetoothDevice bluetoothDevice) {
        Observable.just(bluetoothDevice).map(C3934b.f13897a).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.i.z0.a
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BaseBleManager.this.m11987g0((DeviceModel) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.i.z0.c
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BaseBleManager.this.m11985i0((Throwable) obj);
            }
        });
    }

    @Override // no.nordicsemi.android.ble.BleManager
    @NonNull
    /* renamed from: s */
    protected BleManager.AbstractC6657b mo332s() {
        return new C3937b();
    }
}
