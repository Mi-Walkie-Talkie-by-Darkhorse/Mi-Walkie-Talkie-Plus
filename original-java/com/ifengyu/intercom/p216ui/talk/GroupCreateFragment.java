package com.ifengyu.intercom.p216ui.talk;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.talk.p227c3.MemberAddPresenter;
import com.ifengyu.library.utils.UIUtils;
import com.shanlitech.p245et.model.Group;

/* renamed from: com.ifengyu.intercom.ui.talk.z2 */
/* loaded from: classes2.dex */
public class GroupCreateFragment extends MemberAddBaseFragment {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O3 */
    public /* synthetic */ void m9097P3(Group group) {
        TalkActivity.m9412N(getContext(), group);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Q3 */
    public /* synthetic */ void m9095R3(View view) {
        m8041v2(CreateCodeToCreateGroupFragment.m9134M3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S3 */
    public /* synthetic */ void m9093T3(View view) {
        m8041v2(JoinGroupByCodeFragment.m9545C3());
    }

    /* renamed from: U3 */
    public static GroupCreateFragment m9092U3() {
        return new GroupCreateFragment();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment
    /* renamed from: A3 */
    protected int mo9104A3() {
        return R.string.create_group;
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment
    /* renamed from: B3 */
    public View mo9103B3() {
        View inflate = getLayoutInflater().inflate(R.layout.item_create_group_list_header, (ViewGroup) this.rvContactList.getParent(), false);
        inflate.findViewById(R.id.ll_create_group_by_code).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupCreateFragment.this.m9095R3(view);
            }
        });
        inflate.findViewById(R.id.ll_join_group_by_code).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupCreateFragment.this.m9093T3(view);
            }
        });
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        ((MemberAddPresenter) this.f15074B).m9294R();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment, com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: M */
    public void mo9101M() {
        m10312X2(R.string.group_create_fail);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment
    /* renamed from: M3 */
    protected void mo9100M3() {
        m10308b3();
        ((MemberAddPresenter) this.f15074B).m9277y();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchMvpFragment
    /* renamed from: N3 */
    public MemberAddPresenter mo9088y3() {
        return new MemberAddPresenter(1);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment, com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: b1 */
    public void mo9091b1() {
        m10312X2(R.string.group_count_upper_limit);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment, com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: e1 */
    public void mo9090e1(final Group group) {
        m10304f3(UIUtils.m8603o(R.string.group_create_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.ui.talk.z
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
            /* renamed from: a */
            public final void mo9105a() {
                GroupCreateFragment.this.m9097P3(group);
            }
        });
    }

    @Override // com.ifengyu.intercom.p216ui.talk.MemberAddBaseFragment, com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: n1 */
    public void mo9089n1(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(((MemberAddPresenter) this.f15074B).m9296O(str));
            sb.append("、");
        }
        String sb2 = sb.toString();
        if (!TextUtils.isEmpty(sb2)) {
            sb2 = sb2.substring(0, sb2.length() - 1);
        }
        UIUtils.m8592z(UIUtils.m8602p(R.string.group_member_group_count_upper_limit, sb2));
    }
}
