package com.mi.mimsgsdk.upload;

import android.os.Build;
import android.os.Build.VERSION;
import android.support.annotation.AnyThread;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.base.os.SimpleRequest;
import com.mi.milinkforgame.sdk.base.os.SimpleRequest.LengthPair;
import com.mi.milinkforgame.sdk.base.os.SimpleRequest.StringContent;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.UserInfo;
import com.mi.mimsgsdk.database.IMessageDao;
import com.mi.mimsgsdk.utils.GlobalData;
import com.mi.mimsgsdk.utils.VersionUtils;
import java.io.IOException;
import java.util.HashMap;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.json.JSONException;
import org.json.JSONObject;
import rx.a;
import rx.a.C0098a;
import rx.e;

public class UploadTask {
    private static final String FEED_BACK_URL = "http://dzb.g.mi.com/vuf.do?";
    /* access modifiers changed from: private */
    public static final String TAG = UploadTask.class.getSimpleName();

    @AnyThread
    public static void notifyServerUploadResult(final String str, final String str2, final String str3) {
        a.a((C0098a<T>) new C0098a<Void>() {
            public void call(e<? super Void> eVar) {
                HashMap hashMap = new HashMap();
                hashMap.put("vuid", String.valueOf(UserInfo.getInstance().getUserId()));
                hashMap.put("imagesurls", "");
                hashMap.put("logurl", str3);
                hashMap.put("phonenumber", Base64Coder.encodeString(str));
                hashMap.put("feedbackmessage", Base64Coder.encodeString(str2));
                hashMap.put(Values.TIME, String.valueOf(System.currentTimeMillis()));
                hashMap.put("ua", Build.MODEL);
                hashMap.put("os", "android_" + VERSION.RELEASE);
                hashMap.put("version", VersionUtils.getMiSDKVersion());
                hashMap.put("appid", String.valueOf(GlobalData.getAppId()));
                try {
                    ClientLog.d(UploadTask.TAG, "notify server upload result, Get Request Params : " + hashMap);
                    StringContent postAsString = SimpleRequest.postAsString(UploadTask.FEED_BACK_URL, hashMap, null, true, null, new LengthPair(), false);
                    ClientLog.d(UploadTask.TAG, "notify server upload result, return : " + postAsString);
                    if (!UploadTask.parseResult(postAsString)) {
                        ClientLog.w(UploadTask.TAG, "notify server upload result failed");
                    }
                    ClientLog.d(UploadTask.TAG, "notify server upload result ok");
                } catch (IOException e) {
                    ClientLog.w(UploadTask.TAG, "notify server upload result failed", e);
                }
            }
        }).b(rx.e.e.b()).b((e<? super T>) new e<Void>() {
            public void onCompleted() {
            }

            public void onError(Throwable th) {
                ClientLog.w(UploadTask.TAG, "notify server upload result failed", th);
            }

            public void onNext(Void voidR) {
            }
        });
    }

    /* access modifiers changed from: private */
    public static boolean parseResult(StringContent stringContent) {
        if (stringContent == null) {
            return false;
        }
        String body = stringContent.getBody();
        if (TextUtils.isEmpty(body)) {
            return false;
        }
        if (body.contains("ok")) {
            return true;
        }
        try {
            JSONObject jSONObject = new JSONObject(body);
            if (!jSONObject.has(IMessageDao.BODY) || !"ok".equalsIgnoreCase(jSONObject.getString(IMessageDao.BODY))) {
                return false;
            }
            return true;
        } catch (JSONException e) {
            ClientLog.w(TAG, "parse json fail", e);
            return false;
        }
    }
}
