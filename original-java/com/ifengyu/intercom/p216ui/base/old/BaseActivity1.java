package com.ifengyu.intercom.p216ui.base.old;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.Variables;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p214p.APIUtils;
import com.ifengyu.intercom.p214p.ActivityListManager;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.widget.dialog.ActivateDeviceDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.DialogProgress;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.util.QMUIStatusBarHelper;

/* renamed from: com.ifengyu.intercom.ui.base.old.BaseActivity1 */
/* loaded from: classes2.dex */
public class BaseActivity1 extends AppCompatActivity {

    /* renamed from: b */
    protected Toolbar f15056b;

    /* renamed from: c */
    protected ImageView f15057c;

    /* renamed from: d */
    protected DialogProgress f15058d;

    /* renamed from: f */
    private LinearLayout f15060f;

    /* renamed from: g */
    protected boolean f15061g;

    /* renamed from: h */
    public InterfaceC4462d f15062h;

    /* renamed from: a */
    protected String f15055a = getClass().getSimpleName();

    /* renamed from: e */
    private boolean f15059e = true;

    /* renamed from: i */
    public Runnable f15063i = new RunnableC4458b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.base.old.BaseActivity1$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC4457a implements View.OnClickListener {
        View$OnClickListenerC4457a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseActivity1.this.finish();
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.base.old.BaseActivity1$b */
    /* loaded from: classes2.dex */
    class RunnableC4458b implements Runnable {

        /* renamed from: com.ifengyu.intercom.ui.base.old.BaseActivity1$b$a */
        /* loaded from: classes2.dex */
        class DialogInterface$OnClickListenerC4459a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC4459a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                InterfaceC4462d interfaceC4462d = BaseActivity1.this.f15062h;
                if (interfaceC4462d != null) {
                    interfaceC4462d.mo10269b();
                }
            }
        }

        /* renamed from: com.ifengyu.intercom.ui.base.old.BaseActivity1$b$b */
        /* loaded from: classes2.dex */
        class DialogInterface$OnClickListenerC4460b implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC4460b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                BaseActivity1.this.m10280q();
            }
        }

        RunnableC4458b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            InterfaceC4462d interfaceC4462d = BaseActivity1.this.f15062h;
            if (interfaceC4462d != null) {
                interfaceC4462d.mo10268c();
            }
            BaseActivity1.this.m10283n();
            CommonDialog commonDialog = new CommonDialog(BaseActivity1.this);
            commonDialog.m9029h(true);
            commonDialog.m9018s(R.string.active_device_fail);
            commonDialog.m9025l(BaseActivity1.this.getString(R.string.activate_note));
            commonDialog.m9024m(R.string.active_device_reactive, new DialogInterface$OnClickListenerC4460b());
            commonDialog.m9020q(R.string.common_cancel, new DialogInterface$OnClickListenerC4459a());
            commonDialog.m9032e();
            commonDialog.m9016u();
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.base.old.BaseActivity1$c */
    /* loaded from: classes2.dex */
    class C4461c implements ActivateDeviceDialog.InterfaceC4897b {
        C4461c() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.ActivateDeviceDialog.InterfaceC4897b
        /* renamed from: a */
        public void mo9043a() {
            InterfaceC4462d interfaceC4462d = BaseActivity1.this.f15062h;
            if (interfaceC4462d != null) {
                interfaceC4462d.mo10269b();
            }
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.ActivateDeviceDialog.InterfaceC4897b
        /* renamed from: b */
        public void mo9042b() {
            BaseActivity1.this.m10280q();
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.base.old.BaseActivity1$d */
    /* loaded from: classes2.dex */
    public interface InterfaceC4462d {
        /* renamed from: a */
        void mo10270a();

        /* renamed from: b */
        void mo10269b();

        /* renamed from: c */
        void mo10268c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public void m10280q() {
        m10288C(false, false, R.string.dialog_activating, R.drawable.load_spinner);
        UIUtils.m8599s(this.f15063i, 5000L);
        String m11195o = MiTalkClientUtil.m11195o();
        int m11191q = MiTalkClientUtil.m11191q();
        if (m11191q != 1) {
            if (m11191q != 4) {
                if (m11191q == 5 && BleCoreClient.m12373n().m12372o(m11195o)) {
                    BleCoreClient.m12373n().m12375l(m11195o).m12102k1();
                }
            } else if (BleCoreClient.m12373n().m12372o(m11195o)) {
                BleCoreClient.m12373n().m12374m(m11195o).m12036j1();
            }
        } else if (BleCoreClient.m12373n().m12372o(m11195o)) {
            BleCoreClient.m12373n().m12378i(m11195o).m12325l1();
        }
        this.f15061g = true;
    }

    /* renamed from: y */
    private void m10272y() {
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.title_bar);
        if (viewGroup != null) {
            viewGroup.setPadding(0, Variables.m12428a(), 0, 0);
        }
    }

    /* renamed from: B */
    public void m10289B(InterfaceC4462d interfaceC4462d) {
        this.f15062h = interfaceC4462d;
        ActivateDeviceDialog activateDeviceDialog = new ActivateDeviceDialog(this);
        activateDeviceDialog.m9044i(new C4461c());
        activateDeviceDialog.show();
    }

    /* renamed from: C */
    public void m10288C(boolean z, boolean z2, int i, int i2) {
        m10287D(z, z2, getString(i), i2);
    }

    /* renamed from: D */
    public void m10287D(boolean z, boolean z2, String str, int i) {
        DialogProgress dialogProgress = this.f15058d;
        if (dialogProgress == null) {
            this.f15058d = new DialogProgress(this);
        } else {
            dialogProgress.dismiss();
            this.f15058d = new DialogProgress(this);
        }
        this.f15058d.m8984b(str);
        this.f15058d.m8985a(i);
        this.f15058d.setCanceledOnTouchOutside(z);
        this.f15058d.setCancelable(z2);
        if (this.f15058d.isShowing()) {
            return;
        }
        try {
            this.f15058d.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: E */
    public void m10286E(Class<?> cls) {
        startActivity(new Intent(this, cls));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int checkSelfPermission(String str) {
        if (APIUtils.m11094b()) {
            return super.checkSelfPermission(str);
        }
        return 0;
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

    /* renamed from: m */
    protected void m10284m() {
    }

    /* renamed from: n */
    public void m10283n() {
        DialogProgress dialogProgress = this.f15058d;
        if (dialogProgress == null || !dialogProgress.isShowing()) {
            return;
        }
        try {
            this.f15058d.dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: o */
    public <T> T m10282o(int i) {
        return (T) findViewById(i);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m10279r();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if (configuration.fontScale != 1.0f) {
            getResources();
        }
        super.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRequestedOrientation(1);
        QMUIStatusBarHelper.m7477q(this);
        QMUIStatusBarHelper.m7481m(this);
        if (mo10271z()) {
            super.setContentView(R.layout.activity_base);
            m10281p();
        } else {
            supportRequestWindowFeature(1);
        }
        ActivityListManager.m11092a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        ActivityListManager.m11090c(this);
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
        if (this.f15059e) {
            m10284m();
            this.f15059e = false;
        } else if (Variables.f13703b <= 0) {
            Variables.m12426c(this);
            m10284m();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    /* renamed from: p */
    protected Toolbar m10281p() {
        if (this.f15056b == null) {
            this.f15056b = (Toolbar) findViewById(R.id.toolbar_actionbar);
        }
        this.f15056b.setContentInsetsAbsolute(0, 0);
        this.f15056b.setBackgroundColor(getResources().getColor(R.color.white));
        setSupportActionBar(this.f15056b);
        if (getSupportActionBar() != null) {
            getSupportActionBar().mo25917t(false);
        }
        mo10278s();
        m10274w();
        m10273x();
        return this.f15056b;
    }

    /* renamed from: r */
    public void m10279r() {
        if (getSupportFragmentManager().getFragments() != null && getSupportFragmentManager().getFragments().size() > 1) {
            getSupportFragmentManager().popBackStack();
        }
        finish();
    }

    /* renamed from: s */
    protected void mo10278s() {
        ImageView imageView = (ImageView) this.f15056b.findViewById(R.id.left);
        this.f15057c = imageView;
        imageView.setOnClickListener(new View$OnClickListenerC4457a());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        if (mo10271z()) {
            setContentView(View.inflate(this, i, null));
        } else {
            super.setContentView(i);
        }
        m10272y();
    }

    @Override // android.app.Activity
    public boolean shouldShowRequestPermissionRationale(String str) {
        return APIUtils.m11094b() && super.shouldShowRequestPermissionRationale(str);
    }

    /* renamed from: t */
    public void m10277t(int i) {
        DialogProgress dialogProgress = this.f15058d;
        if (dialogProgress == null || i == -1) {
            return;
        }
        dialogProgress.m8985a(i);
    }

    /* renamed from: u */
    public void m10276u(int i) {
        m10275v(getString(i));
    }

    /* renamed from: v */
    public void m10275v(String str) {
        DialogProgress dialogProgress = this.f15058d;
        if (dialogProgress != null) {
            dialogProgress.m8984b(str);
        }
    }

    /* renamed from: w */
    protected void m10274w() {
        ImageView imageView = (ImageView) this.f15056b.findViewById(R.id.right);
        TextView textView = (TextView) this.f15056b.findViewById(R.id.right_text);
        LinearLayout linearLayout = (LinearLayout) this.f15056b.findViewById(R.id.right_layout);
    }

    /* renamed from: x */
    protected void m10273x() {
        TextView textView = (TextView) this.f15056b.findViewById(R.id.title);
    }

    /* renamed from: z */
    protected boolean mo10271z() {
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        if (mo10271z()) {
            LinearLayout linearLayout = (LinearLayout) findViewById(R.id.root_view);
            this.f15060f = linearLayout;
            if (linearLayout == null) {
                return;
            }
            linearLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
        } else {
            super.setContentView(view);
        }
        m10272y();
    }
}
