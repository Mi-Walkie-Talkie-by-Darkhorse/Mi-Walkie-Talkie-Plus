package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.FileProvider;
import android.support.v4.os.EnvironmentCompat;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.a.b.j;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.c;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.f;
import com.ifengyu.intercom.ui.widget.dialog.v.a;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import com.yalantis.ucrop.a.C0025a;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import okhttp3.Call;
import okhttp3.Request;
import pub.devrel.easypermissions.EasyPermissions;
import pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks;

public class MyInfoSettingActivity extends BaseActivity implements OnClickListener, a, PermissionCallbacks {
    private TextView a;
    /* access modifiers changed from: private */
    public TextView b;
    private CirclrImageView c;
    private String d = l.a;
    /* access modifiers changed from: private */
    public boolean q;
    /* access modifiers changed from: private */
    public boolean r;
    private String s;
    private SharedPreferences t;
    /* access modifiers changed from: private */
    public TextView u;
    private TextView v;
    private TextView w;
    /* access modifiers changed from: private */
    public Uri x;
    private final String y = "android.permission.CAMERA";
    private final int z = 10;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_my_info_setting);
        this.t = MiTalkiApp.a().getSharedPreferences("sp_user", 0);
        c();
        d();
    }

    private void c() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.s = extras.getString("setting_my_name");
        }
    }

    private void d() {
        c_();
        this.a = (TextView) c(R.id.title_bar_title);
        this.c = (CirclrImageView) c(R.id.edit_my_portrait);
        this.b = (TextView) findViewById(R.id.set_my_name_tv);
        this.b.setText(this.s);
        this.u = (TextView) findViewById(R.id.set_my_sex_tv);
        String N = w.N();
        if (N == null) {
            this.u.setText(getString(R.string.setting_user_info_have_not_set));
        } else if (N.equals("null") || N.equals(EnvironmentCompat.MEDIA_UNKNOWN) || N.length() == 0) {
            this.u.setText(getString(R.string.setting_user_info_have_not_set));
        } else {
            this.u.setText(N.equals("male") ? getString(R.string.setting_user_info_gender_male) : getString(R.string.setting_user_info_gender_female));
        }
        this.v = (TextView) findViewById(R.id.set_my_phone_tv);
        String O = w.O();
        if (O.equals("null") || O.length() == 0) {
            this.v.setText(getString(R.string.setting_user_info_have_not_set));
        } else {
            this.v.setText(O);
        }
        this.w = (TextView) findViewById(R.id.set_my_email_tv);
        String P = w.P();
        if (P.equals("null") || P.length() == 0) {
            this.w.setText(getString(R.string.setting_user_info_have_not_set));
        } else if (P.length() > 22) {
            this.w.setText(P.substring(0, 22) + "...");
        } else {
            this.w.setText(P);
        }
        ImageLoader.getInstance().displayImage(this.t.getString("avatar", ""), (ImageView) this.c, new Builder().showImageForEmptyUri((int) R.drawable.my_head_default).showImageOnFail((int) R.drawable.my_head_default).showImageOnLoading((int) R.drawable.my_head_default).cacheInMemory(true).cacheOnDisk(true).build());
        this.a.setText(getText(R.string.profile));
        this.c.setOnClickListener(this);
        findViewById(R.id.set_my_name).setOnClickListener(this);
        findViewById(R.id.set_my_sex).setOnClickListener(this);
        findViewById(R.id.set_my_phone).setOnClickListener(this);
        findViewById(R.id.set_my_email).setOnClickListener(this);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "MyInfoSettingActivity");
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.edit_my_portrait /*2131755271*/:
                f();
                return;
            case R.id.set_my_name /*2131755272*/:
                this.r = true;
                Intent intent = new Intent(this, SetMyOtherInfoActivity.class);
                intent.putExtra("setting_what", "setting_my_name");
                startActivityForResult(intent, 11);
                return;
            case R.id.set_my_sex /*2131755274*/:
                e();
                return;
            case R.id.set_my_phone /*2131755276*/:
                Intent intent2 = new Intent(this, SetMyOtherInfoActivity.class);
                intent2.putExtra("setting_what", "setting_my_phone");
                startActivityForResult(intent2, 12);
                return;
            case R.id.set_my_email /*2131755278*/:
                Intent intent3 = new Intent(this, SetMyOtherInfoActivity.class);
                intent3.putExtra("setting_what", "setting_my_email");
                startActivityForResult(intent3, 13);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void c_() {
        this.g = (ImageView) c(R.id.title_bar_left);
        this.g.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.putExtra("setting_my_name", MyInfoSettingActivity.this.b.getText());
                intent.putExtra("setting_had_modify_name", MyInfoSettingActivity.this.r);
                intent.putExtra("setting_had_modify_portrait", MyInfoSettingActivity.this.q);
                intent.setData(MyInfoSettingActivity.this.x);
                MyInfoSettingActivity.this.setResult(1, intent);
                MyInfoSettingActivity.this.finish();
            }
        });
    }

    public void onBackPressed() {
        Intent intent = new Intent();
        intent.putExtra("setting_my_name", this.b.getText());
        intent.putExtra("setting_had_modify_name", this.r);
        intent.putExtra("setting_had_modify_portrait", this.q);
        intent.setData(this.x);
        setResult(1, intent);
        super.onBackPressed();
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri fromFile;
        if (i2 == -1) {
            switch (i) {
                case 1:
                    File file = new File(getExternalCacheDir(), "portrait.jpg");
                    if (!file.exists()) {
                        v.a((CharSequence) getString(R.string.file_not_found), true);
                        return;
                    }
                    if (c.c()) {
                        fromFile = FileProvider.getUriForFile(this, getApplicationContext().getPackageName() + ".provider", file);
                    } else {
                        fromFile = Uri.fromFile(file);
                    }
                    a(fromFile);
                    return;
                case 2:
                    if (intent != null) {
                        a(new File(getExternalCacheDir(), "portrait.jpg"));
                        return;
                    }
                    return;
                case 8:
                    if (intent != null) {
                        Uri data = intent.getData();
                        if (data != null) {
                            a(data);
                            return;
                        } else {
                            v.a((CharSequence) ad.a((int) R.string.toast_cannot_retrieve_selected_image), true);
                            return;
                        }
                    } else {
                        return;
                    }
                case 11:
                    this.b.setText(w.M());
                    return;
                case 12:
                    String O = w.O();
                    if (O == null || O.equals("null") || O.length() == 0) {
                        this.v.setText(getString(R.string.setting_user_info_have_not_set));
                        return;
                    } else {
                        this.v.setText(O);
                        return;
                    }
                case 13:
                    String P = w.P();
                    if (P == null || P.equals("null") || P.length() == 0) {
                        this.w.setText(getString(R.string.setting_user_info_have_not_set));
                        return;
                    } else if (P.length() > 22) {
                        this.w.setText(P.substring(0, 22) + "...");
                        return;
                    } else {
                        this.w.setText(P);
                        return;
                    }
                case 69:
                    a(intent);
                    return;
                default:
                    return;
            }
        }
    }

    private void a(Intent intent) {
        if (intent != null) {
            this.x = com.yalantis.ucrop.a.a(intent);
            try {
                if (this.x != null) {
                    a(new File(new URI(this.x.toString())));
                }
            } catch (URISyntaxException e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
    }

    private void a(File file) {
        com.ifengyu.intercom.a.a.a("portrait", file, (b) new j() {
            public void a(Request request, int i) {
                MyInfoSettingActivity.this.a(false, false, (int) R.string.dialog_uploading, (int) R.drawable.load_spinner);
            }

            public void a(Call call, Exception exc, int i) {
                MyInfoSettingActivity.this.q = false;
                MyInfoSettingActivity.this.a(false);
            }

            public void a(String str, int i) {
                MyInfoSettingActivity.this.a(com.ifengyu.intercom.network.c.a(str));
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(boolean z2) {
        int i;
        if (z2) {
            this.q = true;
            if (this.x != null) {
                this.c.setImageBitmap(ad.a(this.x));
            }
            i = 500;
            e(R.string.set_success);
            d(R.drawable.mine_icon_win);
        } else {
            this.q = false;
            i = 1000;
            e(R.string.net_error_please_check);
            d(R.drawable.mine_icon_lose);
        }
        new Handler().postDelayed(new Runnable() {
            public void run() {
                MyInfoSettingActivity.this.k();
            }
        }, (long) i);
    }

    private void e() {
        int i = 0;
        if (this.u.getText().equals(getString(R.string.setting_user_info_gender_male))) {
            i = 1;
        } else if (this.u.getText().equals(getString(R.string.setting_user_info_gender_female))) {
            i = 2;
        }
        com.ifengyu.intercom.ui.widget.dialog.v vVar = new com.ifengyu.intercom.ui.widget.dialog.v(this, i);
        vVar.setClickListener(this);
        vVar.show();
    }

    public void a(final int i) {
        if (i == 0) {
            if (this.u.getText().equals(getString(R.string.setting_user_info_gender_male))) {
                return;
            }
        } else if (i == 1 && this.u.getText().equals(getString(R.string.setting_user_info_gender_female))) {
            return;
        }
        if (!v.a((Context) this)) {
            v.a((CharSequence) getString(R.string.net_error_please_check), false);
            return;
        }
        a(false, false, (int) R.string.dialog_please_wait, (int) R.drawable.load_spinner);
        com.ifengyu.intercom.a.a.a(4, null, null, null, i == 0 ? "male" : "female", new j() {
            public void a(Call call, Exception exc, int i) {
                MyInfoSettingActivity.this.e(R.string.net_error_please_check);
                MyInfoSettingActivity.this.d(R.drawable.mine_icon_lose);
                MiTalkiApp.n().postDelayed(new Runnable() {
                    public void run() {
                        MyInfoSettingActivity.this.k();
                    }
                }, 500);
            }

            public void a(String str, int i) {
                if (com.ifengyu.intercom.network.c.a(str)) {
                    MyInfoSettingActivity.this.e(R.string.set_success);
                    MyInfoSettingActivity.this.d(R.drawable.mine_icon_win);
                    w.h(i == 0 ? "male" : "female");
                    MiTalkiApp.n().postDelayed(new Runnable() {
                        public void run() {
                            MyInfoSettingActivity.this.k();
                            String N = w.N();
                            if (N == null) {
                                MyInfoSettingActivity.this.u.setText(MyInfoSettingActivity.this.getString(R.string.setting_user_info_have_not_set));
                            } else if (N.equals("null") || N.equals(EnvironmentCompat.MEDIA_UNKNOWN) || N.length() == 0) {
                                MyInfoSettingActivity.this.u.setText(MyInfoSettingActivity.this.getString(R.string.setting_user_info_have_not_set));
                            } else {
                                MyInfoSettingActivity.this.u.setText(N.equals("male") ? MyInfoSettingActivity.this.getString(R.string.setting_user_info_gender_male) : MyInfoSettingActivity.this.getString(R.string.setting_user_info_gender_female));
                            }
                        }
                    }, 500);
                    return;
                }
                MyInfoSettingActivity.this.e(R.string.net_error_please_check);
                MyInfoSettingActivity.this.d(R.drawable.mine_icon_lose);
                MiTalkiApp.n().postDelayed(new Runnable() {
                    public void run() {
                        MyInfoSettingActivity.this.k();
                    }
                }, 500);
            }
        });
    }

    private void f() {
        f fVar = new f(this);
        fVar.setOnclickListener(new f.a() {
            public void a() {
                if (EasyPermissions.hasPermissions(MyInfoSettingActivity.this, "android.permission.CAMERA")) {
                    MyInfoSettingActivity.this.q();
                    return;
                }
                EasyPermissions.requestPermissions((Activity) MyInfoSettingActivity.this, MyInfoSettingActivity.this.getString(R.string.please_allow_mi_ptt_get_camera_permission), 10, "android.permission.CAMERA");
            }

            public void b() {
                MyInfoSettingActivity.this.r();
            }
        });
        fVar.show();
    }

    /* access modifiers changed from: private */
    public void q() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        Uri fromFile = Uri.fromFile(new File(getExternalCacheDir(), "portrait.jpg"));
        if (c.c()) {
            fromFile = FileProvider.getUriForFile(this, getPackageName() + ".provider", new File(getExternalCacheDir(), "portrait.jpg"));
        }
        intent.putExtra("output", fromFile);
        startActivityForResult(intent, 1);
    }

    /* access modifiers changed from: private */
    public void r() {
        Intent intent = new Intent();
        intent.setType("image/*");
        intent.setAction("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        startActivityForResult(Intent.createChooser(intent, ad.a((int) R.string.label_select_picture)), 8);
    }

    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        EasyPermissions.onRequestPermissionsResult(i, strArr, iArr, this);
    }

    public void onPermissionsGranted(int i, List<String> list) {
        q();
    }

    public void onPermissionsDenied(int i, List<String> list) {
        v.a((CharSequence) getString(R.string.please_open_camera_permission), true);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    public void a(@NonNull Uri uri) {
        C0025a aVar = new C0025a();
        aVar.a(true);
        aVar.c(true);
        aVar.b(true);
        aVar.b(ContextCompat.getColor(getApplicationContext(), R.color.select_color));
        aVar.c(ContextCompat.getColor(getApplicationContext(), R.color.select_color));
        aVar.a(ContextCompat.getColor(getApplicationContext(), R.color.select_color));
        com.yalantis.ucrop.a.a(uri, Uri.fromFile(new File(getCacheDir(), "portrait.jpg"))).a(220, 220).a(aVar).a((Activity) this);
    }
}
