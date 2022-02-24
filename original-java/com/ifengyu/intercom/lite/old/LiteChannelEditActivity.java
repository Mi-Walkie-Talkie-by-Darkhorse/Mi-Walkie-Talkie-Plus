package com.ifengyu.intercom.lite.old;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.b.a;
import com.ifengyu.intercom.lite.base.BaseActivity;
import com.ifengyu.intercom.lite.c.b.b;
import com.ifengyu.intercom.lite.c.b.c;
import com.ifengyu.intercom.lite.c.b.f;
import com.ifengyu.intercom.lite.models.ChannelModel;
import com.ifengyu.library.a.m;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.util.l;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class LiteChannelEditActivity extends BaseActivity {
    private ChannelModel m;
    @BindView(R.id.btn_clear)
    QMUIRoundButton mBtnClear;
    @BindView(R.id.item_receive_freq)
    ItemView mItemReceiveFreq;
    @BindView(R.id.item_receive_sub_tone)
    ItemView mItemReceiveTone;
    @BindView(R.id.item_send_freq)
    ItemView mItemSendFreq;
    @BindView(R.id.item_send_sub_tone)
    ItemView mItemSendTone;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.tv_description)
    TextView mTvDescription;

    public static void a(Activity activity, ChannelModel channelModel) {
        Intent intent = new Intent(activity, LiteChannelEditActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("channel", channelModel);
        intent.putExtras(bundle);
        activity.startActivityForResult(intent, 0);
    }

    private void x() {
        Button a2 = this.mTopBar.a(R.string.common_cancel, l.a());
        Button c2 = this.mTopBar.c(R.string.common_ok, l.a());
        a2.setTextColor(getResources().getColorStateList(R.color.topbar_left_btn_color_state_list));
        c2.setTextColor(getResources().getColorStateList(R.color.topbar_right_btn_color_state_list));
        a2.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.old.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteChannelEditActivity.this.a(view);
            }
        });
        c2.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.old.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteChannelEditActivity.this.b(view);
            }
        });
        this.mBtnClear.setChangeAlphaWhenPress(true);
        ChannelModel channelModel = this.m;
        if (channelModel != null) {
            this.mTopBar.a(m.a((int) R.string.lite_edit_channel_placeholder, channelModel.getDisplaySeq()));
            z();
        }
    }

    private void y() {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putParcelable("channel", this.m);
        intent.putExtras(bundle);
        setResult(-1, intent);
        finish();
    }

    private void z() {
        this.mItemReceiveFreq.setValueText(this.m.getDisplayReceiveFreq());
        this.mItemSendFreq.setValueText(this.m.getDisplaySendFreq());
        this.mItemReceiveTone.setValueText(this.m.getDisplayReceiveTone());
        this.mItemSendTone.setValueText(this.m.getDisplaySendTone());
    }

    public /* synthetic */ void b(View view) {
        y();
    }

    @OnClick({R.id.item_receive_freq, R.id.item_send_freq, R.id.item_receive_sub_tone, R.id.item_send_sub_tone, R.id.btn_clear})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_clear /* 2131296405 */:
                ChannelModel channelModel = this.m;
                if (channelModel != null) {
                    channelModel.clear();
                    z();
                    return;
                }
                return;
            case R.id.item_receive_freq /* 2131296757 */:
                if (this.m != null) {
                    a(m.b((int) R.string.receive_frequency), this.m.getReceiveFreq(), true);
                    return;
                }
                return;
            case R.id.item_receive_sub_tone /* 2131296758 */:
                if (this.m != null) {
                    a(m.b((int) R.string.receive_sub_tone), true, this.m.getReceiveToneType(), this.m.getReceiveToneValue());
                    return;
                }
                return;
            case R.id.item_send_freq /* 2131296760 */:
                if (this.m != null) {
                    a(m.b((int) R.string.emission_frequency), this.m.getSendFreq(), false);
                    return;
                }
                return;
            case R.id.item_send_sub_tone /* 2131296761 */:
                if (this.m != null) {
                    a(m.b((int) R.string.emissive_sub_tone), false, this.m.getSendToneType(), this.m.getSendToneValue());
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.lite.base.BaseActivity, com.qmuiteam.qmui.arch.QMUIActivity, com.qmuiteam.qmui.arch.a, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_lite_channel_edit);
        ButterKnife.bind(this);
        a(getIntent());
        x();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        a(intent);
    }

    private void a(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.m = (ChannelModel) extras.getParcelable("channel");
        }
    }

    public /* synthetic */ void a(View view) {
        onBackPressed();
    }

    private void a(String str, final boolean z, int i, int i2) {
        final f fVar = new f(this);
        fVar.a(str);
        f fVar2 = fVar;
        fVar2.a(a.f5334a);
        fVar2.a(a.f5335b);
        fVar2.d(i);
        fVar2.e(i2);
        fVar2.a(0, R.string.common_cancel, 2, a.f5759a);
        f fVar3 = fVar2;
        fVar3.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.old.c
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i3) {
                LiteChannelEditActivity.this.a(fVar, z, bVar, i3);
            }
        });
        fVar3.a(R.style.DialogTheme2).show();
    }

    public /* synthetic */ void a(f fVar, boolean z, b bVar, int i) {
        int e = fVar.e();
        int g = fVar.g();
        String f = fVar.f();
        if (z) {
            this.m.setReceiveToneType(e);
            this.m.setReceiveToneValue(g);
            this.mItemReceiveTone.setValueText(f);
        } else {
            this.m.setSendToneType(e);
            this.m.setSendToneValue(g);
            this.mItemSendTone.setValueText(f);
        }
        bVar.dismiss();
    }

    private void a(String str, int i, final boolean z) {
        c cVar = new c(this);
        cVar.a(str);
        c cVar2 = cVar;
        cVar2.d(i);
        cVar2.b(m.b((int) R.string.lite_freq_range_description));
        cVar2.a(new b.c() { // from class: com.ifengyu.intercom.lite.old.d
            @Override // com.ifengyu.intercom.lite.c.b.b.c
            public final void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i2) {
                LiteChannelEditActivity.this.a(z, bVar, i2);
            }
        });
        cVar2.a(R.style.DialogTheme2).show();
    }

    public /* synthetic */ void a(boolean z, com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        if (z) {
            this.m.setReceiveFreq(i);
            this.mItemReceiveFreq.setValueText(this.m.getDisplayReceiveFreq());
        } else {
            this.m.setSendFreq(i);
            this.mItemSendFreq.setValueText(this.m.getDisplaySendFreq());
        }
        bVar.dismiss();
    }
}
