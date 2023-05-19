package com.ifengyu.intercom.p189l.p198b.p201c;

import android.text.TextUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.UrlAdd;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.p230d.HttpNormalCallBack;

/* renamed from: com.ifengyu.intercom.l.b.c.r1 */
/* loaded from: classes2.dex */
public class Mi3ProtocolFragment extends BaseUserProtocolFragment {

    /* compiled from: Mi3ProtocolFragment.java */
    /* renamed from: com.ifengyu.intercom.l.b.c.r1$a */
    /* loaded from: classes2.dex */
    class C4040a implements HttpNormalCallBack {
        C4040a() {
        }

        @Override // com.ifengyu.library.p229b.p230d.HttpNormalCallBack
        /* renamed from: a */
        public void mo8716a(NewApiException newApiException) {
            Mi3ProtocolFragment.this.m10312X2(R.string.revoke_user_protocol_fail);
        }

        @Override // com.ifengyu.library.p229b.p230d.HttpNormalCallBack
        public void onSuccess() {
            Mi3ProtocolFragment.this.m10329C2();
            Mi3ProtocolFragment.this.m10148g3();
            MainActivity.start(Mi3ProtocolFragment.this.getContext());
            Mi3ProtocolFragment.this.m10135v3();
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
        UserPrivacyReportUtil.m11153f("mi3", this.f15146z, new C4040a());
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: w3 */
    protected void mo9845w3() {
        UrlAdd.m11976c(UrlAdd.m11977b(1, String.valueOf(14)));
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseUserProtocolFragment
    /* renamed from: x3 */
    protected void mo9844x3() {
        UrlAdd.m11976c(UrlAdd.m11977b(2, String.valueOf(14)));
    }
}
