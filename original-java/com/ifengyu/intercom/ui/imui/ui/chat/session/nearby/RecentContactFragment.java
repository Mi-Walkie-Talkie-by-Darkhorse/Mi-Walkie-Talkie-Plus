package com.ifengyu.intercom.ui.imui.ui.chat.session.nearby;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import butterknife.BindView;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.event.RefreshEvent;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseFragment;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter.a;
import com.ifengyu.intercom.ui.imui.base.LinearLayoutManagerWapper;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.BaseSearchContactActivity;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.BaseSearchContactActivity.TopDisplayAdapter;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;
import de.greenrobot.event.c;
import io.reactivex.disposables.b;
import io.reactivex.k;
import io.reactivex.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class RecentContactFragment extends BaseFragment implements a {
    @BindView(2131755575)
    View mEmptyView;
    /* access modifiers changed from: private */
    public RecentAdapter mRecentAdapter;
    @BindView(2131755574)
    RecyclerViewEmptySupport mRvRecentList;

    class RecentAdapter extends BaseRecyclerAdapter<UserEntity> {
        private RecentAdapter(Context context, List<UserEntity> list) {
            super(context, list);
        }

        public int getItemLayoutId(int i) {
            return R.layout.chat_contact_search_list_item;
        }

        @SuppressLint({"DefaultLocale"})
        public void bindData(com.ifengyu.intercom.ui.imui.base.a aVar, int i, UserEntity userEntity) {
            ImageView c = aVar.c(R.id.iv_arrow);
            if (getSelectedItems().contains(userEntity)) {
                c.setImageResource(R.drawable.tick_checkbox_selected);
            } else {
                c.setImageResource(R.drawable.common_icon_increase);
            }
            aVar.a((int) R.id.tv_title, userEntity.getMainName());
            aVar.a((int) R.id.tv_detail, String.format("ID:%d", new Object[]{Integer.valueOf(userEntity.getPeerId())}));
        }
    }

    public static RecentContactFragment newInstance() {
        RecentContactFragment recentContactFragment = new RecentContactFragment();
        recentContactFragment.setArguments(new Bundle());
        return recentContactFragment;
    }

    /* access modifiers changed from: protected */
    public int getLayoutId() {
        return R.layout.fragment_recent_contact;
    }

    /* access modifiers changed from: protected */
    public void initWidget(View view) {
        super.initWidget(view);
        this.mRecentAdapter = new RecentAdapter(getContext(), new ArrayList());
        this.mRvRecentList.setLayoutManager(new LinearLayoutManagerWapper(getContext(), 1, false));
        this.mRvRecentList.setEmptyView(this.mEmptyView);
        this.mRvRecentList.setAdapter(this.mRecentAdapter);
        this.mRecentAdapter.setOnItemClickListener(this);
        this.mRecentAdapter.setSelectedItems(((BaseSearchContactActivity) getBaseActivity()).getSelectedItems());
        c.a().a((Object) this);
    }

    public void onDestroy() {
        super.onDestroy();
        c.a().d(this);
    }

    /* access modifiers changed from: protected */
    @SuppressLint({"CheckResult"})
    public void initData() {
        super.initData();
        List allGroupList = IMGroupManager.instance().getAllGroupList();
        final HashMap hashMap = new HashMap();
        if (allGroupList != null) {
            k.fromIterable(allGroupList).filter(RecentContactFragment$$Lambda$0.$instance).flatMap(RecentContactFragment$$Lambda$1.$instance).map(RecentContactFragment$$Lambda$2.$instance).subscribeOn(io.reactivex.e.a.a()).observeOn(io.reactivex.a.b.a.a()).subscribe((q<? super T>) new q<UserEntity>() {
                public void onSubscribe(b bVar) {
                }

                public void onNext(UserEntity userEntity) {
                    hashMap.put(Integer.valueOf(userEntity.peerId), userEntity);
                }

                public void onError(Throwable th) {
                    com.ifengyu.library.util.c.d(RecentContactFragment.this.TAG, th.getMessage());
                }

                public void onComplete() {
                    RecentContactFragment.this.mRecentAdapter.setNewData(new ArrayList(hashMap.values()));
                }
            });
        }
    }

    static final /* synthetic */ boolean lambda$initData$0$RecentContactFragment(GroupEntity groupEntity) throws Exception {
        return groupEntity.getUserCnt() <= 5;
    }

    public void onEventMainThread(RefreshEvent refreshEvent) {
        switch (refreshEvent) {
            case REFRESH_LIST:
            case REFRESH_RECENT_LIST:
                refreshRecentList();
                return;
            default:
                return;
        }
    }

    public void refreshRecentList() {
        this.mRecentAdapter.notifyDataSetChanged();
    }

    public void onItemClick(View view, int i) {
        UserEntity userEntity = (UserEntity) this.mRecentAdapter.getItem(i);
        BaseSearchContactActivity baseSearchContactActivity = (BaseSearchContactActivity) getBaseActivity();
        TopDisplayAdapter topDispalyAdapter = baseSearchContactActivity.getTopDispalyAdapter();
        int indexOf = topDispalyAdapter.getData().indexOf(userEntity);
        if (indexOf != -1) {
            topDispalyAdapter.delete(indexOf);
        } else {
            topDispalyAdapter.add(userEntity);
            baseSearchContactActivity.getRvTopList().smoothScrollToPosition(topDispalyAdapter.getItemCount() - 1);
        }
        this.mRecentAdapter.toggleSelect(i);
        c.a().e(RefreshEvent.REFRESH_NEARBY_LIST);
    }
}
