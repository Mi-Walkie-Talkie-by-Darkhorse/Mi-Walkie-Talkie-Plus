package com.ifengyu.intercom.ui.imui.a;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.afollestad.materialdialogs.DialogAction;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.MaterialDialog.h;
import com.ifengyu.intercom.R;
import com.ifengyu.library.util.l;

/* compiled from: DialogHelper */
public class a {
    public static void a(Activity activity, String str) {
        new com.afollestad.materialdialogs.MaterialDialog.a(activity).a((CharSequence) "权限申请").b(false).a(false).f(R.color.darker_gray).e(R.color.tab_selected_color).c(true).d((CharSequence) "取消").c((CharSequence) "去设置").b((CharSequence) str).b(b.a).a((h) new c(activity)).c();
    }

    static final /* synthetic */ void a(Activity activity, MaterialDialog materialDialog, DialogAction dialogAction) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", l.c(), null));
        intent.setFlags(268435456);
        activity.startActivity(intent);
    }

    public static void b(Activity activity, String str) {
        new com.afollestad.materialdialogs.MaterialDialog.a(activity).a((CharSequence) "权限申请").b(false).a(false).f(R.color.darker_gray).e(R.color.tab_selected_color).c(true).d((CharSequence) "取消").c((CharSequence) "确定").b((CharSequence) str).c();
    }
}
