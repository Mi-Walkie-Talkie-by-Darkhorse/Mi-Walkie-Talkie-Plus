package com.ifengyu.intercom.device.mi3gw.fragment;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.http.entity.HttpDataList;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.p238h.OnAccountListener;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.shanlitech.p245et.model.ContactList;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.SearchResultEvent;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2.dex */
public class DeviceOneKeyCallingFragment extends BaseFragment implements OnAccountListener {
    @BindView(R.id.btn_remove_contact)
    QMUIRoundButton btn_remove_contact;
    @BindView(R.id.btn_set_contact)
    QMUIRoundButton btn_set_contact;
    @BindView(R.id.et_input_id)
    EditText et_input_id;
    @BindView(R.id.had_set_contact_layout)
    LinearLayout had_set_contact_layout;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.not_set_contact_layout)
    LinearLayout not_set_contact_layout;
    @BindView(R.id.tv_contact_id)
    TextView tv_contact_id;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceOneKeyCallingFragment$a */
    /* loaded from: classes2.dex */
    public class C3398a extends ErrorConsumer {
        C3398a() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) DeviceOneKeyCallingFragment.this).f15047y, "queryDeviceSosContact fail");
            DeviceOneKeyCallingFragment.this.m10312X2(R.string.device_one_key_calling_query_error);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceOneKeyCallingFragment$b */
    /* loaded from: classes2.dex */
    public class C3399b extends ErrorConsumer {
        C3399b() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) DeviceOneKeyCallingFragment.this).f15047y, "setDeviceSosContact fail");
            DeviceOneKeyCallingFragment.this.m10312X2(R.string.set_failed);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceOneKeyCallingFragment$c */
    /* loaded from: classes2.dex */
    public class C3400c extends ErrorConsumer {
        C3400c() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) DeviceOneKeyCallingFragment.this).f15047y, "removeDeviceSosContact fail");
            DeviceOneKeyCallingFragment.this.m10312X2(R.string.device_one_key_calling_remove_fail);
        }
    }

    /* renamed from: A3 */
    public static DeviceOneKeyCallingFragment m13545A3() {
        return new DeviceOneKeyCallingFragment();
    }

    /* renamed from: B3 */
    private void m13544B3() {
        m10308b3();
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11393N(DeviceDataShare.m13732s().m13748k()).compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.a1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceOneKeyCallingFragment.this.m13526q3((HttpDataList) obj);
            }
        }, new C3398a());
    }

    /* renamed from: C3 */
    private void m13543C3() {
        m10308b3();
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11382Y(DeviceDataShare.m13732s().m13748k()).compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.f1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceOneKeyCallingFragment.this.m13524s3((NewHttpResult) obj);
            }
        }, new C3400c());
    }

    /* renamed from: D3 */
    private void m13542D3(final long j) {
        HashMap hashMap = new HashMap();
        hashMap.put("contactId", Long.valueOf(j));
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11377e(DeviceDataShare.m13732s().m13748k(), RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.c1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceOneKeyCallingFragment.this.m13522u3(j, (NewHttpResult) obj);
            }
        }, new C3399b());
    }

    /* renamed from: E3 */
    private void m13541E3() {
        m10329C2();
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7248E(R.string.device_one_key_calling_not_device_id);
        messageDialogBuilder.m7300b(0, R.string.common_confirm, 0, C3430e1.f12647a);
        messageDialogBuilder.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: F3 */
    private void m13540F3() {
        m10329C2();
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7248E(R.string.device_one_key_calling_search_not_exist);
        messageDialogBuilder.m7300b(0, R.string.common_confirm, 0, C3442h1.f12659a);
        messageDialogBuilder.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: G3 */
    private void m13539G3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7248E(R.string.device_one_key_calling_remove_prompt);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C3426d1.f12642a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_confirm, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.g1
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                DeviceOneKeyCallingFragment.this.m13517z3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: H3 */
    private void m13538H3(long j) {
        this.not_set_contact_layout.setVisibility(8);
        this.had_set_contact_layout.setVisibility(0);
        StringBuilder sb = new StringBuilder();
        for (String str : String.valueOf(j).split("")) {
            sb.append(str);
            sb.append(" ");
        }
        this.tv_contact_id.setText(sb.toString().trim());
    }

    /* renamed from: I3 */
    private void m13537I3() {
        this.not_set_contact_layout.setVisibility(0);
        this.had_set_contact_layout.setVisibility(8);
        this.et_input_id.setText((CharSequence) null);
    }

    /* renamed from: m3 */
    private void m13530m3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.device_colling_one_key);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.b1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceOneKeyCallingFragment.this.m13528o3(view);
            }
        });
        this.tv_contact_id.setTypeface(AppConstants.f13910d);
        this.btn_set_contact.setChangeAlphaWhenPress(true);
        this.btn_remove_contact.setChangeAlphaWhenPress(true);
        this.not_set_contact_layout.setVisibility(8);
        this.had_set_contact_layout.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m13528o3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ void m13526q3(HttpDataList httpDataList) throws Exception {
        C4161y.m11049f(this.f15047y, "queryDeviceSosContact success");
        m10329C2();
        if (httpDataList.getData() != null && httpDataList.getData().size() > 0) {
            m13538H3(((Long) httpDataList.getData().get(0)).longValue());
        } else {
            m13537I3();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3 */
    public /* synthetic */ void m13524s3(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(this.f15047y, "removeDeviceSosContact success");
        m13537I3();
        m10306d3(R.string.device_one_key_calling_remove_success);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t3 */
    public /* synthetic */ void m13522u3(long j, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(this.f15047y, "setDeviceSosContact success");
        m13538H3(j);
        m10306d3(R.string.set_success);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y3 */
    public /* synthetic */ void m13517z3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m13543C3();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        m13544B3();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        SlTalkClient.m8513r().m8530a().addListener(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_device_one_key_calling, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13530m3();
        return inflate;
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: f0 */
    public void mo8373f0(SearchResultEvent searchResultEvent) {
        if (searchResultEvent.getUser() == null) {
            m13540F3();
        } else if (searchResultEvent.getUser().getRole() != 0) {
            m13541E3();
        } else {
            m13542D3(searchResultEvent.getUser().getUid());
        }
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

    @OnClick({R.id.btn_set_contact, R.id.btn_remove_contact})
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.btn_remove_contact) {
            m13539G3();
        } else if (id != R.id.btn_set_contact) {
        } else {
            String obj = this.et_input_id.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                m10312X2(R.string.device_one_key_calling_hint);
            } else if (obj.equals(DeviceDataShare.m13732s().m13748k())) {
                m10312X2(R.string.device_one_key_calling_can_not_current);
            } else {
                m10308b3();
                if (SlTalkClient.m8513r().m8530a().m8450k(obj)) {
                    return;
                }
                m10312X2(R.string.device_one_key_calling_search_fail);
            }
        }
    }
}
