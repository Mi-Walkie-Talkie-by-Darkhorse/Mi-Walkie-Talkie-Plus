package com.sina.weibo.sdk.api.share;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.sina.weibo.sdk.b;
import com.sina.weibo.sdk.b.a;
import com.sina.weibo.sdk.b.g;
import com.sina.weibo.sdk.exception.WeiboShareException;
import com.sina.weibo.sdk.utils.AidTask;
import com.sina.weibo.sdk.utils.c;
import com.sina.weibo.sdk.utils.d;
import java.util.HashMap;

/* compiled from: WeiboShareAPIImpl */
class i implements d {
    private static final String a = i.class.getName();
    private Context b;
    private String c;
    private a d = null;
    private boolean e = true;
    private c f;
    private Dialog g = null;

    public i(Context context, String str, boolean z) {
        this.b = context;
        this.c = str;
        this.e = z;
        this.d = b.a(context).a();
        if (this.d != null) {
            c.a(a, this.d.toString());
        } else {
            c.a(a, "WeiboInfo is null");
        }
        AidTask.a(context).a(str);
    }

    public int b() {
        if (this.d == null || !this.d.c()) {
            return -1;
        }
        return this.d.b();
    }

    public boolean c() {
        return this.d != null && this.d.c();
    }

    public boolean d() {
        return b() >= 10350;
    }

    public boolean a() {
        a(this.b, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER", this.c, null, null);
        return true;
    }

    public boolean a(Activity activity, b bVar) {
        if (bVar == null) {
            c.c(a, "sendRequest faild request is null");
            return false;
        }
        try {
            if (!a(this.e)) {
                return false;
            }
            if (!bVar.a(this.b, this.d, new g())) {
                c.c(a, "sendRequest faild request check faild");
                return false;
            }
            g.a(this.b, this.c).a();
            Bundle bundle = new Bundle();
            bVar.a(bundle);
            if (bVar instanceof f) {
                try {
                    f fVar = (f) bVar;
                    if (fVar.b != null) {
                        int b2 = fVar.b.b();
                        if (b2 != 0) {
                            bundle.putInt("_weibo_message_type", b2);
                        }
                    }
                } catch (Exception e2) {
                    ThrowableExtension.printStackTrace(e2);
                    return false;
                }
            }
            return a(activity, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY", this.d.a(), this.c, bundle, "share");
        } catch (Exception e3) {
            c.c(a, e3.getMessage());
            return false;
        }
    }

    private boolean a(boolean z) throws WeiboShareException {
        if (!c()) {
            if (z) {
                if (this.g == null) {
                    this.g = h.a(this.b, this.f);
                    this.g.show();
                } else if (!this.g.isShowing()) {
                    this.g.show();
                }
                return false;
            }
            throw new WeiboShareException("Weibo is not installed!");
        } else if (!d()) {
            throw new WeiboShareException("Weibo do not support share api!");
        } else if (com.sina.weibo.sdk.a.a(this.b, this.d.a())) {
            return true;
        } else {
            throw new WeiboShareException("Weibo signature is incorrect!");
        }
    }

    private boolean a(Activity activity, String str, String str2, String str3, Bundle bundle, String str4) {
        if (activity == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            c.c(a, "launchWeiboActivity fail, invalid arguments");
            return false;
        }
        Intent intent = new Intent();
        intent.setPackage(str2);
        intent.setAction(str);
        String packageName = activity.getPackageName();
        intent.putExtra("_weibo_sdkVersion", "0031405000");
        intent.putExtra("_weibo_appPackage", packageName);
        intent.putExtra("_weibo_appKey", str3);
        intent.putExtra("_weibo_flag", 538116905);
        intent.putExtra("_weibo_sign", d.a(com.sina.weibo.sdk.utils.i.a(activity, packageName)));
        String valueOf = String.valueOf(System.currentTimeMillis());
        intent.putExtra("_weibo_transaction", valueOf);
        a(activity, valueOf, str4);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        try {
            c.a(a, "launchWeiboActivity intent=" + intent + ", extra=" + intent.getExtras());
            activity.startActivityForResult(intent, 765);
            return true;
        } catch (ActivityNotFoundException e2) {
            c.c(a, e2.getMessage());
            return false;
        }
    }

    private void a(Context context, String str, String str2, String str3, Bundle bundle) {
        Intent intent = new Intent(str);
        String packageName = context.getPackageName();
        intent.putExtra("_weibo_sdkVersion", "0031405000");
        intent.putExtra("_weibo_appPackage", packageName);
        intent.putExtra("_weibo_appKey", str2);
        intent.putExtra("_weibo_flag", 538116905);
        intent.putExtra("_weibo_sign", d.a(com.sina.weibo.sdk.utils.i.a(context, packageName)));
        if (!TextUtils.isEmpty(str3)) {
            intent.setPackage(str3);
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        c.a(a, "intent=" + intent + ", extra=" + intent.getExtras());
        context.sendBroadcast(intent, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION");
    }

    public void a(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("other_app_action_start_time", str);
        try {
            com.sina.weibo.sdk.statistic.g.a(context, str2, hashMap);
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }
}
