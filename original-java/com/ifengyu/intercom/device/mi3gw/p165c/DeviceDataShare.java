package com.ifengyu.intercom.device.mi3gw.p165c;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.http.entity.UploadFileEntity;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.library.event.SimpleEvent;
import com.ifengyu.library.http.entity.HttpDataList;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.talk.http.entity.TempGroup;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.annotations.NonNull;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONObject;

/* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0 */
/* loaded from: classes2.dex */
public class DeviceDataShare {

    /* renamed from: j */
    private static final String f12443j = "d0";

    /* renamed from: k */
    private static DeviceDataShare f12444k;

    /* renamed from: d */
    private TempGroup f12448d;

    /* renamed from: f */
    private DeviceModel f12450f;

    /* renamed from: g */
    private NetDeviceModel f12451g;

    /* renamed from: h */
    private TempGroup f12452h;

    /* renamed from: a */
    private final Set<OnDeviceDataShareListener> f12445a = new HashSet();

    /* renamed from: b */
    private final ArrayList<TempGroup> f12446b = new ArrayList<>();

    /* renamed from: c */
    private final HashMap<Long, TempGroup> f12447c = new HashMap<>();

    /* renamed from: e */
    private final ArrayList<TempGroup> f12449e = new ArrayList<>();

    /* renamed from: i */
    private int f12453i = 0;

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$a */
    /* loaded from: classes2.dex */
    class C3336a extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ long[] f12454a;

        C3336a(long[] jArr) {
            this.f12454a = jArr;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "batchQuitGroup fail");
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13403t0(this.f12454a);
            }
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$b */
    /* loaded from: classes2.dex */
    class C3337b extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ long[] f12456a;

        C3337b(long[] jArr) {
            this.f12456a = jArr;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "batchAddGroupForDevice fail");
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13411h1(this.f12456a);
            }
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$c */
    /* loaded from: classes2.dex */
    class C3338c extends ErrorConsumer {
        C3338c() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "orderDeviceGroup fail");
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13420O0();
            }
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$d */
    /* loaded from: classes2.dex */
    class C3339d extends ErrorConsumer {
        C3339d() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "createGroupForDevice fail");
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13406o0();
            }
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$e */
    /* loaded from: classes2.dex */
    class C3340e extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ long f12460a;

        C3340e(long j) {
            this.f12460a = j;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "addMemberToDeviceGroup fail");
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13407l0(this.f12460a);
            }
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$f */
    /* loaded from: classes2.dex */
    class C3341f extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ long f12462a;

        C3341f(long j) {
            this.f12462a = j;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "removeMemberFromDeviceGroup fail");
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13413a1(this.f12462a);
            }
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$g */
    /* loaded from: classes2.dex */
    class C3342g extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ long f12464a;

        C3342g(long j) {
            this.f12464a = j;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "changeDeviceGroupOwner fail");
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13415X0(this.f12464a);
            }
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$h */
    /* loaded from: classes2.dex */
    class C3343h extends ErrorConsumer {
        C3343h() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "updateDeviceAvatar fail");
            newApiException.printStackTrace();
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13401w0();
            }
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$i */
    /* loaded from: classes2.dex */
    class C3344i extends ErrorConsumer {
        C3344i() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "updateDeviceInfo fail");
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13401w0();
            }
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$j */
    /* loaded from: classes2.dex */
    class C3345j extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ OnUpdateDeviceCurGroupListener f12468a;

        C3345j(DeviceDataShare deviceDataShare, OnUpdateDeviceCurGroupListener onUpdateDeviceCurGroupListener) {
            this.f12468a = onUpdateDeviceCurGroupListener;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "openDoubleGroupListen fail");
            this.f12468a.mo13674b(R.string.set_failed);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$k */
    /* loaded from: classes2.dex */
    public class C3346k extends ErrorConsumer {
        C3346k() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "getDeviceGroupList fail");
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13408k1();
            }
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$l */
    /* loaded from: classes2.dex */
    class C3347l extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ OnUpdateDeviceCurGroupListener f12470a;

        C3347l(DeviceDataShare deviceDataShare, OnUpdateDeviceCurGroupListener onUpdateDeviceCurGroupListener) {
            this.f12470a = onUpdateDeviceCurGroupListener;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "openDoubleGroupListen fail");
            this.f12470a.mo13674b(R.string.set_failed);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$m */
    /* loaded from: classes2.dex */
    public class C3348m extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ OnUpdateDeviceCurGroupListener f12471a;

        C3348m(DeviceDataShare deviceDataShare, OnUpdateDeviceCurGroupListener onUpdateDeviceCurGroupListener) {
            this.f12471a = onUpdateDeviceCurGroupListener;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "deleteDeviceListenGroup fail");
            this.f12471a.mo13674b(R.string.set_failed);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$n */
    /* loaded from: classes2.dex */
    public class C3349n extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ OnUpdateDeviceCurGroupListener f12472a;

        C3349n(DeviceDataShare deviceDataShare, OnUpdateDeviceCurGroupListener onUpdateDeviceCurGroupListener) {
            this.f12472a = onUpdateDeviceCurGroupListener;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "setDeviceListenGroup fail");
            this.f12472a.mo13674b(R.string.set_failed);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$o */
    /* loaded from: classes2.dex */
    public class C3350o extends ErrorConsumer {
        C3350o(DeviceDataShare deviceDataShare) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "getDeviceCurrentGroup fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$p */
    /* loaded from: classes2.dex */
    public class C3351p extends ErrorConsumer {
        C3351p(DeviceDataShare deviceDataShare) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "getDeviceListenGroup fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$q */
    /* loaded from: classes2.dex */
    public class C3352q extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ long f12473a;

        C3352q(long j) {
            this.f12473a = j;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "queryGroupWithMembers fail");
            newApiException.printStackTrace();
            if (DeviceDataShare.this.f12453i <= 3) {
                DeviceDataShare.this.m13809B0(this.f12473a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$r */
    /* loaded from: classes2.dex */
    public class C3353r extends ErrorConsumer {
        C3353r(DeviceDataShare deviceDataShare) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "queryDeviceInfo fail");
            newApiException.printStackTrace();
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$s */
    /* loaded from: classes2.dex */
    class C3354s extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ long f12475a;

        C3354s(long j) {
            this.f12475a = j;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "updateGroupName fail");
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13429D0(this.f12475a);
            }
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$t */
    /* loaded from: classes2.dex */
    class C3355t extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ long f12477a;

        C3355t(long j) {
            this.f12477a = j;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "updateDeviceGroupAvatar fail");
            newApiException.printStackTrace();
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13410i0(this.f12477a);
            }
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$u */
    /* loaded from: classes2.dex */
    class C3356u implements Function<UploadFileEntity, ObservableSource<NewHttpResult>> {

        /* renamed from: a */
        final /* synthetic */ long f12479a;

        C3356u(long j) {
            this.f12479a = j;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: a */
        public ObservableSource<NewHttpResult> apply(@NonNull UploadFileEntity uploadFileEntity) throws Exception {
            HashMap hashMap = new HashMap();
            hashMap.put("account", DeviceDataShare.this.m13748k());
            hashMap.put("gavatar", uploadFileEntity.getUrl());
            return AppServiceClient.m11355a().m11357y(String.valueOf(this.f12479a), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString()));
        }
    }

    /* compiled from: DeviceDataShare.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.c.d0$v */
    /* loaded from: classes2.dex */
    class C3357v extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ long f12481a;

        C3357v(long j) {
            this.f12481a = j;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DeviceDataShare.f12443j, "updateMemberInGroupName fail");
            for (OnDeviceDataShareListener onDeviceDataShareListener : DeviceDataShare.this.f12445a) {
                onDeviceDataShareListener.mo13414Y(this.f12481a);
            }
        }
    }

    private DeviceDataShare() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B */
    public /* synthetic */ void m13808C(OnUpdateDeviceCurGroupListener onUpdateDeviceCurGroupListener, HttpDataList httpDataList) throws Exception {
        ArrayList<TempGroup> data = httpDataList.getData();
        if (data.size() == 0) {
            onUpdateDeviceCurGroupListener.mo13675a();
            m13787M0();
            return;
        }
        m13797H0(data, onUpdateDeviceCurGroupListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public /* synthetic */ void m13804E(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "createGroupForDevice success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13423L0();
        }
        m13789L0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F */
    public /* synthetic */ ArrayList m13800G(HttpDataList httpDataList) throws Exception {
        ArrayList data = httpDataList.getData();
        this.f12447c.clear();
        this.f12446b.clear();
        this.f12446b.addAll(data);
        Iterator it2 = data.iterator();
        while (it2.hasNext()) {
            TempGroup tempGroup = (TempGroup) it2.next();
            this.f12447c.put(Long.valueOf(tempGroup.getGid()), tempGroup);
        }
        return data;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public /* synthetic */ void m13796I(ArrayList arrayList) throws Exception {
        C4161y.m11049f(f12443j, "getDeviceGroupList success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13422M0(arrayList);
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: H0 */
    private void m13797H0(ArrayList<TempGroup> arrayList, final OnUpdateDeviceCurGroupListener onUpdateDeviceCurGroupListener) {
        ArrayList arrayList2 = new ArrayList();
        Iterator<TempGroup> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Long.valueOf(it2.next().getGid()));
        }
        HashMap hashMap = new HashMap();
        hashMap.put("gidList", arrayList2);
        AppServiceClient.m11355a().m11358x(m13748k(), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.h
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13759e0(onUpdateDeviceCurGroupListener, (NewHttpResult) obj);
            }
        }, new C3348m(this, onUpdateDeviceCurGroupListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public /* synthetic */ void m13792K(TempGroup tempGroup) throws Exception {
        C4161y.m11049f(f12443j, "getDeviceCurrentGroup success");
        if (tempGroup.getGid() == 0) {
            this.f12448d = null;
        } else {
            this.f12448d = tempGroup;
        }
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13412d0(this.f12448d, this.f12449e);
        }
        m13805D0();
    }

    /* renamed from: J0 */
    private void m13793J0() {
        this.f12445a.clear();
        this.f12446b.clear();
        this.f12447c.clear();
        this.f12449e.clear();
        this.f12448d = null;
        this.f12450f = null;
        this.f12451g = null;
        this.f12452h = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public /* synthetic */ void m13788M(TempGroup tempGroup) throws Exception {
        C4161y.m11049f(f12443j, "queryGroupWithMembers success");
        this.f12453i = 0;
        this.f12452h = tempGroup;
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13425H(tempGroup);
        }
        TempGroup tempGroup2 = this.f12447c.get(Long.valueOf(tempGroup.getGid()));
        if (tempGroup2 == null) {
            this.f12446b.add(tempGroup);
            this.f12447c.put(Long.valueOf(tempGroup.getGid()), tempGroup);
        } else {
            tempGroup2.setGname(tempGroup.getGname());
            tempGroup2.setAvatar(tempGroup.getAvatar());
            tempGroup2.setOwner(tempGroup.getOwner());
            if (tempGroup.getUserCount() != 0) {
                tempGroup2.setUserCount(tempGroup.getUserCount());
            } else if (tempGroup.getUserList() != null) {
                tempGroup2.setUserCount(tempGroup.getUserList().size());
            }
        }
        for (OnDeviceDataShareListener onDeviceDataShareListener2 : this.f12445a) {
            onDeviceDataShareListener2.mo13422M0(this.f12446b);
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: L0 */
    private void m13789L0() {
        Observable.timer(1500L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.q
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13747k0((Long) obj);
            }
        });
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: M0 */
    private void m13787M0() {
        Observable.timer(1500L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.g
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13743m0((Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public /* synthetic */ void m13784O(NetDeviceModel netDeviceModel) throws Exception {
        NetDeviceModel mo14226e = AppDatabase.m14276F().mo14269H().mo14226e(netDeviceModel.getUserId());
        mo14226e.setNickname(netDeviceModel.getNickname());
        mo14226e.setAvatar(netDeviceModel.getAvatar());
        AppDatabase.m14276F().mo14269H().mo14227d(mo14226e);
        this.f12451g = mo14226e;
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: N0 */
    private void m13785N0(final long j) {
        Observable.timer(1500L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.d
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13739o0(j, (Long) obj);
            }
        });
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: O0 */
    private void m13783O0() {
        Observable.timer(100L, TimeUnit.MILLISECONDS).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.a
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13735q0((Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P */
    public /* synthetic */ void m13780Q(NetDeviceModel netDeviceModel) throws Exception {
        C4161y.m11049f(f12443j, "queryDeviceInfo success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13424L(netDeviceModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public /* synthetic */ ArrayList m13776S(HttpDataList httpDataList) throws Exception {
        ArrayList data = httpDataList.getData();
        this.f12449e.clear();
        this.f12449e.addAll(data);
        return this.f12449e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: T */
    public /* synthetic */ void m13774U(ArrayList arrayList) throws Exception {
        C4161y.m11049f(f12443j, "getDeviceListenGroup success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13412d0(this.f12448d, this.f12449e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public /* synthetic */ void m13772W(long j, String str, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "updateMemberInGroupName success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13405p(j, str);
        }
        m13785N0(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X */
    public /* synthetic */ void m13770Y(long j, String str, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "updateGroupName success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13428E(j, str);
        }
        m13785N0(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void m13767a0(OnUpdateDeviceCurGroupListener onUpdateDeviceCurGroupListener, HttpDataList httpDataList) throws Exception {
        if (httpDataList.getData().size() > 0) {
            onUpdateDeviceCurGroupListener.mo13675a();
            m13787M0();
            return;
        }
        ArrayList<Long> arrayList = new ArrayList<>();
        Iterator<TempGroup> it2 = this.f12446b.iterator();
        while (it2.hasNext()) {
            TempGroup next = it2.next();
            if (this.f12448d == null || next.getGid() != this.f12448d.getGid()) {
                arrayList.add(Long.valueOf(next.getGid()));
                break;
            }
            while (it2.hasNext()) {
            }
        }
        if (arrayList.size() == 1) {
            m13791K0(arrayList, onUpdateDeviceCurGroupListener);
        } else {
            onUpdateDeviceCurGroupListener.mo13674b(R.string.set_failed);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b0 */
    public /* synthetic */ void m13763c0(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "orderDeviceGroup success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13426G0();
        }
        m13789L0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d0 */
    public /* synthetic */ void m13759e0(OnUpdateDeviceCurGroupListener onUpdateDeviceCurGroupListener, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "deleteDeviceListenGroup success");
        onUpdateDeviceCurGroupListener.mo13675a();
        m13787M0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public /* synthetic */ void m13755g0(long j, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "removeMemberFromDeviceGroup success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13404r(j);
        }
        m13785N0(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h0 */
    public /* synthetic */ void m13751i0(OnUpdateDeviceCurGroupListener onUpdateDeviceCurGroupListener, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "setDeviceListenGroup success");
        onUpdateDeviceCurGroupListener.mo13675a();
        m13787M0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j0 */
    public /* synthetic */ void m13747k0(Long l) throws Exception {
        m13717z0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public /* synthetic */ void m13743m0(Long l) throws Exception {
        m13811A0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n0 */
    public /* synthetic */ void m13739o0(long j, Long l) throws Exception {
        m13809B0(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p0 */
    public /* synthetic */ void m13735q0(Long l) throws Exception {
        m13807C0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r0 */
    public /* synthetic */ ObservableSource m13731s0(UploadFileEntity uploadFileEntity) throws Exception {
        HashMap hashMap = new HashMap();
        hashMap.put("avatar", uploadFileEntity.getUrl());
        return AppServiceClient.m11355a().m11373i(m13748k(), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString()));
    }

    /* renamed from: s */
    public static DeviceDataShare m13732s() {
        if (f12444k == null) {
            synchronized (DeviceDataShare.class) {
                if (f12444k == null) {
                    f12444k = new DeviceDataShare();
                }
            }
        }
        return f12444k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public /* synthetic */ void m13728u(long j, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "addMemberToDeviceGroup success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13418P(j);
        }
        m13785N0(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t0 */
    public /* synthetic */ void m13727u0(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "updateDeviceAvatar success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13416S();
        }
        m13783O0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ void m13724w(long[] jArr, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "batchAddGroupForDevice success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13427F(jArr);
        }
        m13789L0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v0 */
    public /* synthetic */ void m13723w0(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "updateDeviceInfo success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13416S();
        }
        EventBus.m174c().m164m(new SimpleEvent(12));
        m13783O0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public /* synthetic */ void m13720y(long[] jArr, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "batchQuitGroup success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13409k0(jArr);
        }
        m13789L0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x0 */
    public /* synthetic */ void m13719y0(long j, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "updateDeviceGroupAvatar success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13402t1(j);
        }
        m13785N0(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public /* synthetic */ void m13812A(long j, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f12443j, "changeDeviceGroupOwner success");
        for (OnDeviceDataShareListener onDeviceDataShareListener : this.f12445a) {
            onDeviceDataShareListener.mo13417R0(j);
        }
        m13785N0(j);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: A0 */
    public void m13811A0() {
        AppServiceClient.m11355a().m11403D(m13748k()).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.m
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13792K((TempGroup) obj);
            }
        }, new C3350o(this));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: B0 */
    public void m13809B0(long j) {
        this.f12453i++;
        AppServiceClient.m11355a().m11356z(String.valueOf(j), 1).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.o
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13788M((TempGroup) obj);
            }
        }, new C3352q(j));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: C0 */
    public void m13807C0() {
        AppServiceClient.m11355a().m11388S(m13748k()).compose(Transformer.m8717a()).doOnNext(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.l
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13784O((NetDeviceModel) obj);
            }
        }).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.j
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13780Q((NetDeviceModel) obj);
            }
        }, new C3353r(this));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: D0 */
    public void m13805D0() {
        AppServiceClient.m11355a().m11401F(m13748k()).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.device.mi3gw.c.k
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return DeviceDataShare.this.m13776S((HttpDataList) obj);
            }
        }).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.a0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13774U((ArrayList) obj);
            }
        }, new C3351p(this));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: E0 */
    public void m13803E0(final long j, final String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("nicknameIn", str);
        AppServiceClient.m11355a().m11404C(m13748k(), String.valueOf(j), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.y
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13772W(j, str, (NewHttpResult) obj);
            }
        }, new C3357v(j));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: F0 */
    public void m13801F0(final long j, final String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("account", m13748k());
        hashMap.put("gname", str);
        AppServiceClient.m11355a().m11362t(String.valueOf(j), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.b0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13770Y(j, str, (NewHttpResult) obj);
            }
        }, new C3354s(j));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: G0 */
    public void m13799G0(long... jArr) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (long j : jArr) {
            arrayList.add(Long.valueOf(j));
        }
        hashMap.put("gidList", arrayList);
        AppServiceClient.m11355a().m11374h(m13748k(), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.e
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13763c0((NewHttpResult) obj);
            }
        }, new C3338c());
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: I0 */
    public void m13795I0(final long j, String[] strArr) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        hashMap.put("account", m13748k());
        hashMap.put("accountList", arrayList);
        AppServiceClient.m11355a().m11366p(String.valueOf(j), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.c
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13755g0(j, (NewHttpResult) obj);
            }
        }, new C3341f(j));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: K0 */
    public void m13791K0(ArrayList<Long> arrayList, final OnUpdateDeviceCurGroupListener onUpdateDeviceCurGroupListener) {
        if (arrayList != null && arrayList.size() == 1) {
            HashMap hashMap = new HashMap();
            hashMap.put("gidList", arrayList);
            AppServiceClient.m11355a().m11379c(m13748k(), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.n
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    DeviceDataShare.this.m13751i0(onUpdateDeviceCurGroupListener, (NewHttpResult) obj);
                }
            }, new C3349n(this, onUpdateDeviceCurGroupListener));
            return;
        }
        onUpdateDeviceCurGroupListener.mo13674b(R.string.set_failed);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: P0 */
    public void m13781P0(File file) {
        AppServiceClient.m11355a().m11365q(MultipartBody.Part.createFormData("file", file.getName(), RequestBody.create(MediaType.parse("image/png"), file))).subscribeOn(Schedulers.m800io()).observeOn(Schedulers.m800io()).flatMap(new Function() { // from class: com.ifengyu.intercom.device.mi3gw.c.t
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return DeviceDataShare.this.m13731s0((UploadFileEntity) obj);
            }
        }).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.r
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13727u0((NewHttpResult) obj);
            }
        }, new C3343h());
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: Q0 */
    public void m13779Q0(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("nickname", str);
        AppServiceClient.m11355a().m11373i(m13748k(), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.x
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13723w0((NewHttpResult) obj);
            }
        }, new C3344i());
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: R0 */
    public void m13777R0(final long j, File file) {
        AppServiceClient.m11355a().m11365q(MultipartBody.Part.createFormData("file", file.getName(), RequestBody.create(MediaType.parse("image/png"), file))).subscribeOn(Schedulers.m800io()).observeOn(Schedulers.m800io()).flatMap(new C3356u(j)).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13719y0(j, (NewHttpResult) obj);
            }
        }, new C3355t(j));
    }

    public void addListener(OnDeviceDataShareListener onDeviceDataShareListener) {
        if (onDeviceDataShareListener != null) {
            this.f12445a.add(onDeviceDataShareListener);
        }
    }

    @SuppressLint({"CheckResult"})
    public void closeDoubleGroupListen(final OnUpdateDeviceCurGroupListener onUpdateDeviceCurGroupListener) {
        AppServiceClient.m11355a().m11401F(m13748k()).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.f
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13808C(onUpdateDeviceCurGroupListener, (HttpDataList) obj);
            }
        }, new C3347l(this, onUpdateDeviceCurGroupListener));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: d */
    public void m13762d(final long j, String[] strArr) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        hashMap.put("account", m13748k());
        hashMap.put("accountList", arrayList);
        AppServiceClient.m11355a().m11370l(String.valueOf(j), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.p
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13728u(j, (NewHttpResult) obj);
            }
        }, new C3340e(j));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: e */
    public void m13760e(final long... jArr) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (long j : jArr) {
            arrayList.add(Long.valueOf(j));
        }
        hashMap.put("gidList", arrayList);
        AppServiceClient.m11355a().m11389R(m13748k(), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.u
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13724w(jArr, (NewHttpResult) obj);
            }
        }, new C3337b(jArr));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: f */
    public void m13758f(final long... jArr) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (long j : jArr) {
            arrayList.add(Long.valueOf(j));
        }
        hashMap.put("gidList", arrayList);
        AppServiceClient.m11355a().m11376f(m13748k(), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.w
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13720y(jArr, (NewHttpResult) obj);
            }
        }, new C3336a(jArr));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: g */
    public void m13756g(final long j, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("account", m13748k());
        hashMap.put("newOwner", str);
        AppServiceClient.m11355a().m11359w(String.valueOf(j), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.c0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13812A(j, (NewHttpResult) obj);
            }
        }, new C3342g(j));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: h */
    public void m13754h(String[] strArr, String str) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        hashMap.put("account", m13748k());
        hashMap.put("accountList", arrayList);
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("gname", str);
        }
        AppServiceClient.m11355a().m11400G(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.z
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13804E((NewHttpResult) obj);
            }
        }, new C3339d());
    }

    /* renamed from: i */
    public TempGroup m13752i() {
        return this.f12452h;
    }

    /* renamed from: j */
    public TempGroup m13750j() {
        return this.f12448d;
    }

    /* renamed from: k */
    public String m13748k() {
        return this.f12451g.getAccount();
    }

    /* renamed from: l */
    public TempGroup m13746l(long j) {
        return this.f12447c.get(Long.valueOf(j));
    }

    /* renamed from: m */
    public ArrayList<TempGroup> m13744m() {
        return this.f12446b;
    }

    /* renamed from: n */
    public DeviceModel m13742n() {
        return this.f12450f;
    }

    /* renamed from: o */
    public long m13740o() {
        return this.f12451g.getUserId();
    }

    @SuppressLint({"CheckResult"})
    public void openDoubleGroupListen(final OnUpdateDeviceCurGroupListener onUpdateDeviceCurGroupListener) {
        if (this.f12446b.size() < 2) {
            onUpdateDeviceCurGroupListener.mo13674b(R.string.open_double_listen_group_fail_err);
        } else {
            AppServiceClient.m11355a().m11401F(m13748k()).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.i
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    DeviceDataShare.this.m13767a0(onUpdateDeviceCurGroupListener, (HttpDataList) obj);
                }
            }, new C3345j(this, onUpdateDeviceCurGroupListener));
        }
    }

    /* renamed from: p */
    public ArrayList<TempGroup> m13738p() {
        return this.f12449e;
    }

    /* renamed from: q */
    public NetDeviceModel m13736q() {
        return this.f12451g;
    }

    /* renamed from: r */
    public void m13734r(DeviceModel deviceModel) {
        m13793J0();
        this.f12450f = deviceModel;
        if (deviceModel.getNetDeviceModel() != null) {
            this.f12451g = deviceModel.getNetDeviceModel();
        } else {
            this.f12451g = AppDatabase.m14276F().mo14269H().mo14228c(deviceModel.getDeviceId());
        }
    }

    public void removeListener(OnDeviceDataShareListener onDeviceDataShareListener) {
        if (onDeviceDataShareListener != null) {
            this.f12445a.remove(onDeviceDataShareListener);
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: z0 */
    public void m13717z0() {
        AppServiceClient.m11355a().m11363s(m13748k()).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.device.mi3gw.c.s
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return DeviceDataShare.this.m13800G((HttpDataList) obj);
            }
        }).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.c.v
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDataShare.this.m13796I((ArrayList) obj);
            }
        }, new C3346k());
    }
}
