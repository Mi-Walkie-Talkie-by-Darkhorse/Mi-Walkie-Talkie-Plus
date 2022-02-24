package com.ifengyu.intercom.lite.base;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.lite.c.b.e;
import com.ifengyu.intercom.lite.utils.j;
import com.ifengyu.intercom.ui.MainActivity;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.c.g;
import com.qmuiteam.qmui.util.k;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;
import com.qmuiteam.qmui.widget.dialog.b;
import io.reactivex.functions.Consumer;

/* loaded from: classes2.dex */
public abstract class BaseFragmentActivity extends QMUIFragmentActivity {
    private QMUITipDialog h;
    private QMUITipDialog i;
    private b j;
    private Handler k = new Handler();

    public /* synthetic */ void a(com.ifengyu.intercom.lite.event.b bVar) throws Exception {
        if (bVar.a() == com.ifengyu.intercom.lite.event.b.f5421c) {
            o();
            return;
        }
        q();
        r();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity
    public void m() {
        super.m();
        k.a((Activity) this);
    }

    public Handler n() {
        return this.k;
    }

    protected void o() {
        b bVar = this.j;
        if (bVar != null && bVar.isShowing()) {
            this.j.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.a, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        a((g) null);
        j.a().a(this, com.ifengyu.intercom.lite.event.b.class, new Consumer() { // from class: com.ifengyu.intercom.lite.base.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BaseFragmentActivity.this.a((com.ifengyu.intercom.lite.event.b) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        o();
        q();
        p();
        n().removeCallbacksAndMessages(this);
        j.a().b(this);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p() {
        QMUITipDialog qMUITipDialog = this.i;
        if (qMUITipDialog != null && qMUITipDialog.isShowing()) {
            this.i.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q() {
        QMUITipDialog qMUITipDialog = this.h;
        if (qMUITipDialog != null && qMUITipDialog.isShowing()) {
            this.h.dismiss();
        }
    }

    protected void r() {
        if (this.j == null) {
            e eVar = new e(this);
            eVar.d(R.string.main_ble_have_unconnect);
            eVar.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.base.a
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                public final void a(b bVar, int i) {
                    BaseFragmentActivity.this.a(bVar, i);
                }
            });
            e eVar2 = eVar;
            eVar2.a(false);
            e eVar3 = eVar2;
            eVar3.b(false);
            this.j = eVar3.a(R.style.DialogTheme2);
        }
        if (!this.j.isShowing()) {
            this.j.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void s() {
        if (this.i == null) {
            QMUITipDialog.Builder builder = new QMUITipDialog.Builder(this);
            builder.a(k0.c(R.string.set_failed));
            builder.a(3);
            this.i = builder.a(false);
        }
        if (!this.i.isShowing()) {
            this.i.show();
            n().postDelayed(new Runnable() { // from class: com.ifengyu.intercom.lite.base.d
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFragmentActivity.this.p();
                }
            }, 1500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void t() {
        if (this.h == null) {
            QMUITipDialog.Builder builder = new QMUITipDialog.Builder(this);
            builder.a(k0.c(R.string.please_wait));
            builder.a(1);
            this.h = builder.a(false);
        }
        if (!this.h.isShowing()) {
            this.h.show();
        }
    }

    public /* synthetic */ void a(b bVar, int i) {
        bVar.dismiss();
        startActivity(new Intent(this, MainActivity.class));
    }
}
