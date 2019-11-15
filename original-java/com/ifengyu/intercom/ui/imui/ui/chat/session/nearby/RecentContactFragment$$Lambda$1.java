package com.ifengyu.intercom.ui.imui.ui.chat.session.nearby;

import com.ifengyu.im.DB.entity.GroupEntity;
import io.reactivex.b.g;
import io.reactivex.k;

final /* synthetic */ class RecentContactFragment$$Lambda$1 implements g {
    static final g $instance = new RecentContactFragment$$Lambda$1();

    private RecentContactFragment$$Lambda$1() {
    }

    public Object apply(Object obj) {
        return k.fromIterable(((GroupEntity) obj).getlistGroupMemberIds());
    }
}
