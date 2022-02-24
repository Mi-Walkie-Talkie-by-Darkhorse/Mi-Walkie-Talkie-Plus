package com.ifengyu.intercom.lite.login;

import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.HttpNormalResult;
import com.ifengyu.intercom.i.x;
import com.ifengyu.intercom.lite.base.e;
import com.ifengyu.intercom.ui.widget.view.PasswordToggleEditText;
import com.ifengyu.library.a.i;
import com.ifengyu.library.a.l;
import com.ifengyu.library.a.m;
import com.jakewharton.rxbinding3.widget.RxTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import okhttp3.Call;
import okhttp3.Request;

/* loaded from: classes2.dex */
public class LiteSetupPasswordFragment extends e {
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

    /* loaded from: classes2.dex */
    class a extends com.ifengyu.intercom.g.d.e {
        a() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Request request, int i) {
            LiteSetupPasswordFragment.this.z();
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            LiteSetupPasswordFragment.this.x();
            m.d(R.string.network_exception);
        }

        public void a(HttpNormalResult httpNormalResult, int i) {
            LiteSetupPasswordFragment.this.x();
            int i2 = httpNormalResult.errno;
            if (i2 == 2) {
                m.d(R.string.error_old_password);
            } else if (i2 != 0) {
                m.d(x.a(i2));
            } else {
                LiteSetupPasswordFragment.this.C();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements QMUIDialogAction.b {
        b() {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            LiteSetupPasswordFragment.this.t();
            bVar.dismiss();
        }
    }

    private void A() {
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.login.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteSetupPasswordFragment.this.b(view);
            }
        });
        this.mTopBar.f(R.string.lite_password_setup);
    }

    private void B() {
        this.mBtnAction.setChangeAlphaWhenPress(false);
        this.mEtPasswordOld.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        this.mEtPasswordNew.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        this.mEtPasswordConfirm.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        Observable.combineLatest(RxTextView.textChanges(this.mEtPasswordOld), RxTextView.textChanges(this.mEtPasswordNew), RxTextView.textChanges(this.mEtPasswordConfirm), f.f5692a).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.login.e
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LiteSetupPasswordFragment.this.a((Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
        eVar.d(R.string.forget_pwd_success_pls_relogin);
        eVar.a(0, R.string.common_ok, 0, new b());
        eVar.a(R.style.DialogTheme2).show();
    }

    @OnClick({R.id.btn_action})
    public void onClick(View view) {
        String obj = this.mEtPasswordOld.getText().toString();
        String obj2 = this.mEtPasswordNew.getText().toString();
        String obj3 = this.mEtPasswordConfirm.getText().toString();
        if (l.b(obj2) || obj2.length() < 8 || obj2.length() > 16 || !i.b(obj2)) {
            m.d(R.string.login_setup_password_error);
        } else if (!obj2.equals(obj3)) {
            m.d(R.string.forget_pwd_input_not_match);
        } else {
            com.ifengyu.intercom.g.a.c(obj, obj2, new a());
        }
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_setup_password, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        A();
        B();
        return inflate;
    }

    public /* synthetic */ void b(View view) {
        t();
    }

    public /* synthetic */ void a(Boolean bool) throws Exception {
        this.mBtnAction.setEnabled(bool.booleanValue());
    }
}
