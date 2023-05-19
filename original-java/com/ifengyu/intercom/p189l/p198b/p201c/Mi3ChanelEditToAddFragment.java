package com.ifengyu.intercom.p189l.p198b.p201c;

import android.view.View;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.util.QMUIViewHelper;

/* renamed from: com.ifengyu.intercom.l.b.c.n1 */
/* loaded from: classes2.dex */
public class Mi3ChanelEditToAddFragment extends Mi3ChanelEditBaseFragment implements View.OnClickListener {

    /* compiled from: Mi3ChanelEditToAddFragment.java */
    /* renamed from: com.ifengyu.intercom.l.b.c.n1$a */
    /* loaded from: classes2.dex */
    class View$OnClickListenerC4031a implements View.OnClickListener {
        View$OnClickListenerC4031a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Mi3ChanelEditToAddFragment.this.mo11580t3();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B3 */
    public /* synthetic */ void m11765C3(View view) {
        mo8048o2();
    }

    /* renamed from: D3 */
    public static Mi3ChanelEditToAddFragment m11764D3() {
        return new Mi3ChanelEditToAddFragment();
    }

    /* renamed from: E3 */
    private void m11763E3(ChannelModel channelModel) {
        this.f14257B.setVisibility(0);
        this.f14257B.setEnabled(!channelModel.isEmpty());
        this.f14257B.setImageResource(!channelModel.isEmpty() ? R.drawable.icon_hold_disabled_ok : R.drawable.icon_hold_disabled);
        this.f14258z.f13977x.setText(R.string.clear_channel);
        this.f14258z.f13977x.setVisibility(0);
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: g3 */
    protected String mo11593g3() {
        return UIUtils.m8603o(R.string.add_custom_channel);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: i3 */
    public void mo11591i3() {
        super.mo11591i3();
        this.f14258z.f13973H.m7343k(R.drawable.hoome_icon_close, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3ChanelEditToAddFragment.this.m11765C3(view);
            }
        });
        QMUIAlphaImageButton m7340n = this.f14258z.f13973H.m7340n(R.drawable.icon_hold_disabled, QMUIViewHelper.m7473b());
        this.f14257B = m7340n;
        m7340n.setOnClickListener(new View$OnClickListenerC4031a());
        this.f14257B.setVisibility(8);
        this.f14257B.setChangeAlphaWhenPress(true);
        this.f14258z.f13977x.setChangeAlphaWhenPress(true);
        this.f14257B.setChangeAlphaWhenDisable(true);
        this.f14258z.f13977x.setChangeAlphaWhenDisable(true);
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: t3 */
    protected void mo11580t3() {
        this.f14256A.m11472o();
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: u3 */
    protected void mo11579u3() {
        ChannelModel value = this.f14256A.m11460x().getValue();
        if (value == null) {
            return;
        }
        value.clear();
        this.f14256A.m11460x().postValue(value);
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: v3 */
    protected void mo11578v3() {
        this.f14256A.m11460x().postValue(this.f14256A.m11460x().getValue());
    }

    @Override // com.ifengyu.intercom.p189l.p198b.p201c.p202x1.Mi3ChanelEditBaseFragment
    /* renamed from: w3 */
    protected void mo11577w3(ChannelModel channelModel) {
        m11763E3(channelModel);
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
        if (action.equals(OperationResult.ACTION_INSERT_CHANNEL)) {
            if (status == 1) {
                m10305e3(UIUtils.m8603o(R.string.add_channel_success));
                mo8048o2();
                return;
            }
            m10311Y2(UIUtils.m8603o(R.string.add_channel_fail));
        }
    }
}
