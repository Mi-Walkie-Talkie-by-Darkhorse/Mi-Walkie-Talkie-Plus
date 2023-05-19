package com.ifengyu.intercom.device.lite.p160d;

import android.annotation.SuppressLint;
import android.app.Application;
import android.bluetooth.BluetoothDevice;
import android.os.Build;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.ifengyu.blelib.p151b.PacketListener;
import com.ifengyu.blelib.p152c.Commend;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.database.p155a.DeviceDao;
import com.ifengyu.intercom.device.lite.dto.UpgradeInfoDTO;
import com.ifengyu.intercom.device.lite.p156c.p159c.OtaPacketParser;
import com.ifengyu.intercom.device.lite.p156c.p159c.UpgradeSplitter;
import com.ifengyu.intercom.device.lite.p160d.LiteUpgradeViewModel;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.LiteBleManager;
import com.ifengyu.intercom.p189l.p190a.p197d.VersionUtil;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.library.utils.C4970j;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.UIUtils;
import com.tencent.connect.common.Constants;
import com.umeng.analytics.MobclickAgent;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.HashMap;
import no.nordicsemi.android.ble.WriteRequest;
import no.nordicsemi.android.ble.p307v2.FailCallback;
import no.nordicsemi.android.ble.p307v2.SuccessCallback;
import no.nordicsemi.android.ble.p307v2.WriteProgressCallback;

/* renamed from: com.ifengyu.intercom.device.lite.d.t */
/* loaded from: classes2.dex */
public class LiteUpgradeViewModel extends AndroidViewModel {

    /* renamed from: h */
    private static final String f12200h = "t";

    /* renamed from: b */
    public MutableLiveData<Integer> f12201b;

    /* renamed from: c */
    public MutableLiveData<Integer> f12202c;

    /* renamed from: d */
    private MutableLiveData<UpgradeInfoDTO> f12203d;

    /* renamed from: e */
    private LiteBleManager f12204e;

    /* renamed from: f */
    private OtaPacketParser f12205f;

    /* renamed from: g */
    private String f12206g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteUpgradeViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.d.t$a */
    /* loaded from: classes2.dex */
    public class C3203a extends PacketListener {
        C3203a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e */
        public /* synthetic */ void m14098f() {
            LiteUpgradeViewModel.this.m14125Q();
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = LiteUpgradeViewModel.f12200h;
            C4971k.m8647m(str, "ota request commend write failed, status: " + i);
            LiteUpgradeViewModel.this.f12201b.postValue(4);
            LiteUpgradeViewModel liteUpgradeViewModel = LiteUpgradeViewModel.this;
            liteUpgradeViewModel.m14133I(0, "Ota request failed, reason: " + LiteUpgradeViewModel.this.m14134H(i));
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.RESULT result = ((LiteProtos.OtaResponse) commend.m14356b()).getResult();
            if (LiteProtos.RESULT.SUCCESS == result) {
                UIUtils.m8599s(new Runnable() { // from class: com.ifengyu.intercom.device.lite.d.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        LiteUpgradeViewModel.C3203a.this.m14098f();
                    }
                }, 2000L);
            } else if (LiteProtos.RESULT.LOW_POWER == result) {
                C4971k.m8647m(LiteUpgradeViewModel.f12200h, "ota response low power, forbidden upgrade");
                LiteUpgradeViewModel.this.f12201b.postValue(5);
                LiteUpgradeViewModel.this.m14133I(0, "Ota request, device response LOW POWER");
            } else {
                C4971k.m8647m(LiteUpgradeViewModel.f12200h, "ota response failed");
                LiteUpgradeViewModel.this.f12201b.postValue(4);
                LiteUpgradeViewModel liteUpgradeViewModel = LiteUpgradeViewModel.this;
                liteUpgradeViewModel.m14133I(0, "Ota request, device response " + result.name());
            }
        }
    }

    public LiteUpgradeViewModel(@NonNull Application application) {
        super(application);
        this.f12201b = new MutableLiveData<>();
        this.f12202c = new MutableLiveData<>();
        this.f12203d = new MutableLiveData<>();
        this.f12204e = BleCoreClient.m12373n().m12377j(MiTalkClientUtil.m11195o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B */
    public /* synthetic */ void m14139C(BluetoothDevice bluetoothDevice, int i) {
        String str = f12200h;
        C4971k.m8647m(str, "prepare commend write failed, status: " + i);
        this.f12201b.postValue(4);
        m14133I(0, "Write prepare commend failed, reason: " + m14134H(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public /* synthetic */ void m14137E(BluetoothDevice bluetoothDevice) {
        C4971k.m8647m(f12200h, "start commend write success");
        m14126P(this.f12206g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F */
    public /* synthetic */ void m14135G(BluetoothDevice bluetoothDevice, int i) {
        String str = f12200h;
        C4971k.m8647m(str, "start commend write failed, status: " + i);
        this.f12201b.postValue(4);
        m14133I(0, "Write start commend failed, reason: " + m14134H(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public String m14134H(int i) {
        if (i != -100) {
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
                    return GrsBaseInfo.CountryCodeSource.UNKNOWN;
            }
        }
        return "BLUETOOTH DISABLED";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public void m14133I(int i, String str) {
        UpgradeInfoDTO value = m14116j().getValue();
        if (value != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("userId", MiTalkClientUtil.m11243P());
            hashMap.put("email", MiTalkClientUtil.m11247N());
            hashMap.put("upgradeProgress", String.valueOf(i));
            hashMap.put("mobileManufacturer", Build.MANUFACTURER);
            hashMap.put("mobileBrand", Build.BRAND);
            hashMap.put("mobileModel", Build.MODEL);
            hashMap.put("mobileRelease", Build.VERSION.RELEASE);
            hashMap.put("toVersionCode", String.valueOf(value.m14092f()));
            hashMap.put("toVersionName", value.m14091g());
            hashMap.put("fromVersionCode", String.valueOf(value.m14096b()));
            hashMap.put("fromVersionName", value.m14095c());
            hashMap.put("failureReason", str);
            MobclickAgent.onEventObject(m22755b(), "Lite_Firmware_Upgrade_Failure", hashMap);
        }
    }

    /* renamed from: J */
    private void m14132J() {
        UpgradeInfoDTO value = m14116j().getValue();
        if (value != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("userId", MiTalkClientUtil.m11243P());
            hashMap.put("email", MiTalkClientUtil.m11247N());
            hashMap.put("upgradeProgress", String.valueOf(100));
            hashMap.put("mobileManufacturer", Build.MANUFACTURER);
            hashMap.put("mobileBrand", Build.BRAND);
            hashMap.put("mobileModel", Build.MODEL);
            hashMap.put("mobileRelease", Build.VERSION.RELEASE);
            hashMap.put("toVersionCode", String.valueOf(value.m14092f()));
            hashMap.put("toVersionName", value.m14091g());
            hashMap.put("fromVersionCode", String.valueOf(value.m14096b()));
            hashMap.put("fromVersionName", value.m14095c());
            MobclickAgent.onEventObject(m22755b(), "Lite_Firmware_Upgrade_Success", hashMap);
        }
    }

    /* renamed from: K */
    private void m14131K() {
        this.f12204e.m12246n1(new C3203a());
    }

    /* renamed from: N */
    private void m14128N() {
        String m11195o = MiTalkClientUtil.m11195o();
        DeviceDao mo14270E = AppDatabase.m14275G(m22755b()).mo14270E();
        DeviceModel mo14239f = mo14270E.mo14239f(m11195o);
        mo14239f.setVersionSoft(LiteFirmwarePreferenceManager.m14150d(m22755b()).m14151c());
        mo14270E.mo14237h(mo14239f);
    }

    /* renamed from: O */
    private void m14127O(int i) {
        int i2 = ~i;
        byte[] bArr = {2, -1, (byte) (i & 255), (byte) ((i >> 8) & 255), (byte) (i2 & 255), (byte) ((i2 >> 8) & 255)};
        this.f12205f.m14163c(bArr, this.f12205f.m14164b(bArr));
        WriteRequest m12290D0 = this.f12204e.m12290D0(bArr);
        m12290D0.m384J(new SuccessCallback() { // from class: com.ifengyu.intercom.device.lite.d.n
            @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
            /* renamed from: a */
            public final void mo357a(BluetoothDevice bluetoothDevice) {
                LiteUpgradeViewModel.this.m14109q(bluetoothDevice);
            }
        });
        m12290D0.m383K(new FailCallback() { // from class: com.ifengyu.intercom.device.lite.d.f
            @Override // no.nordicsemi.android.ble.p307v2.FailCallback
            /* renamed from: a */
            public final void mo363a(BluetoothDevice bluetoothDevice, int i3) {
                LiteUpgradeViewModel.this.m14107s(bluetoothDevice, i3);
            }
        });
        m12290D0.mo418f();
    }

    /* renamed from: P */
    private void m14126P(String str) {
        byte[] m8661i = C4970j.m8661i(str);
        if (m8661i != null && m8661i.length != 0) {
            OtaPacketParser otaPacketParser = new OtaPacketParser();
            this.f12205f = otaPacketParser;
            otaPacketParser.m14154l(m8661i);
            UpgradeSplitter upgradeSplitter = new UpgradeSplitter(this.f12205f);
            WriteRequest m12290D0 = this.f12204e.m12290D0(m8661i);
            m12290D0.m371W(upgradeSplitter, new WriteProgressCallback() { // from class: com.ifengyu.intercom.device.lite.d.m
                @Override // no.nordicsemi.android.ble.p307v2.WriteProgressCallback
                /* renamed from: a */
                public final void mo356a(BluetoothDevice bluetoothDevice, byte[] bArr, int i) {
                    LiteUpgradeViewModel.this.m14105u(bluetoothDevice, bArr, i);
                }
            });
            m12290D0.m384J(new SuccessCallback() { // from class: com.ifengyu.intercom.device.lite.d.i
                @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
                /* renamed from: a */
                public final void mo357a(BluetoothDevice bluetoothDevice) {
                    LiteUpgradeViewModel.this.m14103w(bluetoothDevice);
                }
            });
            m12290D0.m383K(new FailCallback() { // from class: com.ifengyu.intercom.device.lite.d.l
                @Override // no.nordicsemi.android.ble.p307v2.FailCallback
                /* renamed from: a */
                public final void mo363a(BluetoothDevice bluetoothDevice, int i) {
                    LiteUpgradeViewModel.this.m14101y(bluetoothDevice, i);
                }
            });
            m12290D0.mo418f();
            return;
        }
        C4971k.m8657c(f12200h, "firmware data is null, please check file");
        this.f12201b.postValue(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Q */
    public void m14125Q() {
        WriteRequest m12290D0 = this.f12204e.m12290D0(new byte[]{0, -1});
        m12290D0.m384J(new SuccessCallback() { // from class: com.ifengyu.intercom.device.lite.d.j
            @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
            /* renamed from: a */
            public final void mo357a(BluetoothDevice bluetoothDevice) {
                LiteUpgradeViewModel.this.m14141A(bluetoothDevice);
            }
        });
        m12290D0.m383K(new FailCallback() { // from class: com.ifengyu.intercom.device.lite.d.d
            @Override // no.nordicsemi.android.ble.p307v2.FailCallback
            /* renamed from: a */
            public final void mo363a(BluetoothDevice bluetoothDevice, int i) {
                LiteUpgradeViewModel.this.m14139C(bluetoothDevice, i);
            }
        });
        m12290D0.mo418f();
    }

    /* renamed from: R */
    private void m14124R() {
        WriteRequest m12290D0 = this.f12204e.m12290D0(new byte[]{1, -1});
        m12290D0.m384J(new SuccessCallback() { // from class: com.ifengyu.intercom.device.lite.d.e
            @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
            /* renamed from: a */
            public final void mo357a(BluetoothDevice bluetoothDevice) {
                LiteUpgradeViewModel.this.m14137E(bluetoothDevice);
            }
        });
        m12290D0.m383K(new FailCallback() { // from class: com.ifengyu.intercom.device.lite.d.g
            @Override // no.nordicsemi.android.ble.p307v2.FailCallback
            /* renamed from: a */
            public final void mo363a(BluetoothDevice bluetoothDevice, int i) {
                LiteUpgradeViewModel.this.m14135G(bluetoothDevice, i);
            }
        });
        m12290D0.mo418f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ DeviceModel m14114l(LiteFirmwarePreferenceManager liteFirmwarePreferenceManager) throws Exception {
        return AppDatabase.m14275G(m22755b()).mo14270E().mo14239f(MiTalkClientUtil.m11195o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m14112n(Pair pair) throws Exception {
        UpgradeInfoDTO upgradeInfoDTO = new UpgradeInfoDTO();
        Object obj = pair.first;
        if (obj != null && pair.second != null) {
            int versionSoft = ((DeviceModel) obj).getVersionSoft();
            int versionCode = ((VersionInfo) pair.second).getVersionCode();
            upgradeInfoDTO.m14088j(((DeviceModel) pair.first).getVersionSoft());
            upgradeInfoDTO.m14087k(VersionUtil.m11802a(((DeviceModel) pair.first).getVersionSoft()));
            upgradeInfoDTO.m14083o(((VersionInfo) pair.second).getVersionCode());
            upgradeInfoDTO.m14082p(((VersionInfo) pair.second).getVersionName());
            upgradeInfoDTO.m14089i(((VersionInfo) pair.second).getInfo());
            upgradeInfoDTO.m14086l(((VersionInfo) pair.second).getLocalPath());
            upgradeInfoDTO.m14084n(versionCode > versionSoft);
            upgradeInfoDTO.m14085m(((VersionInfo) pair.second).getMode());
        } else {
            upgradeInfoDTO.m14084n(false);
        }
        m14116j().postValue(upgradeInfoDTO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m14109q(BluetoothDevice bluetoothDevice) {
        String str = f12200h;
        C4971k.m8647m(str, "end commend write success");
        C4971k.m8654f(str, "Congratulations, the upgrade was successful!!!");
        this.f12201b.postValue(3);
        this.f12202c.postValue(100);
        m14128N();
        m14132J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ void m14107s(BluetoothDevice bluetoothDevice, int i) {
        C4971k.m8647m(f12200h, "end commend write failed");
        this.f12201b.postValue(4);
        m14133I(99, "Write end commend failed, reason: " + m14134H(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public /* synthetic */ void m14105u(BluetoothDevice bluetoothDevice, byte[] bArr, int i) {
        this.f12202c.postValue(Integer.valueOf(this.f12205f.m14157i()));
        this.f12201b.postValue(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ void m14103w(BluetoothDevice bluetoothDevice) {
        C4971k.m8647m(f12200h, "firmware data write finished");
        m14127O(this.f12205f.m14161e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public /* synthetic */ void m14101y(BluetoothDevice bluetoothDevice, int i) {
        String str = f12200h;
        C4971k.m8647m(str, "firmware data write failed, status: " + i);
        this.f12201b.postValue(4);
        int m14157i = this.f12205f.m14157i();
        m14133I(m14157i, "Write firmware data failed, reason: " + m14134H(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public /* synthetic */ void m14141A(BluetoothDevice bluetoothDevice) {
        C4971k.m8647m(f12200h, "prepare commend write success");
        m14124R();
    }

    /* renamed from: L */
    public void m14130L() {
        if (!this.f12204e.m329v()) {
            this.f12201b.postValue(4);
            m14133I(0, "Device Disconnected");
            return;
        }
        this.f12201b.postValue(1);
        UpgradeInfoDTO value = m14116j().getValue();
        if (value == null) {
            m14133I(0, "UpgradeInfoDTO is null");
            this.f12201b.postValue(4);
        } else if (!C4970j.m8664f(value.m14094d())) {
            this.f12201b.postValue(4);
            m14133I(0, "Firmware file not exists");
        } else {
            this.f12206g = value.m14094d();
            m14131K();
        }
    }

    /* renamed from: M */
    public String m14129M(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return "UNKNOWN (" + i + ")";
                        }
                        return "STATE LOW POWER";
                    }
                    return "STATE FAIL";
                }
                return "STATE SUCCESS";
            }
            return "STATE UPGRADING";
        }
        return "STATE START";
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: g */
    public void m14119g() {
        LiteFirmwarePreferenceManager m14150d = LiteFirmwarePreferenceManager.m14150d(m22755b());
        Observable.zip(Observable.just(m14150d).map(new Function() { // from class: com.ifengyu.intercom.device.lite.d.k
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return LiteUpgradeViewModel.this.m14114l((LiteFirmwarePreferenceManager) obj);
            }
        }), Observable.just(m14150d).map(C3201q.f12195a), C3199o.f12193a).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.lite.d.c
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LiteUpgradeViewModel.this.m14112n((Pair) obj);
            }
        }, C3192h.f12186a);
    }

    /* renamed from: h */
    public MutableLiveData<Integer> m14118h() {
        return this.f12202c;
    }

    /* renamed from: i */
    public MutableLiveData<Integer> m14117i() {
        return this.f12201b;
    }

    /* renamed from: j */
    public MutableLiveData<UpgradeInfoDTO> m14116j() {
        return this.f12203d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
    }
}
