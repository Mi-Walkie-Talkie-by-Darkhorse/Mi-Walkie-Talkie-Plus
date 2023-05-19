package com.ifengyu.intercom.p216ui.widget.frequency;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder;
import com.ifengyu.intercom.p216ui.widget.frequency.ChannelKeyboard;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;

/* renamed from: com.ifengyu.intercom.ui.widget.frequency.c */
/* loaded from: classes2.dex */
public class FrequencyDialogBuilder extends BaseQMUIDialogBuilder<FrequencyDialogBuilder> {

    /* renamed from: u */
    private InterfaceC4943a f16072u;

    /* renamed from: v */
    private String f16073v;

    /* renamed from: w */
    private String f16074w;

    /* compiled from: FrequencyDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.frequency.c$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC4943a {
        /* renamed from: a */
        void mo8879a(QMUIDialog qMUIDialog, int i);
    }

    public FrequencyDialogBuilder(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E */
    public /* synthetic */ void m8883F(QMUIDialog qMUIDialog, ChannelKeyboard channelKeyboard, int i) {
        InterfaceC4943a interfaceC4943a = this.f16072u;
        if (interfaceC4943a != null) {
            interfaceC4943a.mo8879a(qMUIDialog, i);
        }
    }

    /* renamed from: G */
    public FrequencyDialogBuilder m8882G(String str) {
        this.f16074w = str;
        return this;
    }

    /* renamed from: H */
    public FrequencyDialogBuilder m8881H(String str) {
        this.f16073v = str;
        return this;
    }

    /* renamed from: I */
    public FrequencyDialogBuilder m8880I(InterfaceC4943a interfaceC4943a) {
        this.f16072u = interfaceC4943a;
        return this;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    /* renamed from: k */
    protected View mo7246k(@NonNull final QMUIDialog qMUIDialog, @NonNull QMUIDialogView qMUIDialogView, @NonNull Context context) {
        ChannelKeyboard channelKeyboard = new ChannelKeyboard(context);
        channelKeyboard.m8887p(this.f16073v);
        channelKeyboard.m8888o(this.f16074w);
        channelKeyboard.m8889n(new Mi3KeyInterceptor());
        channelKeyboard.m8890m(new ChannelKeyboard.InterfaceC4939b() { // from class: com.ifengyu.intercom.ui.widget.frequency.b
            @Override // com.ifengyu.intercom.p216ui.widget.frequency.ChannelKeyboard.InterfaceC4939b
            /* renamed from: a */
            public final void mo8885a(ChannelKeyboard channelKeyboard2, int i) {
                FrequencyDialogBuilder.this.m8883F(qMUIDialog, channelKeyboard2, i);
            }
        });
        return channelKeyboard;
    }
}
