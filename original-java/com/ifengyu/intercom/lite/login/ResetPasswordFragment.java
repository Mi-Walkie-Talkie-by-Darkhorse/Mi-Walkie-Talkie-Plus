package com.ifengyu.intercom.lite.login;

import android.content.Context;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.HttpNormalResult;
import com.ifengyu.intercom.i.x;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.base.e;
import com.ifengyu.intercom.ui.widget.view.PasswordToggleEditText;
import com.ifengyu.library.a.i;
import com.ifengyu.library.a.m;
import com.jakewharton.rxbinding3.widget.RxTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import okhttp3.Call;
import okhttp3.Request;

/* loaded from: classes2.dex */
public class ResetPasswordFragment extends e {
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
    /* loaded from: classes2.dex */
    public class a extends com.ifengyu.intercom.g.d.e {
        a() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Request request, int i) {
            super.a(request, i);
            ResetPasswordFragment.this.z();
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            ResetPasswordFragment.this.x();
            z.a("onError", exc.toString());
            ResetPasswordFragment.this.c((int) R.string.network_exception);
        }

        public void a(HttpNormalResult httpNormalResult, int i) {
            ResetPasswordFragment.this.x();
            if (httpNormalResult == null) {
                ResetPasswordFragment.this.c((int) R.string.network_exception);
                return;
            }
            int i2 = httpNormalResult.errno;
            if (i2 == 0) {
                ResetPasswordFragment.this.C();
            } else {
                ResetPasswordFragment.this.c(x.a(i2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QMUITipDialog f5685a;

        b(ResetPasswordFragment resetPasswordFragment, QMUITipDialog qMUITipDialog) {
            this.f5685a = qMUITipDialog;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5685a.dismiss();
        }
    }

    private void B() {
        this.mTopBar.f(R.string.forget_pwd_reset_pwd_title);
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.login.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ResetPasswordFragment.this.b(view);
            }
        });
        boolean z = true;
        this.mEtPasswordNew.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        this.mEtPasswordConfirm.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        AppCompatButton appCompatButton = this.mBtnAction;
        if (TextUtils.isEmpty(this.mEtPasswordNew.getText()) || TextUtils.isEmpty(this.mEtPasswordConfirm.getText())) {
            z = false;
        }
        appCompatButton.setEnabled(z);
        this.mBtnAction.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.login.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ResetPasswordFragment.this.c(view);
            }
        });
        this.mBtnGotoLogin.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.login.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ResetPasswordFragment.this.d(view);
            }
        });
        Observable.combineLatest(RxTextView.textChanges(this.mEtPasswordNew).skip(1L), RxTextView.textChanges(this.mEtPasswordConfirm).skip(1L), u.f5707a).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.login.x
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ResetPasswordFragment.this.a((Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        a(ForgetPasswordFragment.class);
    }

    public void A() {
        String obj = this.mEtPasswordNew.getText().toString();
        String obj2 = this.mEtPasswordConfirm.getText().toString();
        if (obj.length() > 16) {
            m.a(m.b((int) R.string.login_setup_password_error));
        } else if (!i.b(obj)) {
            m.a(m.b((int) R.string.login_setup_password_error));
        } else if (obj2.length() > 16) {
            m.a(m.b((int) R.string.login_setup_password_error));
        } else if (!i.b(obj2)) {
            m.a(m.b((int) R.string.login_setup_password_error));
        } else if (!obj.equals(obj2)) {
            m.a(m.b((int) R.string.forget_pwd_input_not_match));
        } else {
            Bundle arguments = getArguments();
            if (arguments != null) {
                String string = arguments.getString("phone");
                String string2 = arguments.getString("code");
                if (string != null && string2 != null) {
                    com.ifengyu.intercom.g.a.c(string, obj, string2, new a());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.lite.base.e, com.qmuiteam.qmui.arch.b
    public boolean b(Context context, int i, int i2) {
        return false;
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_reset_password, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        B();
        return inflate;
    }

    public static ResetPasswordFragment b(String str, String str2) {
        ResetPasswordFragment resetPasswordFragment = new ResetPasswordFragment();
        Bundle bundle = new Bundle();
        bundle.putString("phone", str);
        bundle.putString("code", str2);
        resetPasswordFragment.setArguments(bundle);
        return resetPasswordFragment;
    }

    public /* synthetic */ void c(View view) {
        A();
    }

    public /* synthetic */ void d(View view) {
        a(ForgetPasswordFragment.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i) {
        QMUITipDialog.Builder builder = new QMUITipDialog.Builder(getContext());
        builder.a(3);
        builder.a(m.b(i));
        QMUITipDialog a2 = builder.a(false);
        a2.show();
        m.a(new b(this, a2), 500L);
    }

    public /* synthetic */ void a(Boolean bool) throws Exception {
        this.mBtnAction.setEnabled(bool.booleanValue());
    }

    public /* synthetic */ void b(View view) {
        if (this.mLlSuccessContainer.getVisibility() == 0) {
            a(ForgetPasswordFragment.class);
        } else {
            t();
        }
    }
}
