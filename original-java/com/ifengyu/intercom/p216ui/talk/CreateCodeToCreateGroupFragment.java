package com.ifengyu.intercom.p216ui.talk;

import android.text.TextUtils;
import androidx.lifecycle.Lifecycle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.http.entity.CodeEntity;
import com.ifengyu.intercom.http.entity.CreateGroupCodeUserInfo;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.talk.CreateCodeToCreateGroupFragment;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.talk.SlTalkClient;
import com.shanlitech.p245et.model.Group;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* renamed from: com.ifengyu.intercom.ui.talk.x2 */
/* loaded from: classes2.dex */
public class CreateCodeToCreateGroupFragment extends CreateCodeBaseFragment {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CreateCodeToCreateGroupFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.talk.x2$a */
    /* loaded from: classes2.dex */
    public class C4869a extends ErrorConsumer {
        C4869a() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) CreateCodeToCreateGroupFragment.this).f15047y, "getCreateGroupCodeUserInfo fail");
            CreateCodeToCreateGroupFragment.this.m10329C2();
            CreateCodeToCreateGroupFragment.super.mo8057d2();
        }
    }

    /* compiled from: CreateCodeToCreateGroupFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.talk.x2$b */
    /* loaded from: classes2.dex */
    class C4870b extends ErrorConsumer {
        C4870b() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) CreateCodeToCreateGroupFragment.this).f15047y, "getCreateGroupCodeUserInfo fail");
            CreateCodeToCreateGroupFragment.this.m10311Y2(NewHttpHelper.m8714a(newApiException.m8703a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CreateCodeToCreateGroupFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.talk.x2$c */
    /* loaded from: classes2.dex */
    public class C4871c extends ErrorConsumer {
        C4871c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m9118d() {
            CreateCodeToCreateGroupFragment.this.mo8048o2();
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) CreateCodeToCreateGroupFragment.this).f15047y, "getCreateGroupCode fail");
            CreateCodeToCreateGroupFragment.this.m10309a3(NewHttpHelper.m8714a(newApiException.m8703a()), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.l
                @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                /* renamed from: a */
                public final void mo9160a() {
                    CreateCodeToCreateGroupFragment.C4871c.this.m9118d();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A3 */
    public /* synthetic */ void m9145B3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C3 */
    public /* synthetic */ void m9143D3(CodeEntity codeEntity) throws Exception {
        C4161y.m11049f(this.f15047y, "getCreateGroupCode success");
        m10329C2();
        if (TextUtils.isEmpty(codeEntity.getCode())) {
            return;
        }
        this.f15499B = codeEntity.getCode();
        m9637g3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public /* synthetic */ void m9141F3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m9139H3(CreateGroupCodeUserInfo createGroupCodeUserInfo) throws Exception {
        String str = this.f15047y;
        C4161y.m11049f(str, "getCreateGroupCodeUserInfo success:" + createGroupCodeUserInfo.toString());
        m10329C2();
        Group m8429c = SlTalkClient.m8513r().m8525f().m8429c(createGroupCodeUserInfo.getGid());
        if (m8429c != null) {
            TalkActivity.m9412N(getContext(), m8429c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I3 */
    public /* synthetic */ void m9137J3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K3 */
    public /* synthetic */ void m9135L3(CreateGroupCodeUserInfo createGroupCodeUserInfo) throws Exception {
        String str = this.f15047y;
        C4161y.m11049f(str, "getCreateGroupCodeUserInfo success:" + createGroupCodeUserInfo.toString());
        Group m8429c = SlTalkClient.m8513r().m8525f().m8429c(createGroupCodeUserInfo.getGid());
        if (m8429c != null) {
            m8429c.quite();
        }
        m10329C2();
        super.mo8057d2();
    }

    /* renamed from: M3 */
    public static CreateCodeToCreateGroupFragment m9134M3() {
        return new CreateCodeToCreateGroupFragment();
    }

    /* renamed from: N3 */
    private void m9133N3() {
        if (TextUtils.isEmpty(this.f15499B)) {
            super.mo8057d2();
        } else {
            ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11360v(this.f15499B).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.m
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    CreateCodeToCreateGroupFragment.this.m9137J3((Disposable) obj);
                }
            }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.n
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    CreateCodeToCreateGroupFragment.this.m9135L3((CreateGroupCodeUserInfo) obj);
                }
            }, new C4869a());
        }
    }

    /* renamed from: z3 */
    private void m9120z3() {
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11397J().compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.o
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                CreateCodeToCreateGroupFragment.this.m9145B3((Disposable) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.q
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                CreateCodeToCreateGroupFragment.this.m9143D3((CodeEntity) obj);
            }
        }, new C4871c());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.talk.CreateCodeBaseFragment, com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    public void mo9102E2() {
        super.mo9102E2();
        m9120z3();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: d2 */
    public void mo8057d2() {
        m9133N3();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.CreateCodeBaseFragment
    /* renamed from: h3 */
    public int mo9132h3() {
        return R.string.create_group_by_code;
    }

    @Override // com.ifengyu.intercom.p216ui.talk.CreateCodeBaseFragment
    /* renamed from: o3 */
    public void mo9131o3() {
        if (TextUtils.isEmpty(this.f15499B)) {
            return;
        }
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11360v(this.f15499B).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.r
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                CreateCodeToCreateGroupFragment.this.m9141F3((Disposable) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.p
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                CreateCodeToCreateGroupFragment.this.m9139H3((CreateGroupCodeUserInfo) obj);
            }
        }, new C4870b());
    }
}
