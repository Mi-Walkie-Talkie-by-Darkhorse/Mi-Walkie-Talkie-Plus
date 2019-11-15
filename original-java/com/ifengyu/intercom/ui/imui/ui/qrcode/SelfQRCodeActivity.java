package com.ifengyu.intercom.ui.imui.ui.qrcode;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import cn.bingoogolapple.qrcode.zxing.QRCodeEncoder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseActivity;
import com.ifengyu.intercom.ui.imui.ui.chat.Extras;
import com.ifengyu.library.util.c;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import io.reactivex.e.a;
import io.reactivex.k;
import io.reactivex.l;

public class SelfQRCodeActivity extends BaseActivity {
    private int a;
    private int b;
    @BindView(2131755449)
    QMUIAlphaImageButton mIbLeft;
    @BindView(2131755451)
    QMUIAlphaImageButton mIbRight;
    @BindView(2131755373)
    ImageView mIvQRCode;
    @BindView(2131755443)
    TextView mTvTitle;

    public static void a(Context context, int i, int i2) {
        Intent intent = new Intent(context, SelfQRCodeActivity.class);
        Bundle bundle = new Bundle();
        bundle.putInt(Extras.EXTRA_SESSION_TYPE, i);
        bundle.putInt(Extras.EXTRA_SESSION_ID, i2);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public void initBundle(Bundle bundle) {
        if (bundle != null) {
            this.a = bundle.getInt(Extras.EXTRA_SESSION_TYPE);
            this.b = bundle.getInt(Extras.EXTRA_SESSION_ID);
        }
    }

    /* access modifiers changed from: protected */
    public int getContentLayout() {
        return R.layout.activity_self_qrcode;
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void a(View view) {
        finish();
    }

    /* access modifiers changed from: protected */
    public void initView(Bundle bundle) {
        this.mIbLeft.setOnClickListener(new f(this));
        this.mTvTitle.setText(R.string.qr_code_card);
    }

    /* access modifiers changed from: protected */
    @SuppressLint({"CheckResult", "DefaultLocale"})
    public void initData() {
        if (this.a > 0 && this.b > 0) {
            String str = "00";
            if (this.a == 3) {
                str = "00";
            } else if (this.a == 1) {
                str = "01";
            }
            k.create(new g(this, String.format("FY%s%s%s%s", new Object[]{str, String.format("%010d", new Object[]{Integer.valueOf(this.b)}), String.valueOf(System.currentTimeMillis() / 1000), String.format("%06d", new Object[]{Integer.valueOf(0)})}))).subscribeOn(a.a()).observeOn(io.reactivex.a.b.a.a()).subscribe(new h(this), new i(this));
        }
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void a(String str, l lVar) throws Exception {
        lVar.a(a(str));
        lVar.a();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void a(Bitmap bitmap) throws Exception {
        this.mIvQRCode.setImageBitmap(bitmap);
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void a(Throwable th) throws Exception {
        c.d(this.TAG, "generate qr code error:" + th.toString());
        com.ifengyu.library.util.l.a((CharSequence) "二维码生成失败");
    }

    /* access modifiers changed from: protected */
    public void initListener() {
    }

    private Bitmap a(String str) {
        return QRCodeEncoder.syncEncodeQRCode(str, com.ifengyu.library.util.l.a(200.0f));
    }
}
