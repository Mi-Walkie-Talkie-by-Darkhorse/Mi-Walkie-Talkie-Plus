package com.ifengyu.intercom.ui.imui.ui.chat.adapter;

import android.support.v7.widget.RecyclerView;
import com.ifengyu.im.imservice.entity.RecentInfo;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.RecentContactsCallback;
import com.ifengyu.library.widget.recyclerview.adapter.b;
import com.ifengyu.library.widget.recyclerview.d.a;
import java.util.List;

public class RecentContactAdapter extends b<RecentInfo, a> {
    private RecentContactsCallback callback;

    interface ViewType {
        public static final int VIEW_TYPE_SYSTEM = 1;
        public static final int VIEW_TYPE_TEAM = 2;
    }

    public RecentContactAdapter(RecyclerView recyclerView, List<RecentInfo> list) {
        super(recyclerView, list);
        addItemType(1, R.layout.im_sytem_recent_contact_list_item, SystemRecentViewHolder.class);
        addItemType(2, R.layout.im_recent_contact_list_item, CommonRecentViewHolder.class);
    }

    /* access modifiers changed from: protected */
    public int getViewType(RecentInfo recentInfo) {
        if ((recentInfo.getSessionType() != 1 || recentInfo.getLatestMsgType() != 0) && recentInfo.getSessionType() == 3) {
            return 2;
        }
        return 1;
    }

    /* access modifiers changed from: protected */
    public String getItemKey(RecentInfo recentInfo) {
        return recentInfo.getSessionKey();
    }

    public RecentContactsCallback getCallback() {
        return this.callback;
    }

    public void setCallback(RecentContactsCallback recentContactsCallback) {
        this.callback = recentContactsCallback;
    }
}
