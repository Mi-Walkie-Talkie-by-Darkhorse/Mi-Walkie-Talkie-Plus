package com.ifengyu.intercom.ui.imui.ui.main.tab;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ifengyu.im.imservice.entity.ApplyNotify;

final /* synthetic */ class g implements OnClickListener {
    private final SessionListFragment a;
    private final ApplyNotify b;

    g(SessionListFragment sessionListFragment, ApplyNotify applyNotify) {
        this.a = sessionListFragment;
        this.b = applyNotify;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.b(this.b, dialogInterface, i);
    }
}
