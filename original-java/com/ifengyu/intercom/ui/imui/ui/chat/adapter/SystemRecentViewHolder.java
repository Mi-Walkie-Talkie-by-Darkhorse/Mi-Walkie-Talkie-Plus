package com.ifengyu.intercom.ui.imui.ui.chat.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.im.imservice.entity.RecentInfo;
import com.ifengyu.intercom.R;
import com.ifengyu.library.util.c;
import com.ifengyu.library.util.k;
import com.ifengyu.library.widget.recyclerview.adapter.BaseQuickAdapter;
import com.ifengyu.library.widget.recyclerview.d.a;
import com.ifengyu.library.widget.recyclerview.d.b;
import com.ifengyu.library.widget.view.QMUIRadiusImageView;

public class SystemRecentViewHolder extends b<BaseQuickAdapter, a, RecentInfo> {
    protected View bottomLine;
    private ImageView imgUnreadExplosion;
    protected QMUIRadiusImageView ivAvatar;
    private int lastUnreadCount = 0;
    protected View topLine;
    protected TextView tvDatetime;
    protected TextView tvLastMsg;
    protected TextView tvNickname;
    protected ImageView tvUnread;

    public SystemRecentViewHolder(BaseQuickAdapter baseQuickAdapter) {
        super(baseQuickAdapter);
    }

    public void convert(a aVar, RecentInfo recentInfo, int i, boolean z) {
        inflate(aVar, recentInfo);
        refresh(aVar, recentInfo, i);
        c.a(CommonRecentViewHolder.class.getSimpleName(), "-----" + i + "-------");
    }

    private void inflate(a aVar, RecentInfo recentInfo) {
        this.topLine = aVar.b(R.id.top_line);
        this.bottomLine = aVar.b(R.id.bottom_line);
        this.ivAvatar = (QMUIRadiusImageView) aVar.b(R.id.iv_avatar);
        this.tvNickname = (TextView) aVar.b(R.id.tv_nick_name);
        this.tvDatetime = (TextView) aVar.b(R.id.tv_date_time);
        this.tvLastMsg = (TextView) aVar.b(R.id.tv_last_msg);
        this.tvUnread = (ImageView) aVar.b(R.id.unread_number_tip);
        this.imgUnreadExplosion = (ImageView) aVar.b(R.id.unread_number_explosion);
        aVar.a(R.id.unread_number_tip);
    }

    private void refresh(a aVar, RecentInfo recentInfo, int i) {
        if (this.lastUnreadCount <= 0 || recentInfo.getUnReadCnt() == 0) {
        }
        this.lastUnreadCount = recentInfo.getUnReadCnt();
        updateBackground(aVar, recentInfo, i);
        loadPortrait(recentInfo);
        updateMsgLabel(aVar, recentInfo);
        updateNewIndicator(recentInfo);
    }

    private void updateMsgLabel(a aVar, RecentInfo recentInfo) {
        this.tvNickname.setText("系统消息");
        this.tvDatetime.setText(k.a(recentInfo.getUpdateTime(), true));
        this.tvLastMsg.setText(recentInfo.getLatestMsgData());
    }

    private void updateBackground(a aVar, RecentInfo recentInfo, int i) {
        int i2;
        int i3 = 0;
        View view = this.topLine;
        if (((BaseQuickAdapter) getAdapter()).isFirstDataItem(i)) {
            i2 = 8;
        } else {
            i2 = 0;
        }
        view.setVisibility(i2);
        View view2 = this.bottomLine;
        if (!((BaseQuickAdapter) getAdapter()).isLastDataItem(i)) {
            i3 = 8;
        }
        view2.setVisibility(i3);
        aVar.c().setBackgroundResource(R.drawable.bg_material_ripple_write);
    }

    /* access modifiers changed from: protected */
    public void loadPortrait(RecentInfo recentInfo) {
        this.ivAvatar.setImageResource(R.drawable.chat_icon_system);
    }

    private void updateNewIndicator(RecentInfo recentInfo) {
        this.tvUnread.setVisibility(recentInfo.getUnReadCnt() > 0 ? 0 : 8);
    }

    /* access modifiers changed from: protected */
    public String unreadCountShowRule(int i) {
        return String.valueOf(Math.min(i, 99));
    }
}
