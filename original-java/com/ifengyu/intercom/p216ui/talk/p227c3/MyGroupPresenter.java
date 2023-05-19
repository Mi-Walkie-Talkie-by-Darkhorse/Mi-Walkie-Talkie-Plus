package com.ifengyu.intercom.p216ui.talk.p227c3;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.lifecycle.Lifecycle;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.talk.p228d3.MyGroupView;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.p238h.OnGroupListener;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.GroupList;
import com.shanlitech.p245et.model.MemberList;
import com.shanlitech.p245et.notice.event.GroupEvent;
import com.shanlitech.p245et.notice.event.TransferGroupEvent;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.Iterator;
import p048b.p049a.p050a.p051a.Pinyin;

/* renamed from: com.ifengyu.intercom.ui.talk.c3.h0 */
/* loaded from: classes2.dex */
public class MyGroupPresenter extends BasePresenter<MyGroupView> implements OnGroupListener {

    /* renamed from: e */
    private static final String f15674e = "h0";

    /* renamed from: c */
    private final GroupList f15675c = new GroupList(new Group[0]);

    /* renamed from: d */
    private final GroupList f15676d = new GroupList(new Group[0]);

    public MyGroupPresenter(Context context) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public /* synthetic */ Boolean m9260J(String str, String str2) throws Exception {
        this.f15676d.clear();
        Iterator<Group> it2 = this.f15675c.iterator();
        while (it2.hasNext()) {
            Group next = it2.next();
            if (SlTalkClient.m8526e(next).toUpperCase().contains(str) || Pinyin.m21194e(SlTalkClient.m8526e(next), "").toUpperCase().contains(str)) {
                this.f15676d.add(next);
            }
        }
        return Boolean.valueOf(this.f15676d.size() > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public /* synthetic */ void m9258N(String str, Boolean bool) throws Exception {
        m10302s().mo9190a(bool.booleanValue(), str);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: A */
    public void m9263A(final String str) {
        ((ObservableSubscribeProxy) Observable.just(str).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.ui.talk.c3.t
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return MyGroupPresenter.this.m9260J(str, (String) obj);
            }
        }).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.c3.u
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MyGroupPresenter.this.m9258N(str, (Boolean) obj);
            }
        }, C4777s.f15707a);
    }

    /* renamed from: B */
    public void m9262B() {
        GroupList m8428d = SlTalkClient.m8513r().m8525f().m8428d();
        this.f15675c.clear();
        Iterator<Group> it2 = m8428d.iterator();
        while (it2.hasNext()) {
            Group next = it2.next();
            if (next.getType() == Group.GROUP_NORMAL) {
                this.f15675c.add(next);
            }
        }
        m10302s().mo9189y();
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: C */
    public void mo8368C(MemberList memberList) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: D */
    public void mo8367D(GroupEvent groupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: G */
    public void mo8366G(GroupList groupList) {
        this.f15675c.clear();
        Iterator<Group> it2 = groupList.iterator();
        while (it2.hasNext()) {
            Group next = it2.next();
            if (next.getType() == Group.GROUP_NORMAL) {
                this.f15675c.add(next);
            }
        }
        m10302s().mo9189y();
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: V0 */
    public void mo8365V0(GroupEvent groupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: W0 */
    public void mo8364W0(TransferGroupEvent transferGroupEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: q */
    public void mo9227q() {
        super.mo9227q();
        SlTalkClient.m8513r().m8525f().removeListener(this);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: v */
    public void mo9229n(MyGroupView myGroupView) {
        super.mo9229n(myGroupView);
        SlTalkClient.m8513r().m8525f().addListener(this);
    }

    /* renamed from: w */
    public GroupList m9255w() {
        return this.f15675c;
    }

    /* renamed from: y */
    public GroupList m9254y() {
        return this.f15676d;
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: z */
    public void mo8363z(GroupEvent groupEvent) {
    }
}
