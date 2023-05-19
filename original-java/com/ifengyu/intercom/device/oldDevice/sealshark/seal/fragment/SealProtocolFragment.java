package com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment;

import android.text.TextUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.UrlAdd;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.p230d.HttpNormalCallBack;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.c */
/* loaded from: classes2.dex */
public class SealProtocolFragment extends BaseUserProtocolFragment {

    /* compiled from: SealProtocolFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.c$a */
    /* loaded from: classes2.dex */
    class C3759a implements HttpNormalCallBack {
        C3759a() {
        }

        @Override // com.ifengyu.library.p229b.p230d.HttpNormalCallBack
        /* renamed from: a */
        public void mo8716a(NewApiException newApiException) {
            SealProtocolFragment.this.m10312X2(R.string.revoke_user_protocol_fail);
        }

        @Override // com.ifengyu.library.p229b.p230d.HttpNormalCallBack
        public void onSuccess() {
            SealProtocolFragment.this.m10329C2();
            SealProtocolFragment.this.m10148g3();
            MainActivity.start(SealProtocolFragment.this.getContext());
            SealProtocolFragment.this.m10135v3();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: h3 */
    protected int mo9847h3() {
        return R.string.revoke_agree_device_protocol_subtitle;
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: u3 */
    protected void mo9846u3() {
        if (TextUtils.isEmpty(this.f15146z)) {
            m10312X2(R.string.revoke_user_protocol_fail);
            return;
        }
        m10308b3();
        UserPrivacyReportUtil.m11153f("seal", this.f15146z, new C3759a());
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: w3 */
    protected void mo9845w3() {
        UrlAdd.m11976c(UrlAdd.m11977b(1, String.valueOf(5)));
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: x3 */
    protected void mo9844x3() {
        UrlAdd.m11976c(UrlAdd.m11977b(2, String.valueOf(5)));
    }
}
