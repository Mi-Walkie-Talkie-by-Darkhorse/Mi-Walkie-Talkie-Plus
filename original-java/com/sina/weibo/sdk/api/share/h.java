package com.sina.weibo.sdk.api.share;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.sina.weibo.sdk.utils.i;

/* compiled from: WeiboDownloader */
public class h {
    public static Dialog a(final Context context, final c cVar) {
        String str = "提示";
        String str2 = "未安装微博客户端，是否现在去下载？";
        String str3 = "现在下载";
        String str4 = "以后再说";
        if (!i.a(context.getApplicationContext())) {
            str = "Notice";
            str2 = "Sina Weibo client is not installed, download now?";
            str3 = "Download Now";
            str4 = "Download Later";
        }
        return new Builder(context).setMessage(str2).setTitle(str).setPositiveButton(str3, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                h.b(context);
            }
        }).setNegativeButton(str4, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                if (c.this != null) {
                    c.this.a();
                }
            }
        }).create();
    }

    /* access modifiers changed from: private */
    public static void b(Context context) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setFlags(268435456);
        intent.setData(Uri.parse("http://app.sina.cn/appdetail.php?appID=84560"));
        try {
            context.startActivity(intent);
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
    }
}
