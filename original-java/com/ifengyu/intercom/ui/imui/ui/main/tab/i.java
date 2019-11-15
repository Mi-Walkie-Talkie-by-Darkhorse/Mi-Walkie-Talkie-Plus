package com.ifengyu.intercom.ui.imui.ui.main.tab;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ifengyu.im.imservice.entity.RecentInfo;
import com.ifengyu.im.imservice.services.IMSessionManager;

final /* synthetic */ class i implements OnClickListener {
    private final RecentInfo a;

    i(RecentInfo recentInfo) {
        this.a = recentInfo;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        IMSessionManager.instance().reqRemoveSession(this.a);
    }
}
