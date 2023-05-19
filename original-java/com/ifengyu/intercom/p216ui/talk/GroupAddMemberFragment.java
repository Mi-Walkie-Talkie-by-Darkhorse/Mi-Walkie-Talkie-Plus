package com.ifengyu.intercom.p216ui.talk;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.talk.p227c3.MemberAddPresenter;
import com.ifengyu.library.utils.UIUtils;
import com.shanlitech.p245et.model.FailUser;
import com.shanlitech.p245et.model.Group;

/* renamed from: com.ifengyu.intercom.ui.talk.y2 */
/* loaded from: classes2.dex */
public class GroupAddMemberFragment extends MemberAddBaseFragment {

    /* renamed from: E */
    private Group f15813E;

    /* renamed from: N3 */
    private String m9115N3(FailUser[] failUserArr) {
        StringBuilder sb = new StringBuilder();
        for (FailUser failUser : failUserArr) {
            sb.append(((MemberAddPresenter) this.f15074B).m9296O(failUser.getAccount()));
            sb.append("、");
        }
        String sb2 = sb.toString();
        return !TextUtils.isEmpty(sb2) ? sb2.substring(0, sb2.length() - 1) : sb2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P3 */
    public /* synthetic */ void m9112Q3() {
        m8047p2(TalkFragment.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R3 */
    public /* synthetic */ void m9110S3(View view) {
        m8041v2(CreateCodeToAddMemberFragment.m9150x3(this.f15813E));
    }

    /* renamed from: T3 */
    public static GroupAddMemberFragment m9109T3(Group group) {
        GroupAddMemberFragment groupAddMemberFragment = new GroupAddMemberFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("key_group", group);
        groupAddMemberFragment.setArguments(bundle);
        return groupAddMemberFragment;
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment
    /* renamed from: A3 */
    protected int mo9104A3() {
        return R.string.device_invite_new_member;
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment
    /* renamed from: B3 */
    public View mo9103B3() {
        View inflate = getLayoutInflater().inflate(R.layout.item_add_member_to_group_list_header, (ViewGroup) this.rvContactList.getParent(), false);
        inflate.findViewById(R.id.ll_add_member_to_group_by_code).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupAddMemberFragment.this.m9110S3(view);
            }
        });
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f15813E = (Group) bundle.getSerializable("key_group");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment, com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: E0 */
    public void mo9116E0(FailUser[] failUserArr) {
        UIUtils.m8592z(UIUtils.m8602p(R.string.group_member_group_count_upper_limit, m9115N3(failUserArr)));
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        ((MemberAddPresenter) this.f15074B).m9294R();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment
    /* renamed from: M3 */
    protected void mo9100M3() {
        m10308b3();
        ((MemberAddPresenter) this.f15074B).m9279v();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchMvpFragment
    /* renamed from: O3 */
    public MemberAddPresenter mo9088y3() {
        return new MemberAddPresenter(2, this.f15813E);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment, com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: U0 */
    public void mo9108U0() {
        m10312X2(R.string.add_member_fail);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment, com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: a0 */
    public void mo9107a0() {
        m10304f3(UIUtils.m8603o(R.string.add_member_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.ui.talk.s
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
            /* renamed from: a */
            public final void mo9105a() {
                GroupAddMemberFragment.this.m9112Q3();
            }
        });
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment, com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: p0 */
    public void mo9106p0(FailUser[] failUserArr) {
        UIUtils.m8592z(UIUtils.m8602p(R.string.group_member_count_upper_limit_s, m9115N3(failUserArr)));
    }
}
