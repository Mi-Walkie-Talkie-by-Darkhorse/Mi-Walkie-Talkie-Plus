package com.ifengyu.intercom.p189l.p190a.p192b.p195c;

import android.annotation.SuppressLint;
import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.device.lite.utils.C3326f;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.ConfigFileModel;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.library.utils.UIUtils;
import io.reactivex.Observable;
import io.reactivex.annotations.NonNull;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

/* renamed from: com.ifengyu.intercom.l.a.b.c.u */
/* loaded from: classes2.dex */
public class ConfigFileViewModel extends AndroidViewModel {

    /* renamed from: g */
    private static final String f14110g = "u";

    /* renamed from: b */
    private final MutableLiveData<List<ConfigFileModel>> f14111b;

    /* renamed from: c */
    private final MutableLiveData<OperationResult> f14112c;

    /* renamed from: d */
    private final MutableLiveData<ConfigFileModel> f14113d;

    /* renamed from: e */
    private final MutableLiveData<List<ChannelModel>> f14114e;

    /* renamed from: f */
    private final AppDatabase f14115f;

    /* compiled from: ConfigFileViewModel.java */
    /* renamed from: com.ifengyu.intercom.l.a.b.c.u$a */
    /* loaded from: classes2.dex */
    class C3990a implements Function<List<ConfigFileModel>, Object> {
        C3990a() {
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: a */
        public Object apply(@NonNull List<ConfigFileModel> list) throws Exception {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (ConfigFileModel configFileModel : list) {
                arrayList.add(configFileModel);
            }
            ConfigFileViewModel.this.f14115f.mo14271D().mo14250c(arrayList);
            return list;
        }
    }

    public ConfigFileViewModel(@androidx.annotation.NonNull Application application) {
        super(application);
        this.f14111b = new MutableLiveData<>();
        this.f14112c = new MutableLiveData<>();
        this.f14113d = new MutableLiveData<>();
        this.f14114e = new MutableLiveData<>();
        this.f14115f = AppDatabase.m14275G(application);
    }

    /* renamed from: B */
    private /* synthetic */ ConfigFileModel m11869B(ConfigFileModel configFileModel) throws Exception {
        configFileModel.setChannelModelList(this.f14115f.mo14272C().mo14255b(configFileModel.getId()));
        return configFileModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public /* synthetic */ Observable m11866E(ConfigFileModel configFileModel) throws Exception {
        long mo14248e = this.f14115f.mo14271D().mo14248e(configFileModel);
        configFileModel.setId(Long.valueOf(mo14248e));
        List<ChannelModel> channelModelList = configFileModel.getChannelModelList();
        if (channelModelList != null) {
            for (ChannelModel channelModel : channelModelList) {
                channelModel.setConfigId(Long.valueOf(mo14248e));
                channelModel.setId(null);
            }
            this.f14115f.mo14272C().mo14256a(channelModelList);
        }
        return Observable.just(configFileModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F */
    public /* synthetic */ void m11864G(List list) throws Exception {
        this.f14111b.postValue(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public /* synthetic */ List m11861J(ConfigFileModel configFileModel) throws Exception {
        return m11849V(configFileModel, this.f14115f.mo14272C().mo14255b(configFileModel.getId()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public /* synthetic */ void m11859L(List list) throws Exception {
        C4161y.m11054a(f14110g, "load channel success");
        this.f14114e.postValue(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public /* synthetic */ void m11857N(Throwable th) throws Exception {
        C4161y.m11051d(f14110g, "load channel failed", th);
        this.f14114e.postValue(null);
    }

    /* renamed from: P */
    private /* synthetic */ ConfigFileModel m11855P(ConfigFileModel configFileModel) throws Exception {
        this.f14115f.mo14271D().mo14249d(configFileModel);
        return configFileModel;
    }

    /* renamed from: V */
    private List<ChannelModel> m11849V(ConfigFileModel configFileModel, List<ChannelModel> list) {
        Collections.sort(list);
        int fromDeviceType = configFileModel.getFromDeviceType();
        if (fromDeviceType == 9) {
            if (list.size() != 16) {
                return null;
            }
            return list;
        } else if (fromDeviceType != 14 || list.size() < 20) {
            return null;
        } else {
            ArrayList arrayList = new ArrayList(20);
            ArrayList arrayList2 = new ArrayList(80);
            for (int i = 0; i < list.size(); i++) {
                ChannelModel channelModel = list.get(i);
                if (i < 20) {
                    if (!channelModel.getIsRemoteCh()) {
                        return null;
                    }
                    arrayList.add(channelModel);
                } else if (!channelModel.getIsCustomCh()) {
                    return null;
                } else {
                    arrayList2.add(channelModel);
                }
            }
            for (int i2 = 1; i2 <= 80; i2++) {
                int i3 = i2 - 1;
                if (i3 < arrayList2.size() && ((ChannelModel) arrayList2.get(i3)).getChannelSeq() != i2) {
                    ChannelModel channelModel2 = new ChannelModel();
                    channelModel2.setConfigId(configFileModel.getId());
                    channelModel2.setChannelSeq(i2);
                    channelModel2.setChannelType(2);
                    arrayList2.add(i3, channelModel2);
                }
            }
            ArrayList arrayList3 = new ArrayList(100);
            arrayList3.addAll(arrayList);
            arrayList3.addAll(arrayList2);
            return arrayList3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public Observable<ConfigFileModel> m11840j(ConfigFileModel configFileModel) {
        return Observable.just(configFileModel).flatMap(new Function() { // from class: com.ifengyu.intercom.l.a.b.c.e
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable m11839k;
                m11839k = ConfigFileViewModel.this.m11839k((ConfigFileModel) obj);
                return m11839k;
            }
        }).map(new Function() { // from class: com.ifengyu.intercom.l.a.b.c.h
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ConfigFileModel configFileModel2 = (ConfigFileModel) obj;
                ConfigFileViewModel.this.m11868C(configFileModel2);
                return configFileModel2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public Observable<ConfigFileModel> m11839k(final ConfigFileModel configFileModel) {
        return (Observable) this.f14115f.m21923y(new Callable() { // from class: com.ifengyu.intercom.l.a.b.c.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return ConfigFileViewModel.this.m11866E(configFileModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m11835o(Throwable th) throws Exception {
        C4161y.m11051d(f14110g, "delete config file failed", th);
        this.f14112c.postValue(new OperationResult(OperationResult.ACTION_CONFIG_FILE_DELETE, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m11833q(Object obj) throws Exception {
        this.f14112c.postValue(new OperationResult(OperationResult.ACTION_CONFIG_FILE_DELETE, 1));
    }

    /* renamed from: r */
    private /* synthetic */ List m11832r(List list) throws Exception {
        this.f14115f.mo14271D().mo14250c(list);
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public /* synthetic */ void m11829u(List list) throws Exception {
        C4161y.m11054a(f14110g, "delete config file success");
        this.f14112c.postValue(new OperationResult(OperationResult.ACTION_CONFIG_FILE_DELETE, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ void m11827w(Throwable th) throws Exception {
        C4161y.m11051d(f14110g, "delete config file failed", th);
        this.f14112c.postValue(new OperationResult(OperationResult.ACTION_CONFIG_FILE_DELETE, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public /* synthetic */ void m11825y(ConfigFileModel configFileModel) throws Exception {
        String str = f14110g;
        C4161y.m11054a(str, "inset config file success, model: " + configFileModel.toString());
        this.f14113d.postValue(configFileModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public /* synthetic */ void m11870A(Throwable th) throws Exception {
        C4161y.m11051d(f14110g, "insert config file failed", th);
        this.f14113d.postValue(null);
    }

    /* renamed from: C */
    public /* synthetic */ ConfigFileModel m11868C(ConfigFileModel configFileModel) {
        m11869B(configFileModel);
        return configFileModel;
    }

    /* renamed from: Q */
    public /* synthetic */ ConfigFileModel m11854Q(ConfigFileModel configFileModel) {
        m11855P(configFileModel);
        return configFileModel;
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: T */
    public void m11851T() {
        Observable.just(this.f14115f.mo14271D()).map(C3989t.f14109a).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.l.a.b.c.j
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConfigFileViewModel.this.m11864G((List) obj);
            }
        }, C3984o.f14104a);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: U */
    public void m11850U(ConfigFileModel configFileModel) {
        Observable.just(configFileModel).map(new Function() { // from class: com.ifengyu.intercom.l.a.b.c.p
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return ConfigFileViewModel.this.m11861J((ConfigFileModel) obj);
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.l.a.b.c.n
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConfigFileViewModel.this.m11859L((List) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.l.a.b.c.g
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConfigFileViewModel.this.m11857N((Throwable) obj);
            }
        });
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: W */
    public void m11848W(ConfigFileModel configFileModel) {
        Observable.just(configFileModel).map(new Function() { // from class: com.ifengyu.intercom.l.a.b.c.c
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ConfigFileModel configFileModel2 = (ConfigFileModel) obj;
                ConfigFileViewModel.this.m11854Q(configFileModel2);
                return configFileModel2;
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(C3971b.f14091a, C3973d.f14093a);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: d */
    public void m11846d() {
        Observable.just(this.f14115f.mo14271D().mo14251b()).subscribeOn(Schedulers.m800io()).map(new C3990a()).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.l.a.b.c.s
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConfigFileViewModel.this.m11833q(obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.l.a.b.c.r
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConfigFileViewModel.this.m11835o((Throwable) obj);
            }
        });
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: e */
    public void m11845e(List<ConfigFileModel> list) {
        Observable.just(list).map(new Function() { // from class: com.ifengyu.intercom.l.a.b.c.m
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List list2 = (List) obj;
                ConfigFileViewModel.this.m11831s(list2);
                return list2;
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.l.a.b.c.l
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConfigFileViewModel.this.m11829u((List) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.l.a.b.c.i
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConfigFileViewModel.this.m11827w((Throwable) obj);
            }
        });
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: f */
    public void m11844f(ConfigFileModel configFileModel) {
        String m8603o = UIUtils.m8603o(R.string.config_file_title);
        configFileModel.setName(m8603o + C3326f.m13836b(System.currentTimeMillis(), "yyyyMMddHHmmss"));
        Observable.just(configFileModel).flatMap(new Function() { // from class: com.ifengyu.intercom.l.a.b.c.q
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable m11840j;
                m11840j = ConfigFileViewModel.this.m11840j((ConfigFileModel) obj);
                return m11840j;
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.l.a.b.c.f
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConfigFileViewModel.this.m11825y((ConfigFileModel) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.l.a.b.c.k
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConfigFileViewModel.this.m11870A((Throwable) obj);
            }
        });
    }

    /* renamed from: g */
    public MutableLiveData<List<ConfigFileModel>> m11843g() {
        return this.f14111b;
    }

    /* renamed from: h */
    public MutableLiveData<List<ChannelModel>> m11842h() {
        return this.f14114e;
    }

    /* renamed from: i */
    public MutableLiveData<ConfigFileModel> m11841i() {
        return this.f14113d;
    }

    /* renamed from: l */
    public MutableLiveData<OperationResult> m11838l() {
        return this.f14112c;
    }

    /* renamed from: s */
    public /* synthetic */ List m11831s(List list) {
        m11832r(list);
        return list;
    }
}
