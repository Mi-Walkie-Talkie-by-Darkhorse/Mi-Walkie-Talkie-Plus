package com.ifengyu.intercom.p216ui.fragment.tab;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.chad.library.adapter.base.p115l.OnItemLongClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.DensityUtils;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.fragment.tab.p221j0.RecentTalkAdapter;
import com.ifengyu.intercom.p216ui.fragment.tab.p223k0.RecentTalkPresenter;
import com.ifengyu.intercom.p216ui.fragment.tab.p224l0.RecentTalkView;
import com.ifengyu.intercom.p216ui.talk.ContactFragment;
import com.ifengyu.intercom.p216ui.talk.TalkActivity;
import com.ifengyu.library.event.SimpleEvent;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import com.ifengyu.talk.models.RecentTalkModel;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.p242c.QMUISkinManager;
import com.qmuiteam.qmui.util.QMUIStatusBarHelper;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

@SuppressLint({"NonConstantResourceId"})
/* renamed from: com.ifengyu.intercom.ui.fragment.tab.RecentTalkFragment */
/* loaded from: classes2.dex */
public class RecentTalkFragment extends BaseTabFragment<RecentTalkView, RecentTalkPresenter> implements RecentTalkView {

    /* renamed from: B */
    private RecentTalkAdapter f15286B;

    /* renamed from: C */
    private QMUIAlphaImageButton f15287C;
    @BindView(R.id.cur_talk_status)
    TextView curTalkStatus;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView recyclerView;

    /* renamed from: l3 */
    private View m9928l3() {
        View inflate = getLayoutInflater().inflate(R.layout.empty_list_layout, (ViewGroup) this.recyclerView.getParent(), false);
        ((ImageView) inflate.findViewById(R.id.empty_image)).setImageResource(R.drawable.intercom_icon_none);
        ((TextView) inflate.findViewById(R.id.empty_word)).setText(R.string.recent_talk_empty);
        ((TextView) inflate.findViewById(R.id.empty_detail)).setText(R.string.recent_talk_empty_detail);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m9924p3(View view) {
        m8041v2(ContactFragment.m9640P3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m9922r3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        RecentTalkModel recentTalkModel = ((RecentTalkPresenter) this.f15048z).m9861y().get(i);
        if (recentTalkModel.getGroup() != null) {
            TalkActivity.m9412N(getContext(), recentTalkModel.getGroup());
            return;
        }
        TempGroup tempGroup = new TempGroup();
        tempGroup.setGid(recentTalkModel.getGroupId().longValue());
        tempGroup.setGname(recentTalkModel.getGroupName());
        TalkActivity.m9411O(getContext(), null, tempGroup);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ boolean m9920t3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m9915y3(this.f15286B.m17070D().get(i));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v3 */
    public /* synthetic */ void m9917w3(String[] strArr, RecentTalkModel recentTalkModel, DialogInterface dialogInterface, int i) {
        if (i != 0) {
            if (i == 1 && strArr[i].equals(UIUtils.m8603o(R.string.common_delete))) {
                if (recentTalkModel.getGroup().isCurrentGroup()) {
                    recentTalkModel.getGroup().leave();
                }
                ((RecentTalkPresenter) this.f15048z).m9862w(recentTalkModel);
            }
        } else if (strArr[i].equals(UIUtils.m8603o(R.string.cur_group_cancel_monitor))) {
            recentTalkModel.getGroup().leave();
        } else if (strArr[i].equals(UIUtils.m8603o(R.string.cur_group_auto_monitor))) {
            recentTalkModel.getGroup().join();
        } else if (strArr[i].equals(UIUtils.m8603o(R.string.common_delete))) {
            ((RecentTalkPresenter) this.f15048z).m9862w(recentTalkModel);
        }
        dialogInterface.dismiss();
    }

    /* renamed from: x3 */
    public static BaseFragment m9916x3() {
        return new RecentTalkFragment();
    }

    /* renamed from: y3 */
    private void m9915y3(final RecentTalkModel recentTalkModel) {
        String str;
        if (recentTalkModel.getGroup() != null) {
            str = UIUtils.m8603o(recentTalkModel.getGroup().isCurrentGroup() ? R.string.cur_group_cancel_monitor : R.string.cur_group_auto_monitor);
        } else {
            str = null;
        }
        final String[] strArr = TextUtils.isEmpty(str) ? new String[]{UIUtils.m8603o(R.string.common_delete), UIUtils.m8603o(R.string.common_cancel)} : new String[]{str, UIUtils.m8603o(R.string.common_delete), UIUtils.m8603o(R.string.common_cancel)};
        QMUIDialog.C5262c c5262c = new QMUIDialog.C5262c(getActivity());
        c5262c.m7283w(QMUISkinManager.m7933g(getContext()));
        QMUIDialog.C5262c c5262c2 = c5262c;
        c5262c2.m7251G(strArr, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.tab.f0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                RecentTalkFragment.this.m9917w3(strArr, recentTalkModel, dialogInterface, i);
            }
        });
        c5262c2.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        ((RecentTalkPresenter) this.f15048z).m9864J();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        EventBus.m174c().m159r(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_recent_talk, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9926n3();
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseMvpFragment
    /* renamed from: m3 */
    public RecentTalkPresenter mo9397g3() {
        return new RecentTalkPresenter(getContext());
    }

    /* renamed from: n3 */
    protected void m9926n3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.setPadding(0, QMUIStatusBarHelper.m7488f(getContext()) == 0 ? DensityUtils.m11079a(getActivity()) : QMUIStatusBarHelper.m7488f(getContext()), 0, 0);
        this.mTopbar.m7338p(R.string.talk_title);
        this.mTopbar.m7340n(R.drawable.common_icon_add, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.tab.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecentTalkFragment.this.m9913h3(view);
            }
        });
        QMUIAlphaImageButton m7340n = this.mTopbar.m7340n(SlTalkClient.m8513r().m8530a().m8453h() ? R.drawable.intercom_icon_address_red : R.drawable.intercom_icon_address, QMUIViewHelper.m7473b());
        this.f15287C = m7340n;
        m7340n.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.tab.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecentTalkFragment.this.m9924p3(view);
            }
        });
        RecentTalkAdapter recentTalkAdapter = new RecentTalkAdapter(this, ((RecentTalkPresenter) this.f15048z).m9861y());
        this.f15286B = recentTalkAdapter;
        recentTalkAdapter.m17034i0(m9928l3());
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.recyclerView.setAdapter(this.f15286B);
        this.f15286B.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.fragment.tab.d0
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                RecentTalkFragment.this.m9922r3(baseQuickAdapter, view, i);
            }
        });
        this.f15286B.setOnItemLongClickListener(new OnItemLongClickListener() { // from class: com.ifengyu.intercom.ui.fragment.tab.e0
            @Override // com.chad.library.adapter.base.p115l.OnItemLongClickListener
            /* renamed from: a */
            public final boolean mo9914a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                return RecentTalkFragment.this.m9920t3(baseQuickAdapter, view, i);
            }
        });
        this.curTalkStatus.setOnClickListener(View$OnClickListenerC4572c0.f15294a);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBus.m174c().m156u(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(SimpleEvent simpleEvent) {
        switch (simpleEvent.getEvent()) {
            case 20:
            case 21:
                this.f15287C.setImageResource(R.drawable.intercom_icon_address_red);
                return;
            case 22:
                this.f15287C.setImageResource(R.drawable.intercom_icon_address);
                return;
            default:
                return;
        }
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.tab.p224l0.RecentTalkView
    /* renamed from: y0 */
    public void mo9851y0(int i) {
        if (i == 0 || i == 1 || i == 2) {
            this.curTalkStatus.setVisibility(0);
        } else if (i != 3) {
        } else {
            this.curTalkStatus.setVisibility(8);
        }
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.tab.p224l0.RecentTalkView
    /* renamed from: z0 */
    public void mo9850z0() {
        this.f15286B.notifyDataSetChanged();
    }
}
