package com.ifengyu.intercom.device.mi3.activity;

import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.event.ConnectStateEvent;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.p186z0.BaseBleManager;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import io.reactivex.functions.Consumer;

/* loaded from: classes2.dex */
public class Mi3BaseFragmentActivity extends BaseFragmentActivity {

    /* renamed from: i */
    private QMUIDialog f12421i;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public /* synthetic */ void m13829P(ConnectStateEvent connectStateEvent) throws Exception {
        if (connectStateEvent.getState() == ConnectStateEvent.STATE_CONNECTED) {
            m13831N();
            return;
        }
        m10334y();
        m13826T();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public /* synthetic */ void m13827S(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        startActivity(new Intent(this, MainActivity.class));
    }

    /* renamed from: N */
    protected void m13831N() {
        QMUIDialog qMUIDialog = this.f12421i;
        if (qMUIDialog == null || !qMUIDialog.isShowing()) {
            return;
        }
        this.f12421i.dismiss();
    }

    /* renamed from: T */
    protected void m13826T() {
        if (this.f12421i == null) {
            MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(this);
            messageDialogBuilder.m7248E(R.string.main_ble_have_unconnect);
            messageDialogBuilder.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.mi3.activity.a
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                /* renamed from: a */
                public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                    Mi3BaseFragmentActivity.this.m13827S(qMUIDialog, i);
                }
            });
            MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
            messageDialogBuilder2.m7286t(false);
            MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
            messageDialogBuilder3.m7285u(false);
            this.f12421i = messageDialogBuilder3.m7296f(R.style.DialogTheme1);
        }
        if (this.f12421i.isShowing()) {
            return;
        }
        this.f12421i.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity, com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.InnerBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m13831N();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.InnerBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        RxBus.m11806d().m11808b(this, ConnectStateEvent.class, new Consumer() { // from class: com.ifengyu.intercom.device.mi3.activity.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Mi3BaseFragmentActivity.this.m13829P((ConnectStateEvent) obj);
            }
        });
        BaseBleManager m12379h = BleCoreClient.m12373n().m12379h();
        if (m12379h == null || !m12379h.m329v()) {
            m13826T();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.InnerBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        RxBus.m11806d().m11803g(this);
    }
}
