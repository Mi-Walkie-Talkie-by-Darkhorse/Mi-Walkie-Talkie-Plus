package com.ifengyu.intercom.p216ui.fragment;

import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.UrlAdd;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.p230d.HttpNormalCallBack;

/* renamed from: com.ifengyu.intercom.ui.fragment.w1 */
/* loaded from: classes2.dex */
public class AppUserProtocolFragment extends BaseUserProtocolFragment {

    /* compiled from: AppUserProtocolFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.fragment.w1$a */
    /* loaded from: classes2.dex */
    class C4630a implements HttpNormalCallBack {
        C4630a() {
        }

        @Override // com.ifengyu.library.p229b.p230d.HttpNormalCallBack
        /* renamed from: a */
        public void mo8716a(NewApiException newApiException) {
            AppUserProtocolFragment.this.m10312X2(R.string.revoke_user_protocol_fail);
        }

        @Override // com.ifengyu.library.p229b.p230d.HttpNormalCallBack
        public void onSuccess() {
            AppUserProtocolFragment.this.m10329C2();
            MiTalkClientUtil.m11188r0(false);
            MiTalkiApp.m14296h().m14304F();
            AppUserProtocolFragment.this.m10135v3();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: h3 */
    protected int mo9847h3() {
        return R.string.revoke_agree_user_protocol_subtitle;
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: u3 */
    protected void mo9846u3() {
        m10308b3();
        UserPrivacyReportUtil.m11154e(new C4630a());
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: w3 */
    protected void mo9845w3() {
        UrlAdd.m11976c(UrlAdd.m11978a(1));
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: x3 */
    protected void mo9844x3() {
        UrlAdd.m11976c(UrlAdd.m11978a(2));
    }
}
