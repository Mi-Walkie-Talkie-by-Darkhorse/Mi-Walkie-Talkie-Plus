package com.ifengyu.intercom.p189l.p198b.p204e;

import android.annotation.SuppressLint;
import android.app.Application;
import android.bluetooth.BluetoothDevice;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import com.ifengyu.blelib.p151b.PacketListener;
import com.ifengyu.blelib.p152c.Commend;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.database.p155a.DeviceDao;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p181h.p182b.p183a.Mi3OtaPacketParser;
import com.ifengyu.intercom.p181h.p182b.p183a.p184d.Mi3UpgradeSplitter;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.Mi3BleManager;
import com.ifengyu.intercom.p189l.p190a.p197d.VersionUtil;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.MD5Util;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.utils.C4970j;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.C4975r;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.DownloadListener2;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.Objects;
import no.nordicsemi.android.ble.WriteRequest;
import no.nordicsemi.android.ble.p307v2.BeforeCallback;
import no.nordicsemi.android.ble.p307v2.FailCallback;
import no.nordicsemi.android.ble.p307v2.SuccessCallback;
import no.nordicsemi.android.ble.p307v2.WriteProgressCallback;

/* renamed from: com.ifengyu.intercom.l.b.e.t */
/* loaded from: classes2.dex */
public class Mi3UpgradeViewModel extends AndroidViewModel {

    /* renamed from: h */
    private static final String f14284h = "t";

    /* renamed from: b */
    private final MutableLiveData<VersionInfo> f14285b;

    /* renamed from: c */
    public MutableLiveData<Integer> f14286c;

    /* renamed from: d */
    public MutableLiveData<Integer> f14287d;

    /* renamed from: e */
    private String f14288e;

    /* renamed from: f */
    private Mi3BleManager f14289f;

    /* renamed from: g */
    private int f14290g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3UpgradeViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.t$a */
    /* loaded from: classes2.dex */
    public class C4088a extends DownloadListener2 {
        C4088a() {
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
            String str = Mi3UpgradeViewModel.f14284h;
            C4971k.m8659a(str, "taskEnd->task: " + downloadTask + ", cause: " + endCause);
            if (endCause != EndCause.COMPLETED || downloadTask.getFile() == null) {
                String str2 = Mi3UpgradeViewModel.f14284h;
                StringBuilder sb = new StringBuilder();
                sb.append("taskEnd->realCause: ");
                sb.append(exc != null ? exc.toString() : "");
                C4971k.m8657c(str2, sb.toString());
                Mi3UpgradeViewModel.this.f14286c.postValue(4);
                return;
            }
            String absolutePath = downloadTask.getFile().getAbsolutePath();
            String m11041a = MD5Util.m11041a(absolutePath);
            if (!C4975r.m8620b(m11041a) && Mi3UpgradeViewModel.this.f14285b.getValue() != 0 && m11041a.equals(((VersionInfo) Mi3UpgradeViewModel.this.f14285b.getValue()).getMd5())) {
                ((VersionInfo) Mi3UpgradeViewModel.this.f14285b.getValue()).setLocalPath(absolutePath);
                Mi3UpgradeViewModel.this.f14286c.postValue(3);
                Mi3UpgradeViewModel.this.m11553B();
                return;
            }
            Mi3UpgradeViewModel.this.f14286c.postValue(4);
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskStart(@NonNull DownloadTask downloadTask) {
            String str = Mi3UpgradeViewModel.f14284h;
            C4971k.m8659a(str, "taskStart->task: " + downloadTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3UpgradeViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.t$b */
    /* loaded from: classes2.dex */
    public class C4089b extends PacketListener {

        /* renamed from: c */
        final /* synthetic */ byte[] f14292c;

        C4089b(byte[] bArr) {
            this.f14292c = bArr;
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            C4971k.m8657c(Mi3UpgradeViewModel.f14284h, "ota request failed");
            Mi3UpgradeViewModel.this.f14286c.postValue(7);
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                Mi3UpgradeViewModel.this.m11554A(this.f14292c);
            } else if (commend.m14354d() == 3) {
                C4971k.m8647m(Mi3UpgradeViewModel.f14284h, "ota response low power");
                Mi3UpgradeViewModel.this.f14286c.postValue(8);
            } else if (commend.m14354d() == 4) {
                C4971k.m8647m(Mi3UpgradeViewModel.f14284h, "ota response failed");
                Mi3UpgradeViewModel.this.f14286c.postValue(7);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3UpgradeViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.t$c */
    /* loaded from: classes2.dex */
    public class C4090c extends PacketListener {
        C4090c() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            Mi3UpgradeViewModel.this.f14286c.postValue(7);
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                Mi3UpgradeViewModel.this.f14287d.postValue(100);
                Mi3UpgradeViewModel.this.f14286c.postValue(6);
                Mi3UpgradeViewModel.this.m11550E();
                return;
            }
            Mi3UpgradeViewModel.this.f14286c.postValue(7);
        }
    }

    public Mi3UpgradeViewModel(@NonNull Application application) {
        super(application);
        this.f14285b = new MutableLiveData<>();
        this.f14286c = new MutableLiveData<>();
        this.f14287d = new MutableLiveData<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public void m11554A(byte[] bArr) {
        final Mi3OtaPacketParser mi3OtaPacketParser = new Mi3OtaPacketParser();
        mi3OtaPacketParser.m12415j(bArr);
        Mi3UpgradeSplitter mi3UpgradeSplitter = new Mi3UpgradeSplitter(mi3OtaPacketParser);
        WriteRequest m12186c1 = this.f14289f.m12186c1(bArr);
        m12186c1.m385I(new BeforeCallback() { // from class: com.ifengyu.intercom.l.b.e.c
            @Override // no.nordicsemi.android.ble.p307v2.BeforeCallback
            /* renamed from: a */
            public final void mo366a(BluetoothDevice bluetoothDevice) {
                Mi3UpgradeViewModel.this.m11537o(bluetoothDevice);
            }
        });
        m12186c1.m371W(mi3UpgradeSplitter, new WriteProgressCallback() { // from class: com.ifengyu.intercom.l.b.e.h
            @Override // no.nordicsemi.android.ble.p307v2.WriteProgressCallback
            /* renamed from: a */
            public final void mo356a(BluetoothDevice bluetoothDevice, byte[] bArr2, int i) {
                Mi3UpgradeViewModel.this.m11535q(mi3OtaPacketParser, bluetoothDevice, bArr2, i);
            }
        });
        m12186c1.m384J(new SuccessCallback() { // from class: com.ifengyu.intercom.l.b.e.i
            @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
            /* renamed from: a */
            public final void mo357a(BluetoothDevice bluetoothDevice) {
                Mi3UpgradeViewModel.this.m11533s(bluetoothDevice);
            }
        });
        m12186c1.m383K(new FailCallback() { // from class: com.ifengyu.intercom.l.b.e.f
            @Override // no.nordicsemi.android.ble.p307v2.FailCallback
            /* renamed from: a */
            public final void mo363a(BluetoothDevice bluetoothDevice, int i) {
                Mi3UpgradeViewModel.this.m11531u(bluetoothDevice, i);
            }
        });
        m12186c1.mo418f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B */
    public void m11553B() {
        VersionInfo value = this.f14285b.getValue();
        if (value == null || C4975r.m8620b(value.getLocalPath())) {
            this.f14286c.postValue(7);
            return;
        }
        byte[] m8661i = C4970j.m8661i(value.getLocalPath());
        if (m8661i != null && m8661i.length != 0) {
            this.f14289f.m12162s1(m8661i.length, new C4089b(m8661i));
            return;
        }
        C4971k.m8657c(f14284h, "firmware data is null, please check file");
        this.f14286c.postValue(7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    /* renamed from: E */
    public void m11550E() {
        if (this.f14285b.getValue() == null) {
            return;
        }
        final int versionCode = this.f14285b.getValue().getVersionCode();
        Observable.just(Integer.valueOf(versionCode)).map(new Function() { // from class: com.ifengyu.intercom.l.b.e.g
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Mi3UpgradeViewModel.this.m11529w(versionCode, (Integer) obj);
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(C4074e.f14268a, C4073d.f14267a);
    }

    /* renamed from: i */
    private void m11543i(String str) {
        this.f14286c.postValue(2);
        File externalFilesDir = BaseApp.m8712b().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        if (externalFilesDir == null) {
            this.f14286c.postValue(4);
        } else {
            new DownloadTask.Builder(str, externalFilesDir).setAutoCallbackToUIThread(true).build().enqueue(new C4088a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m11537o(BluetoothDevice bluetoothDevice) {
        if (this.f14286c.getValue() == null || this.f14286c.getValue().intValue() != 5) {
            this.f14286c.postValue(5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m11535q(Mi3OtaPacketParser mi3OtaPacketParser, BluetoothDevice bluetoothDevice, byte[] bArr, int i) {
        int m12418g = mi3OtaPacketParser.m12418g();
        String str = f14284h;
        C4971k.m8654f(str, "progress: " + m12418g);
        if (this.f14287d.getValue() == null || this.f14287d.getValue().intValue() != m12418g) {
            this.f14287d.postValue(Integer.valueOf(m12418g));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ void m11533s(BluetoothDevice bluetoothDevice) {
        C4971k.m8647m(f14284h, "firmware data write finished");
        m11526z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public /* synthetic */ void m11531u(BluetoothDevice bluetoothDevice, int i) {
        String str = f14284h;
        C4971k.m8647m(str, "firmware data write failed, status: " + i);
        this.f14286c.postValue(7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ DeviceModel m11529w(int i, Integer num) throws Exception {
        DeviceDao mo14270E = AppDatabase.m14275G(m22755b()).mo14270E();
        DeviceModel mo14239f = mo14270E.mo14239f(this.f14288e);
        if (mo14239f != null) {
            mo14239f.setVersionSoft(i);
            mo14270E.mo14237h(mo14239f);
        }
        return mo14239f;
    }

    /* renamed from: z */
    private void m11526z() {
        this.f14289f.m12164r1(new C4090c());
    }

    /* renamed from: C */
    public void m11552C(String str) {
        if (TextUtils.isEmpty(str)) {
            str = MiTalkClientUtil.m11195o();
        }
        this.f14288e = str;
        this.f14289f = BleCoreClient.m12373n().m12376k(str);
    }

    /* renamed from: D */
    public void m11551D() {
        if (!this.f14289f.m329v()) {
            this.f14286c.postValue(7);
            return;
        }
        C4971k.m8659a(f14284h, "upgrade start....");
        this.f14286c.setValue(1);
        VersionInfo value = this.f14285b.getValue();
        if (value == null) {
            this.f14286c.postValue(7);
            return;
        }
        String localPath = value.getLocalPath();
        if (C4975r.m8620b(localPath)) {
            m11543i(value.getSource());
            return;
        }
        if (value.getMd5().equals(MD5Util.m11041a(localPath))) {
            m11553B();
        } else {
            m11543i(value.getSource());
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: h */
    public void m11544h(int i, int i2) {
        this.f14290g = i;
        Observable<R> compose = AppServiceClient.m11355a().m11387T("mi3", i, i2, "zh_cn").compose(Transformer.m8717a());
        final MutableLiveData<VersionInfo> mutableLiveData = this.f14285b;
        Objects.requireNonNull(mutableLiveData);
        compose.subscribe(new Consumer() { // from class: com.ifengyu.intercom.l.b.e.a
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MutableLiveData.this.postValue((VersionInfo) obj);
            }
        }, C4087r.f14283a);
    }

    /* renamed from: j */
    public String m11542j() {
        return VersionUtil.m11802a(this.f14290g);
    }

    /* renamed from: k */
    public MutableLiveData<Integer> m11541k() {
        return this.f14287d;
    }

    /* renamed from: l */
    public MutableLiveData<Integer> m11540l() {
        return this.f14286c;
    }

    /* renamed from: m */
    public MutableLiveData<VersionInfo> m11539m() {
        return this.f14285b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
    }
}
