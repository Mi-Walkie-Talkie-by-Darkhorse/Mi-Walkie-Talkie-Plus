package com.ifengyu.intercom.p189l.p198b.p204e;

import android.annotation.SuppressLint;
import android.app.Application;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.lifecycle.MutableLiveData;
import com.google.protobuf.Message;
import com.ifengyu.blelib.p151b.DeviceDataCallback;
import com.ifengyu.blelib.p151b.PacketListener;
import com.ifengyu.blelib.p152c.Commend;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.database.p155a.DeviceDao;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.device.mi3.models.Mi3ChannelState;
import com.ifengyu.intercom.device.mi3.models.Mi3DeviceParamLiveData;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.Mi3BleManager;
import com.ifengyu.intercom.p189l.p190a.p191a.CustomChannelCache;
import com.ifengyu.intercom.p189l.p190a.p191a.RemoteChannelCache;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.protos.BleProtos;
import com.ifengyu.intercom.service.ShareLocationService;
import com.ifengyu.library.utils.C4971k;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.ifengyu.intercom.l.b.e.u */
/* loaded from: classes2.dex */
public class Mi3ViewModel extends MI3BaseViewModel implements DeviceDataCallback {

    /* renamed from: k */
    private static final String f14295k = "u";

    /* renamed from: b */
    private final Mi3DeviceParamLiveData f14296b;

    /* renamed from: c */
    private final MutableLiveData<DeviceModel> f14297c;

    /* renamed from: d */
    private final MutableLiveData<Mi3ChannelState> f14298d;

    /* renamed from: e */
    private final MutableLiveData<OperationResult> f14299e;

    /* renamed from: f */
    private final MutableLiveData<List<ChannelModel>> f14300f;

    /* renamed from: g */
    private final MutableLiveData<List<ChannelModel>> f14301g;

    /* renamed from: h */
    private final MutableLiveData<ChannelModel> f14302h;

    /* renamed from: i */
    private String f14303i;

    /* renamed from: j */
    private Mi3BleManager f14304j;

    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$a */
    /* loaded from: classes2.dex */
    class C4091a extends PacketListener {
        C4091a() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            if (i == -5) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_EDIT_CHANNEL, 3));
            } else {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_EDIT_CHANNEL, 2));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() != 0) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_EDIT_CHANNEL, 2));
                return;
            }
            BleProtos.Frequency frequency = (BleProtos.Frequency) commend.m14356b();
            ChannelModel m11816e = BleChannelUtils.m11816e(frequency);
            if (m11816e.getIsCustomCh()) {
                CustomChannelCache.m11950e(Integer.valueOf(frequency.getSeq()), m11816e);
            } else {
                RemoteChannelCache.m11942e(Integer.valueOf(frequency.getSeq()), m11816e);
            }
            Mi3ViewModel.this.f14302h.postValue(m11816e);
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_EDIT_CHANNEL, 1));
            Mi3ViewModel.this.f14301g.postValue(CustomChannelCache.m11952c());
        }
    }

    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$b */
    /* loaded from: classes2.dex */
    class C4092b extends PacketListener {
        C4092b() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            if (i == -5) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_INSERT_CHANNEL, 3));
            } else {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_INSERT_CHANNEL, 2));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_INSERT_CHANNEL, 1));
                BleProtos.Frequency frequency = (BleProtos.Frequency) commend.m14356b();
                ChannelModel m11816e = BleChannelUtils.m11816e(frequency);
                if (m11816e.getIsCustomCh()) {
                    CustomChannelCache.m11950e(Integer.valueOf(frequency.getSeq()), m11816e);
                } else {
                    RemoteChannelCache.m11942e(Integer.valueOf(frequency.getSeq()), m11816e);
                }
                Mi3ViewModel.this.f14301g.postValue(CustomChannelCache.m11952c());
                return;
            }
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_INSERT_CHANNEL, 2));
        }
    }

    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$c */
    /* loaded from: classes2.dex */
    class C4093c extends PacketListener {

        /* renamed from: c */
        final /* synthetic */ ChannelModel f14307c;

        C4093c(ChannelModel channelModel) {
            this.f14307c = channelModel;
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            if (i == -5) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_CLEAR_CHANNEL, 3));
            } else {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_CLEAR_CHANNEL, 2));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() != 0) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_CLEAR_CHANNEL, 2));
                return;
            }
            CustomChannelCache.m11949f(Integer.valueOf(this.f14307c.getChannelSeq()));
            this.f14307c.clear();
            Mi3ViewModel.this.f14302h.postValue(this.f14307c);
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_CLEAR_CHANNEL, 1));
            Mi3ViewModel.this.f14301g.postValue(CustomChannelCache.m11952c());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$d */
    /* loaded from: classes2.dex */
    public class C4094d extends PacketListener {

        /* renamed from: c */
        final /* synthetic */ List f14309c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4094d(long j, List list) {
            super(j);
            this.f14309c = list;
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = Mi3ViewModel.f14295k;
            C4971k.m8647m(str, "queryAllRemoteChannel fail, status: " + i);
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_IMPORT_CONFIG_FILE_CHANNELS, 2));
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() != 0) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_IMPORT_CONFIG_FILE_CHANNELS, 2));
                return;
            }
            List list = this.f14309c;
            if (list != null) {
                Mi3ViewModel.this.m11496c(list);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$e */
    /* loaded from: classes2.dex */
    public class C4095e extends PacketListener {
        C4095e(long j) {
            super(j);
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = Mi3ViewModel.f14295k;
            C4971k.m8647m(str, "queryAllRemoteChannel fail, status: " + i);
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_IMPORT_CONFIG_FILE_CHANNELS, 2));
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                return;
            }
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_IMPORT_CONFIG_FILE_CHANNELS, 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$f */
    /* loaded from: classes2.dex */
    public class C4096f extends PacketListener {

        /* renamed from: c */
        final /* synthetic */ boolean f14312c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4096f(long j, boolean z) {
            super(j);
            this.f14312c = z;
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = Mi3ViewModel.f14295k;
            C4971k.m8647m(str, "queryAllRemoteChannel fail, status: " + i);
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_SYNC_REMOTE_CHANNEL_END, 2));
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                String str = Mi3ViewModel.f14295k;
                C4971k.m8659a(str, "sync remote frequency: " + commend.m14355c().size());
                RemoteChannelCache.m11946a();
                Mi3ViewModel.this.m11467q0(commend.m14355c());
                RemoteChannelCache.m11940g(true);
                Mi3ViewModel.this.f14300f.postValue(RemoteChannelCache.m11944c());
                if (this.f14312c) {
                    Mi3ViewModel.this.m11509Q();
                }
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_SYNC_REMOTE_CHANNEL_END, 1));
                return;
            }
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_SYNC_REMOTE_CHANNEL_END, 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$g */
    /* loaded from: classes2.dex */
    public class C4097g extends PacketListener {
        C4097g(long j) {
            super(j);
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = Mi3ViewModel.f14295k;
            C4971k.m8647m(str, "queryAllCustomChannel fail, status: " + i);
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_SYNC_CUSTOM_CHANNEL_END, 2));
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                String str = Mi3ViewModel.f14295k;
                C4971k.m8659a(str, "sync custom frequency: " + commend.m14355c().size());
                CustomChannelCache.m11954a();
                Mi3ViewModel.this.m11467q0(commend.m14355c());
                CustomChannelCache.m11948g(true);
                Mi3ViewModel.this.f14301g.postValue(CustomChannelCache.m11952c());
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_SYNC_CUSTOM_CHANNEL_END, 1));
                return;
            }
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_SYNC_CUSTOM_CHANNEL_END, 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$h */
    /* loaded from: classes2.dex */
    public class C4098h extends PacketListener {

        /* renamed from: c */
        final /* synthetic */ List f14315c;

        C4098h(List list) {
            this.f14315c = list;
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                Mi3ViewModel.this.m11491e0(this.f14315c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$i */
    /* loaded from: classes2.dex */
    public class C4099i extends PacketListener {

        /* renamed from: c */
        final /* synthetic */ List f14317c;

        C4099i(List list) {
            this.f14317c = list;
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            BleProtos.Channel channel = (BleProtos.Channel) commend.m14356b();
            Mi3ViewModel.this.m11524B(this.f14317c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$j */
    /* loaded from: classes2.dex */
    public class C4100j extends PacketListener {

        /* renamed from: c */
        final /* synthetic */ List f14319c;

        C4100j(List list) {
            this.f14319c = list;
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            BleProtos.Channel channel = (BleProtos.Channel) commend.m14356b();
            Mi3ViewModel.this.m11524B(this.f14319c);
        }
    }

    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$k */
    /* loaded from: classes2.dex */
    class C4101k extends PacketListener {
        C4101k() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            C4971k.m8647m(Mi3ViewModel.f14295k, "query device param failed");
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            String str = Mi3ViewModel.f14295k;
            C4971k.m8659a(str, "onSuccess: " + commend.toString());
            if (commend.m14354d() == 0) {
                Mi3ViewModel.this.f14296b.setFrom((BleProtos.DeviceInfo) commend.m14356b());
                return;
            }
            C4971k.m8647m(Mi3ViewModel.f14295k, "query device param failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$l */
    /* loaded from: classes2.dex */
    public class C4102l extends PacketListener {

        /* renamed from: c */
        final /* synthetic */ LinkedList f14322c;

        C4102l(LinkedList linkedList) {
            this.f14322c = linkedList;
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_IMPORT_CONFIG_FILE_CHANNELS, 2));
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() != 0) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_IMPORT_CONFIG_FILE_CHANNELS, 2));
                return;
            }
            Mi3ViewModel.this.m11481j0((BleProtos.Frequency) commend.m14356b());
            Mi3ViewModel.this.m11525A(this.f14322c);
        }
    }

    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$m */
    /* loaded from: classes2.dex */
    class C4103m extends PacketListener {
        C4103m() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = Mi3ViewModel.f14295k;
            C4971k.m8647m(str, "update device sq failed, status: " + i);
            if (i == -5) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_UPDATE_DEVICE_NAME, 3));
            } else {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_UPDATE_DEVICE_NAME, 2));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                Mi3ViewModel.this.f14296b.setFrom((BleProtos.DeviceInfo) commend.m14356b());
                MiTalkClientUtil.m11204j0(Mi3ViewModel.this.f14296b.getName());
                Mi3ViewModel mi3ViewModel = Mi3ViewModel.this;
                mi3ViewModel.m11477l0(mi3ViewModel.f14296b.getName());
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_UPDATE_DEVICE_NAME, 1));
                return;
            }
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_UPDATE_DEVICE_NAME, 2));
        }
    }

    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$n */
    /* loaded from: classes2.dex */
    class C4104n extends PacketListener {
        C4104n() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = Mi3ViewModel.f14295k;
            C4971k.m8647m(str, "update device vox failed, status: " + i);
            if (i == -5) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_UPDATE_DEVICE_VOX, 3));
            } else {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_UPDATE_DEVICE_VOX, 2));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                Mi3ViewModel.this.f14296b.setFrom((BleProtos.DeviceInfo) commend.m14356b());
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_UPDATE_DEVICE_VOX, 1));
                return;
            }
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_UPDATE_DEVICE_VOX, 2));
        }
    }

    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$o */
    /* loaded from: classes2.dex */
    class C4105o extends PacketListener {
        C4105o() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = Mi3ViewModel.f14295k;
            C4971k.m8647m(str, "updateShareLocationSwitch failed, status: " + i);
            if (i == -5) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_OPEN_SHARE_LOCATION, 3));
            } else {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_OPEN_SHARE_LOCATION, 2));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                Mi3ViewModel.this.f14296b.setFrom((BleProtos.DeviceInfo) commend.m14356b());
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_OPEN_SHARE_LOCATION, 1));
                MiTalkiApp.m14296h().startService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
                return;
            }
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_OPEN_SHARE_LOCATION, 2));
        }
    }

    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$p */
    /* loaded from: classes2.dex */
    class C4106p extends PacketListener {
        C4106p() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = Mi3ViewModel.f14295k;
            C4971k.m8647m(str, "update share location failed, status: " + i);
            if (i == -5) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_STOP_SHARE_LOCATION, 3));
            } else {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_STOP_SHARE_LOCATION, 2));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                Mi3ViewModel.this.f14296b.setFrom((BleProtos.DeviceInfo) commend.m14356b());
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_STOP_SHARE_LOCATION, 1));
                MiTalkiApp.m14296h().stopService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
                return;
            }
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_STOP_SHARE_LOCATION, 2));
        }
    }

    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$q */
    /* loaded from: classes2.dex */
    class C4107q extends PacketListener {
        C4107q() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            if (i == -5) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_ADD_CH_TO_STATE, 3));
            } else {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_ADD_CH_TO_STATE, 2));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_ADD_CH_TO_STATE, 1));
            } else {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_ADD_CH_TO_STATE, 2));
            }
        }
    }

    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$r */
    /* loaded from: classes2.dex */
    class C4108r extends PacketListener {

        /* renamed from: c */
        final /* synthetic */ int f14329c;

        C4108r(int i) {
            this.f14329c = i;
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            if (i == -5) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_UPDATE_CH_TO_STATE, 3));
            } else {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_UPDATE_CH_TO_STATE, 2));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() != 0) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_UPDATE_CH_TO_STATE, 2));
                return;
            }
            BleProtos.Channel channel = (BleProtos.Channel) commend.m14356b();
            int i = this.f14329c;
            if (i == 1) {
                Mi3ViewModel.this.f14302h.postValue(BleChannelUtils.m11816e(channel.getCh1()));
            } else if (i == 2) {
                Mi3ViewModel.this.f14302h.postValue(BleChannelUtils.m11816e(channel.getCh2()));
            }
            Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_UPDATE_CH_TO_STATE, 1));
        }
    }

    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$s */
    /* loaded from: classes2.dex */
    class C4109s extends PacketListener {
        C4109s() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            if (i == -5) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_CANCEL_CH_TO_STATE, 3));
            } else {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_CANCEL_CH_TO_STATE, 2));
            }
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            if (commend.m14354d() == 0) {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_CANCEL_CH_TO_STATE, 1));
            } else {
                Mi3ViewModel.this.f14299e.postValue(new OperationResult(OperationResult.ACTION_CANCEL_CH_TO_STATE, 2));
            }
        }
    }

    /* compiled from: Mi3ViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.b.e.u$t */
    /* loaded from: classes2.dex */
    class C4110t extends PacketListener {
        C4110t() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            Mi3ViewModel.this.f14302h.postValue(BleChannelUtils.m11816e((BleProtos.Frequency) commend.m14356b()));
        }
    }

    public Mi3ViewModel(@NonNull Application application) {
        super(application);
        this.f14296b = new Mi3DeviceParamLiveData();
        this.f14297c = new MutableLiveData<>();
        this.f14298d = new MutableLiveData<>();
        this.f14299e = new MutableLiveData<>();
        this.f14300f = new MutableLiveData<>();
        this.f14301g = new MutableLiveData<>();
        this.f14302h = new MutableLiveData<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public static /* synthetic */ LinkedList m11522D(List list) throws Exception {
        LinkedList linkedList = new LinkedList();
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ChannelModel channelModel = (ChannelModel) it2.next();
            if (channelModel.getIsRemoteCh()) {
                linkedList.add(channelModel);
            } else if (channelModel.getIsCustomCh()) {
                concurrentHashMap.put(Integer.valueOf(channelModel.getChannelSeq()), channelModel);
            }
        }
        for (int i = 1; i <= 80; i++) {
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
    /* renamed from: E */
    public /* synthetic */ void m11520F(Throwable th) throws Exception {
        C4971k.m8656d(f14295k, "import config file failed", th);
        this.f14299e.postValue(new OperationResult(OperationResult.ACTION_IMPORT_CONFIG_FILE_CHANNELS, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G */
    public /* synthetic */ DeviceModel m11518H(String str) throws Exception {
        return AppDatabase.m14275G(m22755b()).mo14270E().mo14239f(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public /* synthetic */ void m11516J(DeviceModel deviceModel) throws Exception {
        if (deviceModel != null) {
            this.f14297c.postValue(deviceModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public /* synthetic */ DeviceModel m11513M(String str) throws Exception {
        DeviceDao mo14270E = AppDatabase.m14275G(m22755b()).mo14270E();
        DeviceModel mo14239f = mo14270E.mo14239f(this.f14303i);
        if (mo14239f != null) {
            mo14239f.setName(str);
            mo14270E.mo14237h(mo14239f);
        }
        return mo14239f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public /* synthetic */ void m11511O(DeviceModel deviceModel) throws Exception {
        if (deviceModel != null) {
            this.f14297c.postValue(deviceModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    /* renamed from: c */
    public void m11496c(List<ChannelModel> list) {
        Observable.just(list).map(C4085p.f14281a).subscribeOn(Schedulers.m800io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.l.b.e.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Mi3ViewModel.this.m11525A((LinkedList) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.l.b.e.k
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Mi3ViewModel.this.m11520F((Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j0 */
    public void m11481j0(BleProtos.Frequency frequency) {
        if (frequency.hasTxFreq() && frequency.hasRxFreq()) {
            if (frequency.getType() == 1) {
                RemoteChannelCache.m11942e(Integer.valueOf(frequency.getSeq()), BleChannelUtils.m11816e(frequency));
            } else {
                CustomChannelCache.m11950e(Integer.valueOf(frequency.getSeq()), BleChannelUtils.m11816e(frequency));
            }
        } else if (frequency.getType() == 1) {
            RemoteChannelCache.m11941f(Integer.valueOf(frequency.getSeq()));
        } else {
            CustomChannelCache.m11949f(Integer.valueOf(frequency.getSeq()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    /* renamed from: l0 */
    public void m11477l0(String str) {
        Observable.just(str).map(new Function() { // from class: com.ifengyu.intercom.l.b.e.n
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Mi3ViewModel.this.m11513M((String) obj);
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.l.b.e.j
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Mi3ViewModel.this.m11511O((DeviceModel) obj);
            }
        }, C4082m.f14278a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q0 */
    public void m11467q0(List<Message> list) {
        Iterator<Message> it2 = list.iterator();
        while (it2.hasNext()) {
            m11481j0((BleProtos.Frequency) it2.next());
        }
    }

    /* renamed from: A */
    public void m11525A(LinkedList<ChannelModel> linkedList) {
        try {
            ChannelModel remove = linkedList.remove();
            if (remove == null) {
                this.f14299e.postValue(new OperationResult(OperationResult.ACTION_IMPORT_CONFIG_FILE_CHANNELS, 1));
                this.f14300f.postValue(RemoteChannelCache.m11944c());
                this.f14301g.postValue(CustomChannelCache.m11952c());
                m11501Y();
                return;
            }
            this.f14304j.m12210F1(remove, new C4102l(linkedList));
        } catch (Exception e) {
            C4971k.m8647m(f14295k, e.getMessage());
            this.f14299e.postValue(new OperationResult(OperationResult.ACTION_IMPORT_CONFIG_FILE_CHANNELS, 1));
            this.f14300f.postValue(RemoteChannelCache.m11944c());
            this.f14301g.postValue(CustomChannelCache.m11952c());
            m11501Y();
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: B */
    public void m11524B(List<ChannelModel> list) {
        if (m11523C()) {
            m11500Z(list);
        } else {
            m11491e0(list);
        }
    }

    /* renamed from: C */
    public boolean m11523C() {
        Mi3ChannelState value = this.f14298d.getValue();
        if (value == null) {
            return false;
        }
        if (value.getCh1Model() != null && value.getCh2Model() == null) {
            return value.getCh1Model().getIsRemoteCh();
        }
        if (value.getCh1Model() != null || value.getCh2Model() == null) {
            return false;
        }
        return value.getCh2Model().getIsRemoteCh();
    }

    /* renamed from: Q */
    public void m11509Q() {
        if (CustomChannelCache.m11951d()) {
            ArrayList<ChannelModel> m11952c = CustomChannelCache.m11952c();
            Collections.sort(m11952c);
            this.f14301g.postValue(m11952c);
            this.f14299e.postValue(new OperationResult(OperationResult.ACTION_SYNC_CUSTOM_CHANNEL_END, 1));
            return;
        }
        this.f14304j.m12183f1(new C4097g(10000L));
    }

    /* renamed from: R */
    public void m11508R() {
        if (RemoteChannelCache.m11943d() && RemoteChannelCache.m11939h() == 20 && CustomChannelCache.m11951d()) {
            this.f14299e.postValue(new OperationResult(OperationResult.ACTION_SYNCED_ALL_CHANNEL, 1));
        } else {
            m11506T(true);
        }
    }

    /* renamed from: S */
    public void m11507S() {
        m11506T(false);
    }

    /* renamed from: T */
    public void m11506T(boolean z) {
        if (RemoteChannelCache.m11943d()) {
            ArrayList<ChannelModel> m11944c = RemoteChannelCache.m11944c();
            Collections.sort(m11944c);
            this.f14300f.postValue(m11944c);
            this.f14299e.postValue(new OperationResult(OperationResult.ACTION_SYNC_REMOTE_CHANNEL_END, 1));
            if (z) {
                m11509Q();
                return;
            }
            return;
        }
        this.f14304j.m12179j1(new C4096f(10000L, z));
    }

    /* renamed from: U */
    public void m11505U() {
        this.f14304j.m12184e1(null);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: V */
    public void m11504V() {
        Observable.just(this.f14303i).map(new Function() { // from class: com.ifengyu.intercom.l.b.e.o
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Mi3ViewModel.this.m11518H((String) obj);
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.l.b.e.l
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Mi3ViewModel.this.m11516J((DeviceModel) obj);
            }
        }, C4086q.f14282a);
    }

    /* renamed from: W */
    public void m11503W() {
        this.f14304j.m12182g1(new C4101k());
    }

    /* renamed from: X */
    public void m11502X() {
        ChannelModel value = this.f14302h.getValue();
        if (value == null) {
            return;
        }
        this.f14304j.m12180i1(value.getChannelSeq(), value.getChannelType(), new C4110t());
    }

    /* renamed from: Y */
    public void m11501Y() {
        this.f14304j.m12181h1(new C4095e(10000L));
    }

    /* renamed from: Z */
    public void m11500Z(List<ChannelModel> list) {
        this.f14304j.m12178k1(new C4094d(10000L, list));
    }

    @Override // com.ifengyu.blelib.p151b.DeviceDataCallback
    /* renamed from: a */
    public void mo11499a(@NonNull BluetoothDevice bluetoothDevice, @NonNull Commend commend) {
        int m14357a = commend.m14357a();
        if (m14357a == 20032 || m14357a == 20031 || m14357a == 20034) {
            Mi3ChannelState mi3ChannelState = new Mi3ChannelState();
            mi3ChannelState.setFrom((BleProtos.Channel) commend.m14356b());
            this.f14298d.postValue(mi3ChannelState);
        } else if (m14357a != 20028) {
            if (m14357a == 20014) {
                this.f14296b.setFrom((BleProtos.DeviceInfo) commend.m14356b());
            }
        } else {
            BleProtos.Frequency frequency = (BleProtos.Frequency) commend.m14356b();
            if (frequency.getType() == 1) {
                if (frequency.hasSeq() && frequency.hasType()) {
                    ChannelModel m11816e = BleChannelUtils.m11816e(frequency);
                    if (m11816e.isEmpty()) {
                        RemoteChannelCache.m11941f(Integer.valueOf(frequency.getSeq()));
                        return;
                    } else {
                        RemoteChannelCache.m11942e(Integer.valueOf(m11816e.getChannelSeq()), m11816e);
                        return;
                    }
                }
                RemoteChannelCache.m11941f(Integer.valueOf(frequency.getSeq()));
            } else if (frequency.getType() == 2) {
                if (frequency.hasSeq() && frequency.hasType()) {
                    ChannelModel m11816e2 = BleChannelUtils.m11816e(frequency);
                    if (m11816e2.isEmpty()) {
                        CustomChannelCache.m11949f(Integer.valueOf(frequency.getSeq()));
                    } else {
                        CustomChannelCache.m11950e(Integer.valueOf(m11816e2.getChannelSeq()), m11816e2);
                    }
                } else {
                    CustomChannelCache.m11949f(Integer.valueOf(frequency.getSeq()));
                }
                this.f14301g.postValue(CustomChannelCache.m11952c());
            }
        }
    }

    /* renamed from: a0 */
    public void m11498a0(ChannelModel channelModel, int i) {
        Mi3ChannelState value = this.f14298d.getValue();
        if (value == null) {
            this.f14299e.postValue(new OperationResult(OperationResult.ACTION_ADD_CH_TO_STATE, 2));
            return;
        }
        if (i == 1) {
            value.setCh1Model(channelModel);
        } else if (i == 2) {
            value.setCh2Model(channelModel);
        }
        this.f14304j.m12220A1(value.toProtoChannel(), new C4108r(i));
    }

    /* renamed from: b0 */
    public void m11497b0() {
        m11493d0();
        m11495c0();
    }

    /* renamed from: c0 */
    public void m11495c0() {
        this.f14302h.postValue(null);
    }

    /* renamed from: d0 */
    public void m11493d0() {
        this.f14299e.postValue(null);
    }

    /* renamed from: e0 */
    public void m11491e0(List<ChannelModel> list) {
        Mi3ChannelState value = this.f14298d.getValue();
        if (value == null) {
            return;
        }
        if (value.getCh1Model() != null && value.getCh2Model() != null) {
            value.setCh2Model(null);
            this.f14304j.m12220A1(value.toProtoChannel(), new C4098h(list));
        } else if (value.getCh1Model() != null && value.getCh1Model().getIsCustomCh()) {
            this.f14304j.m12218B1(RemoteChannelCache.m11945b(1), 1, new C4099i(list));
        } else if (value.getCh2Model() == null || !value.getCh2Model().getIsCustomCh()) {
        } else {
            this.f14304j.m12218B1(RemoteChannelCache.m11945b(1), 2, new C4100j(list));
        }
    }

    /* renamed from: f0 */
    public void m11489f0() {
        int i = 1;
        while (true) {
            if (i > 80) {
                i = -1;
                break;
            } else if (!CustomChannelCache.m11953b(Integer.valueOf(i))) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        ChannelModel channelModel = new ChannelModel();
        channelModel.setChannelSeq(i);
        channelModel.setChannelType(2);
        this.f14302h.postValue(channelModel);
    }

    /* renamed from: g0 */
    public void m11487g0(ChannelModel channelModel) {
        this.f14302h.postValue(channelModel);
    }

    /* renamed from: h0 */
    public void m11485h0(int i) {
        Mi3ChannelState value = this.f14298d.getValue();
        if (value == null) {
            return;
        }
        if (i == 1) {
            this.f14302h.postValue(BleChannelUtils.m11820a(value.getCh1Model()));
        } else if (i == 2) {
            this.f14302h.postValue(BleChannelUtils.m11820a(value.getCh2Model()));
        }
    }

    /* renamed from: i0 */
    public void m11483i0(String str) {
        if (TextUtils.isEmpty(str)) {
            str = MiTalkClientUtil.m11195o();
        }
        this.f14303i = str;
        Mi3BleManager m12376k = BleCoreClient.m12373n().m12376k(str);
        this.f14304j = m12376k;
        m12376k.m12176l1(this);
    }

    /* renamed from: k0 */
    public void m11479k0(String str) {
        this.f14304j.m12216C1(str, new C4103m());
    }

    /* renamed from: m0 */
    public void m11475m0(int i) {
        UserPrivacyReportUtil.m11135x(i, this.f14303i);
    }

    /* renamed from: n */
    public void m11474n(ChannelModel channelModel) {
        Mi3ChannelState value = this.f14298d.getValue();
        if (value == null) {
            this.f14299e.postValue(new OperationResult(OperationResult.ACTION_ADD_CH_TO_STATE, 2));
            return;
        }
        if (value.getCh1Model() == null) {
            value.setCh1Model(channelModel);
        } else if (value.getCh2Model() == null) {
            value.setCh2Model(channelModel);
        }
        this.f14304j.m12220A1(value.toProtoChannel(), new C4107q());
    }

    /* renamed from: n0 */
    public void m11473n0() {
        this.f14304j.m12208G1(true, new C4105o());
    }

    /* renamed from: o */
    public void m11472o() {
        ChannelModel value = this.f14302h.getValue();
        if (value == null) {
            return;
        }
        this.f14304j.m12210F1(value, new C4092b());
    }

    /* renamed from: o0 */
    public void m11471o0() {
        this.f14304j.m12208G1(false, new C4106p());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        C4971k.m8659a(f14295k, "onCleared");
        Mi3BleManager mi3BleManager = this.f14304j;
        if (mi3BleManager != null) {
            mi3BleManager.m12148z1(this);
        }
    }

    /* renamed from: p */
    public void m11470p(int i) {
        Mi3ChannelState value = this.f14298d.getValue();
        if (value == null) {
            this.f14299e.postValue(new OperationResult(OperationResult.ACTION_ADD_CH_TO_STATE, 2));
            return;
        }
        if (i == 1) {
            value.setCh1Model(null);
        } else if (i == 2) {
            value.setCh2Model(null);
        }
        this.f14304j.m12220A1(value.toProtoChannel(), new C4109s());
    }

    /* renamed from: p0 */
    public void m11469p0(BleProtos.VoxType voxType) {
        this.f14304j.m12214D1(voxType, new C4104n());
    }

    /* renamed from: q */
    public void m11468q() {
        ChannelModel value = this.f14302h.getValue();
        if (value == null) {
            return;
        }
        this.f14304j.m12149z0(value.getChannelSeq(), value.getChannelType(), new C4093c(value));
    }

    /* renamed from: r */
    public void m11466r() {
        ChannelModel value = this.f14302h.getValue();
        if (value == null) {
            return;
        }
        this.f14304j.m12210F1(value, new C4091a());
    }

    /* renamed from: s */
    public ArrayList<ChannelModel> m11465s() {
        if (RemoteChannelCache.m11943d() && CustomChannelCache.m11951d()) {
            if (RemoteChannelCache.m11939h() != 20) {
                String str = f14295k;
                C4971k.m8657c(str, "remote size: " + RemoteChannelCache.m11939h());
                return null;
            }
            ArrayList<ChannelModel> arrayList = new ArrayList<>();
            arrayList.addAll(RemoteChannelCache.m11944c());
            arrayList.addAll(CustomChannelCache.m11952c());
            Collections.sort(arrayList);
            return arrayList;
        }
        C4971k.m8657c(f14295k, "remote or custom unfinished");
        return null;
    }

    /* renamed from: t */
    public MutableLiveData<Mi3ChannelState> m11464t() {
        return this.f14298d;
    }

    /* renamed from: u */
    public MutableLiveData<List<ChannelModel>> m11463u() {
        return this.f14301g;
    }

    /* renamed from: v */
    public MutableLiveData<DeviceModel> m11462v() {
        return this.f14297c;
    }

    /* renamed from: w */
    public Mi3DeviceParamLiveData m11461w() {
        return this.f14296b;
    }

    /* renamed from: x */
    public MutableLiveData<ChannelModel> m11460x() {
        return this.f14302h;
    }

    /* renamed from: y */
    public MutableLiveData<OperationResult> m11459y() {
        return this.f14299e;
    }

    /* renamed from: z */
    public MutableLiveData<List<ChannelModel>> m11458z() {
        return this.f14300f;
    }
}
