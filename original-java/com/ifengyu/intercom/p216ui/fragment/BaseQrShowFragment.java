package com.ifengyu.intercom.p216ui.fragment;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.dialog.list.BottomSheetListAdapter;
import com.ifengyu.intercom.dialog.list.ItemListBuilder;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.groupAdatar.NineGridImageView;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.Callable;

/* renamed from: com.ifengyu.intercom.ui.fragment.BaseQrShowFragment */
/* loaded from: classes2.dex */
public abstract class BaseQrShowFragment extends BaseFragment {
    @BindView(R.id.iv_qr)
    protected ImageView ivQr;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.ngiv_group_avatar)
    protected NineGridImageView ngivGroupAvatar;
    @BindView(R.id.rl_center_shadow)
    QMUILinearLayout rlCenterShadow;
    @BindView(R.id.tv_bottom_prompt)
    protected TextView tvBottomPrompt;
    @BindView(R.id.tv_name)
    protected TextView tvName;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i3 */
    public /* synthetic */ ObservableSource m10160j3() throws Exception {
        return Observable.just(mo9377g3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k3 */
    public /* synthetic */ void m10158l3(Bitmap bitmap) throws Exception {
        this.ivQr.setImageBitmap(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m3 */
    public static /* synthetic */ void m10157m3(Throwable th) throws Exception {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m10155o3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ void m10153q3(View view) {
        m10149u3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3 */
    public /* synthetic */ void m10151s3(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        qMUIDialog.dismiss();
        if (i == 0) {
            m10150t3();
        }
    }

    /* renamed from: t3 */
    private void m10150t3() {
        this.rlCenterShadow.setDrawingCacheEnabled(true);
        this.rlCenterShadow.buildDrawingCache();
        Bitmap drawingCache = this.rlCenterShadow.getDrawingCache();
        if (drawingCache != null) {
            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).getAbsolutePath() + File.separator + "Mitalki");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, "qr_code_" + System.currentTimeMillis() + ".jpg");
            BufferedOutputStream bufferedOutputStream = null;
            try {
                try {
                    try {
                        if (!file2.exists()) {
                            file2.createNewFile();
                        }
                        BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file2));
                        try {
                            drawingCache.compress(Bitmap.CompressFormat.JPEG, 90, bufferedOutputStream2);
                            bufferedOutputStream2.flush();
                            bufferedOutputStream2.close();
                            this.rlCenterShadow.destroyDrawingCache();
                        } catch (IOException e) {
                            e = e;
                            bufferedOutputStream = bufferedOutputStream2;
                            e.printStackTrace();
                            if (bufferedOutputStream != null) {
                                bufferedOutputStream.flush();
                                bufferedOutputStream.close();
                            }
                            this.rlCenterShadow.destroyDrawingCache();
                            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                            intent.setData(Uri.fromFile(file2));
                            getActivity().sendBroadcast(intent);
                            UIUtils.m8593y(R.string.save_qr_to_local_success);
                        } catch (Throwable th) {
                            th = th;
                            bufferedOutputStream = bufferedOutputStream2;
                            if (bufferedOutputStream != null) {
                                try {
                                    bufferedOutputStream.flush();
                                    bufferedOutputStream.close();
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                    throw th;
                                }
                            }
                            this.rlCenterShadow.destroyDrawingCache();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (IOException e3) {
                    e = e3;
                }
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            Intent intent2 = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent2.setData(Uri.fromFile(file2));
            getActivity().sendBroadcast(intent2);
            UIUtils.m8593y(R.string.save_qr_to_local_success);
        }
    }

    /* renamed from: u3 */
    private void m10149u3() {
        ItemListBuilder itemListBuilder = new ItemListBuilder(getContext());
        itemListBuilder.m12445F(UIUtils.m8603o(R.string.save_qr_to_local));
        itemListBuilder.m12445F(UIUtils.m8603o(R.string.common_cancel));
        itemListBuilder.m12442I(true);
        itemListBuilder.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.ui.fragment.u
            @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
            /* renamed from: a */
            public final void mo9161a(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
                BaseQrShowFragment.this.m10151s3(qMUIDialog, view, i, str, bottomSheetListAdapter);
            }
        });
        itemListBuilder.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        ((ObservableSubscribeProxy) Observable.defer(new Callable() { // from class: com.ifengyu.intercom.ui.fragment.r
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return BaseQrShowFragment.this.m10160j3();
            }
        }).compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.t
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                BaseQrShowFragment.this.m10158l3((Bitmap) obj);
            }
        }, C4549q.f15249a);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_group_qr_show, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        mo9376h3();
        return inflate;
    }

    /* renamed from: g3 */
    protected abstract Bitmap mo9377g3();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h3 */
    public void mo9376h3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.group_qr_title);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseQrShowFragment.this.m10155o3(view);
            }
        });
        this.mTopbar.m7340n(R.drawable.group_icon_details, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseQrShowFragment.this.m10153q3(view);
            }
        });
        this.rlCenterShadow.setRadiusAndShadow(UIUtils.m8616b(10.0f), UIUtils.m8616b(15.0f), 0.4f);
    }
}
