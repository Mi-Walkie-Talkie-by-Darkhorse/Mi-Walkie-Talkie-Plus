package com.ifengyu.intercom.p216ui.activity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.FileProvider;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.enums.LoginTypeEnum;
import com.ifengyu.intercom.dialog.list.BottomSheetListAdapter;
import com.ifengyu.intercom.dialog.list.ItemListBuilder;
import com.ifengyu.intercom.http.entity.UploadFileEntity;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.APIUtils;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.login.SetupPasswordActivity;
import com.ifengyu.library.account.UserCache;
import com.ifengyu.library.account.UserInfo;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.C4972m;
import com.ifengyu.library.utils.FileProviderHelper;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.layout.QMUIConstraintLayout;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.infra.galaxy.fds.Common;
import com.yalantis.ucrop.UCrop;
import com.zhihu.matisse.Matisse;
import com.zhihu.matisse.MimeType;
import com.zhihu.matisse.SelectionCreator;
import com.zhihu.matisse.p276b.p277b.GlideEngine;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import org.json.JSONObject;
import p048b.p076e.p077a.RxPermissions;

/* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity */
/* loaded from: classes2.dex */
public class MyInfoSettingActivity extends BaseActivity1 {
    @BindView(R.id.btn_bottom)
    QMUIRoundButton btnBottom;

    /* renamed from: j */
    private TextView f14838j;

    /* renamed from: k */
    private boolean f14839k;

    /* renamed from: l */
    private boolean f14840l;

    /* renamed from: m */
    private String f14841m;
    @BindView(R.id.edit_my_portrait)
    QMUIRadiusImageView mCivPortrait;
    @BindView(R.id.item_password)
    QMUIConstraintLayout mItemPassword;
    @BindView(R.id.iv_phone_arrow)
    ImageView mIvPhoneArrow;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.tv_id_value)
    TextView mTvIdValue;

    /* renamed from: n */
    private TextView f14842n;

    /* renamed from: o */
    private TextView f14843o;

    /* renamed from: p */
    private TextView f14844p;

    /* renamed from: q */
    private Uri f14845q;

    /* renamed from: r */
    private String f14846r = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity$a */
    /* loaded from: classes2.dex */
    public class C4358a extends ErrorConsumer {
        C4358a() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        @SuppressLint({"CheckResult"})
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
            C4161y.m11052c("MyInfoSettingActivity", "uploadPortrait fail");
            MyInfoSettingActivity.this.m10506G(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity$b */
    /* loaded from: classes2.dex */
    public class C4359b extends ErrorConsumer {

        /* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity$b$a */
        /* loaded from: classes2.dex */
        class RunnableC4360a implements Runnable {
            RunnableC4360a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MyInfoSettingActivity.this.m10283n();
            }
        }

        C4359b() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("MyInfoSettingActivity", "updateSelfInfo fail");
            MyInfoSettingActivity.this.m10275v(NewHttpHelper.m8714a(newApiException.m8703a()));
            MyInfoSettingActivity.this.m10277t(R.drawable.load_fail);
            BaseApp.m8713a().postDelayed(new RunnableC4360a(), 500L);
        }
    }

    /* renamed from: B0 */
    private void m10511B0() {
        int i = 0;
        if (!this.f14842n.getText().equals(getString(R.string.setting_user_info_gender_male)) && this.f14842n.getText().equals(getString(R.string.setting_user_info_gender_female))) {
            i = 1;
        }
        ItemListBuilder itemListBuilder = new ItemListBuilder(this);
        itemListBuilder.m12443H(i);
        itemListBuilder.m7282x(R.string.setting_my_info_sex);
        ItemListBuilder itemListBuilder2 = itemListBuilder;
        itemListBuilder2.m12441J(true);
        itemListBuilder2.m12445F(UIUtils.m8603o(R.string.setting_user_info_gender_male));
        itemListBuilder2.m12445F(UIUtils.m8603o(R.string.setting_user_info_gender_female));
        itemListBuilder2.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.ui.activity.e0
            @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
            /* renamed from: a */
            public final void mo9161a(QMUIDialog qMUIDialog, View view, int i2, String str, BottomSheetListAdapter bottomSheetListAdapter) {
                MyInfoSettingActivity.this.m10481g0(qMUIDialog, view, i2, str, bottomSheetListAdapter);
            }
        });
        itemListBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: C0 */
    private void m10510C0() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(this);
        messageDialogBuilder.m7248E(R.string.setting_confirm_logout);
        messageDialogBuilder.m7286t(true);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7285u(true);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7300b(0, R.string.common_cancel, 2, C4425x.f14960a);
        MessageDialogBuilder messageDialogBuilder4 = messageDialogBuilder3;
        messageDialogBuilder4.m7300b(0, R.string.common_ok, 0, C4396i0.f14930a);
        messageDialogBuilder4.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: D0 */
    private void m10509D0() {
        ItemListBuilder itemListBuilder = new ItemListBuilder(this);
        itemListBuilder.m12445F(UIUtils.m8603o(R.string.upload_photo));
        itemListBuilder.m12445F(UIUtils.m8603o(R.string.upload_local));
        itemListBuilder.m12442I(true);
        itemListBuilder.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.ui.activity.d0
            @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
            /* renamed from: a */
            public final void mo9161a(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
                MyInfoSettingActivity.this.m10477k0(qMUIDialog, view, i, str, bottomSheetListAdapter);
            }
        });
        itemListBuilder.m7296f(R.style.DialogTheme1).show();
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: E0 */
    private void m10508E0(File file) {
        m10288C(false, false, R.string.dialog_uploading, R.drawable.load_spinner);
        AppServiceClient.m11355a().m11365q(MultipartBody.Part.createFormData("file", file.getName(), RequestBody.create(MediaType.parse("image/png"), file))).subscribeOn(Schedulers.m800io()).observeOn(Schedulers.m800io()).flatMap(new Function() { // from class: com.ifengyu.intercom.ui.activity.j0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return MyInfoSettingActivity.this.m10475m0((UploadFileEntity) obj);
            }
        }).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.activity.l0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MyInfoSettingActivity.this.m10473o0((NewHttpResult) obj);
            }
        }, new C4358a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G */
    public void m10506G(boolean z) {
        int i;
        if (z) {
            this.f14839k = true;
            Uri uri = this.f14845q;
            if (uri != null) {
                this.mCivPortrait.setImageBitmap(UIUtils.m8617a(uri));
            }
            i = 500;
            m10276u(R.string.set_success);
            m10277t(R.drawable.load_success);
        } else {
            this.f14839k = false;
            i = XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER;
            m10276u(R.string.net_work_error_pls_retry);
            m10277t(R.drawable.load_fail);
        }
        BaseApp.m8713a().postDelayed(new Runnable() { // from class: com.ifengyu.intercom.ui.activity.x0
            @Override // java.lang.Runnable
            public final void run() {
                MyInfoSettingActivity.this.m10283n();
            }
        }, i);
    }

    /* renamed from: I */
    private void m10504I() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f14841m = extras.getString("setting_my_name");
        }
    }

    /* renamed from: J */
    private void m10503J(Intent intent) {
        if (intent == null) {
            return;
        }
        Uri m1185b = UCrop.m1185b(intent);
        this.f14845q = m1185b;
        if (m1185b == null) {
            C4971k.m8657c("MyInfoSettingActivity", "handleCropResult#File uri is null.");
        } else {
            m10508E0(new File(this.f14845q.getPath()));
        }
    }

    /* renamed from: K */
    private void m10502K() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.profile);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyInfoSettingActivity.this.m10500M(view);
            }
        });
        TextView textView = (TextView) findViewById(R.id.set_my_name_tv);
        this.f14838j = textView;
        textView.setText(this.f14841m);
        this.btnBottom.setChangeAlphaWhenPress(true);
        this.f14842n = (TextView) findViewById(R.id.set_my_sex_tv);
        int m11245O = MiTalkClientUtil.m11245O();
        if (m11245O == 1) {
            this.f14842n.setText(getString(R.string.setting_user_info_gender_male));
        } else if (m11245O == 2) {
            this.f14842n.setText(getString(R.string.setting_user_info_gender_female));
        } else {
            this.f14842n.setText(getString(R.string.setting_user_info_have_not_set));
        }
        this.f14843o = (TextView) findViewById(R.id.set_my_phone_tv);
        String m11237S = MiTalkClientUtil.m11237S();
        if (!m11237S.equals("null") && m11237S.length() != 0) {
            this.f14843o.setText(m11237S);
        } else {
            this.f14843o.setText(getString(R.string.setting_user_info_have_not_set));
        }
        this.f14844p = (TextView) findViewById(R.id.set_my_email_tv);
        String m11247N = MiTalkClientUtil.m11247N();
        if (!m11247N.equals("null") && m11247N.length() != 0) {
            if (m11247N.length() > 22) {
                TextView textView2 = this.f14844p;
                textView2.setText(m11247N.substring(0, 22) + "...");
            } else {
                this.f14844p.setText(m11247N);
            }
        } else {
            this.f14844p.setText(getString(R.string.setting_user_info_have_not_set));
        }
        ImageLoader.m8706e(this, this.mCivPortrait, UserCache.getUserInfo().avatar);
        this.mTvIdValue.setText(MiTalkClientUtil.m11243P());
        if (MiTalkClientUtil.m11235T().getInt("user_login_type", 0) == LoginTypeEnum.PHONE.m14024a().intValue()) {
            this.mItemPassword.setVisibility(0);
            this.mIvPhoneArrow.setVisibility(8);
            return;
        }
        this.mItemPassword.setVisibility(8);
        this.mIvPhoneArrow.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public /* synthetic */ void m10500M(View view) {
        onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public /* synthetic */ void m10498O() {
        m10283n();
        int m11245O = MiTalkClientUtil.m11245O();
        if (m11245O == 1) {
            this.f14842n.setText(getString(R.string.setting_user_info_gender_male));
        } else if (m11245O == 2) {
            this.f14842n.setText(getString(R.string.setting_user_info_gender_female));
        } else {
            this.f14842n.setText(getString(R.string.setting_user_info_have_not_set));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P */
    public /* synthetic */ void m10496R(int i, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f("MyInfoSettingActivity", "updateSelfInfo success");
        m10276u(R.string.set_success);
        m10277t(R.drawable.load_success);
        MiTalkClientUtil.m11194o0(i);
        UserInfo userInfo = UserCache.getUserInfo();
        if (userInfo != null) {
            userInfo.gender = i;
            UserCache.saveUserInfo(userInfo);
        }
        BaseApp.m8713a().postDelayed(new Runnable() { // from class: com.ifengyu.intercom.ui.activity.f0
            @Override // java.lang.Runnable
            public final void run() {
                MyInfoSettingActivity.this.m10498O();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S */
    public /* synthetic */ void m10494T(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            UserPrivacyReportUtil.m11142q("camera");
            m10471q0();
            return;
        }
        UserPrivacyReportUtil.m11150i("camera");
        m10465x0(R.string.after_refuse_camera_permissions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U */
    public /* synthetic */ void m10492V(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            UserPrivacyReportUtil.m11142q("storage");
            m10470r0();
            return;
        }
        UserPrivacyReportUtil.m11150i("storage");
        m10465x0(R.string.after_refuse_storage_permission);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X */
    public /* synthetic */ void m10489Y(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        startActivity(C4972m.m8641a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public /* synthetic */ void m10487a0(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m10468u0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d0 */
    public /* synthetic */ void m10483e0(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m10466w0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public /* synthetic */ void m10481g0(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        qMUIDialog.dismiss();
        m10472p0(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i0 */
    public static /* synthetic */ void m10479i0(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        MiTalkiApp.m14296h().m14304F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j0 */
    public /* synthetic */ void m10477k0(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        qMUIDialog.dismiss();
        if (i == 0) {
            m10469t0();
        } else if (i == 1) {
            m10467v0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public /* synthetic */ ObservableSource m10475m0(UploadFileEntity uploadFileEntity) throws Exception {
        HashMap hashMap = new HashMap();
        String url = uploadFileEntity.getUrl();
        this.f14846r = url;
        hashMap.put("avatar", url);
        return AppServiceClient.m11355a().m11383X(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n0 */
    public /* synthetic */ void m10473o0(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f("MyInfoSettingActivity", "uploadPortrait success");
        UserInfo userInfo = UserCache.getUserInfo();
        if (userInfo != null) {
            userInfo.avatar = this.f14846r;
            UserCache.saveUserInfo(userInfo);
        }
        m10506G(true);
    }

    /* renamed from: q0 */
    private void m10471q0() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        Uri fromFile = Uri.fromFile(new File(getCacheDir(), "portrait.jpg"));
        if (APIUtils.m11093c()) {
            fromFile = FileProvider.getUriForFile(this, getPackageName() + ".provider", new File(getCacheDir(), "portrait.jpg"));
        }
        intent.putExtra("output", fromFile);
        startActivityForResult(intent, 1);
    }

    /* renamed from: r0 */
    private void m10470r0() {
        SelectionCreator m1023a = Matisse.m1021c(this).m1023a(MimeType.m1033g());
        m1023a.m1026e(true);
        m1023a.m1030a(false);
        m1023a.m1027d(1);
        m1023a.m1024g(0.85f);
        m1023a.m1025f(2131886372);
        m1023a.m1028c(new GlideEngine());
        m1023a.m1029b(2);
    }

    /* renamed from: t0 */
    private void m10469t0() {
        if (C4972m.m8640b("android.permission.CAMERA")) {
            m10471q0();
        } else {
            m10464y0();
        }
    }

    @SuppressLint({"CheckResult", "AutoDispose"})
    /* renamed from: u0 */
    private void m10468u0() {
        new RxPermissions(this).m21013l("android.permission.CAMERA").subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.activity.g0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MyInfoSettingActivity.this.m10494T((Boolean) obj);
            }
        }, C4428y0.f14963a);
    }

    /* renamed from: v0 */
    private void m10467v0() {
        if (C4972m.m8640b("android.permission.WRITE_EXTERNAL_STORAGE")) {
            m10470r0();
        } else {
            m10463z0();
        }
    }

    @SuppressLint({"CheckResult", "AutoDispose"})
    /* renamed from: w0 */
    private void m10466w0() {
        new RxPermissions(this).m21013l("android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.activity.c0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MyInfoSettingActivity.this.m10492V((Boolean) obj);
            }
        }, C4428y0.f14963a);
    }

    /* renamed from: x0 */
    private void m10465x0(int i) {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(this);
        messageDialogBuilder.m7282x(R.string.permission_apply);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7248E(i);
        messageDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C4427y.f14962a);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7300b(0, R.string.go_to_setting, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.activity.m0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                MyInfoSettingActivity.this.m10489Y(qMUIDialog, i2);
            }
        });
        messageDialogBuilder3.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: y0 */
    private void m10464y0() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(this);
        messageDialogBuilder.m7282x(R.string.permission_apply);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7248E(R.string.before_apply_camera_permissions);
        messageDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C4394h0.f14928a);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7300b(0, R.string.go_apply, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.activity.w
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                MyInfoSettingActivity.this.m10487a0(qMUIDialog, i);
            }
        });
        messageDialogBuilder3.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: z0 */
    private void m10463z0() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(this);
        messageDialogBuilder.m7282x(R.string.permission_apply);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7248E(R.string.before_apply_storage_permission);
        messageDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C4382b0.f14916a);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7300b(0, R.string.go_apply, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.activity.k0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                MyInfoSettingActivity.this.m10483e0(qMUIDialog, i);
            }
        });
        messageDialogBuilder3.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: H */
    public void m10505H(@NonNull Uri uri) {
        UCrop.C6484a c6484a = new UCrop.C6484a();
        c6484a.m1176b(false);
        c6484a.m1174d(false);
        c6484a.m1172f(true);
        c6484a.m1173e(true);
        c6484a.m1171g(UIUtils.m8614d(R.color.black));
        c6484a.m1170h(UIUtils.m8614d(R.color.black));
        c6484a.m1169i(UIUtils.m8614d(R.color.white));
        c6484a.m1175c(60);
        UCrop m1184c = UCrop.m1184c(uri, Uri.fromFile(new File(getCacheDir(), "portrait_crop.jpg")));
        m1184c.m1180g(1.0f, 1.0f);
        m1184c.m1179h(Common.HTTP_STATUS_BAD_REQUEST, Common.HTTP_STATUS_BAD_REQUEST);
        m1184c.m1178i(c6484a);
        m1184c.m1183d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            if (i == 1) {
                File file = new File(getCacheDir(), "portrait.jpg");
                if (!file.exists()) {
                    MethodsUtils.m11302H(getString(R.string.file_not_found), true);
                } else {
                    m10505H(FileProviderHelper.m8672a(this, file));
                }
            } else if (i == 2) {
                if (intent == null) {
                    UIUtils.m8592z(UIUtils.m8603o(R.string.toast_cannot_retrieve_selected_image));
                    return;
                }
                List<Uri> m1017g = Matisse.m1017g(intent);
                if (m1017g != null && m1017g.size() != 0) {
                    m10505H(m1017g.get(0));
                } else {
                    UIUtils.m8592z(UIUtils.m8603o(R.string.toast_cannot_retrieve_selected_image));
                }
            } else if (i != 69) {
                switch (i) {
                    case 11:
                        this.f14838j.setText(MiTalkClientUtil.m11239R());
                        return;
                    case 12:
                        String m11237S = MiTalkClientUtil.m11237S();
                        if (m11237S != null && !m11237S.equals("null") && m11237S.length() != 0) {
                            this.f14843o.setText(m11237S);
                            return;
                        } else {
                            this.f14843o.setText(getString(R.string.setting_user_info_have_not_set));
                            return;
                        }
                    case 13:
                        String m11247N = MiTalkClientUtil.m11247N();
                        if (m11247N != null && !m11247N.equals("null") && m11247N.length() != 0) {
                            if (m11247N.length() > 22) {
                                TextView textView = this.f14844p;
                                textView.setText(m11247N.substring(0, 22) + "...");
                                return;
                            }
                            this.f14844p.setText(m11247N);
                            return;
                        }
                        this.f14844p.setText(getString(R.string.setting_user_info_have_not_set));
                        return;
                    default:
                        return;
                }
            } else {
                m10503J(intent);
            }
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Intent intent = new Intent();
        intent.putExtra("setting_my_name", this.f14838j.getText());
        intent.putExtra("setting_had_modify_name", this.f14840l);
        intent.putExtra("setting_had_modify_portrait", this.f14839k);
        intent.setData(this.f14845q);
        setResult(1, intent);
        finish();
    }

    @OnClick({R.id.item_avatar, R.id.set_my_name, R.id.set_my_sex, R.id.set_my_phone, R.id.set_my_email, R.id.item_password, R.id.item_id, R.id.btn_bottom})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_bottom /* 2131296418 */:
                m10510C0();
                return;
            case R.id.item_avatar /* 2131296830 */:
                m10509D0();
                return;
            case R.id.item_password /* 2131296846 */:
                SetupPasswordActivity.start(this);
                return;
            case R.id.set_my_email /* 2131297294 */:
                Intent intent = new Intent(this, SetMyOtherInfoActivity.class);
                intent.putExtra("setting_what", "setting_my_email");
                startActivityForResult(intent, 13);
                return;
            case R.id.set_my_name /* 2131297296 */:
                this.f14840l = true;
                Intent intent2 = new Intent(this, SetMyOtherInfoActivity.class);
                intent2.putExtra("setting_what", "setting_my_name");
                startActivityForResult(intent2, 11);
                return;
            case R.id.set_my_phone /* 2131297298 */:
                if (MiTalkClientUtil.m11235T().getInt("user_login_type", 0) != LoginTypeEnum.PHONE.m14024a().intValue()) {
                    Intent intent3 = new Intent(this, SetMyOtherInfoActivity.class);
                    intent3.putExtra("setting_what", "setting_my_phone");
                    startActivityForResult(intent3, 12);
                    return;
                }
                return;
            case R.id.set_my_sex /* 2131297300 */:
                m10511B0();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_my_info_setting);
        ButterKnife.bind(this);
        m10504I();
        m10502K();
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: p0 */
    public void m10472p0(int i) {
        if (i == 0) {
            if (this.f14842n.getText().equals(getString(R.string.setting_user_info_gender_male))) {
                return;
            }
        } else if (i == 1 && this.f14842n.getText().equals(getString(R.string.setting_user_info_gender_female))) {
            return;
        }
        if (!MethodsUtils.m11274z(this)) {
            UIUtils.m8593y(R.string.net_work_error_pls_retry);
            return;
        }
        m10288C(false, false, R.string.dialog_please_wait, R.drawable.load_spinner);
        final int i2 = i != 0 ? 2 : 1;
        HashMap hashMap = new HashMap();
        hashMap.put("gender", Integer.valueOf(i2));
        AppServiceClient.m11355a().m11383X(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.activity.a0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MyInfoSettingActivity.this.m10496R(i2, (NewHttpResult) obj);
            }
        }, new C4359b());
    }
}
