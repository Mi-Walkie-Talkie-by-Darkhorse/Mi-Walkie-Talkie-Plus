package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.Html;
import android.view.View;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.update.dolphin.UpdateManager.CHECK_CONDITION;
import com.ifengyu.intercom.update.dolphin.j;
import java.util.HashMap;

/* compiled from: UpdateApkInfoDialog */
public class ac {
    d a;
    private HashMap<String, String> b;
    /* access modifiers changed from: private */
    public j c;
    /* access modifiers changed from: private */
    public Activity d;
    /* access modifiers changed from: private */
    public CHECK_CONDITION e;
    /* access modifiers changed from: private */
    public boolean f;

    public ac(Activity activity, j jVar, HashMap<String, String> hashMap, CHECK_CONDITION check_condition, boolean z) {
        this.d = activity;
        this.b = hashMap;
        this.c = jVar;
        this.e = check_condition;
        this.f = z;
        a();
    }

    public void a() {
        this.a = new d(this.d);
        this.a.a((int) R.string.dialog_btn_not_updated_yet, (OnClickListener) null).b((int) R.string.upgrade_immediately, (OnClickListener) new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                if (ac.this.f) {
                    v.a((CharSequence) ad.a((int) R.string.toast_downloading), false);
                } else if (v.b((Context) ac.this.d)) {
                    v.a((CharSequence) ad.a((int) R.string.toast_downloading), false);
                    ac.this.c.a(ac.this.d, -1, -1, ac.this.e);
                } else {
                    new d(ac.this.d).b((CharSequence) ad.a((int) R.string.dialog_message_ask_the_network)).a((int) R.string.common_cancel, (OnClickListener) null).b((int) R.string.sure, (OnClickListener) new OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            ac.this.c.a(ac.this.d, -1, -1, ac.this.e);
                        }
                    }).b().c();
                }
            }
        }).a((int) R.string.dialog_title_discover_the_new_version).b((int) R.layout.dialog_apk_update_info).b();
        View a2 = this.a.a();
        TextView textView = (TextView) a2.findViewById(R.id.apk_version_name);
        TextView textView2 = (TextView) a2.findViewById(R.id.apk_update_info);
        textView.setText(Html.fromHtml(MiTalkiApp.a().getString(R.string.apk_update_title) + "：<font color=#00BFFF>" + ((String) this.b.get("versionName")) + "</color>"));
        a((String) this.b.get("info"), textView2);
    }

    private void a(String str, TextView textView) {
        textView.setText(str.replace("\\n", "\n"));
    }

    public void b() {
        this.a.c();
    }
}
