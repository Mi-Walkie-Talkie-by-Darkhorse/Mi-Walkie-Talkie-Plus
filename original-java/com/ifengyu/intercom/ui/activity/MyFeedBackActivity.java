package com.ifengyu.intercom.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.FeedBackBean;
import com.ifengyu.intercom.g.d.l;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.view.LoadMoreListView;
import com.ifengyu.library.base.BaseApp;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import okhttp3.Call;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class MyFeedBackActivity extends BaseActivity implements View.OnClickListener, LoadMoreListView.b {
    private final String q = "MyFeedBackActivity";
    private LoadMoreListView r;
    private List<FeedBackBean> s;
    private View t;
    private e u;
    private int v;
    private int w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends l {
        a() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
        }

        public void a(String str, int i) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("errno") == 0) {
                    JSONArray jSONArray = jSONObject.getJSONArray("data");
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        FeedBackBean feedBackBean = new FeedBackBean();
                        feedBackBean.feedbackId = jSONObject2.getInt("id");
                        feedBackBean.userId = jSONObject2.getInt("user_id");
                        feedBackBean.email = jSONObject2.getString("email");
                        feedBackBean.message = jSONObject2.getString("message");
                        feedBackBean.updatetime = jSONObject2.getInt("updatetime");
                        MyFeedBackActivity.this.s.add(feedBackBean);
                    }
                    if (MyFeedBackActivity.this.s.size() > 0) {
                        if (MyFeedBackActivity.this.r.getVisibility() == 8) {
                            MyFeedBackActivity.this.r.setVisibility(0);
                            MyFeedBackActivity.this.t.setVisibility(8);
                        }
                        MyFeedBackActivity.this.u.notifyDataSetChanged();
                        if (jSONArray.length() == MyFeedBackActivity.this.v) {
                            MyFeedBackActivity.this.r.a();
                            MyFeedBackActivity.this.r.b();
                            MyFeedBackActivity.this.w += MyFeedBackActivity.this.v;
                            return;
                        }
                        MyFeedBackActivity.this.r.c();
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements AdapterView.OnItemLongClickListener {

        /* loaded from: classes2.dex */
        class a implements QMUIDialogAction.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f6069a;

            a(int i) {
                this.f6069a = i;
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
                bVar.dismiss();
                MyFeedBackActivity.this.f(this.f6069a);
            }
        }

        /* renamed from: com.ifengyu.intercom.ui.activity.MyFeedBackActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0157b implements QMUIDialogAction.b {
            C0157b(b bVar) {
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
                bVar.dismiss();
            }
        }

        b() {
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(MyFeedBackActivity.this);
            eVar.d(R.string.sure_to_delete_current_feedback);
            eVar.a(0, R.string.common_cancel, 2, new C0157b(this));
            com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
            eVar2.a(0, R.string.common_ok, 0, new a(i));
            eVar2.a(R.style.DialogTheme2).show();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends l {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f6071b;

        c(int i) {
            this.f6071b = i;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            MyFeedBackActivity.this.c(R.string.dialog_deleted_failed_please_check_network);
            MyFeedBackActivity.this.b(R.drawable.mine_icon_lose);
            MyFeedBackActivity.this.w();
        }

        public void a(String str, int i) {
            try {
                if (new JSONObject(str).getInt("errno") == 0) {
                    MyFeedBackActivity.this.e(this.f6071b);
                    MyFeedBackActivity.this.c(R.string.delete_success);
                    MyFeedBackActivity.this.b(R.drawable.mine_icon_win);
                    MyFeedBackActivity.this.w();
                } else {
                    MyFeedBackActivity.this.c(R.string.dialog_deleted_failed_please_check_network);
                    MyFeedBackActivity.this.b(R.drawable.mine_icon_lose);
                    MyFeedBackActivity.this.w();
                }
            } catch (JSONException e) {
                e.printStackTrace();
                MyFeedBackActivity.this.c(R.string.dialog_deleted_failed_please_check_network);
                MyFeedBackActivity.this.b(R.drawable.mine_icon_lose);
                MyFeedBackActivity.this.w();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyFeedBackActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class e extends BaseAdapter {
        private e() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return MyFeedBackActivity.this.s.size();
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
            f fVar;
            if (view == null) {
                view = View.inflate(MyFeedBackActivity.this, R.layout.feedback_list_view_item, null);
                fVar = new f(null);
                fVar.f6075a = (TextView) view.findViewById(R.id.feedback_time);
                fVar.f6076b = (TextView) view.findViewById(R.id.feedback_content);
                view.setTag(fVar);
            } else {
                fVar = (f) view.getTag();
            }
            FeedBackBean feedBackBean = (FeedBackBean) MyFeedBackActivity.this.s.get(i);
            fVar.f6075a.setText(new SimpleDateFormat("yyyy.MM.dd", Locale.getDefault()).format(Long.valueOf(feedBackBean.updatetime * 1000)));
            String str = feedBackBean.message;
            if (str.contains("(Android)")) {
                str = feedBackBean.message.replace("(Android)", "");
            }
            if (feedBackBean.message.contains("(iOS)")) {
                str = feedBackBean.message.replace("(iOS)", "");
            }
            fVar.f6076b.setText(str);
            return view;
        }

        /* synthetic */ e(MyFeedBackActivity myFeedBackActivity, a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    private static class f {

        /* renamed from: a  reason: collision with root package name */
        private TextView f6075a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f6076b;

        private f() {
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        BaseApp.a().postDelayed(new d(), 500L);
    }

    private void x() {
        com.ifengyu.intercom.g.a.b(this.v, this.w, (com.ifengyu.intercom.g.d.b) new a());
    }

    private void y() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.history_feedback);
        this.r = (LoadMoreListView) findViewById(R.id.my_feedback_list_view);
        this.t = findViewById(R.id.this_not_have_content_rl);
    }

    private void z() {
        if (this.s.size() == 0) {
            this.r.setVisibility(8);
            this.t.setVisibility(0);
        } else {
            this.r.setVisibility(0);
            this.t.setVisibility(8);
        }
        e eVar = new e(this, null);
        this.u = eVar;
        this.r.setAdapter((ListAdapter) eVar);
        this.r.setOnItemLongClickListener(new b());
        this.r.setLoadMoreListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.title_bar_left) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_my_feedback);
        y();
        this.s = new ArrayList();
        z();
        this.v = 10;
        this.w = 0;
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(int i) {
        if (!c0.b(this)) {
            c0.a((CharSequence) getString(R.string.net_error_please_check), false);
            return;
        }
        a(false, false, R.string.dialog_deleted, R.drawable.load_spinner);
        com.ifengyu.intercom.g.a.a(this.s.get(i).feedbackId, new c(i));
    }

    @Override // com.ifengyu.intercom.ui.widget.view.LoadMoreListView.b
    public void e() {
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i) {
        this.s.remove(i);
        this.u.notifyDataSetChanged();
        if (this.s.size() == 0) {
            this.r.setVisibility(8);
            this.t.setVisibility(0);
        }
    }
}
