package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.SearchView.OnCloseListener;
import android.support.v7.widget.SearchView.OnQueryTextListener;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.event.GroupEvent;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseActivity;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter.a;
import com.ifengyu.intercom.ui.imui.base.LinearLayoutManagerWapper;
import com.ifengyu.intercom.ui.imui.base.loading.b;
import com.ifengyu.library.util.c;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.i18n.TextBundle;

public class GroupJoinActivity extends BaseActivity implements OnCloseListener, OnQueryTextListener, OnClickListener, a {
    @BindView(2131755449)
    QMUIAlphaImageButton mIbLeft;
    @BindView(2131755451)
    QMUIAlphaImageButton mIbRight;
    @BindView(2131755240)
    LinearLayout mLlContent;
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.ui.imui.base.loading.a mLoadingStateManager;
    @BindView(2131755241)
    RecyclerViewEmptySupport mRvSearchList;
    /* access modifiers changed from: private */
    public SearchAdapter mSearchAdapter;
    @BindView(2131755239)
    SearchView mSearchView;
    @BindView(2131755443)
    TextView mTvTitle;

    class SearchAdapter extends BaseRecyclerAdapter<GroupEntity> {
        public SearchAdapter(Context context, List<GroupEntity> list) {
            super(context, list);
        }

        public int getItemLayoutId(int i) {
            return R.layout.chat_contact_search_list_item;
        }

        @SuppressLint({"DefaultLocale"})
        public void bindData(com.ifengyu.intercom.ui.imui.base.a aVar, int i, GroupEntity groupEntity) {
            aVar.a((int) R.id.tv_title, groupEntity.getMainName());
            aVar.a((int) R.id.tv_detail, String.format("ID:%d", new Object[]{Integer.valueOf(groupEntity.getPeerId())}));
        }
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, GroupJoinActivity.class));
    }

    /* access modifiers changed from: protected */
    public int getContentLayout() {
        return R.layout.activity_group_join;
    }

    /* access modifiers changed from: protected */
    public void initView(Bundle bundle) {
        this.mIbLeft.setOnClickListener(new GroupJoinActivity$$Lambda$0(this));
        this.mSearchView.setIconifiedByDefault(false);
        this.mSearchView.setInputType(2);
        this.mSearchView.setOnQueryTextListener(this);
        this.mSearchView.setOnCloseListener(this);
        this.mSearchView.setOnSearchClickListener(this);
        com.ifengyu.intercom.ui.imui.base.loading.a.c = R.layout.chat_search_empty_layout;
        this.mLoadingStateManager = com.ifengyu.intercom.ui.imui.base.loading.a.a((Object) this.mLlContent, (b) null);
        this.mSearchAdapter = new SearchAdapter(getApplicationContext(), new ArrayList(1));
        this.mRvSearchList.setLayoutManager(new LinearLayoutManagerWapper(getApplicationContext(), 1, false));
        this.mRvSearchList.setAdapter(this.mSearchAdapter);
        this.mSearchAdapter.setOnItemClickListener(this);
        this.mLoadingStateManager.b();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initView$0$GroupJoinActivity(View view) {
        finish();
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        String string = bundle.getString(TextBundle.TEXT_ENTRY);
        if (!TextUtils.isEmpty(string)) {
            this.mSearchView.setQuery(string, true);
        }
    }

    public void onSaveInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        super.onSaveInstanceState(bundle, persistableBundle);
        bundle.putString(TextBundle.TEXT_ENTRY, this.mSearchView.getQuery().toString());
    }

    /* access modifiers changed from: protected */
    public void initData() {
    }

    /* access modifiers changed from: protected */
    public void initListener() {
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }

    public void onEventMainThread(GroupEvent groupEvent) {
        hideTipDialog();
        switch (groupEvent.getEvent()) {
            case GROUP_INFO_OK:
                GroupEntity groupEntity = groupEvent.getGroupEntity();
                if (groupEntity != null) {
                    c.a(this.TAG, "query group result:" + groupEvent.getGroupEntity());
                    this.mSearchAdapter.clear();
                    this.mSearchAdapter.add(groupEntity);
                    this.mLoadingStateManager.b();
                    return;
                }
                this.mLoadingStateManager.c();
                return;
            case GROUP_INFO_FAIL:
                this.mLoadingStateManager.c();
                return;
            default:
                return;
        }
    }

    private void showApplyJoinGroupDialog(GroupEntity groupEntity) {
        ((com.ifengyu.library.widget.dialog.a.b) ((com.ifengyu.library.widget.dialog.a.b) ((com.ifengyu.library.widget.dialog.a.b) new com.ifengyu.library.widget.dialog.a.b(this).b("申请加群")).a("确认加入该群？").a((CharSequence) "取消", (DialogInterface.OnClickListener) null)).b((CharSequence) "申请", (DialogInterface.OnClickListener) new GroupJoinActivity$$Lambda$1(this, groupEntity))).c();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$showApplyJoinGroupDialog$1$GroupJoinActivity(GroupEntity groupEntity, DialogInterface dialogInterface, int i) {
        IMGroupManager.instance().reqApplyJoinGroup(groupEntity.peerId, groupEntity.creatorId, new Packetlistener() {
            public void onSuccess(Object obj) {
                l.a((CharSequence) "已发出申请，等待群主审核");
            }

            public void onFaild() {
                l.a((CharSequence) "发送失败");
            }

            public void onTimeout() {
                l.a((CharSequence) "连接超时");
            }
        });
    }

    public boolean onQueryTextSubmit(String str) {
        int i;
        c.a(this.TAG, "onQueryTextSubmit:" + str);
        try {
            i = Integer.parseInt(str.trim());
        } catch (NumberFormatException e) {
            ThrowableExtension.printStackTrace(e);
            i = 0;
        }
        showTipDiaog();
        IMGroupManager.instance().reqGroupDetailInfo(i, false, new Packetlistener() {
            public void onSuccess(Object obj) {
                GroupJoinActivity.this.hideTipDialog();
                if (obj instanceof GroupEntity) {
                    GroupEntity groupEntity = (GroupEntity) obj;
                    c.a(GroupJoinActivity.this.TAG, "query group result:" + groupEntity);
                    GroupJoinActivity.this.mSearchAdapter.clear();
                    GroupJoinActivity.this.mSearchAdapter.add(groupEntity);
                    GroupJoinActivity.this.mLoadingStateManager.b();
                    return;
                }
                GroupJoinActivity.this.mLoadingStateManager.c();
            }

            public void onFaild() {
                GroupJoinActivity.this.hideTipDialog();
                GroupJoinActivity.this.mLoadingStateManager.c();
            }

            public void onTimeout() {
                GroupJoinActivity.this.hideTipDialog();
            }
        });
        return false;
    }

    public boolean onQueryTextChange(String str) {
        c.a(this.TAG, "newText:" + str);
        if (TextUtils.isEmpty(str)) {
            this.mSearchAdapter.clear();
        }
        return false;
    }

    public boolean onClose() {
        c.a(this.TAG, "onClose:");
        return false;
    }

    public void onClick(View view) {
        c.a(this.TAG, "onClick:" + view.getId());
    }

    public void onItemClick(View view, int i) {
        showApplyJoinGroupDialog((GroupEntity) this.mSearchAdapter.getItem(i));
    }
}
