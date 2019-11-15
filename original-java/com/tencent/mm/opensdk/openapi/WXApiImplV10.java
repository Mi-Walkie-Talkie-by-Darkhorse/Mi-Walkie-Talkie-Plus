package com.tencent.mm.opensdk.openapi;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.mm.opensdk.channel.MMessageActV2;
import com.tencent.mm.opensdk.channel.MMessageActV2.Args;
import com.tencent.mm.opensdk.channel.a.a;
import com.tencent.mm.opensdk.channel.a.a.C0053a;
import com.tencent.mm.opensdk.channel.a.b;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import com.tencent.mm.opensdk.constants.ConstantsAPI.Token;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.modelbiz.AddCardToWXCardPackage;
import com.tencent.mm.opensdk.modelbiz.ChooseCardFromWXCardPackage;
import com.tencent.mm.opensdk.modelbiz.CreateChatroom;
import com.tencent.mm.opensdk.modelbiz.HandleScanResult;
import com.tencent.mm.opensdk.modelbiz.JoinChatroom;
import com.tencent.mm.opensdk.modelbiz.OpenWebview;
import com.tencent.mm.opensdk.modelbiz.SubscribeMessage.Req;
import com.tencent.mm.opensdk.modelbiz.SubscribeMessage.Resp;
import com.tencent.mm.opensdk.modelmsg.GetMessageFromWX;
import com.tencent.mm.opensdk.modelmsg.LaunchFromWX;
import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.mm.opensdk.modelmsg.SendMessageToWX;
import com.tencent.mm.opensdk.modelmsg.ShowMessageFromWX;
import com.tencent.mm.opensdk.modelmsg.WXMiniProgramObject;
import com.tencent.mm.opensdk.modelmsg.WXWebpageObject;
import com.tencent.mm.opensdk.modelpay.PayResp;
import com.tencent.mm.opensdk.utils.ILog;
import com.tencent.mm.opensdk.utils.Log;
import com.tencent.mm.opensdk.utils.d;
import com.tencent.tauth.AuthActivity;

final class WXApiImplV10 implements IWXAPI {
    private static final String TAG = "MicroMsg.SDK.WXApiImplV10";
    private static String wxappPayEntryClassname = null;
    private String appId;
    private boolean checkSignature = false;
    private Context context;
    private boolean detached = false;

    WXApiImplV10(Context context2, String str, boolean z) {
        Log.d(TAG, "<init>, appId = " + str + ", checkSignature = " + z);
        this.context = context2;
        this.appId = str;
        this.checkSignature = z;
    }

    private boolean checkSumConsistent(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr.length == 0 || bArr2 == null || bArr2.length == 0) {
            Log.e(TAG, "checkSumConsistent fail, invalid arguments");
            return false;
        } else if (bArr.length != bArr2.length) {
            Log.e(TAG, "checkSumConsistent fail, length is different");
            return false;
        } else {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] != bArr2[i]) {
                    return false;
                }
            }
            return true;
        }
    }

    private boolean createChatroom(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/createChatroom"), null, null, new String[]{this.appId, bundle.getString("_wxapi_basereq_transaction", ""), bundle.getString("_wxapi_create_chatroom_group_id", ""), bundle.getString("_wxapi_create_chatroom_chatroom_name", ""), bundle.getString("_wxapi_create_chatroom_chatroom_nickname", ""), bundle.getString("_wxapi_create_chatroom_ext_msg", ""), bundle.getString("_wxapi_basereq_openid", "")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean handleWxInternalRespType(String str, IWXAPIEventHandler iWXAPIEventHandler) {
        Log.i(TAG, "handleWxInternalRespType, extInfo = " + str);
        try {
            Uri parse = Uri.parse("http://www.qq.com/s?" + str);
            String queryParameter = parse.getQueryParameter("wx_internal_resptype");
            Log.i(TAG, "handleWxInternalRespType, respType = " + queryParameter);
            if (d.a(queryParameter)) {
                Log.e(TAG, "handleWxInternalRespType fail, respType is null");
                return false;
            } else if (queryParameter.equals("subscribemessage")) {
                Resp resp = new Resp();
                resp.openId = parse.getQueryParameter("openid");
                resp.templateID = parse.getQueryParameter("template_id");
                resp.scene = d.b(parse.getQueryParameter("scene"));
                resp.action = parse.getQueryParameter(AuthActivity.ACTION_KEY);
                resp.reserved = parse.getQueryParameter("reserved");
                iWXAPIEventHandler.onResp(resp);
                return true;
            } else {
                Log.e(TAG, "handleWxInternalRespType fail, unknown resptype = " + queryParameter);
                return false;
            }
        } catch (Exception e) {
            Log.e(TAG, "handleWxInternalRespType fail, ex = " + e.getMessage());
            return false;
        }
    }

    private boolean joinChatroom(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/joinChatroom"), null, null, new String[]{this.appId, bundle.getString("_wxapi_basereq_transaction", ""), bundle.getString("_wxapi_join_chatroom_group_id", ""), bundle.getString("_wxapi_join_chatroom_chatroom_nickname", ""), bundle.getString("_wxapi_join_chatroom_ext_msg", ""), bundle.getString("_wxapi_basereq_openid", "")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendAddCardToWX(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/addCardToWX"), null, null, new String[]{this.appId, bundle.getString("_wxapi_add_card_to_wx_card_list"), bundle.getString("_wxapi_basereq_transaction")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendChooseCardFromWX(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/chooseCardFromWX"), null, null, new String[]{bundle.getString("_wxapi_choose_card_from_wx_card_app_id"), bundle.getString("_wxapi_choose_card_from_wx_card_location_id"), bundle.getString("_wxapi_choose_card_from_wx_card_sign_type"), bundle.getString("_wxapi_choose_card_from_wx_card_card_sign"), bundle.getString("_wxapi_choose_card_from_wx_card_time_stamp"), bundle.getString("_wxapi_choose_card_from_wx_card_nonce_str"), bundle.getString("_wxapi_choose_card_from_wx_card_card_id"), bundle.getString("_wxapi_choose_card_from_wx_card_card_type"), bundle.getString("_wxapi_choose_card_from_wx_card_can_multi_select"), bundle.getString("_wxapi_basereq_transaction")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendHandleScanResult(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/handleScanResult"), null, null, new String[]{this.appId, bundle.getString("_wxapi_scan_qrcode_result")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendJumpToBizProfileReq(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/jumpToBizProfile"), null, null, new String[]{this.appId, bundle.getString("_wxapi_jump_to_biz_profile_req_to_user_name"), bundle.getString("_wxapi_jump_to_biz_profile_req_ext_msg"), bundle.getInt("_wxapi_jump_to_biz_profile_req_scene"), bundle.getInt("_wxapi_jump_to_biz_profile_req_profile_type")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendJumpToBizTempSessionReq(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/jumpToBizTempSession"), null, null, new String[]{this.appId, bundle.getString("_wxapi_jump_to_biz_webview_req_to_user_name"), bundle.getString("_wxapi_jump_to_biz_webview_req_session_from"), bundle.getInt("_wxapi_jump_to_biz_webview_req_show_type")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendJumpToBizWebviewReq(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/jumpToBizProfile"), null, null, new String[]{this.appId, bundle.getString("_wxapi_jump_to_biz_webview_req_to_user_name"), bundle.getString("_wxapi_jump_to_biz_webview_req_ext_msg"), bundle.getInt("_wxapi_jump_to_biz_webview_req_scene")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendOpenBusiLuckyMoney(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openBusiLuckyMoney"), null, null, new String[]{this.appId, bundle.getString("_wxapi_open_busi_lucky_money_timeStamp"), bundle.getString("_wxapi_open_busi_lucky_money_nonceStr"), bundle.getString("_wxapi_open_busi_lucky_money_signType"), bundle.getString("_wxapi_open_busi_lucky_money_signature"), bundle.getString("_wxapi_open_busi_lucky_money_package")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendOpenRankListReq(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openRankList"), null, null, new String[0], null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendOpenWebview(Context context2, Bundle bundle) {
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openWebview"), null, null, new String[]{this.appId, bundle.getString("_wxapi_jump_to_webview_url"), bundle.getString("_wxapi_basereq_transaction")}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    private boolean sendPayReq(Context context2, Bundle bundle) {
        if (wxappPayEntryClassname == null) {
            wxappPayEntryClassname = new MMSharedPreferences(context2).getString("_wxapp_pay_entry_classname_", null);
            Log.d(TAG, "pay, set wxappPayEntryClassname = " + wxappPayEntryClassname);
            if (wxappPayEntryClassname == null) {
                try {
                    wxappPayEntryClassname = context2.getPackageManager().getApplicationInfo("com.tencent.mm", 128).metaData.getString("com.tencent.mm.BuildInfo.OPEN_SDK_PAY_ENTRY_CLASSNAME", null);
                } catch (Exception e) {
                    Log.e(TAG, "get from metaData failed : " + e.getMessage());
                }
            }
            if (wxappPayEntryClassname == null) {
                Log.e(TAG, "pay fail, wxappPayEntryClassname is null");
                return false;
            }
        }
        Args args = new Args();
        args.bundle = bundle;
        args.targetPkgName = "com.tencent.mm";
        args.targetClassName = wxappPayEntryClassname;
        return MMessageActV2.send(context2, args);
    }

    private boolean sendSubscribeMessage(Context context2, BaseReq baseReq) {
        Req req = (Req) baseReq;
        Cursor query = context2.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.comm.provider/openTypeWebview"), null, null, new String[]{this.appId, "1", String.valueOf(req.scene), req.templateID, req.reserved}, null);
        if (query != null) {
            query.close();
        }
        return true;
    }

    public final void detach() {
        Log.d(TAG, "detach");
        this.detached = true;
        this.context = null;
    }

    public final int getWXAppSupportAPI() {
        if (this.detached) {
            throw new IllegalStateException("getWXAppSupportAPI fail, WXMsgImpl has been detached");
        } else if (!isWXAppInstalled()) {
            Log.e(TAG, "open wx app failed, not installed or signature check failed");
            return 0;
        } else {
            int i = new MMSharedPreferences(this.context).getInt("_build_info_sdk_int_", 0);
            if (i != 0) {
                return i;
            }
            try {
                return this.context.getPackageManager().getApplicationInfo("com.tencent.mm", 128).metaData.getInt("com.tencent.mm.BuildInfo.OPEN_SDK_VERSION", 0);
            } catch (Exception e) {
                Log.e(TAG, "get from metaData failed : " + e.getMessage());
                return i;
            }
        }
    }

    public final boolean handleIntent(Intent intent, IWXAPIEventHandler iWXAPIEventHandler) {
        try {
            if (!WXApiImplComm.isIntentFromWx(intent, Token.WX_TOKEN_VALUE_MSG)) {
                Log.i(TAG, "handleIntent fail, intent not from weixin msg");
                return false;
            } else if (this.detached) {
                throw new IllegalStateException("handleIntent fail, WXMsgImpl has been detached");
            } else {
                String stringExtra = intent.getStringExtra(ConstantsAPI.CONTENT);
                int intExtra = intent.getIntExtra(ConstantsAPI.SDK_VERSION, 0);
                String stringExtra2 = intent.getStringExtra(ConstantsAPI.APP_PACKAGE);
                if (stringExtra2 == null || stringExtra2.length() == 0) {
                    Log.e(TAG, "invalid argument");
                    return false;
                } else if (!checkSumConsistent(intent.getByteArrayExtra(ConstantsAPI.CHECK_SUM), b.a(stringExtra, intExtra, stringExtra2))) {
                    Log.e(TAG, "checksum fail");
                    return false;
                } else {
                    int intExtra2 = intent.getIntExtra("_wxapi_command_type", 0);
                    Log.i(TAG, "handleIntent, cmd = " + intExtra2);
                    switch (intExtra2) {
                        case 1:
                            iWXAPIEventHandler.onResp(new SendAuth.Resp(intent.getExtras()));
                            return true;
                        case 2:
                            iWXAPIEventHandler.onResp(new SendMessageToWX.Resp(intent.getExtras()));
                            return true;
                        case 3:
                            iWXAPIEventHandler.onReq(new GetMessageFromWX.Req(intent.getExtras()));
                            return true;
                        case 4:
                            ShowMessageFromWX.Req req = new ShowMessageFromWX.Req(intent.getExtras());
                            String str = req.message.messageExt;
                            if (str == null || !str.contains("wx_internal_resptype")) {
                                iWXAPIEventHandler.onReq(req);
                                return true;
                            }
                            boolean handleWxInternalRespType = handleWxInternalRespType(str, iWXAPIEventHandler);
                            Log.i(TAG, "handleIntent, extInfo contains wx_internal_resptype, ret = " + handleWxInternalRespType);
                            return handleWxInternalRespType;
                        case 5:
                            iWXAPIEventHandler.onResp(new PayResp(intent.getExtras()));
                            return true;
                        case 6:
                            iWXAPIEventHandler.onReq(new LaunchFromWX.Req(intent.getExtras()));
                            return true;
                        case 9:
                            iWXAPIEventHandler.onResp(new AddCardToWXCardPackage.Resp(intent.getExtras()));
                            return true;
                        case 12:
                            iWXAPIEventHandler.onResp(new OpenWebview.Resp(intent.getExtras()));
                            return true;
                        case 14:
                            iWXAPIEventHandler.onResp(new CreateChatroom.Resp(intent.getExtras()));
                            return true;
                        case 15:
                            iWXAPIEventHandler.onResp(new JoinChatroom.Resp(intent.getExtras()));
                            return true;
                        case 16:
                            iWXAPIEventHandler.onResp(new ChooseCardFromWXCardPackage.Resp(intent.getExtras()));
                            return true;
                        case 17:
                            iWXAPIEventHandler.onResp(new HandleScanResult.Resp(intent.getExtras()));
                            return true;
                        default:
                            Log.e(TAG, "unknown cmd = " + intExtra2);
                            return false;
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "handleIntent fail, ex = " + e.getMessage());
            return false;
        }
    }

    public final boolean isWXAppInstalled() {
        if (this.detached) {
            throw new IllegalStateException("isWXAppInstalled fail, WXMsgImpl has been detached");
        }
        try {
            PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo("com.tencent.mm", 64);
            if (packageInfo == null) {
                return false;
            }
            return WXApiImplComm.validateAppSignature(this.context, packageInfo.signatures, this.checkSignature);
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    public final boolean isWXAppSupportAPI() {
        if (!this.detached) {
            return getWXAppSupportAPI() >= 620757000;
        }
        throw new IllegalStateException("isWXAppSupportAPI fail, WXMsgImpl has been detached");
    }

    public final boolean openWXApp() {
        if (this.detached) {
            throw new IllegalStateException("openWXApp fail, WXMsgImpl has been detached");
        } else if (!isWXAppInstalled()) {
            Log.e(TAG, "open wx app failed, not installed or signature check failed");
            return false;
        } else {
            try {
                this.context.startActivity(this.context.getPackageManager().getLaunchIntentForPackage("com.tencent.mm"));
                return true;
            } catch (Exception e) {
                Log.e(TAG, "startActivity fail, exception = " + e.getMessage());
                return false;
            }
        }
    }

    public final boolean registerApp(String str) {
        return registerApp(str, 0);
    }

    public final boolean registerApp(String str, long j) {
        if (this.detached) {
            throw new IllegalStateException("registerApp fail, WXMsgImpl has been detached");
        } else if (!WXApiImplComm.validateAppSignatureForPackage(this.context, "com.tencent.mm", this.checkSignature)) {
            Log.e(TAG, "register app failed for wechat app signature check failed");
            return false;
        } else {
            Log.d(TAG, "registerApp, appId = " + str);
            if (str != null) {
                this.appId = str;
            }
            Log.d(TAG, "registerApp, appId = " + str);
            if (str != null) {
                this.appId = str;
            }
            Log.d(TAG, "register app " + this.context.getPackageName());
            C0053a aVar = new C0053a();
            aVar.a = "com.tencent.mm";
            aVar.action = ConstantsAPI.ACTION_HANDLE_APP_REGISTER;
            aVar.content = "weixin://registerapp?appid=" + this.appId;
            aVar.b = j;
            return a.a(this.context, aVar);
        }
    }

    public final boolean sendReq(BaseReq baseReq) {
        if (this.detached) {
            throw new IllegalStateException("sendReq fail, WXMsgImpl has been detached");
        } else if (!WXApiImplComm.validateAppSignatureForPackage(this.context, "com.tencent.mm", this.checkSignature)) {
            Log.e(TAG, "sendReq failed for wechat app signature check failed");
            return false;
        } else if (!baseReq.checkArgs()) {
            Log.e(TAG, "sendReq checkArgs fail");
            return false;
        } else {
            Log.i(TAG, "sendReq, req type = " + baseReq.getType());
            Bundle bundle = new Bundle();
            baseReq.toBundle(bundle);
            if (baseReq.getType() == 5) {
                return sendPayReq(this.context, bundle);
            }
            if (baseReq.getType() == 7) {
                return sendJumpToBizProfileReq(this.context, bundle);
            }
            if (baseReq.getType() == 8) {
                return sendJumpToBizWebviewReq(this.context, bundle);
            }
            if (baseReq.getType() == 10) {
                return sendJumpToBizTempSessionReq(this.context, bundle);
            }
            if (baseReq.getType() == 9) {
                return sendAddCardToWX(this.context, bundle);
            }
            if (baseReq.getType() == 16) {
                return sendChooseCardFromWX(this.context, bundle);
            }
            if (baseReq.getType() == 11) {
                return sendOpenRankListReq(this.context, bundle);
            }
            if (baseReq.getType() == 12) {
                return sendOpenWebview(this.context, bundle);
            }
            if (baseReq.getType() == 13) {
                return sendOpenBusiLuckyMoney(this.context, bundle);
            }
            if (baseReq.getType() == 14) {
                return createChatroom(this.context, bundle);
            }
            if (baseReq.getType() == 15) {
                return joinChatroom(this.context, bundle);
            }
            if (baseReq.getType() == 17) {
                return sendHandleScanResult(this.context, bundle);
            }
            if (baseReq.getType() == 18) {
                return sendSubscribeMessage(this.context, baseReq);
            }
            if (baseReq.getType() == 2 && bundle.getInt("_wxapi_sendmessagetowx_req_media_type") == 36) {
                SendMessageToWX.Req req = (SendMessageToWX.Req) baseReq;
                if (getWXAppSupportAPI() < 620756993) {
                    WXWebpageObject wXWebpageObject = new WXWebpageObject();
                    wXWebpageObject.webpageUrl = bundle.getString("_wxminiprogram_webpageurl");
                    req.message.mediaObject = wXWebpageObject;
                } else {
                    WXMiniProgramObject wXMiniProgramObject = (WXMiniProgramObject) req.message.mediaObject;
                    wXMiniProgramObject.userName += "@app";
                    String str = wXMiniProgramObject.path;
                    if (!d.a(str)) {
                        String[] split = str.split("\\?");
                        wXMiniProgramObject.path = split.length > 1 ? split[0] + ".html?" + split[1] : split[0] + ".html";
                    }
                }
                req.scene = 0;
                baseReq.toBundle(bundle);
            }
            Args args = new Args();
            args.bundle = bundle;
            args.content = "weixin://sendreq?appid=" + this.appId;
            args.targetPkgName = "com.tencent.mm";
            args.targetClassName = "com.tencent.mm.plugin.base.stub.WXEntryActivity";
            return MMessageActV2.send(this.context, args);
        }
    }

    public final boolean sendResp(BaseResp baseResp) {
        if (this.detached) {
            throw new IllegalStateException("sendResp fail, WXMsgImpl has been detached");
        } else if (!WXApiImplComm.validateAppSignatureForPackage(this.context, "com.tencent.mm", this.checkSignature)) {
            Log.e(TAG, "sendResp failed for wechat app signature check failed");
            return false;
        } else if (!baseResp.checkArgs()) {
            Log.e(TAG, "sendResp checkArgs fail");
            return false;
        } else {
            Bundle bundle = new Bundle();
            baseResp.toBundle(bundle);
            Args args = new Args();
            args.bundle = bundle;
            args.content = "weixin://sendresp?appid=" + this.appId;
            args.targetPkgName = "com.tencent.mm";
            args.targetClassName = "com.tencent.mm.plugin.base.stub.WXEntryActivity";
            return MMessageActV2.send(this.context, args);
        }
    }

    public final void setLogImpl(ILog iLog) {
        Log.setLogImpl(iLog);
    }

    public final void unregisterApp() {
        if (this.detached) {
            throw new IllegalStateException("unregisterApp fail, WXMsgImpl has been detached");
        } else if (!WXApiImplComm.validateAppSignatureForPackage(this.context, "com.tencent.mm", this.checkSignature)) {
            Log.e(TAG, "unregister app failed for wechat app signature check failed");
        } else {
            Log.d(TAG, "unregisterApp, appId = " + this.appId);
            if (this.appId == null || this.appId.length() == 0) {
                Log.e(TAG, "unregisterApp fail, appId is empty");
                return;
            }
            Log.d(TAG, "unregister app " + this.context.getPackageName());
            C0053a aVar = new C0053a();
            aVar.a = "com.tencent.mm";
            aVar.action = ConstantsAPI.ACTION_HANDLE_APP_UNREGISTER;
            aVar.content = "weixin://unregisterapp?appid=" + this.appId;
            a.a(this.context, aVar);
        }
    }
}
