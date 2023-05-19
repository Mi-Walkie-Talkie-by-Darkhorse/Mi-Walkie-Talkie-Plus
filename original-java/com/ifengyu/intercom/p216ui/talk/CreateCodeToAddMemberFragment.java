package com.ifengyu.intercom.p216ui.talk;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.lifecycle.Lifecycle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.http.entity.CodeEntity;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.talk.CreateCodeToAddMemberFragment;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.shanlitech.p245et.model.Group;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* renamed from: com.ifengyu.intercom.ui.talk.w2 */
/* loaded from: classes2.dex */
public class CreateCodeToAddMemberFragment extends CreateCodeBaseFragment {

    /* renamed from: C */
    private Group f15802C;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CreateCodeToAddMemberFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.talk.w2$a */
    /* loaded from: classes2.dex */
    public class C4865a extends ErrorConsumer {
        C4865a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m9148d() {
            CreateCodeToAddMemberFragment.this.mo8048o2();
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) CreateCodeToAddMemberFragment.this).f15047y, "getGroupMemberInviteCode fail");
            CreateCodeToAddMemberFragment.this.m10309a3(NewHttpHelper.m8714a(newApiException.m8703a()), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.i
                @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                /* renamed from: a */
                public final void mo9160a() {
                    CreateCodeToAddMemberFragment.C4865a.this.m9148d();
                }
            });
        }
    }

    /* renamed from: s3 */
    private void m9155s3() {
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11375g(String.valueOf(this.f15802C.getGid())).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.j
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                CreateCodeToAddMemberFragment.this.m9153u3((Disposable) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.k
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                CreateCodeToAddMemberFragment.this.m9151w3((CodeEntity) obj);
            }
        }, new C4865a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t3 */
    public /* synthetic */ void m9153u3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v3 */
    public /* synthetic */ void m9151w3(CodeEntity codeEntity) throws Exception {
        C4161y.m11049f(this.f15047y, "getGroupMemberInviteCode success");
        m10329C2();
        if (TextUtils.isEmpty(codeEntity.getCode())) {
            return;
        }
        this.f15499B = codeEntity.getCode();
        m9637g3();
    }

    /* renamed from: x3 */
    public static CreateCodeToAddMemberFragment m9150x3(Group group) {
        CreateCodeToAddMemberFragment createCodeToAddMemberFragment = new CreateCodeToAddMemberFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("key_group", group);
        createCodeToAddMemberFragment.setArguments(bundle);
        return createCodeToAddMemberFragment;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f15802C = (Group) bundle.getSerializable("key_group");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.talk.CreateCodeBaseFragment, com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    public void mo9102E2() {
        super.mo9102E2();
        m9155s3();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.CreateCodeBaseFragment
    /* renamed from: h3 */
    public int mo9132h3() {
        return R.string.create_code_to_add_group_member;
    }

    @Override // com.ifengyu.intercom.p216ui.talk.CreateCodeBaseFragment
    /* renamed from: o3 */
    public void mo9131o3() {
        m8047p2(TalkFragment.class);
    }
}
