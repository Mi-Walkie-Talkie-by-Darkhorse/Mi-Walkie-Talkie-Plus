package com.tencent.connect.share;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.connect.a.a;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.common.Constants;
import com.tencent.connect.common.UIListenerManager;
import com.tencent.open.TDialog;
import com.tencent.open.a.f;
import com.tencent.open.b.d;
import com.tencent.open.utils.c;
import com.tencent.open.utils.g;
import com.tencent.open.utils.i;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.net.URLEncoder;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class QzoneShare extends BaseApi {
    public static final String SHARE_TO_QQ_APP_NAME = "appName";
    public static final String SHARE_TO_QQ_AUDIO_URL = "audio_url";
    public static final String SHARE_TO_QQ_EXT_INT = "cflag";
    public static final String SHARE_TO_QQ_EXT_STR = "share_qq_ext_str";
    public static final String SHARE_TO_QQ_IMAGE_LOCAL_URL = "imageLocalUrl";
    public static final String SHARE_TO_QQ_IMAGE_URL = "imageUrl";
    public static final String SHARE_TO_QQ_SITE = "site";
    public static final String SHARE_TO_QQ_SUMMARY = "summary";
    public static final String SHARE_TO_QQ_TARGET_URL = "targetUrl";
    public static final String SHARE_TO_QQ_TITLE = "title";
    public static final String SHARE_TO_QZONE_KEY_TYPE = "req_type";
    public static final int SHARE_TO_QZONE_TYPE_APP = 6;
    public static final int SHARE_TO_QZONE_TYPE_IMAGE = 5;
    public static final int SHARE_TO_QZONE_TYPE_IMAGE_TEXT = 1;
    public static final int SHARE_TO_QZONE_TYPE_NO_TYPE = 0;
    private boolean c = true;
    private boolean d = false;
    private boolean e = false;
    private boolean f = false;
    public String mViaShareQzoneType = "";

    public QzoneShare(Context context, QQToken qQToken) {
        super(qQToken);
    }

    public void shareToQzone(final Activity activity, final Bundle bundle, final IUiListener iUiListener) {
        String str;
        String str2;
        f.c("openSDK_LOG.QzoneShare", "shareToQzone() -- start");
        if (bundle == null) {
            iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_NULL_ERROR, null));
            f.e("openSDK_LOG.QzoneShare", "shareToQzone() params is null");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_PARAM_NULL_ERROR);
            return;
        }
        String string = bundle.getString("title");
        String string2 = bundle.getString("summary");
        String string3 = bundle.getString("targetUrl");
        ArrayList stringArrayList = bundle.getStringArrayList("imageUrl");
        String a = i.a((Context) activity);
        if (a == null) {
            a = bundle.getString("appName");
        } else if (a.length() > 20) {
            a = a.substring(0, 20) + "...";
        }
        int i = bundle.getInt("req_type");
        switch (i) {
            case 1:
                this.mViaShareQzoneType = "1";
                break;
            case 5:
                this.mViaShareQzoneType = "2";
                break;
            case 6:
                this.mViaShareQzoneType = "4";
                break;
            default:
                this.mViaShareQzoneType = "1";
                break;
        }
        switch (i) {
            case 1:
                this.c = true;
                this.d = false;
                this.e = true;
                this.f = false;
                String str3 = string3;
                str = string;
                str2 = str3;
                break;
            case 5:
                iUiListener.onError(new UiError(-5, Constants.MSG_SHARE_TYPE_ERROR, null));
                f.e("openSDK_LOG.QzoneShare", "shareToQzone() error--end请选择支持的分享类型");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQzone() 请选择支持的分享类型");
                return;
            case 6:
                if (!i.f(activity, "5.0.0")) {
                    String format = String.format("http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1", new Object[]{this.b.getAppId(), "mqq"});
                    bundle.putString("targetUrl", format);
                    String str4 = format;
                    str = string;
                    str2 = str4;
                    break;
                } else {
                    iUiListener.onError(new UiError(-15, Constants.MSG_PARAM_APPSHARE_TOO_LOW, null));
                    f.e("openSDK_LOG.QzoneShare", "-->shareToQzone, app share is not support below qq5.0.");
                    d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQzone, app share is not support below qq5.0.");
                    return;
                }
            default:
                if (!i.e(string) || !i.e(string2)) {
                    this.c = true;
                } else if (stringArrayList == null || stringArrayList.size() == 0) {
                    string = "来自" + a + "的分享";
                    this.c = true;
                } else {
                    this.c = false;
                }
                this.d = false;
                this.e = true;
                this.f = false;
                String str5 = string3;
                str = string;
                str2 = str5;
                break;
        }
        if (i.b() || !i.f(activity, "4.5.0")) {
            if (this.c) {
                if (TextUtils.isEmpty(str2)) {
                    iUiListener.onError(new UiError(-5, Constants.MSG_PARAM_TARGETURL_NULL_ERROR, null));
                    f.e("openSDK_LOG.QzoneShare", "shareToQzone() targetUrl null error--end");
                    d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_PARAM_TARGETURL_NULL_ERROR);
                    return;
                } else if (!i.g(str2)) {
                    iUiListener.onError(new UiError(-5, Constants.MSG_PARAM_TARGETURL_ERROR, null));
                    f.e("openSDK_LOG.QzoneShare", "shareToQzone() targetUrl error--end");
                    d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_PARAM_TARGETURL_ERROR);
                    return;
                }
            }
            if (this.d) {
                bundle.putString("title", "");
                bundle.putString("summary", "");
            } else if (!this.e || !i.e(str)) {
                if (!i.e(str) && str.length() > 200) {
                    bundle.putString("title", i.a(str, 200, (String) null, (String) null));
                }
                if (!i.e(string2) && string2.length() > 600) {
                    bundle.putString("summary", i.a(string2, 600, (String) null, (String) null));
                }
            } else {
                iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_TITLE_NULL_ERROR, null));
                f.e("openSDK_LOG.QzoneShare", "shareToQzone() title is null--end");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQzone() title is null");
                return;
            }
            if (!TextUtils.isEmpty(a)) {
                bundle.putString("appName", a);
            }
            if (stringArrayList != null && (stringArrayList == null || stringArrayList.size() != 0)) {
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 < stringArrayList.size()) {
                        String str6 = (String) stringArrayList.get(i3);
                        if (!i.g(str6) && !i.h(str6)) {
                            stringArrayList.remove(i3);
                        }
                        i2 = i3 + 1;
                    } else if (stringArrayList.size() == 0) {
                        iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_IMAGE_URL_FORMAT_ERROR, null));
                        f.e("openSDK_LOG.QzoneShare", "shareToQzone() MSG_PARAM_IMAGE_URL_FORMAT_ERROR--end");
                        d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQzone() 非法的图片地址!");
                        return;
                    } else {
                        bundle.putStringArrayList("imageUrl", stringArrayList);
                    }
                }
            } else if (this.f) {
                iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_IMAGE_ERROR, null));
                f.e("openSDK_LOG.QzoneShare", "shareToQzone() imageUrl is null -- end");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQzone() imageUrl is null");
                return;
            }
            if (!i.f(activity, "4.6.0")) {
                f.c("openSDK_LOG.QzoneShare", "shareToQzone() qqver greater than 4.6.0");
                a.a((Context) activity, stringArrayList, (c) new c() {
                    public void a(int i, String str) {
                    }

                    public void a(int i, ArrayList<String> arrayList) {
                        if (i == 0) {
                            bundle.putStringArrayList("imageUrl", arrayList);
                        }
                        QzoneShare.this.b(activity, bundle, iUiListener);
                    }
                });
            } else if (g.c(activity, "4.2.0") < 0 || g.c(activity, "4.6.0") >= 0) {
                f.d("openSDK_LOG.QzoneShare", "shareToQzone() qqver below 4.2.0, will show download dialog");
                new TDialog(activity, "", a(""), null, this.b).show();
            } else {
                f.d("openSDK_LOG.QzoneShare", "shareToQzone() qqver between 4.2.0 and 4.6.0, will use qqshare");
                QQShare qQShare = new QQShare(activity, this.b);
                if (stringArrayList != null && stringArrayList.size() > 0) {
                    String str7 = (String) stringArrayList.get(0);
                    if (i != 5 || i.h(str7)) {
                        bundle.putString("imageLocalUrl", str7);
                    } else {
                        iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_IMAGE_URL_MUST_BE_LOCAL, null));
                        f.e("openSDK_LOG.QzoneShare", "shareToQzone()手Q版本过低，纯图分享不支持网路图片");
                        d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQzone()手Q版本过低，纯图分享不支持网路图片");
                        return;
                    }
                }
                if (!i.f(activity, "4.5.0")) {
                    bundle.putInt("cflag", 1);
                }
                qQShare.shareToQQ(activity, bundle, iUiListener);
            }
            f.c("openSDK_LOG.QzoneShare", "shareToQzone() --end");
            return;
        }
        iUiListener.onError(new UiError(-6, Constants.MSG_SHARE_NOSD_ERROR, null));
        f.e("openSDK_LOG.QzoneShare", "shareToQzone() sdcard is null--end");
        d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_SHARE_NOSD_ERROR);
    }

    /* access modifiers changed from: private */
    public void b(Activity activity, Bundle bundle, IUiListener iUiListener) {
        f.c("openSDK_LOG.QzoneShare", "doshareToQzone() --start");
        StringBuffer stringBuffer = new StringBuffer("mqqapi://share/to_qzone?src_type=app&version=1&file_type=news");
        ArrayList stringArrayList = bundle.getStringArrayList("imageUrl");
        String string = bundle.getString("title");
        String string2 = bundle.getString("summary");
        String string3 = bundle.getString("targetUrl");
        String string4 = bundle.getString("audio_url");
        int i = bundle.getInt("req_type", 1);
        String string5 = bundle.getString("appName");
        int i2 = bundle.getInt("cflag", 0);
        String string6 = bundle.getString("share_qq_ext_str");
        String appId = this.b.getAppId();
        String openId = this.b.getOpenId();
        f.a("openSDK_LOG.QzoneShare", "openId:" + openId);
        if (stringArrayList != null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            int size = stringArrayList.size() > 9 ? 9 : stringArrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                stringBuffer2.append(URLEncoder.encode((String) stringArrayList.get(i3)));
                if (i3 != size - 1) {
                    stringBuffer2.append(";");
                }
            }
            stringBuffer.append("&image_url=" + Base64.encodeToString(i.i(stringBuffer2.toString()), 2));
        }
        if (!TextUtils.isEmpty(string)) {
            stringBuffer.append("&title=" + Base64.encodeToString(i.i(string), 2));
        }
        if (!TextUtils.isEmpty(string2)) {
            stringBuffer.append("&description=" + Base64.encodeToString(i.i(string2), 2));
        }
        if (!TextUtils.isEmpty(appId)) {
            stringBuffer.append("&share_id=" + appId);
        }
        if (!TextUtils.isEmpty(string3)) {
            stringBuffer.append("&url=" + Base64.encodeToString(i.i(string3), 2));
        }
        if (!TextUtils.isEmpty(string5)) {
            stringBuffer.append("&app_name=" + Base64.encodeToString(i.i(string5), 2));
        }
        if (!i.e(openId)) {
            stringBuffer.append("&open_id=" + Base64.encodeToString(i.i(openId), 2));
        }
        if (!i.e(string4)) {
            stringBuffer.append("&audioUrl=" + Base64.encodeToString(i.i(string4), 2));
        }
        stringBuffer.append("&req_type=" + Base64.encodeToString(i.i(String.valueOf(i)), 2));
        if (!i.e(string6)) {
            stringBuffer.append("&share_qq_ext_str=" + Base64.encodeToString(i.i(string6), 2));
        }
        stringBuffer.append("&cflag=" + Base64.encodeToString(i.i(String.valueOf(i2)), 2));
        f.a("openSDK_LOG.QzoneShare", "doshareToQzone, url: " + stringBuffer.toString());
        a.a(com.tencent.open.utils.d.a(), this.b, "requireApi", "shareToNativeQQ");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(stringBuffer.toString()));
        intent.putExtra("pkg_name", activity.getPackageName());
        if (i.f(activity, "4.6.0")) {
            if (a(intent)) {
                UIListenerManager.getInstance().setListenerWithRequestcode(Constants.REQUEST_OLD_QZSHARE, iUiListener);
                a(activity, intent, (int) Constants.REQUEST_OLD_QZSHARE);
            }
            f.c("openSDK_LOG.QzoneShare", "doShareToQzone() -- QQ Version is < 4.6.0");
        } else {
            f.c("openSDK_LOG.QzoneShare", "doShareToQzone() -- QQ Version is > 4.6.0");
            if (UIListenerManager.getInstance().setListnerWithAction("shareToQzone", iUiListener) != null) {
                f.c("openSDK_LOG.QzoneShare", "doShareToQzone() -- do listener onCancel()");
            }
            if (a(intent)) {
                a(activity, Constants.REQUEST_QZONE_SHARE, intent, false);
            }
        }
        if (a(intent)) {
            d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_SHARE_TO_QZONE, Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, "3", "0", this.mViaShareQzoneType, "0", "1", "0");
            d.a().a(0, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "");
        } else {
            d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_SHARE_TO_QZONE, Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, "3", "1", this.mViaShareQzoneType, "0", "1", "0");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "hasActivityForIntent fail");
        }
        f.c("openSDK_LOG", "doShareToQzone() --end");
    }

    public void releaseResource() {
    }
}
