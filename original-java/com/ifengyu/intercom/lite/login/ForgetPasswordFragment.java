package com.ifengyu.intercom.lite.login;

import android.content.DialogInterface;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.HttpNormalResult;
import com.ifengyu.intercom.i.x;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.c.b.g;
import com.ifengyu.intercom.ui.widget.view.FixedEditText;
import com.ifengyu.library.a.m;
import com.jakewharton.rxbinding3.widget.RxTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;
import io.reactivex.Observable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Request;

/* loaded from: classes2.dex */
public class ForgetPasswordFragment extends com.ifengyu.intercom.lite.base.e {
    private String A;
    private String B;
    private String C;
    private String D;
    @BindView(R.id.btn_action)
    AppCompatButton mBtnAction;
    @BindView(R.id.btn_get_code)
    AppCompatButton mBtnGetCode;
    @BindView(R.id.et_phone)
    FixedEditText mEtPhone;
    @BindView(R.id.et_verify_code)
    AppCompatEditText mEtVerifyCode;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    private com.ifengyu.library.a.c z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForgetPasswordFragment.this.A();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForgetPasswordFragment.this.D();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ForgetPasswordFragment.this.mBtnGetCode.setEnabled(editable.length() == 11 && editable.toString().startsWith("1") && (ForgetPasswordFragment.this.z == null || ForgetPasswordFragment.this.z.b()));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements g.c {
        d() {
        }

        @Override // com.ifengyu.intercom.lite.c.b.g.c
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, String str, String str2, String str3, String str4) {
            bVar.dismiss();
            ForgetPasswordFragment.this.A = str;
            ForgetPasswordFragment.this.B = str2;
            ForgetPasswordFragment.this.C = str3;
            ForgetPasswordFragment.this.D = str4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements DialogInterface.OnDismissListener {
        e() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (!(ForgetPasswordFragment.this.B == null || ForgetPasswordFragment.this.C == null)) {
                ForgetPasswordFragment forgetPasswordFragment = ForgetPasswordFragment.this;
                forgetPasswordFragment.a(forgetPasswordFragment.B, ForgetPasswordFragment.this.C, ForgetPasswordFragment.this.A, ForgetPasswordFragment.this.D);
            }
            ForgetPasswordFragment.this.A = null;
            ForgetPasswordFragment.this.B = null;
            ForgetPasswordFragment.this.C = null;
            ForgetPasswordFragment.this.D = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends com.ifengyu.intercom.g.d.e {
        f() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Request request, int i) {
            super.a(request, i);
            ForgetPasswordFragment.this.z();
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            z.a("onError", exc.toString());
            ForgetPasswordFragment.this.x();
            ForgetPasswordFragment.this.c((int) R.string.network_exception);
        }

        public void a(HttpNormalResult httpNormalResult, int i) {
            ForgetPasswordFragment.this.x();
            if (httpNormalResult == null) {
                ForgetPasswordFragment.this.c((int) R.string.network_exception);
                return;
            }
            int i2 = httpNormalResult.errno;
            if (i2 == 0) {
                ForgetPasswordFragment.this.E();
            } else {
                ForgetPasswordFragment.this.c(x.a(i2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g extends com.ifengyu.intercom.g.d.e {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f5651b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f5652c;

        g(String str, String str2) {
            this.f5651b = str;
            this.f5652c = str2;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Request request, int i) {
            super.a(request, i);
            ForgetPasswordFragment.this.z();
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            ForgetPasswordFragment.this.x();
            ForgetPasswordFragment.this.c((int) R.string.network_exception);
        }

        public void a(HttpNormalResult httpNormalResult, int i) {
            ForgetPasswordFragment.this.x();
            if (httpNormalResult == null) {
                ForgetPasswordFragment.this.c((int) R.string.network_exception);
                return;
            }
            int i2 = httpNormalResult.errno;
            if (i2 == 0) {
                ForgetPasswordFragment.this.a(ResetPasswordFragment.b(this.f5651b, this.f5652c));
            } else {
                ForgetPasswordFragment.this.c(x.a(i2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QMUITipDialog f5653a;

        h(ForgetPasswordFragment forgetPasswordFragment, QMUITipDialog qMUITipDialog) {
            this.f5653a = qMUITipDialog;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5653a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i extends com.ifengyu.library.a.c {
        i(Long l, TimeUnit timeUnit) {
            super(l, timeUnit);
        }

        @Override // com.ifengyu.library.a.c
        public void a(long j) {
            ForgetPasswordFragment.this.mBtnGetCode.setText(m.a((int) R.string.verify_code_countdown_text, String.valueOf(j)));
        }

        @Override // com.ifengyu.library.a.c
        public void c() {
            ForgetPasswordFragment forgetPasswordFragment = ForgetPasswordFragment.this;
            forgetPasswordFragment.mBtnGetCode.setEnabled(forgetPasswordFragment.mEtPhone.getText().length() == 11);
            ForgetPasswordFragment.this.mBtnGetCode.setText(R.string.login_get_verify_code_again);
        }
    }

    private void B() {
        com.ifengyu.library.a.c cVar = this.z;
        if (cVar != null) {
            cVar.a();
        }
    }

    private void C() {
        this.mTopBar.f(R.string.forget_pwd_find_pwd);
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.login.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ForgetPasswordFragment.this.b(view);
            }
        });
        this.mBtnAction.setOnClickListener(new a());
        this.mBtnGetCode.setOnClickListener(new b());
        boolean z = true;
        this.mEtPhone.setFilters(new InputFilter[]{new InputFilter.LengthFilter(11)});
        this.mEtPhone.addTextChangedListener(new c());
        String obj = this.mEtPhone.getText().toString();
        this.mBtnGetCode.setEnabled(obj.length() == 11);
        AppCompatButton appCompatButton = this.mBtnAction;
        if (TextUtils.isEmpty(obj) || obj.length() != 11 || !obj.startsWith("1") || TextUtils.isEmpty(this.mEtVerifyCode.getText())) {
            z = false;
        }
        appCompatButton.setEnabled(z);
        Observable.combineLatest(RxTextView.textChanges(this.mEtPhone).skip(1L), RxTextView.textChanges(this.mEtVerifyCode).skip(1L), new BiFunction() { // from class: com.ifengyu.intercom.lite.login.c
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj2, Object obj3) {
                return ForgetPasswordFragment.this.a((CharSequence) obj2, (CharSequence) obj3);
            }
        }).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.login.d
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj2) {
                ForgetPasswordFragment.this.a((Boolean) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        com.ifengyu.intercom.lite.c.b.g gVar = new com.ifengyu.intercom.lite.c.b.g(getContext());
        gVar.a("安全验证");
        com.ifengyu.intercom.lite.c.b.g gVar2 = gVar;
        gVar2.a(new d());
        com.qmuiteam.qmui.widget.dialog.b a2 = gVar2.a(R.style.DialogTheme2);
        a2.setOnDismissListener(new e());
        a2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        this.mBtnGetCode.setEnabled(false);
        if (this.z == null) {
            this.z = new i(60L, TimeUnit.SECONDS);
        }
        if (this.z.b()) {
            this.z.d();
        }
    }

    public static ForgetPasswordFragment newInstance() {
        return new ForgetPasswordFragment();
    }

    public void A() {
        String obj = this.mEtPhone.getText().toString();
        String obj2 = this.mEtVerifyCode.getText().toString();
        com.ifengyu.intercom.g.a.a(obj, obj2, 4, new g(obj, obj2));
    }

    @Override // com.qmuiteam.qmui.arch.b, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        B();
    }

    @Override // com.qmuiteam.qmui.arch.b, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_forget_password, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        C();
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i2) {
        QMUITipDialog.Builder builder = new QMUITipDialog.Builder(getContext());
        builder.a(3);
        builder.a(m.b(i2));
        QMUITipDialog a2 = builder.a(false);
        a2.show();
        m.a(new h(this, a2), 500L);
    }

    public /* synthetic */ void b(View view) {
        t();
    }

    public /* synthetic */ Boolean a(CharSequence charSequence, CharSequence charSequence2) throws Exception {
        boolean z = false;
        boolean z2 = !TextUtils.isEmpty(charSequence) && charSequence.length() == 11 && this.mEtPhone.getText().toString().startsWith("1");
        boolean z3 = !TextUtils.isEmpty(charSequence2);
        if (z2 && z3) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public /* synthetic */ void a(Boolean bool) throws Exception {
        this.mBtnAction.setEnabled(bool.booleanValue());
    }

    public void a(String str, String str2, String str3, String str4) {
        String obj = this.mEtPhone.getText().toString();
        if (!com.ifengyu.library.a.i.a(obj)) {
            m.d(R.string.login_error_invalid_phone_number);
        } else {
            com.ifengyu.intercom.g.a.a(obj, 4, str, str2, str3, str4, new f());
        }
    }
}
