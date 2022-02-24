package com.ifengyu.intercom.ui.baseui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.StringRes;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.h0;
import com.ifengyu.intercom.i.j;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.widget.dialog.c;
import com.ifengyu.intercom.ui.widget.dialog.f;
import com.ifengyu.intercom.ui.widget.dialog.i;
import com.ifengyu.library.a.m;
import com.ifengyu.library.helper.QMUIStatusBarHelper;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;

/* loaded from: classes2.dex */
public class BaseActivity extends AppCompatActivity {

    /* renamed from: b  reason: collision with root package name */
    protected Toolbar f6371b;

    /* renamed from: c  reason: collision with root package name */
    protected ImageView f6372c;
    protected ImageView d;
    protected TextView e;
    protected TextView f;
    protected LinearLayout g;
    protected i h;
    private LinearLayout j;
    private long k;
    protected boolean l;
    public e m;
    private QMUITipDialog n;

    /* renamed from: a  reason: collision with root package name */
    protected String f6370a = getClass().getSimpleName();
    private boolean i = true;
    public State o = State.EXPANDED;
    public Runnable p = new c();

    /* loaded from: classes2.dex */
    public enum State {
        EXPANDED,
        COLLAPSED,
        IDLE
    }

    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QMUITipDialog f6376a;

        a(QMUITipDialog qMUITipDialog) {
            this.f6376a = qMUITipDialog;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6376a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseActivity.this.finish();
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {

        /* loaded from: classes2.dex */
        class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                e eVar = BaseActivity.this.m;
                if (eVar != null) {
                    eVar.b();
                }
            }
        }

        /* loaded from: classes2.dex */
        class b implements DialogInterface.OnClickListener {
            b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                BaseActivity.this.w();
            }
        }

        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = BaseActivity.this.m;
            if (eVar != null) {
                eVar.c();
            }
            BaseActivity.this.j();
            f fVar = new f(BaseActivity.this);
            fVar.a(true);
            fVar.c(R.string.active_device_fail);
            fVar.a(BaseActivity.this.getString(R.string.activate_note));
            fVar.a(R.string.active_device_reactive, new b());
            fVar.c(R.string.common_cancel, new a());
            fVar.a();
            fVar.d();
        }
    }

    /* loaded from: classes2.dex */
    class d implements c.b {
        d() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.c.b
        public void a() {
            e eVar = BaseActivity.this.m;
            if (eVar != null) {
                eVar.b();
            }
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.c.b
        public void b() {
            BaseActivity.this.w();
        }
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a();

        void b();

        void c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        a(false, false, R.string.dialog_activating, R.drawable.load_spinner);
        m.a(this.p, 5000L);
        int g = d0.g();
        if (g == 1) {
            com.ifengyu.intercom.node.e.d().b();
        } else if (g == 4) {
            h0.c();
        } else if (g == 5) {
            g0.c();
        }
        this.l = true;
    }

    private void x() {
        ViewGroup viewGroup;
        if (Build.VERSION.SDK_INT >= 19 && (viewGroup = (ViewGroup) findViewById(R.id.title_bar)) != null) {
            viewGroup.setPadding(0, com.ifengyu.intercom.d.a(), 0, 0);
        }
    }

    public void b(int i) {
        i iVar = this.h;
        if (iVar != null && i != -1) {
            iVar.a(i);
        }
    }

    public void c(int i) {
        b(getString(i));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int checkSelfPermission(String str) {
        if (com.ifengyu.intercom.i.i.b()) {
            return super.checkSelfPermission(str);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(@StringRes int i) {
        QMUITipDialog.Builder builder = new QMUITipDialog.Builder(this);
        builder.a(getString(i));
        builder.a(2);
        QMUITipDialog a2 = builder.a(false);
        a2.show();
        m.a(new a(a2), 1500L);
    }

    protected void i() {
    }

    public void j() {
        i iVar = this.h;
        if (iVar != null && iVar.isShowing()) {
            try {
                this.h.dismiss();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    protected Toolbar k() {
        if (this.f6371b == null) {
            this.f6371b = (Toolbar) findViewById(R.id.toolbar_actionbar);
        }
        this.f6371b.setContentInsetsAbsolute(0, 0);
        this.f6371b.setBackgroundColor(getResources().getColor(R.color.white));
        setSupportActionBar(this.f6371b);
        if (getSupportActionBar() != null) {
            getSupportActionBar().d(false);
        }
        r();
        s();
        t();
        return this.f6371b;
    }

    public String l() {
        return d0.p();
    }

    public String m() {
        return d0.q();
    }

    public int n() {
        return d0.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public QMUITipDialog o() {
        return this.n;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (!(this instanceof MainActivity) || System.currentTimeMillis() - this.k <= 2000) {
            q();
            return;
        }
        c0.a((CharSequence) getString(R.string.press_again_to_exit), false);
        this.k = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRequestedOrientation(1);
        QMUIStatusBarHelper.b(this);
        QMUIStatusBarHelper.a(this);
        if (u()) {
            super.setContentView(R.layout.activity_base);
            k();
        } else {
            supportRequestWindowFeature(1);
        }
        j.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        j.b(this);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.i) {
            i();
            this.i = false;
        } else if (com.ifengyu.intercom.d.f5224c <= 0) {
            com.ifengyu.intercom.d.a((Activity) this);
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p() {
        QMUITipDialog qMUITipDialog = this.n;
        if (qMUITipDialog != null && qMUITipDialog.isShowing()) {
            this.n.dismiss();
        }
    }

    public void q() {
        if (getSupportFragmentManager().getFragments() != null && getSupportFragmentManager().getFragments().size() > 1) {
            getSupportFragmentManager().popBackStack();
        }
        finish();
    }

    protected void r() {
        ImageView imageView = (ImageView) this.f6371b.findViewById(R.id.left);
        this.f6372c = imageView;
        imageView.setOnClickListener(new b());
    }

    protected void s() {
        this.d = (ImageView) this.f6371b.findViewById(R.id.right);
        this.e = (TextView) this.f6371b.findViewById(R.id.right_text);
        this.g = (LinearLayout) this.f6371b.findViewById(R.id.right_layout);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        if (u()) {
            setContentView(View.inflate(this, i, null));
        } else {
            super.setContentView(i);
        }
        x();
    }

    @Override // android.app.Activity
    public boolean shouldShowRequestPermissionRationale(String str) {
        return com.ifengyu.intercom.i.i.b() && super.shouldShowRequestPermissionRationale(str);
    }

    protected void t() {
        this.f = (TextView) this.f6371b.findViewById(R.id.title);
    }

    protected boolean u() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void v() {
        if (this.n == null) {
            QMUITipDialog.Builder builder = new QMUITipDialog.Builder(this);
            builder.a(getString(R.string.please_wait));
            builder.a(1);
            this.n = builder.a(true);
        }
        if (!this.n.isShowing()) {
            this.n.show();
        }
    }

    public <T> T a(int i) {
        return (T) findViewById(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Class<?> cls) {
        startActivity(new Intent(this, cls));
    }

    public void b(String str) {
        i iVar = this.h;
        if (iVar != null) {
            iVar.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Class<?> cls, int i) {
        startActivityForResult(new Intent(this, cls), i);
    }

    public void a(boolean z, boolean z2, String str, int i) {
        i iVar = this.h;
        if (iVar == null) {
            this.h = new i(this);
        } else {
            iVar.dismiss();
            this.h = new i(this);
        }
        this.h.a(str);
        this.h.a(i);
        this.h.setCanceledOnTouchOutside(z);
        this.h.setCancelable(z2);
        if (!this.h.isShowing()) {
            try {
                this.h.show();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void b(String str, String str2) {
        d0.f(str);
        d0.e(str2);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        if (u()) {
            LinearLayout linearLayout = (LinearLayout) findViewById(R.id.root_view);
            this.j = linearLayout;
            if (linearLayout != null) {
                linearLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            } else {
                return;
            }
        } else {
            super.setContentView(view);
        }
        x();
    }

    public void a(boolean z, boolean z2, int i, int i2) {
        a(z, z2, getString(i), i2);
    }

    public void a(e eVar) {
        this.m = eVar;
        com.ifengyu.intercom.ui.widget.dialog.c cVar = new com.ifengyu.intercom.ui.widget.dialog.c(this);
        cVar.a(new d());
        cVar.show();
    }
}
