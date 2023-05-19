package com.ifengyu.intercom.device.mi3gw.fragment;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.p162a.DeviceGroupDetailMemberAdapter;
import com.ifengyu.intercom.device.mi3gw.p164b.DeviceGroupDetailPresenter;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.device.mi3gw.p166d.DeviceGroupDetailView;
import com.ifengyu.intercom.dialog.list.BottomSheetListAdapter;
import com.ifengyu.intercom.dialog.list.ItemListBuilder;
import com.ifengyu.intercom.p205m.p207b.EditTextDialogBuilder;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p214p.NameInputFilter;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.base.BaseMvpFragment;
import com.ifengyu.library.utils.C4968d;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.FileProviderHelper;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.view.ItemView;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.xiaomi.infra.galaxy.fds.Common;
import com.yalantis.ucrop.UCrop;
import com.zhihu.matisse.Matisse;
import com.zhihu.matisse.MimeType;
import com.zhihu.matisse.SelectionCreator;
import com.zhihu.matisse.p276b.p277b.GlideEngine;
import java.io.File;
import java.util.List;

/* loaded from: classes2.dex */
public class DeviceGroupDetailFragment extends BaseMvpFragment<DeviceGroupDetailView, DeviceGroupDetailPresenter> implements DeviceGroupDetailView {

    /* renamed from: A */
    private DeviceGroupDetailMemberAdapter f12544A;

    /* renamed from: B */
    private long f12545B;

    /* renamed from: C */
    private TempGroup f12546C;

    /* renamed from: D */
    private String f12547D;
    @BindView(R.id.btn_exit_group)
    QMUIRoundButton btnExitGroup;
    @BindView(R.id.item_change_group_owner)
    ItemView itemChangeGroupOwner;
    @BindView(R.id.item_group_id)
    ItemView itemGroupId;
    @BindView(R.id.item_set_group_avatar)
    ItemView itemSetGroupAvatar;
    @BindView(R.id.item_set_group_name)
    ItemView itemSetGroupName;
    @BindView(R.id.item_set_my_group_name_in)
    ItemView itemSetMyGroupNameIn;
    @BindView(R.id.look_all_member)
    TextView lookAllMember;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_top_list)
    RecyclerView rvTopList;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A3 */
    public /* synthetic */ void m13663B3(EditTextDialogBuilder editTextDialogBuilder, String str, QMUIDialog qMUIDialog, int i) {
        String trim = editTextDialogBuilder.m7262G().getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            UIUtils.m8593y(R.string.please_input_group_nick_name_in);
        } else if (trim.getBytes().length > 30) {
            UIUtils.m8593y(R.string.name_set_too_lang);
        } else if (trim.equals(str)) {
            qMUIDialog.dismiss();
        } else {
            qMUIDialog.dismiss();
            m10308b3();
            DeviceDataShare.m13732s().m13803E0(this.f12545B, trim);
        }
    }

    /* renamed from: C3 */
    public static DeviceGroupDetailFragment m13662C3(long j) {
        DeviceGroupDetailFragment deviceGroupDetailFragment = new DeviceGroupDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putLong("key_group_gid", j);
        deviceGroupDetailFragment.setArguments(bundle);
        return deviceGroupDetailFragment;
    }

    /* renamed from: D3 */
    private void m13661D3() {
        TempGroup tempGroup = this.f12546C;
        if (tempGroup == null) {
            return;
        }
        this.itemSetGroupName.setValueText(SlTalkClient.m8527d(tempGroup));
        this.itemGroupId.setValueText(String.valueOf(this.f12546C.getGid()));
        this.itemSetGroupName.getAccessoryImageView().setVisibility(0);
        this.itemSetGroupAvatar.getAccessoryImageView().setVisibility(0);
        this.itemSetGroupAvatar.setValueText(null);
        if (SlTalkClient.m8517n(this.f12546C, DeviceDataShare.m13732s().m13740o())) {
            this.itemChangeGroupOwner.setVisibility(0);
        } else {
            this.itemChangeGroupOwner.setVisibility(8);
        }
    }

    /* renamed from: E3 */
    private void m13660E3() {
        ItemListBuilder itemListBuilder = new ItemListBuilder(getContext());
        itemListBuilder.m12445F(UIUtils.m8603o(R.string.upload_photo));
        itemListBuilder.m12445F(UIUtils.m8603o(R.string.upload_local));
        itemListBuilder.m12442I(true);
        itemListBuilder.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.r
            @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
            /* renamed from: a */
            public final void mo9161a(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
                DeviceGroupDetailFragment.this.m13635s3(qMUIDialog, view, i, str, bottomSheetListAdapter);
            }
        });
        itemListBuilder.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: F3 */
    private void m13659F3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.is_sure_exit_group_content);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C3467o.f12685a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_sure, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.n
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                DeviceGroupDetailFragment.this.m13632v3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: G3 */
    private void m13658G3() {
        TempGroup m13746l = DeviceDataShare.m13732s().m13746l(this.f12545B);
        final EditTextDialogBuilder editTextDialogBuilder = new EditTextDialogBuilder(getContext());
        final String m8527d = SlTalkClient.m8527d(m13746l);
        editTextDialogBuilder.m7282x(R.string.group_name);
        EditTextDialogBuilder editTextDialogBuilder2 = editTextDialogBuilder;
        editTextDialogBuilder2.m7259J(R.string.please_input_group_name);
        editTextDialogBuilder2.m7261H(m8527d);
        editTextDialogBuilder2.m7260I(1);
        editTextDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C3473q.f12692a);
        EditTextDialogBuilder editTextDialogBuilder3 = editTextDialogBuilder2;
        editTextDialogBuilder3.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.u
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                DeviceGroupDetailFragment.this.m13629y3(editTextDialogBuilder, m8527d, qMUIDialog, i);
            }
        });
        EditTextDialogBuilder editTextDialogBuilder4 = editTextDialogBuilder3;
        editTextDialogBuilder4.m7284v(1.0f);
        QMUIDialog m7296f = editTextDialogBuilder4.m7296f(R.style.DialogTheme1);
        EditText m7262G = editTextDialogBuilder.m7262G();
        m7262G.setFilters(new InputFilter[]{new NameInputFilter()});
        m7262G.setSelection(m8527d.length());
        m7296f.show();
        C4968d.m8691d(m7262G);
    }

    /* renamed from: H3 */
    private void m13657H3() {
        final EditTextDialogBuilder editTextDialogBuilder = new EditTextDialogBuilder(getContext());
        final String charSequence = this.itemSetMyGroupNameIn.getValueText().toString();
        editTextDialogBuilder.m7282x(R.string.device_group_nickname_in);
        EditTextDialogBuilder editTextDialogBuilder2 = editTextDialogBuilder;
        editTextDialogBuilder2.m7259J(R.string.please_input_group_nick_name_in);
        editTextDialogBuilder2.m7261H(charSequence);
        editTextDialogBuilder2.m7260I(1);
        editTextDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C3460m.f12677a);
        EditTextDialogBuilder editTextDialogBuilder3 = editTextDialogBuilder2;
        editTextDialogBuilder3.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.s
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                DeviceGroupDetailFragment.this.m13663B3(editTextDialogBuilder, charSequence, qMUIDialog, i);
            }
        });
        EditTextDialogBuilder editTextDialogBuilder4 = editTextDialogBuilder3;
        editTextDialogBuilder4.m7284v(1.0f);
        QMUIDialog m7296f = editTextDialogBuilder4.m7296f(R.style.DialogTheme1);
        EditText m7262G = editTextDialogBuilder.m7262G();
        m7262G.setFilters(new InputFilter[]{new NameInputFilter()});
        m7262G.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
        m7296f.show();
        C4968d.m8691d(m7262G);
    }

    /* renamed from: i3 */
    private void m13649i3(Intent intent) {
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
        DeviceDataShare.m13732s().m13777R0(this.f12545B, new File(m1185b.getPath()));
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: j3 */
    private void m13647j3() {
        this.f12544A.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.p
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DeviceGroupDetailFragment.this.m13642n3(baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: l3 */
    private void m13645l3() {
        this.f12546C = DeviceDataShare.m13732s().m13746l(this.f12545B);
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7337q(UIUtils.m8603o(R.string.group_detail));
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceGroupDetailFragment.this.m13639p3(view);
            }
        });
        this.itemSetMyGroupNameIn.setTitleText(UIUtils.m8603o(R.string.device_group_nickname_in));
        this.f12544A = new DeviceGroupDetailMemberAdapter(this, ((DeviceGroupDetailPresenter) this.f15048z).m13814w());
        this.rvTopList.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.rvTopList.setAdapter(this.f12544A);
        m13661D3();
        this.btnExitGroup.setChangeAlphaWhenPress(true);
        m13647j3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ void m13642n3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        int type = ((DeviceGroupDetailPresenter) this.f15048z).m13814w().get(i).getType();
        if (type == 1002) {
            m8041v2(DeviceGroupAddMemberFragment.m13419O3(this.f12545B));
        } else if (type != 1003) {
        } else {
            m8041v2(DeviceGroupRemoveMemberFragment.m13563P3(this.f12545B));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m13639p3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3 */
    public /* synthetic */ void m13635s3(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        qMUIDialog.dismiss();
        if (i == 0) {
            m10316T2("android.permission.CAMERA");
        } else if (i == 1) {
            m10316T2("android.permission.WRITE_EXTERNAL_STORAGE");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m13632v3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m10308b3();
        DeviceDataShare.m13732s().m13758f(this.f12545B);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x3 */
    public /* synthetic */ void m13629y3(EditTextDialogBuilder editTextDialogBuilder, String str, QMUIDialog qMUIDialog, int i) {
        String trim = editTextDialogBuilder.m7262G().getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            UIUtils.m8593y(R.string.please_input_group_name);
        } else if (trim.getBytes().length > 30) {
            UIUtils.m8593y(R.string.name_set_too_lang);
        } else if (trim.equals(str)) {
            qMUIDialog.dismiss();
        } else {
            qMUIDialog.dismiss();
            m10308b3();
            DeviceDataShare.m13732s().m13801F0(this.f12545B, trim);
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f12545B = bundle.getLong("key_group_gid");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        DeviceDataShare.m13732s().m13809B0(this.f12545B);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: O2 */
    protected void mo9611O2() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        File file = new File(getContext().getExternalCacheDir().getAbsolutePath(), "portrait.jpg");
        this.f12547D = file.getAbsolutePath();
        intent.putExtra("output", FileProviderHelper.m8672a(getContext(), file));
        startActivityForResult(intent, 1);
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

    @Override // com.ifengyu.intercom.device.mi3gw.p166d.DeviceGroupDetailView
    /* renamed from: S0 */
    public void mo13656S0() {
        m10306d3(R.string.modify_success);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p166d.DeviceGroupDetailView
    /* renamed from: e */
    public void mo13655e() {
        m10312X2(R.string.exit_group_fail);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p166d.DeviceGroupDetailView
    /* renamed from: e0 */
    public void mo13654e0(TempGroup tempGroup) {
        this.f12546C = tempGroup;
        this.f12544A.notifyDataSetChanged();
        this.lookAllMember.setVisibility(this.f12544A.m17070D().size() < 10 ? 8 : 0);
        m13661D3();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        if (DeviceDataShare.m13732s().m13746l(this.f12545B) == null) {
            return null;
        }
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_group_detail, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13645l3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p166d.DeviceGroupDetailView
    /* renamed from: g */
    public void mo13653g() {
        m10312X2(R.string.modify_fail);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p166d.DeviceGroupDetailView
    /* renamed from: h */
    public void mo13652h() {
        m10312X2(R.string.change_group_name_fail);
    }

    /* renamed from: h3 */
    public void m13651h3(@NonNull Uri uri) {
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

    @Override // com.ifengyu.intercom.device.mi3gw.p166d.DeviceGroupDetailView
    /* renamed from: i */
    public void mo13650i() {
        m10306d3(R.string.change_group_name_success);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p166d.DeviceGroupDetailView
    /* renamed from: j */
    public void mo13648j() {
        m10306d3(R.string.modify_success);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseMvpFragment
    /* renamed from: k3 */
    public DeviceGroupDetailPresenter mo9397g3() {
        return new DeviceGroupDetailPresenter(this.f12545B);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p166d.DeviceGroupDetailView
    /* renamed from: n */
    public void mo13643n() {
        m10304f3(UIUtils.m8603o(R.string.exit_group_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.t
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
            /* renamed from: a */
            public final void mo9105a() {
                DeviceGroupDetailFragment.this.mo8048o2();
            }
        });
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p166d.DeviceGroupDetailView
    /* renamed from: o1 */
    public void mo13641o1(String str) {
        this.itemSetMyGroupNameIn.setValueText(str);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        if (i2 == -1) {
            if (i == 1) {
                if (TextUtils.isEmpty(this.f12547D)) {
                    C4971k.m8657c(this.f15047y, "handleTakePhotoResult#Current photo path is null,please check");
                    return;
                }
                File file = new File(this.f12547D);
                if (!file.exists()) {
                    C4971k.m8657c(this.f15047y, "File not exists");
                } else {
                    m13651h3(FileProviderHelper.m8672a(getContext(), file));
                }
            } else if (i != 2) {
                if (i != 69) {
                    return;
                }
                m13649i3(intent);
            } else if (intent == null) {
                UIUtils.m8592z(UIUtils.m8603o(R.string.toast_cannot_retrieve_selected_image));
            } else {
                List<Uri> m1017g = Matisse.m1017g(intent);
                if (m1017g != null && m1017g.size() != 0) {
                    m13651h3(m1017g.get(0));
                } else {
                    UIUtils.m8592z(UIUtils.m8603o(R.string.toast_cannot_retrieve_selected_image));
                }
            }
        }
    }

    @OnClick({R.id.look_all_member, R.id.item_set_group_name, R.id.item_set_group_avatar, R.id.item_group_qr, R.id.item_set_my_group_name_in, R.id.item_change_group_owner, R.id.btn_exit_group})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_exit_group /* 2131296425 */:
                m13659F3();
                return;
            case R.id.item_change_group_owner /* 2131296832 */:
                m8041v2(DeviceGroupOwnerChangeFragment.m13583S3(this.f12545B));
                return;
            case R.id.item_group_qr /* 2131296837 */:
                m8041v2(DeviceGroupQrShowFragment.m13400v3(this.f12545B));
                return;
            case R.id.item_set_group_avatar /* 2131296854 */:
                m13660E3();
                return;
            case R.id.item_set_group_name /* 2131296855 */:
                m13658G3();
                return;
            case R.id.item_set_my_group_name_in /* 2131296856 */:
                m13657H3();
                return;
            case R.id.look_all_member /* 2131296964 */:
                m8041v2(DeviceGroupAllMemberFragment.m13665m3(this.f12545B));
                return;
            default:
                return;
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p166d.DeviceGroupDetailView
    /* renamed from: q1 */
    public void mo13638q1() {
        m10312X2(R.string.modify_fail);
    }
}
