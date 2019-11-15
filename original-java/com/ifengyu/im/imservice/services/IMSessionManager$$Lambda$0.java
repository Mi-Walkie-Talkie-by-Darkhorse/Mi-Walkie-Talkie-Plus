package com.ifengyu.im.imservice.services;

import com.ifengyu.im.imservice.entity.RecentInfo;
import java.util.Comparator;

final /* synthetic */ class IMSessionManager$$Lambda$0 implements Comparator {
    static final Comparator $instance = new IMSessionManager$$Lambda$0();

    private IMSessionManager$$Lambda$0() {
    }

    public int compare(Object obj, Object obj2) {
        return IMSessionManager.lambda$sort$0$IMSessionManager((RecentInfo) obj, (RecentInfo) obj2);
    }
}
