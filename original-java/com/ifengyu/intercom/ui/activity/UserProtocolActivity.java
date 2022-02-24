package com.ifengyu.intercom.ui.activity;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.x;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.i;
import com.ifengyu.intercom.i.l0;
import com.ifengyu.intercom.lite.c.b.e;
import com.ifengyu.intercom.lite.h.h0;
import com.ifengyu.intercom.node.q.d;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.library.a.m;
import com.ifengyu.library.base.BaseApp;
import com.just.agentweb.AgentWeb;
import com.just.agentweb.WebChromeClient;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.DownloadListener2;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import java.io.File;
import java.util.List;
import pub.devrel.easypermissions.EasyPermissions;

/* loaded from: classes2.dex */
public class UserProtocolActivity extends BaseActivity implements View.OnClickListener, EasyPermissions.PermissionCallbacks {
    private AgentWeb q;
    private int r;
    private final String s = "android.permission.WRITE_EXTERNAL_STORAGE";
    private WebChromeClient t = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends DownloadListener2 {
        a() {
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
            String str = ((BaseActivity) UserProtocolActivity.this).f6370a;
            com.ifengyu.blelib.a.a(str, "taskEnd->cause: " + endCause.toString());
            UserProtocolActivity.this.p();
            if (endCause != EndCause.COMPLETED || downloadTask.getFile() == null) {
                m.d(R.string.user_protocol_download_error);
                return;
            }
            UserProtocolActivity.this.c(downloadTask.getFile().getAbsolutePath());
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskStart(@NonNull DownloadTask downloadTask) {
            UserProtocolActivity.this.v();
        }
    }

    /* loaded from: classes2.dex */
    class b extends WebChromeClient {
        b() {
        }

        @Override // com.just.agentweb.WebChromeClientDelegate, android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
        }
    }

    private void A() {
        e eVar = new e(this);
        eVar.d(y());
        eVar.a(true);
        e eVar2 = eVar;
        eVar2.b(true);
        e eVar3 = eVar2;
        eVar3.a(0, R.string.common_cancel, 2, i0.f6229a);
        e eVar4 = eVar3;
        eVar4.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.activity.c0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i) {
                UserProtocolActivity.this.a(bVar, i);
            }
        });
        eVar4.a(R.style.DialogTheme2).show();
    }

    private void w() {
        new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.before_apply_storage_permission).setNegativeButton(R.string.common_cancel, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.e0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                UserProtocolActivity.this.a(dialogInterface, i);
            }
        }).setPositiveButton(R.string.go_apply, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.h0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                UserProtocolActivity.this.b(dialogInterface, i);
            }
        }).create().show();
    }

    private void x() {
        File file;
        String str;
        if (EasyPermissions.hasPermissions(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            file = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        } else {
            file = BaseApp.b().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        }
        if (file == null) {
            m.d(R.string.user_protocol_download_error);
            return;
        }
        int i = this.r;
        String str2 = "";
        if (i == 0) {
            str2 = c0.a() ? "a_p_en.pdf" : "a_p_zh.pdf";
            str = c0.a() ? "小米对讲机App用户协议与隐私政策-英文.pdf" : "小米对讲机App用户协议与隐私政策.pdf";
        } else if (i == 1) {
            str2 = c0.a() ? "a_p_dlophin_en.pdf" : "a_p_dlophin_zh.pdf";
            str = c0.a() ? "小米对讲机用户协议与隐私政策-英文.pdf" : "小米对讲机用户协议与隐私政策.pdf";
        } else if (i == 4) {
            str2 = c0.a() ? "a_p_mi2_en.pdf" : "a_p_mi2_zh.pdf";
            str = c0.a() ? "小米对讲机2用户协议与隐私政策-英文.pdf" : "小米对讲机2用户协议与隐私政策.pdf";
        } else if (i == 5) {
            str2 = c0.a() ? "a_p_1s_en.pdf" : "a_p_1s_zh.pdf";
            str = c0.a() ? "小米对讲机1S用户协议与隐私政策-英文.pdf" : "小米对讲机1S用户协议与隐私政策.pdf";
        } else if (i != 36611) {
            str = str2;
        } else {
            str2 = c0.a() ? "a_p_lite_en.pdf" : "a_p_lite_zh.pdf";
            str = c0.a() ? "小米对讲机Lite用户协议与隐私政策-英文.pdf" : "小米对讲机Lite用户协议与隐私政策.pdf";
        }
        if (TextUtils.isEmpty(str2)) {
            m.d(R.string.user_protocol_download_error);
            return;
        }
        new DownloadTask.Builder("https://m.ifengyu.com/resources/" + str2, file).setAutoCallbackToUIThread(true).setFilename(str).build().enqueue(new a());
    }

    private int y() {
        int i = this.r;
        return (i == 1 || i == 36611 || i == 4 || i == 5) ? R.string.revoke_agree_device_protocol_subtitle : R.string.revoke_agree_user_protocol_subtitle;
    }

    private void z() {
        d a2;
        String a3 = com.ifengyu.intercom.f.a.a(this.r);
        if (this.r == 0) {
            a3 = "app";
        }
        l0.b(a3);
        int i = this.r;
        if (i == 0) {
            d0.c(false);
            MiTalkiApp.b().p();
        } else if (i == 1 || i == 4 || i == 5) {
            d0.a(d0.g(), false);
            String l = l();
            if (!TextUtils.isEmpty(l) && (a2 = com.ifengyu.intercom.service.a.a()) != null) {
                a2.c(l);
            }
            a(MainActivity.class);
        } else if (i == 36611) {
            d0.a(d0.g(), false);
            ((h0) x.a(this).a(h0.class)).b();
            a(MainActivity.class);
        }
    }

    public /* synthetic */ void d(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", m.e(), null));
        intent.setFlags(268435456);
        startActivity(intent);
    }

    public String e(int i) {
        if (i == 0) {
            return c0.a() ? "https://m.ifengyu.com/resources/en/a_p.html" : "https://m.ifengyu.com/resources/a_p.html";
        }
        if (i == 1) {
            return c0.a() ? "https://m.ifengyu.com/resources/en/a_p_dev_dolphin.html" : "https://m.ifengyu.com/resources/a_p_dev_dolphin.html";
        }
        if (i == 4) {
            return c0.a() ? "https://m.ifengyu.com/resources/en/a_p_dev_shark.html" : "https://m.ifengyu.com/resources/a_p_dev_shark.html";
        }
        if (i == 5) {
            return c0.a() ? "https://m.ifengyu.com/resources/en/a_p_dev_seal.html" : "https://m.ifengyu.com/resources/a_p_dev_seal.html";
        }
        if (i != 36611) {
            return "https://m.ifengyu.com/resources/a_p.html";
        }
        return c0.a() ? "https://m.ifengyu.com/resources/en/a_p_dev_lite.html" : "https://m.ifengyu.com/resources/a_p_dev_lite.html";
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_quit_user_protocol /* 2131296416 */:
                A();
                return;
            case R.id.title_bar_confirm /* 2131297304 */:
                if (EasyPermissions.hasPermissions(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                    x();
                    return;
                } else {
                    w();
                    return;
                }
            case R.id.title_bar_left /* 2131297305 */:
                finish();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.r = getIntent().getExtras().getInt("key_type");
        boolean z = getIntent().getExtras().getBoolean("key_support_quit");
        setContentView(R.layout.activity_user_protocol);
        TextView textView = (TextView) a(R.id.title_bar_confirm);
        FrameLayout frameLayout = (FrameLayout) a(R.id.web_container);
        QMUIRoundButton qMUIRoundButton = (QMUIRoundButton) a(R.id.btn_quit_user_protocol);
        ((TextView) a(R.id.title_bar_title)).setText(R.string.user_protocol);
        int i = 0;
        textView.setVisibility(0);
        textView.setText(R.string.common_download);
        qMUIRoundButton.setChangeAlphaWhenPress(true);
        ((ImageView) a(R.id.title_bar_left)).setOnClickListener(this);
        textView.setOnClickListener(this);
        qMUIRoundButton.setOnClickListener(this);
        if (!z) {
            i = 8;
        }
        qMUIRoundButton.setVisibility(i);
        this.q = AgentWeb.with(this).setAgentWebParent(frameLayout, new ConstraintLayout.LayoutParams(-1, -1)).useDefaultIndicator(m.a((int) R.color.lite_colorAccent)).setWebChromeClient(this.t).createAgentWeb().ready().go(e(this.r));
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.q.getWebLifeCycle().onDestroy();
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.q.handleKeyEvent(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.q.getWebLifeCycle().onPause();
        super.onPause();
    }

    @Override // pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsDenied(int i, List<String> list) {
        l0.a(list);
        if (!isFinishing()) {
            new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.after_refuse_storage_permission).setNegativeButton(R.string.common_cancel, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.d0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    UserProtocolActivity.this.c(dialogInterface, i2);
                }
            }).setPositiveButton(R.string.go_setting, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.g0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    UserProtocolActivity.this.d(dialogInterface, i2);
                }
            }).create().show();
        }
    }

    @Override // pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsGranted(int i, List<String> list) {
        l0.b(list);
        x();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        EasyPermissions.onRequestPermissionsResult(i, strArr, iArr, this);
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        this.q.getWebLifeCycle().onResume();
        super.onResume();
    }

    public static void b(Context context, int i) {
        a(context, i, true);
    }

    public /* synthetic */ void c(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        x();
    }

    public static void a(Context context, int i) {
        a(context, i, false);
    }

    public /* synthetic */ void b(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (i.b()) {
            requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 20);
        }
    }

    private static void a(Context context, int i, boolean z) {
        Intent intent = new Intent(context, UserProtocolActivity.class);
        intent.putExtra("key_type", i);
        intent.putExtra("key_support_quit", z);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        e eVar = new e(this);
        eVar.a((CharSequence) m.a((int) R.string.user_protocol_download_path, str));
        eVar.a(true);
        e eVar2 = eVar;
        eVar2.b(true);
        e eVar3 = eVar2;
        eVar3.a(0, R.string.common_ok, 1, f0.f6223a);
        eVar3.a(R.style.DialogTheme2).show();
    }

    public /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        x();
    }

    public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        bVar.dismiss();
        z();
    }
}
