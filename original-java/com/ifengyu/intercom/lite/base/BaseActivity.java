package com.ifengyu.intercom.lite.base;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.k0;
import com.qmuiteam.qmui.arch.QMUIActivity;
import com.qmuiteam.qmui.util.k;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;

/* loaded from: classes2.dex */
public class BaseActivity extends QMUIActivity {
    private QMUITipDialog l;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIActivity, com.qmuiteam.qmui.arch.a, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIActivity
    protected void s() {
        super.s();
        k.a((Activity) this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void v() {
        QMUITipDialog qMUITipDialog = this.l;
        if (qMUITipDialog != null && qMUITipDialog.isShowing()) {
            this.l.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void w() {
        if (this.l == null) {
            QMUITipDialog.Builder builder = new QMUITipDialog.Builder(this);
            builder.a(k0.c(R.string.please_wait));
            builder.a(1);
            this.l = builder.a(true);
        }
        if (!this.l.isShowing()) {
            this.l.show();
        }
    }
}
