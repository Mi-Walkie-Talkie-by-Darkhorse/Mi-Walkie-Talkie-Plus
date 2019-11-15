package com.ifengyu.intercom.ui.imui.ui.chat.session.nearby;

import com.ifengyu.im.imservice.manager.IMContactManager;
import io.reactivex.b.g;

final /* synthetic */ class RecentContactFragment$$Lambda$2 implements g {
    static final g $instance = new RecentContactFragment$$Lambda$2();

    private RecentContactFragment$$Lambda$2() {
    }

    public Object apply(Object obj) {
        return IMContactManager.instance().findContact(((Integer) obj).intValue());
    }
}
