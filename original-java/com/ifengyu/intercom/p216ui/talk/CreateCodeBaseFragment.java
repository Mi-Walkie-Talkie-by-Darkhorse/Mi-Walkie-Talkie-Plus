package com.ifengyu.intercom.p216ui.talk;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.talk.entity.CreateCodeAdapterEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.CreateCodeAdapter;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.message.msgBody.MemberChangeBody;
import com.ifengyu.talk.message.msgBody.MemberChangeBodyItem;
import com.ifengyu.talk.models.HistoryMsgModel;
import com.ifengyu.talk.models.OperatorMsgModel;
import com.ifengyu.talk.p238h.OnAccountListener;
import com.ifengyu.talk.p238h.OnExternalMsgListener;
import com.qmuiteam.qmui.util.QMUIStatusBarHelper;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.shanlitech.p245et.ETStatusCode;
import com.shanlitech.p245et.model.ContactList;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.Member;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.SearchResultEvent;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.ifengyu.intercom.ui.talk.CreateCodeBaseFragment */
/* loaded from: classes2.dex */
public abstract class CreateCodeBaseFragment extends BaseFragment implements OnExternalMsgListener, OnAccountListener {

    /* renamed from: A */
    private final ArrayList<CreateCodeAdapterEntity> f15498A = new ArrayList<>();

    /* renamed from: B */
    protected String f15499B;
    @BindView(R.id.bottom_tvs_layout)
    LinearLayout bottomTvsLayout;
    @BindView(R.id.btn_bottom)
    QMUIRoundButton btnBottom;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView rvList;

    /* renamed from: z */
    private CreateCodeAdapter f15500z;

    /* renamed from: i3 */
    private void m9636i3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(mo9132h3());
        this.mTopbar.m7343k(R.drawable.common_icon_cannel_white, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateCodeBaseFragment.this.m9634k3(view);
            }
        });
        for (int i = 0; i < this.bottomTvsLayout.getChildCount(); i++) {
            ((TextView) this.bottomTvsLayout.getChildAt(i)).setTypeface(AppConstants.f13910d);
        }
        this.btnBottom.setChangeAlphaWhenPress(true);
        this.btnBottom.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateCodeBaseFragment.this.m9632m3(view);
            }
        });
        this.f15500z = new CreateCodeAdapter(this, this.f15498A);
        this.rvList.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.rvList.setAdapter(this.f15500z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m9634k3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m9632m3(View view) {
        mo9131o3();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    public void mo9102E2() {
        this.f15498A.clear();
        this.f15498A.add(new CreateCodeAdapterEntity(2, null));
        this.f15500z.notifyDataSetChanged();
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: K */
    public void mo8371K(OperatorMsgModel operatorMsgModel) {
        if ((OperatorMsgModel.MODE_CREATE_GROUP_ACK_TOKEN.equals(operatorMsgModel.getOprName()) || OperatorMsgModel.MODE_CREATE_GROUP_ACK.equals(operatorMsgModel.getOprName())) && Integer.parseInt(operatorMsgModel.getErrCode()) == ETStatusCode.RequestResultCode.LIMIT.m6942a()) {
            m10309a3(UIUtils.m8603o(R.string.group_count_upper_limit), new BaseFragmentActivity.InterfaceC4443a() { // from class: com.ifengyu.intercom.ui.talk.h
                @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4443a
                /* renamed from: a */
                public final void mo9160a() {
                    CreateCodeBaseFragment.this.mo8048o2();
                }
            });
        }
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: b */
    public void mo8370b() {
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        QMUIStatusBarHelper.m7482l(getActivity());
        SlTalkClient.m8513r().m8529b().addListener(this);
        SlTalkClient.m8513r().m8530a().addListener(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_create_group_by_code, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9636i3();
        return inflate;
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: f0 */
    public void mo8373f0(SearchResultEvent searchResultEvent) {
        if (searchResultEvent.getUser() != null) {
            Iterator<CreateCodeAdapterEntity> it2 = this.f15498A.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                CreateCodeAdapterEntity next = it2.next();
                if (next.getMemberInfo().getAcc().equals(searchResultEvent.getUser().getAccount())) {
                    next.getMemberInfo().setUser(searchResultEvent.getUser());
                    break;
                }
            }
            this.f15500z.notifyDataSetChanged();
        }
    }

    /* renamed from: g3 */
    public void m9637g3() {
        if (TextUtils.isEmpty(this.f15499B)) {
            return;
        }
        for (int i = 0; i < this.bottomTvsLayout.getChildCount(); i++) {
            TextView textView = (TextView) this.bottomTvsLayout.getChildAt(i);
            if (!TextUtils.isEmpty(this.f15499B) && i < this.f15499B.length()) {
                textView.setText(String.valueOf(this.f15499B.charAt(i)));
            } else {
                textView.setText((CharSequence) null);
            }
        }
    }

    /* renamed from: h3 */
    public abstract int mo9132h3();

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: j0 */
    public void mo8372j0(ContactList contactList) {
    }

    /* renamed from: o3 */
    public abstract void mo9131o3();

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        QMUIStatusBarHelper.m7481m(getActivity());
        SlTalkClient.m8513r().m8529b().removeListener(this);
        SlTalkClient.m8513r().m8530a().removeListener(this);
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    public void onOnlineStatusChange(OnlineStatusEvent onlineStatusEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: t */
    public void mo8369t(HistoryMsgModel historyMsgModel) {
        if (historyMsgModel.getMsgType() == 6) {
            MemberChangeBody memberChangeBody = (MemberChangeBody) historyMsgModel.getBodyParse();
            if (memberChangeBody.getToken().equals(this.f15499B)) {
                ArrayList<MemberChangeBodyItem> ids = memberChangeBody.getIds();
                for (int i = 0; i < ids.size(); i++) {
                    MemberChangeBodyItem memberChangeBodyItem = ids.get(i);
                    Group m8429c = SlTalkClient.m8513r().m8525f().m8429c(historyMsgModel.getReceiver());
                    if (m8429c != null) {
                        Member member = m8429c.getMemberList().getMember(memberChangeBodyItem.getId());
                        if (member != null) {
                            memberChangeBodyItem.setUser(member.getUser());
                        } else {
                            SlTalkClient.m8513r().m8530a().m8450k(memberChangeBodyItem.getAcc());
                        }
                        CreateCodeAdapterEntity createCodeAdapterEntity = new CreateCodeAdapterEntity(1, memberChangeBodyItem);
                        ArrayList<CreateCodeAdapterEntity> arrayList = this.f15498A;
                        arrayList.add(arrayList.size() - 1, createCodeAdapterEntity);
                        this.f15500z.notifyDataSetChanged();
                    }
                }
            }
        }
    }
}
