package com.ifengyu.intercom.device.mi3gw.fragment;

import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.UrlAdd;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment;
import com.ifengyu.library.event.SimpleEvent;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.p230d.HttpNormalCallBack;
import org.greenrobot.eventbus.EventBus;

/* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.s2 */
/* loaded from: classes2.dex */
public class Mi3PublicProtocolFragment extends BaseUserProtocolFragment {

    /* compiled from: Mi3PublicProtocolFragment.java */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.s2$a */
    /* loaded from: classes2.dex */
    class C3482a implements HttpNormalCallBack {
        C3482a() {
        }

        @Override // com.ifengyu.library.p229b.p230d.HttpNormalCallBack
        /* renamed from: a */
        public void mo8716a(NewApiException newApiException) {
            Mi3PublicProtocolFragment.this.m10312X2(R.string.revoke_user_protocol_fail);
        }

        @Override // com.ifengyu.library.p229b.p230d.HttpNormalCallBack
        public void onSuccess() {
            Mi3PublicProtocolFragment.this.m10329C2();
            EventBus.m174c().m164m(new SimpleEvent(11));
            MainActivity.start(Mi3PublicProtocolFragment.this.getContext());
            Mi3PublicProtocolFragment.this.m10135v3();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: h3 */
    protected int mo9847h3() {
        return R.string.revoke_agree_public_net_protocol_subtitle;
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: u3 */
    protected void mo9846u3() {
        if (this.f15145A <= 0) {
            m10312X2(R.string.revoke_user_protocol_fail);
            return;
        }
        m10308b3();
        UserPrivacyReportUtil.m11152g(this.f15145A, new C3482a());
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: w3 */
    protected void mo9845w3() {
        UrlAdd.m11976c(UrlAdd.m11977b(1, String.valueOf(13)));
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: x3 */
    protected void mo9844x3() {
        UrlAdd.m11976c(UrlAdd.m11977b(2, String.valueOf(13)));
    }
}
