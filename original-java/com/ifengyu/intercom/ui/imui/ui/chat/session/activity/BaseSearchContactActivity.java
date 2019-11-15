package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.SearchView.OnQueryTextListener;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import com.bumptech.glide.c;
import com.bumptech.glide.request.d;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.event.RefreshEvent;
import com.ifengyu.im.imservice.manager.IMContactManager;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseActivity;
import com.ifengyu.intercom.ui.imui.base.BaseFragment;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter;
import com.ifengyu.intercom.ui.imui.base.LinearLayoutManagerWapper;
import com.ifengyu.intercom.ui.imui.base.loading.a;
import com.ifengyu.intercom.ui.imui.base.loading.b;
import com.ifengyu.intercom.ui.imui.ui.chat.session.nearby.NearbyFragment;
import com.ifengyu.intercom.ui.imui.ui.chat.session.nearby.RecentContactFragment;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.i18n.TextBundle;

public abstract class BaseSearchContactActivity extends BaseActivity implements OnQueryTextListener {
    /* access modifiers changed from: private */
    public static final CharSequence[] TAB_TITLES = {"附近的人", "近期联系人"};
    @BindView(2131755449)
    QMUIAlphaImageButton mIbLeft;
    /* access modifiers changed from: private */
    public a mLoadingStateManager;
    @BindView(2131755367)
    LinearLayout mNearbyContent;
    @BindView(2131755366)
    RecyclerViewEmptySupport mRvSearchList;
    @BindView(2131755364)
    RecyclerViewEmptySupport mRvTopList;
    protected SearchAdapter mSearchAdapter;
    @BindView(2131755365)
    LinearLayout mSearchContent;
    @BindView(2131755239)
    SearchView mSearchView;
    @BindView(2131755210)
    TabLayout mTabLayout;
    private TopDisplayAdapter mTopDisplayAdapter;
    @BindView(2131755450)
    TextView mTvRight;
    @BindView(2131755443)
    TextView mTvTitle;
    @BindView(2131755368)
    ViewPager mViewPager;

    class ContactPageAdapter extends FragmentPagerAdapter {
        private BaseFragment[] fragments;

        public ContactPageAdapter(FragmentManager fragmentManager, BaseFragment[] baseFragmentArr) {
            super(fragmentManager);
            this.fragments = baseFragmentArr;
        }

        public Fragment getItem(int i) {
            return this.fragments[i];
        }

        public int getCount() {
            return this.fragments.length;
        }

        public CharSequence getPageTitle(int i) {
            return BaseSearchContactActivity.TAB_TITLES[i];
        }
    }

    class SearchAdapter extends BaseRecyclerAdapter<UserEntity> {
        private SearchAdapter(Context context, List<UserEntity> list) {
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

    public class TopDisplayAdapter extends BaseRecyclerAdapter<UserEntity> {
        private final d mPlaceholder;

        private TopDisplayAdapter(Context context, List<UserEntity> list) {
            super(context, list);
            this.mPlaceholder = new d().a((int) R.drawable.my_head_default);
        }

        public int getItemLayoutId(int i) {
            return R.layout.chat_search_contact_top_list_item;
        }

        public void bindData(com.ifengyu.intercom.ui.imui.base.a aVar, int i, UserEntity userEntity) {
            ImageView c = aVar.c(R.id.iv_avatar);
            c.setContentDescription(userEntity.getMainName());
            c.a((View) c).a((Object) userEntity.avatar).a(this.mPlaceholder).a(c);
        }
    }

    /* access modifiers changed from: protected */
    public abstract String getBarTitle();

    /* access modifiers changed from: protected */
    public abstract String getRightButtonText();

    /* access modifiers changed from: protected */
    public abstract void onRightButtonClick();

    /* access modifiers changed from: protected */
    public int getContentLayout() {
        return R.layout.activity_search_contact;
    }

    /* access modifiers changed from: protected */
    public void initView(Bundle bundle) {
        this.mTvTitle.setText(getBarTitle());
        this.mIbLeft.setOnClickListener(new BaseSearchContactActivity$$Lambda$0(this));
        this.mTvRight.setVisibility(0);
        this.mTvRight.setText(getRightButtonText());
        this.mTvRight.setOnClickListener(new BaseSearchContactActivity$$Lambda$1(this));
        initSearchView();
        initTopList();
        initSearchList();
        initTab();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initView$0$BaseSearchContactActivity(View view) {
        finish();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initView$1$BaseSearchContactActivity(View view) {
        onRightButtonClick();
    }

    private void initSearchView() {
        this.mSearchView.setIconified(false);
        this.mSearchView.setInputType(2);
    }

    private void initTopList() {
        this.mTopDisplayAdapter = new TopDisplayAdapter(getApplicationContext(), new ArrayList());
        this.mRvTopList.setLayoutManager(new LinearLayoutManagerWapper(getApplicationContext(), 0, false));
        this.mRvTopList.setAdapter(this.mTopDisplayAdapter);
    }

    private void initSearchList() {
        a.c = R.layout.chat_search_empty_layout;
        this.mLoadingStateManager = a.a((Object) this.mSearchContent, (b) null);
        this.mLoadingStateManager.b();
        this.mSearchAdapter = new SearchAdapter(getApplicationContext(), new ArrayList());
        this.mRvSearchList.setLayoutManager(new LinearLayoutManagerWapper(getApplicationContext(), 1, false));
        this.mRvSearchList.setAdapter(this.mSearchAdapter);
    }

    private void initTab() {
        this.mViewPager.setAdapter(new ContactPageAdapter(getSupportFragmentManager(), new BaseFragment[]{NearbyFragment.newInstance(), RecentContactFragment.newInstance()}));
        this.mTabLayout.setTabMode(1);
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        this.mTabLayout.setTabGravity(0);
        LinearLayout linearLayout = (LinearLayout) this.mTabLayout.getChildAt(0);
        linearLayout.setShowDividers(2);
        linearLayout.setDividerPadding(40);
        linearLayout.setDividerDrawable(ContextCompat.getDrawable(this, R.drawable.div_tab));
    }

    public TopDisplayAdapter getTopDispalyAdapter() {
        return this.mTopDisplayAdapter;
    }

    public RecyclerViewEmptySupport getRvTopList() {
        return this.mRvTopList;
    }

    /* access modifiers changed from: protected */
    public void initData() {
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mSearchView.setOnQueryTextListener(null);
    }

    /* access modifiers changed from: protected */
    public void initListener() {
        this.mSearchView.setOnQueryTextListener(this);
        this.mTopDisplayAdapter.setOnItemClickListener(new BaseSearchContactActivity$$Lambda$2(this));
        this.mSearchAdapter.setOnItemClickListener(new BaseSearchContactActivity$$Lambda$3(this));
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initListener$2$BaseSearchContactActivity(View view, int i) {
        if (i >= 0 && i < this.mTopDisplayAdapter.getData().size()) {
            UserEntity userEntity = (UserEntity) this.mTopDisplayAdapter.getItem(i);
            this.mTopDisplayAdapter.delete(i);
            this.mSearchAdapter.getSelectedItems().remove(userEntity);
            this.mSearchAdapter.notifyDataSetChanged();
            de.greenrobot.event.c.a().e(RefreshEvent.REFRESH_LIST);
        }
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initListener$3$BaseSearchContactActivity(View view, int i) {
        UserEntity userEntity = (UserEntity) this.mSearchAdapter.getItem(i);
        int indexOf = this.mTopDisplayAdapter.getData().indexOf(userEntity);
        if (indexOf != -1) {
            this.mTopDisplayAdapter.delete(indexOf);
            if (this.mSearchAdapter.getSelectedItems().size() == 0) {
                this.mSearchView.setIconifiedByDefault(false);
            }
        } else {
            this.mTopDisplayAdapter.add(userEntity);
            this.mRvTopList.smoothScrollToPosition(this.mTopDisplayAdapter.getItemCount() - 1);
        }
        this.mSearchAdapter.toggleSelect(i);
        de.greenrobot.event.c.a().e(RefreshEvent.REFRESH_LIST);
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

    public boolean onQueryTextSubmit(String str) {
        com.ifengyu.library.util.c.a(this.TAG, "onQueryTextSubmit:" + str);
        try {
            requestUserInfo(Integer.parseInt(str.trim()));
        } catch (NumberFormatException e) {
            ThrowableExtension.printStackTrace(e);
        }
        return false;
    }

    public boolean onQueryTextChange(String str) {
        if (TextUtils.isEmpty(str)) {
            this.mSearchAdapter.clear();
            this.mNearbyContent.setVisibility(0);
            de.greenrobot.event.c.a().e(RefreshEvent.REFRESH_LIST);
        }
        return false;
    }

    private void requestUserInfo(int i) {
        IMContactManager.instance().reqUserInfo(i, (Packetlistener) new Packetlistener() {
            public void onSuccess(Object obj) {
                if (obj instanceof UserEntity) {
                    UserEntity userEntity = (UserEntity) obj;
                    BaseSearchContactActivity.this.mSearchAdapter.clear();
                    BaseSearchContactActivity.this.mSearchAdapter.add(userEntity);
                    BaseSearchContactActivity.this.mLoadingStateManager.b();
                    BaseSearchContactActivity.this.mNearbyContent.setVisibility(8);
                }
            }

            public void onFaild() {
                BaseSearchContactActivity.this.mLoadingStateManager.c();
                BaseSearchContactActivity.this.mNearbyContent.setVisibility(8);
            }

            public void onTimeout() {
                l.c(R.string.no_network_error_toast);
            }
        });
    }

    public List<UserEntity> getSelectedItems() {
        return this.mSearchAdapter.getSelectedItems();
    }
}
