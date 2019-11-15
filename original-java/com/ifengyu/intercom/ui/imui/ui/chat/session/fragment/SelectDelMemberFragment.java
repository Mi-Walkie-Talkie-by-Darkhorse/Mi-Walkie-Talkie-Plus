package com.ifengyu.intercom.ui.imui.ui.chat.session.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import butterknife.BindView;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.im.utils.IMUIHelper;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseFragment;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter.a;
import com.ifengyu.intercom.ui.imui.base.LinearLayoutManagerWapper;
import com.ifengyu.intercom.ui.imui.ui.chat.Extras;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.view.ClearEditText;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;
import java.util.ArrayList;
import java.util.List;

public class SelectDelMemberFragment extends BaseFragment implements OnClickListener, a {
    /* access modifiers changed from: private */
    public List<UserEntity> mGroupMembers;
    @BindView(2131755449)
    QMUIAlphaImageButton mIbLeft;
    @BindView(2131755633)
    LinearLayout mLlNoSearchResult;
    @BindView(2131755366)
    RecyclerViewEmptySupport mRvSearchList;
    /* access modifiers changed from: private */
    public SearchAdapter mSearchAdapter;
    @BindView(2131755632)
    ClearEditText mSearchEditText;
    private int mSessionId;
    @BindView(2131755159)
    FrameLayout mTitleBar;
    @BindView(2131755450)
    TextView mTvRight;
    @BindView(2131755443)
    TextView mTvTitle;

    private class SearchAdapter extends BaseRecyclerAdapter<UserEntity> {
        private String searchKey;

        public String getSearchKey() {
            return this.searchKey;
        }

        public void setSearchKey(String str) {
            this.searchKey = str;
        }

        public SearchAdapter(Context context, List<UserEntity> list) {
            super(context, list);
        }

        public int getItemLayoutId(int i) {
            return R.layout.item_select_member;
        }

        public void bindData(com.ifengyu.intercom.ui.imui.base.a aVar, int i, UserEntity userEntity) {
            ImageView c = aVar.c(R.id.iv_check);
            c.setVisibility(0);
            if (getSelectedItems().contains(userEntity)) {
                c.setImageResource(R.drawable.tick_checkbox_selected);
            } else {
                c.setImageResource(R.drawable.checkbox_normal_circle);
            }
            if (IMLoginManager.instance().getLoginId() == userEntity.getPeerId()) {
                c.setVisibility(8);
            }
            aVar.a((int) R.id.tv_title, userEntity.getMainName());
            aVar.a((int) R.id.tv_detail, String.format("ID:%s", new Object[]{Integer.valueOf(userEntity.getPeerId())}));
            if (TextUtils.isEmpty(getSearchKey())) {
                userEntity.getSearchElement().reset();
            }
            IMUIHelper.setTextHilighted(aVar.b(R.id.tv_title), userEntity.getMainName(), userEntity.getSearchElement());
        }
    }

    public static SelectDelMemberFragment newInstance(int i) {
        Bundle bundle = new Bundle();
        SelectDelMemberFragment selectDelMemberFragment = new SelectDelMemberFragment();
        bundle.putInt(Extras.EXTRA_SESSION_ID, i);
        selectDelMemberFragment.setArguments(bundle);
        return selectDelMemberFragment;
    }

    /* access modifiers changed from: protected */
    public int getLayoutId() {
        return R.layout.fragment_select_member;
    }

    /* access modifiers changed from: protected */
    public void initBundle(Bundle bundle) {
        super.initBundle(bundle);
        if (bundle != null) {
            this.mSessionId = bundle.getInt(Extras.EXTRA_SESSION_ID);
        }
    }

    /* access modifiers changed from: protected */
    public void initWidget(View view) {
        l.a((ViewGroup) this.mTitleBar);
        this.mIbLeft.setOnClickListener(new SelectDelMemberFragment$$Lambda$0(this));
        this.mTvRight.setVisibility(0);
        this.mTvRight.setText(R.string.common_ok);
        this.mTvRight.setOnClickListener(this);
        this.mTvRight.setEnabled(false);
        this.mGroupMembers = IMGroupManager.instance().getGroupMembers(this.mSessionId);
        RecyclerViewEmptySupport recyclerViewEmptySupport = this.mRvSearchList;
        SearchAdapter searchAdapter = new SearchAdapter(getContext(), this.mGroupMembers);
        this.mSearchAdapter = searchAdapter;
        recyclerViewEmptySupport.setAdapter(searchAdapter);
        this.mRvSearchList.setLayoutManager(new LinearLayoutManagerWapper(getContext(), 1, false));
        this.mRvSearchList.setEmptyView(this.mLlNoSearchResult);
        this.mSearchAdapter.setOnItemClickListener(this);
        this.mSearchEditText.setHint(R.string.common_search);
        this.mSearchEditText.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                String charSequence2 = charSequence.toString();
                SelectDelMemberFragment.this.mSearchAdapter.setSearchKey(charSequence2);
                if (TextUtils.isEmpty(charSequence2)) {
                    SelectDelMemberFragment.this.mSearchAdapter.setNewData(SelectDelMemberFragment.this.mGroupMembers);
                } else {
                    SelectDelMemberFragment.this.searchEntityLists(charSequence2);
                }
            }

            public void afterTextChanged(Editable editable) {
            }
        });
        this.mSearchEditText.setOnEditorActionListener(new OnEditorActionListener() {
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return false;
            }
        });
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initWidget$0$SelectDelMemberFragment(View view) {
        popBackStack();
    }

    /* access modifiers changed from: private */
    public void searchEntityLists(String str) {
        this.mSearchAdapter.setNewData(getSearchContactList(str));
    }

    public List<UserEntity> getSearchContactList(String str) {
        ArrayList arrayList = new ArrayList();
        for (UserEntity userEntity : this.mGroupMembers) {
            if (IMUIHelper.handleContactSearch(str, userEntity)) {
                arrayList.add(userEntity);
            }
        }
        return arrayList;
    }

    public void onItemClick(View view, int i) {
        if (((UserEntity) this.mSearchAdapter.getItem(i)).getPeerId() != IMLoginManager.instance().getLoginId()) {
            this.mSearchAdapter.toggleSelect(i);
            this.mTvRight.setEnabled(!this.mSearchAdapter.getSelectedItems().isEmpty());
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tv_right /*2131755450*/:
                kickOutUsers();
                return;
            default:
                return;
        }
    }

    private void kickOutUsers() {
        List selectedItems = this.mSearchAdapter.getSelectedItems();
        int size = selectedItems.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            arrayList.add(Integer.valueOf(((UserEntity) selectedItems.get(i)).getPeerId()));
        }
        getBaseActivity().showTipDiaog();
        IMGroupManager.instance().reqkickOutUser(this.mSessionId, arrayList, new Packetlistener() {
            public void onSuccess(Object obj) {
                SelectDelMemberFragment.this.getBaseActivity().hideTipDialog();
                SelectDelMemberFragment.this.getTargetFragment().onActivityResult(SelectDelMemberFragment.this.getTargetRequestCode(), -1, null);
                SelectDelMemberFragment.this.popBackStack();
            }

            public void onFaild() {
                SelectDelMemberFragment.this.getBaseActivity().hideTipDialog();
                l.c(R.string.toast_kick_out_failed);
            }

            public void onTimeout() {
                SelectDelMemberFragment.this.getBaseActivity().hideTipDialog();
                l.c(R.string.toast_kick_out_failed);
            }
        });
    }
}
