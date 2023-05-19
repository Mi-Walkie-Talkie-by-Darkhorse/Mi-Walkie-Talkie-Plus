package com.ifengyu.intercom.wxapi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.library.utils.UIUtils;
import com.tencent.p256mm.opensdk.modelbase.BaseReq;
import com.tencent.p256mm.opensdk.modelbase.BaseResp;
import com.tencent.p256mm.opensdk.modelmsg.SendAuth;
import com.tencent.p256mm.opensdk.modelmsg.SendMessageToWX;
import com.tencent.p256mm.opensdk.openapi.IWXAPI;
import com.tencent.p256mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.p256mm.opensdk.openapi.WXAPIFactory;
import p000a.p015f.p016a.LocalBroadcastManager;

/* loaded from: classes2.dex */
public class WXEntryActivity extends Activity implements IWXAPIEventHandler {
    /* renamed from: a */
    public static IWXAPI m8731a(Context context, @NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            C4161y.m11052c("WXEntryActivity", "weixin_app_id can't be null!");
        }
        IWXAPI createWXAPI = WXAPIFactory.createWXAPI(context, str, false);
        createWXAPI.registerApp(str);
        return createWXAPI;
    }

    /* renamed from: b */
    public static void m8730b(IWXAPI iwxapi) {
        if (!iwxapi.isWXAppInstalled()) {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.weixin_not_installed), false);
            return;
        }
        SendAuth.Req req = new SendAuth.Req();
        req.scope = "snsapi_userinfo";
        req.state = "fengyu_wx_login";
        iwxapi.sendReq(req);
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        MiTalkiApp.m14296h().m14295i().handleIntent(getIntent(), this);
    }

    @Override // com.tencent.p256mm.opensdk.openapi.IWXAPIEventHandler
    public void onReq(BaseReq baseReq) {
        C4161y.m11052c("WXEntryActivity", "onReq:" + baseReq.toString());
    }

    @Override // com.tencent.p256mm.opensdk.openapi.IWXAPIEventHandler
    public void onResp(BaseResp baseResp) {
        LocalBroadcastManager m26388b = LocalBroadcastManager.m26388b(getApplicationContext());
        int i = baseResp.errCode;
        if (i == -4) {
            Intent intent = new Intent("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN");
            intent.putExtra("login_weixin_resp_code", -4);
            m26388b.m26386d(intent);
        } else if (i == -2) {
            Intent intent2 = new Intent("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN");
            intent2.putExtra("login_weixin_resp_code", -2);
            m26388b.m26386d(intent2);
        } else if (i == 0) {
            if (baseResp instanceof SendAuth.Resp) {
                SendAuth.Resp resp = (SendAuth.Resp) baseResp;
                if ("fengyu_wx_login".equals(resp.state)) {
                    String str = resp.code;
                    Intent intent3 = new Intent("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN");
                    intent3.putExtra("login_weixin_resp_code", 0);
                    intent3.putExtra("login_weixin_code", str);
                    m26388b.m26386d(intent3);
                }
            } else {
                boolean z = baseResp instanceof SendMessageToWX.Resp;
            }
        }
        finish();
    }
}
