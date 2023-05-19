package com.ifengyu.intercom.p216ui.login;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.lifecycle.Lifecycle;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.widget.view.PasswordToggleEditText;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.utils.RegexUtils;
import com.ifengyu.library.utils.UIUtils;
import com.jakewharton.rxbinding3.widget.RxTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* renamed from: com.ifengyu.intercom.ui.login.ResetPasswordFragment */
/* loaded from: classes2.dex */
public class ResetPasswordFragment extends BaseFragment {
    @BindView(R.id.btn_action)
    AppCompatButton mBtnAction;
    @BindView(R.id.btn_goto_login)
    AppCompatButton mBtnGotoLogin;
    @BindView(R.id.et_password_confirm)
    PasswordToggleEditText mEtPasswordConfirm;
    @BindView(R.id.et_password_new)
    PasswordToggleEditText mEtPasswordNew;
    @BindView(R.id.ll_reset_container)
    LinearLayout mLlResetContainer;
    @BindView(R.id.ll_success_container)
    LinearLayout mLlSuccessContainer;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.ResetPasswordFragment$a */
    /* loaded from: classes2.dex */
    public class C4673a extends ErrorConsumer {
        C4673a() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) ResetPasswordFragment.this).f15047y, "resetPwd fail");
            ResetPasswordFragment.this.m10311Y2(NewHttpHelper.m8714a(newApiException.m8703a()));
        }
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: i3 */
    private void m9689i3() {
        this.mTopBar.m7338p(R.string.forget_pwd_reset_pwd_title);
        this.mTopBar.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.login.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ResetPasswordFragment.this.m9687k3(view);
            }
        });
        boolean z = true;
        this.mEtPasswordNew.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        this.mEtPasswordConfirm.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        this.mBtnAction.setEnabled((TextUtils.isEmpty(this.mEtPasswordNew.getText()) || TextUtils.isEmpty(this.mEtPasswordConfirm.getText())) ? false : false);
        this.mBtnAction.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.login.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ResetPasswordFragment.this.m9685m3(view);
            }
        });
        this.mBtnGotoLogin.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.login.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ResetPasswordFragment.this.m9683o3(view);
            }
        });
        Observable.combineLatest(RxTextView.textChanges(this.mEtPasswordNew).skip(1L), RxTextView.textChanges(this.mEtPasswordConfirm).skip(1L), C4689g0.f15459a).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.login.f0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ResetPasswordFragment.this.m9680r3((Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m9687k3(View view) {
        if (this.mLlSuccessContainer.getVisibility() == 0) {
            m8046q2(ForgetPasswordFragment.class);
        } else {
            mo8048o2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m9685m3(View view) {
        m9674x3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m9683o3(View view) {
        m8046q2(ForgetPasswordFragment.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m9680r3(Boolean bool) throws Exception {
        this.mBtnAction.setEnabled(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m9678t3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m9676v3(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(this.f15047y, "resetPwd success");
        m10329C2();
        m9673y3();
    }

    /* renamed from: w3 */
    public static ResetPasswordFragment m9675w3(String str, String str2) {
        ResetPasswordFragment resetPasswordFragment = new ResetPasswordFragment();
        Bundle bundle = new Bundle();
        bundle.putString("phone", str);
        bundle.putString("code", str2);
        resetPasswordFragment.setArguments(bundle);
        return resetPasswordFragment;
    }

    /* renamed from: y3 */
    private void m9673y3() {
        m8046q2(ForgetPasswordFragment.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: M1 */
    public boolean mo8074M1(Context context, int i, int i2) {
        return false;
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_reset_password, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9689i3();
        return inflate;
    }

    /* renamed from: x3 */
    public void m9674x3() {
        String obj = this.mEtPasswordNew.getText().toString();
        String obj2 = this.mEtPasswordConfirm.getText().toString();
        if (obj.length() > 16) {
            UIUtils.m8592z(UIUtils.m8603o(R.string.login_setup_password_error));
        } else if (!RegexUtils.m8632c(obj)) {
            UIUtils.m8592z(UIUtils.m8603o(R.string.login_setup_password_error));
        } else if (obj2.length() > 16) {
            UIUtils.m8592z(UIUtils.m8603o(R.string.login_setup_password_error));
        } else if (!RegexUtils.m8632c(obj2)) {
            UIUtils.m8592z(UIUtils.m8603o(R.string.login_setup_password_error));
        } else if (!obj.equals(obj2)) {
            UIUtils.m8592z(UIUtils.m8603o(R.string.forget_pwd_input_not_match));
        } else {
            Bundle arguments = getArguments();
            if (arguments == null) {
                return;
            }
            String string = arguments.getString("phone");
            String string2 = arguments.getString("code");
            if (string == null || string2 == null) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("code", string2);
            hashMap.put("password", obj);
            hashMap.put("phone", string);
            ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11369m(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.login.j0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj3) {
                    ResetPasswordFragment.this.m9678t3((Disposable) obj3);
                }
            }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.login.i0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj3) {
                    ResetPasswordFragment.this.m9676v3((NewHttpResult) obj3);
                }
            }, new C4673a());
        }
    }
}
