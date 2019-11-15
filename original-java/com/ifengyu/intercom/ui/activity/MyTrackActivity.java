package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.amap.api.services.district.DistrictSearchQuery;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.j;
import com.ifengyu.intercom.b.ac;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.greendao.bean.c;
import com.ifengyu.intercom.greendao.dao.TrackInfoDataDao.Properties;
import com.ifengyu.intercom.greendao.dao.TrackPointDao;
import com.ifengyu.intercom.network.a.e;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.view.LoadMoreListView;
import com.mi.milinkforgame.sdk.data.Const;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.mistatistic.sdk.BaseService;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import okhttp3.Call;
import okhttp3.Response;
import org.greenrobot.greendao.c.i;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MyTrackActivity extends BaseActivity implements OnClickListener, com.ifengyu.intercom.ui.widget.view.LoadMoreListView.a {
    ArrayList<String> a;
    private final String b = "MyTrackActivity";
    /* access modifiers changed from: private */
    public LoadMoreListView c;
    /* access modifiers changed from: private */
    public List<com.ifengyu.intercom.greendao.bean.b> d;
    /* access modifiers changed from: private */
    public View q;
    /* access modifiers changed from: private */
    public a r;
    /* access modifiers changed from: private */
    public int s = 0;
    private final int t = 5;
    /* access modifiers changed from: private */
    public boolean u;
    /* access modifiers changed from: private */
    public int v;

    private class a extends BaseAdapter {
        private SpannableString b = new SpannableString(" km");

        public a() {
            this.b.setSpan(new AbsoluteSizeSpan(12, true), 0, this.b.length(), 17);
        }

        public int getCount() {
            return MyTrackActivity.this.d.size();
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
                view = View.inflate(MyTrackActivity.this, R.layout.track_list_view_item, null);
                bVar = new b();
                bVar.a = (ImageView) view.findViewById(R.id.track_list_item_pic);
                bVar.b = (TextView) view.findViewById(R.id.track_list_item_address);
                bVar.d = (TextView) view.findViewById(R.id.track_list_item_start_time);
                bVar.c = (TextView) view.findViewById(R.id.track_list_item__total_distance);
                view.setTag(bVar);
            } else {
                bVar = (b) view.getTag();
            }
            com.ifengyu.intercom.greendao.bean.b bVar2 = (com.ifengyu.intercom.greendao.bean.b) MyTrackActivity.this.d.get(i);
            if (bVar2.y() == null) {
                bVar.a.setImageResource(R.drawable.track_item_can_not_load_bg);
            } else if (new File(bVar2.y()).exists()) {
                ImageLoader.getInstance().displayImage("file://" + bVar2.y(), bVar.a);
            } else {
                ImageLoader.getInstance().displayImage(bVar2.y(), bVar.a);
            }
            bVar.b.setText(bVar2.f());
            bVar.d.setText(ac.e((long) bVar2.h().intValue()));
            bVar.c.setText(String.format(Locale.getDefault(), "%.1f", new Object[]{Float.valueOf(((float) bVar2.o().intValue()) / 1000.0f)}));
            bVar.c.append(this.b);
            return view;
        }
    }

    private static class b {
        /* access modifiers changed from: private */
        public ImageView a;
        /* access modifiers changed from: private */
        public TextView b;
        /* access modifiers changed from: private */
        public TextView c;
        /* access modifiers changed from: private */
        public TextView d;

        private b() {
        }
    }

    static /* synthetic */ int g(MyTrackActivity myTrackActivity) {
        int i = myTrackActivity.s + 1;
        myTrackActivity.s = i;
        return i;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_my_track);
        r();
        this.d = MiTalkiApp.a().b().c().queryBuilder().a(Properties.A.a(Boolean.valueOf(true)), Properties.b.a(w.K())).b(Properties.h).c();
        f();
        e();
        d();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "MyTrackActivity");
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    private void d() {
        com.ifengyu.intercom.a.a.a((String) null, Integer.valueOf(-1), Integer.valueOf(-1), (com.ifengyu.intercom.a.b.b) new j() {
            public void a(Call call, Exception exc, int i) {
            }

            public void a(String str, int i) {
                boolean z;
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.getInt("errno") == 0) {
                        JSONArray jSONArray = jSONObject.getJSONArray(Const.PARAM_DATA);
                        s.c("MyTrackActivity", "all track at server:" + jSONArray.toString());
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                            String string = jSONObject2.getString("trackId");
                            String string2 = jSONObject2.getString("deleted");
                            int i3 = 0;
                            while (true) {
                                if (i3 >= MyTrackActivity.this.d.size()) {
                                    z = false;
                                    break;
                                } else if (((com.ifengyu.intercom.greendao.bean.b) MyTrackActivity.this.d.get(i3)).d() == null || !string.equals(((com.ifengyu.intercom.greendao.bean.b) MyTrackActivity.this.d.get(i3)).d())) {
                                    i3++;
                                } else if ("1".equals(string2)) {
                                    MyTrackActivity.this.b(i3);
                                    z = true;
                                } else {
                                    z = true;
                                }
                            }
                            if (!z && "0".equals(string2)) {
                                if (MyTrackActivity.this.a == null) {
                                    MyTrackActivity.this.a = new ArrayList<>();
                                }
                                MyTrackActivity.this.a.add(string);
                            }
                        }
                        if (MyTrackActivity.this.a != null && MyTrackActivity.this.a.size() > 0) {
                            Collections.reverse(MyTrackActivity.this.a);
                            MyTrackActivity.this.a(false, false, (int) R.string.dialog_please_wait, (int) R.drawable.load_spinner);
                            s.c("MyTrackActivity", "needDownloadServerFeedbackIDList:" + MyTrackActivity.this.a.toString());
                            if (MyTrackActivity.this.a.size() > 5) {
                                MyTrackActivity.this.u = true;
                                MyTrackActivity.this.v = 5;
                                MyTrackActivity.this.a((String) MyTrackActivity.this.a.get(MyTrackActivity.this.s));
                                return;
                            }
                            MyTrackActivity.this.u = false;
                            MyTrackActivity.this.v = MyTrackActivity.this.a.size();
                            MyTrackActivity.this.a((String) MyTrackActivity.this.a.get(MyTrackActivity.this.s));
                        }
                    }
                } catch (JSONException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(String str) {
        s.c("MyTrackActivity", "getSingleTrackDataFromServer---serverTrackID:" + str);
        com.ifengyu.intercom.a.a.a(str, Integer.valueOf(-1), Integer.valueOf(-1), (com.ifengyu.intercom.a.b.b) new j() {
            public void a(Call call, Exception exc, int i) {
                v.a((CharSequence) MyTrackActivity.this.getString(R.string.net_error_please_check), false);
                if (MyTrackActivity.this.u) {
                    MyTrackActivity.this.c.a();
                    MyTrackActivity.this.c.c();
                    MyTrackActivity.this.k();
                    return;
                }
                MyTrackActivity.this.c.b();
                MyTrackActivity.this.k();
            }

            /* renamed from: a */
            public String b(Response response, int i) throws IOException {
                try {
                    JSONObject jSONObject = new JSONObject(response.body().string());
                    if (jSONObject.getInt("errno") != 0) {
                        return XiaomiOAuthConstants.EXTRA_ERROR_CODE_2;
                    }
                    JSONObject jSONObject2 = jSONObject.getJSONArray(Const.PARAM_DATA).getJSONObject(0);
                    com.ifengyu.intercom.greendao.bean.b bVar = new com.ifengyu.intercom.greendao.bean.b();
                    bVar.a(jSONObject2.getString("userId"));
                    String str = jSONObject2.getString("userId") + "_" + jSONObject2.getString("beginTime");
                    bVar.b(str);
                    bVar.c(jSONObject2.getString("trackId"));
                    bVar.d(jSONObject2.getString("trackName"));
                    bVar.b(Integer.valueOf(jSONObject2.getString("beginTime")));
                    bVar.c(Integer.valueOf(jSONObject2.getString(BaseService.END_TIME)));
                    bVar.h(jSONObject2.getString(DistrictSearchQuery.KEYWORDS_CITY));
                    bVar.i(jSONObject2.getString(DistrictSearchQuery.KEYWORDS_DISTRICT));
                    bVar.d(Integer.valueOf(jSONObject2.getString("totalSeconds")));
                    bVar.e(Integer.valueOf(jSONObject2.getString("totalDistance")));
                    bVar.a(Float.valueOf(jSONObject2.getString("speed")));
                    bVar.f(Integer.valueOf(jSONObject2.getString("alt")));
                    bVar.g(Integer.valueOf(jSONObject2.getString("maxAlt")));
                    bVar.h(Integer.valueOf(jSONObject2.getString("minAlt")));
                    bVar.i(Integer.valueOf(jSONObject2.getString("accruedClimb")));
                    bVar.j(Integer.valueOf(jSONObject2.getString("accruedDescent")));
                    bVar.j(jSONObject2.getString("screenShot"));
                    bVar.a(Boolean.valueOf(false));
                    bVar.b(Boolean.valueOf(true));
                    MiTalkiApp.a().b().c().insert(bVar);
                    JSONArray jSONArray = new JSONArray(jSONObject2.getString("track"));
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONArray jSONArray2 = jSONArray.getJSONArray(i2);
                        MiTalkiApp.a().b().d().insert(new c(null, str, Integer.valueOf((int) (Double.valueOf(jSONArray2.getString(0)).doubleValue() * 1000000.0d)), Integer.valueOf((int) (Double.valueOf(jSONArray2.getString(1)).doubleValue() * 1000000.0d)), Integer.valueOf(jSONArray2.getString(2)), Integer.valueOf(jSONArray2.getString(3)), Integer.valueOf((int) (System.currentTimeMillis() / 1000)), Boolean.valueOf(jSONArray2.getString(4)).booleanValue()));
                    }
                    MyTrackActivity.this.d = MiTalkiApp.a().b().c().queryBuilder().a(Properties.A.a(Boolean.valueOf(true)), Properties.b.a(w.K())).b(Properties.h).c();
                    return "right";
                } catch (JSONException e) {
                    ThrowableExtension.printStackTrace(e);
                    return XiaomiOAuthConstants.EXTRA_ERROR_CODE_2;
                }
            }

            public void a(String str, int i) {
                if (XiaomiOAuthConstants.EXTRA_ERROR_CODE_2.equals(str)) {
                    MyTrackActivity.this.k();
                    return;
                }
                if (MyTrackActivity.this.c.getVisibility() == 8) {
                    MyTrackActivity.this.c.setVisibility(0);
                    MyTrackActivity.this.q.setVisibility(8);
                }
                MyTrackActivity.this.r.notifyDataSetChanged();
                if (MyTrackActivity.this.u) {
                    int g = MyTrackActivity.g(MyTrackActivity.this);
                    if (g < MyTrackActivity.this.v) {
                        MyTrackActivity.this.a((String) MyTrackActivity.this.a.get(g));
                        return;
                    }
                    MyTrackActivity.this.c.a();
                    MyTrackActivity.this.c.c();
                    MyTrackActivity.this.v = MyTrackActivity.this.v + 5;
                    MyTrackActivity.this.k();
                    return;
                }
                int g2 = MyTrackActivity.g(MyTrackActivity.this);
                if (g2 < MyTrackActivity.this.a.size()) {
                    MyTrackActivity.this.a((String) MyTrackActivity.this.a.get(g2));
                    return;
                }
                MyTrackActivity.this.c.b();
                MyTrackActivity.this.k();
            }
        });
    }

    public void c() {
        s.c("MyTrackActivity", "onLoadMoreItems  sectionLoadTrackLastLoadIndex:" + this.v);
        if (this.v >= this.a.size()) {
            this.u = false;
        } else {
            this.u = true;
        }
        if (this.s < this.a.size()) {
            a((String) this.a.get(this.s));
        }
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
        if (this.d.size() == 0) {
            this.c.setVisibility(8);
            this.q.setVisibility(0);
        } else {
            this.c.setVisibility(0);
            this.q.setVisibility(8);
        }
        this.r = new a();
        this.c.setAdapter(this.r);
        this.c.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                com.ifengyu.intercom.greendao.bean.b bVar = (com.ifengyu.intercom.greendao.bean.b) MyTrackActivity.this.d.get(i);
                Intent intent = new Intent(MyTrackActivity.this, TrackInfoDetailActivity.class);
                intent.putExtra("trackInfoPrimaryKeyId", bVar.a());
                if (bVar.v() == null) {
                    intent.putExtra("track_info_for_what", "for_preview_track");
                } else {
                    intent.putExtra("track_info_for_what", "for_look_saved_track");
                }
                MyTrackActivity.this.startActivity(intent);
            }
        });
        this.c.setOnItemLongClickListener(new OnItemLongClickListener() {
            public boolean onItemLongClick(AdapterView<?> adapterView, View view, final int i, long j) {
                new d(MyTrackActivity.this).c((int) R.string.dialog_message_are_you_sure_delete_track).b(true).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null).b((int) R.string.common_select, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        MyTrackActivity.this.a(i);
                    }
                }).b().c();
                return true;
            }
        });
        this.c.setLoadMoreListener(this);
    }

    private void f() {
        for (final int i = 0; i < this.d.size(); i++) {
            if (((com.ifengyu.intercom.greendao.bean.b) this.d.get(i)).d() == null) {
                com.ifengyu.intercom.a.a.a((com.ifengyu.intercom.greendao.bean.b) this.d.get(i), MiTalkiApp.a().b().d().queryBuilder().a(TrackPointDao.Properties.b.a(((com.ifengyu.intercom.greendao.bean.b) this.d.get(i)).c()), new i[0]).a(TrackPointDao.Properties.g).c(), (com.ifengyu.intercom.a.b.b) new j() {
                    public void a(Call call, Exception exc, int i) {
                    }

                    public void a(String str, int i) {
                        try {
                            JSONObject jSONObject = new JSONObject(str);
                            if (jSONObject.getInt("errno") == 0) {
                                ((com.ifengyu.intercom.greendao.bean.b) MyTrackActivity.this.d.get(i)).c(jSONObject.getJSONObject(Const.PARAM_DATA).getString("trackId"));
                                MiTalkiApp.a().b().c().insertOrReplace(MyTrackActivity.this.d.get(i));
                            }
                        } catch (JSONException e) {
                            ThrowableExtension.printStackTrace(e);
                        }
                    }
                });
            }
        }
    }

    /* access modifiers changed from: private */
    public void a(final int i) {
        if (!v.a((Context) this)) {
            v.a((CharSequence) getString(R.string.net_error_please_check), false);
            return;
        }
        a(false, false, (int) R.string.dialog_deleted, (int) R.drawable.load_spinner);
        com.ifengyu.intercom.greendao.bean.b bVar = (com.ifengyu.intercom.greendao.bean.b) this.d.get(i);
        if (bVar.d() != null) {
            com.ifengyu.intercom.a.a.b(bVar.d(), new j() {
                public void a(Call call, Exception exc, int i) {
                    MyTrackActivity.this.e(R.string.dialog_deleted_failed_please_check_network);
                    MyTrackActivity.this.d(R.drawable.mine_icon_lose);
                    MyTrackActivity.this.q();
                }

                public void a(String str, int i) {
                    try {
                        if (new JSONObject(str).getInt("errno") == 0) {
                            MyTrackActivity.this.b(i);
                            MyTrackActivity.this.e(R.string.delete_success);
                            MyTrackActivity.this.d(R.drawable.mine_icon_win);
                            MyTrackActivity.this.q();
                            return;
                        }
                        MyTrackActivity.this.e(R.string.dialog_deleted_failed_please_check_network);
                        MyTrackActivity.this.d(R.drawable.mine_icon_lose);
                        MyTrackActivity.this.q();
                    } catch (JSONException e) {
                        ThrowableExtension.printStackTrace(e);
                        MyTrackActivity.this.e(R.string.dialog_deleted_failed_please_check_network);
                        MyTrackActivity.this.d(R.drawable.mine_icon_lose);
                        MyTrackActivity.this.q();
                    }
                }
            });
            return;
        }
        b(i);
        e(R.string.delete_success);
        d(R.drawable.mine_icon_win);
        q();
    }

    /* access modifiers changed from: private */
    public void q() {
        MiTalkiApp.n().postDelayed(new Runnable() {
            public void run() {
                MyTrackActivity.this.k();
            }
        }, 500);
    }

    /* access modifiers changed from: private */
    public void b(int i) {
        final com.ifengyu.intercom.greendao.bean.b bVar = (com.ifengyu.intercom.greendao.bean.b) this.d.get(i);
        this.d.remove(i);
        this.r.notifyDataSetChanged();
        if (this.d.size() == 0) {
            this.c.setVisibility(8);
            this.q.setVisibility(0);
        }
        MiTalkiApp.a().b().c().deleteByKey(bVar.a());
        e.b().execute(new Runnable() {
            public void run() {
                for (c delete : MiTalkiApp.a().b().d().queryBuilder().a(TrackPointDao.Properties.b.a(bVar.c()), new i[0]).c()) {
                    MiTalkiApp.a().b().d().delete(delete);
                }
            }
        });
    }

    private void r() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.track_share_title);
        this.c = (LoadMoreListView) findViewById(R.id.my_track_list_view);
        this.q = findViewById(R.id.this_not_have_content_rl);
    }
}
