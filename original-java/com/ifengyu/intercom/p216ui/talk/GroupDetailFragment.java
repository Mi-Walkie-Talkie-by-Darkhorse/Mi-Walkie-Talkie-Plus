package com.ifengyu.intercom.p216ui.talk;

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
import com.ifengyu.intercom.dialog.list.BottomSheetListAdapter;
import com.ifengyu.intercom.dialog.list.ItemListBuilder;
import com.ifengyu.intercom.p205m.p207b.EditTextDialogBuilder;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p214p.NameInputFilter;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.activity.UserInfoActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.base.BaseMvpFragment;
import com.ifengyu.intercom.p216ui.talk.entity.GroupDetailAdapterMultipleEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.GroupDetailMemberAdapter;
import com.ifengyu.intercom.p216ui.talk.p227c3.GroupDetailPresenter;
import com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView;
import com.ifengyu.library.utils.C4968d;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.FileProviderHelper;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.view.ItemView;
import com.ifengyu.talk.SlTalkClient;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.shanlitech.p245et.model.Group;
import com.xiaomi.infra.galaxy.fds.Common;
import com.yalantis.ucrop.UCrop;
import com.zhihu.matisse.Matisse;
import com.zhihu.matisse.MimeType;
import com.zhihu.matisse.SelectionCreator;
import com.zhihu.matisse.p276b.p277b.GlideEngine;
import java.io.File;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.GroupDetailFragment */
/* loaded from: classes2.dex */
public class GroupDetailFragment extends BaseMvpFragment<GroupDetailView, GroupDetailPresenter> implements GroupDetailView {

    /* renamed from: A */
    private GroupDetailMemberAdapter f15506A;

    /* renamed from: B */
    private Group f15507B;

    /* renamed from: C */
    private String f15508C;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.GroupDetailFragment$a */
    /* loaded from: classes2.dex */
    public class C4722a implements QMUIDialogAction.InterfaceC5249b {

        /* renamed from: a */
        final /* synthetic */ EditTextDialogBuilder f15509a;

        /* renamed from: b */
        final /* synthetic */ String f15510b;

        C4722a(EditTextDialogBuilder editTextDialogBuilder, String str) {
            this.f15509a = editTextDialogBuilder;
            this.f15510b = str;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
        /* renamed from: a */
        public void mo7305a(QMUIDialog qMUIDialog, int i) {
            String trim = this.f15509a.m7262G().getText().toString().trim();
            if (TextUtils.isEmpty(trim)) {
                UIUtils.m8593y(R.string.please_input_group_name);
            } else if (trim.getBytes().length > 30) {
                UIUtils.m8593y(R.string.name_set_too_lang);
            } else if (trim.equals(this.f15510b)) {
                qMUIDialog.dismiss();
            } else {
                qMUIDialog.dismiss();
                GroupDetailFragment.this.m10308b3();
                ((GroupDetailPresenter) ((BaseMvpFragment) GroupDetailFragment.this).f15048z).m9310M(trim);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.GroupDetailFragment$b */
    /* loaded from: classes2.dex */
    public class C4723b implements QMUIDialogAction.InterfaceC5249b {

        /* renamed from: a */
        final /* synthetic */ EditTextDialogBuilder f15512a;

        /* renamed from: b */
        final /* synthetic */ String f15513b;

        C4723b(EditTextDialogBuilder editTextDialogBuilder, String str) {
            this.f15512a = editTextDialogBuilder;
            this.f15513b = str;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
        /* renamed from: a */
        public void mo7305a(QMUIDialog qMUIDialog, int i) {
            String trim = this.f15512a.m7262G().getText().toString().trim();
            if (TextUtils.isEmpty(trim)) {
                UIUtils.m8593y(R.string.please_input_group_nick_name_in);
            } else if (trim.getBytes().length > 30) {
                UIUtils.m8593y(R.string.name_set_too_lang);
            } else if (trim.equals(this.f15513b)) {
                qMUIDialog.dismiss();
            } else {
                qMUIDialog.dismiss();
                GroupDetailFragment.this.m10308b3();
                ((GroupDetailPresenter) ((BaseMvpFragment) GroupDetailFragment.this).f15048z).m9309N(trim);
            }
        }
    }

    /* renamed from: D3 */
    public static GroupDetailFragment m9617D3(Group group) {
        GroupDetailFragment groupDetailFragment = new GroupDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("key_group", group);
        groupDetailFragment.setArguments(bundle);
        return groupDetailFragment;
    }

    /* renamed from: E3 */
    private void m9616E3() {
        this.mTopbar.m7337q(UIUtils.m8602p(R.string.group_detail_s, Integer.valueOf(this.f15507B.getAllMemberCount())));
        this.itemSetGroupName.setValueText(SlTalkClient.m8526e(this.f15507B));
        this.itemGroupId.setValueText(String.valueOf(this.f15507B.getGid()));
        this.itemSetGroupName.getAccessoryImageView().setVisibility(0);
        this.itemSetGroupAvatar.getAccessoryImageView().setVisibility(0);
        this.itemSetGroupAvatar.setValueText(null);
        if (SlTalkClient.m8518m(this.f15507B)) {
            this.itemChangeGroupOwner.setVisibility(0);
        } else {
            this.itemChangeGroupOwner.setVisibility(8);
        }
    }

    /* renamed from: F3 */
    private void m9615F3() {
        ItemListBuilder itemListBuilder = new ItemListBuilder(getContext());
        itemListBuilder.m12445F(UIUtils.m8603o(R.string.upload_photo));
        itemListBuilder.m12445F(UIUtils.m8603o(R.string.upload_local));
        itemListBuilder.m12442I(true);
        itemListBuilder.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.ui.talk.h0
            @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
            /* renamed from: a */
            public final void mo9161a(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
                GroupDetailFragment.this.m9593x3(qMUIDialog, view, i, str, bottomSheetListAdapter);
            }
        });
        itemListBuilder.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: G3 */
    private void m9614G3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.is_sure_exit_group_content);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C4795f0.f15730a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_sure, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.talk.g0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                GroupDetailFragment.this.m9620A3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: H3 */
    private void m9613H3() {
        EditTextDialogBuilder editTextDialogBuilder = new EditTextDialogBuilder(getContext());
        String m8526e = SlTalkClient.m8526e(this.f15507B);
        editTextDialogBuilder.m7282x(R.string.group_name);
        EditTextDialogBuilder editTextDialogBuilder2 = editTextDialogBuilder;
        editTextDialogBuilder2.m7259J(R.string.please_input_group_name);
        editTextDialogBuilder2.m7261H(m8526e);
        editTextDialogBuilder2.m7260I(1);
        editTextDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C4786d0.f15722a);
        EditTextDialogBuilder editTextDialogBuilder3 = editTextDialogBuilder2;
        editTextDialogBuilder3.m7300b(0, R.string.common_ok, 0, new C4722a(editTextDialogBuilder, m8526e));
        EditTextDialogBuilder editTextDialogBuilder4 = editTextDialogBuilder3;
        editTextDialogBuilder4.m7284v(1.0f);
        QMUIDialog m7296f = editTextDialogBuilder4.m7296f(R.style.DialogTheme1);
        EditText m7262G = editTextDialogBuilder.m7262G();
        m7262G.setFilters(new InputFilter[]{new NameInputFilter()});
        m7262G.setSelection(m8526e.length());
        m7296f.show();
        C4968d.m8691d(m7262G);
    }

    /* renamed from: I3 */
    private void m9612I3() {
        EditTextDialogBuilder editTextDialogBuilder = new EditTextDialogBuilder(getContext());
        String charSequence = this.itemSetMyGroupNameIn.getValueText().toString();
        editTextDialogBuilder.m7282x(R.string.group_my_nickname_in);
        EditTextDialogBuilder editTextDialogBuilder2 = editTextDialogBuilder;
        editTextDialogBuilder2.m7259J(R.string.please_input_group_nick_name_in);
        editTextDialogBuilder2.m7261H(charSequence);
        editTextDialogBuilder2.m7260I(1);
        editTextDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C4790e0.f15726a);
        EditTextDialogBuilder editTextDialogBuilder3 = editTextDialogBuilder2;
        editTextDialogBuilder3.m7300b(0, R.string.common_ok, 0, new C4723b(editTextDialogBuilder, charSequence));
        EditTextDialogBuilder editTextDialogBuilder4 = editTextDialogBuilder3;
        editTextDialogBuilder4.m7284v(1.0f);
        QMUIDialog m7296f = editTextDialogBuilder4.m7296f(R.style.DialogTheme1);
        EditText m7262G = editTextDialogBuilder.m7262G();
        m7262G.setFilters(new InputFilter[]{new NameInputFilter()});
        m7262G.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
        m7296f.show();
        C4968d.m8691d(m7262G);
    }

    /* renamed from: m3 */
    private void m9604m3(Intent intent) {
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
        ((GroupDetailPresenter) this.f15048z).m9306R(new File(m1185b.getPath()));
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: n3 */
    private void m9603n3() {
        this.f15506A.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.b0
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                GroupDetailFragment.this.m9599r3(baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: p3 */
    private void m9601p3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupDetailFragment.this.m9597t3(view);
            }
        });
        this.f15506A = new GroupDetailMemberAdapter(this, ((GroupDetailPresenter) this.f15048z).m9314A());
        this.rvTopList.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.rvTopList.setAdapter(this.f15506A);
        m9616E3();
        this.btnExitGroup.setChangeAlphaWhenPress(true);
        m9603n3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m9599r3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        GroupDetailAdapterMultipleEntity groupDetailAdapterMultipleEntity = ((GroupDetailPresenter) this.f15048z).m9314A().get(i);
        switch (groupDetailAdapterMultipleEntity.getType()) {
            case 1001:
                UserInfoActivity.m10426N(getContext(), groupDetailAdapterMultipleEntity.getMember().getUser(), 3);
                return;
            case 1002:
                m8041v2(GroupAddMemberFragment.m9109T3(this.f15507B));
                return;
            case 1003:
                m8041v2(MemberRemoveFragment.m9499M3(this.f15507B));
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m9597t3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m9595v3() {
        MainActivity.start(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m9593x3(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        qMUIDialog.dismiss();
        if (i == 0) {
            m10316T2("android.permission.CAMERA");
        } else if (i == 1) {
            m10316T2("android.permission.WRITE_EXTERNAL_STORAGE");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z3 */
    public /* synthetic */ void m9620A3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m10308b3();
        ((GroupDetailPresenter) this.f15048z).m9308O();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f15507B = (Group) bundle.getSerializable("key_group");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        ((GroupDetailPresenter) this.f15048z).m9307Q();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView
    /* renamed from: F0 */
    public void mo9208F0(String str) {
        this.itemSetMyGroupNameIn.setValueText(str);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView
    /* renamed from: J0 */
    public void mo9207J0() {
        TalkActivity.m9412N(getContext(), this.f15507B);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView
    /* renamed from: O */
    public void mo9206O() {
        this.f15506A.notifyDataSetChanged();
        this.lookAllMember.setVisibility(this.f15506A.m17070D().size() < 10 ? 8 : 0);
        this.mTopbar.m7337q(UIUtils.m8602p(R.string.group_detail_s, Integer.valueOf(this.f15507B.getAllMemberCount())));
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: O2 */
    protected void mo9611O2() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        File file = new File(getContext().getExternalCacheDir().getAbsolutePath(), "portrait.jpg");
        this.f15508C = file.getAbsolutePath();
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

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView
    /* renamed from: c */
    public void mo9205c(Group group) {
        this.f15507B = group;
        m9616E3();
        mo9102E2();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView
    /* renamed from: e */
    public void mo9204e() {
        m10312X2(R.string.exit_group_fail);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        if (this.f15507B == null) {
            return null;
        }
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_group_detail, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9601p3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView
    /* renamed from: g */
    public void mo9203g() {
        m10312X2(R.string.modify_fail);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView
    /* renamed from: h */
    public void mo9202h() {
        m10312X2(R.string.change_group_name_fail);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView
    /* renamed from: i */
    public void mo9201i() {
        m10306d3(R.string.change_group_name_success);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView
    /* renamed from: j */
    public void mo9200j() {
        m10306d3(R.string.modify_success);
    }

    /* renamed from: l3 */
    public void m9605l3(@NonNull Uri uri) {
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

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView
    /* renamed from: n */
    public void mo9199n() {
        m10304f3(UIUtils.m8603o(R.string.exit_group_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.ui.talk.a0
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
            /* renamed from: a */
            public final void mo9105a() {
                GroupDetailFragment.this.m9595v3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseMvpFragment
    /* renamed from: o3 */
    public GroupDetailPresenter mo9397g3() {
        return new GroupDetailPresenter(getContext(), this.f15507B);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        if (i2 == -1) {
            if (i == 1) {
                if (TextUtils.isEmpty(this.f15508C)) {
                    C4971k.m8657c(this.f15047y, "handleTakePhotoResult#Current photo path is null,please check");
                    return;
                }
                File file = new File(this.f15508C);
                if (!file.exists()) {
                    C4971k.m8657c(this.f15047y, "File not exists");
                } else {
                    m9605l3(FileProviderHelper.m8672a(getContext(), file));
                }
            } else if (i != 2) {
                if (i != 69) {
                    return;
                }
                m9604m3(intent);
            } else if (intent == null) {
                UIUtils.m8592z(UIUtils.m8603o(R.string.toast_cannot_retrieve_selected_image));
            } else {
                List<Uri> m1017g = Matisse.m1017g(intent);
                if (m1017g != null && m1017g.size() != 0) {
                    m9605l3(m1017g.get(0));
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
                m9614G3();
                return;
            case R.id.item_change_group_owner /* 2131296832 */:
                m8041v2(GroupOwnerChangeFragment.m9570U3(this.f15507B));
                return;
            case R.id.item_group_qr /* 2131296837 */:
                m8041v2(GroupQrShowFragment.m9375v3(this.f15507B));
                return;
            case R.id.item_set_group_avatar /* 2131296854 */:
                m9615F3();
                return;
            case R.id.item_set_group_name /* 2131296855 */:
                m9613H3();
                return;
            case R.id.item_set_my_group_name_in /* 2131296856 */:
                m9612I3();
                return;
            case R.id.look_all_member /* 2131296964 */:
                m8041v2(GroupAllMemberFragment.m9622I3(this.f15507B));
                return;
            default:
                return;
        }
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView
    /* renamed from: v */
    public void mo9198v() {
        m10312X2(R.string.modify_fail);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupDetailView
    /* renamed from: x0 */
    public void mo9197x0() {
        m10306d3(R.string.modify_success);
    }
}
