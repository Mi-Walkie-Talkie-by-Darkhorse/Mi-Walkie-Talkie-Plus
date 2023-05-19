package com.ifengyu.intercom.p216ui.widget.dialog;

import android.view.View;
import android.widget.BaseAdapter;
import com.ifengyu.intercom.p216ui.widget.dialog.DialogPlus;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.l */
/* loaded from: classes2.dex */
public interface HolderAdapter extends Holder {
    /* renamed from: b */
    void mo8933b(BaseAdapter baseAdapter);

    void setOnItemClickListener(DialogPlus.OnHolderListener onHolderListener);

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.Holder
    /* synthetic */ void setOnKeyListener(View.OnKeyListener onKeyListener);
}
