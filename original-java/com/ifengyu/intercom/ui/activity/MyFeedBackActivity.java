package com.ifengyu.intercom.ui.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.j;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.bean.FeedBackBean;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.view.LoadMoreListView;
import com.mi.milinkforgame.sdk.data.Const;
import com.mi.mimsgsdk.database.IMessageDao;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import okhttp3.Call;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MyFeedBackActivity extends BaseActivity implements OnClickListener, com.ifengyu.intercom.ui.widget.view.LoadMoreListView.a {
    private final String a = "MyFeedBackActivity";
    /* access modifiers changed from: private */
    public LoadMoreListView b;
    /* access modifiers changed from: private */
    public List<FeedBackBean> c;
    /* access modifiers changed from: private */
    public View d;
    /* access modifiers changed from: private */
    public a q;
    /* access modifiers changed from: private */
    public int r;
    /* access modifiers changed from: private */
    public int s;

    private class a extends BaseAdapter {
        private a() {
        }

        public int getCount() {
            return MyFeedBackActivity.this.c.size();
        }

        public Object getItem(int i) {
            return null;
        }

        public long getItemId(int i) {
            return 0;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            b bVar;
            if (view == null) {
                view = View.inflate(MyFeedBackActivity.this, R.layout.feedback_list_view_item, null);
                bVar = new b();
                bVar.a = (TextView) view.findViewById(R.id.feedback_time);
                bVar.b = (TextView) view.findViewById(R.id.feedback_content);
                view.setTag(bVar);
            } else {
                bVar = (b) view.getTag();
            }
            FeedBackBean feedBackBean = (FeedBackBean) MyFeedBackActivity.this.c.get(i);
            bVar.a.setText(new SimpleDateFormat("yyyy.MM.dd", Locale.getDefault()).format(Long.valueOf(((long) feedBackBean.updatetime) * 1000)));
            String str = feedBackBean.message;
            if (feedBackBean.message.contains("(Android)")) {
                str = feedBackBean.message.replace("(Android)", "");
            }
            if (feedBackBean.message.contains("(iOS)")) {
                str = feedBackBean.message.replace("(iOS)", "");
            }
            bVar.b.setText(str);
            return view;
        }
    }

    private static class b {
        /* access modifiers changed from: private */
        public TextView a;
        /* access modifiers changed from: private */
        public TextView b;

        private b() {
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_my_feedback);
        q();
        this.c = new ArrayList();
        e();
        this.r = 10;
        this.s = 0;
        d();
    }

    private void d() {
        com.ifengyu.intercom.a.a.b(this.r, this.s, (com.ifengyu.intercom.a.b.b) new j() {
            public void a(Call call, Exception exc, int i) {
            }

            public void a(String str, int i) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.getInt("errno") == 0) {
                        JSONArray jSONArray = jSONObject.getJSONArray(Const.PARAM_DATA);
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                            FeedBackBean feedBackBean = new FeedBackBean();
                            feedBackBean.feedbackId = jSONObject2.getInt("id");
                            feedBackBean.userId = jSONObject2.getInt(IMessageDao.USER_ID);
                            feedBackBean.email = jSONObject2.getString("email");
                            feedBackBean.message = jSONObject2.getString("message");
                            feedBackBean.updatetime = jSONObject2.getInt("updatetime");
                            MyFeedBackActivity.this.c.add(feedBackBean);
                        }
                        if (MyFeedBackActivity.this.c.size() > 0) {
                            if (MyFeedBackActivity.this.b.getVisibility() == 8) {
                                MyFeedBackActivity.this.b.setVisibility(0);
                                MyFeedBackActivity.this.d.setVisibility(8);
                            }
                            MyFeedBackActivity.this.q.notifyDataSetChanged();
                            if (jSONArray.length() == MyFeedBackActivity.this.r) {
                                MyFeedBackActivity.this.b.a();
                                MyFeedBackActivity.this.b.c();
                                MyFeedBackActivity.this.s = MyFeedBackActivity.this.s + MyFeedBackActivity.this.r;
                                return;
                            }
                            MyFeedBackActivity.this.b.b();
                        }
                    }
                } catch (JSONException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        });
    }

    public void c() {
        d();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            default:
                return;
        }
    }

    private void e() {
        if (this.c.size() == 0) {
            this.b.setVisibility(8);
            this.d.setVisibility(0);
        } else {
            this.b.setVisibility(0);
            this.d.setVisibility(8);
        }
        this.q = new a();
        this.b.setAdapter(this.q);
        this.b.setOnItemLongClickListener(new OnItemLongClickListener() {
            public boolean onItemLongClick(AdapterView<?> adapterView, View view, final int i, long j) {
                new d(MyFeedBackActivity.this).b((CharSequence) MyFeedBackActivity.this.getString(R.string.sure_to_delete_current_feedback)).b(true).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null).b((int) R.string.common_select, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        MyFeedBackActivity.this.a(i);
                    }
                }).b().c();
                return true;
            }
        });
        this.b.setLoadMoreListener(this);
    }

    /* access modifiers changed from: private */
    public void a(final int i) {
        if (!v.a((Context) this)) {
            v.a((CharSequence) getString(R.string.net_error_please_check), false);
            return;
        }
        a(false, false, (int) R.string.dialog_deleted, (int) R.drawable.load_spinner);
        com.ifengyu.intercom.a.a.a(((FeedBackBean) this.c.get(i)).feedbackId, (com.ifengyu.intercom.a.b.b) new j() {
            public void a(Call call, Exception exc, int i) {
                MyFeedBackActivity.this.e(R.string.dialog_deleted_failed_please_check_network);
                MyFeedBackActivity.this.d(R.drawable.mine_icon_lose);
                MyFeedBackActivity.this.f();
            }

            public void a(String str, int i) {
                try {
                    if (new JSONObject(str).getInt("errno") == 0) {
                        MyFeedBackActivity.this.b(i);
                        MyFeedBackActivity.this.e(R.string.delete_success);
                        MyFeedBackActivity.this.d(R.drawable.mine_icon_win);
                        MyFeedBackActivity.this.f();
                        return;
                    }
                    MyFeedBackActivity.this.e(R.string.dialog_deleted_failed_please_check_network);
                    MyFeedBackActivity.this.d(R.drawable.mine_icon_lose);
                    MyFeedBackActivity.this.f();
                } catch (JSONException e) {
                    ThrowableExtension.printStackTrace(e);
                    MyFeedBackActivity.this.e(R.string.dialog_deleted_failed_please_check_network);
                    MyFeedBackActivity.this.d(R.drawable.mine_icon_lose);
                    MyFeedBackActivity.this.f();
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void f() {
        MiTalkiApp.n().postDelayed(new Runnable() {
            public void run() {
                MyFeedBackActivity.this.k();
            }
        }, 500);
    }

    /* access modifiers changed from: private */
    public void b(int i) {
        this.c.remove(i);
        this.q.notifyDataSetChanged();
        if (this.c.size() == 0) {
            this.b.setVisibility(8);
            this.d.setVisibility(0);
        }
    }

    private void q() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.history_feedback);
        this.b = (LoadMoreListView) findViewById(R.id.my_feedback_list_view);
        this.d = findViewById(R.id.this_not_have_content_rl);
    }
}
