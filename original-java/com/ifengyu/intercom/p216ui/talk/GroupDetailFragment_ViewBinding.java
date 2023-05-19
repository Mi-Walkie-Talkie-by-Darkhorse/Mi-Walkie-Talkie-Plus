package com.ifengyu.intercom.p216ui.talk;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.ui.talk.GroupDetailFragment_ViewBinding */
/* loaded from: classes2.dex */
public class GroupDetailFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private GroupDetailFragment f15515a;

    /* renamed from: b */
    private View f15516b;

    /* renamed from: c */
    private View f15517c;

    /* renamed from: d */
    private View f15518d;

    /* renamed from: e */
    private View f15519e;

    /* renamed from: f */
    private View f15520f;

    /* renamed from: g */
    private View f15521g;

    /* renamed from: h */
    private View f15522h;

    /* renamed from: com.ifengyu.intercom.ui.talk.GroupDetailFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C4724a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ GroupDetailFragment f15523a;

        C4724a(GroupDetailFragment_ViewBinding groupDetailFragment_ViewBinding, GroupDetailFragment groupDetailFragment) {
            this.f15523a = groupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15523a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.talk.GroupDetailFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C4725b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ GroupDetailFragment f15524a;

        C4725b(GroupDetailFragment_ViewBinding groupDetailFragment_ViewBinding, GroupDetailFragment groupDetailFragment) {
            this.f15524a = groupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15524a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.talk.GroupDetailFragment_ViewBinding$c */
    /* loaded from: classes2.dex */
    class C4726c extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ GroupDetailFragment f15525a;

        C4726c(GroupDetailFragment_ViewBinding groupDetailFragment_ViewBinding, GroupDetailFragment groupDetailFragment) {
            this.f15525a = groupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15525a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.talk.GroupDetailFragment_ViewBinding$d */
    /* loaded from: classes2.dex */
    class C4727d extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ GroupDetailFragment f15526a;

        C4727d(GroupDetailFragment_ViewBinding groupDetailFragment_ViewBinding, GroupDetailFragment groupDetailFragment) {
            this.f15526a = groupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15526a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.talk.GroupDetailFragment_ViewBinding$e */
    /* loaded from: classes2.dex */
    class C4728e extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ GroupDetailFragment f15527a;

        C4728e(GroupDetailFragment_ViewBinding groupDetailFragment_ViewBinding, GroupDetailFragment groupDetailFragment) {
            this.f15527a = groupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15527a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.talk.GroupDetailFragment_ViewBinding$f */
    /* loaded from: classes2.dex */
    class C4729f extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ GroupDetailFragment f15528a;

        C4729f(GroupDetailFragment_ViewBinding groupDetailFragment_ViewBinding, GroupDetailFragment groupDetailFragment) {
            this.f15528a = groupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15528a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.talk.GroupDetailFragment_ViewBinding$g */
    /* loaded from: classes2.dex */
    class C4730g extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ GroupDetailFragment f15529a;

        C4730g(GroupDetailFragment_ViewBinding groupDetailFragment_ViewBinding, GroupDetailFragment groupDetailFragment) {
            this.f15529a = groupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15529a.onClick(view);
        }
    }

    @UiThread
    public GroupDetailFragment_ViewBinding(GroupDetailFragment groupDetailFragment, View view) {
        this.f15515a = groupDetailFragment;
        groupDetailFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        groupDetailFragment.rvTopList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_top_list, "field 'rvTopList'", RecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.look_all_member, "field 'lookAllMember' and method 'onClick'");
        groupDetailFragment.lookAllMember = (TextView) Utils.castView(findRequiredView, R.id.look_all_member, "field 'lookAllMember'", TextView.class);
        this.f15516b = findRequiredView;
        findRequiredView.setOnClickListener(new C4724a(this, groupDetailFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_set_group_name, "field 'itemSetGroupName' and method 'onClick'");
        groupDetailFragment.itemSetGroupName = (ItemView) Utils.castView(findRequiredView2, R.id.item_set_group_name, "field 'itemSetGroupName'", ItemView.class);
        this.f15517c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C4725b(this, groupDetailFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_set_group_avatar, "field 'itemSetGroupAvatar' and method 'onClick'");
        groupDetailFragment.itemSetGroupAvatar = (ItemView) Utils.castView(findRequiredView3, R.id.item_set_group_avatar, "field 'itemSetGroupAvatar'", ItemView.class);
        this.f15518d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C4726c(this, groupDetailFragment));
        groupDetailFragment.itemGroupId = (ItemView) Utils.findRequiredViewAsType(view, R.id.item_group_id, "field 'itemGroupId'", ItemView.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.item_set_my_group_name_in, "field 'itemSetMyGroupNameIn' and method 'onClick'");
        groupDetailFragment.itemSetMyGroupNameIn = (ItemView) Utils.castView(findRequiredView4, R.id.item_set_my_group_name_in, "field 'itemSetMyGroupNameIn'", ItemView.class);
        this.f15519e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C4727d(this, groupDetailFragment));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.item_change_group_owner, "field 'itemChangeGroupOwner' and method 'onClick'");
        groupDetailFragment.itemChangeGroupOwner = (ItemView) Utils.castView(findRequiredView5, R.id.item_change_group_owner, "field 'itemChangeGroupOwner'", ItemView.class);
        this.f15520f = findRequiredView5;
        findRequiredView5.setOnClickListener(new C4728e(this, groupDetailFragment));
        View findRequiredView6 = Utils.findRequiredView(view, R.id.btn_exit_group, "field 'btnExitGroup' and method 'onClick'");
        groupDetailFragment.btnExitGroup = (QMUIRoundButton) Utils.castView(findRequiredView6, R.id.btn_exit_group, "field 'btnExitGroup'", QMUIRoundButton.class);
        this.f15521g = findRequiredView6;
        findRequiredView6.setOnClickListener(new C4729f(this, groupDetailFragment));
        View findRequiredView7 = Utils.findRequiredView(view, R.id.item_group_qr, "method 'onClick'");
        this.f15522h = findRequiredView7;
        findRequiredView7.setOnClickListener(new C4730g(this, groupDetailFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GroupDetailFragment groupDetailFragment = this.f15515a;
        if (groupDetailFragment != null) {
            this.f15515a = null;
            groupDetailFragment.mTopbar = null;
            groupDetailFragment.rvTopList = null;
            groupDetailFragment.lookAllMember = null;
            groupDetailFragment.itemSetGroupName = null;
            groupDetailFragment.itemSetGroupAvatar = null;
            groupDetailFragment.itemGroupId = null;
            groupDetailFragment.itemSetMyGroupNameIn = null;
            groupDetailFragment.itemChangeGroupOwner = null;
            groupDetailFragment.btnExitGroup = null;
            this.f15516b.setOnClickListener(null);
            this.f15516b = null;
            this.f15517c.setOnClickListener(null);
            this.f15517c = null;
            this.f15518d.setOnClickListener(null);
            this.f15518d = null;
            this.f15519e.setOnClickListener(null);
            this.f15519e = null;
            this.f15520f.setOnClickListener(null);
            this.f15520f = null;
            this.f15521g.setOnClickListener(null);
            this.f15521g = null;
            this.f15522h.setOnClickListener(null);
            this.f15522h = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
