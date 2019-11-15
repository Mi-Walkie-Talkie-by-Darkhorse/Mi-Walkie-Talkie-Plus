package com.sina.weibo.sdk.net;

import android.content.Context;
import com.sina.weibo.sdk.exception.WeiboException;

/* compiled from: NetUtils */
public class c {
    public static String a(Context context, String str, String str2, f fVar) {
        return HttpManager.b(context, str, str2, fVar);
    }

    public static String a(Context context, String str, String str2, String str3) throws WeiboException {
        return HttpManager.a(context, str, str2, str3);
    }

    public static String b(Context context, String str, String str2, f fVar) {
        return HttpManager.a(context, str, str2, fVar);
    }

    public static void a(Context context, String str, f fVar, String str2, d dVar) {
        new b(context, str, fVar, str2, dVar).execute(new Void[1]);
    }
}
