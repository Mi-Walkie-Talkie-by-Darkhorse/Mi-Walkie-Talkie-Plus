package com.ifengyu.intercom.lite.h;

import android.app.Application;
import android.bluetooth.BluetoothDevice;
import androidx.annotation.NonNull;
import androidx.lifecycle.p;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.lite.database.LiteDatabase;
import com.ifengyu.intercom.lite.models.ChannelModel;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.ifengyu.intercom.lite.models.DeviceParamLiveData;
import com.ifengyu.intercom.protos.LiteProtos;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Queue;
import no.nordicsemi.android.ble.b2;

/* compiled from: LiteViewModel.java */
/* loaded from: classes2.dex */
public class h0 extends androidx.lifecycle.a implements com.ifengyu.intercom.lite.e.g.a {
    private static final String n = "h0";
    private com.ifengyu.intercom.lite.e.f k;
    private BluetoothDevice l;

    /* renamed from: b  reason: collision with root package name */
    private p<ChannelModel> f5609b = new p<>();

    /* renamed from: c  reason: collision with root package name */
    private p<List<ChannelModel>> f5610c = new p<>();
    private p<ChannelModel> d = new p<>();
    private DeviceParamLiveData e = new DeviceParamLiveData();
    private p<Boolean> f = new p<>();
    private p<String> g = new p<>();
    private p<Integer> h = new p<>();
    private p<DeviceModel> i = new p<>();
    private p<String> j = new p<>();
    private final List<ChannelModel> m = new ArrayList();

    public h0(@NonNull Application application) {
        super(application);
        com.ifengyu.intercom.lite.e.f a2 = com.ifengyu.intercom.lite.e.f.a(application);
        this.k = a2;
        a2.a((com.ifengyu.blelib.c.b) this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(String str) throws Exception {
    }

    private void p() {
        BluetoothDevice bluetoothDevice = this.l;
        if (bluetoothDevice != null) {
            b2 d2 = this.k.d(bluetoothDevice);
            d2.a(3, 200);
            d2.a(true);
            d2.a(new no.nordicsemi.android.ble.u2.d() { // from class: com.ifengyu.intercom.lite.h.a0
                @Override // no.nordicsemi.android.ble.u2.d
                public final void a(BluetoothDevice bluetoothDevice2, int i2) {
                    h0.this.c(bluetoothDevice2, i2);
                }
            });
            d2.a();
        }
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void a(@NonNull BluetoothDevice bluetoothDevice) {
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void b(@NonNull BluetoothDevice bluetoothDevice) {
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void c(@NonNull BluetoothDevice bluetoothDevice) {
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void f(@NonNull BluetoothDevice bluetoothDevice) {
    }

    public p<DeviceModel> h() {
        return this.i;
    }

    public DeviceParamLiveData i() {
        return this.e;
    }

    public p<String> j() {
        return this.g;
    }

    public p<Boolean> k() {
        return this.f;
    }

    public void l() {
        this.k.a(new f());
    }

    public void m() {
        BluetoothDevice e2 = com.ifengyu.intercom.lite.e.f.a(a()).e();
        if (e2 != null) {
            Observable.just(e2).map(new Function() { // from class: com.ifengyu.intercom.lite.h.u
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return h0.this.e((BluetoothDevice) obj);
                }
            }).subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.h.w
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    h0.this.a((DeviceModel) obj);
                }
            }, c0.f5595a);
        }
    }

    public void n() {
        this.k.b(new j());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.v
    public void onCleared() {
        super.onCleared();
        com.ifengyu.blelib.a.a(n, "onCleared");
        this.k.b(this);
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void a(@NonNull BluetoothDevice bluetoothDevice, int i2) {
        this.f.postValue(false);
        com.ifengyu.intercom.lite.utils.j.a().a(new com.ifengyu.intercom.lite.event.b(com.ifengyu.intercom.lite.event.b.f5420b));
    }

    @Override // no.nordicsemi.android.ble.w2.b
    public void b(@NonNull BluetoothDevice bluetoothDevice, int i2) {
        this.f.postValue(false);
        this.h.postValue(7);
        com.ifengyu.intercom.lite.utils.j.a().a(new com.ifengyu.intercom.lite.event.a(7));
        com.ifengyu.intercom.lite.utils.j.a().a(new com.ifengyu.intercom.lite.event.b(com.ifengyu.intercom.lite.event.b.f5420b));
    }

    public p<String> c() {
        return this.j;
    }

    public com.ifengyu.intercom.lite.e.f d() {
        return this.k;
    }

    public p<ChannelModel> e() {
        return this.d;
    }

    public p<List<ChannelModel>> f() {
        return this.f5610c;
    }

    public p<ChannelModel> g() {
        return this.f5609b;
    }

    public /* synthetic */ void c(BluetoothDevice bluetoothDevice, int i2) {
        String str = n;
        com.ifengyu.blelib.a.b(str, "connect failed, device: " + bluetoothDevice.toString() + "status: " + i2);
        this.h.postValue(Integer.valueOf(i2));
    }

    public void d(@NonNull BluetoothDevice bluetoothDevice) {
        this.l = bluetoothDevice;
        p();
    }

    public /* synthetic */ DeviceModel e(BluetoothDevice bluetoothDevice) throws Exception {
        return LiteDatabase.a(a()).n().b(bluetoothDevice.getAddress());
    }

    @Override // com.ifengyu.intercom.lite.e.g.a
    public void a(int i2) {
        if (i2 == 1) {
            this.f.postValue(true);
        }
        this.h.postValue(Integer.valueOf(i2));
    }

    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    class a extends com.ifengyu.blelib.c.e {
        a() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) cVar.b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                h0.this.e.setFrom(devResponse.getDevInfo());
                return;
            }
            h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = h0.n;
            com.ifengyu.blelib.a.d(str, "update device sq failed, status: " + i);
            if (i == -5) {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_operate_timeout));
            } else {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
            }
        }
    }

    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    class b extends com.ifengyu.blelib.c.e {
        b() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) cVar.b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                h0.this.e.setFrom(devResponse.getDevInfo());
                return;
            }
            h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = h0.n;
            com.ifengyu.blelib.a.d(str, "update device sq failed, status: " + i);
            if (i == -5) {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_operate_timeout));
            } else {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
            }
        }
    }

    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    class c extends com.ifengyu.blelib.c.e {
        c() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) cVar.b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                h0.this.e.setFrom(devResponse.getDevInfo());
                return;
            }
            h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = h0.n;
            com.ifengyu.blelib.a.d(str, "update device vox failed, status: " + i);
            if (i == -5) {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_operate_timeout));
            } else {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
            }
        }
    }

    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    class d extends com.ifengyu.blelib.c.e {
        d() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) cVar.b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                h0.this.e.setFrom(devResponse.getDevInfo());
                return;
            }
            h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = h0.n;
            com.ifengyu.blelib.a.d(str, "update device band failed, status: " + i);
            if (i == -5) {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_operate_timeout));
            } else {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
            }
        }
    }

    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    class e extends com.ifengyu.blelib.c.e {
        e() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) cVar.b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                h0.this.e.setFrom(devResponse.getDevInfo());
                return;
            }
            h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = h0.n;
            com.ifengyu.blelib.a.d(str, "update device polite failed, status: " + i);
            if (i == -5) {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_operate_timeout));
            } else {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
            }
        }
    }

    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    class f extends com.ifengyu.blelib.c.e {
        f() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            LiteProtos.ChannelInfoResponse channelInfoResponse = (LiteProtos.ChannelInfoResponse) cVar.b();
            if (channelInfoResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                h0.this.f5609b.postValue(new ChannelModel(channelInfoResponse.getChannelInfo()));
            }
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = h0.n;
            com.ifengyu.blelib.a.d(str, "query current channel failed, status: " + i);
        }
    }

    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    class k extends com.ifengyu.blelib.c.e {
        k() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) cVar.b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                h0.this.e.setFrom(devResponse.getDevInfo());
                return;
            }
            h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = h0.n;
            com.ifengyu.blelib.a.d(str, "update device sq failed, status: " + i);
            if (i == -5) {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_operate_timeout));
            } else {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
            }
        }
    }

    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    class m extends com.ifengyu.blelib.c.e {
        m() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) cVar.b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                h0.this.e.setFrom(devResponse.getDevInfo());
                return;
            }
            h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = h0.n;
            com.ifengyu.blelib.a.d(str, "update device sq failed, status: " + i);
            if (i == -5) {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_operate_timeout));
            } else {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
            }
        }
    }

    public void d(int i2) {
        this.k.c(i2, new k());
    }

    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    class j extends com.ifengyu.blelib.c.e {
        j() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            String str = h0.n;
            com.ifengyu.blelib.a.a(str, "onSuccess: " + cVar.toString());
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) cVar.b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                h0.this.e.setFrom(devResponse.getDevInfo());
                return;
            }
            com.ifengyu.blelib.a.d(h0.n, "query device param failed");
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            com.ifengyu.blelib.a.d(h0.n, "query device param failed");
        }
    }

    @Override // com.ifengyu.blelib.c.a
    public void a(@NonNull BluetoothDevice bluetoothDevice, @NonNull com.ifengyu.blelib.d.c cVar) {
        if (cVar.a() == 20011) {
            this.f5609b.postValue(new ChannelModel(((LiteProtos.ChannelInfoResponse) cVar.b()).getChannelInfo()));
        }
    }

    public void b() {
        this.l = null;
        if (this.k.f() == 1) {
            this.k.m();
        }
        this.k.c().a();
    }

    public void c(boolean z) {
        this.k.d(z, new c());
    }

    public void d(boolean z) {
        this.k.b(z, new a());
    }

    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    class l extends com.ifengyu.blelib.c.e {
        l() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) cVar.b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                LiteProtos.DevInfo devInfo = devResponse.getDevInfo();
                h0.this.e.setFrom(devInfo);
                d0.f(devInfo.getName().toStringUtf8());
                h0.this.b(devInfo.getName().toStringUtf8());
                return;
            }
            h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = h0.n;
            com.ifengyu.blelib.a.d(str, "update device sq failed, status: " + i);
            if (i == -5) {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_operate_timeout));
            } else {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
            }
        }
    }

    public void c(int i2) {
        this.k.b(i2, new d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    public class i extends com.ifengyu.blelib.c.e {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Queue f5619c;

        i(Queue queue) {
            this.f5619c = queue;
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            LiteProtos.ChannelInfoResponse channelInfoResponse = (LiteProtos.ChannelInfoResponse) cVar.b();
            if (channelInfoResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                ChannelModel channelModel = new ChannelModel(channelInfoResponse.getChannelInfo());
                h0.this.d.postValue(channelModel);
                com.ifengyu.intercom.lite.a.a.a(Integer.valueOf(channelModel.getChannelSeq()), channelModel);
                h0.this.a(this.f5619c);
                return;
            }
            h0.this.j.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_import_failed));
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            h0.this.j.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_import_failed));
        }
    }

    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    class h extends com.ifengyu.blelib.c.e {
        h() {
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            LiteProtos.ChannelInfoResponse channelInfoResponse = (LiteProtos.ChannelInfoResponse) cVar.b();
            if (channelInfoResponse.getResult() != LiteProtos.RESULT.SUCCESS) {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
            } else if (channelInfoResponse.hasChannelInfo()) {
                ChannelModel channelModel = new ChannelModel(channelInfoResponse.getChannelInfo());
                h0.this.d.postValue(channelModel);
                com.ifengyu.intercom.lite.a.a.a(Integer.valueOf(channelModel.getChannelSeq()), channelModel);
            } else {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
            }
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = h0.n;
            com.ifengyu.blelib.a.d(str, "update channel failed, status: " + i);
            if (i == -5) {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_operate_timeout));
            } else {
                h0.this.g.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_setup_failed));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteViewModel.java */
    /* loaded from: classes2.dex */
    public class g extends com.ifengyu.blelib.c.e {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f5617c;

        g(int i) {
            this.f5617c = i;
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(com.ifengyu.blelib.d.c cVar) {
            LiteProtos.ChannelInfoResponse channelInfoResponse = (LiteProtos.ChannelInfoResponse) cVar.b();
            if (channelInfoResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                ChannelModel channelModel = new ChannelModel(channelInfoResponse.getChannelInfo());
                h0.this.m.add(channelModel);
                com.ifengyu.intercom.lite.a.a.a(Integer.valueOf(channelModel.getChannelSeq()), channelModel);
                if (h0.this.m.size() == 16) {
                    h0.this.f5610c.postValue(h0.this.m);
                } else {
                    h0.this.b(this.f5617c + 1);
                }
            } else {
                h0.this.f5610c.postValue(null);
            }
        }

        @Override // com.ifengyu.blelib.c.e
        public void a(int i) {
            String str = h0.n;
            com.ifengyu.blelib.a.d(str, "query channel failed, status: " + i);
            h0.this.f5610c.postValue(null);
        }
    }

    public void b(int i2) {
        if (i2 == 1) {
            this.m.clear();
        }
        if (com.ifengyu.intercom.lite.a.a.c() == 16) {
            List<ChannelModel> b2 = com.ifengyu.intercom.lite.a.a.b();
            Collections.sort(b2, v.f5638a);
            this.m.addAll(b2);
            this.f5610c.postValue(this.m);
            return;
        }
        this.k.a(i2, new g(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int a(ChannelModel channelModel, ChannelModel channelModel2) {
        return channelModel.getChannelSeq() - channelModel2.getChannelSeq();
    }

    public void a(ChannelModel channelModel) {
        LiteProtos.ChannelInfo channelInfo = channelModel.toChannelInfo();
        this.k.a(channelInfo.getSeq(), channelInfo.getRxFreq(), channelInfo.getRxCss(), channelInfo.getTxFreq(), channelInfo.getTxCss(), new h());
    }

    public void a(Queue<ChannelModel> queue) {
        if (queue.isEmpty()) {
            this.j.postValue(null);
        } else {
            this.k.a(queue.remove().toChannelInfo(), new i(queue));
        }
    }

    public /* synthetic */ List b(Long l2) throws Exception {
        return LiteDatabase.a(a()).l().a(l2);
    }

    public void a(Long l2) {
        Observable.just(l2).map(new Function() { // from class: com.ifengyu.intercom.lite.h.t
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return h0.this.b((Long) obj);
            }
        }).map(d0.f5597a).subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.h.e0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                h0.this.a((Queue) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.lite.h.b0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                h0.this.a((Throwable) obj);
            }
        });
    }

    public void b(String str) {
        final BluetoothDevice e2 = com.ifengyu.intercom.lite.e.f.a(a()).e();
        if (e2 != null) {
            Observable.just(str).map(new Function() { // from class: com.ifengyu.intercom.lite.h.z
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return h0.this.a(e2, (String) obj);
                }
            }).subscribeOn(Schedulers.io()).subscribe(x.f5640a, y.f5641a);
        }
    }

    public /* synthetic */ void a(Throwable th) throws Exception {
        this.j.postValue(com.ifengyu.library.a.m.b((int) R.string.lite_import_failed));
        com.ifengyu.blelib.a.b(n, "import config file failed", th);
    }

    public /* synthetic */ void a(DeviceModel deviceModel) throws Exception {
        if (deviceModel != null) {
            this.i.postValue(deviceModel);
        }
    }

    public void b(boolean z) {
        this.k.c(z, new e());
    }

    public void a(String str) {
        this.k.a(str, new l());
    }

    public /* synthetic */ String a(BluetoothDevice bluetoothDevice, String str) throws Exception {
        com.ifengyu.intercom.lite.f.e n2 = LiteDatabase.a(a()).n();
        DeviceModel b2 = n2.b(bluetoothDevice.getAddress());
        if (b2 != null) {
            b2.setName(str);
            n2.b(b2);
        }
        return str;
    }

    public void a(boolean z) {
        this.k.a(z, new m());
    }

    public void a(LiteProtos.LANGUAGE_TYPE language_type) {
        this.k.a(language_type, new b());
    }
}
