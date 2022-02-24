package com.ifengyu.intercom.ui.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.g.d.l;
import com.ifengyu.intercom.greendao.dao.TrackInfoDataDao;
import com.ifengyu.intercom.greendao.dao.TrackPointDao;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.j0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.view.LoadMoreListView;
import com.ifengyu.library.base.BaseApp;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import okhttp3.Call;
import okhttp3.Response;
import org.greenrobot.greendao.query.WhereCondition;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class MyTrackActivity extends BaseActivity implements View.OnClickListener, LoadMoreListView.b {
    private LoadMoreListView r;
    private List<com.ifengyu.intercom.greendao.bean.b> s;
    private View t;
    private i u;
    ArrayList<String> v;
    private boolean x;
    private int y;
    private final String q = "MyTrackActivity";
    private int w = 0;

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
                    z.c("MyTrackActivity", "all track at server:" + jSONArray.toString());
                    int i2 = 0;
                    while (true) {
                        boolean z = true;
                        if (i2 >= jSONArray.length()) {
                            break;
                        }
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        String string = jSONObject2.getString("trackId");
                        String string2 = jSONObject2.getString("deleted");
                        int i3 = 0;
                        while (true) {
                            if (i3 >= MyTrackActivity.this.s.size()) {
                                z = false;
                                break;
                            } else if (((com.ifengyu.intercom.greendao.bean.b) MyTrackActivity.this.s.get(i3)).p() == null || !string.equals(((com.ifengyu.intercom.greendao.bean.b) MyTrackActivity.this.s.get(i3)).p())) {
                                i3++;
                            } else if ("1".equals(string2)) {
                                MyTrackActivity.this.e(i3);
                            }
                        }
                        if (!z && "0".equals(string2)) {
                            if (MyTrackActivity.this.v == null) {
                                MyTrackActivity.this.v = new ArrayList<>();
                            }
                            MyTrackActivity.this.v.add(string);
                        }
                        i2++;
                    }
                    if (MyTrackActivity.this.v != null && MyTrackActivity.this.v.size() > 0) {
                        Collections.reverse(MyTrackActivity.this.v);
                        MyTrackActivity.this.a(false, false, R.string.dialog_please_wait, R.drawable.load_spinner);
                        z.c("MyTrackActivity", "needDownloadServerFeedbackIDList:" + MyTrackActivity.this.v.toString());
                        if (MyTrackActivity.this.v.size() > 5) {
                            MyTrackActivity.this.x = true;
                            MyTrackActivity.this.y = 5;
                            MyTrackActivity.this.c(MyTrackActivity.this.v.get(MyTrackActivity.this.w));
                            return;
                        }
                        MyTrackActivity.this.x = false;
                        MyTrackActivity.this.y = MyTrackActivity.this.v.size();
                        MyTrackActivity.this.c(MyTrackActivity.this.v.get(MyTrackActivity.this.w));
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            com.ifengyu.intercom.greendao.bean.b bVar = (com.ifengyu.intercom.greendao.bean.b) MyTrackActivity.this.s.get(i);
            Intent intent = new Intent(MyTrackActivity.this, TrackInfoDetailActivity.class);
            intent.putExtra("trackInfoPrimaryKeyId", bVar.k());
            if (bVar.x() == null) {
                intent.putExtra("track_info_for_what", "for_preview_track");
            } else {
                intent.putExtra("track_info_for_what", "for_look_saved_track");
            }
            MyTrackActivity.this.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements AdapterView.OnItemLongClickListener {

        /* loaded from: classes2.dex */
        class a implements DialogInterface.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f6100a;

            a(int i) {
                this.f6100a = i;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MyTrackActivity.this.f(this.f6100a);
            }
        }

        d() {
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(MyTrackActivity.this);
            fVar.b(R.string.dialog_message_are_you_sure_delete_track);
            fVar.a(true);
            fVar.a(R.string.common_cancel, (DialogInterface.OnClickListener) null);
            fVar.c(R.string.common_select, new a(i));
            fVar.a();
            fVar.d();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e extends l {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f6102b;

        e(int i) {
            this.f6102b = i;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
        }

        public void a(String str, int i) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("errno") == 0) {
                    ((com.ifengyu.intercom.greendao.bean.b) MyTrackActivity.this.s.get(this.f6102b)).e(jSONObject.getJSONObject("data").getString("trackId"));
                    MiTalkiApp.b().g().d().insertOrReplace(MyTrackActivity.this.s.get(this.f6102b));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends l {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f6104b;

        f(int i) {
            this.f6104b = i;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            MyTrackActivity.this.c(R.string.dialog_deleted_failed_please_check_network);
            MyTrackActivity.this.b(R.drawable.mine_icon_lose);
            MyTrackActivity.this.w();
        }

        public void a(String str, int i) {
            try {
                if (new JSONObject(str).getInt("errno") == 0) {
                    MyTrackActivity.this.e(this.f6104b);
                    MyTrackActivity.this.c(R.string.delete_success);
                    MyTrackActivity.this.b(R.drawable.mine_icon_win);
                    MyTrackActivity.this.w();
                } else {
                    MyTrackActivity.this.c(R.string.dialog_deleted_failed_please_check_network);
                    MyTrackActivity.this.b(R.drawable.mine_icon_lose);
                    MyTrackActivity.this.w();
                }
            } catch (JSONException e) {
                e.printStackTrace();
                MyTrackActivity.this.c(R.string.dialog_deleted_failed_please_check_network);
                MyTrackActivity.this.b(R.drawable.mine_icon_lose);
                MyTrackActivity.this.w();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyTrackActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.greendao.bean.b f6107a;

        h(com.ifengyu.intercom.greendao.bean.b bVar) {
            this.f6107a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (com.ifengyu.intercom.greendao.bean.c cVar : MiTalkiApp.b().g().e().queryBuilder().where(TrackPointDao.Properties.TrackID.eq(this.f6107a.v()), new WhereCondition[0]).list()) {
                MiTalkiApp.b().g().e().delete(cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class i extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private SpannableString f6109a;

        public i() {
            SpannableString spannableString = new SpannableString(" km");
            this.f6109a = spannableString;
            spannableString.setSpan(new AbsoluteSizeSpan(12, true), 0, this.f6109a.length(), 17);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return MyTrackActivity.this.s.size();
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
            j jVar;
            if (view == null) {
                view = View.inflate(MyTrackActivity.this, R.layout.track_list_view_item, null);
                jVar = new j(null);
                jVar.f6111a = (ImageView) view.findViewById(R.id.track_list_item_pic);
                jVar.f6112b = (TextView) view.findViewById(R.id.track_list_item_address);
                jVar.d = (TextView) view.findViewById(R.id.track_list_item_start_time);
                jVar.f6113c = (TextView) view.findViewById(R.id.track_list_item__total_distance);
                view.setTag(jVar);
            } else {
                jVar = (j) view.getTag();
            }
            com.ifengyu.intercom.greendao.bean.b bVar = (com.ifengyu.intercom.greendao.bean.b) MyTrackActivity.this.s.get(i);
            if (bVar.w() == null) {
                jVar.f6111a.setImageResource(R.drawable.track_item_can_not_load_bg);
            } else if (new File(bVar.w()).exists()) {
                ImageLoader instance = ImageLoader.getInstance();
                instance.displayImage("file://" + bVar.w(), jVar.f6111a);
            } else {
                ImageLoader.getInstance().displayImage(bVar.w(), jVar.f6111a);
            }
            jVar.f6112b.setText(bVar.y());
            jVar.d.setText(j0.d(bVar.f().intValue()));
            jVar.f6113c.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(bVar.q().intValue() / 1000.0f)));
            jVar.f6113c.append(this.f6109a);
            return view;
        }
    }

    /* loaded from: classes2.dex */
    private static class j {

        /* renamed from: a  reason: collision with root package name */
        private ImageView f6111a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f6112b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f6113c;
        private TextView d;

        private j() {
        }

        /* synthetic */ j(a aVar) {
            this();
        }
    }

    private void A() {
        for (int i2 = 0; i2 < this.s.size(); i2++) {
            if (this.s.get(i2).p() == null) {
                com.ifengyu.intercom.g.a.a(this.s.get(i2), MiTalkiApp.b().g().e().queryBuilder().where(TrackPointDao.Properties.TrackID.eq(this.s.get(i2).v()), new WhereCondition[0]).orderAsc(TrackPointDao.Properties.CurrentTime).list(), new e(i2));
            }
        }
    }

    static /* synthetic */ int f(MyTrackActivity myTrackActivity) {
        int i2 = myTrackActivity.w + 1;
        myTrackActivity.w = i2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        BaseApp.a().postDelayed(new g(), 500L);
    }

    private void x() {
        com.ifengyu.intercom.g.a.a((String) null, (Integer) (-1), (Integer) (-1), (com.ifengyu.intercom.g.d.b) new a());
    }

    private void y() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.track_share_title);
        this.r = (LoadMoreListView) findViewById(R.id.my_track_list_view);
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
        i iVar = new i();
        this.u = iVar;
        this.r.setAdapter((ListAdapter) iVar);
        this.r.setOnItemClickListener(new c());
        this.r.setOnItemLongClickListener(new d());
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
        setContentView(R.layout.activity_my_track);
        y();
        this.s = MiTalkiApp.b().g().d().queryBuilder().where(TrackInfoDataDao.Properties.IsSaved.eq(true), TrackInfoDataDao.Properties.Userid.eq(d0.N())).orderDesc(TrackInfoDataDao.Properties.BeginTime).list();
        A();
        z();
        x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends l {
        b() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            c0.a((CharSequence) MyTrackActivity.this.getString(R.string.net_error_please_check), false);
            if (MyTrackActivity.this.x) {
                MyTrackActivity.this.r.a();
                MyTrackActivity.this.r.b();
                MyTrackActivity.this.j();
                return;
            }
            MyTrackActivity.this.r.c();
            MyTrackActivity.this.j();
        }

        @Override // com.ifengyu.intercom.g.d.l, com.ifengyu.intercom.g.d.b
        public String a(Response response, int i) throws IOException {
            JSONException e;
            try {
                JSONObject jSONObject = new JSONObject(response.body().string());
                if (jSONObject.getInt("errno") != 0) {
                    return "error";
                }
                JSONArray jSONArray = jSONObject.getJSONArray("data");
                int i2 = 0;
                JSONObject jSONObject2 = jSONArray.getJSONObject(0);
                com.ifengyu.intercom.greendao.bean.b bVar = new com.ifengyu.intercom.greendao.bean.b();
                bVar.j(jSONObject2.getString("userId"));
                String str = jSONObject2.getString("userId") + "_" + jSONObject2.getString("beginTime");
                bVar.g(str);
                bVar.e(jSONObject2.getString("trackId"));
                bVar.i(jSONObject2.getString("trackName"));
                bVar.d(Integer.valueOf(jSONObject2.getString("beginTime")));
                bVar.e(Integer.valueOf(jSONObject2.getString("endTime")));
                bVar.b(jSONObject2.getString("city"));
                bVar.c(jSONObject2.getString("district"));
                bVar.i(Integer.valueOf(jSONObject2.getString("totalSeconds")));
                bVar.h(Integer.valueOf(jSONObject2.getString("totalDistance")));
                bVar.a(Float.valueOf(jSONObject2.getString("speed")));
                bVar.c(Integer.valueOf(jSONObject2.getString("alt")));
                bVar.f(Integer.valueOf(jSONObject2.getString("maxAlt")));
                bVar.g(Integer.valueOf(jSONObject2.getString("minAlt")));
                bVar.a(Integer.valueOf(jSONObject2.getString("accruedClimb")));
                bVar.b(Integer.valueOf(jSONObject2.getString("accruedDescent")));
                bVar.h(jSONObject2.getString("screenShot"));
                bVar.a((Boolean) false);
                bVar.b((Boolean) true);
                MiTalkiApp.b().g().d().insert(bVar);
                JSONArray jSONArray2 = new JSONArray(jSONObject2.getString("track"));
                int i3 = 0;
                while (i3 < jSONArray2.length()) {
                    JSONArray jSONArray3 = jSONArray2.getJSONArray(i3);
                    MiTalkiApp.b().g().e().insert(new com.ifengyu.intercom.greendao.bean.c(null, str, Integer.valueOf((int) (Double.valueOf(jSONArray3.getString(i2)).doubleValue() * 1000000.0d)), Integer.valueOf((int) (Double.valueOf(jSONArray3.getString(1)).doubleValue() * 1000000.0d)), Integer.valueOf(jSONArray3.getString(2)), Integer.valueOf(jSONArray3.getString(3)), Integer.valueOf((int) (System.currentTimeMillis() / 1000)), Boolean.valueOf(jSONArray3.getString(4)).booleanValue()));
                    i3++;
                    jSONArray2 = jSONArray2;
                    i2 = 0;
                }
                try {
                    MyTrackActivity.this.s = MiTalkiApp.b().g().d().queryBuilder().where(TrackInfoDataDao.Properties.IsSaved.eq(true), TrackInfoDataDao.Properties.Userid.eq(d0.N())).orderDesc(TrackInfoDataDao.Properties.BeginTime).list();
                    return "right";
                } catch (JSONException e2) {
                    e = e2;
                    e.printStackTrace();
                    return "error";
                }
            } catch (JSONException e3) {
                e = e3;
            }
        }

        public void a(String str, int i) {
            if ("error".equals(str)) {
                MyTrackActivity.this.j();
                return;
            }
            if (MyTrackActivity.this.r.getVisibility() == 8) {
                MyTrackActivity.this.r.setVisibility(0);
                MyTrackActivity.this.t.setVisibility(8);
            }
            MyTrackActivity.this.u.notifyDataSetChanged();
            if (MyTrackActivity.this.x) {
                int f = MyTrackActivity.f(MyTrackActivity.this);
                if (f < MyTrackActivity.this.y) {
                    MyTrackActivity myTrackActivity = MyTrackActivity.this;
                    myTrackActivity.c(myTrackActivity.v.get(f));
                    return;
                }
                MyTrackActivity.this.r.a();
                MyTrackActivity.this.r.b();
                MyTrackActivity.this.y += 5;
                MyTrackActivity.this.j();
                return;
            }
            int f2 = MyTrackActivity.f(MyTrackActivity.this);
            if (f2 < MyTrackActivity.this.v.size()) {
                MyTrackActivity myTrackActivity2 = MyTrackActivity.this;
                myTrackActivity2.c(myTrackActivity2.v.get(f2));
                return;
            }
            MyTrackActivity.this.r.c();
            MyTrackActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(int i2) {
        if (!c0.b(this)) {
            c0.a((CharSequence) getString(R.string.net_error_please_check), false);
            return;
        }
        a(false, false, R.string.dialog_deleted, R.drawable.load_spinner);
        com.ifengyu.intercom.greendao.bean.b bVar = this.s.get(i2);
        if (bVar.p() != null) {
            com.ifengyu.intercom.g.a.a(bVar.p(), new f(i2));
            return;
        }
        e(i2);
        c(R.string.delete_success);
        b(R.drawable.mine_icon_win);
        w();
    }

    @Override // com.ifengyu.intercom.ui.widget.view.LoadMoreListView.b
    public void e() {
        z.c("MyTrackActivity", "onLoadMoreItems  sectionLoadTrackLastLoadIndex:" + this.y);
        if (this.y >= this.v.size()) {
            this.x = false;
        } else {
            this.x = true;
        }
        if (this.w < this.v.size()) {
            c(this.v.get(this.w));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        z.c("MyTrackActivity", "getSingleTrackDataFromServer---serverTrackID:" + str);
        com.ifengyu.intercom.g.a.a(str, (Integer) (-1), (Integer) (-1), (com.ifengyu.intercom.g.d.b) new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i2) {
        com.ifengyu.intercom.greendao.bean.b bVar = this.s.get(i2);
        this.s.remove(i2);
        this.u.notifyDataSetChanged();
        if (this.s.size() == 0) {
            this.r.setVisibility(8);
            this.t.setVisibility(0);
        }
        MiTalkiApp.b().g().d().deleteByKey(bVar.k());
        com.ifengyu.intercom.network.d.e.a().execute(new h(bVar));
    }
}
