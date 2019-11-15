package com.ifengyu.intercom.ui.imui.ui.chat.session.nearby;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import butterknife.BindView;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.event.NearbyEvent;
import com.ifengyu.im.imservice.event.RefreshEvent;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.im.imservice.services.NearbyService;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseFragment;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter.a;
import com.ifengyu.intercom.ui.imui.base.LinearLayoutManagerWapper;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.BaseSearchContactActivity;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.BaseSearchContactActivity.TopDisplayAdapter;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;
import de.greenrobot.event.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NearbyFragment extends BaseFragment implements a {
    @BindView(2131755575)
    View mEmptyView;
    private NearbyAdapter mNearbyAdapter;
    @BindView(2131755624)
    RecyclerViewEmptySupport mRvNearbyList;

    class NearbyAdapter extends BaseRecyclerAdapter<UserEntity> {
        private NearbyAdapter(Context context, List<UserEntity> list) {
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

    public static NearbyFragment newInstance() {
        NearbyFragment nearbyFragment = new NearbyFragment();
        nearbyFragment.setArguments(new Bundle());
        return nearbyFragment;
    }

    /* access modifiers changed from: protected */
    public int getLayoutId() {
        return R.layout.fragment_nearby;
    }

    /* access modifiers changed from: protected */
    public void initWidget(View view) {
        this.mNearbyAdapter = new NearbyAdapter(getContext(), new ArrayList());
        this.mRvNearbyList.setLayoutManager(new LinearLayoutManagerWapper(getContext(), 1, false));
        this.mRvNearbyList.setEmptyView(this.mEmptyView);
        this.mRvNearbyList.setAdapter(this.mNearbyAdapter);
        this.mNearbyAdapter.setOnItemClickListener(this);
        this.mNearbyAdapter.setSelectedItems(((BaseSearchContactActivity) getBaseActivity()).getSelectedItems());
        c.a().a((Object) this);
    }

    /* access modifiers changed from: protected */
    public void initData() {
        NearbyService.instance().queryNearbyUser();
    }

    public void onDestroy() {
        super.onDestroy();
        c.a().d(this);
    }

    public void onEventMainThread(NearbyEvent nearbyEvent) {
        switch (nearbyEvent.getEvent()) {
            case QUERY_SUCCESS:
                List userList = nearbyEvent.getUserList();
                Iterator it = userList.iterator();
                int loginId = IMLoginManager.instance().getLoginId();
                while (true) {
                    if (it.hasNext()) {
                        if (((UserEntity) it.next()).getPeerId() == loginId) {
                            it.remove();
                        }
                    }
                }
                this.mNearbyAdapter.setNewData(userList);
                return;
            default:
                return;
        }
    }

    public void onEventMainThread(RefreshEvent refreshEvent) {
        switch (refreshEvent) {
            case REFRESH_LIST:
            case REFRESH_NEARBY_LIST:
                refreshNearbyList();
                return;
            default:
                return;
        }
    }

    private void refreshNearbyList() {
        this.mNearbyAdapter.notifyDataSetChanged();
    }

    public void onItemClick(View view, int i) {
        UserEntity userEntity = (UserEntity) this.mNearbyAdapter.getItem(i);
        BaseSearchContactActivity baseSearchContactActivity = (BaseSearchContactActivity) getBaseActivity();
        TopDisplayAdapter topDispalyAdapter = baseSearchContactActivity.getTopDispalyAdapter();
        int indexOf = topDispalyAdapter.getData().indexOf(userEntity);
        if (indexOf != -1) {
            topDispalyAdapter.delete(indexOf);
        } else {
            topDispalyAdapter.add(userEntity);
            baseSearchContactActivity.getRvTopList().smoothScrollToPosition(topDispalyAdapter.getItemCount() - 1);
        }
        this.mNearbyAdapter.toggleSelect(i);
        c.a().e(RefreshEvent.REFRESH_RECENT_LIST);
    }
}
