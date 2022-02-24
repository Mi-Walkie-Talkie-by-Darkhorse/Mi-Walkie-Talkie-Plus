package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import androidx.appcompat.app.b;
import androidx.core.content.FileProvider;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.g.d.l;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.i;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.l0;
import com.ifengyu.intercom.lite.LiteSetupPasswordActivity;
import com.ifengyu.intercom.lite.dialog.list.d;
import com.ifengyu.intercom.lite.enums.LoginTypeEnum;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;
import com.ifengyu.library.a.g;
import com.ifengyu.library.a.m;
import com.ifengyu.library.base.BaseApp;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.qmuiteam.qmui.layout.QMUIConstraintLayout;
import com.qmuiteam.qmui.widget.dialog.b;
import com.xiaomi.infra.galaxy.fds.Common;
import com.yalantis.ucrop.b;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import okhttp3.Call;
import okhttp3.Request;
import pub.devrel.easypermissions.EasyPermissions;

/* loaded from: classes2.dex */
public class MyInfoSettingActivity extends BaseActivity implements EasyPermissions.PermissionCallbacks {
    private Uri A;
    private final String B = "android.permission.CAMERA";
    private final String C = "android.permission.WRITE_EXTERNAL_STORAGE";
    @BindView(R.id.item_password)
    QMUIConstraintLayout mItemPassword;
    @BindView(R.id.iv_phone_arrow)
    ImageView mIvPhoneArrow;
    @BindView(R.id.tv_id_value)
    TextView mTvIdValue;
    private TextView q;
    private TextView r;
    private CirclrImageView s;
    private boolean t;
    private boolean u;
    private String v;
    private SharedPreferences w;
    private TextView x;
    private TextView y;
    private TextView z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent();
            intent.putExtra("setting_my_name", MyInfoSettingActivity.this.r.getText());
            intent.putExtra("setting_had_modify_name", MyInfoSettingActivity.this.u);
            intent.putExtra("setting_had_modify_portrait", MyInfoSettingActivity.this.t);
            intent.setData(MyInfoSettingActivity.this.A);
            MyInfoSettingActivity.this.setResult(1, intent);
            MyInfoSettingActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends l {
        b() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Request request, int i) {
            MyInfoSettingActivity.this.a(false, false, R.string.dialog_uploading, R.drawable.load_spinner);
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            MyInfoSettingActivity.this.t = false;
            MyInfoSettingActivity.this.b(false);
        }

        public void a(String str, int i) {
            MyInfoSettingActivity.this.b(com.ifengyu.intercom.network.c.a(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyInfoSettingActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements d.c {
        d() {
        }

        @Override // com.ifengyu.intercom.lite.dialog.list.d.c
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, View view, int i, String str) {
            bVar.dismiss();
            MyInfoSettingActivity.this.e(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e extends l {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f6081b;

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MyInfoSettingActivity.this.j();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int i;
                MyInfoSettingActivity myInfoSettingActivity;
                MyInfoSettingActivity.this.j();
                String M = d0.M();
                if (M == null) {
                    MyInfoSettingActivity.this.x.setText(MyInfoSettingActivity.this.getString(R.string.setting_user_info_have_not_set));
                } else if (M.equals("null") || M.equals("unknown") || M.length() == 0) {
                    MyInfoSettingActivity.this.x.setText(MyInfoSettingActivity.this.getString(R.string.setting_user_info_have_not_set));
                } else {
                    TextView textView = MyInfoSettingActivity.this.x;
                    if (M.equals("male")) {
                        myInfoSettingActivity = MyInfoSettingActivity.this;
                        i = R.string.setting_user_info_gender_male;
                    } else {
                        myInfoSettingActivity = MyInfoSettingActivity.this;
                        i = R.string.setting_user_info_gender_female;
                    }
                    textView.setText(myInfoSettingActivity.getString(i));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MyInfoSettingActivity.this.j();
            }
        }

        e(int i) {
            this.f6081b = i;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            MyInfoSettingActivity.this.c(R.string.net_error_please_check);
            MyInfoSettingActivity.this.b(R.drawable.mine_icon_lose);
            BaseApp.a().postDelayed(new a(), 500L);
        }

        public void a(String str, int i) {
            if (com.ifengyu.intercom.network.c.a(str)) {
                MyInfoSettingActivity.this.c(R.string.set_success);
                MyInfoSettingActivity.this.b(R.drawable.mine_icon_win);
                d0.h(this.f6081b == 0 ? "male" : "female");
                BaseApp.a().postDelayed(new b(), 500L);
                return;
            }
            MyInfoSettingActivity.this.c(R.string.net_error_please_check);
            MyInfoSettingActivity.this.b(R.drawable.mine_icon_lose);
            BaseApp.a().postDelayed(new c(), 500L);
        }
    }

    private void A() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        Uri fromFile = Uri.fromFile(new File(getExternalCacheDir(), "portrait.jpg"));
        if (i.c()) {
            fromFile = FileProvider.getUriForFile(this, getPackageName() + ".provider", new File(getExternalCacheDir(), "portrait.jpg"));
        }
        intent.putExtra("output", fromFile);
        startActivityForResult(intent, 1);
    }

    private void B() {
        Intent intent = new Intent();
        intent.setType("image/*");
        intent.setAction("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        startActivityForResult(Intent.createChooser(intent, k0.c(R.string.label_select_picture)), 8);
    }

    private void C() {
        int i = 0;
        if (!this.x.getText().equals(getString(R.string.setting_user_info_gender_male)) && this.x.getText().equals(getString(R.string.setting_user_info_gender_female))) {
            i = 1;
        }
        com.ifengyu.intercom.lite.dialog.list.d dVar = new com.ifengyu.intercom.lite.dialog.list.d(this);
        dVar.d(i);
        dVar.c(R.string.setting_my_info_sex);
        com.ifengyu.intercom.lite.dialog.list.d dVar2 = dVar;
        dVar2.d(true);
        dVar2.b(k0.c(R.string.setting_user_info_gender_male));
        dVar2.b(k0.c(R.string.setting_user_info_gender_female));
        dVar2.a(new d());
        dVar2.a(R.style.DialogTheme2).show();
    }

    private void D() {
        com.ifengyu.intercom.lite.dialog.list.d dVar = new com.ifengyu.intercom.lite.dialog.list.d(this);
        dVar.b(k0.c(R.string.upload_photo));
        dVar.b(k0.c(R.string.upload_local));
        dVar.c(true);
        dVar.a(new d.c() { // from class: com.ifengyu.intercom.ui.activity.l
            @Override // com.ifengyu.intercom.lite.dialog.list.d.c
            public final void a(b bVar, View view, int i, String str) {
                MyInfoSettingActivity.this.a(bVar, view, i, str);
            }
        });
        dVar.a(R.style.DialogTheme2).show();
    }

    private void f(@StringRes int i) {
        new b.a(this).setCancelable(false).setMessage(getString(i)).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.go_setting, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.m
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                MyInfoSettingActivity.this.c(dialogInterface, i2);
            }
        }).create().show();
    }

    private void w() {
        new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.before_apply_camera_permissions).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.go_apply, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.k
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MyInfoSettingActivity.this.a(dialogInterface, i);
            }
        }).create().show();
    }

    private void x() {
        new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.before_apply_storage_permission).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.go_apply, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.n
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MyInfoSettingActivity.this.b(dialogInterface, i);
            }
        }).create().show();
    }

    private void y() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.v = extras.getString("setting_my_name");
        }
    }

    private void z() {
        r();
        this.q = (TextView) a(R.id.title_bar_title);
        this.s = (CirclrImageView) a(R.id.edit_my_portrait);
        TextView textView = (TextView) findViewById(R.id.set_my_name_tv);
        this.r = textView;
        textView.setText(this.v);
        this.x = (TextView) findViewById(R.id.set_my_sex_tv);
        String M = d0.M();
        if (M == null) {
            this.x.setText(getString(R.string.setting_user_info_have_not_set));
        } else if (M.equals("null") || M.equals("unknown") || M.length() == 0) {
            this.x.setText(getString(R.string.setting_user_info_have_not_set));
        } else {
            this.x.setText(getString(M.equals("male") ? R.string.setting_user_info_gender_male : R.string.setting_user_info_gender_female));
        }
        this.y = (TextView) findViewById(R.id.set_my_phone_tv);
        String Q = d0.Q();
        if (Q.equals("null") || Q.length() == 0) {
            this.y.setText(getString(R.string.setting_user_info_have_not_set));
        } else {
            this.y.setText(Q);
        }
        this.z = (TextView) findViewById(R.id.set_my_email_tv);
        String L = d0.L();
        if (L.equals("null") || L.length() == 0) {
            this.z.setText(getString(R.string.setting_user_info_have_not_set));
        } else if (L.length() > 22) {
            TextView textView2 = this.z;
            textView2.setText(L.substring(0, 22) + "...");
        } else {
            this.z.setText(L);
        }
        ImageLoader.getInstance().displayImage(this.w.getString("avatar", ""), this.s, new DisplayImageOptions.Builder().showImageForEmptyUri(R.drawable.my_head_default).showImageOnFail(R.drawable.my_head_default).showImageOnLoading(R.drawable.my_head_default).cacheInMemory(true).cacheOnDisk(true).build());
        this.q.setText(getText(R.string.profile));
        this.mTvIdValue.setText(d0.N());
        if (d0.R().getInt("user_login_type", 0) == LoginTypeEnum.PHONE.a().intValue()) {
            this.mItemPassword.setVisibility(0);
            this.mIvPhoneArrow.setVisibility(8);
            return;
        }
        this.mItemPassword.setVisibility(8);
        this.mIvPhoneArrow.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 != -1) {
            return;
        }
        if (i == 1) {
            File file = new File(getExternalCacheDir(), "portrait.jpg");
            if (!file.exists()) {
                c0.a((CharSequence) getString(R.string.file_not_found), true);
            } else {
                a(com.ifengyu.library.a.e.a(this, file));
            }
        } else if (i != 8) {
            if (i != 69) {
                switch (i) {
                    case 11:
                        this.r.setText(d0.P());
                        return;
                    case 12:
                        String Q = d0.Q();
                        if (Q == null || Q.equals("null") || Q.length() == 0) {
                            this.y.setText(getString(R.string.setting_user_info_have_not_set));
                            return;
                        } else {
                            this.y.setText(Q);
                            return;
                        }
                    case 13:
                        String L = d0.L();
                        if (L == null || L.equals("null") || L.length() == 0) {
                            this.z.setText(getString(R.string.setting_user_info_have_not_set));
                            return;
                        } else if (L.length() > 22) {
                            TextView textView = this.z;
                            textView.setText(L.substring(0, 22) + "...");
                            return;
                        } else {
                            this.z.setText(L);
                            return;
                        }
                    default:
                        return;
                }
            } else {
                a(intent);
            }
        } else if (intent == null) {
            c0.a((CharSequence) k0.c(R.string.toast_cannot_retrieve_selected_image), true);
        } else {
            Uri data = intent.getData();
            if (data == null) {
                c0.a((CharSequence) k0.c(R.string.toast_cannot_retrieve_selected_image), true);
            } else {
                a(data);
            }
        }
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Intent intent = new Intent();
        intent.putExtra("setting_my_name", this.r.getText());
        intent.putExtra("setting_had_modify_name", this.u);
        intent.putExtra("setting_had_modify_portrait", this.t);
        intent.setData(this.A);
        setResult(1, intent);
        super.onBackPressed();
    }

    @OnClick({R.id.item_avatar, R.id.set_my_name, R.id.set_my_sex, R.id.set_my_phone, R.id.set_my_email, R.id.item_password, R.id.item_id})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.item_avatar /* 2131296741 */:
                D();
                return;
            case R.id.item_password /* 2131296755 */:
                LiteSetupPasswordActivity.start(this);
                return;
            case R.id.set_my_email /* 2131297167 */:
                Intent intent = new Intent(this, SetMyOtherInfoActivity.class);
                intent.putExtra("setting_what", "setting_my_email");
                startActivityForResult(intent, 13);
                return;
            case R.id.set_my_name /* 2131297169 */:
                this.u = true;
                Intent intent2 = new Intent(this, SetMyOtherInfoActivity.class);
                intent2.putExtra("setting_what", "setting_my_name");
                startActivityForResult(intent2, 11);
                return;
            case R.id.set_my_phone /* 2131297171 */:
                if (d0.R().getInt("user_login_type", 0) != LoginTypeEnum.PHONE.a().intValue()) {
                    Intent intent3 = new Intent(this, SetMyOtherInfoActivity.class);
                    intent3.putExtra("setting_what", "setting_my_phone");
                    startActivityForResult(intent3, 12);
                    return;
                }
                return;
            case R.id.set_my_sex /* 2131297173 */:
                C();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_my_info_setting);
        ButterKnife.bind(this);
        this.w = MiTalkiApp.b().getSharedPreferences("sp_user", 0);
        y();
        z();
    }

    @Override // pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsDenied(int i, List<String> list) {
        l0.a(list);
        Iterator<String> it = list.iterator();
        if (it.hasNext()) {
            String next = it.next();
            if ("android.permission.CAMERA".equals(next)) {
                f(R.string.after_refuse_camera_permissions);
            } else if ("android.permission.WRITE_EXTERNAL_STORAGE".equals(next)) {
                f(R.string.after_refuse_storage_permission);
            }
        }
    }

    @Override // pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsGranted(int i, List<String> list) {
        l0.b(list);
        if (i == 10) {
            A();
        } else if (i == 20) {
            B();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        EasyPermissions.onRequestPermissionsResult(i, strArr, iArr, this);
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity
    protected void r() {
        ImageView imageView = (ImageView) a(R.id.title_bar_left);
        this.f6372c = imageView;
        imageView.setOnClickListener(new a());
    }

    public /* synthetic */ void c(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", m.e(), null));
        intent.setFlags(268435456);
        startActivity(intent);
    }

    public void e(int i) {
        if (i == 0) {
            if (this.x.getText().equals(getString(R.string.setting_user_info_gender_male))) {
                return;
            }
        } else if (i == 1 && this.x.getText().equals(getString(R.string.setting_user_info_gender_female))) {
            return;
        }
        if (!c0.b(this)) {
            c0.a((CharSequence) getString(R.string.net_error_please_check), false);
            return;
        }
        a(false, false, R.string.dialog_please_wait, R.drawable.load_spinner);
        com.ifengyu.intercom.g.a.a(4, null, null, null, i == 0 ? "male" : "female", new e(i));
    }

    private void a(Intent intent) {
        if (intent != null) {
            Uri a2 = com.yalantis.ucrop.b.a(intent);
            this.A = a2;
            if (a2 == null) {
                g.b("MyInfoSettingActivity", "handleCropResult#File uri is null.");
            } else {
                a(new File(this.A.getPath()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        int i;
        if (z) {
            this.t = true;
            Uri uri = this.A;
            if (uri != null) {
                this.s.setImageBitmap(k0.a(uri));
            }
            i = 500;
            c(R.string.set_success);
            b(R.drawable.mine_icon_win);
        } else {
            this.t = false;
            i = 1000;
            c(R.string.net_error_please_check);
            b(R.drawable.mine_icon_lose);
        }
        new Handler().postDelayed(new c(), i);
    }

    private void a(File file) {
        com.ifengyu.intercom.g.a.a("portrait", file, new b());
    }

    public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, View view, int i, String str) {
        bVar.dismiss();
        if (i == 0) {
            if (EasyPermissions.hasPermissions(this, "android.permission.CAMERA")) {
                A();
            } else {
                w();
            }
        } else if (i != 1) {
        } else {
            if (EasyPermissions.hasPermissions(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                B();
            } else {
                x();
            }
        }
    }

    public /* synthetic */ void b(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (i.b()) {
            requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 20);
        }
    }

    public /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (i.b()) {
            requestPermissions(new String[]{"android.permission.CAMERA"}, 10);
        }
    }

    public void a(@NonNull Uri uri) {
        b.a aVar = new b.a();
        aVar.a(false);
        aVar.b(false);
        aVar.d(true);
        aVar.c(true);
        aVar.b(k0.a((int) R.color.select_color));
        aVar.c(k0.a((int) R.color.select_color));
        aVar.d(k0.a((int) R.color.white));
        aVar.a(60);
        com.yalantis.ucrop.b a2 = com.yalantis.ucrop.b.a(uri, Uri.fromFile(new File(getExternalCacheDir(), "portrait_crop.jpg")));
        a2.a(1.0f, 1.0f);
        a2.a(Common.HTTP_STATUS_BAD_REQUEST, Common.HTTP_STATUS_BAD_REQUEST);
        a2.a(aVar);
        a2.a((Activity) this);
    }
}
