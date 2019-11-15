package com.ifengyu.intercom.ui.imui.ui.qrcode;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import butterknife.BindView;
import cn.bingoogolapple.qrcode.core.QRCodeView.Delegate;
import cn.bingoogolapple.qrcode.zxing.ZXingView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseActivity;
import com.ifengyu.library.util.c;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.dialog.a.b;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;

public class BaseScanActivity extends BaseActivity implements Delegate {
    @BindView(2131755449)
    QMUIAlphaImageButton mIbLeft;
    @BindView(2131755451)
    QMUIAlphaImageButton mIbRight;
    @BindView(2131755159)
    FrameLayout mTitleBar;
    @BindView(2131755443)
    TextView mTvTitle;
    @BindView(2131755183)
    ZXingView mZxingview;

    public static void a(Context context) {
        context.startActivity(new Intent(context, BaseScanActivity.class));
    }

    /* access modifiers changed from: protected */
    public int getContentLayout() {
        return R.layout.activity_base_scan;
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void a(View view) {
        finish();
    }

    /* access modifiers changed from: protected */
    public void initView(Bundle bundle) {
        this.mIbLeft.setOnClickListener(new a(this));
        this.mTvTitle.setText(R.string.qr_code);
        this.mZxingview.setDelegate(this);
    }

    /* access modifiers changed from: protected */
    public void initData() {
    }

    /* access modifiers changed from: protected */
    public void initListener() {
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        this.mZxingview.startCamera();
        this.mZxingview.startSpotAndShowRect();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        this.mZxingview.stopCamera();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        this.mZxingview.onDestroy();
        super.onDestroy();
    }

    public void onScanQRCodeSuccess(String str) {
        a();
        a(str);
    }

    public void onScanQRCodeOpenCameraError() {
        c.d(this.TAG, "open camera error");
    }

    private void a() {
        Vibrator vibrator = (Vibrator) getSystemService("vibrator");
        if (vibrator != null) {
            vibrator.vibrate(200);
        }
    }

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            l.a((CharSequence) "未发现二维码");
        } else if (str.length() != 30) {
            b(str);
        } else {
            try {
                if (!"FY".equalsIgnoreCase(str.substring(0, 2))) {
                    b(str);
                } else if (Integer.parseInt(str.substring(2, 4)) == 0) {
                    a(Integer.parseInt(str.substring(4, 14)));
                } else {
                    b(str);
                }
            } catch (NumberFormatException e) {
                ThrowableExtension.printStackTrace(e);
                c.d(this.TAG, e.getMessage());
                this.mZxingview.startSpot();
            }
        }
    }

    private void a(int i) {
        showTipDiaog();
        IMGroupManager.instance().reqGroupDetailInfo(i, false, new Packetlistener() {
            public void onSuccess(Object obj) {
                if (BaseScanActivity.this.isActivated()) {
                    BaseScanActivity.this.hideTipDialog();
                    if (obj instanceof GroupEntity) {
                        BaseScanActivity.this.a((GroupEntity) obj);
                    }
                }
            }

            public void onFaild() {
                if (BaseScanActivity.this.isActivated()) {
                    BaseScanActivity.this.hideTipDialog();
                    BaseScanActivity.this.mZxingview.startSpot();
                }
                l.a((CharSequence) "未找到该群组信息");
            }

            public void onTimeout() {
                if (BaseScanActivity.this.isActivated()) {
                    BaseScanActivity.this.hideTipDialog();
                    BaseScanActivity.this.mZxingview.startSpot();
                }
                l.c(R.string.no_network_error_toast);
            }
        });
    }

    private void b(String str) {
        ((b) ((b) ((b) ((b) ((b) new b(this).b("二维码内容")).a(str).a(false)).b(false)).a((int) R.string.common_cancel, (OnClickListener) new b(this))).b((int) R.string.common_ok, (OnClickListener) new c(this))).c();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void c(DialogInterface dialogInterface, int i) {
        this.mZxingview.startSpot();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void b(DialogInterface dialogInterface, int i) {
        this.mZxingview.startSpot();
    }

    /* access modifiers changed from: private */
    public void a(GroupEntity groupEntity) {
        ((b) ((b) ((b) ((b) ((b) new b(this).b("申请加群")).a("确认加入该群？").a(false)).b(false)).a((CharSequence) "取消", (OnClickListener) new d(this))).b((CharSequence) "申请", (OnClickListener) new e(this, groupEntity))).c();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        this.mZxingview.startSpot();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void a(GroupEntity groupEntity, DialogInterface dialogInterface, int i) {
        IMGroupManager.instance().reqApplyJoinGroup(groupEntity.peerId, groupEntity.creatorId, new Packetlistener() {
            public void onSuccess(Object obj) {
                l.a((CharSequence) "已发出申请，等待群主审核");
                BaseScanActivity.this.finish();
            }

            public void onFaild() {
                l.c(R.string.no_network_error_toast);
                if (BaseScanActivity.this.isActivated()) {
                    BaseScanActivity.this.mZxingview.startSpot();
                }
            }

            public void onTimeout() {
                l.c(R.string.no_network_error_toast);
                if (BaseScanActivity.this.isActivated()) {
                    BaseScanActivity.this.mZxingview.startSpot();
                }
            }
        });
    }
}
