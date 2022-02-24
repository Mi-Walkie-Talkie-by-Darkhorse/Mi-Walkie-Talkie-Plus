package com.ifengyu.intercom.lite.fragment;

import android.content.Context;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.q;
import androidx.lifecycle.x;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.lite.base.recycler.LinearLayoutManagerWapper;
import com.ifengyu.intercom.lite.base.recycler.c;
import com.ifengyu.intercom.lite.event.LiteEvent;
import com.ifengyu.intercom.lite.h.g0;
import com.ifengyu.intercom.lite.h.h0;
import com.ifengyu.intercom.lite.models.ConfigFileModel;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.ifengyu.intercom.lite.utils.j;
import com.ifengyu.intercom.lite.utils.k;
import com.ifengyu.intercom.lite.widget.EmptyView;
import com.ifengyu.library.a.m;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.layout.QMUIConstraintLayout;
import com.qmuiteam.qmui.util.l;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.umeng.analytics.MobclickAgent;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class ConfigFileListFragment extends com.ifengyu.intercom.lite.base.e {
    private QMUIAlphaImageButton A;
    private Button B;
    private Button C;
    private g0 D;
    private h0 E;
    @BindView(R.id.btn_backup)
    QMUIRoundButton mBtnBackup;
    @BindView(R.id.btn_delete)
    QMUIAlphaImageButton mBtnDelete;
    @BindView(R.id.btn_import)
    QMUIAlphaImageButton mBtnImport;
    @BindView(R.id.btn_rename)
    QMUIAlphaImageButton mBtnRename;
    @BindView(R.id.cl_operation_panel)
    QMUIConstraintLayout mClOperationPanel;
    @BindView(R.id.emptyView)
    EmptyView mEmptyView;
    @BindView(R.id.recycler_view)
    RecyclerView mRecyclerView;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    private e z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements q<String> {
        a() {
        }

        /* renamed from: a */
        public void onChanged(String str) {
            ConfigFileListFragment.this.x();
            if (str != null) {
                ConfigFileListFragment.this.a((int) R.string.lite_import_failed);
                return;
            }
            ConfigFileListFragment.this.b((int) R.string.lite_import_success);
            j.a().a(LiteEvent.IMPORTED);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends RecyclerView.i {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void onChanged() {
            ConfigFileListFragment.this.L();
            ConfigFileListFragment.this.K();
            ConfigFileListFragment.this.M();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void onItemRangeInserted(int i, int i2) {
            ConfigFileListFragment.this.L();
            ConfigFileListFragment.this.K();
            ConfigFileListFragment.this.M();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void onItemRangeRemoved(int i, int i2) {
            ConfigFileListFragment.this.L();
            ConfigFileListFragment.this.K();
            ConfigFileListFragment.this.M();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements QMUIDialogAction.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.lite.c.b.d f5437a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f5438b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ConfigFileModel f5439c;

        c(com.ifengyu.intercom.lite.c.b.d dVar, String str, ConfigFileModel configFileModel) {
            this.f5437a = dVar;
            this.f5438b = str;
            this.f5439c = configFileModel;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            String trim = this.f5437a.e().getText().toString().trim();
            if (!TextUtils.isEmpty(trim)) {
                ConfigFileModel configFileModel = new ConfigFileModel(trim.toString(), null, 0L, 0L, null);
                if (!ConfigFileListFragment.this.z.e().contains(configFileModel) || configFileModel.getName().equals(this.f5438b)) {
                    this.f5439c.setName(trim.toString());
                    ConfigFileListFragment.this.D.g(this.f5439c);
                    ConfigFileListFragment.this.a(false);
                    ConfigFileListFragment.this.b((int) R.string.lite_rename_success);
                    bVar.dismiss();
                    return;
                }
                m.d(R.string.lite_toast_config_file_repeat);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements QMUIDialogAction.b {
        d(ConfigFileListFragment configFileListFragment) {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            bVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class e extends com.ifengyu.intercom.lite.base.recycler.c<ConfigFileModel> {
        private boolean k = false;

        public e(Context context, List<ConfigFileModel> list) {
            super(context, list);
        }

        @Override // com.ifengyu.intercom.lite.base.recycler.c
        public int b(int i) {
            return R.layout.item_config_file_layout;
        }

        @Override // com.ifengyu.intercom.lite.base.recycler.c
        protected boolean f() {
            return true;
        }

        public boolean h() {
            return this.k;
        }

        public void a(boolean z) {
            this.k = z;
            a();
        }

        public void a(com.ifengyu.intercom.lite.base.recycler.d dVar, int i, ConfigFileModel configFileModel, boolean z) {
            String str;
            dVar.a(R.id.tv_title, configFileModel.getName());
            dVar.a(R.id.tv_detail, m.a((int) R.string.lite_config_list_item_detail_text, configFileModel.getFrom()));
            if (k.a(configFileModel.getCreateTime())) {
                str = k.a(configFileModel.getCreateTime(), "HH:mm");
            } else {
                str = k.a(configFileModel.getCreateTime(), "yyyy-MM-dd HH:mm");
            }
            dVar.a(R.id.tv_value, str);
            if (h()) {
                if (z) {
                    dVar.a(R.id.iv_arrow, R.mipmap.icon_checkbox_selected);
                } else {
                    dVar.a(R.id.iv_arrow, R.mipmap.icon_checkbox_unselected);
                }
                dVar.d(R.id.tv_value, 8);
                return;
            }
            dVar.a(R.id.iv_arrow, R.mipmap.icon_arrow_right);
            dVar.d(R.id.tv_value, 0);
        }
    }

    private void A() {
        this.D.a(this.z.d());
        this.z.g();
        a(false);
        b(R.string.delete_success);
    }

    private void B() {
        this.mTopBar.f(R.string.lite_config_file_title);
        this.A = this.mTopBar.a();
        Button a2 = this.mTopBar.a(R.string.select_all, l.a());
        this.C = a2;
        a2.setTextColor(androidx.appcompat.a.a.a.b(getContext(), R.color.topbar_left_btn_color_state_list));
        Button c2 = this.mTopBar.c(R.string.completed, l.a());
        this.B = c2;
        c2.setVisibility(8);
        this.B.setTextColor(androidx.appcompat.a.a.a.b(getContext(), R.color.topbar_right_btn_color_state_list));
        this.C.setVisibility(8);
        this.A.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfigFileListFragment.this.b(view);
            }
        });
        this.C.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfigFileListFragment.this.c(view);
            }
        });
        this.B.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfigFileListFragment.this.d(view);
            }
        });
    }

    private void C() {
        this.mBtnBackup.setChangeAlphaWhenPress(false);
        this.mBtnBackup.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfigFileListFragment.this.e(view);
            }
        });
        this.z = new e(getContext(), null);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManagerWapper(getContext(), 1, false));
        this.mRecyclerView.addItemDecoration(new com.ifengyu.intercom.lite.widget.a(m.a(10.0f)));
        this.mRecyclerView.setAdapter(this.z);
        this.z.setOnItemClickListener(new c.a() { // from class: com.ifengyu.intercom.lite.fragment.p
            @Override // com.ifengyu.intercom.lite.base.recycler.c.a
            public final void a(View view, int i, Object obj) {
                ConfigFileListFragment.this.a(view, i, (ConfigFileModel) obj);
            }
        });
        this.z.setOnItemLongClickListener(new c.b() { // from class: com.ifengyu.intercom.lite.fragment.r
            @Override // com.ifengyu.intercom.lite.base.recycler.c.b
            public final void a(View view, int i, Object obj) {
                ConfigFileListFragment.this.a(view, i, obj);
            }
        });
        this.z.registerAdapterDataObserver(new b());
        L();
        K();
        M();
    }

    private void D() {
        g0 g0Var = (g0) x.a(this).a(g0.class);
        this.D = g0Var;
        g0Var.b().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.a0
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                ConfigFileListFragment.this.a((List) obj);
            }
        });
        this.D.d().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.q
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                ConfigFileListFragment.this.a((ConfigFileModel) obj);
            }
        });
        h0 h0Var = (h0) x.a(this).a(h0.class);
        this.E = h0Var;
        h0Var.f().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.u
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                ConfigFileListFragment.this.b((List) obj);
            }
        });
        this.E.c().observe(this, new a());
        this.D.e();
        this.E.m();
    }

    private void E() {
        z();
        this.E.b(1);
    }

    private void F() {
        if (this.z.c() != this.z.getItemCount()) {
            this.C.setText(R.string.select_not_all);
            this.z.b();
            int itemCount = this.z.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                this.z.d(i);
            }
        } else {
            this.C.setText(R.string.select_all);
            this.z.b();
        }
        this.z.notifyDataSetChanged();
    }

    private void G() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
        eVar.d(R.string.lite_config_file_backup_dialog_message);
        eVar.a(0, R.string.common_cancel, 2, o.f5539a);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.fragment.y
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i) {
                ConfigFileListFragment.this.a(bVar, i);
            }
        });
        eVar2.a(R.style.DialogTheme2).show();
    }

    private void H() {
        List<ConfigFileModel> d2 = this.z.d();
        if (d2.size() == 1) {
            ConfigFileModel configFileModel = d2.get(0);
            com.ifengyu.intercom.lite.c.b.d dVar = new com.ifengyu.intercom.lite.c.b.d(getContext());
            String name = configFileModel.getName() != null ? configFileModel.getName() : "";
            dVar.c(R.string.rename);
            com.ifengyu.intercom.lite.c.b.d dVar2 = dVar;
            dVar2.e(R.string.please_input_name);
            dVar2.a((CharSequence) name);
            dVar2.d(1);
            dVar2.a(0, R.string.common_cancel, 2, new d(this));
            com.ifengyu.intercom.lite.c.b.d dVar3 = dVar2;
            dVar3.a(0, R.string.common_ok, 0, new c(dVar, name, configFileModel));
            dVar3.a(R.style.DialogTheme2).show();
            dVar.e().setFilters(new InputFilter[]{new InputFilter.LengthFilter(30)});
            dVar.e().setSelection(name.length());
        }
    }

    private void I() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
        eVar.d(R.string.lite_config_file_delete_message);
        eVar.a(0, R.string.common_cancel, 2, t.f5551a);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.fragment.z
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i) {
                ConfigFileListFragment.this.b(bVar, i);
            }
        });
        eVar2.a(R.style.DialogTheme2).show();
    }

    private void J() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
        eVar.d(R.string.lite_import_confirm_message);
        eVar.a(0, R.string.common_cancel, 2, n.f5535a);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.fragment.m
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i) {
                ConfigFileListFragment.this.c(bVar, i);
            }
        });
        eVar2.a(R.style.DialogTheme2).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        if (this.z.getItemCount() > 0) {
            if (this.mRecyclerView.getVisibility() != 0) {
                this.mRecyclerView.setVisibility(0);
            }
            if (this.mEmptyView.c()) {
                this.mEmptyView.b();
                return;
            }
            return;
        }
        if (this.mRecyclerView.getVisibility() != 8) {
            this.mRecyclerView.setVisibility(8);
        }
        if (!this.mEmptyView.c()) {
            this.mEmptyView.a(R.mipmap.icon_file_none, m.b((int) R.string.lite_config_file_empty_title_text), m.b((int) R.string.lite_config_file_empty_detail_text));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        int c2 = this.z.c();
        boolean z = false;
        this.mBtnRename.setEnabled(c2 == 1);
        this.mBtnImport.setEnabled(c2 == 1);
        QMUIAlphaImageButton qMUIAlphaImageButton = this.mBtnDelete;
        if (c2 > 0) {
            z = true;
        }
        qMUIAlphaImageButton.setEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        if (this.z.h()) {
            int c2 = this.z.c();
            this.mTopBar.a(m.a((int) R.string.lite_config_file_title_select_count, Integer.valueOf(c2)));
            if (c2 == this.z.getItemCount()) {
                this.C.setText(R.string.select_not_all);
            } else {
                this.C.setText(R.string.select_all);
            }
        } else {
            this.mTopBar.f(R.string.lite_config_file_title);
        }
    }

    public static ConfigFileListFragment newInstance() {
        return new ConfigFileListFragment();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.b
    public void o() {
        if (this.z.h()) {
            a(false);
        } else {
            super.o();
        }
    }

    @OnClick({R.id.btn_rename, R.id.btn_import, R.id.btn_delete})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btn_delete) {
            I();
        } else if (id == R.id.btn_import) {
            J();
        } else if (id == R.id.btn_rename) {
            H();
        }
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.config_file_list_fragment, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        B();
        C();
        D();
        return inflate;
    }

    public /* synthetic */ void d(View view) {
        a(false);
    }

    public /* synthetic */ void e(View view) {
        G();
    }

    public /* synthetic */ void b(List list) {
        if (list == null) {
            x();
            a(R.string.lite_backup_failed);
            return;
        }
        ConfigFileModel configFileModel = new ConfigFileModel();
        configFileModel.setCreateTime(System.currentTimeMillis());
        configFileModel.setUpdateTime(System.currentTimeMillis());
        DeviceModel value = this.E.h().getValue();
        configFileModel.setFrom(value != null ? value.getName() : "");
        configFileModel.setChannelModelList(list);
        this.D.a(configFileModel);
    }

    public /* synthetic */ void c(View view) {
        F();
    }

    public /* synthetic */ void a(List list) {
        this.z.a(list);
    }

    public /* synthetic */ void c(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        bVar.dismiss();
        List<ConfigFileModel> d2 = this.z.d();
        if (d2.size() != 1) {
            m.d(R.string.lite_import_failed);
            return;
        }
        a(false);
        z();
        this.E.a(d2.get(0).getId());
        HashMap hashMap = new HashMap();
        hashMap.put("userId", d0.N());
        MobclickAgent.onEventObject(getContext(), "Lite_ImportClick_FromConfigList", hashMap);
    }

    public /* synthetic */ void a(View view, int i, ConfigFileModel configFileModel) {
        if (this.z.h()) {
            this.z.c(i);
            if (this.z.c() == this.z.getItemCount()) {
                this.C.setText(R.string.select_not_all);
            } else {
                this.C.setText(R.string.select_all);
            }
        } else {
            a(ConfigFileDetailFragment.a(configFileModel));
        }
    }

    public /* synthetic */ void a(View view, int i, Object obj) {
        if (!this.z.h()) {
            a(true);
            this.z.c(i);
        }
    }

    public /* synthetic */ void b(View view) {
        t();
    }

    public /* synthetic */ void b(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        A();
        bVar.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        this.z.a(z);
        int i = 0;
        this.A.setVisibility(!z ? 0 : 8);
        this.C.setVisibility(z ? 0 : 8);
        this.B.setVisibility(z ? 0 : 8);
        this.mBtnBackup.setVisibility(!z ? 0 : 8);
        QMUIConstraintLayout qMUIConstraintLayout = this.mClOperationPanel;
        if (!z) {
            i = 8;
        }
        qMUIConstraintLayout.setVisibility(i);
        ((ConstraintLayout.LayoutParams) this.mRecyclerView.getLayoutParams()).j = z ? R.id.cl_operation_panel : R.id.btn_backup;
    }

    public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        E();
        bVar.dismiss();
        HashMap hashMap = new HashMap();
        hashMap.put("userId", d0.N());
        MobclickAgent.onEventObject(getContext(), "Lite_BackupClick_FromConfig", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ConfigFileModel configFileModel) {
        x();
        if (configFileModel != null) {
            this.z.a(0, (int) configFileModel);
            this.mRecyclerView.getLayoutManager().scrollToPosition(0);
            K();
            b(R.string.lite_backup_success);
            return;
        }
        a(R.string.lite_backup_failed);
    }
}
