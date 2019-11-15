package com.sina.weibo.sdk.b;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import org.apache.http.HttpHost;

/* compiled from: AppInvokeCmdExecutor */
class d {
    /* access modifiers changed from: private */
    public Context a;
    private a b = new a(this.a.getMainLooper());

    /* compiled from: AppInvokeCmdExecutor */
    private class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    d.b(d.this.a, (c) message.obj);
                    return;
                default:
                    return;
            }
        }
    }

    public d(Context context) {
        this.a = context.getApplicationContext();
    }

    public boolean a(c cVar) {
        if (cVar == null || TextUtils.isEmpty(cVar.e()) || TextUtils.isEmpty(cVar.b())) {
            return false;
        }
        Message obtainMessage = this.b.obtainMessage();
        obtainMessage.what = 1;
        obtainMessage.obj = cVar;
        this.b.sendMessageDelayed(obtainMessage, cVar.g());
        return true;
    }

    /* access modifiers changed from: private */
    public static void b(Context context, c cVar) {
        com.sina.weibo.sdk.utils.g.a.a().c(cVar.e()).a(c(context, cVar)).b(cVar.f()).a(cVar.e()).a(context).a(2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0023, code lost:
        if (r3.isEmpty() == false) goto L_0x0025;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.app.PendingIntent c(android.content.Context r5, com.sina.weibo.sdk.b.c r6) {
        /*
            r0 = 0
            java.lang.String r1 = r6.b()
            java.lang.String r2 = r6.c()
            java.lang.String r3 = r6.a()
            android.content.Intent r1 = a(r1, r3)
            if (r1 == 0) goto L_0x003a
            android.content.pm.PackageManager r3 = r5.getPackageManager()
            r4 = 65536(0x10000, float:9.18355E-41)
            java.util.List r3 = r3.queryIntentActivities(r1, r4)
            if (r3 == 0) goto L_0x003a
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L_0x003a
        L_0x0025:
            if (r1 != 0) goto L_0x002b
            android.content.Intent r1 = a(r2)
        L_0x002b:
            if (r1 == 0) goto L_0x0039
            r0 = 268435456(0x10000000, float:2.5243549E-29)
            r1.setFlags(r0)
            r0 = 0
            r2 = 134217728(0x8000000, float:3.85186E-34)
            android.app.PendingIntent r0 = android.app.PendingIntent.getActivity(r5, r0, r1, r2)
        L_0x0039:
            return r0
        L_0x003a:
            r1 = r0
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.b.d.c(android.content.Context, com.sina.weibo.sdk.b.c):android.app.PendingIntent");
    }

    private static Intent a(String str, String str2) {
        if (TextUtils.isEmpty(str) || !Uri.parse(str).isHierarchical()) {
            return null;
        }
        Uri parse = Uri.parse(str);
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(parse);
        intent.setPackage(str2);
        return intent;
    }

    private static Intent a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if (!scheme.equalsIgnoreCase(HttpHost.DEFAULT_SCHEME_NAME) && !scheme.equalsIgnoreCase("https")) {
            return null;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(parse);
        return intent;
    }
}
