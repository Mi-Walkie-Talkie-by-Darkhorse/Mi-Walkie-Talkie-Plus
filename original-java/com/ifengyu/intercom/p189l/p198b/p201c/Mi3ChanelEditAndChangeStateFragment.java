package com.ifengyu.intercom.p189l.p198b.p201c;

import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.Observer;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.device.mi3.models.Mi3ChannelState;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p189l.p198b.p200b.Mi3AddListenChDialogFragment;
import com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;

/* renamed from: com.ifengyu.intercom.l.b.c.l1 */
/* loaded from: classes2.dex */
public class Mi3ChanelEditAndChangeStateFragment extends Mi3ChanelEditBaseFragment implements View.OnClickListener {

    /* renamed from: C */
    private int f14174C;

    /* renamed from: B3 */
    private void m11781B3() {
        int i = this.f14174C;
        if (i == 1) {
            this.f14256A.m11470p(1);
        } else if (i == 2) {
            this.f14256A.m11470p(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D3 */
    public /* synthetic */ void m11778E3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m11775H3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m11781B3();
        mo8048o2();
    }

    /* renamed from: I3 */
    public static Mi3ChanelEditAndChangeStateFragment m11774I3(int i) {
        Mi3ChanelEditAndChangeStateFragment mi3ChanelEditAndChangeStateFragment = new Mi3ChanelEditAndChangeStateFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("KEY_STATE_CH_INDEX", i);
        mi3ChanelEditAndChangeStateFragment.setArguments(bundle);
        return mi3ChanelEditAndChangeStateFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J3 */
    public void m11773J3(Mi3ChannelState mi3ChannelState) {
        if (mi3ChannelState == null) {
            return;
        }
        ChannelModel ch1Model = mi3ChannelState.getCh1Model();
        ChannelModel ch2Model = mi3ChannelState.getCh2Model();
        int i = this.f14174C;
        if (i == 1) {
            if (ch1Model != null) {
                this.f14258z.f13976w.setText(R.string.exchange_channel);
                this.f14258z.f13976w.setVisibility(0);
            } else {
                this.f14258z.f13976w.setVisibility(8);
            }
        } else if (i == 2) {
            if (ch2Model != null) {
                this.f14258z.f13976w.setText(R.string.exchange_channel);
                this.f14258z.f13976w.setVisibility(0);
            } else {
                this.f14258z.f13976w.setVisibility(8);
            }
        }
        if (ch1Model != null && ch2Model != null) {
            this.f14258z.f13977x.setText(R.string.cancel_listen_channel);
            this.f14258z.f13977x.setVisibility(0);
            return;
        }
        this.f14258z.f13977x.setVisibility(8);
    }

    /* renamed from: K3 */
    private void m11772K3() {
        int i = this.f14174C;
        if (i == 1) {
            new Mi3AddListenChDialogFragment(101).show(getChildFragmentManager(), "Mi3AddListenChDialogFragment");
        } else if (i == 2) {
            new Mi3AddListenChDialogFragment(102).show(getChildFragmentManager(), "Mi3AddListenChDialogFragment");
        }
    }

    /* renamed from: L3 */
    private void m11771L3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.cancel_listen_channel_detail);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C4009f.f14150a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_confirm, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.b.c.d
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                Mi3ChanelEditAndChangeStateFragment.this.m11775H3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f14174C = bundle.getInt("KEY_STATE_CH_INDEX");
        }
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: g3 */
    protected String mo11593g3() {
        return UIUtils.m8603o(R.string.edit);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: i3 */
    public void mo11591i3() {
        super.mo11591i3();
        this.f14258z.f13973H.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3ChanelEditAndChangeStateFragment.this.m11778E3(view);
            }
        });
        this.f14256A.m11502X();
        this.f14256A.m11464t().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3ChanelEditAndChangeStateFragment.this.m11773J3((Mi3ChannelState) obj);
            }
        });
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: t3 */
    protected void mo11580t3() {
        m11772K3();
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: u3 */
    protected void mo11579u3() {
        m11771L3();
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: v3 */
    protected void mo11578v3() {
        this.f14256A.m11466r();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: z3 */
    public void mo11574z3(OperationResult operationResult) {
        if (operationResult == null) {
            return;
        }
        int status = operationResult.getStatus();
        String action = operationResult.getAction();
        action.hashCode();
        if (action.equals(OperationResult.ACTION_EDIT_CHANNEL)) {
            if (status != 1) {
                m10311Y2(UIUtils.m8603o(R.string.edit_fail));
            }
        } else if (action.equals(OperationResult.ACTION_CANCEL_CH_TO_STATE)) {
            if (status == 1) {
                m10305e3(UIUtils.m8603o(R.string.cancel_listen_channel_success));
            } else {
                m10311Y2(UIUtils.m8603o(R.string.cancel_listen_channel_fail));
            }
        }
    }
}
