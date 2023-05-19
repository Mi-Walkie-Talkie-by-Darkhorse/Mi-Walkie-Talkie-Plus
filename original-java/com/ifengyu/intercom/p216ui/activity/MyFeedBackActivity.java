package com.ifengyu.intercom.p216ui.activity;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.http.entity.FeedbackEntity;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.view.LoadMoreListView;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.http.entity.MsgListEntity;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import io.reactivex.functions.Consumer;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* renamed from: com.ifengyu.intercom.ui.activity.MyFeedBackActivity */
/* loaded from: classes2.dex */
public class MyFeedBackActivity extends BaseActivity1 implements View.OnClickListener, LoadMoreListView.InterfaceC4950b {

    /* renamed from: j */
    private LoadMoreListView f14825j;

    /* renamed from: k */
    private final List<FeedbackEntity> f14826k = new ArrayList();

    /* renamed from: l */
    private View f14827l;

    /* renamed from: m */
    private C4356e f14828m;

    /* renamed from: n */
    private int f14829n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.MyFeedBackActivity$a */
    /* loaded from: classes2.dex */
    public class C4350a extends ErrorConsumer {
        C4350a(MyFeedBackActivity myFeedBackActivity) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("MyFeedBackActivity", "queryFeedBack fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.MyFeedBackActivity$b */
    /* loaded from: classes2.dex */
    public class C4351b implements AdapterView.OnItemLongClickListener {

        /* renamed from: com.ifengyu.intercom.ui.activity.MyFeedBackActivity$b$a */
        /* loaded from: classes2.dex */
        class C4352a implements QMUIDialogAction.InterfaceC5249b {

            /* renamed from: a */
            final /* synthetic */ int f14831a;

            C4352a(int i) {
                this.f14831a = i;
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public void mo7305a(QMUIDialog qMUIDialog, int i) {
                qMUIDialog.dismiss();
                MyFeedBackActivity.this.m10521M(this.f14831a);
            }
        }

        /* renamed from: com.ifengyu.intercom.ui.activity.MyFeedBackActivity$b$b */
        /* loaded from: classes2.dex */
        class C4353b implements QMUIDialogAction.InterfaceC5249b {
            C4353b(C4351b c4351b) {
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public void mo7305a(QMUIDialog qMUIDialog, int i) {
                qMUIDialog.dismiss();
            }
        }

        C4351b() {
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(MyFeedBackActivity.this);
            messageDialogBuilder.m7248E(R.string.sure_to_delete_current_feedback);
            messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, new C4353b(this));
            MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
            messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new C4352a(i));
            messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.MyFeedBackActivity$c */
    /* loaded from: classes2.dex */
    public class C4354c extends ErrorConsumer {
        C4354c() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("MyFeedBackActivity", "deleteFeedBack fail");
            MyFeedBackActivity.this.m10276u(R.string.dialog_deleted_failed_please_check_network);
            MyFeedBackActivity.this.m10277t(R.drawable.load_fail);
            MyFeedBackActivity.this.m10524J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.MyFeedBackActivity$d */
    /* loaded from: classes2.dex */
    public class RunnableC4355d implements Runnable {
        RunnableC4355d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyFeedBackActivity.this.m10283n();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.ifengyu.intercom.ui.activity.MyFeedBackActivity$e */
    /* loaded from: classes2.dex */
    public class C4356e extends BaseAdapter {
        private C4356e() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return MyFeedBackActivity.this.f14826k.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C4357f c4357f;
            if (view == null) {
                view = View.inflate(MyFeedBackActivity.this, R.layout.feedback_list_view_item, null);
                c4357f = new C4357f(null);
                c4357f.f14836a = (TextView) view.findViewById(R.id.feedback_time);
                c4357f.f14837b = (TextView) view.findViewById(R.id.feedback_content);
                view.setTag(c4357f);
            } else {
                c4357f = (C4357f) view.getTag();
            }
            FeedbackEntity feedbackEntity = (FeedbackEntity) MyFeedBackActivity.this.f14826k.get(i);
            c4357f.f14836a.setText(new SimpleDateFormat("yyyy.MM.dd", Locale.getDefault()).format(Long.valueOf(feedbackEntity.getCreateTime())));
            String content = feedbackEntity.getContent();
            if (content.contains("(Android)")) {
                content = content.replace("(Android)", "");
            }
            if (content.contains("(iOS)")) {
                content = content.replace("(iOS)", "");
            }
            c4357f.f14837b.setText(content);
            return view;
        }

        /* synthetic */ C4356e(MyFeedBackActivity myFeedBackActivity, C4350a c4350a) {
            this();
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.activity.MyFeedBackActivity$f */
    /* loaded from: classes2.dex */
    private static class C4357f {

        /* renamed from: a */
        private TextView f14836a;

        /* renamed from: b */
        private TextView f14837b;

        private C4357f() {
        }

        /* synthetic */ C4357f(C4350a c4350a) {
            this();
        }
    }

    /* renamed from: I */
    private void m10525I(int i) {
        this.f14826k.remove(i);
        this.f14828m.notifyDataSetChanged();
        if (this.f14826k.size() == 0) {
            this.f14825j.setVisibility(8);
            this.f14827l.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public void m10524J() {
        BaseApp.m8713a().postDelayed(new RunnableC4355d(), 500L);
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: K */
    private void m10523K() {
        AppServiceClient.m11355a().m11395L(this.f14829n, 10).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.activity.v
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MyFeedBackActivity.this.m10519O((MsgListEntity) obj);
            }
        }, new C4350a(this));
    }

    /* renamed from: L */
    private void m10522L() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.history_feedback);
        this.f14825j = (LoadMoreListView) findViewById(R.id.my_feedback_list_view);
        this.f14827l = findViewById(R.id.this_not_have_content_rl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: M */
    public void m10521M(final int i) {
        if (!MethodsUtils.m11274z(this)) {
            UIUtils.m8593y(R.string.net_work_error_pls_retry);
            return;
        }
        m10288C(false, false, R.string.dialog_deleted, R.drawable.load_spinner);
        AppServiceClient.m11355a().m11367o(String.valueOf(this.f14826k.get(i).getId())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.activity.u
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MyFeedBackActivity.this.m10517R(i, (NewHttpResult) obj);
            }
        }, new C4354c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public /* synthetic */ void m10519O(MsgListEntity msgListEntity) throws Exception {
        C4161y.m11049f("MyFeedBackActivity", "queryFeedBack success");
        this.f14826k.addAll(msgListEntity.getData());
        if (this.f14826k.size() > 0) {
            if (this.f14825j.getVisibility() == 8) {
                this.f14825j.setVisibility(0);
                this.f14827l.setVisibility(8);
            }
            this.f14828m.notifyDataSetChanged();
        }
        if (msgListEntity.getData().size() >= 10) {
            this.f14825j.m8836g();
            this.f14825j.m8835h();
            int i = this.f14829n;
            this.f14829n = i + 1;
            this.f14829n = i;
            return;
        }
        this.f14825j.m8834i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P */
    public /* synthetic */ void m10517R(int i, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f("MyFeedBackActivity", "deleteFeedBack success");
        m10525I(i);
        m10276u(R.string.delete_success);
        m10277t(R.drawable.load_success);
        m10524J();
    }

    /* renamed from: S */
    private void m10516S() {
        if (this.f14826k.size() == 0) {
            this.f14825j.setVisibility(8);
            this.f14827l.setVisibility(0);
        } else {
            this.f14825j.setVisibility(0);
            this.f14827l.setVisibility(8);
        }
        C4356e c4356e = new C4356e(this, null);
        this.f14828m = c4356e;
        this.f14825j.setAdapter((ListAdapter) c4356e);
        this.f14825j.setOnItemLongClickListener(new C4351b());
        this.f14825j.setLoadMoreListener(this);
    }

    @Override // com.ifengyu.intercom.p216ui.widget.view.LoadMoreListView.InterfaceC4950b
    /* renamed from: f */
    public void mo8832f() {
        m10523K();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.title_bar_left) {
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_my_feedback);
        m10522L();
        m10516S();
        this.f14829n = 1;
        m10523K();
    }
}
