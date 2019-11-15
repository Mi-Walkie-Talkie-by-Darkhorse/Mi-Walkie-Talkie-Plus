package com.ifengyu.intercom.ui.imui.ui.main.tab;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final /* synthetic */ class c implements OnClickListener {
    private final SessionListFragment a;

    c(SessionListFragment sessionListFragment) {
        this.a = sessionListFragment;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a(dialogInterface, i);
    }
}
