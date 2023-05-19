package com.ifengyu.intercom.p216ui.fragment;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.activity.UserInfoActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.library.account.UserCache;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.p238h.OnAccountListener;
import com.qmuiteam.qmui.layout.QMUIButton;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.shanlitech.p245et.model.ContactList;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.SearchResultEvent;

/* renamed from: com.ifengyu.intercom.ui.fragment.FriendSearchFragment */
/* loaded from: classes2.dex */
public class FriendSearchFragment extends BaseFragment implements OnAccountListener {
    @BindView(R.id.btn_cancel)
    QMUIButton btnCancel;
    @BindView(R.id.et_search)
    FixedEditText etSearch;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.my_id)
    TextView myId;

    /* renamed from: g3 */
    private void m10105g3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.add_friend);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendSearchFragment.this.m10103i3(view);
            }
        });
        this.myId.setText(UIUtils.m8602p(R.string.my_id_number, UserCache.getAccount()));
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.ifengyu.intercom.ui.fragment.g0
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return FriendSearchFragment.this.m10101k3(textView, i, keyEvent);
            }
        });
        this.btnCancel.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendSearchFragment.this.m10099m3(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h3 */
    public /* synthetic */ void m10103i3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ boolean m10101k3(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 3) {
            String obj = this.etSearch.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                m10312X2(R.string.search_friend_id_empty);
                return true;
            }
            m10308b3();
            if (!SlTalkClient.m8513r().m8530a().m8450k(obj)) {
                m10312X2(R.string.search_friend_error);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m10099m3(View view) {
        mo8048o2();
    }

    /* renamed from: n3 */
    public static FriendSearchFragment m10098n3() {
        return new FriendSearchFragment();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        SlTalkClient.m8513r().m8530a().addListener(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_search_friend, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m10105g3();
        return inflate;
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: f0 */
    public void mo8373f0(SearchResultEvent searchResultEvent) {
        if (searchResultEvent.getUser() == null) {
            m10312X2(R.string.search_friend_error);
            return;
        }
        m10329C2();
        UserInfoActivity.m10426N(getContext(), searchResultEvent.getUser(), 1);
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: j0 */
    public void mo8372j0(ContactList contactList) {
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        SlTalkClient.m8513r().m8530a().removeListener(this);
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    public void onOnlineStatusChange(OnlineStatusEvent onlineStatusEvent) {
    }
}
