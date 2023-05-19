package com.ifengyu.intercom.p216ui.base;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p205m.p207b.LoadingTipDialog;
import com.ifengyu.intercom.p214p.ActivityListManager;
import com.ifengyu.library.p229b.Transformer;
import com.qmuiteam.qmui.util.QMUIStatusBarHelper;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.concurrent.TimeUnit;

/* renamed from: com.ifengyu.intercom.ui.base.BaseFragmentActivity */
/* loaded from: classes2.dex */
public abstract class BaseFragmentActivity extends BaseRxFragmentActivity {

    /* renamed from: h */
    protected LoadingTipDialog f15031h;

    /* renamed from: com.ifengyu.intercom.ui.base.BaseFragmentActivity$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC4443a {
        /* renamed from: a */
        void mo9160a();
    }

    /* renamed from: com.ifengyu.intercom.ui.base.BaseFragmentActivity$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC4444b {
        /* renamed from: a */
        void mo9105a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B */
    public /* synthetic */ void m10345C(InterfaceC4443a interfaceC4443a, Long l) throws Exception {
        m10334y();
        if (interfaceC4443a != null) {
            interfaceC4443a.mo9160a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public /* synthetic */ void m10343E(InterfaceC4444b interfaceC4444b, Long l) throws Exception {
        m10334y();
        if (interfaceC4444b != null) {
            interfaceC4444b.mo9105a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: F */
    public void m10342F(String str) {
        m10340H(str, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: G */
    public void m10341G(String str, int i, final InterfaceC4443a interfaceC4443a) {
        try {
            if (this.f15031h == null) {
                this.f15031h = new LoadingTipDialog(this);
            }
            this.f15031h.m11425c(2);
            this.f15031h.m11426b(str);
            this.f15031h.m11427a(i);
            this.f15031h.setCanceledOnTouchOutside(false);
            this.f15031h.setCancelable(false);
            if (!this.f15031h.isShowing()) {
                this.f15031h.show();
            }
            ((ObservableSubscribeProxy) Observable.timer(1000L, TimeUnit.MILLISECONDS).compose(Transformer.m8717a()).m806as(m10331x(Lifecycle.Event.ON_DESTROY))).mo5996a(new Consumer() { // from class: com.ifengyu.intercom.ui.base.f
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    BaseFragmentActivity.this.m10345C(interfaceC4443a, (Long) obj);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: H */
    public void m10340H(String str, InterfaceC4443a interfaceC4443a) {
        m10341G(str, R.drawable.load_fail, interfaceC4443a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: I */
    public void m10339I() {
        m10338J(true);
    }

    /* renamed from: J */
    protected void m10338J(boolean z) {
        m10337K(z, getResources().getString(R.string.please_wait));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: K */
    public void m10337K(boolean z, String str) {
        try {
            if (this.f15031h == null) {
                this.f15031h = new LoadingTipDialog(this);
            }
            this.f15031h.m11425c(0);
            this.f15031h.m11426b(str);
            this.f15031h.m11427a(R.drawable.load_spinner);
            this.f15031h.setCanceledOnTouchOutside(z);
            this.f15031h.setCancelable(z);
            if (this.f15031h.isShowing()) {
                return;
            }
            this.f15031h.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: L */
    public void m10336L(String str) {
        m10335M(str, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: M */
    public void m10335M(String str, final InterfaceC4444b interfaceC4444b) {
        try {
            if (this.f15031h == null) {
                this.f15031h = new LoadingTipDialog(this);
            }
            this.f15031h.m11425c(1);
            this.f15031h.m11426b(str);
            this.f15031h.m11427a(R.drawable.load_success);
            this.f15031h.setCanceledOnTouchOutside(false);
            this.f15031h.setCancelable(false);
            if (!this.f15031h.isShowing()) {
                this.f15031h.show();
            }
            ((ObservableSubscribeProxy) Observable.timer(1000L, TimeUnit.MILLISECONDS).compose(Transformer.m8717a()).m806as(m10331x(Lifecycle.Event.ON_DESTROY))).mo5996a(new Consumer() { // from class: com.ifengyu.intercom.ui.base.g
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    BaseFragmentActivity.this.m10343E(interfaceC4444b, (Long) obj);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Resources resources = super.getResources();
        if (resources.getConfiguration().fontScale != 1.0f) {
            Configuration configuration = new Configuration();
            configuration.setToDefaults();
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        }
        return resources;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        try {
            super.onBackPressed();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.qmuiteam.qmui.arch.InnerBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if (configuration.fontScale != 1.0f) {
            getResources();
        }
        super.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.InnerBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        m8089n(null);
        ActivityListManager.m11092a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        ActivityListManager.m11090c(this);
        m10334y();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity
    /* renamed from: w */
    public void mo8131w() {
        super.mo8131w();
        QMUIStatusBarHelper.m7481m(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: y */
    public void m10334y() {
        LoadingTipDialog loadingTipDialog = this.f15031h;
        if (loadingTipDialog == null || !loadingTipDialog.isShowing()) {
            return;
        }
        this.f15031h.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: z */
    public boolean m10333z() {
        LoadingTipDialog loadingTipDialog = this.f15031h;
        return loadingTipDialog != null && loadingTipDialog.isShowing();
    }
}
