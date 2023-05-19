package com.ifengyu.intercom.p189l.p198b.p201c;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.event.ConfigFileEvent;
import com.ifengyu.intercom.device.mi3.adapter.entity.ChannelListItemEntity;
import com.ifengyu.intercom.p188k.FragmentMi3RemoteListBinding;
import com.ifengyu.intercom.p189l.p198b.p199a.Mi3RemoteListAdapter;
import com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3BaseListFragment;
import com.ifengyu.library.utils.C4971k;
import com.just.agentweb.ActionActivity;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: com.ifengyu.intercom.l.b.c.s1 */
/* loaded from: classes2.dex */
public class Mi3RemoteListFragment extends Mi3BaseListFragment {

    /* renamed from: C */
    private FragmentMi3RemoteListBinding f14195C;

    /* renamed from: D */
    private Mi3RemoteListAdapter f14196D;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m11732r3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m11597l3(this.f14254B.get(i));
    }

    /* renamed from: s3 */
    public static Mi3RemoteListFragment m11731s3(int i) {
        Mi3RemoteListFragment mi3RemoteListFragment = new Mi3RemoteListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(ActionActivity.KEY_ACTION, i);
        mi3RemoteListFragment.setArguments(bundle);
        return mi3RemoteListFragment;
    }

    /* renamed from: t3 */
    private Mi3RemoteListAdapter m11730t3() {
        switch (this.f14255z) {
            case 101:
            case 102:
            case 103:
                return new Mi3RemoteListAdapter(1, R.layout.item_mi3_remote_channel_list, this.f14254B);
            case 104:
            default:
                return null;
            case 105:
                return new Mi3RemoteListAdapter(2, R.layout.item_mi3_show_all_remote_channel_list, this.f14254B);
            case 106:
                return new Mi3RemoteListAdapter(3, R.layout.item_mi3_show_all_remote_channel_list, this.f14254B);
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        FragmentMi3RemoteListBinding fragmentMi3RemoteListBinding = (FragmentMi3RemoteListBinding) DataBindingUtil.m22966e(getLayoutInflater(), R.layout.fragment_mi3_remote_list, null, false);
        this.f14195C = fragmentMi3RemoteListBinding;
        fragmentMi3RemoteListBinding.m23011A(getActivity());
        mo11601h3();
        m11735o3();
        return this.f14195C.mo23006a();
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3BaseListFragment
    /* renamed from: g3 */
    protected BaseQuickAdapter<ChannelListItemEntity, BaseViewHolder> mo11602g3() {
        return this.f14196D;
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3BaseListFragment
    @SuppressLint({"FragmentLiveDataObserve"})
    /* renamed from: h3 */
    protected void mo11601h3() {
        super.mo11601h3();
        if (this.f14255z != 106) {
            this.f14253A.m11458z().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.n
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    Mi3RemoteListFragment.this.m11596m3((List) obj);
                }
            });
            this.f14253A.m11507S();
        }
    }

    /* renamed from: o3 */
    public void m11735o3() {
        this.f14196D = m11730t3();
        this.f14195C.f13992w.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f14195C.f13992w.setAdapter(this.f14196D);
        this.f14196D.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.l.b.c.o
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                Mi3RemoteListFragment.this.m11732r3(baseQuickAdapter, view, i);
            }
        });
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onConfigFileEvent(ConfigFileEvent configFileEvent) {
        C4971k.m8659a(this.f15047y, "onConfigFileEvent: remote");
        m11596m3(configFileEvent.getRemoteList());
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        EventBus.m174c().m159r(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        EventBus.m174c().m156u(this);
    }
}
