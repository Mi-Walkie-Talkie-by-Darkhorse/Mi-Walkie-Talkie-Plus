package com.ifengyu.intercom.p189l.p198b.p201c;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.event.ConfigFileEvent;
import com.ifengyu.intercom.device.mi3.adapter.entity.ChannelListItemEntity;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p188k.FragmentMi3CustomListBinding;
import com.ifengyu.intercom.p189l.p198b.p199a.Mi3CustomListAdapter;
import com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3BaseListFragment;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.UIUtils;
import com.just.agentweb.ActionActivity;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: com.ifengyu.intercom.l.b.c.q1 */
/* loaded from: classes2.dex */
public class Mi3CustomListFragment extends Mi3BaseListFragment {

    /* renamed from: C */
    private FragmentMi3CustomListBinding f14188C;

    /* renamed from: D */
    private Mi3CustomListAdapter f14189D;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m11745r3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m11597l3(this.f14254B.get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m11743t3(View view) {
        List<ChannelModel> value = this.f14253A.m11463u().getValue();
        if (value == null) {
            return;
        }
        if (value.size() >= 80) {
            UIUtils.m8593y(R.string.toast_the_num_of_custom_channels_has_reached_the_limit);
            return;
        }
        this.f14253A.m11489f0();
        m8041v2(Mi3ChanelEditToAddFragment.m11764D3());
    }

    /* renamed from: v3 */
    public static Mi3CustomListFragment m11741v3(int i) {
        Mi3CustomListFragment mi3CustomListFragment = new Mi3CustomListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(ActionActivity.KEY_ACTION, i);
        mi3CustomListFragment.setArguments(bundle);
        return mi3CustomListFragment;
    }

    /* renamed from: w3 */
    private Mi3CustomListAdapter m11740w3() {
        switch (this.f14255z) {
            case 101:
            case 102:
            case 103:
                return new Mi3CustomListAdapter(1, R.layout.item_mi3_custom_channel_list, this.f14254B);
            case 104:
            default:
                return null;
            case 105:
                return new Mi3CustomListAdapter(2, R.layout.item_mi3_show_all_custom_channel_list, this.f14254B);
            case 106:
                return new Mi3CustomListAdapter(3, R.layout.item_mi3_show_all_custom_channel_list, this.f14254B);
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        FragmentMi3CustomListBinding fragmentMi3CustomListBinding = (FragmentMi3CustomListBinding) DataBindingUtil.m22966e(getLayoutInflater(), R.layout.fragment_mi3_custom_list, null, false);
        this.f14188C = fragmentMi3CustomListBinding;
        fragmentMi3CustomListBinding.m23011A(getActivity());
        mo11601h3();
        m11747p3();
        return this.f14188C.mo23006a();
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3BaseListFragment
    /* renamed from: g3 */
    protected BaseQuickAdapter<ChannelListItemEntity, BaseViewHolder> mo11602g3() {
        return this.f14189D;
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3BaseListFragment
    @SuppressLint({"FragmentLiveDataObserve"})
    /* renamed from: h3 */
    protected void mo11601h3() {
        super.mo11601h3();
        if (this.f14255z != 106) {
            this.f14253A.m11463u().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.l
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    Mi3CustomListFragment.this.m11596m3((List) obj);
                }
            });
            this.f14253A.m11509Q();
        }
    }

    /* renamed from: o3 */
    public View m11748o3() {
        View inflate = getLayoutInflater().inflate(R.layout.empty_list_layout, (ViewGroup) this.f14188C.f13987x.getParent(), false);
        ((ImageView) inflate.findViewById(R.id.empty_image)).setImageResource(R.drawable.channel_icon_none_mi3);
        ((TextView) inflate.findViewById(R.id.empty_word)).setText(R.string.add_channel_list_none);
        return inflate;
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onConfigFileEvent(ConfigFileEvent configFileEvent) {
        C4971k.m8659a(this.f15047y, "onConfigFileEvent: custom");
        m11596m3(configFileEvent.getCustomList());
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

    /* renamed from: p3 */
    public void m11747p3() {
        Mi3CustomListAdapter m11740w3 = m11740w3();
        this.f14189D = m11740w3;
        m11740w3.m17034i0(m11748o3());
        this.f14188C.f13987x.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f14188C.f13987x.setAdapter(this.f14189D);
        this.f14189D.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.l.b.c.m
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                Mi3CustomListFragment.this.m11745r3(baseQuickAdapter, view, i);
            }
        });
        if (this.f14255z == 105) {
            this.f14188C.f13986w.setVisibility(0);
            this.f14188C.f13986w.setChangeAlphaWhenPress(true);
            this.f14188C.f13986w.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Mi3CustomListFragment.this.m11743t3(view);
                }
            });
        }
    }
}
