package com.ifengyu.intercom.p216ui.talk.p227c3;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.lifecycle.Lifecycle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import com.ifengyu.talk.http.entity.TempMember;
import com.ifengyu.talk.p235e.UserByNameComparator;
import com.ifengyu.talk.p238h.OnAccountListener;
import com.ifengyu.talk.p238h.OnGroupListener;
import com.ifengyu.talk.p238h.OnResultListener;
import com.shanlitech.p245et.ETStatusCode;
import com.shanlitech.p245et.model.ContactList;
import com.shanlitech.p245et.model.FailUser;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.GroupList;
import com.shanlitech.p245et.model.MemberList;
import com.shanlitech.p245et.model.User;
import com.shanlitech.p245et.notice.event.CreateGroupLimitAccountsEvent;
import com.shanlitech.p245et.notice.event.GroupEvent;
import com.shanlitech.p245et.notice.event.InviteGroupAckEvent;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.RequestResultEvent;
import com.shanlitech.p245et.notice.event.ResultEvent;
import com.shanlitech.p245et.notice.event.SearchResultEvent;
import com.shanlitech.p245et.notice.event.TransferGroupEvent;
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

/* renamed from: com.ifengyu.intercom.ui.talk.c3.f0 */
/* loaded from: classes2.dex */
public class MemberAddPresenter extends BasePresenter<MemberAddView> implements OnGroupListener, OnResultListener, OnAccountListener {

    /* renamed from: m */
    private static final String f15654m = "f0";

    /* renamed from: c */
    private final int f15655c;

    /* renamed from: d */
    private Group f15656d;

    /* renamed from: e */
    private TempGroup f15657e;

    /* renamed from: f */
    private long f15658f;

    /* renamed from: g */
    private final ArrayList<ItemSelectAdapterEntity<Object>> f15659g = new ArrayList<>();

    /* renamed from: h */
    private final ArrayList<ItemSelectAdapterEntity<Object>> f15660h = new ArrayList<>();

    /* renamed from: i */
    private final ArrayList<DeviceModel> f15661i = new ArrayList<>();

    /* renamed from: j */
    private final ArrayList<User> f15662j = new ArrayList<>();

    /* renamed from: k */
    private final ArrayList<ItemSelectAdapterEntity<Object>> f15663k = new ArrayList<>();

    /* renamed from: l */
    private final HashMap<String, Integer> f15664l = new HashMap<>();

    public MemberAddPresenter(int i) {
        this.f15655c = i;
    }

    /* renamed from: B */
    private List<DeviceModel> m9301B(int i) {
        List<DeviceModel> mo14236i = AppDatabase.m14276F().mo14270E().mo14236i(i);
        for (DeviceModel deviceModel : mo14236i) {
            deviceModel.setNetDeviceModel(AppDatabase.m14276F().mo14269H().mo14228c(deviceModel.getDeviceId()));
        }
        return mo14236i;
    }

    /* renamed from: U */
    private void m9293U() {
        User m8456e;
        this.f15662j.clear();
        this.f15662j.addAll(SlTalkClient.m8513r().m8530a().m8458c());
        int i = this.f15655c;
        if ((i == 3 || i == 4) && (m8456e = SlTalkClient.m8513r().m8530a().m8456e()) != null) {
            this.f15662j.add(m8456e);
        }
        Collections.sort(this.f15662j, new UserByNameComparator());
        ArrayList arrayList = new ArrayList();
        Iterator<User> it2 = this.f15662j.iterator();
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
            this.f15662j.removeAll(arrayList);
            this.f15662j.addAll(arrayList);
        }
        m9280s0();
    }

    /* renamed from: V */
    private void m9292V() {
        this.f15661i.clear();
        ((ObservableSubscribeProxy) Observable.defer(new Callable() { // from class: com.ifengyu.intercom.ui.talk.c3.l
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return MemberAddPresenter.this.m9285g0();
            }
        }).compose(Transformer.m8717a()).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.c3.j
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MemberAddPresenter.this.m9283p0((List) obj);
            }
        }, C4772n.f15699a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W */
    public /* synthetic */ Boolean m9290X(String str, String str2) throws Exception {
        this.f15663k.clear();
        Iterator<ItemSelectAdapterEntity<Object>> it2 = this.f15659g.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            ItemSelectAdapterEntity<Object> next = it2.next();
            if (next.getType() != 1) {
                Object data = next.getData();
                if (data instanceof User) {
                    User user = (User) data;
                    if (user.getAccount().contains(str) || user.getName().toUpperCase().contains(str) || Pinyin.m21194e(user.getName(), "").toUpperCase().contains(str)) {
                        this.f15663k.add(next);
                    }
                } else if (data instanceof DeviceModel) {
                    DeviceModel deviceModel = (DeviceModel) data;
                    if (deviceModel.getNetDeviceModel() != null) {
                        NetDeviceModel netDeviceModel = deviceModel.getNetDeviceModel();
                        if (netDeviceModel.getAccount().contains(str) || netDeviceModel.getNickname().toUpperCase().contains(str) || Pinyin.m21194e(netDeviceModel.getNickname(), "").toUpperCase().contains(str)) {
                            this.f15663k.add(next);
                        }
                    }
                }
            }
        }
        return Boolean.valueOf(this.f15663k.size() > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a0 */
    public /* synthetic */ void m9288b0(String str, Boolean bool) throws Exception {
        m10302s().mo9196a(bool.booleanValue(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e0 */
    public /* synthetic */ ObservableSource m9285g0() throws Exception {
        return Observable.just(m9301B(13));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h0 */
    public /* synthetic */ void m9283p0(List list) throws Exception {
        this.f15661i.addAll(list);
        m9280s0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q0 */
    public static /* synthetic */ void m9282q0(Throwable th) throws Exception {
    }

    /* renamed from: s0 */
    private void m9280s0() {
        TempGroup tempGroup;
        Group group;
        this.f15659g.clear();
        this.f15664l.clear();
        ArrayList<TempMember> arrayList = null;
        MemberList memberList = (this.f15655c != 2 || (group = this.f15656d) == null) ? null : group.getMemberList();
        if (this.f15655c == 4 && (tempGroup = this.f15657e) != null) {
            arrayList = tempGroup.getUserList();
        }
        if (this.f15655c == 3) {
            arrayList = new ArrayList<>();
            TempMember tempMember = new TempMember();
            tempMember.setUserId(this.f15658f);
            arrayList.add(tempMember);
        }
        if (this.f15661i.size() > 0) {
            this.f15659g.add(new ItemSelectAdapterEntity<>(1, UIUtils.m8603o(R.string.device_my_bind_device)));
        }
        Iterator<DeviceModel> it2 = this.f15661i.iterator();
        while (it2.hasNext()) {
            DeviceModel next = it2.next();
            ItemSelectAdapterEntity<Object> itemSelectAdapterEntity = new ItemSelectAdapterEntity<>(3, next);
            if (memberList != null) {
                if (next.getNetDeviceModel() != null && memberList.getMember(next.getNetDeviceModel().getUserId()) != null) {
                    itemSelectAdapterEntity.setEnable(false);
                }
            } else if (arrayList != null && next.getNetDeviceModel() != null) {
                Iterator<TempMember> it3 = arrayList.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    } else if (it3.next().getUserId() == next.getNetDeviceModel().getUserId()) {
                        itemSelectAdapterEntity.setEnable(false);
                        break;
                    }
                }
            }
            this.f15659g.add(itemSelectAdapterEntity);
        }
        if (this.f15662j.size() > 0) {
            this.f15659g.add(new ItemSelectAdapterEntity<>(1, UIUtils.m8603o(R.string.contact_members)));
        }
        char c = '$';
        Iterator<User> it4 = this.f15662j.iterator();
        while (it4.hasNext()) {
            User next2 = it4.next();
            if (!TextUtils.isEmpty(next2.getName())) {
                char charAt = Pinyin.m21195d(next2.getName().charAt(0)).charAt(0);
                if (MethodsUtils.m11298b(charAt)) {
                    if (charAt != c) {
                        this.f15659g.add(new ItemSelectAdapterEntity<>(1, String.valueOf(charAt)));
                        this.f15664l.put(String.valueOf(charAt), Integer.valueOf(this.f15659g.size() - 1));
                        c = charAt;
                    }
                } else if (c != '#') {
                    this.f15659g.add(new ItemSelectAdapterEntity<>(1, String.valueOf('#')));
                    this.f15664l.put(String.valueOf('#'), Integer.valueOf(this.f15659g.size() - 1));
                    c = '#';
                }
            }
            ItemSelectAdapterEntity<Object> itemSelectAdapterEntity2 = new ItemSelectAdapterEntity<>(3, next2);
            if (memberList != null) {
                if (memberList.getMember(next2.getUid()) != null) {
                    itemSelectAdapterEntity2.setEnable(false);
                }
            } else if (arrayList != null) {
                Iterator<TempMember> it5 = arrayList.iterator();
                while (true) {
                    if (!it5.hasNext()) {
                        break;
                    } else if (it5.next().getUserId() == next2.getUid()) {
                        itemSelectAdapterEntity2.setEnable(false);
                        break;
                    }
                }
            }
            this.f15659g.add(itemSelectAdapterEntity2);
        }
        m10302s().mo9195d();
    }

    /* renamed from: A */
    public ArrayList<ItemSelectAdapterEntity<Object>> m9302A() {
        return this.f15659g;
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: B0 */
    public void mo8351B0(ResultEvent resultEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: C */
    public void mo8368C(MemberList memberList) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: D */
    public void mo8367D(GroupEvent groupEvent) {
        Group targetGroup = groupEvent.getTargetGroup();
        if (targetGroup.getType() == Group.GROUP_NORMAL && SlTalkClient.m8518m(targetGroup)) {
            m10302s().mo9090e1(targetGroup);
        }
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: G */
    public void mo8366G(GroupList groupList) {
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: H0 */
    public void mo8350H0(RequestResultEvent requestResultEvent) {
        if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_CreateGroupAck) {
            if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.SUCCESS) {
                return;
            }
            if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.LIMIT) {
                m10302s().mo9091b1();
            } else {
                m10302s().mo9101M();
            }
        } else if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_InviteGroupAck) {
            if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.SUCCESS) {
                m10302s().mo9107a0();
            } else {
                m10302s().mo9108U0();
            }
        }
    }

    /* renamed from: I */
    public ArrayList<ItemSelectAdapterEntity<Object>> m9300I() {
        return this.f15663k;
    }

    /* renamed from: J */
    public HashMap<String, Integer> m9299J() {
        return this.f15664l;
    }

    /* renamed from: M */
    public ArrayList<ItemSelectAdapterEntity<Object>> m9298M() {
        return this.f15660h;
    }

    /* renamed from: N */
    public String[] m9297N() {
        String[] strArr = new String[this.f15660h.size()];
        for (int i = 0; i < this.f15660h.size(); i++) {
            ItemSelectAdapterEntity<Object> itemSelectAdapterEntity = this.f15660h.get(i);
            if (itemSelectAdapterEntity.getType() == 3) {
                if (itemSelectAdapterEntity.getData() instanceof User) {
                    strArr[i] = ((User) itemSelectAdapterEntity.getData()).getAccount();
                } else if (itemSelectAdapterEntity.getData() instanceof DeviceModel) {
                    DeviceModel deviceModel = (DeviceModel) itemSelectAdapterEntity.getData();
                    if (deviceModel.getNetDeviceModel() != null) {
                        strArr[i] = deviceModel.getNetDeviceModel().getAccount();
                    }
                }
            }
        }
        return strArr;
    }

    /* renamed from: O */
    public String m9296O(String str) {
        Iterator<DeviceModel> it2 = this.f15661i.iterator();
        while (it2.hasNext()) {
            DeviceModel next = it2.next();
            if (str.equals(String.valueOf(next.getNetDeviceModel().getUserId()))) {
                return next.getName();
            }
        }
        Iterator<User> it3 = this.f15662j.iterator();
        while (it3.hasNext()) {
            User next2 = it3.next();
            if (str.equals(next2.getAccount())) {
                return next2.getName();
            }
        }
        return str;
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: Q */
    public void m9295Q(final String str) {
        ((ObservableSubscribeProxy) Observable.just(str).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.ui.talk.c3.o
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return MemberAddPresenter.this.m9290X(str, (String) obj);
            }
        }).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.c3.m
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MemberAddPresenter.this.m9288b0(str, (Boolean) obj);
            }
        }, C4769k.f15695a);
    }

    /* renamed from: R */
    public void m9294R() {
        m9293U();
        m9292V();
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: V0 */
    public void mo8365V0(GroupEvent groupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: W0 */
    public void mo8364W0(TransferGroupEvent transferGroupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: f0 */
    public void mo8373f0(SearchResultEvent searchResultEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: j0 */
    public void mo8372j0(ContactList contactList) {
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: m0 */
    public void mo8349m0(InviteGroupAckEvent inviteGroupAckEvent) {
        if (inviteGroupAckEvent.getFailUsers() == null || inviteGroupAckEvent.getFailUsers().length == 0) {
            return;
        }
        if (inviteGroupAckEvent.getResult() == FailUser.ErrorCode.LIMIT_G_U.value()) {
            m10302s().mo9106p0(inviteGroupAckEvent.getFailUsers());
        } else {
            m10302s().mo9116E0(inviteGroupAckEvent.getFailUsers());
        }
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    public void onOnlineStatusChange(OnlineStatusEvent onlineStatusEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: q */
    public void mo9227q() {
        super.mo9227q();
    }

    /* renamed from: r0 */
    public void m9281r0(ItemSelectAdapterEntity<Object> itemSelectAdapterEntity) {
        if (itemSelectAdapterEntity.getType() != 1 && itemSelectAdapterEntity.isEnable()) {
            itemSelectAdapterEntity.setCheck(!itemSelectAdapterEntity.isCheck());
            m10302s().mo9195d();
            if (itemSelectAdapterEntity.isCheck()) {
                this.f15660h.add(itemSelectAdapterEntity);
            } else {
                this.f15660h.remove(itemSelectAdapterEntity);
            }
        }
    }

    /* renamed from: v */
    public void m9279v() {
        String[] m9297N = m9297N();
        Group group = this.f15656d;
        if (group == null || !group.addMember(null, m9297N)) {
            m10302s().mo9108U0();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: w */
    public void mo9229n(MemberAddView memberAddView) {
        super.mo9229n(memberAddView);
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: x */
    public void mo8348x(CreateGroupLimitAccountsEvent createGroupLimitAccountsEvent) {
        m10302s().mo9089n1(createGroupLimitAccountsEvent.getAccounts());
    }

    /* renamed from: y */
    public void m9277y() {
        if (SlTalkClient.m8513r().m8525f().m8430b(null, null, m9297N())) {
            return;
        }
        m10302s().mo9101M();
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: z */
    public void mo8363z(GroupEvent groupEvent) {
    }

    public MemberAddPresenter(int i, Group group) {
        this.f15655c = i;
        this.f15656d = group;
    }

    public MemberAddPresenter(int i, TempGroup tempGroup) {
        this.f15655c = i;
        this.f15657e = tempGroup;
    }

    public MemberAddPresenter(int i, long j) {
        this.f15655c = i;
        this.f15658f = j;
    }
}
