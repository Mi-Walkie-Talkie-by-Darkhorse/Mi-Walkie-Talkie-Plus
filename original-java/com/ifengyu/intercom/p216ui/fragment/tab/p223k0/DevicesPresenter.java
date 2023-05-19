package com.ifengyu.intercom.p216ui.fragment.tab.p223k0;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.lifecycle.Lifecycle;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.database.p155a.DeviceDao;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p187j.DeviceConstants;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.fragment.tab.p224l0.DevicesView;
import com.ifengyu.library.http.entity.HttpDataList;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.k0.r */
/* loaded from: classes2.dex */
public class DevicesPresenter extends BasePresenter<DevicesView> {

    /* renamed from: e */
    private static final String f15340e = "r";

    /* renamed from: c */
    private final ArrayList<DeviceModel> f15341c = new ArrayList<>();

    /* renamed from: d */
    private final Context f15342d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DevicesPresenter.java */
    /* renamed from: com.ifengyu.intercom.ui.fragment.tab.k0.r$a */
    /* loaded from: classes2.dex */
    public class C4605a extends ErrorConsumer {

        /* renamed from: a */
        final /* synthetic */ int f15343a;

        C4605a(int i) {
            this.f15343a = i;
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DevicesPresenter.f15340e, "getBindDeviceList fail");
            newApiException.printStackTrace();
            DevicesPresenter.this.m9873v0(this.f15343a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DevicesPresenter.java */
    /* renamed from: com.ifengyu.intercom.ui.fragment.tab.k0.r$b */
    /* loaded from: classes2.dex */
    public class C4606b extends ErrorConsumer {
        C4606b() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DevicesPresenter.f15340e, "unbindMi3GwDevice fail");
            ((DevicesView) DevicesPresenter.this.m10302s()).mo9852u();
        }
    }

    public DevicesPresenter(Context context) {
        this.f15342d = context;
        m9870y();
    }

    /* renamed from: A */
    private void m9901A(List<DeviceModel> list, int i) {
        Iterator<DeviceModel> it2 = this.f15341c.iterator();
        while (it2.hasNext()) {
            if (it2.next().getDeviceType() == i) {
                it2.remove();
            }
        }
        this.f15341c.addAll(list);
        Collections.sort(this.f15341c);
        m10302s().mo9855j1().notifyDataSetChanged();
    }

    /* renamed from: F0 */
    private void m9897F0(DeviceModel deviceModel) {
        if (deviceModel.getNetDeviceModel() == null) {
            m10302s().mo9852u();
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("deviceUid", Long.valueOf(deviceModel.getNetDeviceModel().getUserId()));
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11385V(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.k0.m
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DevicesPresenter.this.m9875u0((NewHttpResult) obj);
            }
        }, new C4606b());
    }

    /* renamed from: I */
    private List<DeviceModel> m9896I(int i) {
        List<DeviceModel> mo14236i = AppDatabase.m14276F().mo14270E().mo14236i(i);
        for (DeviceModel deviceModel : mo14236i) {
            NetDeviceModel mo14228c = AppDatabase.m14276F().mo14269H().mo14228c(deviceModel.getDeviceId());
            mo14228c.setOnline(0);
            deviceModel.setNetDeviceModel(mo14228c);
        }
        return mo14236i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: N */
    public static /* synthetic */ void m9893N(DeviceModel deviceModel) throws Exception {
        String str = f15340e;
        C4161y.m11054a(str, "connectPreDevice deviceModel:" + deviceModel.toString());
        int deviceType = deviceModel.getDeviceType();
        if (deviceType == 1 || deviceType == 9 || deviceType == 14 || deviceType == 4 || deviceType == 5) {
            BleCoreClient.m12373n().m12386a(deviceModel.getAddress(), deviceType);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: O */
    public static /* synthetic */ void m9892O(Throwable th) throws Exception {
        C4161y.m11052c(f15340e, "connectPreDevice query deviceModel error");
        th.printStackTrace();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Q */
    public /* synthetic */ ObservableSource m9890R(int i) throws Exception {
        return Observable.just(m9896I(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U */
    public /* synthetic */ void m9888V(int i, List list) throws Exception {
        if (list != null) {
            m9901A(list, i);
        }
        m10302s().mo9859c0(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: W */
    public static /* synthetic */ ArrayList m9887W(int i, HttpDataList httpDataList) throws Exception {
        ArrayList arrayList = new ArrayList();
        ArrayList data = httpDataList.getData();
        Iterator it2 = data.iterator();
        while (it2.hasNext()) {
            NetDeviceModel netDeviceModel = (NetDeviceModel) it2.next();
            DeviceModel deviceModel = new DeviceModel();
            deviceModel.setName(netDeviceModel.getNickname());
            deviceModel.setAddress(netDeviceModel.getSn());
            deviceModel.setDeviceId(netDeviceModel.getSn());
            deviceModel.setDeviceType(i);
            deviceModel.setDeviceColor(netDeviceModel.getColor());
            deviceModel.setCreateTime(netDeviceModel.getBindTime());
            deviceModel.setUpdateTime(netDeviceModel.getBindTime());
            deviceModel.setNetDeviceModel(netDeviceModel);
            DeviceModel mo14242c = AppDatabase.m14276F().mo14270E().mo14242c(netDeviceModel.getSn());
            if (mo14242c != null) {
                deviceModel.setAgreedProtocolVersion(mo14242c.getAgreedProtocolVersion());
            }
            arrayList.add(deviceModel);
        }
        AppDatabase.m14276F().mo14270E().mo14240e(i);
        for (DeviceModel deviceModel2 : AppDatabase.m14276F().mo14270E().mo14236i(i)) {
            AppDatabase.m14276F().mo14269H().mo14229b(deviceModel2.getDeviceId());
        }
        AppDatabase.m14276F().mo14270E().mo14244a(arrayList);
        AppDatabase.m14276F().mo14269H().mo14230a(data);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X */
    public /* synthetic */ void m9885a0(int i, ArrayList arrayList) throws Exception {
        C4161y.m11049f(f15340e, "getBindDeviceList success");
        m9901A(arrayList, i);
        m10302s().mo9858c1(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c0 */
    public /* synthetic */ void m9882e0(int i, List list) throws Exception {
        if (list != null) {
            m9901A(list, i);
        }
        m10302s().mo9858c1(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public /* synthetic */ ObservableSource m9880h0() throws Exception {
        return Observable.just(Boolean.valueOf(m9868z0()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p0 */
    public /* synthetic */ void m9878q0(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            m10302s().mo9860P0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r0 */
    public static /* synthetic */ void m9877r0(Throwable th) throws Exception {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s0 */
    public /* synthetic */ void m9875u0(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(f15340e, "unbindMi3GwDevice success");
        m10302s().mo9853s();
    }

    /* renamed from: z0 */
    private boolean m9868z0() {
        try {
            DeviceDao mo14270E = AppDatabase.m14276F().mo14270E();
            List<DeviceModel> mo14243b = mo14270E.mo14243b();
            for (DeviceModel deviceModel : mo14243b) {
                deviceModel.setConnected(false);
            }
            mo14270E.mo14238g(mo14243b);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: A0 */
    public void m9900A0() {
        ((ObservableSubscribeProxy) Observable.defer(new Callable() { // from class: com.ifengyu.intercom.ui.fragment.tab.k0.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return DevicesPresenter.this.m9880h0();
            }
        }).compose(Transformer.m8717a()).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.k0.d
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DevicesPresenter.this.m9878q0((Boolean) obj);
            }
        }, C4596i.f15330a);
    }

    /* renamed from: B */
    public ArrayList<DeviceModel> m9899B() {
        return this.f15341c;
    }

    /* renamed from: E0 */
    public void m9898E0(DeviceModel deviceModel) {
        m10302s().mo9984V();
        int deviceType = deviceModel.getDeviceType();
        if (deviceType != 1) {
            if (deviceType != 9) {
                if (deviceType != 4 && deviceType != 5) {
                    if (deviceType == 13) {
                        m9897F0(deviceModel);
                        return;
                    } else if (deviceType != 14) {
                        return;
                    }
                }
            }
            BleCoreClient.m12373n().m12382e(deviceModel.getAddress());
            AppDatabase.m14275G(this.f15342d).mo14270E().mo14241d(deviceModel.getAddress());
            m10302s().mo9853s();
            return;
        }
        BleCoreClient.m12373n().m12382e(deviceModel.getAddress());
        AppDatabase.m14275G(this.f15342d).mo14270E().mo14241d(deviceModel.getAddress());
        MiTalkClientUtil.m11221b();
        m10302s().mo9853s();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0017, code lost:
        if (r0 != 14) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m9895J(DeviceModel deviceModel) {
        int deviceType = deviceModel.getDeviceType();
        if (deviceType != 1 && deviceType != 9 && deviceType != 4 && deviceType != 5) {
            if (deviceType == 13) {
                if (deviceModel.getNetDeviceModel() != null) {
                    if (deviceModel.getNetDeviceModel().getOnline() == 1) {
                        m10302s().mo9854l1(deviceModel);
                        return;
                    } else {
                        m10302s().mo9857f1(deviceModel);
                        return;
                    }
                }
            }
            if (DeviceConstants.m11980c(deviceType)) {
                return;
            }
            BleCoreClient.m12373n().m12385b();
            m10302s().mo9856i1();
            BleCoreClient.m12373n().m12386a(deviceModel.getAddress(), deviceType);
            return;
        }
        if (BleCoreClient.m12373n().m12372o(deviceModel.getAddress())) {
            m10302s().mo9854l1(deviceModel);
            return;
        }
        if (DeviceConstants.m11980c(deviceType)) {
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: v0 */
    public void m9873v0(final int i) {
        ((ObservableSubscribeProxy) Observable.defer(new Callable() { // from class: com.ifengyu.intercom.ui.fragment.tab.k0.g
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return DevicesPresenter.this.m9890R(i);
            }
        }).compose(Transformer.m8717a()).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.k0.e
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DevicesPresenter.this.m9888V(i, (List) obj);
            }
        }, C4604q.f15339a);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: x0 */
    public void m9871x0(final int i) {
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11371k().compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.ui.fragment.tab.k0.h
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return DevicesPresenter.m9887W(i, (HttpDataList) obj);
            }
        }).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.k0.j
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DevicesPresenter.this.m9885a0(i, (ArrayList) obj);
            }
        }, new C4605a(i));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: y */
    public void m9870y() {
        final String m11195o = MiTalkClientUtil.m11195o();
        String str = f15340e;
        C4161y.m11049f(str, "connectPreDevice:" + m11195o);
        Observable.timer(1L, TimeUnit.SECONDS).subscribeOn(Schedulers.m800io()).observeOn(Schedulers.m800io()).map(new Function() { // from class: com.ifengyu.intercom.ui.fragment.tab.k0.c
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                DeviceModel mo14239f;
                Long l = (Long) obj;
                mo14239f = AppDatabase.m14276F().mo14270E().mo14239f(m11195o);
                return mo14239f;
            }
        }).subscribe(C4588a.f15319a, C4599l.f15334a);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: y0 */
    public void m9869y0(final int i) {
        ((ObservableSubscribeProxy) Observable.defer(new Callable() { // from class: com.ifengyu.intercom.ui.fragment.tab.k0.k
            @Override // java.util.concurrent.Callable
            public final Object call() {
                ObservableSource just;
                just = Observable.just(AppDatabase.m14276F().mo14270E().mo14236i(i));
                return just;
            }
        }).compose(Transformer.m8717a()).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.k0.f
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DevicesPresenter.this.m9882e0(i, (List) obj);
            }
        }, C4604q.f15339a);
    }
}
