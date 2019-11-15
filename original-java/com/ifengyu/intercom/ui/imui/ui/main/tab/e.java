package com.ifengyu.intercom.ui.imui.ui.main.tab;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ifengyu.im.imservice.entity.InviteNotify;

final /* synthetic */ class e implements OnClickListener {
    private final SessionListFragment a;
    private final InviteNotify b;

    e(SessionListFragment sessionListFragment, InviteNotify inviteNotify) {
        this.a = sessionListFragment;
        this.b = inviteNotify;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.b(this.b, dialogInterface, i);
    }
}
