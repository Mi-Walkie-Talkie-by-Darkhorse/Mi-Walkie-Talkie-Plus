package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.text.Html;
import android.view.View;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.ifengyu.intercom.update.dolphin.j;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.util.HashMap;

/* compiled from: UpdateApkInfoDialog.java */
/* loaded from: classes2.dex */
public class a0 {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, String> f6924a;

    /* renamed from: b  reason: collision with root package name */
    private j f6925b;

    /* renamed from: c  reason: collision with root package name */
    private Activity f6926c;
    private UpdateManager.CHECK_CONDITION d;
    f e;
    private boolean f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UpdateApkInfoDialog.java */
    /* loaded from: classes2.dex */
    public class a implements DialogInterface.OnClickListener {

        /* compiled from: UpdateApkInfoDialog.java */
        /* renamed from: com.ifengyu.intercom.ui.widget.dialog.a0$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class DialogInterface$OnClickListenerC0193a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC0193a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                a0.this.f6925b.a(a0.this.f6926c, -1, -1, a0.this.d);
            }
        }

        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (a0.this.f) {
                c0.a((CharSequence) k0.c(R.string.toast_downloading), false);
            } else if (c0.d(a0.this.f6926c)) {
                c0.a((CharSequence) k0.c(R.string.toast_downloading), false);
                a0.this.f6925b.a(a0.this.f6926c, -1, -1, a0.this.d);
            } else {
                f fVar = new f(a0.this.f6926c);
                fVar.a(k0.c(R.string.dialog_message_ask_the_network));
                fVar.a(R.string.common_cancel, (DialogInterface.OnClickListener) null);
                fVar.c(R.string.sure, new DialogInterface$OnClickListenerC0193a());
                fVar.a();
                fVar.d();
            }
        }
    }

    public a0(Activity activity, j jVar, HashMap<String, String> hashMap, UpdateManager.CHECK_CONDITION check_condition, boolean z) {
        this.f6926c = activity;
        this.f6924a = hashMap;
        this.f6925b = jVar;
        this.d = check_condition;
        this.f = z;
        a();
    }

    public void a() {
        f fVar = new f(this.f6926c);
        this.e = fVar;
        fVar.a(R.string.dialog_btn_not_updated_yet, (DialogInterface.OnClickListener) null);
        fVar.c(R.string.upgrade_immediately, new a());
        fVar.c(R.string.dialog_title_discover_the_new_version);
        fVar.a(R.layout.dialog_apk_update_info);
        fVar.a();
        View c2 = this.e.c();
        ((TextView) c2.findViewById(R.id.apk_version_name)).setText(Html.fromHtml(MiTalkiApp.b().getString(R.string.apk_update_title) + "：<font color=#00BFFF>" + this.f6924a.get("versionName") + "</color>"));
        a(this.f6924a.get(XiaomiOAuthConstants.EXTRA_INFO), (TextView) c2.findViewById(R.id.apk_update_info));
    }

    public void b() {
        this.e.d();
    }

    private void a(String str, TextView textView) {
        textView.setText(str.replace("\\n", "\n"));
    }
}
