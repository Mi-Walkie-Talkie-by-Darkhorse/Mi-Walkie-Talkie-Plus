package com.ifengyu.intercom.p189l.p190a.p192b.p194b;

import android.annotation.SuppressLint;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.p026a.p027a.AppCompatResources;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.chad.library.adapter.base.p115l.OnItemLongClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.configFile.entity.ConfigItemAdapterEntity;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.device.lite.widget.SpaceItemDecoration;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.ConfigFileModel;
import com.ifengyu.intercom.p188k.ConfigFileListFragmentBinding;
import com.ifengyu.intercom.p189l.p190a.p192b.p193a.ConfigFileAdapter;
import com.ifengyu.intercom.p189l.p190a.p192b.p195c.ConfigFileViewModel;
import com.ifengyu.intercom.p205m.p207b.EditTextDialogBuilder;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/* renamed from: com.ifengyu.intercom.l.a.b.b.z */
/* loaded from: classes2.dex */
public abstract class BaseConfigFileListFragment extends BaseFragment implements View.OnClickListener {

    /* renamed from: A */
    private QMUIAlphaImageButton f14082A;

    /* renamed from: B */
    private Button f14083B;

    /* renamed from: C */
    private Button f14084C;

    /* renamed from: D */
    private ConfigFileAdapter f14085D;

    /* renamed from: E */
    protected ConfigFileViewModel f14086E;

    /* renamed from: z */
    private ConfigFileListFragmentBinding f14087z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseConfigFileListFragment.java */
    /* renamed from: com.ifengyu.intercom.l.a.b.b.z$a */
    /* loaded from: classes2.dex */
    public class C3969a extends RecyclerView.AbstractC0830i {
        C3969a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0830i
        public void onChanged() {
            BaseConfigFileListFragment.this.m11891a4();
            BaseConfigFileListFragment.this.m11890b4();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0830i
        public void onItemRangeChanged(int i, int i2) {
            BaseConfigFileListFragment.this.m11891a4();
            BaseConfigFileListFragment.this.m11890b4();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0830i
        public void onItemRangeInserted(int i, int i2) {
            BaseConfigFileListFragment.this.m11891a4();
            BaseConfigFileListFragment.this.m11890b4();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0830i
        public void onItemRangeRemoved(int i, int i2) {
            BaseConfigFileListFragment.this.m11891a4();
            BaseConfigFileListFragment.this.m11890b4();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A3 */
    public /* synthetic */ void m11912B3(List list) {
        if (list == null) {
            m10312X2(R.string.import_config_file_failed);
        } else {
            mo11757P3(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D3 */
    public /* synthetic */ void m11909E3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        mo11755R3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m11906H3(EditTextDialogBuilder editTextDialogBuilder, String str, ConfigFileModel configFileModel, QMUIDialog qMUIDialog, int i) {
        String trim = editTextDialogBuilder.m7262G().getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            return;
        }
        ConfigFileModel configFileModel2 = new ConfigFileModel(trim.toString(), null, 0L, 0L, null);
        if (((Set) this.f14085D.m17070D().stream().map(C3944a.f14050a).collect(Collectors.toSet())).contains(configFileModel2) && !configFileModel2.getName().equals(str)) {
            UIUtils.m8593y(R.string.config_file_rename_repeat);
            return;
        }
        configFileModel.setName(trim.toString());
        this.f14086E.m11848W(configFileModel);
        m11893Y3(false);
        m10306d3(R.string.config_file_rename_success);
        qMUIDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J3 */
    public /* synthetic */ void m11903K3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        this.f14086E.m11845e(this.f14085D.m11937s0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M3 */
    public /* synthetic */ void m11900N3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        ArrayList<ConfigFileModel> m11937s0 = this.f14085D.m11937s0();
        if (m11937s0.size() != 1) {
            UIUtils.m8593y(R.string.import_config_file_failed);
            return;
        }
        m11893Y3(false);
        mo11754S3(m11937s0.get(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O3 */
    public void m11899O3(ConfigFileModel configFileModel) {
        if (configFileModel != null) {
            this.f14085D.m17037h(0, new ConfigItemAdapterEntity(false, configFileModel));
            this.f14087z.f13926B.getLayoutManager().scrollToPosition(0);
            m10306d3(R.string.config_backup_success);
            return;
        }
        m10312X2(R.string.config_backup_failed);
    }

    /* renamed from: T3 */
    private void m11898T3() {
        if (this.f14085D.m11936t0() != this.f14085D.m17070D().size()) {
            this.f14083B.setText(R.string.select_not_all);
            this.f14085D.m11933w0(true);
            return;
        }
        this.f14083B.setText(R.string.select_all);
        this.f14085D.m11933w0(false);
    }

    /* renamed from: U3 */
    private void m11897U3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.config_file_backup_dialog_message);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C3956m.f14062a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.a.b.b.p
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                BaseConfigFileListFragment.this.m11909E3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: V3 */
    private void m11896V3() {
        ArrayList<ConfigFileModel> m11937s0 = this.f14085D.m11937s0();
        if (m11937s0.size() != 1) {
            return;
        }
        final ConfigFileModel configFileModel = m11937s0.get(0);
        final EditTextDialogBuilder editTextDialogBuilder = new EditTextDialogBuilder(getContext());
        final String name = configFileModel.getName() != null ? configFileModel.getName() : "";
        editTextDialogBuilder.m7282x(R.string.rename);
        EditTextDialogBuilder editTextDialogBuilder2 = editTextDialogBuilder;
        editTextDialogBuilder2.m7259J(R.string.please_input_name);
        editTextDialogBuilder2.m7261H(name);
        editTextDialogBuilder2.m7260I(1);
        editTextDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C3958o.f14064a);
        EditTextDialogBuilder editTextDialogBuilder3 = editTextDialogBuilder2;
        editTextDialogBuilder3.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.a.b.b.s
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                BaseConfigFileListFragment.this.m11906H3(editTextDialogBuilder, name, configFileModel, qMUIDialog, i);
            }
        });
        editTextDialogBuilder3.m7296f(R.style.DialogTheme1).show();
        editTextDialogBuilder.m7262G().setFilters(new InputFilter[]{new InputFilter.LengthFilter(30)});
        editTextDialogBuilder.m7262G().setSelection(name.length());
    }

    /* renamed from: W3 */
    private void m11895W3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.lite_config_file_delete_message);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C3964u.f14073a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.a.b.b.i
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                BaseConfigFileListFragment.this.m11903K3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: X3 */
    private void m11894X3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.import_config_file_confirm_message);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C3966w.f14075a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.a.b.b.q
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                BaseConfigFileListFragment.this.m11900N3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: Y3 */
    private void m11893Y3(boolean z) {
        m11892Z3(z, -1);
    }

    /* renamed from: Z3 */
    private void m11892Z3(boolean z, int i) {
        this.f14085D.m11934v0(z, i);
        this.f14082A.setVisibility(!z ? 0 : 8);
        this.f14083B.setVisibility(z ? 0 : 8);
        this.f14084C.setVisibility(z ? 0 : 8);
        this.f14087z.f13925A.setVisibility(z ? 0 : 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a4 */
    public void m11891a4() {
        int m11936t0 = this.f14085D.m11936t0();
        this.f14087z.f13932z.setEnabled(m11936t0 == 1);
        this.f14087z.f13931y.setEnabled(m11936t0 == 1);
        this.f14087z.f13930x.setEnabled(m11936t0 > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b4 */
    public void m11890b4() {
        if (this.f14085D.m11935u0()) {
            int m11936t0 = this.f14085D.m11936t0();
            this.f14087z.f13927C.m7337q(UIUtils.m8602p(R.string.config_file_title_select_count, Integer.valueOf(m11936t0)));
            if (m11936t0 == this.f14085D.m17070D().size()) {
                this.f14083B.setText(R.string.select_not_all);
                return;
            } else {
                this.f14083B.setText(R.string.select_all);
                return;
            }
        }
        this.f14087z.f13927C.m7338p(R.string.config_file_title);
    }

    /* renamed from: j3 */
    private void m11886j3() {
        if (getContext() == null) {
            return;
        }
        this.f14087z.f13927C.m7338p(R.string.config_file_title);
        this.f14082A = this.f14087z.f13927C.m7344h();
        Button m7342l = this.f14087z.f13927C.m7342l(R.string.select_all, QMUIViewHelper.m7473b());
        this.f14083B = m7342l;
        m7342l.setTextColor(AppCompatResources.m26123c(getContext(), R.color.topbar_left_btn_color_state_list));
        this.f14083B.setVisibility(8);
        Button m7339o = this.f14087z.f13927C.m7339o(R.string.completed, QMUIViewHelper.m7473b());
        this.f14084C = m7339o;
        m7339o.setTextColor(AppCompatResources.m26123c(getContext(), R.color.topbar_right_btn_color_state_list));
        this.f14084C.setVisibility(8);
        this.f14082A.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.a.b.b.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseConfigFileListFragment.this.m11883n3(view);
            }
        });
        this.f14083B.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.a.b.b.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseConfigFileListFragment.this.m11881p3(view);
            }
        });
        this.f14084C.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.a.b.b.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseConfigFileListFragment.this.m11879r3(view);
            }
        });
        this.f14087z.f13929w.setChangeAlphaWhenPress(true);
        ConfigFileAdapter configFileAdapter = new ConfigFileAdapter(R.layout.item_config_file_layout, new ArrayList());
        this.f14085D = configFileAdapter;
        configFileAdapter.m17034i0(m11887i3());
        this.f14087z.f13926B.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f14087z.f13926B.addItemDecoration(new SpaceItemDecoration(UIUtils.m8616b(10.0f)));
        this.f14087z.f13926B.setAdapter(this.f14085D);
        this.f14085D.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.l.a.b.b.t
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                BaseConfigFileListFragment.this.m11877t3(baseQuickAdapter, view, i);
            }
        });
        this.f14085D.setOnItemLongClickListener(new OnItemLongClickListener() { // from class: com.ifengyu.intercom.l.a.b.b.v
            @Override // com.chad.library.adapter.base.p115l.OnItemLongClickListener
            /* renamed from: a */
            public final boolean mo9914a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                return BaseConfigFileListFragment.this.m11875v3(baseQuickAdapter, view, i);
            }
        });
        this.f14085D.registerAdapterDataObserver(new C3969a());
        m11893Y3(false);
        m11891a4();
        m11890b4();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ void m11883n3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m11881p3(View view) {
        m11898T3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m11879r3(View view) {
        m11893Y3(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m11877t3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ConfigItemAdapterEntity configItemAdapterEntity = this.f14085D.m17070D().get(i);
        if (this.f14085D.m11935u0()) {
            this.f14085D.m11932x0(i, !configItemAdapterEntity.isSelect());
            if (this.f14085D.m11936t0() == this.f14085D.m17070D().size()) {
                this.f14083B.setText(R.string.select_not_all);
                return;
            } else {
                this.f14083B.setText(R.string.select_all);
                return;
            }
        }
        mo11756Q3(configItemAdapterEntity.getConfigFile());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ boolean m11875v3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (!this.f14085D.m11935u0()) {
            m11892Z3(true, i);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m11873x3(List list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new ConfigItemAdapterEntity(false, (ConfigFileModel) it2.next()));
        }
        this.f14085D.m17028l0(arrayList);
        ConfigFileAdapter configFileAdapter = this.f14085D;
        configFileAdapter.notifyItemRangeChanged(0, configFileAdapter.m17070D().size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y3 */
    public /* synthetic */ void m11871z3(OperationResult operationResult) {
        if (operationResult != null && OperationResult.ACTION_CONFIG_FILE_DELETE.equals(operationResult.getAction())) {
            if (operationResult.getStatus() == 1) {
                m10305e3(UIUtils.m8603o(R.string.delete_success));
                this.f14086E.m11851T();
            } else {
                m10311Y2(UIUtils.m8603o(R.string.delete_failed));
            }
            m11893Y3(false);
        }
    }

    /* renamed from: P3 */
    protected abstract void mo11757P3(List<ChannelModel> list);

    /* renamed from: Q3 */
    protected abstract void mo11756Q3(ConfigFileModel configFileModel);

    /* renamed from: R3 */
    protected abstract void mo11755R3();

    /* renamed from: S3 */
    protected abstract void mo11754S3(ConfigFileModel configFileModel);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: d2 */
    public void mo8057d2() {
        if (this.f14085D.m11935u0()) {
            m11893Y3(false);
        } else {
            super.mo8057d2();
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        ConfigFileListFragmentBinding configFileListFragmentBinding = (ConfigFileListFragmentBinding) DataBindingUtil.m22966e(getLayoutInflater(), R.layout.config_file_list_fragment, null, false);
        this.f14087z = configFileListFragmentBinding;
        configFileListFragmentBinding.m23011A(requireActivity());
        this.f14087z.setClickListener(this);
        mo11749k3();
        m11886j3();
        return this.f14087z.mo23006a();
    }

    /* renamed from: i3 */
    public View m11887i3() {
        View inflate = getLayoutInflater().inflate(R.layout.empty_list_layout, (ViewGroup) this.f14087z.f13926B.getParent(), false);
        ((ImageView) inflate.findViewById(R.id.empty_image)).setImageResource(R.mipmap.channel_icon_none_mi3);
        ((TextView) inflate.findViewById(R.id.empty_word)).setText(R.string.no_any_config_file);
        return inflate;
    }

    @SuppressLint({"FragmentLiveDataObserve"})
    /* renamed from: k3 */
    public void mo11749k3() {
        ConfigFileViewModel configFileViewModel = (ConfigFileViewModel) new ViewModelProvider(this).m22691a(ConfigFileViewModel.class);
        this.f14086E = configFileViewModel;
        configFileViewModel.m11843g().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.a.b.b.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseConfigFileListFragment.this.m11873x3((List) obj);
            }
        });
        this.f14086E.m11838l().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.a.b.b.k
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseConfigFileListFragment.this.m11871z3((OperationResult) obj);
            }
        });
        this.f14086E.m11841i().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.a.b.b.r
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseConfigFileListFragment.this.m11899O3((ConfigFileModel) obj);
            }
        });
        this.f14086E.m11842h().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.a.b.b.l
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseConfigFileListFragment.this.m11912B3((List) obj);
            }
        });
        this.f14086E.m11851T();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btnBackup) {
            m11897U3();
        } else if (id == R.id.btnRename) {
            m11896V3();
        } else if (id == R.id.btnImport) {
            m11894X3();
        } else if (id == R.id.btnDelete) {
            m11895W3();
        }
    }
}
