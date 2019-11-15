package com.ifengyu.intercom.ui.imui.ui.chat.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.bumptech.glide.request.d;
import com.ifengyu.im.imservice.entity.RecentInfo;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.drop.DropFake;
import com.ifengyu.library.util.k;
import com.ifengyu.library.widget.groupicon.NineGridImageView;
import com.ifengyu.library.widget.recyclerview.adapter.BaseQuickAdapter;
import com.ifengyu.library.widget.recyclerview.d.a;
import com.ifengyu.library.widget.recyclerview.d.b;
import java.util.ArrayList;

public class CommonRecentViewHolder extends b<BaseQuickAdapter, a, RecentInfo> {
    protected View bottomLine;
    private ImageView imgUnreadExplosion;
    protected NineGridImageView ivAvatar;
    private int lastUnreadCount = 0;
    com.ifengyu.library.widget.groupicon.a<String> mAdapter = new com.ifengyu.library.widget.groupicon.a<String>() {
        /* access modifiers changed from: protected */
        public void onDisplayImage(Context context, ImageView imageView, String str) {
            d b = new d().a((int) R.drawable.my_head_default).b((int) R.drawable.my_head_default);
            if (TextUtils.isEmpty(str)) {
                imageView.setImageResource(R.drawable.my_head_default);
            } else {
                c.a((View) imageView).a((Object) str).a(b).a(imageView);
            }
        }

        /* access modifiers changed from: protected */
        public ImageView generateImageView(Context context) {
            return super.generateImageView(context);
        }
    };
    protected View topLine;
    protected TextView tvDatetime;
    protected TextView tvLastMsg;
    protected TextView tvNickname;
    protected DropFake tvUnread;

    public CommonRecentViewHolder(BaseQuickAdapter baseQuickAdapter) {
        super(baseQuickAdapter);
    }

    public void convert(a aVar, RecentInfo recentInfo, int i, boolean z) {
        inflate(aVar, recentInfo);
        refresh(aVar, recentInfo, i);
        com.ifengyu.library.util.c.a(CommonRecentViewHolder.class.getSimpleName(), "-----" + i + "-------");
    }

    private void inflate(a aVar, final RecentInfo recentInfo) {
        this.topLine = aVar.b(R.id.top_line);
        this.bottomLine = aVar.b(R.id.bottom_line);
        this.ivAvatar = (NineGridImageView) aVar.b(R.id.iv_avatar);
        this.tvNickname = (TextView) aVar.b(R.id.tv_nick_name);
        this.tvDatetime = (TextView) aVar.b(R.id.tv_date_time);
        this.tvLastMsg = (TextView) aVar.b(R.id.tv_last_msg);
        this.tvUnread = (DropFake) aVar.b(R.id.unread_number_tip);
        this.imgUnreadExplosion = (ImageView) aVar.b(R.id.unread_number_explosion);
        aVar.a(R.id.unread_number_tip);
        this.tvUnread.setTouchListener(new DropFake.a() {
            public void onDown() {
                com.ifengyu.intercom.ui.imui.ui.drop.a.a().a((Object) recentInfo);
                com.ifengyu.intercom.ui.imui.ui.drop.a.a().a((View) CommonRecentViewHolder.this.tvUnread, CommonRecentViewHolder.this.tvUnread.getText());
            }

            public void onMove(float f, float f2) {
                com.ifengyu.intercom.ui.imui.ui.drop.a.a().a(f, f2);
            }

            public void onUp() {
                com.ifengyu.intercom.ui.imui.ui.drop.a.a().f();
            }
        });
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
        this.tvNickname.setText(recentInfo.getName());
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
        if (recentInfo.getSessionType() == 1) {
            this.ivAvatar.setImagesData(new ArrayList());
        } else if (recentInfo.getSessionType() == 3) {
            this.ivAvatar.setAdapter(this.mAdapter);
            this.ivAvatar.setImagesData(recentInfo.getAvatar());
        }
    }

    private void updateNewIndicator(RecentInfo recentInfo) {
        int unReadCnt = recentInfo.getUnReadCnt();
        this.tvUnread.setVisibility(unReadCnt > 0 ? 0 : 8);
        this.tvUnread.setText(unreadCountShowRule(unReadCnt));
    }

    /* access modifiers changed from: protected */
    public String unreadCountShowRule(int i) {
        return String.valueOf(Math.min(i, 99));
    }
}
