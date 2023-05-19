package com.ifengyu.intercom.p216ui.fragment.tab.p223k0;

import android.annotation.SuppressLint;
import android.content.Context;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.fragment.tab.p224l0.RecentTalkView;
import com.ifengyu.library.utils.C4970j;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.database.TalkDatabase;
import com.ifengyu.talk.models.RecentTalkModel;
import com.ifengyu.talk.p238h.OnAccountListener;
import com.ifengyu.talk.p238h.OnRecentTalkListener;
import com.shanlitech.p245et.model.ContactList;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.SearchResultEvent;
import io.reactivex.Observable;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.k0.s */
/* loaded from: classes2.dex */
public class RecentTalkPresenter extends BasePresenter<RecentTalkView> implements OnAccountListener, OnRecentTalkListener {

    /* renamed from: c */
    private static final String f15346c = "s";

    public RecentTalkPresenter(Context context) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public static /* synthetic */ RecentTalkModel m9867A(RecentTalkModel recentTalkModel) throws Exception {
        long longValue = recentTalkModel.getGroupId().longValue();
        SlTalkClient.m8513r().m8522i().m8412b(longValue);
        TalkDatabase.m8505D().mo8502C().mo8474f(longValue);
        C4970j.m8667c(new File(SlTalkClient.f16562h + longValue));
        return recentTalkModel;
    }

    /* renamed from: J */
    public void m9864J() {
        SlTalkClient.m8513r().m8522i().m8422F();
        try {
            m10302s().mo9851y0(SlTalkClient.m8513r().m8530a().m8457d());
        } catch (Exception e) {
            e.printStackTrace();
            m10302s().mo9851y0(2);
        }
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: f0 */
    public void mo8373f0(SearchResultEvent searchResultEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnRecentTalkListener
    /* renamed from: g */
    public void mo8353g(List<RecentTalkModel> list) {
        m10302s().mo9850z0();
    }

    @Override // com.ifengyu.talk.p238h.OnRecentTalkListener
    /* renamed from: j */
    public void mo8352j(List<RecentTalkModel> list) {
        m10302s().mo9850z0();
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: j0 */
    public void mo8372j0(ContactList contactList) {
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    public void onOnlineStatusChange(OnlineStatusEvent onlineStatusEvent) {
        m10302s().mo9851y0((int) onlineStatusEvent.getOnlinestatus());
        if (onlineStatusEvent.getOnlinestatus() == 3) {
            SlTalkClient.m8513r().m8522i().m8422F();
        } else {
            MiTalkiApp.m14296h().m14305E();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: q */
    public void mo9227q() {
        super.mo9227q();
        SlTalkClient.m8513r().m8530a().removeListener(this);
        SlTalkClient.m8513r().m8522i().removeListener(this);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: v */
    public void mo9229n(RecentTalkView recentTalkView) {
        super.mo9229n(recentTalkView);
        SlTalkClient.m8513r().m8530a().addListener(this);
        SlTalkClient.m8513r().m8522i().addListener(this);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: w */
    public void m9862w(RecentTalkModel recentTalkModel) {
        Observable.just(recentTalkModel).map(C4601n.f15336a).subscribeOn(Schedulers.m800io()).subscribe(C4602o.f15337a, C4603p.f15338a);
    }

    /* renamed from: y */
    public List<RecentTalkModel> m9861y() {
        return SlTalkClient.m8513r().m8522i().m8411c();
    }
}
