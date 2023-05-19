package com.ifengyu.intercom.device.mi3gw.fragment;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener;
import com.ifengyu.intercom.dialog.list.BottomSheetListAdapter;
import com.ifengyu.intercom.dialog.list.ItemListBuilder;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p205m.p207b.EditTextDialogBuilder;
import com.ifengyu.intercom.p214p.NameInputFilter;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.library.utils.C4968d;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.FileProviderHelper;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.view.ItemView;
import com.ifengyu.talk.http.entity.TempGroup;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.xiaomi.infra.galaxy.fds.Common;
import com.yalantis.ucrop.UCrop;
import com.zhihu.matisse.Matisse;
import com.zhihu.matisse.MimeType;
import com.zhihu.matisse.SelectionCreator;
import com.zhihu.matisse.p276b.p277b.GlideEngine;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2.dex */
public class DeviceInfoSettingFragment extends BaseFragment implements OnDeviceDataShareListener {
    @BindView(R.id.deviceId)
    ItemView deviceId;
    @BindView(R.id.deviceNickname)
    ItemView deviceNickname;
    @BindView(R.id.iv_avatar)
    QMUIRadiusImageView ivAvatar;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;

    /* renamed from: z */
    private String f12586z;

    /* renamed from: h3 */
    private void m13557h3(Intent intent) {
        if (intent == null) {
            C4971k.m8657c(this.f15047y, "handleCropResult#Intent data is null.");
            return;
        }
        Uri m1185b = UCrop.m1185b(intent);
        if (m1185b == null) {
            C4971k.m8657c(this.f15047y, "handleCropResult#File uri is null.");
            return;
        }
        m10308b3();
        DeviceDataShare.m13732s().m13781P0(new File(m1185b.getPath()));
    }

    /* renamed from: i3 */
    private void m13556i3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.device_device_info);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.z0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceInfoSettingFragment.this.m13554k3(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m13554k3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m13552m3(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        qMUIDialog.dismiss();
        if (i == 0) {
            m10316T2("android.permission.CAMERA");
        } else if (i == 1) {
            m10316T2("android.permission.WRITE_EXTERNAL_STORAGE");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m13549p3(EditTextDialogBuilder editTextDialogBuilder, String str, QMUIDialog qMUIDialog, int i) {
        String trim = editTextDialogBuilder.m7262G().getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            UIUtils.m8593y(R.string.please_info_nickname_hint);
        } else if (trim.getBytes().length > 30) {
            UIUtils.m8593y(R.string.name_set_too_lang);
        } else if (trim.equals(str)) {
            qMUIDialog.dismiss();
        } else {
            qMUIDialog.dismiss();
            m10308b3();
            DeviceDataShare.m13732s().m13779Q0(trim);
        }
    }

    /* renamed from: q3 */
    public static DeviceInfoSettingFragment m13548q3() {
        return new DeviceInfoSettingFragment();
    }

    /* renamed from: r3 */
    private void m13547r3() {
        ItemListBuilder itemListBuilder = new ItemListBuilder(getContext());
        itemListBuilder.m12445F(UIUtils.m8603o(R.string.upload_photo));
        itemListBuilder.m12445F(UIUtils.m8603o(R.string.upload_local));
        itemListBuilder.m12442I(true);
        itemListBuilder.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.x0
            @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
            /* renamed from: a */
            public final void mo9161a(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
                DeviceInfoSettingFragment.this.m13552m3(qMUIDialog, view, i, str, bottomSheetListAdapter);
            }
        });
        itemListBuilder.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: s3 */
    private void m13546s3() {
        final EditTextDialogBuilder editTextDialogBuilder = new EditTextDialogBuilder(getContext());
        final String charSequence = this.deviceNickname.getValueText().toString();
        editTextDialogBuilder.m7282x(R.string.device_info_nickname);
        EditTextDialogBuilder editTextDialogBuilder2 = editTextDialogBuilder;
        editTextDialogBuilder2.m7259J(R.string.please_info_nickname_hint);
        editTextDialogBuilder2.m7261H(charSequence);
        editTextDialogBuilder2.m7260I(1);
        editTextDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C3499y0.f12729a);
        EditTextDialogBuilder editTextDialogBuilder3 = editTextDialogBuilder2;
        editTextDialogBuilder3.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.w0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                DeviceInfoSettingFragment.this.m13549p3(editTextDialogBuilder, charSequence, qMUIDialog, i);
            }
        });
        EditTextDialogBuilder editTextDialogBuilder4 = editTextDialogBuilder3;
        editTextDialogBuilder4.m7284v(1.0f);
        QMUIDialog m7296f = editTextDialogBuilder4.m7296f(R.style.DialogTheme1);
        EditText m7262G = editTextDialogBuilder.m7262G();
        m7262G.setFilters(new InputFilter[]{new NameInputFilter(30)});
        m7262G.setSelection(charSequence.length());
        m7296f.show();
        C4968d.m8691d(m7262G);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: D0 */
    public void mo13429D0(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: E */
    public void mo13428E(long j, String str) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        if (DeviceDataShare.m13732s().m13736q() == null) {
            return;
        }
        NetDeviceModel m13736q = DeviceDataShare.m13732s().m13736q();
        ImageLoader.m8704g(this, this.ivAvatar, m13736q.getAvatar());
        this.deviceNickname.setValueText(m13736q.getNickname());
        this.deviceId.setValueText(m13736q.getAccount());
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: F */
    public void mo13427F(long... jArr) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: G0 */
    public void mo13426G0() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: H */
    public void mo13425H(TempGroup tempGroup) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: L */
    public void mo13424L(NetDeviceModel netDeviceModel) {
        mo9102E2();
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: L0 */
    public void mo13423L0() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: M0 */
    public void mo13422M0(ArrayList<TempGroup> arrayList) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: O0 */
    public void mo13420O0() {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: O2 */
    protected void mo9611O2() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        File file = new File(getContext().getExternalCacheDir().getAbsolutePath(), "portrait.jpg");
        this.f12586z = file.getAbsolutePath();
        intent.putExtra("output", FileProviderHelper.m8672a(getContext(), file));
        startActivityForResult(intent, 1);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: P */
    public void mo13418P(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: R0 */
    public void mo13417R0(long j) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: R2 */
    protected void mo9610R2() {
        SelectionCreator m1023a = Matisse.m1020d(this).m1023a(MimeType.m1033g());
        m1023a.m1026e(true);
        m1023a.m1030a(false);
        m1023a.m1027d(1);
        m1023a.m1024g(0.85f);
        m1023a.m1025f(2131886372);
        m1023a.m1028c(new GlideEngine());
        m1023a.m1029b(2);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: S */
    public void mo13416S() {
        m10306d3(R.string.modify_success);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: X0 */
    public void mo13415X0(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: Y */
    public void mo13414Y(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: a1 */
    public void mo13413a1(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: d0 */
    public void mo13412d0(TempGroup tempGroup, ArrayList<TempGroup> arrayList) {
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        DeviceDataShare.m13732s().addListener(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_device_info_settinig, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13556i3();
        return inflate;
    }

    /* renamed from: g3 */
    public void m13558g3(@NonNull Uri uri) {
        if (getContext() == null || getContext().getExternalCacheDir() == null) {
            return;
        }
        UCrop.C6484a c6484a = new UCrop.C6484a();
        c6484a.m1176b(false);
        c6484a.m1174d(false);
        c6484a.m1172f(true);
        c6484a.m1173e(true);
        c6484a.m1171g(UIUtils.m8614d(R.color.black));
        c6484a.m1170h(UIUtils.m8614d(R.color.black));
        c6484a.m1169i(UIUtils.m8614d(R.color.white));
        c6484a.m1175c(60);
        UCrop m1184c = UCrop.m1184c(uri, Uri.fromFile(new File(getContext().getExternalCacheDir().getAbsolutePath(), "portrait_crop.jpg")));
        m1184c.m1180g(1.0f, 1.0f);
        m1184c.m1179h(Common.HTTP_STATUS_BAD_REQUEST, Common.HTTP_STATUS_BAD_REQUEST);
        m1184c.m1178i(c6484a);
        m1184c.m1181f(getContext(), this, 69);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: h1 */
    public void mo13411h1(long... jArr) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: i0 */
    public void mo13410i0(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: k0 */
    public void mo13409k0(long... jArr) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: k1 */
    public void mo13408k1() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: l0 */
    public void mo13407l0(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: o0 */
    public void mo13406o0() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        if (i2 == -1) {
            if (i == 1) {
                if (TextUtils.isEmpty(this.f12586z)) {
                    C4971k.m8657c(this.f15047y, "handleTakePhotoResult#Current photo path is null,please check");
                    return;
                }
                File file = new File(this.f12586z);
                if (!file.exists()) {
                    C4971k.m8657c(this.f15047y, "File not exists");
                } else {
                    m13558g3(FileProviderHelper.m8672a(getContext(), file));
                }
            } else if (i != 2) {
                if (i != 69) {
                    return;
                }
                m13557h3(intent);
            } else if (intent == null) {
                UIUtils.m8592z(UIUtils.m8603o(R.string.toast_cannot_retrieve_selected_image));
            } else {
                List<Uri> m1017g = Matisse.m1017g(intent);
                if (m1017g != null && m1017g.size() != 0) {
                    m13558g3(m1017g.get(0));
                } else {
                    UIUtils.m8592z(UIUtils.m8603o(R.string.toast_cannot_retrieve_selected_image));
                }
            }
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        DeviceDataShare.m13732s().removeListener(this);
    }

    @OnClick({R.id.device_avatar_ll, R.id.deviceNickname})
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.deviceNickname) {
            m13546s3();
        } else if (id != R.id.device_avatar_ll) {
        } else {
            m13547r3();
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: p */
    public void mo13405p(long j, String str) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: r */
    public void mo13404r(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: t0 */
    public void mo13403t0(long... jArr) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: t1 */
    public void mo13402t1(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: w0 */
    public void mo13401w0() {
        m10312X2(R.string.modify_fail);
    }
}
