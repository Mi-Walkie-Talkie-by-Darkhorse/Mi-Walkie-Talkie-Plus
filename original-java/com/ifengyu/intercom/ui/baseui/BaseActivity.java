package com.ifengyu.intercom.ui.baseui;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.account.UserCache;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.a.b.j;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.ab;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.c;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.SplashActivity;
import com.ifengyu.intercom.ui.activity.LoginActivity;
import com.ifengyu.intercom.ui.activity.WebViewActivity;
import com.ifengyu.intercom.ui.widget.dialog.a.C0039a;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.dialog.h;
import com.ifengyu.library.helper.QMUIStatusBarHelper;
import com.mi.milinkforgame.sdk.data.Const;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.mipush.sdk.MiPushClient;
import java.util.HashMap;
import okhttp3.Call;
import org.json.JSONException;
import org.json.JSONObject;

public class BaseActivity extends AppCompatActivity {
    private boolean a = false;
    private boolean b = true;
    private LinearLayout c;
    private long d;
    /* access modifiers changed from: protected */
    public String e = getClass().getSimpleName();
    protected Toolbar f;
    protected ImageView g;
    protected ImageView h;
    protected TextView i;
    protected TextView j;
    protected LinearLayout k;
    protected h l;
    protected boolean m;
    public a n;
    public State o = State.EXPANDED;
    public Runnable p = new Runnable() {
        public void run() {
            if (BaseActivity.this.n != null) {
                BaseActivity.this.n.b();
            }
            BaseActivity.this.k();
            new d(BaseActivity.this).b(true).a((int) R.string.active_device_fail).b((CharSequence) BaseActivity.this.getString(R.string.activate_note)).a((int) R.string.active_device_reactive, (OnClickListener) new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    BaseActivity.this.d();
                }
            }).b((int) R.string.common_cancel, (OnClickListener) new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (BaseActivity.this.n != null) {
                        BaseActivity.this.n.c();
                    }
                }
            }).b().c();
        }
    };
    private HashMap<String, String> q = new HashMap<>();

    public enum State {
        EXPANDED,
        COLLAPSED,
        IDLE
    }

    public interface a {
        void a();

        void b();

        void c();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRequestedOrientation(1);
        QMUIStatusBarHelper.a(this);
        QMUIStatusBarHelper.b(this);
        if (b()) {
            super.setContentView((int) R.layout.activity_base);
            i();
        } else {
            supportRequestWindowFeature(1);
        }
        com.ifengyu.intercom.b.d.a(this);
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        if (!(this instanceof LoginActivity) && !(this instanceof SplashActivity) && !(this instanceof WebViewActivity) && v.a((Context) this)) {
            m();
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.a = true;
        if (this.b) {
            l();
            this.b = false;
        } else if (com.ifengyu.intercom.a.d <= 0) {
            com.ifengyu.intercom.a.a((Activity) this);
            l();
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        this.a = false;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        com.ifengyu.intercom.b.d.b(this);
        super.onDestroy();
    }

    public void setContentView(int i2) {
        if (b()) {
            setContentView(View.inflate(this, i2, null));
        } else {
            super.setContentView(i2);
        }
        c();
    }

    public void setContentView(View view) {
        if (b()) {
            this.c = (LinearLayout) findViewById(R.id.root_view);
            if (this.c != null) {
                this.c.addView(view, new LayoutParams(-1, -1));
            } else {
                return;
            }
        } else {
            super.setContentView(view);
        }
        c();
    }

    private void c() {
        if (VERSION.SDK_INT >= 19) {
            ViewGroup viewGroup = (ViewGroup) findViewById(R.id.title_bar);
            if (viewGroup != null) {
                viewGroup.setPadding(0, com.ifengyu.intercom.a.a(), 0, 0);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void c_() {
        this.g = (ImageView) this.f.findViewById(R.id.left);
        this.g.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                BaseActivity.this.finish();
            }
        });
    }

    /* access modifiers changed from: protected */
    public void g() {
        this.h = (ImageView) this.f.findViewById(R.id.right);
        this.i = (TextView) this.f.findViewById(R.id.right_text);
        this.k = (LinearLayout) this.f.findViewById(R.id.right_layout);
    }

    /* access modifiers changed from: protected */
    public void h() {
        this.j = (TextView) this.f.findViewById(R.id.title);
    }

    /* access modifiers changed from: protected */
    public Toolbar i() {
        if (this.f == null) {
            this.f = (Toolbar) findViewById(R.id.toolbar_actionbar);
        }
        this.f.setContentInsetsAbsolute(0, 0);
        this.f.setBackgroundColor(getResources().getColor(R.color.white));
        setSupportActionBar(this.f);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayShowTitleEnabled(false);
        }
        c_();
        g();
        h();
        return this.f;
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return false;
    }

    public void j() {
        if (getSupportFragmentManager().getFragments() != null && getSupportFragmentManager().getFragments().size() > 1) {
            getSupportFragmentManager().popBackStack();
        }
        finish();
    }

    public void onBackPressed() {
        if (!(this instanceof MainActivity) || System.currentTimeMillis() - this.d <= 2000) {
            j();
            return;
        }
        v.a((CharSequence) ad.a((int) R.string.press_again_to_exit), false);
        this.d = System.currentTimeMillis();
    }

    public <T> T c(int i2) {
        return findViewById(i2);
    }

    /* access modifiers changed from: protected */
    public void a(Class<?> cls) {
        startActivity(new Intent(this, cls));
    }

    /* access modifiers changed from: protected */
    public void a(Class<?> cls, int i2) {
        startActivityForResult(new Intent(this, cls), i2);
    }

    public void d(int i2) {
        if (this.l != null && i2 != -1) {
            this.l.a(i2);
        }
    }

    public void b(String str) {
        if (this.l != null) {
            this.l.a(str);
        }
    }

    public void e(int i2) {
        b(getString(i2));
    }

    public void a(boolean z, boolean z2, String str, int i2) {
        if (this.l == null) {
            this.l = new h(this);
        } else {
            this.l.dismiss();
            this.l = new h(this);
        }
        this.l.a(str);
        this.l.a(i2);
        this.l.setCanceledOnTouchOutside(z);
        this.l.setCancelable(z2);
        if (!this.l.isShowing()) {
            try {
                this.l.show();
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public void a(boolean z, boolean z2, int i2, int i3) {
        a(z, z2, getString(i2), i3);
    }

    public void k() {
        if (this.l != null && this.l.isShowing()) {
            try {
                this.l.dismiss();
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void l() {
    }

    /* access modifiers changed from: protected */
    public void m() {
        int i2 = w.b().getInt("user_last_login_time", 0);
        if (i2 == 0) {
            i2 = (int) (System.currentTimeMillis() / 1000);
            w.b().edit().putInt("user_last_login_time", i2).apply();
        }
        int i3 = w.b().getInt("user_expires_in", 0);
        if (i3 == 0) {
            i3 = 7776000;
            w.b().edit().putInt("user_expires_in", 7776000).apply();
        }
        if (((int) (System.currentTimeMillis() / 1000)) - i2 >= i3) {
            final d dVar = new d(this);
            dVar.a((int) R.string.login_time_out).c((int) R.string.account_login_info_had_time_out).a(false).b(false).c((int) R.string.common_select, (OnClickListener) new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    dVar.d();
                    BaseActivity.this.n();
                }
            }).b().c();
            return;
        }
        com.ifengyu.intercom.a.a.a(w.b().getString(AuthorizeActivityBase.KEY_USERID, ""), (b) new j() {
            public void a(Call call, Exception exc, int i) {
            }

            public void a(String str, int i) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.getInt("errno") == 3) {
                        BaseActivity.this.a(BaseActivity.this);
                    } else if ("success".equals(jSONObject.getString("msg"))) {
                        JSONObject jSONObject2 = jSONObject.getJSONObject(Const.PARAM_DATA);
                        w.b().edit().putString("nickname", jSONObject2.getString("nickname")).putString("avatar", jSONObject2.getString("avatar")).putString("gender", jSONObject2.getString("gender")).apply();
                    }
                } catch (JSONException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        });
    }

    public void n() {
        if (!TextUtils.isEmpty(p())) {
            com.ifengyu.intercom.node.a.d b2 = com.ifengyu.intercom.service.a.b();
            if (b2 != null) {
                b2.a(p());
            }
        }
        b(null, null);
        String K = w.K();
        if (!TextUtils.isEmpty(K)) {
            MiPushClient.unsetAlias(getApplicationContext(), K, null);
            MiPushClient.unsetUserAccount(getApplicationContext(), K, null);
        }
        w.g();
        w.i();
        if (MiTalkiApp.a().j()) {
            UserCache.instance().clear();
            IMLoginManager.instance().setKickout(false);
            IMLoginManager.instance().logOut();
        }
        startActivity(new Intent(this, LoginActivity.class));
        com.ifengyu.intercom.b.d.a();
    }

    /* access modifiers changed from: protected */
    public void a(BaseActivity baseActivity) {
        final d dVar = new d(baseActivity);
        dVar.a((int) R.string.offline_notification).c((int) R.string.account_login_on_another_phone).a(false).b(false).c((int) R.string.common_select, (OnClickListener) new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dVar.d();
                BaseActivity.this.n();
            }
        }).b().c();
    }

    public int checkSelfPermission(String str) {
        if (c.b()) {
            return super.checkSelfPermission(str);
        }
        return 0;
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        return c.b() && super.shouldShowRequestPermissionRationale(str);
    }

    public void a(a aVar) {
        this.n = aVar;
        com.ifengyu.intercom.ui.widget.dialog.a aVar2 = new com.ifengyu.intercom.ui.widget.dialog.a(this);
        aVar2.a((C0039a) new C0039a() {
            public void a() {
                BaseActivity.this.d();
            }

            public void b() {
                if (BaseActivity.this.n != null) {
                    BaseActivity.this.n.c();
                }
            }
        });
        aVar2.show();
    }

    /* access modifiers changed from: private */
    public void d() {
        a(false, false, (int) R.string.dialog_activating, (int) R.drawable.load_spinner);
        ad.a(this.p, 5000);
        switch (w.ad()) {
            case 1:
                f.a().c();
                break;
            case 4:
                ab.b();
                break;
            case 5:
                aa.b();
                break;
        }
        this.m = true;
    }

    public void b(String str, String str2) {
        w.m(str);
        w.n(str2);
    }

    public String o() {
        return w.ae();
    }

    public String p() {
        return w.af();
    }
}
