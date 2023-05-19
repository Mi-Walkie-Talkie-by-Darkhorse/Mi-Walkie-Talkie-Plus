package com.ifengyu.intercom.p185i;

import android.bluetooth.BluetoothDevice;
import android.text.TextUtils;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.device.common.event.ConnectEvent;
import com.ifengyu.intercom.httpold.download.C3855b;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.p186z0.BaseBleManager;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.event.SimpleEvent;
import com.ifengyu.library.utils.BluetoothUtils;
import java.util.HashMap;
import java.util.Map;
import no.nordicsemi.android.ble.BleManager;
import no.nordicsemi.android.ble.ConnectRequest;
import no.nordicsemi.android.ble.p307v2.FailCallback;
import org.greenrobot.eventbus.EventBus;

/* renamed from: com.ifengyu.intercom.i.t0 */
/* loaded from: classes2.dex */
public class BleCoreClient {

    /* renamed from: d */
    private static volatile BleCoreClient f13778d;

    /* renamed from: a */
    protected final String f13779a = "BleCore " + BleCoreClient.class.getSimpleName();

    /* renamed from: b */
    private final HashMap<String, BaseBleManager> f13780b = new HashMap<>();

    /* renamed from: c */
    private BaseBleManager f13781c;

    private BleCoreClient() {
    }

    /* renamed from: n */
    public static BleCoreClient m12373n() {
        if (f13778d == null) {
            synchronized (BleCoreClient.class) {
                if (f13778d == null) {
                    f13778d = new BleCoreClient();
                }
            }
        }
        return f13778d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m12370q(BluetoothDevice bluetoothDevice, int i) {
        String str = this.f13779a;
        C4161y.m11052c(str, "connect failed, status: " + i);
        if (i == -5) {
            RxBus.m11806d().m11805e(new ConnectEvent(6));
        } else {
            RxBus.m11806d().m11805e(new ConnectEvent(7));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static /* synthetic */ void m12369r(String str) {
        AppDatabase.m14275G(BaseApp.m8712b()).mo14270E().mo14241d(str);
        EventBus.m174c().m164m(new SimpleEvent(11));
    }

    /* renamed from: a */
    public void m12386a(String str, int i) {
        C4161y.m11054a(this.f13779a, "connectDevice");
        if (TextUtils.isEmpty(str)) {
            C4161y.m11052c(this.f13779a, "macAddress error");
            return;
        }
        BluetoothDevice m8696c = BluetoothUtils.m8696c(str);
        if (m8696c == null) {
            C4161y.m11052c(this.f13779a, "btDevice null");
            return;
        }
        BleManager bleManager = null;
        if (i == 1) {
            bleManager = m12378i(str);
        } else if (i == 9) {
            bleManager = m12377j(str);
        } else if (i == 14) {
            bleManager = m12376k(str);
        } else if (i == 4) {
            bleManager = m12374m(str);
        } else if (i == 5) {
            bleManager = m12375l(str);
        }
        if (bleManager != null) {
            ConnectRequest m340k = bleManager.m340k(m8696c);
            m340k.m494Q(3, 200);
            m340k.m491T(20000L);
            m340k.m490U(true);
            m340k.m499L(new FailCallback() { // from class: com.ifengyu.intercom.i.b
                @Override // no.nordicsemi.android.ble.p307v2.FailCallback
                /* renamed from: a */
                public final void mo363a(BluetoothDevice bluetoothDevice, int i2) {
                    BleCoreClient.this.m12370q(bluetoothDevice, i2);
                }
            });
            m340k.mo418f();
        }
    }

    /* renamed from: b */
    public void m12385b() {
        for (Map.Entry<String, BaseBleManager> entry : this.f13780b.entrySet()) {
            m12382e(entry.getKey());
        }
    }

    /* renamed from: c */
    public void m12384c(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        m12382e(str);
        C3855b.m12387a().execute(new Runnable() { // from class: com.ifengyu.intercom.i.a
            @Override // java.lang.Runnable
            public final void run() {
                BleCoreClient.m12369r(str);
            }
        });
    }

    /* renamed from: d */
    public void m12383d(String str) {
        DeviceModel mo14242c;
        if (TextUtils.isEmpty(str) || (mo14242c = AppDatabase.m14275G(BaseApp.m8712b()).mo14270E().mo14242c(str)) == null) {
            return;
        }
        m12384c(mo14242c.getAddress());
    }

    /* renamed from: e */
    public void m12382e(String str) {
        BaseBleManager baseBleManager = this.f13780b.get(str);
        if (baseBleManager != null) {
            if (baseBleManager.m334q() == 1) {
                baseBleManager.m12003Q();
            }
            baseBleManager.m339l().mo418f();
        }
    }

    /* renamed from: f */
    public BaseBleManager m12381f(String str) {
        return this.f13780b.get(str);
    }

    /* renamed from: g */
    public String m12380g() {
        BaseBleManager baseBleManager = this.f13781c;
        if (baseBleManager == null) {
            return null;
        }
        return baseBleManager.m335p().getAddress();
    }

    /* renamed from: h */
    public BaseBleManager m12379h() {
        return this.f13781c;
    }

    /* renamed from: i */
    public DolphinBleManager m12378i(String str) {
        BaseBleManager baseBleManager = this.f13780b.get(str);
        if (baseBleManager instanceof DolphinBleManager) {
            return (DolphinBleManager) baseBleManager;
        }
        DolphinBleManager dolphinBleManager = new DolphinBleManager(BaseApp.m8712b());
        this.f13780b.put(str, dolphinBleManager);
        return dolphinBleManager;
    }

    /* renamed from: j */
    public LiteBleManager m12377j(String str) {
        BaseBleManager baseBleManager = this.f13780b.get(str);
        if (baseBleManager instanceof LiteBleManager) {
            return (LiteBleManager) baseBleManager;
        }
        LiteBleManager liteBleManager = new LiteBleManager(BaseApp.m8712b());
        this.f13780b.put(str, liteBleManager);
        return liteBleManager;
    }

    /* renamed from: k */
    public Mi3BleManager m12376k(String str) {
        BaseBleManager baseBleManager = this.f13780b.get(str);
        if (baseBleManager instanceof Mi3BleManager) {
            return (Mi3BleManager) baseBleManager;
        }
        Mi3BleManager mi3BleManager = new Mi3BleManager(BaseApp.m8712b());
        this.f13780b.put(str, mi3BleManager);
        return mi3BleManager;
    }

    /* renamed from: l */
    public SealBleManager m12375l(String str) {
        BaseBleManager baseBleManager = this.f13780b.get(str);
        if (baseBleManager instanceof SealBleManager) {
            return (SealBleManager) baseBleManager;
        }
        SealBleManager sealBleManager = new SealBleManager(BaseApp.m8712b());
        this.f13780b.put(str, sealBleManager);
        return sealBleManager;
    }

    /* renamed from: m */
    public SharkBleManager m12374m(String str) {
        BaseBleManager baseBleManager = this.f13780b.get(str);
        if (baseBleManager instanceof SharkBleManager) {
            return (SharkBleManager) baseBleManager;
        }
        SharkBleManager sharkBleManager = new SharkBleManager(BaseApp.m8712b());
        this.f13780b.put(str, sharkBleManager);
        return sharkBleManager;
    }

    /* renamed from: o */
    public boolean m12372o(String str) {
        BaseBleManager baseBleManager = this.f13780b.get(str);
        return baseBleManager != null && baseBleManager.m329v();
    }

    /* renamed from: s */
    public void m12368s(BaseBleManager baseBleManager) {
        this.f13781c = baseBleManager;
    }
}
