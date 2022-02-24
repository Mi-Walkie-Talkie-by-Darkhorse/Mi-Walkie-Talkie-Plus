package com.ifengyu.intercom.lite.g;

import android.app.Application;
import android.bluetooth.BluetoothDevice;
import android.os.Build;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.lifecycle.p;
import com.ifengyu.blelib.d.c;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.r;
import com.ifengyu.intercom.lite.database.LiteDatabase;
import com.ifengyu.intercom.lite.dto.UpgradeInfoDTO;
import com.ifengyu.intercom.lite.e.f;
import com.ifengyu.intercom.lite.e.j.b;
import com.ifengyu.intercom.lite.f.e;
import com.ifengyu.intercom.lite.g.t;
import com.ifengyu.intercom.lite.http.entity.FirmwareInfo;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.ifengyu.intercom.lite.utils.l;
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.library.a.m;
import com.tencent.connect.common.Constants;
import com.umeng.analytics.MobclickAgent;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.HashMap;
import no.nordicsemi.android.ble.t2;
import no.nordicsemi.android.ble.u2.d;
import no.nordicsemi.android.ble.u2.j;
import no.nordicsemi.android.ble.u2.k;

/* compiled from: UpgradeViewModel.java */
/* loaded from: classes2.dex */
public class t extends androidx.lifecycle.a {
    private static final String h = "t";

    /* renamed from: b  reason: collision with root package name */
    public p<Integer> f5587b = new p<>();

    /* renamed from: c  reason: collision with root package name */
    public p<Integer> f5588c = new p<>();
    private p<UpgradeInfoDTO> d = new p<>();
    private f e;
    private com.ifengyu.intercom.lite.e.j.a f;
    private String g;

    public t(@NonNull Application application) {
        super(application);
        this.e = f.a(application);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c(int i) {
        if (i == -100) {
            return "BLUETOOTH DISABLED";
        }
        switch (i) {
            case Constants.ERROR_CONNECTTIMEOUT /* -7 */:
                return "CANCELLED";
            case -6:
                return "VALIDATION";
            case -5:
                return "TIMEOUT";
            case -4:
                return "REQUEST FAILED";
            case -3:
                return "NULL ATTRIBUTE";
            case -2:
                return "NOT SUPPORTED";
            case -1:
                return "DEVICE DISCONNECTED";
            default:
                return "UNKNOWN";
        }
    }

    private void i() {
        this.e.e(new a());
    }

    private void j() {
        String p = d0.p();
        e n = LiteDatabase.a(a()).n();
        DeviceModel b2 = n.b(p);
        b2.setVersionSoft(r.a(a()).c());
        n.b(b2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        t2 e = this.e.e(new byte[]{0, -1});
        e.a(new j() { // from class: com.ifengyu.intercom.lite.g.f
            @Override // no.nordicsemi.android.ble.u2.j
            public final void a(BluetoothDevice bluetoothDevice) {
                t.this.g(bluetoothDevice);
            }
        });
        e.a(new d() { // from class: com.ifengyu.intercom.lite.g.p
            @Override // no.nordicsemi.android.ble.u2.d
            public final void a(BluetoothDevice bluetoothDevice, int i) {
                t.this.e(bluetoothDevice, i);
            }
        });
        e.a();
    }

    private void l() {
        t2 e = this.e.e(new byte[]{1, -1});
        e.a(new j() { // from class: com.ifengyu.intercom.lite.g.n
            @Override // no.nordicsemi.android.ble.u2.j
            public final void a(BluetoothDevice bluetoothDevice) {
                t.this.h(bluetoothDevice);
            }
        });
        e.a(new d() { // from class: com.ifengyu.intercom.lite.g.o
            @Override // no.nordicsemi.android.ble.u2.d
            public final void a(BluetoothDevice bluetoothDevice, int i) {
                t.this.f(bluetoothDevice, i);
            }
        });
        e.a();
    }

    public void b() {
        r a2 = r.a(a());
        Observable.zip(Observable.just(a2).map(new Function() { // from class: com.ifengyu.intercom.lite.g.m
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return t.this.a((r) obj);
            }
        }), Observable.just(a2).map(q.f5582a), a.f5566a).subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.g.i
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                t.this.a((Pair) obj);
            }
        }, h.f5573a);
    }

    public p<Integer> c() {
        return this.f5588c;
    }

    public p<Integer> d() {
        return this.f5587b;
    }

    public p<UpgradeInfoDTO> e() {
        return this.d;
    }

    public void f() {
        if (this.e.i()) {
            this.f5587b.postValue(1);
            UpgradeInfoDTO value = e().getValue();
            if (value == null) {
                a(0, "UpgradeInfoDTO is null");
                this.f5587b.postValue(4);
            } else if (!r.a(value.d())) {
                this.f5587b.postValue(4);
                a(0, "Firmware file not exists");
            } else {
                this.g = value.d();
                i();
            }
        } else {
            this.f5587b.postValue(4);
            a(0, "Device Disconnected");
        }
    }

    public /* synthetic */ void h(BluetoothDevice bluetoothDevice) {
        com.ifengyu.blelib.a.d(h, "start commend write success");
        a(this.g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.v
    public void onCleared() {
        super.onCleared();
    }

    public /* synthetic */ void c(BluetoothDevice bluetoothDevice, int i) {
        com.ifengyu.blelib.a.d(h, "end commend write failed");
        this.f5587b.postValue(4);
        a(99, "Write end commend failed, reason: " + c(i));
    }

    public /* synthetic */ void d(BluetoothDevice bluetoothDevice, int i) {
        String str = h;
        com.ifengyu.blelib.a.d(str, "firmware data write failed, status: " + i);
        this.f5587b.postValue(4);
        int e = this.f.e();
        a(e, "Write firmware data failed, reason: " + c(i));
    }

    public /* synthetic */ void e(BluetoothDevice bluetoothDevice, int i) {
        String str = h;
        com.ifengyu.blelib.a.d(str, "prepare commend write failed, status: " + i);
        this.f5587b.postValue(4);
        a(0, "Write prepare commend failed, reason: " + c(i));
    }

    public /* synthetic */ void g(BluetoothDevice bluetoothDevice) {
        com.ifengyu.blelib.a.d(h, "prepare commend write success");
        l();
    }

    private void h() {
        UpgradeInfoDTO value = e().getValue();
        if (value != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("userId", d0.N());
            hashMap.put("email", d0.L());
            hashMap.put("upgradeProgress", String.valueOf(100));
            hashMap.put("mobileManufacturer", Build.MANUFACTURER);
            hashMap.put("mobileBrand", Build.BRAND);
            hashMap.put("mobileModel", Build.MODEL);
            hashMap.put("mobileRelease", Build.VERSION.RELEASE);
            hashMap.put("toVersionCode", String.valueOf(value.f()));
            hashMap.put("toVersionName", value.g());
            hashMap.put("fromVersionCode", String.valueOf(value.b()));
            hashMap.put("fromVersionName", value.c());
            MobclickAgent.onEventObject(a(), "Lite_Firmware_Upgrade_Success", hashMap);
        }
    }

    public /* synthetic */ DeviceModel a(r rVar) throws Exception {
        return LiteDatabase.a(a()).n().b(d0.p());
    }

    private void d(int i) {
        byte[] bArr = new byte[8];
        bArr[0] = 2;
        bArr[1] = -1;
        bArr[2] = (byte) (i & 255);
        bArr[3] = (byte) ((i >> 8) & 255);
        int i2 = ~i;
        bArr[4] = (byte) (i2 & 255);
        bArr[5] = (byte) ((i2 >> 8) & 255);
        this.f.a(bArr, this.f.a(bArr));
        t2 e = this.e.e(bArr);
        e.a(new j() { // from class: com.ifengyu.intercom.lite.g.e
            @Override // no.nordicsemi.android.ble.u2.j
            public final void a(BluetoothDevice bluetoothDevice) {
                t.this.d(bluetoothDevice);
            }
        });
        e.a(new d() { // from class: com.ifengyu.intercom.lite.g.k
            @Override // no.nordicsemi.android.ble.u2.d
            public final void a(BluetoothDevice bluetoothDevice, int i3) {
                t.this.c(bluetoothDevice, i3);
            }
        });
        e.a();
    }

    public /* synthetic */ void e(BluetoothDevice bluetoothDevice) {
        com.ifengyu.blelib.a.d(h, "firmware data write finished");
        d(this.f.b());
    }

    public /* synthetic */ void a(Pair pair) throws Exception {
        UpgradeInfoDTO upgradeInfoDTO = new UpgradeInfoDTO();
        Object obj = pair.first;
        boolean z = false;
        if (obj == null || pair.second == null) {
            upgradeInfoDTO.a(false);
        } else {
            int versionSoft = ((DeviceModel) obj).getVersionSoft();
            int versionCode = ((FirmwareInfo) pair.second).getVersionCode();
            upgradeInfoDTO.a(((DeviceModel) pair.first).getVersionSoft());
            upgradeInfoDTO.b(l.a(((DeviceModel) pair.first).getVersionSoft()));
            upgradeInfoDTO.c(((FirmwareInfo) pair.second).getVersionCode());
            upgradeInfoDTO.d(((FirmwareInfo) pair.second).getVersionName());
            upgradeInfoDTO.a(((FirmwareInfo) pair.second).getInfo());
            upgradeInfoDTO.c(((FirmwareInfo) pair.second).getLocalPath());
            if (versionCode > versionSoft) {
                z = true;
            }
            upgradeInfoDTO.a(z);
            upgradeInfoDTO.b(((FirmwareInfo) pair.second).getMode());
        }
        e().postValue(upgradeInfoDTO);
    }

    public String b(int i) {
        if (i == 1) {
            return "STATE START";
        }
        if (i == 2) {
            return "STATE UPGRADING";
        }
        if (i == 3) {
            return "STATE SUCCESS";
        }
        if (i == 4) {
            return "STATE FAIL";
        }
        if (i == 5) {
            return "STATE LOW POWER";
        }
        return "UNKNOWN (" + i + ")";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UpgradeViewModel.java */
    /* loaded from: classes2.dex */
    public class a extends com.ifengyu.blelib.c.e {
        a() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(c cVar) {
            LiteProtos.RESULT result = ((LiteProtos.OtaResponse) cVar.b()).getResult();
            if (LiteProtos.RESULT.SUCCESS == result) {
                m.a(new Runnable() { // from class: com.ifengyu.intercom.lite.g.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        t.a.this.c();
                    }
                }, 2000L);
            } else if (LiteProtos.RESULT.LOW_POWER == result) {
                com.ifengyu.blelib.a.d(t.h, "ota response low power, forbidden upgrade");
                t.this.f5587b.postValue(5);
                t.this.a(0, "Ota request, device response LOW POWER");
            } else {
                com.ifengyu.blelib.a.d(t.h, "ota response failed");
                t.this.f5587b.postValue(4);
                t tVar = t.this;
                tVar.a(0, "Ota request, device response " + result.name());
            }
        }

        public /* synthetic */ void c() {
            t.this.k();
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = t.h;
            com.ifengyu.blelib.a.d(str, "ota request commend write failed, status: " + i);
            t.this.f5587b.postValue(4);
            t tVar = t.this;
            tVar.a(0, "Ota request failed, reason: " + t.this.c(i));
        }
    }

    public /* synthetic */ void d(BluetoothDevice bluetoothDevice) {
        com.ifengyu.blelib.a.d(h, "end commend write success");
        com.ifengyu.blelib.a.c(h, "Congratulations, the upgrade was successful!!!");
        this.f5587b.postValue(3);
        this.f5588c.postValue(100);
        j();
        h();
    }

    public /* synthetic */ void f(BluetoothDevice bluetoothDevice, int i) {
        String str = h;
        com.ifengyu.blelib.a.d(str, "start commend write failed, status: " + i);
        this.f5587b.postValue(4);
        a(0, "Write start commend failed, reason: " + c(i));
    }

    private void a(String str) {
        byte[] b2 = r.b(str);
        if (b2 == null || b2.length == 0) {
            com.ifengyu.blelib.a.b(h, "firmware data is null, please check file");
            this.f5587b.postValue(4);
            return;
        }
        com.ifengyu.intercom.lite.e.j.a aVar = new com.ifengyu.intercom.lite.e.j.a();
        this.f = aVar;
        aVar.b(b2);
        b bVar = new b(this.f);
        t2 e = this.e.e(b2);
        e.a(bVar, new k() { // from class: com.ifengyu.intercom.lite.g.j
            @Override // no.nordicsemi.android.ble.u2.k
            public final void a(BluetoothDevice bluetoothDevice, byte[] bArr, int i) {
                t.this.a(bluetoothDevice, bArr, i);
            }
        });
        e.a(new j() { // from class: com.ifengyu.intercom.lite.g.l
            @Override // no.nordicsemi.android.ble.u2.j
            public final void a(BluetoothDevice bluetoothDevice) {
                t.this.e(bluetoothDevice);
            }
        });
        e.a(new d() { // from class: com.ifengyu.intercom.lite.g.g
            @Override // no.nordicsemi.android.ble.u2.d
            public final void a(BluetoothDevice bluetoothDevice, int i) {
                t.this.d(bluetoothDevice, i);
            }
        });
        e.a();
    }

    public /* synthetic */ void a(BluetoothDevice bluetoothDevice, byte[] bArr, int i) {
        this.f5588c.postValue(Integer.valueOf(this.f.e()));
        this.f5587b.postValue(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str) {
        UpgradeInfoDTO value = e().getValue();
        if (value != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("userId", d0.N());
            hashMap.put("email", d0.L());
            hashMap.put("upgradeProgress", String.valueOf(i));
            hashMap.put("mobileManufacturer", Build.MANUFACTURER);
            hashMap.put("mobileBrand", Build.BRAND);
            hashMap.put("mobileModel", Build.MODEL);
            hashMap.put("mobileRelease", Build.VERSION.RELEASE);
            hashMap.put("toVersionCode", String.valueOf(value.f()));
            hashMap.put("toVersionName", value.g());
            hashMap.put("fromVersionCode", String.valueOf(value.b()));
            hashMap.put("fromVersionName", value.c());
            hashMap.put("failureReason", str);
            MobclickAgent.onEventObject(a(), "Lite_Firmware_Upgrade_Failure", hashMap);
        }
    }
}
