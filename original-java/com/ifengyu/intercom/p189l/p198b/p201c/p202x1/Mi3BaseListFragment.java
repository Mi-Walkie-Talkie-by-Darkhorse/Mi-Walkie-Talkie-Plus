package com.ifengyu.intercom.p189l.p198b.p201c.p202x1;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.device.mi3.adapter.entity.ChannelListItemEntity;
import com.ifengyu.intercom.device.mi3.models.Mi3ChannelState;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p189l.p198b.p201c.Mi3ChanelEditJustFragment;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3ViewModel;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.just.agentweb.ActionActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.ifengyu.intercom.l.b.c.x1.j */
/* loaded from: classes2.dex */
public abstract class Mi3BaseListFragment extends BaseFragment {

    /* renamed from: A */
    protected Mi3ViewModel f14253A;

    /* renamed from: B */
    protected final ArrayList<ChannelListItemEntity> f14254B = new ArrayList<>();

    /* renamed from: z */
    protected int f14255z;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m11598k3(OperationResult operationResult) {
        if (operationResult == null) {
            return;
        }
        int status = operationResult.getStatus();
        String action = operationResult.getAction();
        action.hashCode();
        if (action.equals(OperationResult.ACTION_ADD_CH_TO_STATE)) {
            if (status == 1) {
                m10305e3(UIUtils.m8603o(R.string.insert_success));
            } else {
                m10311Y2(UIUtils.m8603o(R.string.insert_failed));
            }
        } else if (action.equals(OperationResult.ACTION_UPDATE_CH_TO_STATE)) {
            if (status == 1) {
                m10305e3(UIUtils.m8603o(R.string.replace_channel_success));
            } else {
                m10311Y2(UIUtils.m8603o(R.string.replace_channel_fail));
            }
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f14255z = bundle.getInt(ActionActivity.KEY_ACTION);
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    public void mo9102E2() {
    }

    /* renamed from: g3 */
    protected abstract BaseQuickAdapter<ChannelListItemEntity, BaseViewHolder> mo11602g3();

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"FragmentLiveDataObserve"})
    /* renamed from: h3 */
    public void mo11601h3() {
        Mi3ViewModel mi3ViewModel = (Mi3ViewModel) new ViewModelProvider(requireActivity()).m22691a(Mi3ViewModel.class);
        this.f14253A = mi3ViewModel;
        mi3ViewModel.m11464t().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.x1.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3BaseListFragment.this.m11595n3((Mi3ChannelState) obj);
            }
        });
        this.f14253A.m11459y().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.x1.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3BaseListFragment.this.m11598k3((OperationResult) obj);
            }
        });
    }

    /* renamed from: i3 */
    protected boolean m11600i3() {
        int i = this.f14255z;
        return i == 101 || i == 102 || i == 103;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l3 */
    public void m11597l3(ChannelListItemEntity channelListItemEntity) {
        if (channelListItemEntity.getStatus() != 0) {
            return;
        }
        switch (this.f14255z) {
            case 101:
                this.f14253A.m11498a0(channelListItemEntity.getChannel(), 1);
                return;
            case 102:
                this.f14253A.m11498a0(channelListItemEntity.getChannel(), 2);
                return;
            case 103:
                this.f14253A.m11474n(channelListItemEntity.getChannel());
                return;
            case 104:
            default:
                return;
            case 105:
                this.f14253A.m11487g0(channelListItemEntity.getChannel());
                m8041v2(Mi3ChanelEditJustFragment.m11768D3());
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: m3 */
    public void m11596m3(List<ChannelModel> list) {
        if (list == null) {
            return;
        }
        this.f14254B.clear();
        for (int i = 0; i < list.size(); i++) {
            ChannelListItemEntity channelListItemEntity = new ChannelListItemEntity();
            channelListItemEntity.setChannel(list.get(i));
            channelListItemEntity.setStatus(0);
            this.f14254B.add(channelListItemEntity);
        }
        if (m11600i3()) {
            Mi3ChannelState value = this.f14253A.m11464t().getValue();
            if (value == null) {
                return;
            }
            m11595n3(value);
            return;
        }
        mo11602g3().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
        if (r2.getChannel().getChannelType() != r9.getChannelType()) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006a, code lost:
        if (r2.getChannel().getChannelSeq() != r9.getChannelSeq()) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006c, code lost:
        r2.setStatus(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b6, code lost:
        if (r5.getChannel().getChannelType() != r9.getChannelType()) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c4, code lost:
        if (r5.getChannel().getChannelSeq() != r9.getChannelSeq()) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c6, code lost:
        r5.setStatus(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0110, code lost:
        if (r5.getChannel().getChannelType() != r9.getChannelType()) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x011e, code lost:
        if (r5.getChannel().getChannelSeq() != r9.getChannelSeq()) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0120, code lost:
        r5.setStatus(2);
     */
    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: n3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m11595n3(Mi3ChannelState mi3ChannelState) {
        if (mi3ChannelState == null) {
            return;
        }
        ChannelModel ch1Model = mi3ChannelState.getCh1Model();
        ChannelModel ch2Model = mi3ChannelState.getCh2Model();
        if (ch1Model == null && ch2Model == null) {
            return;
        }
        switch (this.f14255z) {
            case 101:
                Iterator<ChannelListItemEntity> it2 = this.f14254B.iterator();
                while (it2.hasNext()) {
                    ChannelListItemEntity next = it2.next();
                    if (ch1Model != null && next.getChannel().getChannelType() == ch1Model.getChannelType() && next.getChannel().getChannelSeq() == ch1Model.getChannelSeq()) {
                        next.setStatus(1);
                    } else {
                        next.setStatus(0);
                    }
                }
                break;
            case 102:
                Iterator<ChannelListItemEntity> it3 = this.f14254B.iterator();
                while (it3.hasNext()) {
                    ChannelListItemEntity next2 = it3.next();
                    if (ch1Model != null && next2.getChannel().getChannelType() == ch1Model.getChannelType() && next2.getChannel().getChannelSeq() == ch1Model.getChannelSeq()) {
                        next2.setStatus(2);
                    } else {
                        next2.setStatus(0);
                    }
                }
                break;
            case 103:
                Iterator<ChannelListItemEntity> it4 = this.f14254B.iterator();
                while (it4.hasNext()) {
                    ChannelListItemEntity next3 = it4.next();
                    if (ch1Model != null && next3.getChannel().getChannelType() == ch1Model.getChannelType() && next3.getChannel().getChannelSeq() == ch1Model.getChannelSeq()) {
                        next3.setStatus(2);
                    } else {
                        next3.setStatus(0);
                    }
                }
                break;
        }
        mo11602g3().notifyDataSetChanged();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        RxBus.m11806d().m11803g(this);
        this.f14253A.m11493d0();
    }
}
