package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.imservice.entity.RecentInfo;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.im.imservice.services.IMSessionManager;
import com.ifengyu.im.imservice.services.MessageService;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseActivity;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter.a;
import com.ifengyu.intercom.ui.imui.base.LinearLayoutManagerWapper;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;
import java.util.Iterator;
import java.util.List;

public class SwitchTalkActivity extends BaseActivity implements a {
    @BindView(2131755387)
    LinearLayout mEmptyLayout;
    private GroupAdapter mGroupAdapter;
    @BindView(2131755449)
    QMUIAlphaImageButton mIbLeft;
    @BindView(2131755388)
    RecyclerViewEmptySupport mRvGroupList;
    /* access modifiers changed from: private */
    public int mSessionId = -1;
    @BindView(2131755159)
    FrameLayout mTitleBar;
    @BindView(2131755386)
    TextView mTvTalkGroupId;
    @BindView(2131755385)
    TextView mTvTalkGroupName;
    @BindView(2131755443)
    TextView mTvTitle;

    private class GroupAdapter extends BaseRecyclerAdapter<RecentInfo> {
        private int colorBlack = l.b((int) R.color.black);
        private int colorBlack50 = l.b((int) R.color.black50);
        private int colorOrange = l.b((int) R.color.text_select_color);

        public GroupAdapter(Context context, List<RecentInfo> list) {
            super(context, list);
        }

        public int getItemLayoutId(int i) {
            return R.layout.item_converse_group_list;
        }

        public void bindData(com.ifengyu.intercom.ui.imui.base.a aVar, int i, RecentInfo recentInfo) {
            boolean equals = recentInfo.getPeerId().equals(String.valueOf(SwitchTalkActivity.this.mSessionId));
            TextView b = aVar.b(R.id.tv_title);
            TextView b2 = aVar.b(R.id.tv_detail);
            TextView b3 = aVar.b(R.id.tv_value);
            b.setText(recentInfo.getName());
            b2.setText(String.format("群组ID：%s", new Object[]{recentInfo.getPeerId()}));
            b3.setText(equals ? "当前通话群组" : "点击切换");
            b.setTextColor(equals ? this.colorOrange : this.colorBlack);
            b2.setTextColor(equals ? this.colorOrange : this.colorBlack50);
            b3.setTextColor(equals ? this.colorOrange : this.colorBlack50);
        }
    }

    public static void start(Context context) {
        Intent intent = new Intent(context, SwitchTalkActivity.class);
        intent.putExtras(new Bundle());
        context.startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public int getContentLayout() {
        return R.layout.activity_switch_talk;
    }

    /* access modifiers changed from: protected */
    public void initView(Bundle bundle) {
        this.mTvTitle.setText(R.string.switch_current_group);
        this.mIbLeft.setOnClickListener(new SwitchTalkActivity$$Lambda$0(this));
        this.mRvGroupList.setEmptyView(this.mEmptyLayout);
        this.mRvGroupList.setLayoutManager(new LinearLayoutManagerWapper(this, 1, false));
        RecyclerViewEmptySupport recyclerViewEmptySupport = this.mRvGroupList;
        GroupAdapter groupAdapter = new GroupAdapter(this, null);
        this.mGroupAdapter = groupAdapter;
        recyclerViewEmptySupport.setAdapter(groupAdapter);
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initView$0$SwitchTalkActivity(View view) {
        finish();
    }

    /* access modifiers changed from: protected */
    public void initData() {
        String talkGroupId = MessageService.instance().getTalkGroupId();
        if (!TextUtils.isEmpty(talkGroupId)) {
            try {
                this.mSessionId = Integer.parseInt(talkGroupId);
            } catch (NumberFormatException e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
        refreshCurrentUI();
        List recentListInfo = IMSessionManager.instance().getRecentListInfo();
        Iterator it = recentListInfo.iterator();
        while (it.hasNext()) {
            RecentInfo recentInfo = (RecentInfo) it.next();
            if ("1".equals(recentInfo.getPeerId()) || "2".equals(recentInfo.getPeerId())) {
                it.remove();
            }
        }
        this.mGroupAdapter.setNewData(recentListInfo);
    }

    @SuppressLint({"DefaultLocale"})
    private void refreshCurrentUI() {
        GroupEntity findGroup = IMGroupManager.instance().findGroup(this.mSessionId);
        if (findGroup != null) {
            this.mTvTalkGroupName.setText(String.format("%s（%d）", new Object[]{findGroup.getMainName(), Integer.valueOf(findGroup.getUserCnt())}));
            this.mTvTalkGroupId.setText(String.format("群组ID：%d", new Object[]{Integer.valueOf(findGroup.getPeerId())}));
            return;
        }
        this.mTvTalkGroupName.setText("当前群组为空");
        this.mTvTalkGroupId.setText("还未设置当前群组");
    }

    /* access modifiers changed from: protected */
    public void initListener() {
        this.mGroupAdapter.setOnItemClickListener(this);
    }

    public void onItemClick(View view, int i) {
        RecentInfo recentInfo = (RecentInfo) this.mGroupAdapter.getItem(i);
        if (!recentInfo.getPeerId().equals(String.valueOf(this.mSessionId))) {
            this.mSessionId = Integer.parseInt(recentInfo.getPeerId());
            this.mGroupAdapter.notifyDataSetChanged();
            refreshCurrentUI();
            MessageService.instance().setTalkGroupId(String.valueOf(this.mSessionId));
        }
    }
}
