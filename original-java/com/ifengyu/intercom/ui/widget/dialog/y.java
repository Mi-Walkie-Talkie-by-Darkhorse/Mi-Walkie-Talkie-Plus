package com.ifengyu.intercom.ui.widget.dialog;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.i;
import com.ifengyu.intercom.i.l;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.sina.weibo.sdk.api.ImageObject;
import com.sina.weibo.sdk.api.a;
import com.sina.weibo.sdk.api.c.d;
import com.sina.weibo.sdk.api.c.e;
import com.sina.weibo.sdk.api.c.j;
import com.tencent.mm.opensdk.modelmsg.SendMessageToWX;
import com.tencent.mm.opensdk.modelmsg.WXImageObject;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.tencent.tauth.Tencent;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.bouncycastle.crypto.tls.CipherSuite;
import pub.devrel.easypermissions.EasyPermissions;

/* compiled from: TrackShareDialog.java */
/* loaded from: classes2.dex */
public class y extends d {

    /* renamed from: a  reason: collision with root package name */
    private BaseActivity f7020a;

    /* renamed from: b  reason: collision with root package name */
    private String f7021b;

    /* renamed from: c  reason: collision with root package name */
    private IWXAPI f7022c;
    private Tencent d;
    private final String e = "android.permission.WRITE_EXTERNAL_STORAGE";

    public y(BaseActivity baseActivity, String str) {
        super(baseActivity);
        this.f7020a = baseActivity;
        this.f7021b = str;
    }

    private void c() {
        new AlertDialog.Builder(this.f7020a).setCancelable(false).setMessage(R.string.before_apply_storage_permission).setNegativeButton(R.string.common_cancel, a.f6923a).setPositiveButton(R.string.go_apply, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.widget.dialog.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                y.this.a(dialogInterface, i);
            }
        }).create().show();
    }

    private void d() {
        if (!c0.a(this.f7020a, "com.tencent.mobileqq")) {
            c0.a((CharSequence) this.f7020a.getString(R.string.not_install_qq), false);
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("req_type", 5);
            bundle.putString("title", this.f7020a.getString(R.string.track_share_title));
            bundle.putString("imageLocalUrl", this.f7021b);
            this.d.shareToQQ(this.f7020a, bundle, null);
        } catch (Exception e) {
            e.printStackTrace();
            c0.a((CharSequence) this.f7020a.getString(R.string.track_share_fail), false);
        }
    }

    private void e() {
        if (!c0.a(this.f7020a, "com.tencent.mobileqq")) {
            c0.a((CharSequence) this.f7020a.getString(R.string.not_install_qq), false);
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("req_type", 5);
            bundle.putString("title", this.f7020a.getString(R.string.track_share_title));
            bundle.putString("imageLocalUrl", this.f7021b);
            bundle.putInt("cflag", 1);
            this.d.shareToQQ(this.f7020a, bundle, null);
        } catch (Exception e) {
            e.printStackTrace();
            c0.a((CharSequence) this.f7020a.getString(R.string.track_share_fail), false);
        }
    }

    private void f() {
        if (!c0.a(this.f7020a, "com.tencent.mm")) {
            c0.a((CharSequence) this.f7020a.getString(R.string.not_install_weixin), false);
            return;
        }
        try {
            Bitmap decodeFile = BitmapFactory.decodeFile(this.f7021b);
            WXImageObject wXImageObject = new WXImageObject(decodeFile);
            WXMediaMessage wXMediaMessage = new WXMediaMessage();
            wXMediaMessage.mediaObject = wXImageObject;
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeFile, (int) (((decodeFile.getWidth() * CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA) * 1.0f) / decodeFile.getHeight()), CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, true);
            decodeFile.recycle();
            wXMediaMessage.thumbData = l.a(createScaledBitmap, true);
            SendMessageToWX.Req req = new SendMessageToWX.Req();
            req.transaction = a("trackShare");
            req.message = wXMediaMessage;
            req.scene = 0;
            this.f7022c.sendReq(req);
        } catch (Exception e) {
            e.printStackTrace();
            c0.a((CharSequence) this.f7020a.getString(R.string.track_share_fail), false);
        }
    }

    private void g() {
        if (!c0.a(this.f7020a, "com.tencent.mm")) {
            c0.a((CharSequence) this.f7020a.getString(R.string.not_install_weixin), false);
            return;
        }
        try {
            Bitmap decodeFile = BitmapFactory.decodeFile(this.f7021b);
            WXImageObject wXImageObject = new WXImageObject(decodeFile);
            WXMediaMessage wXMediaMessage = new WXMediaMessage();
            wXMediaMessage.mediaObject = wXImageObject;
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeFile, (int) (((decodeFile.getWidth() * CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA) * 1.0f) / decodeFile.getHeight()), CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, true);
            decodeFile.recycle();
            wXMediaMessage.thumbData = l.a(createScaledBitmap, true);
            SendMessageToWX.Req req = new SendMessageToWX.Req();
            req.transaction = a("trackShare");
            req.message = wXMediaMessage;
            req.scene = 1;
            this.f7022c.sendReq(req);
        } catch (Exception e) {
            e.printStackTrace();
            c0.a((CharSequence) this.f7020a.getString(R.string.track_share_fail), false);
        }
    }

    private void h() {
        if (!c0.a(this.f7020a, "com.sina.weibo")) {
            c0.a((CharSequence) this.f7020a.getString(R.string.not_install_weibo), false);
            return;
        }
        try {
            d a2 = j.a(this.f7020a, "249179559");
            a2.a();
            a aVar = new a();
            ImageObject imageObject = new ImageObject();
            imageObject.a(BitmapFactory.decodeFile(this.f7021b));
            aVar.f7650a = imageObject;
            e eVar = new e();
            eVar.f7654a = String.valueOf(System.currentTimeMillis());
            eVar.f7655b = aVar;
            a2.a(this.f7020a, eVar);
        } catch (Exception e) {
            e.printStackTrace();
            c0.a((CharSequence) this.f7020a.getString(R.string.track_share_fail), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i) {
        switch (i) {
            case R.id.share_more_share_layout /* 2131297187 */:
                dismiss();
                Intent intent = new Intent("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(this.f7021b)));
                intent.setType("image/jpeg");
                BaseActivity baseActivity = this.f7020a;
                baseActivity.startActivity(Intent.createChooser(intent, baseActivity.getString(R.string.track_share_dialog_title)));
                return;
            case R.id.share_pdf /* 2131297188 */:
            default:
                return;
            case R.id.share_pengyouquan_layout /* 2131297189 */:
                g();
                dismiss();
                return;
            case R.id.share_qq_layout /* 2131297190 */:
                d();
                dismiss();
                return;
            case R.id.share_qqzone_layout /* 2131297191 */:
                e();
                dismiss();
                return;
            case R.id.share_save_album_layout /* 2131297192 */:
                dismiss();
                if (EasyPermissions.hasPermissions(getContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
                    b();
                    return;
                } else {
                    c();
                    return;
                }
            case R.id.share_weibo_layout /* 2131297193 */:
                h();
                dismiss();
                return;
            case R.id.share_weixin_layout /* 2131297194 */:
                f();
                dismiss();
                return;
        }
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    protected boolean a() {
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_track_share_layout);
        a(this.f7020a);
        a(R.id.share_weixin_layout, R.id.share_pengyouquan_layout, R.id.share_qq_layout, R.id.share_weibo_layout, R.id.share_qqzone_layout, R.id.share_save_album_layout, R.id.share_more_share_layout);
        IWXAPI createWXAPI = WXAPIFactory.createWXAPI(this.f7020a, "wxef025e7faa0241ac", true);
        this.f7022c = createWXAPI;
        createWXAPI.registerApp("wxef025e7faa0241ac");
        this.d = Tencent.createInstance("101388710", MiTalkiApp.b());
    }

    public void b() {
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).getAbsolutePath() + "/Mitalk");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, System.currentTimeMillis() + "-track.jpg");
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f7021b);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(file2));
        this.f7020a.sendBroadcast(intent);
        c0.a((CharSequence) this.f7020a.getString(R.string.dialog_save_success), false);
    }

    public /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (i.b()) {
            this.f7020a.requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 20);
        }
    }

    private String a(String str) {
        if (str == null) {
            return String.valueOf(System.currentTimeMillis());
        }
        return str + System.currentTimeMillis();
    }
}
