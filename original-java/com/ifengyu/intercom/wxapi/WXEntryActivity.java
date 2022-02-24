package com.ifengyu.intercom.wxapi;

import a.f.a.a;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.mm.opensdk.modelmsg.SendMessageToWX;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;

/* loaded from: classes2.dex */
public class WXEntryActivity extends Activity implements IWXAPIEventHandler {
    public static IWXAPI a(Context context, @NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            z.b("WXEntryActivity", "weixin_app_id can't be null!");
        }
        IWXAPI createWXAPI = WXAPIFactory.createWXAPI(context, str, false);
        createWXAPI.registerApp(str);
        return createWXAPI;
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ((MiTalkiApp) getApplication()).i().handleIntent(getIntent(), this);
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onReq(BaseReq baseReq) {
        z.b("WXEntryActivity", "onReq:" + baseReq.toString());
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onResp(BaseResp baseResp) {
        a a2 = a.a(getApplicationContext());
        int i = baseResp.errCode;
        if (i == -4) {
            Intent intent = new Intent("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN");
            intent.putExtra("login_weixin_resp_code", -4);
            a2.a(intent);
        } else if (i == -2) {
            Intent intent2 = new Intent("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN");
            intent2.putExtra("login_weixin_resp_code", -2);
            a2.a(intent2);
        } else if (i == 0) {
            if (baseResp instanceof SendAuth.Resp) {
                SendAuth.Resp resp = (SendAuth.Resp) baseResp;
                if ("fengyu_wx_login".equals(resp.state)) {
                    String str = resp.code;
                    Intent intent3 = new Intent("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN");
                    intent3.putExtra("login_weixin_resp_code", 0);
                    intent3.putExtra("login_weixin_code", str);
                    a2.a(intent3);
                }
            } else {
                boolean z = baseResp instanceof SendMessageToWX.Resp;
            }
        }
        finish();
    }

    public static void a(IWXAPI iwxapi) {
        if (!iwxapi.isWXAppInstalled()) {
            c0.a((CharSequence) k0.c(R.string.weixin_not_installed), false);
            return;
        }
        SendAuth.Req req = new SendAuth.Req();
        req.scope = "snsapi_userinfo";
        req.state = "fengyu_wx_login";
        iwxapi.sendReq(req);
    }
}
