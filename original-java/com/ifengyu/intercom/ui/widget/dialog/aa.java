package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.g;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.sina.weibo.sdk.api.ImageObject;
import com.sina.weibo.sdk.api.a;
import com.sina.weibo.sdk.api.share.d;
import com.sina.weibo.sdk.api.share.e;
import com.sina.weibo.sdk.api.share.j;
import com.tencent.mm.opensdk.modelmsg.SendMessageToWX.Req;
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

/* compiled from: TrackShareDialog */
public class aa extends b {
    private BaseActivity a;
    private String b;
    private IWXAPI c;
    private Tencent d;

    public aa(BaseActivity baseActivity, String str) {
        super(baseActivity);
        this.a = baseActivity;
        this.b = str;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_track_share_layout);
        a((Activity) this.a);
        a(R.id.share_weixin_layout, R.id.share_pengyouquan_layout, R.id.share_qq_layout, R.id.share_weibo_layout, R.id.share_qqzone_layout, R.id.share_save_album_layout, R.id.share_more_share_layout);
        this.c = WXAPIFactory.createWXAPI(this.a, "wxef025e7faa0241ac", true);
        this.c.registerApp("wxef025e7faa0241ac");
        this.d = Tencent.createInstance("101388710", MiTalkiApp.a());
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.share_weixin_layout /*2131755532*/:
                c();
                dismiss();
                return;
            case R.id.share_pengyouquan_layout /*2131755533*/:
                d();
                dismiss();
                return;
            case R.id.share_qq_layout /*2131755534*/:
                e();
                dismiss();
                return;
            case R.id.share_weibo_layout /*2131755535*/:
                g();
                dismiss();
                return;
            case R.id.share_qqzone_layout /*2131755536*/:
                f();
                dismiss();
                return;
            case R.id.share_save_album_layout /*2131755537*/:
                dismiss();
                a();
                v.a((CharSequence) this.a.getString(R.string.dialog_save_success), false);
                return;
            case R.id.share_more_share_layout /*2131755538*/:
                dismiss();
                Intent intent = new Intent("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(this.b)));
                intent.setType("image/jpeg");
                this.a.startActivity(Intent.createChooser(intent, this.a.getString(R.string.track_share_dialog_title)));
                return;
            default:
                return;
        }
    }

    private void c() {
        if (!v.b((Context) this.a, "com.tencent.mm")) {
            v.a((CharSequence) this.a.getString(R.string.not_install_weixin), false);
            return;
        }
        try {
            Bitmap decodeFile = BitmapFactory.decodeFile(this.b);
            WXImageObject wXImageObject = new WXImageObject(decodeFile);
            WXMediaMessage wXMediaMessage = new WXMediaMessage();
            wXMediaMessage.mediaObject = wXImageObject;
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeFile, (int) ((((float) (decodeFile.getWidth() * CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA)) * 1.0f) / ((float) decodeFile.getHeight())), CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, true);
            decodeFile.recycle();
            wXMediaMessage.thumbData = g.a(createScaledBitmap, true);
            Req req = new Req();
            req.transaction = a("trackShare");
            req.message = wXMediaMessage;
            req.scene = 0;
            this.c.sendReq(req);
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            v.a((CharSequence) this.a.getString(R.string.track_share_fail), false);
        }
    }

    private void d() {
        if (!v.b((Context) this.a, "com.tencent.mm")) {
            v.a((CharSequence) this.a.getString(R.string.not_install_weixin), false);
            return;
        }
        try {
            Bitmap decodeFile = BitmapFactory.decodeFile(this.b);
            WXImageObject wXImageObject = new WXImageObject(decodeFile);
            WXMediaMessage wXMediaMessage = new WXMediaMessage();
            wXMediaMessage.mediaObject = wXImageObject;
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeFile, (int) ((((float) (decodeFile.getWidth() * CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA)) * 1.0f) / ((float) decodeFile.getHeight())), CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, true);
            decodeFile.recycle();
            wXMediaMessage.thumbData = g.a(createScaledBitmap, true);
            Req req = new Req();
            req.transaction = a("trackShare");
            req.message = wXMediaMessage;
            req.scene = 1;
            this.c.sendReq(req);
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            v.a((CharSequence) this.a.getString(R.string.track_share_fail), false);
        }
    }

    private void e() {
        if (!v.b((Context) this.a, "com.tencent.mobileqq")) {
            v.a((CharSequence) this.a.getString(R.string.not_install_qq), false);
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("req_type", 5);
            bundle.putString("title", this.a.getString(R.string.track_share_title));
            bundle.putString("imageLocalUrl", this.b);
            this.d.shareToQQ(this.a, bundle, null);
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            v.a((CharSequence) this.a.getString(R.string.track_share_fail), false);
        }
    }

    private void f() {
        if (!v.b((Context) this.a, "com.tencent.mobileqq")) {
            v.a((CharSequence) this.a.getString(R.string.not_install_qq), false);
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("req_type", 5);
            bundle.putString("title", this.a.getString(R.string.track_share_title));
            bundle.putString("imageLocalUrl", this.b);
            bundle.putInt("cflag", 1);
            this.d.shareToQQ(this.a, bundle, null);
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            v.a((CharSequence) this.a.getString(R.string.track_share_fail), false);
        }
    }

    private void g() {
        if (!v.b((Context) this.a, "com.sina.weibo")) {
            v.a((CharSequence) this.a.getString(R.string.not_install_weibo), false);
            return;
        }
        try {
            d a2 = j.a(this.a, "249179559");
            a2.a();
            a aVar = new a();
            ImageObject imageObject = new ImageObject();
            imageObject.a(BitmapFactory.decodeFile(this.b));
            aVar.a = imageObject;
            e eVar = new e();
            eVar.a = String.valueOf(System.currentTimeMillis());
            eVar.b = aVar;
            a2.a(this.a, eVar);
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            v.a((CharSequence) this.a.getString(R.string.track_share_fail), false);
        }
    }

    public void a() {
        File file = new File(Environment.getExternalStorageDirectory() + "/" + "mitalki" + "/trackScreenShot/");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, System.currentTimeMillis() + ".jpg");
        try {
            FileInputStream fileInputStream = new FileInputStream(this.b);
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
            ThrowableExtension.printStackTrace(e);
        }
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(file2));
        this.a.sendBroadcast(intent);
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return true;
    }

    private String a(String str) {
        return str == null ? String.valueOf(System.currentTimeMillis()) : str + System.currentTimeMillis();
    }
}
