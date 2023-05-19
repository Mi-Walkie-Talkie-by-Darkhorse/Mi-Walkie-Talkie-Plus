package com.ifengyu.intercom.p216ui.base;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.lifecycle.Lifecycle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.library.utils.C4972m;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.util.QMUIDisplayHelper;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.umeng.analytics.MobclickAgent;
import io.reactivex.functions.Consumer;
import p048b.p076e.p077a.RxPermissions;

/* renamed from: com.ifengyu.intercom.ui.base.k */
/* loaded from: classes2.dex */
public abstract class BaseFragment extends BaseRxFragment {

    /* renamed from: y */
    protected String f15047y = getClass().getSimpleName();

    /* renamed from: B2 */
    private BaseFragmentActivity m10330B2() {
        return (BaseFragmentActivity) getActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007b, code lost:
        if (r14.equals("android.permission.RECORD_AUDIO") == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002b, code lost:
        if (r14.equals("android.permission.RECORD_AUDIO") == false) goto L5;
     */
    /* renamed from: G2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void m10326H2(String str, Boolean bool) throws Exception {
        char c = 3;
        if (bool.booleanValue()) {
            str.hashCode();
            switch (str.hashCode()) {
                case -1888586689:
                    if (str.equals("android.permission.ACCESS_FINE_LOCATION")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 463403621:
                    if (str.equals("android.permission.CAMERA")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1365911975:
                    if (str.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 1831139720:
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    UserPrivacyReportUtil.m11142q("location");
                    m10319P2();
                    return;
                case 1:
                    UserPrivacyReportUtil.m11142q("camera");
                    mo9611O2();
                    return;
                case 2:
                    UserPrivacyReportUtil.m11142q("storage");
                    mo9610R2();
                    return;
                case 3:
                    UserPrivacyReportUtil.m11142q("record");
                    m10318Q2();
                    return;
                default:
                    return;
            }
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1888586689:
                if (str.equals("android.permission.ACCESS_FINE_LOCATION")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 463403621:
                if (str.equals("android.permission.CAMERA")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1365911975:
                if (str.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1831139720:
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                UserPrivacyReportUtil.m11150i("location");
                m10315U2(R.string.after_refuse_location_permission);
                return;
            case 1:
                UserPrivacyReportUtil.m11150i("camera");
                m10315U2(R.string.after_refuse_camera_permissions);
                return;
            case 2:
                UserPrivacyReportUtil.m11150i("storage");
                m10315U2(R.string.after_refuse_storage_permission);
                return;
            case 3:
                UserPrivacyReportUtil.m11150i("record");
                m10315U2(R.string.after_refuse_record_permissions);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J2 */
    public /* synthetic */ void m10323K2(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        startActivity(C4972m.m8641a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M2 */
    public /* synthetic */ void m10320N2(String str, QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m10317S2(str);
    }

    /* renamed from: S2 */
    private void m10317S2(final String str) {
        if (getActivity() == null) {
            return;
        }
        ((ObservableSubscribeProxy) new RxPermissions(getActivity()).m21013l(str).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.base.d
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BaseFragment.this.m10326H2(str, (Boolean) obj);
            }
        }, C4454j.f15046a);
    }

    /* renamed from: U2 */
    private void m10315U2(int i) {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7282x(R.string.permission_apply);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7248E(i);
        messageDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C4446b.f15034a);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7300b(0, R.string.go_to_setting, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.base.a
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                BaseFragment.this.m10323K2(qMUIDialog, i2);
            }
        });
        messageDialogBuilder3.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: V2 */
    private void m10314V2(final String str) {
        int i;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1888586689:
                if (str.equals("android.permission.ACCESS_FINE_LOCATION")) {
                    c = 0;
                    break;
                }
                break;
            case 463403621:
                if (str.equals("android.permission.CAMERA")) {
                    c = 1;
                    break;
                }
                break;
            case 1365911975:
                if (str.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                    c = 2;
                    break;
                }
                break;
            case 1831139720:
                if (str.equals("android.permission.RECORD_AUDIO")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                i = R.string.before_apply_location_permission;
                break;
            case 1:
                i = R.string.before_apply_camera_permissions;
                break;
            case 2:
                i = R.string.before_apply_storage_permission;
                break;
            case 3:
                i = R.string.before_apply_record_permissions;
                break;
            default:
                i = 0;
                break;
        }
        if (i <= 0) {
            return;
        }
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7282x(R.string.permission_apply);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7248E(i);
        messageDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C4447c.f15035a);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7300b(0, R.string.go_apply, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.base.e
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                BaseFragment.this.m10320N2(str, qMUIDialog, i2);
            }
        });
        messageDialogBuilder3.m7296f(R.style.DialogTheme1).show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: C2 */
    public void m10329C2() {
        m10330B2().m10334y();
    }

    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
    }

    /* renamed from: E2 */
    protected void mo9102E2() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: F2 */
    public boolean m10328F2() {
        return m10330B2().m10333z();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: K1 */
    protected int mo8076K1(Context context, int i, int i2) {
        if (i2 == 4 || i2 == 8) {
            return 0;
        }
        return QMUIDisplayHelper.m7555a(context, 100);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: M1 */
    public boolean mo8074M1(Context context, int i, int i2) {
        return false;
    }

    /* renamed from: O2 */
    protected void mo9611O2() {
    }

    /* renamed from: P2 */
    protected void m10319P2() {
    }

    /* renamed from: Q2 */
    protected void m10318Q2() {
    }

    /* renamed from: R2 */
    protected void mo9610R2() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0040, code lost:
        if (r5.equals("android.permission.ACCESS_FINE_LOCATION") == false) goto L5;
     */
    /* renamed from: T2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m10316T2(String str) {
        char c = 0;
        if (C4972m.m8640b(str)) {
            str.hashCode();
            switch (str.hashCode()) {
                case -1888586689:
                    break;
                case 463403621:
                    if (str.equals("android.permission.CAMERA")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1365911975:
                    if (str.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 1831139720:
                    if (str.equals("android.permission.RECORD_AUDIO")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    m10319P2();
                    break;
                case 1:
                    mo9611O2();
                    break;
                case 2:
                    mo9610R2();
                    break;
                case 3:
                    m10318Q2();
                    break;
            }
            return true;
        }
        m10314V2(str);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: W2 */
    public void m10313W2() {
        m10330B2().m10342F(UIUtils.m8603o(R.string.set_failed));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: X2 */
    public void m10312X2(@StringRes int i) {
        m10330B2().m10342F(UIUtils.m8603o(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: Y2 */
    public void m10311Y2(String str) {
        m10330B2().m10342F(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: Z2 */
    public void m10310Z2(String str, int i, BaseFragmentActivity.InterfaceC4443a interfaceC4443a) {
        m10330B2().m10341G(str, i, interfaceC4443a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a3 */
    public void m10309a3(String str, BaseFragmentActivity.InterfaceC4443a interfaceC4443a) {
        m10330B2().m10340H(str, interfaceC4443a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b3 */
    public void m10308b3() {
        m10330B2().m10339I();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c3 */
    public void m10307c3(boolean z, String str) {
        m10330B2().m10337K(z, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d3 */
    public void m10306d3(@StringRes int i) {
        m10330B2().m10336L(UIUtils.m8603o(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e3 */
    public void m10305e3(String str) {
        m10330B2().m10336L(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f3 */
    public void m10304f3(String str, BaseFragmentActivity.InterfaceC4444b interfaceC4444b) {
        m10330B2().m10335M(str, interfaceC4444b);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: g2 */
    protected void mo8055g2(@Nullable Animation animation) {
        super.mo8055g2(animation);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: n2 */
    protected void mo8000n2(@NonNull View view) {
        super.mo8000n2(view);
        mo9102E2();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        mo9117D2(getArguments());
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        MobclickAgent.onPageEnd(this.f15047y);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        MobclickAgent.onPageStart(this.f15047y);
    }
}
