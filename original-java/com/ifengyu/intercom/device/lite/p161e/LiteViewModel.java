package com.ifengyu.intercom.device.lite.p161e;

import android.annotation.SuppressLint;
import android.app.Application;
import android.bluetooth.BluetoothDevice;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import com.ifengyu.blelib.p151b.DeviceDataCallback;
import com.ifengyu.blelib.p151b.PacketListener;
import com.ifengyu.blelib.p152c.Commend;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.database.p155a.DeviceDao;
import com.ifengyu.intercom.device.lite.models.LiteDeviceParamLiveData;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.LiteBleManager;
import com.ifengyu.intercom.p189l.p190a.p191a.CustomChannelCache;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.UIUtils;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.ifengyu.intercom.device.lite.e.l */
/* loaded from: classes2.dex */
public class LiteViewModel extends AndroidViewModel implements DeviceDataCallback {

    /* renamed from: k */
    private static final String f12233k = "l";

    /* renamed from: b */
    private MutableLiveData<ChannelModel> f12234b;

    /* renamed from: c */
    private MutableLiveData<List<ChannelModel>> f12235c;

    /* renamed from: d */
    private MutableLiveData<ChannelModel> f12236d;

    /* renamed from: e */
    private LiteDeviceParamLiveData f12237e;

    /* renamed from: f */
    private MutableLiveData<String> f12238f;

    /* renamed from: g */
    private MutableLiveData<DeviceModel> f12239g;

    /* renamed from: h */
    private MutableLiveData<String> f12240h;

    /* renamed from: i */
    private final LiteBleManager f12241i;

    /* renamed from: j */
    private final List<ChannelModel> f12242j;

    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$a */
    /* loaded from: classes2.dex */
    class C3217a extends PacketListener {
        C3217a() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = LiteViewModel.f12233k;
            C4971k.m8647m(str, "update device sq failed, status: " + i);
            if (i == -5) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.operate_timeout));
            } else {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) commend.m14356b();
            if (devResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
                return;
            }
            LiteViewModel.this.f12237e.setFrom(devResponse.getDevInfo());
        }
    }

    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$b */
    /* loaded from: classes2.dex */
    class C3218b extends PacketListener {
        C3218b() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = LiteViewModel.f12233k;
            C4971k.m8647m(str, "update device vox failed, status: " + i);
            if (i == -5) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.operate_timeout));
            } else {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) commend.m14356b();
            if (devResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
                return;
            }
            LiteViewModel.this.f12237e.setFrom(devResponse.getDevInfo());
        }
    }

    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$c */
    /* loaded from: classes2.dex */
    class C3219c extends PacketListener {
        C3219c() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = LiteViewModel.f12233k;
            C4971k.m8647m(str, "update device band failed, status: " + i);
            if (i == -5) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.operate_timeout));
            } else {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) commend.m14356b();
            if (devResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
                return;
            }
            LiteViewModel.this.f12237e.setFrom(devResponse.getDevInfo());
        }
    }

    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$d */
    /* loaded from: classes2.dex */
    class C3220d extends PacketListener {
        C3220d() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = LiteViewModel.f12233k;
            C4971k.m8647m(str, "update device polite failed, status: " + i);
            if (i == -5) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.operate_timeout));
            } else {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) commend.m14356b();
            if (devResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
                return;
            }
            LiteViewModel.this.f12237e.setFrom(devResponse.getDevInfo());
        }
    }

    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$e */
    /* loaded from: classes2.dex */
    class C3221e extends PacketListener {
        C3221e() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = LiteViewModel.f12233k;
            C4971k.m8647m(str, "query current channel failed, status: " + i);
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.ChannelInfoResponse channelInfoResponse = (LiteProtos.ChannelInfoResponse) commend.m14356b();
            if (channelInfoResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                LiteViewModel.this.f12234b.postValue(BleChannelUtils.m11817d(channelInfoResponse.getChannelInfo()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$f */
    /* loaded from: classes2.dex */
    public class C3222f extends PacketListener {

        /* renamed from: c */
        final /* synthetic */ int f12248c;

        C3222f(int i) {
            this.f12248c = i;
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = LiteViewModel.f12233k;
            C4971k.m8647m(str, "query channel failed, status: " + i);
            LiteViewModel.this.f12235c.postValue(null);
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.ChannelInfoResponse channelInfoResponse = (LiteProtos.ChannelInfoResponse) commend.m14356b();
            if (channelInfoResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                LiteViewModel.this.f12235c.postValue(null);
                return;
            }
            ChannelModel m11817d = BleChannelUtils.m11817d(channelInfoResponse.getChannelInfo());
            LiteViewModel.this.f12242j.add(m11817d);
            CustomChannelCache.m11950e(Integer.valueOf(m11817d.getChannelSeq()), m11817d);
            if (LiteViewModel.this.f12242j.size() == 16) {
                LiteViewModel.this.f12235c.postValue(LiteViewModel.this.f12242j);
            } else {
                LiteViewModel.this.m14063H(this.f12248c + 1);
            }
        }
    }

    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$g */
    /* loaded from: classes2.dex */
    class C3223g extends PacketListener {
        C3223g() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = LiteViewModel.f12233k;
            C4971k.m8647m(str, "update channel failed, status: " + i);
            if (i == -5) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.operate_timeout));
            } else {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.ChannelInfoResponse channelInfoResponse = (LiteProtos.ChannelInfoResponse) commend.m14356b();
            if (channelInfoResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
            } else if (!channelInfoResponse.hasChannelInfo()) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
            } else {
                ChannelModel m11817d = BleChannelUtils.m11817d(channelInfoResponse.getChannelInfo());
                LiteViewModel.this.f12236d.postValue(m11817d);
                CustomChannelCache.m11950e(Integer.valueOf(m11817d.getChannelSeq()), m11817d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$h */
    /* loaded from: classes2.dex */
    public class C3224h extends PacketListener {

        /* renamed from: c */
        final /* synthetic */ LinkedList f12251c;

        C3224h(LinkedList linkedList) {
            this.f12251c = linkedList;
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            LiteViewModel.this.f12240h.postValue(UIUtils.m8603o(R.string.import_config_file_failed));
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.ChannelInfoResponse channelInfoResponse = (LiteProtos.ChannelInfoResponse) commend.m14356b();
            if (channelInfoResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                LiteViewModel.this.f12240h.postValue(UIUtils.m8603o(R.string.import_config_file_failed));
                return;
            }
            ChannelModel m11817d = BleChannelUtils.m11817d(channelInfoResponse.getChannelInfo());
            LiteViewModel.this.f12236d.postValue(m11817d);
            CustomChannelCache.m11950e(Integer.valueOf(m11817d.getChannelSeq()), m11817d);
            LiteViewModel.this.m14032s(this.f12251c);
        }
    }

    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$i */
    /* loaded from: classes2.dex */
    class C3225i extends PacketListener {
        C3225i() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            C4971k.m8647m(LiteViewModel.f12233k, "query device param failed");
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            String str = LiteViewModel.f12233k;
            C4971k.m8659a(str, "onSuccess: " + commend.toString());
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) commend.m14356b();
            if (devResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                C4971k.m8647m(LiteViewModel.f12233k, "query device param failed");
                return;
            }
            LiteViewModel.this.f12237e.setFrom(devResponse.getDevInfo());
        }
    }

    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$j */
    /* loaded from: classes2.dex */
    class C3226j extends PacketListener {
        C3226j() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = LiteViewModel.f12233k;
            C4971k.m8647m(str, "update device sq failed, status: " + i);
            if (i == -5) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.operate_timeout));
            } else {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) commend.m14356b();
            if (devResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
                return;
            }
            LiteViewModel.this.f12237e.setFrom(devResponse.getDevInfo());
        }
    }

    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$k */
    /* loaded from: classes2.dex */
    class C3227k extends PacketListener {
        C3227k() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = LiteViewModel.f12233k;
            C4971k.m8647m(str, "update device sq failed, status: " + i);
            if (i == -5) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.operate_timeout));
            } else {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) commend.m14356b();
            if (devResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
                return;
            }
            LiteProtos.DevInfo devInfo = devResponse.getDevInfo();
            LiteViewModel.this.f12237e.setFrom(devInfo);
            MiTalkClientUtil.m11204j0(devInfo.getName().toStringUtf8());
            LiteViewModel.this.m14055P(devInfo.getName().toStringUtf8());
        }
    }

    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$l */
    /* loaded from: classes2.dex */
    class C3228l extends PacketListener {
        C3228l() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = LiteViewModel.f12233k;
            C4971k.m8647m(str, "update device sq failed, status: " + i);
            if (i == -5) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.operate_timeout));
            } else {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) commend.m14356b();
            if (devResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
                return;
            }
            LiteViewModel.this.f12237e.setFrom(devResponse.getDevInfo());
        }
    }

    /* compiled from: LiteViewModel.java */
    /* renamed from: com.ifengyu.intercom.device.lite.e.l$m */
    /* loaded from: classes2.dex */
    class C3229m extends PacketListener {
        C3229m() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = LiteViewModel.f12233k;
            C4971k.m8647m(str, "update device sq failed, status: " + i);
            if (i == -5) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.operate_timeout));
            } else {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) commend.m14356b();
            if (devResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                LiteViewModel.this.f12238f.postValue(UIUtils.m8603o(R.string.lite_setup_failed));
                return;
            }
            LiteViewModel.this.f12237e.setFrom(devResponse.getDevInfo());
        }
    }

    public LiteViewModel(@NonNull Application application) {
        super(application);
        this.f12234b = new MutableLiveData<>();
        this.f12235c = new MutableLiveData<>();
        this.f12236d = new MutableLiveData<>();
        this.f12237e = new LiteDeviceParamLiveData();
        this.f12238f = new MutableLiveData<>();
        this.f12239g = new MutableLiveData<>();
        this.f12240h = new MutableLiveData<>();
        this.f12242j = new ArrayList();
        LiteBleManager m12377j = BleCoreClient.m12373n().m12377j(MiTalkClientUtil.m11195o());
        this.f12241i = m12377j;
        m12377j.m12256g1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public /* synthetic */ void m14069B(DeviceModel deviceModel) throws Exception {
        if (deviceModel != null) {
            this.f12239g.postValue(deviceModel);
        }
    }

    /* renamed from: D */
    private /* synthetic */ String m14067D(BluetoothDevice bluetoothDevice, String str) throws Exception {
        DeviceDao mo14270E = AppDatabase.m14275G(m22755b()).mo14270E();
        DeviceModel mo14239f = mo14270E.mo14239f(bluetoothDevice.getAddress());
        if (mo14239f != null) {
            mo14239f.setName(str);
            mo14270E.mo14237h(mo14239f);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public static /* synthetic */ void m14065F(String str) throws Exception {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public static /* synthetic */ LinkedList m14030u(List list) throws Exception {
        LinkedList linkedList = new LinkedList();
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ChannelModel channelModel = (ChannelModel) it2.next();
            if (channelModel.getIsCustomCh()) {
                concurrentHashMap.put(Integer.valueOf(channelModel.getChannelSeq()), channelModel);
            }
        }
        for (int i = 1; i <= 16; i++) {
            ChannelModel channelModel2 = (ChannelModel) concurrentHashMap.get(Integer.valueOf(i));
            if (channelModel2 == null) {
                channelModel2 = new ChannelModel();
                channelModel2.setChannelSeq(i);
                channelModel2.setChannelType(2);
            }
            linkedList.add(channelModel2);
        }
        return linkedList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ void m14028w(Throwable th) throws Exception {
        this.f12240h.postValue(UIUtils.m8603o(R.string.import_config_file_failed));
        C4971k.m8656d(f12233k, "import config file failed", th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public static /* synthetic */ int m14027x(ChannelModel channelModel, ChannelModel channelModel2) {
        return channelModel.getChannelSeq() - channelModel2.getChannelSeq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public /* synthetic */ DeviceModel m14025z(BluetoothDevice bluetoothDevice) throws Exception {
        return AppDatabase.m14275G(m22755b()).mo14270E().mo14239f(bluetoothDevice.getAddress());
    }

    /* renamed from: E */
    public /* synthetic */ String m14066E(BluetoothDevice bluetoothDevice, String str) {
        m14067D(bluetoothDevice, str);
        return str;
    }

    /* renamed from: H */
    public void m14063H(int i) {
        if (i == 1) {
            this.f12242j.clear();
        }
        if (CustomChannelCache.m11947h() == 16) {
            ArrayList<ChannelModel> m11952c = CustomChannelCache.m11952c();
            Collections.sort(m11952c, C3205a.f12216a);
            this.f12242j.addAll(m11952c);
            this.f12235c.postValue(this.f12242j);
            return;
        }
        this.f12241i.m12259d1(i, new C3222f(i));
    }

    /* renamed from: I */
    public void m14062I() {
        this.f12241i.m12258e1(new C3221e());
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: J */
    public void m14061J() {
        BluetoothDevice m335p = this.f12241i.m335p();
        if (m335p != null) {
            Observable.just(m335p).map(new Function() { // from class: com.ifengyu.intercom.device.lite.e.h
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return LiteViewModel.this.m14025z((BluetoothDevice) obj);
                }
            }).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.lite.e.e
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    LiteViewModel.this.m14069B((DeviceModel) obj);
                }
            }, C3207c.f12218a);
        }
    }

    /* renamed from: K */
    public void m14060K() {
        this.f12241i.m12257f1(new C3225i());
    }

    /* renamed from: L */
    public void m14059L(boolean z) {
        this.f12241i.m12295A1(z, new C3228l());
    }

    /* renamed from: M */
    public void m14058M(ChannelModel channelModel) {
        LiteProtos.ChannelInfo m11812i = BleChannelUtils.m11812i(channelModel);
        this.f12241i.m12226x1(m11812i.getSeq(), m11812i.getRxFreq(), m11812i.getRxCss(), m11812i.getTxFreq(), m11812i.getTxCss(), new C3223g());
    }

    /* renamed from: N */
    public void m14057N(int i) {
        this.f12241i.m12222z1(i, new C3219c());
    }

    /* renamed from: O */
    public void m14056O(String str) {
        this.f12241i.m12289D1(str, new C3227k());
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: P */
    public void m14055P(String str) {
        final BluetoothDevice m335p = this.f12241i.m335p();
        if (m335p != null) {
            Observable.just(str).map(new Function() { // from class: com.ifengyu.intercom.device.lite.e.f
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    String str2 = (String) obj;
                    LiteViewModel.this.m14066E(m335p, str2);
                    return str2;
                }
            }).subscribeOn(Schedulers.m800io()).subscribe(C3206b.f12217a, C3211g.f12223a);
        }
    }

    /* renamed from: Q */
    public void m14054Q(boolean z) {
        this.f12241i.m12287E1(z, new C3220d());
    }

    /* renamed from: R */
    public void m14053R(int i) {
        BluetoothDevice m335p = this.f12241i.m335p();
        if (m335p != null) {
            UserPrivacyReportUtil.m11135x(i, m335p.getAddress());
        }
    }

    /* renamed from: S */
    public void m14052S(int i) {
        this.f12241i.m12285F1(i, new C3226j());
    }

    /* renamed from: T */
    public void m14051T(boolean z) {
        this.f12241i.m12283G1(z, new C3218b());
    }

    /* renamed from: U */
    public void m14050U(boolean z) {
        this.f12241i.m12293B1(z, new C3229m());
    }

    /* renamed from: V */
    public void m14049V(LiteProtos.LANGUAGE_TYPE language_type) {
        this.f12241i.m12291C1(language_type, new C3217a());
    }

    @Override // com.ifengyu.blelib.p151b.DeviceDataCallback
    /* renamed from: a */
    public void mo11499a(@NonNull BluetoothDevice bluetoothDevice, @NonNull Commend commend) {
        if (commend.m14357a() == 20011) {
            this.f12234b.postValue(BleChannelUtils.m11817d(((LiteProtos.ChannelInfoResponse) commend.m14356b()).getChannelInfo()));
        }
    }

    /* renamed from: k */
    public MutableLiveData<String> m14040k() {
        return this.f12240h;
    }

    /* renamed from: l */
    public LiteBleManager m14039l() {
        return this.f12241i;
    }

    /* renamed from: m */
    public MutableLiveData<ChannelModel> m14038m() {
        return this.f12236d;
    }

    /* renamed from: n */
    public MutableLiveData<List<ChannelModel>> m14037n() {
        return this.f12235c;
    }

    /* renamed from: o */
    public MutableLiveData<ChannelModel> m14036o() {
        return this.f12234b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        C4971k.m8659a(f12233k, "onCleared");
        this.f12241i.m12228w1(this);
    }

    /* renamed from: p */
    public MutableLiveData<DeviceModel> m14035p() {
        return this.f12239g;
    }

    /* renamed from: q */
    public LiteDeviceParamLiveData m14034q() {
        return this.f12237e;
    }

    /* renamed from: r */
    public MutableLiveData<String> m14033r() {
        return this.f12238f;
    }

    /* renamed from: s */
    public void m14032s(LinkedList<ChannelModel> linkedList) {
        if (linkedList.isEmpty()) {
            this.f12240h.postValue(null);
        } else {
            this.f12241i.m12224y1(BleChannelUtils.m11812i(linkedList.remove()), new C3224h(linkedList));
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: t */
    public void m14031t(List<ChannelModel> list) {
        Observable.just(list).map(C3213i.f12225a).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.lite.e.j
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LiteViewModel.this.m14032s((LinkedList) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.device.lite.e.d
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LiteViewModel.this.m14028w((Throwable) obj);
            }
        });
    }
}
