package com.ifengyu.intercom.p216ui.talk.p227c3;

import android.annotation.SuppressLint;
import android.content.Context;
import com.ifengyu.intercom.http.entity.UploadFileEntity;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.talk.entity.GroupDetailAdapterMultipleEntity;
import com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.C4970j;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.database.TalkDatabase;
import com.ifengyu.talk.p235e.MemberComparator;
import com.ifengyu.talk.p238h.OnGroupListener;
import com.ifengyu.talk.p238h.OnResultListener;
import com.shanlitech.p245et.ETStatusCode;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.GroupList;
import com.shanlitech.p245et.model.Member;
import com.shanlitech.p245et.model.MemberList;
import com.shanlitech.p245et.notice.event.CreateGroupLimitAccountsEvent;
import com.shanlitech.p245et.notice.event.GroupEvent;
import com.shanlitech.p245et.notice.event.InviteGroupAckEvent;
import com.shanlitech.p245et.notice.event.RequestResultEvent;
import com.shanlitech.p245et.notice.event.ResultEvent;
import com.shanlitech.p245et.notice.event.TransferGroupEvent;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;

/* renamed from: com.ifengyu.intercom.ui.talk.c3.e0 */
/* loaded from: classes2.dex */
public class GroupDetailPresenter extends BasePresenter<GroupDetailView> implements OnGroupListener, OnResultListener {

    /* renamed from: e */
    private static final String f15649e = "e0";

    /* renamed from: c */
    private final ArrayList<GroupDetailAdapterMultipleEntity> f15650c = new ArrayList<>();

    /* renamed from: d */
    private Group f15651d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GroupDetailPresenter.java */
    /* renamed from: com.ifengyu.intercom.ui.talk.c3.e0$a */
    /* loaded from: classes2.dex */
    public class C4760a extends ErrorConsumer {
        C4760a() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(GroupDetailPresenter.f15649e, "uploadGroupAvatarFile fail");
            newApiException.printStackTrace();
            ((GroupDetailView) GroupDetailPresenter.this.m10302s()).mo9203g();
        }
    }

    public GroupDetailPresenter(Context context, Group group) {
        this.f15651d = group;
    }

    /* renamed from: B */
    private void m9313B() {
        SlTalkClient.m8513r().m8522i().m8412b(this.f15651d.getGid());
        TalkDatabase.m8505D().mo8502C().mo8474f(this.f15651d.getGid());
        C4970j.m8667c(new File(SlTalkClient.f16562h + this.f15651d.getGid()));
        m10302s().mo9199n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public /* synthetic */ void m9311J(UploadFileEntity uploadFileEntity) throws Exception {
        C4161y.m11049f(f15649e, "uploadGroupAvatarFile success");
        if (this.f15651d.changeGroupAvatar(uploadFileEntity.getUrl())) {
            return;
        }
        m10302s().mo9203g();
    }

    /* renamed from: A */
    public ArrayList<GroupDetailAdapterMultipleEntity> m9314A() {
        return this.f15650c;
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: B0 */
    public void mo8351B0(ResultEvent resultEvent) {
        if (resultEvent.getType() == ResultEvent.TYPE.NAME_INGROUP) {
            if (resultEvent.success()) {
                m10302s().mo9197x0();
            } else {
                m10302s().mo9198v();
            }
        }
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: C */
    public void mo8368C(MemberList memberList) {
        if (memberList.getGroup().getGid() == this.f15651d.getGid()) {
            m9307Q();
        }
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: D */
    public void mo8367D(GroupEvent groupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: G */
    public void mo8366G(GroupList groupList) {
        Group currentGroup = groupList.getCurrentGroup();
        if (currentGroup != null && currentGroup.getType() == Group.GROUP_NORMAL && SlTalkClient.m8512s(this.f15651d, currentGroup)) {
            this.f15651d = currentGroup;
            m10302s().mo9205c(currentGroup);
        }
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: H0 */
    public void mo8350H0(RequestResultEvent requestResultEvent) {
        if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_ChangeGroupNameAck) {
            if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.SUCCESS) {
                m10302s().mo9201i();
            } else {
                m10302s().mo9202h();
            }
        } else if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_ChangeGroupAvatarAck) {
            if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.SUCCESS) {
                m10302s().mo9200j();
            } else {
                m10302s().mo9203g();
            }
        } else if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_QuitGroupAck) {
            if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.SUCCESS) {
                m9313B();
            } else {
                m10302s().mo9204e();
            }
        }
    }

    /* renamed from: M */
    public void m9310M(String str) {
        if (this.f15651d.modifyName(str)) {
            return;
        }
        m10302s().mo9202h();
    }

    /* renamed from: N */
    public void m9309N(String str) {
        if (this.f15651d.modifyMyName(str)) {
            return;
        }
        m10302s().mo9198v();
    }

    /* renamed from: O */
    public void m9308O() {
        if (this.f15651d.quite()) {
            return;
        }
        m10302s().mo9204e();
    }

    /* renamed from: Q */
    public void m9307Q() {
        this.f15650c.clear();
        ArrayList<Member> allMembers = this.f15651d.getMemberList().getAllMembers();
        Collections.sort(allMembers, new MemberComparator(this.f15651d.getCreator()));
        boolean m8518m = SlTalkClient.m8518m(this.f15651d);
        int min = Math.min(allMembers.size(), m8518m ? 8 : 9);
        for (int i = 0; i < min; i++) {
            Member member = allMembers.get(i);
            this.f15650c.add(new GroupDetailAdapterMultipleEntity(1001, SlTalkClient.m8516o(this.f15651d, member.getUid()), member));
        }
        this.f15650c.add(new GroupDetailAdapterMultipleEntity(1002));
        if (m8518m) {
            this.f15650c.add(new GroupDetailAdapterMultipleEntity(1003));
        }
        m10302s().mo9206O();
        Member m6543me = this.f15651d.getMemberList().m6543me();
        if (m6543me != null) {
            m10302s().mo9208F0(SlTalkClient.m8523h(m6543me));
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: R */
    public void m9306R(File file) {
        AppServiceClient.m11355a().m11365q(MultipartBody.Part.createFormData("file", file.getName(), RequestBody.create(MediaType.parse("image/png"), file))).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.c3.i
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupDetailPresenter.this.m9311J((UploadFileEntity) obj);
            }
        }, new C4760a());
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: V0 */
    public void mo8365V0(GroupEvent groupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: W0 */
    public void mo8364W0(TransferGroupEvent transferGroupEvent) {
        Group group = SlTalkClient.m8513r().m8525f().m8428d().getGroup(this.f15651d.getGid());
        if (group == null || group.getCreator() == this.f15651d.getCreator()) {
            return;
        }
        this.f15651d = group;
        m10302s().mo9205c(this.f15651d);
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: m0 */
    public void mo8349m0(InviteGroupAckEvent inviteGroupAckEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: q */
    public void mo9227q() {
        super.mo9227q();
        SlTalkClient.m8513r().m8525f().removeListener(this);
        SlTalkClient.m8513r().m8521j().removeListener(this);
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: x */
    public void mo8348x(CreateGroupLimitAccountsEvent createGroupLimitAccountsEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: y */
    public void mo9229n(GroupDetailView groupDetailView) {
        super.mo9229n(groupDetailView);
        SlTalkClient.m8513r().m8525f().addListener(this);
        SlTalkClient.m8513r().m8521j().addListener(this);
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: z */
    public void mo8363z(GroupEvent groupEvent) {
        if (this.f15651d == null || groupEvent.getTargetGroup().getGid() != this.f15651d.getGid()) {
            return;
        }
        m10302s().mo9207J0();
    }
}
