package com.ifengyu.intercom.wxapi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.modelmsg.SendAuth.Req;
import com.tencent.mm.opensdk.modelmsg.SendAuth.Resp;
import com.tencent.mm.opensdk.modelmsg.SendMessageToWX;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class WXEntryActivity extends Activity implements IWXAPIEventHandler {
    /* access modifiers changed from: protected */
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ((MiTalkiApp) getApplication()).h().handleIntent(getIntent(), this);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "WXEntryActivity");
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    public static IWXAPI a(Context context, @NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            s.e("WXEntryActivity", "weixin_app_id can't be null!");
        }
        IWXAPI createWXAPI = WXAPIFactory.createWXAPI(context, str, false);
        createWXAPI.registerApp(str);
        return createWXAPI;
    }

    public static void a(IWXAPI iwxapi) {
        if (!iwxapi.isWXAppInstalled()) {
            v.a((CharSequence) ad.a((int) R.string.weixin_not_installed), false);
            return;
        }
        Req req = new Req();
        req.scope = "snsapi_userinfo";
        req.state = "fengyu_wx_login";
        iwxapi.sendReq(req);
    }

    public void onReq(BaseReq baseReq) {
        s.e("WXEntryActivity", "onReq:" + baseReq.toString());
    }

    public void onResp(BaseResp baseResp) {
        LocalBroadcastManager instance = LocalBroadcastManager.getInstance(getApplicationContext());
        switch (baseResp.errCode) {
            case -4:
                Intent intent = new Intent("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN");
                intent.putExtra("login_weixin_resp_code", -4);
                instance.sendBroadcast(intent);
                break;
            case -2:
                Intent intent2 = new Intent("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN");
                intent2.putExtra("login_weixin_resp_code", -2);
                instance.sendBroadcast(intent2);
                break;
            case 0:
                if (baseResp instanceof Resp) {
                    Resp resp = (Resp) baseResp;
                    if ("fengyu_wx_login".equals(resp.state)) {
                        String str = resp.code;
                        Intent intent3 = new Intent("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN");
                        intent3.putExtra("login_weixin_resp_code", 0);
                        intent3.putExtra("login_weixin_code", str);
                        instance.sendBroadcast(intent3);
                        break;
                    }
                } else if (baseResp instanceof SendMessageToWX.Resp) {
                }
                break;
        }
        finish();
    }
}
