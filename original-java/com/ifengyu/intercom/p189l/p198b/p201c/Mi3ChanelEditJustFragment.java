package com.ifengyu.intercom.p189l.p198b.p201c;

import android.view.View;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.l.b.c.m1 */
/* loaded from: classes2.dex */
public class Mi3ChanelEditJustFragment extends Mi3ChanelEditBaseFragment implements View.OnClickListener {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B3 */
    public /* synthetic */ void m11769C3(View view) {
        mo8048o2();
    }

    /* renamed from: D3 */
    public static Mi3ChanelEditJustFragment m11768D3() {
        return new Mi3ChanelEditJustFragment();
    }

    /* renamed from: E3 */
    private void m11767E3(ChannelModel channelModel) {
        this.f14258z.f13976w.setVisibility(8);
        if (channelModel.getIsCustomCh()) {
            this.f14258z.f13977x.setText(R.string.clear_channel);
            this.f14258z.f13977x.setVisibility(0);
            return;
        }
        this.f14258z.f13977x.setVisibility(8);
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
        this.f14256A.m11502X();
        this.f14258z.f13973H.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3ChanelEditJustFragment.this.m11769C3(view);
            }
        });
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: u3 */
    protected void mo11579u3() {
        this.f14256A.m11468q();
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: v3 */
    protected void mo11578v3() {
        this.f14256A.m11466r();
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: w3 */
    protected void mo11577w3(ChannelModel channelModel) {
        m11767E3(channelModel);
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
        if (action.equals(OperationResult.ACTION_CLEAR_CHANNEL)) {
            if (status == 1) {
                m10305e3(UIUtils.m8603o(R.string.clear_channel_success));
            } else {
                m10311Y2(UIUtils.m8603o(R.string.clear_channel_fail));
            }
        } else if (action.equals(OperationResult.ACTION_EDIT_CHANNEL) && status != 1) {
            m10311Y2(UIUtils.m8603o(R.string.edit_fail));
        }
    }
}
