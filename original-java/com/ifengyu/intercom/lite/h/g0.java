package com.ifengyu.intercom.lite.h;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.lifecycle.a;
import androidx.lifecycle.p;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.database.LiteDatabase;
import com.ifengyu.intercom.lite.models.ChannelModel;
import com.ifengyu.intercom.lite.models.ConfigFileModel;
import com.ifengyu.intercom.lite.utils.g;
import com.ifengyu.library.a.l;
import com.ifengyu.library.a.m;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: ConfigFileViewModel.java */
/* loaded from: classes2.dex */
public class g0 extends a {
    private static final String f = "g0";

    /* renamed from: b  reason: collision with root package name */
    private p<List<ConfigFileModel>> f5606b = new p<>();

    /* renamed from: c  reason: collision with root package name */
    private p<ConfigFileModel> f5607c = new p<>();
    private p<List<ChannelModel>> d = new p<>();
    private LiteDatabase e;

    public g0(@NonNull Application application) {
        super(application);
        this.e = LiteDatabase.a(application);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Observable<ConfigFileModel> h(ConfigFileModel configFileModel) {
        return Observable.just(configFileModel).flatMap(new Function() { // from class: com.ifengyu.intercom.lite.h.l
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable i;
                i = g0.this.i((ConfigFileModel) obj);
                return i;
            }
        }).map(new Function() { // from class: com.ifengyu.intercom.lite.h.h
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return g0.this.d((ConfigFileModel) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Observable<ConfigFileModel> i(final ConfigFileModel configFileModel) {
        return (Observable) this.e.a(new Callable() { // from class: com.ifengyu.intercom.lite.h.q
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return g0.this.e(configFileModel);
            }
        });
    }

    public void a(ConfigFileModel configFileModel) {
        Observable.just(configFileModel).map(new Function() { // from class: com.ifengyu.intercom.lite.h.f
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return g0.this.b((ConfigFileModel) obj);
            }
        }).flatMap(new Function() { // from class: com.ifengyu.intercom.lite.h.p
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable h;
                h = g0.this.h((ConfigFileModel) obj);
                return h;
            }
        }).subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.h.n
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                g0.this.c((ConfigFileModel) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.lite.h.c
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                g0.this.a((Throwable) obj);
            }
        });
    }

    public p<List<ConfigFileModel>> b() {
        return this.f5606b;
    }

    public p<List<ChannelModel>> c() {
        return this.d;
    }

    public p<ConfigFileModel> d() {
        return this.f5607c;
    }

    public void e() {
        Observable.just(this.e.m()).map(a.f5590a).subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.h.k
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                g0.this.c((List) obj);
            }
        }, o.f5630a);
    }

    public void g(ConfigFileModel configFileModel) {
        Observable.just(configFileModel).map(new Function() { // from class: com.ifengyu.intercom.lite.h.g
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return g0.this.f((ConfigFileModel) obj);
            }
        }).subscribeOn(Schedulers.io()).subscribe(s.f5635a, m.f5628a);
    }

    public /* synthetic */ ConfigFileModel b(ConfigFileModel configFileModel) throws Exception {
        configFileModel.setName(m.b((int) R.string.lite_config_file_title).concat(String.valueOf(e(this.e.m().a()))));
        return configFileModel;
    }

    public /* synthetic */ void c(List list) throws Exception {
        this.f5606b.postValue(list);
    }

    public /* synthetic */ ConfigFileModel f(ConfigFileModel configFileModel) throws Exception {
        this.e.m().a(configFileModel);
        return configFileModel;
    }

    public /* synthetic */ void c(ConfigFileModel configFileModel) throws Exception {
        String str = f;
        z.a(str, "inset config file success, model: " + configFileModel.toString());
        this.f5607c.postValue(configFileModel);
    }

    public /* synthetic */ ConfigFileModel d(ConfigFileModel configFileModel) throws Exception {
        configFileModel.setChannelModelList(this.e.l().a(configFileModel.getId()));
        return configFileModel;
    }

    private int e(List<ConfigFileModel> list) {
        ArrayList arrayList = new ArrayList();
        String b2 = m.b((int) R.string.lite_config_file_title);
        arrayList.add(0);
        for (ConfigFileModel configFileModel : list) {
            String name = configFileModel.getName();
            if (name != null && name.startsWith(b2)) {
                String substring = name.substring(b2.length());
                if (!substring.startsWith("0") && l.c(substring)) {
                    try {
                        arrayList.add(Integer.valueOf(Integer.parseInt(substring)));
                    } catch (NumberFormatException e) {
                        z.a(f, e.getCause());
                    }
                }
            }
        }
        if (arrayList.size() <= 1) {
            return 1;
        }
        Integer[] numArr = (Integer[]) arrayList.toArray(new Integer[0]);
        int a2 = g.a(numArr, 1, numArr.length - 1);
        return a2 == -1 ? list.size() + 1 : a2;
    }

    public /* synthetic */ void d(List list) throws Exception {
        z.a(f, "load channel success");
        this.d.postValue(list);
    }

    public /* synthetic */ void a(Throwable th) throws Exception {
        z.a(f, "insert config file failed", th);
        this.f5607c.postValue(null);
    }

    public /* synthetic */ List b(List list) throws Exception {
        this.e.m().a(list);
        return list;
    }

    public void b(Long l) {
        Observable.just(l).map(new Function() { // from class: com.ifengyu.intercom.lite.h.e
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return g0.this.a((Long) obj);
            }
        }).subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.h.j
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                g0.this.d((List) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.lite.h.r
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                g0.this.b((Throwable) obj);
            }
        });
    }

    public void a(List<ConfigFileModel> list) {
        Observable.just(list).map(new Function() { // from class: com.ifengyu.intercom.lite.h.d
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return g0.this.b((List) obj);
            }
        }).subscribeOn(Schedulers.io()).subscribe(i.f5624a, b.f5592a);
    }

    public /* synthetic */ void b(Throwable th) throws Exception {
        z.a(f, "load channel failed", th);
        this.d.postValue(null);
    }

    public /* synthetic */ List a(Long l) throws Exception {
        return this.e.l().a(l);
    }

    public /* synthetic */ Observable e(ConfigFileModel configFileModel) throws Exception {
        long b2 = this.e.m().b(configFileModel);
        configFileModel.setId(Long.valueOf(b2));
        List<ChannelModel> channelModelList = configFileModel.getChannelModelList();
        if (channelModelList != null) {
            for (ChannelModel channelModel : channelModelList) {
                channelModel.setConfigId(Long.valueOf(b2));
            }
            this.e.l().a(channelModelList);
        }
        return Observable.just(configFileModel);
    }
}
