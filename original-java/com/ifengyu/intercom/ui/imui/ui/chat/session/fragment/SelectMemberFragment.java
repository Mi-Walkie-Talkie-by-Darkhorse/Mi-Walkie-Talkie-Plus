package com.ifengyu.intercom.ui.imui.ui.chat.session.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import butterknife.BindView;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.im.utils.IMUIHelper;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseFragment;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter;
import com.ifengyu.intercom.ui.imui.base.BaseRecyclerAdapter.a;
import com.ifengyu.intercom.ui.imui.base.LinearLayoutManagerWapper;
import com.ifengyu.intercom.ui.imui.ui.chat.Extras;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.dialog.a.b;
import com.ifengyu.library.widget.view.ClearEditText;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;
import java.util.ArrayList;
import java.util.List;

public class SelectMemberFragment extends BaseFragment implements a {
    public static final String EXTRA_CREATOR_ID = "creator_id";
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
            aVar.a((int) R.id.tv_title, userEntity.getMainName());
            aVar.a((int) R.id.tv_detail, String.format("ID:%s", new Object[]{Integer.valueOf(userEntity.getPeerId())}));
            if (TextUtils.isEmpty(getSearchKey())) {
                userEntity.getSearchElement().reset();
            }
            IMUIHelper.setTextHilighted(aVar.b(R.id.tv_title), userEntity.getMainName(), userEntity.getSearchElement());
        }
    }

    public static SelectMemberFragment newInstance(int i) {
        Bundle bundle = new Bundle();
        SelectMemberFragment selectMemberFragment = new SelectMemberFragment();
        bundle.putInt(Extras.EXTRA_SESSION_ID, i);
        selectMemberFragment.setArguments(bundle);
        return selectMemberFragment;
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
        this.mIbLeft.setOnClickListener(new SelectMemberFragment$$Lambda$0(this));
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
                SelectMemberFragment.this.mSearchAdapter.setSearchKey(charSequence2);
                if (TextUtils.isEmpty(charSequence2)) {
                    SelectMemberFragment.this.mSearchAdapter.setNewData(SelectMemberFragment.this.mGroupMembers);
                } else {
                    SelectMemberFragment.this.searchEntityLists(charSequence2);
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
    public final /* synthetic */ void lambda$initWidget$0$SelectMemberFragment(View view) {
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
        showMakesureDialog((UserEntity) this.mSearchAdapter.getItem(i));
    }

    private void showMakesureDialog(UserEntity userEntity) {
        ((b) ((b) ((b) new b(getContext()).b("转让群主")).a(String.format("确定选择 %s 为新群主，你将自动放弃群主身份", new Object[]{userEntity.getMainName()})).a((int) R.string.common_cancel, (OnClickListener) null)).b((int) R.string.common_ok, (OnClickListener) new SelectMemberFragment$$Lambda$1(this, userEntity))).c();
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$showMakesureDialog$1$SelectMemberFragment(UserEntity userEntity, DialogInterface dialogInterface, int i) {
        transferCreator(userEntity);
    }

    private void transferCreator(UserEntity userEntity) {
        getBaseActivity().showTipDiaog();
        IMGroupManager.instance().reqTrandferCreator(this.mSessionId, userEntity.getPeerId(), new Packetlistener() {
            public void onSuccess(Object obj) {
                SelectMemberFragment.this.getBaseActivity().hideTipDialog();
                if (obj instanceof Integer) {
                    int intValue = ((Integer) obj).intValue();
                    Intent intent = new Intent();
                    intent.putExtra(SelectMemberFragment.EXTRA_CREATOR_ID, intValue);
                    SelectMemberFragment.this.getTargetFragment().onActivityResult(SelectMemberFragment.this.getTargetRequestCode(), -1, intent);
                    SelectMemberFragment.this.popBackStack();
                }
            }

            public void onFaild() {
                SelectMemberFragment.this.getBaseActivity().hideTipDialog();
                l.c(R.string.toast_transfer_failed);
            }

            public void onTimeout() {
                SelectMemberFragment.this.getBaseActivity().hideTipDialog();
                l.c(R.string.toast_transfer_failed);
            }
        });
    }
}
