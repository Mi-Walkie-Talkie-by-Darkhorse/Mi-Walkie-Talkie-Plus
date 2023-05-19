package com.ifengyu.intercom.p216ui.login;

import android.annotation.SuppressLint;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.widget.view.PasswordToggleEditText;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.utils.C4975r;
import com.ifengyu.library.utils.RegexUtils;
import com.ifengyu.library.utils.UIUtils;
import com.jakewharton.rxbinding3.widget.RxTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* renamed from: com.ifengyu.intercom.ui.login.SetupPasswordFragment */
/* loaded from: classes2.dex */
public class SetupPasswordFragment extends BaseFragment {
    @BindView(R.id.btn_action)
    QMUIRoundButton mBtnAction;
    @BindView(R.id.et_password_confirm)
    PasswordToggleEditText mEtPasswordConfirm;
    @BindView(R.id.et_password_new)
    PasswordToggleEditText mEtPasswordNew;
    @BindView(R.id.et_password_old)
    PasswordToggleEditText mEtPasswordOld;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;

    /* renamed from: com.ifengyu.intercom.ui.login.SetupPasswordFragment$a */
    /* loaded from: classes2.dex */
    class C4674a extends ErrorConsumer {
        C4674a() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) SetupPasswordFragment.this).f15047y, "modifyPwd fail");
            if (newApiException.m8703a() == 10070) {
                SetupPasswordFragment.this.m10312X2(R.string.lite_old_password_input_error);
            } else {
                SetupPasswordFragment.this.m10311Y2(NewHttpHelper.m8714a(newApiException.m8703a()));
            }
        }
    }

    /* renamed from: j3 */
    private void m9669j3() {
        this.mTopBar.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.login.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SetupPasswordFragment.this.m9666m3(view);
            }
        });
        this.mTopBar.m7338p(R.string.lite_password_setup);
    }

    @SuppressLint({"AutoDispose"})
    /* renamed from: k3 */
    private void m9668k3() {
        this.mBtnAction.setChangeAlphaWhenPress(false);
        this.mEtPasswordOld.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        this.mEtPasswordNew.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        this.mEtPasswordConfirm.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        Observable.combineLatest(RxTextView.textChanges(this.mEtPasswordOld), RxTextView.textChanges(this.mEtPasswordNew), RxTextView.textChanges(this.mEtPasswordConfirm), C4701m0.f15472a).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.login.q0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SetupPasswordFragment.this.m9663p3((Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m9666m3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m9663p3(Boolean bool) throws Exception {
        this.mBtnAction.setEnabled(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m9661r3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m9659t3(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(this.f15047y, "modifyPwd success");
        m10329C2();
        m9656w3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m9657v3(QMUIDialog qMUIDialog, int i) {
        mo8048o2();
        qMUIDialog.dismiss();
    }

    /* renamed from: w3 */
    private void m9656w3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.forget_pwd_success_pls_relogin);
        messageDialogBuilder.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.login.r0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                SetupPasswordFragment.this.m9657v3(qMUIDialog, i);
            }
        });
        messageDialogBuilder.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_setup_password, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9669j3();
        m9668k3();
        return inflate;
    }

    @OnClick({R.id.btn_action})
    public void onClick(View view) {
        String obj = this.mEtPasswordOld.getText().toString();
        String obj2 = this.mEtPasswordNew.getText().toString();
        String obj3 = this.mEtPasswordConfirm.getText().toString();
        if (!C4975r.m8620b(obj2) && obj2.length() >= 8 && obj2.length() <= 16 && RegexUtils.m8632c(obj2)) {
            if (!obj2.equals(obj3)) {
                UIUtils.m8593y(R.string.forget_pwd_input_not_match);
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("oldPassword", obj);
            hashMap.put("newPassword", obj2);
            ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11384W(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.login.o0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj4) {
                    SetupPasswordFragment.this.m9661r3((Disposable) obj4);
                }
            }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.login.p0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj4) {
                    SetupPasswordFragment.this.m9659t3((NewHttpResult) obj4);
                }
            }, new C4674a());
            return;
        }
        UIUtils.m8593y(R.string.login_setup_password_error);
    }
}
