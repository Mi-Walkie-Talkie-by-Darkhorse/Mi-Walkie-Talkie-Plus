package com.ifengyu.intercom.device.lite.p161e;

import android.app.Application;
import android.bluetooth.BluetoothDevice;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import com.ifengyu.blelib.p151b.DeviceDataCallback;
import com.ifengyu.blelib.p151b.PacketListener;
import com.ifengyu.blelib.p152c.Commend;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.LiteBleManager;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.device.lite.e.k */
/* loaded from: classes2.dex */
public class BatchConfigViewModel extends AndroidViewModel implements DeviceDataCallback {

    /* renamed from: b */
    private final LiteBleManager f12227b;

    /* renamed from: c */
    private MutableLiveData<Boolean> f12228c;

    /* renamed from: d */
    private MutableLiveData<String> f12229d;

    /* renamed from: e */
    private MutableLiveData<String> f12230e;

    /* compiled from: BatchConfigViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.k$a */
    /* loaded from: classes2.dex */
    class C3215a extends PacketListener {
        C3215a() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            BatchConfigViewModel.this.f12229d.postValue(UIUtils.m8603o(R.string.set_failed));
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (((LiteProtos.BatchBrodCfgResponse) commend.m14356b()).getResult() == LiteProtos.RESULT.SUCCESS) {
                BatchConfigViewModel.this.f12227b.m12244o1(true);
                BatchConfigViewModel.this.f12229d.postValue(null);
                return;
            }
            BatchConfigViewModel.this.f12229d.postValue(UIUtils.m8603o(R.string.set_failed));
        }
    }

    /* compiled from: BatchConfigViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.k$b */
    /* loaded from: classes2.dex */
    class C3216b extends PacketListener {
        C3216b() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            BatchConfigViewModel.this.f12230e.postValue(UIUtils.m8603o(R.string.set_failed));
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (((LiteProtos.BatchBrodCfgResponse) commend.m14356b()).getResult() == LiteProtos.RESULT.SUCCESS) {
                BatchConfigViewModel.this.f12227b.m12244o1(false);
                BatchConfigViewModel.this.f12230e.postValue(null);
                return;
            }
            BatchConfigViewModel.this.f12230e.postValue(UIUtils.m8603o(R.string.set_failed));
        }
    }

    public BatchConfigViewModel(@NonNull Application application) {
        super(application);
        this.f12228c = new MutableLiveData<>();
        this.f12229d = new MutableLiveData<>();
        this.f12230e = new MutableLiveData<>();
        LiteBleManager m12377j = BleCoreClient.m12373n().m12377j(MiTalkClientUtil.m11195o());
        this.f12227b = m12377j;
        m12377j.m12256g1(this);
    }

    @Override // com.ifengyu.blelib.p151b.DeviceDataCallback
    /* renamed from: a */
    public void mo11499a(@NonNull BluetoothDevice bluetoothDevice, @NonNull Commend commend) {
        if (commend.m14357a() == 20022) {
            if (((LiteProtos.BatchBrodFskResponse) commend.m14356b()).getResult() == LiteProtos.SWITCH.ON) {
                m14075g().postValue(Boolean.TRUE);
            } else {
                m14075g().postValue(Boolean.FALSE);
            }
        }
    }

    /* renamed from: f */
    public LiteBleManager m14076f() {
        return this.f12227b;
    }

    /* renamed from: g */
    public MutableLiveData<Boolean> m14075g() {
        return this.f12228c;
    }

    /* renamed from: h */
    public MutableLiveData<String> m14074h() {
        return this.f12229d;
    }

    /* renamed from: i */
    public MutableLiveData<String> m14073i() {
        return this.f12230e;
    }

    /* renamed from: j */
    public void m14072j() {
        this.f12227b.m12254i1(new C3215a());
    }

    /* renamed from: k */
    public void m14071k() {
        this.f12227b.m12253j1(new C3216b());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        this.f12227b.m12228w1(this);
    }
}
