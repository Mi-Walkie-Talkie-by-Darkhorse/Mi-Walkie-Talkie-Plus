package com.ifengyu.intercom.p216ui.talk.p227c3;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import androidx.lifecycle.Lifecycle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.talk.entity.ItemAdapterEntity;
import com.ifengyu.intercom.p216ui.talk.p228d3.ContactView;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.p235e.UserByNameComparator;
import com.ifengyu.talk.p238h.OnAccountListener;
import com.shanlitech.p245et.model.ContactList;
import com.shanlitech.p245et.model.User;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.SearchResultEvent;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import p048b.p049a.p050a.p051a.Pinyin;

/* renamed from: com.ifengyu.intercom.ui.talk.c3.c0 */
/* loaded from: classes2.dex */
public class ContactPresenter extends BasePresenter<ContactView> implements OnAccountListener {

    /* renamed from: i */
    private static final String f15637i = "c0";

    /* renamed from: c */
    private final ArrayList<ItemAdapterEntity<Object>> f15638c = new ArrayList<>();

    /* renamed from: d */
    private final ArrayList<DeviceModel> f15639d = new ArrayList<>();

    /* renamed from: e */
    private final ArrayList<User> f15640e = new ArrayList<>();

    /* renamed from: f */
    private final HashMap<String, Integer> f15641f = new HashMap<>();

    /* renamed from: g */
    private final ArrayList<ItemAdapterEntity<Object>> f15642g = new ArrayList<>();

    /* renamed from: h */
    private boolean f15643h;

    public ContactPresenter(Context context) {
    }

    /* renamed from: A */
    private List<DeviceModel> m9345A(int i) {
        List<DeviceModel> mo14236i = AppDatabase.m14276F().mo14270E().mo14236i(i);
        for (DeviceModel deviceModel : mo14236i) {
            deviceModel.setNetDeviceModel(AppDatabase.m14276F().mo14269H().mo14228c(deviceModel.getDeviceId()));
        }
        return mo14236i;
    }

    /* renamed from: M */
    private void m9341M() {
        this.f15640e.clear();
        this.f15640e.addAll(SlTalkClient.m8513r().m8530a().m8458c());
        User m8456e = SlTalkClient.m8513r().m8530a().m8456e();
        if (m8456e != null) {
            this.f15640e.add(m8456e);
        }
        Collections.sort(this.f15640e, new UserByNameComparator());
        ArrayList arrayList = new ArrayList();
        Iterator<User> it2 = this.f15640e.iterator();
        while (it2.hasNext()) {
            User next = it2.next();
            String name = next.getName();
            if (TextUtils.isEmpty(name)) {
                arrayList.add(next);
            } else if (!MethodsUtils.m11298b(Pinyin.m21195d(name.charAt(0)).charAt(0))) {
                arrayList.add(next);
            }
        }
        if (arrayList.size() > 0) {
            this.f15640e.removeAll(arrayList);
            this.f15640e.addAll(arrayList);
        }
        m9328g0();
    }

    /* renamed from: N */
    private void m9340N() {
        this.f15639d.clear();
        ((ObservableSubscribeProxy) Observable.defer(new Callable() { // from class: com.ifengyu.intercom.ui.talk.c3.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return ContactPresenter.this.m9333X();
            }
        }).compose(Transformer.m8717a()).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.c3.f
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ContactPresenter.this.m9331b0((List) obj);
            }
        }, C4755b.f15633a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public /* synthetic */ Boolean m9338Q(String str, String str2) throws Exception {
        this.f15642g.clear();
        Iterator<ItemAdapterEntity<Object>> it2 = this.f15638c.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            ItemAdapterEntity<Object> next = it2.next();
            if (next.getType() != 1) {
                Object data = next.getData();
                if (data instanceof User) {
                    User user = (User) data;
                    if (user.getAccount().contains(str) || user.getName().toUpperCase().contains(str) || Pinyin.m21194e(user.getName(), "").toUpperCase().contains(str)) {
                        this.f15642g.add(next);
                    }
                } else if (data instanceof DeviceModel) {
                    DeviceModel deviceModel = (DeviceModel) data;
                    if (deviceModel.getNetDeviceModel() != null) {
                        NetDeviceModel netDeviceModel = deviceModel.getNetDeviceModel();
                        if (netDeviceModel.getAccount().contains(str) || netDeviceModel.getNickname().toUpperCase().contains(str) || Pinyin.m21194e(netDeviceModel.getNickname(), "").toUpperCase().contains(str)) {
                            this.f15642g.add(next);
                        }
                    }
                }
            }
        }
        return Boolean.valueOf(this.f15642g.size() > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public /* synthetic */ void m9336U(String str, Boolean bool) throws Exception {
        m10302s().mo9214a(bool.booleanValue(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W */
    public /* synthetic */ ObservableSource m9333X() throws Exception {
        return Observable.just(m9345A(13));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a0 */
    public /* synthetic */ void m9331b0(List list) throws Exception {
        this.f15639d.addAll(list);
        m9328g0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c0 */
    public static /* synthetic */ void m9330c0(Throwable th) throws Exception {
    }

    /* renamed from: g0 */
    private void m9328g0() {
        this.f15638c.clear();
        this.f15641f.clear();
        if (this.f15639d.size() > 0) {
            this.f15638c.add(new ItemAdapterEntity<>(1, UIUtils.m8603o(R.string.device_my_bind_device)));
        }
        Iterator<DeviceModel> it2 = this.f15639d.iterator();
        while (it2.hasNext()) {
            this.f15638c.add(new ItemAdapterEntity<>(3, it2.next()));
        }
        if (this.f15640e.size() > 0) {
            this.f15638c.add(new ItemAdapterEntity<>(1, UIUtils.m8603o(R.string.contact_members)));
        }
        char c = '$';
        Iterator<User> it3 = this.f15640e.iterator();
        while (it3.hasNext()) {
            User next = it3.next();
            if (!TextUtils.isEmpty(next.getName())) {
                char charAt = Pinyin.m21195d(next.getName().charAt(0)).charAt(0);
                if (MethodsUtils.m11298b(charAt)) {
                    if (charAt != c) {
                        this.f15638c.add(new ItemAdapterEntity<>(1, String.valueOf(charAt)));
                        this.f15641f.put(String.valueOf(charAt), Integer.valueOf(this.f15638c.size() - 1));
                        c = charAt;
                    }
                } else if (c != '#') {
                    this.f15638c.add(new ItemAdapterEntity<>(1, String.valueOf('#')));
                    this.f15641f.put(String.valueOf('#'), Integer.valueOf(this.f15638c.size() - 1));
                    c = '#';
                }
            }
            this.f15638c.add(new ItemAdapterEntity<>(3, next));
        }
        m10302s().mo9213d();
    }

    /* renamed from: B */
    public ArrayList<ItemAdapterEntity<Object>> m9344B() {
        return this.f15642g;
    }

    /* renamed from: I */
    public HashMap<String, Integer> m9343I() {
        return this.f15641f;
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: J */
    public void m9342J(final String str) {
        ((ObservableSubscribeProxy) Observable.just(str).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.ui.talk.c3.c
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return ContactPresenter.this.m9338Q(str, (String) obj);
            }
        }).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.c3.a
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ContactPresenter.this.m9336U(str, (Boolean) obj);
            }
        }, C4759e.f15648a);
    }

    /* renamed from: e0 */
    public void m9329e0(DeviceModel deviceModel) {
        if (deviceModel.getNetDeviceModel() != null) {
            this.f15643h = true;
            if (SlTalkClient.m8513r().m8530a().m8450k(deviceModel.getNetDeviceModel().getAccount())) {
                return;
            }
            m10302s().mo9212g1();
        }
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: f0 */
    public void mo8373f0(SearchResultEvent searchResultEvent) {
        if (this.f15643h) {
            this.f15643h = false;
            if (searchResultEvent.getUser() == null) {
                m10302s().mo9212g1();
            } else {
                m10302s().mo9215J(searchResultEvent.getUser());
            }
        }
    }

    /* renamed from: h0 */
    public void m9327h0() {
        m9341M();
        m9340N();
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: j0 */
    public void mo8372j0(ContactList contactList) {
        m9327h0();
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    public void onOnlineStatusChange(OnlineStatusEvent onlineStatusEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: q */
    public void mo9227q() {
        super.mo9227q();
        SlTalkClient.m8513r().m8530a().removeListener(this);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: v */
    public void mo9229n(ContactView contactView) {
        super.mo9229n(contactView);
        SlTalkClient.m8513r().m8530a().addListener(this);
    }

    /* renamed from: w */
    public ArrayList<ItemAdapterEntity<Object>> m9325w() {
        return this.f15638c;
    }

    /* renamed from: y */
    public int m9324y() {
        return this.f15640e.size();
    }
}
