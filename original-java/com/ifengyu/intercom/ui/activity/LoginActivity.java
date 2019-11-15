package com.ifengyu.intercom.ui.activity;

import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.afollestad.materialdialogs.DialogAction;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.MaterialDialog.h;
import com.ifengyu.im.DB.sp.LoginSp;
import com.ifengyu.im.DB.sp.LoginSp.SpLoginIdentity;
import com.ifengyu.im.account.UserCache;
import com.ifengyu.im.account.UserInfo;
import com.ifengyu.im.imservice.event.LoginEvent;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.im.imservice.service.IMService;
import com.ifengyu.im.imservice.support.IMServiceConnector;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.e;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.n;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.u;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.b.y;
import com.ifengyu.intercom.bean.LoginResult;
import com.ifengyu.intercom.bean.User;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.view.CircleIndicator;
import com.ifengyu.intercom.wxapi.WXEntryActivity;
import com.xiaomi.account.openauth.XMAuthericationException;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import com.xiaomi.account.openauth.XiaomiOAuthResults;
import com.xiaomi.account.openauth.XiaomiOAuthorize;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import de.greenrobot.event.c;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Request;

public class LoginActivity extends BaseActivity {
    public static final int[] a = {R.drawable.icon_frequency_adjustment, R.drawable.icon_location_share, R.drawable.icon_map_download};
    public final String[] b = ad.b((int) R.array.guide_title);
    public final String[] c = ad.b((int) R.array.guide_description);
    y d = new y() {
        /* access modifiers changed from: protected */
        public void a(View view) {
            boolean z = true;
            switch (view.getId()) {
                case R.id.btn_login_xiaomi /*2131755245*/:
                    MiStatInterface.recordCountEvent("login_page", "xiaomiBtnClick");
                    if (!LoginActivity.this.v.isSelected()) {
                        v.a((CharSequence) LoginActivity.this.getString(R.string.please_read_user_agreement), false);
                        return;
                    } else if (v.a(LoginActivity.this.getApplicationContext())) {
                        LoginActivity.this.t = true;
                        LoginActivity.this.a(false, true, (int) R.string.logining, (int) R.drawable.load_spinner);
                        LoginActivity.this.a(false);
                        return;
                    } else {
                        v.a((CharSequence) ad.a((int) R.string.toast_please_check_the_network), false);
                        return;
                    }
                case R.id.btn_login_weixin /*2131755246*/:
                    MiStatInterface.recordCountEvent("login_page", "wechatBtnClick");
                    if (!LoginActivity.this.v.isSelected()) {
                        v.a((CharSequence) LoginActivity.this.getString(R.string.please_read_user_agreement), false);
                        return;
                    } else if (!v.a(LoginActivity.this.getApplicationContext())) {
                        v.a((CharSequence) ad.a((int) R.string.toast_please_check_the_network), false);
                        return;
                    } else if (!MiTalkiApp.a().h().isWXAppInstalled()) {
                        LoginActivity.this.a((Context) LoginActivity.this);
                        return;
                    } else {
                        LoginActivity.this.t = true;
                        LoginActivity.this.a(false, true, (int) R.string.logining, (int) R.drawable.load_spinner);
                        LoginActivity.this.d();
                        return;
                    }
                case R.id.select_user_protocol_iv /*2131755248*/:
                    ImageView a2 = LoginActivity.this.v;
                    if (LoginActivity.this.v.isSelected()) {
                        z = false;
                    }
                    a2.setSelected(z);
                    return;
                case R.id.user_agree /*2131755250*/:
                    LoginActivity.this.r();
                    return;
                case R.id.select_improve_plan_iv /*2131755251*/:
                    ImageView d = LoginActivity.this.w;
                    if (LoginActivity.this.w.isSelected()) {
                        z = false;
                    }
                    d.setSelected(z);
                    w.n(LoginActivity.this.w.isSelected());
                    return;
                case R.id.improve_plan_tv /*2131755253*/:
                    LoginActivity.this.a(UserImprovePlanActivity.class);
                    return;
                default:
                    return;
            }
        }
    };
    /* access modifiers changed from: private */
    public View[] q;
    /* access modifiers changed from: private */
    public Bundle r;
    private final b s = new b();
    /* access modifiers changed from: private */
    public boolean t;
    /* access modifiers changed from: private */
    public IMService u;
    /* access modifiers changed from: private */
    public ImageView v;
    /* access modifiers changed from: private */
    public ImageView w;
    /* access modifiers changed from: private */
    public IMServiceConnector x = new IMServiceConnector() {
        public void onServiceDisconnected() {
        }

        public void onIMServiceConnected() {
            logger.d("login#onIMServiceConnected", new Object[0]);
            LoginActivity.this.u = LoginActivity.this.x.getIMService();
            try {
                if (LoginActivity.this.u != null) {
                    IMLoginManager loginManager = LoginActivity.this.u.getLoginManager();
                    LoginSp loginSp = LoginActivity.this.u.getLoginSp();
                    if (!(loginManager == null || loginSp == null)) {
                        SpLoginIdentity loginIdentity = loginSp.getLoginIdentity();
                        if (loginIdentity != null && !TextUtils.isEmpty(loginIdentity.getPwd())) {
                            LoginActivity.this.a(loginIdentity);
                            return;
                        }
                    }
                }
                LoginActivity.this.c();
            } catch (Exception e) {
                logger.w("loadIdentity failed", new Object[0]);
                LoginActivity.this.c();
            }
        }
    };

    private class a extends PagerAdapter {
        private a() {
        }

        public int getCount() {
            return LoginActivity.this.q.length;
        }

        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        public Object instantiateItem(ViewGroup viewGroup, int i) {
            viewGroup.addView(LoginActivity.this.q[i]);
            return LoginActivity.this.q[i];
        }

        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }
    }

    private class b extends BroadcastReceiver {
        private b() {
        }

        public void onReceive(Context context, Intent intent) {
            if ("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN".equals(intent.getAction())) {
                switch (intent.getIntExtra("login_weixin_resp_code", -2)) {
                    case -4:
                        v.a((CharSequence) ad.a((int) R.string.weixin_auth_denied), false);
                        return;
                    case -2:
                        v.a((CharSequence) ad.a((int) R.string.cancel_login_weixin), false);
                        return;
                    case 0:
                        String stringExtra = intent.getStringExtra("login_weixin_code");
                        if (!TextUtils.isEmpty(stringExtra)) {
                            LoginActivity.this.a(2, stringExtra);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void c() {
    }

    /* access modifiers changed from: private */
    public void a(SpLoginIdentity spLoginIdentity) {
        this.u.getLoginManager().login(spLoginIdentity);
    }

    public void onEventMainThread(LoginEvent loginEvent) {
        switch (loginEvent) {
            case LOCAL_LOGIN_SUCCESS:
            case LOGIN_OK:
                a(loginEvent);
                return;
            case LOGIN_AUTH_FAILED:
            case LOGIN_INNER_FAILED:
                q();
                return;
            default:
                return;
        }
    }

    private void a(LoginEvent loginEvent) {
        w.l(true);
        f();
    }

    /* access modifiers changed from: protected */
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_login);
        s();
        a(Integer.valueOf(R.id.btn_login_xiaomi), Integer.valueOf(R.id.btn_login_weixin));
        this.r = getIntent().getExtras();
        LocalBroadcastManager.getInstance(this).registerReceiver(this.s, new IntentFilter("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN"));
        c.a().a((Object) this);
        if (MiTalkiApp.a().j()) {
            this.x.connect(this);
        }
        w.l(false);
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.r = getIntent().getExtras();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "LoginActivity");
        this.w.setSelected(w.ab());
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        if (this.t) {
            this.t = false;
            k();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.s);
        c.a().d(this);
        if (MiTalkiApp.a().j()) {
            this.x.disconnect(this);
        }
    }

    /* access modifiers changed from: private */
    public void d() {
        WXEntryActivity.a(((MiTalkiApp) getApplication()).h());
    }

    /* access modifiers changed from: private */
    public void a(boolean z) {
        a(new XiaomiOAuthorize().setAppId(2882303761517508819L).setRedirectUrl("http://www.ifengyu.com").setScope(e()).setKeepCookies(true).setCustomizedAuthorizeActivityClass(CustomizedAuthorizedActivity.class).startGetOAuthCode(this));
    }

    private int[] e() {
        return new int[]{3, 1};
    }

    /* access modifiers changed from: private */
    public void a(final int i, String str) {
        if (!TextUtils.isEmpty(str)) {
            com.ifengyu.intercom.a.a.a(i, str, (com.ifengyu.intercom.a.b.b) new e() {
                public void a(Request request, int i) {
                    super.a(request, i);
                    LoginActivity.this.a(false, false, (int) R.string.logining, (int) R.drawable.load_spinner);
                }

                public void a(Call call, Exception exc, int i) {
                    s.e("LoginActivity", "onError:" + exc.getMessage());
                    LoginActivity.this.q();
                }

                public void a(LoginResult loginResult, int i) {
                    if (loginResult == null) {
                        LoginActivity.this.q();
                        return;
                    }
                    User user = loginResult.data;
                    UserInfo userInfo = new UserInfo();
                    userInfo.userId = user.userid;
                    userInfo.nickname = user.nickname;
                    userInfo.avatar = user.avatar;
                    userInfo.phone = user.phone;
                    userInfo.phone_isBound = 0;
                    userInfo.email = user.email;
                    userInfo.gender = user.gender;
                    userInfo.key = user.key;
                    userInfo.expires_in = (long) user.expires_in;
                    userInfo.is_first_login = 0;
                    userInfo.sign_up_with_phone = 0;
                    if (i == 1) {
                        userInfo.loginType = UserInfo.TYPE_XIAOMI;
                    } else {
                        userInfo.loginType = "wechat";
                    }
                    UserCache.instance().saveUserInfo(userInfo);
                    if (MiTalkiApp.a().j()) {
                        LoginActivity.this.u.getLoginManager().login("", w.L());
                    } else {
                        LoginActivity.this.f();
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void f() {
        MiPushClient.setAlias(getApplicationContext(), w.K(), null);
        MiPushClient.setUserAccount(getApplicationContext(), w.K(), null);
        w.b().edit().putInt("user_last_login_time", (int) (System.currentTimeMillis() / 1000)).apply();
        e(R.string.login_success);
        d(R.drawable.mine_icon_win);
        ad.a((Runnable) new Runnable() {
            public void run() {
                LoginActivity.this.k();
                if (LoginActivity.this.r == null || TextUtils.isEmpty(LoginActivity.this.r.getString("url"))) {
                    Intent intent = new Intent(LoginActivity.this, ConnectDeviceActivity.class);
                    intent.setAction("com.ifengyu.intercom.FROM_LOGIN");
                    LoginActivity.this.startActivity(intent);
                    LoginActivity.this.finish();
                    return;
                }
                Intent intent2 = new Intent(LoginActivity.this, WebViewActivity.class);
                intent2.setAction("com.ifengyu.intercom.action.MESSAGE_CENTER");
                intent2.putExtras(LoginActivity.this.r);
                LoginActivity.this.startActivities(new Intent[]{new Intent(LoginActivity.this, MainActivity.class), intent2});
                LoginActivity.this.finish();
            }
        }, 500);
        new Thread(new Runnable() {
            public void run() {
                n.a(MiTalkiApp.a(), "map_style.data", Environment.getExternalStorageDirectory() + "/" + "mitalki/map/style", "map_style.data");
            }
        }).start();
    }

    /* access modifiers changed from: private */
    public void q() {
        e(R.string.network_exception);
        d(R.drawable.mine_icon_lose);
        ad.a((Runnable) new Runnable() {
            public void run() {
                LoginActivity.this.k();
            }
        }, 500);
    }

    /* access modifiers changed from: private */
    public void a(Context context) {
        new com.afollestad.materialdialogs.MaterialDialog.a(context).a((int) R.string.do_you_confirm_download_wechat).c((int) R.color.black80).g(R.string.common_cancel).f(R.color.material_dialog_button).d((int) R.string.common_download).e(R.color.material_dialog_button).a((h) new h() {
            public void a(@NonNull MaterialDialog materialDialog, @NonNull DialogAction dialogAction) {
                u.a(LoginActivity.this);
            }
        }).c();
    }

    /* access modifiers changed from: private */
    public void r() {
        Intent intent = new Intent(this, WebViewActivity.class);
        intent.setAction("com.ifengyu.intercom.action.AGREEMENT_AND_PRIVACY");
        startActivity(intent);
    }

    private void a(final XiaomiOAuthFuture<XiaomiOAuthResults> xiaomiOAuthFuture) {
        com.ifengyu.intercom.network.a.e.b().execute(new Runnable() {
            Exception a;

            public void run() {
                XiaomiOAuthResults xiaomiOAuthResults;
                try {
                    xiaomiOAuthResults = (XiaomiOAuthResults) xiaomiOAuthFuture.getResult();
                } catch (OperationCanceledException | XMAuthericationException | IOException e) {
                    this.a = e;
                    xiaomiOAuthResults = null;
                }
                LoginActivity.this.a(xiaomiOAuthResults, this.a);
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(final XiaomiOAuthResults xiaomiOAuthResults, final Exception exc) {
        ad.a((Runnable) new Runnable() {
            public void run() {
                if (xiaomiOAuthResults != null) {
                    if (xiaomiOAuthResults.hasError()) {
                        s.e("LoginActivity", "hasError:" + xiaomiOAuthResults.toString());
                        if (xiaomiOAuthResults.getErrorCode() == -1002) {
                            LoginActivity.this.a(false);
                            return;
                        }
                        return;
                    }
                    String code = xiaomiOAuthResults.getCode();
                    w.b().edit().putString("xiaomi_code", code).apply();
                    LoginActivity.this.a(1, code);
                } else if (exc != null) {
                    s.e("LoginActivity", exc.toString());
                    if (exc instanceof IOException) {
                        v.a((CharSequence) ad.a((int) R.string.xiaomi_auth_denied), false);
                    } else if (exc instanceof XMAuthericationException) {
                        LoginActivity.this.a(false);
                    } else if (exc instanceof OperationCanceledException) {
                        v.a((CharSequence) ad.a((int) R.string.cancel_login_xiaomi), false);
                    }
                } else {
                    s.e("LoginActivity", "done and ... get no result :(");
                }
            }
        });
    }

    private void s() {
        this.q = new View[a.length];
        ViewPager viewPager = (ViewPager) findViewById(R.id.guide_pager);
        TextView textView = (TextView) findViewById(R.id.user_agree);
        this.v = (ImageView) findViewById(R.id.select_user_protocol_iv);
        this.v.setSelected(true);
        this.v.setOnClickListener(this.d);
        TextView textView2 = (TextView) findViewById(R.id.top_i_agree);
        TextView textView3 = (TextView) findViewById(R.id.i_had_read);
        TextView textView4 = (TextView) findViewById(R.id.i_well_join);
        if (v.a()) {
            textView2.setVisibility(0);
            textView3.setVisibility(8);
            textView4.setVisibility(8);
        } else {
            textView2.setVisibility(8);
            textView3.setVisibility(0);
            textView4.setVisibility(0);
        }
        TextView textView5 = (TextView) findViewById(R.id.improve_plan_tv);
        this.w = (ImageView) findViewById(R.id.select_improve_plan_iv);
        this.w.setSelected(true);
        this.w.setOnClickListener(this.d);
        for (int i = 0; i < a.length; i++) {
            View inflate = LayoutInflater.from(this).inflate(R.layout.login_navigation_item, viewPager, false);
            TextView textView6 = (TextView) inflate.findViewById(R.id.tv_content_description);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.login_img);
            ((TextView) inflate.findViewById(R.id.login_pager_title)).setText(this.b[i]);
            textView6.setText(this.c[i]);
            imageView.setImageResource(a[i]);
            this.q[i] = inflate;
        }
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(ViewCompat.MEASURED_STATE_MASK);
        UnderlineSpan underlineSpan = new UnderlineSpan();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getResources().getString(R.string.user_protocol));
        spannableStringBuilder.setSpan(foregroundColorSpan, 0, spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(underlineSpan, 0, spannableStringBuilder.length(), 33);
        textView.setText(spannableStringBuilder);
        textView.setOnClickListener(this.d);
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(getResources().getString(R.string.user_improve_plan));
        spannableStringBuilder2.setSpan(foregroundColorSpan, 0, spannableStringBuilder2.length(), 33);
        spannableStringBuilder2.setSpan(underlineSpan, 0, spannableStringBuilder2.length(), 33);
        textView5.setText(spannableStringBuilder2);
        textView5.setOnClickListener(this.d);
        viewPager.setAdapter(new a());
        ((CircleIndicator) findViewById(R.id.indicator)).setViewPager(viewPager);
    }

    /* access modifiers changed from: protected */
    public void a(Object... objArr) {
        for (View view : objArr) {
            if (view instanceof View) {
                view.setOnClickListener(this.d);
            } else if (view instanceof Integer) {
                findViewById(((Integer) view).intValue()).setOnClickListener(this.d);
            }
        }
    }
}
