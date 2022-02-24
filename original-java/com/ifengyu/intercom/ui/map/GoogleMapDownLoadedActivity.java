package com.ifengyu.intercom.ui.map;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.greendao.dao.TileDownloadStateDao;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.ui.adapter.k;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.map.MapDataProvider;
import com.ifengyu.intercom.ui.widget.dialog.OffMapDownloadDialog;
import com.ifengyu.intercom.ui.widget.dialog.u;
import com.ifengyu.intercom.ui.widget.view.RoundProgressBarView;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class GoogleMapDownLoadedActivity extends BaseActivity implements MapDataProvider.c, View.OnClickListener, k {
    private File[] A;
    private LinearLayout B;
    private com.ifengyu.intercom.greendao.dao.b q;
    private RecyclerView r;
    private LinearLayout s;
    private List<com.ifengyu.intercom.greendao.bean.a> t;
    private com.ifengyu.intercom.ui.map.c.a u;
    private TextView v;
    private ImageView w;
    private int x;
    private RoundProgressBarView y;
    private ArrayList<String> z = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f6467a;

        a(List list) {
            this.f6467a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < GoogleMapDownLoadedActivity.this.A.length; i++) {
                Iterator it = this.f6467a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        GoogleMapDownLoadedActivity.b(GoogleMapDownLoadedActivity.this.A[i]);
                        break;
                    }
                    com.ifengyu.intercom.greendao.bean.a aVar = (com.ifengyu.intercom.greendao.bean.a) it.next();
                    String b2 = aVar.b();
                    File file = new File(k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/offline/" + b2);
                    if (!file.exists()) {
                        GoogleMapDownLoadedActivity.this.q.delete(aVar);
                    }
                    if (GoogleMapDownLoadedActivity.this.A[i].toString().equals(file.toString())) {
                        break;
                    }
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements OffMapDownloadDialog.OnClickListener {
        b() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.OffMapDownloadDialog.OnClickListener
        public void a() {
            com.ifengyu.intercom.greendao.bean.a aVar = (com.ifengyu.intercom.greendao.bean.a) GoogleMapDownLoadedActivity.this.t.get(GoogleMapDownLoadedActivity.this.x);
            MapDataProvider.b().a(aVar, GoogleMapDownLoadedActivity.this.q);
            GoogleMapDownLoadedActivity.this.b(aVar);
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.OffMapDownloadDialog.OnClickListener
        public void b() {
            if (GoogleMapDownLoadedActivity.this.y.getVisibility() == 8) {
                c0.a((CharSequence) k0.c(R.string.toast_map_download_completed), false);
            } else if (((com.ifengyu.intercom.greendao.bean.a) GoogleMapDownLoadedActivity.this.t.get(GoogleMapDownLoadedActivity.this.x)).e().booleanValue() || c0.b(GoogleMapDownLoadedActivity.this)) {
                MapDataProvider.b().a((com.ifengyu.intercom.greendao.bean.a) GoogleMapDownLoadedActivity.this.t.get(GoogleMapDownLoadedActivity.this.x), GoogleMapDownLoadedActivity.this.q);
                GoogleMapDownLoadedActivity.this.u.notifyItemChanged(GoogleMapDownLoadedActivity.this.x);
            } else {
                c0.a((CharSequence) GoogleMapDownLoadedActivity.this.getString(R.string.net_error_please_check), false);
            }
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.OffMapDownloadDialog.OnClickListener
        public void c() {
        }
    }

    /* loaded from: classes2.dex */
    class c implements OffMapDownloadDialog.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private String f6470a;

        /* renamed from: b  reason: collision with root package name */
        private com.ifengyu.intercom.greendao.bean.a f6471b;

        /* loaded from: classes2.dex */
        class a implements u.b {

            /* renamed from: com.ifengyu.intercom.ui.map.GoogleMapDownLoadedActivity$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class RunnableC0166a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f6474a;

                RunnableC0166a(String str) {
                    this.f6474a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    File file = new File(k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/offline/" + c.this.f6470a);
                    File file2 = new File(k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/offline/" + this.f6474a);
                    if (file.exists()) {
                        file.renameTo(file2);
                    }
                }
            }

            a() {
            }

            @Override // com.ifengyu.intercom.ui.widget.dialog.u.b
            public void a(String str) {
                c.this.f6471b.a(str);
                GoogleMapDownLoadedActivity.this.u.notifyDataSetChanged();
                GoogleMapDownLoadedActivity.this.q.update(c.this.f6471b);
                com.ifengyu.intercom.network.d.e.a().execute(new RunnableC0166a(str));
            }
        }

        c() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.OffMapDownloadDialog.OnClickListener
        public void b() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.OffMapDownloadDialog.OnClickListener
        public void c() {
            com.ifengyu.intercom.greendao.bean.a aVar = (com.ifengyu.intercom.greendao.bean.a) GoogleMapDownLoadedActivity.this.t.get(GoogleMapDownLoadedActivity.this.x);
            this.f6471b = aVar;
            this.f6470a = aVar.b();
            GoogleMapDownLoadedActivity.this.z.clear();
            for (com.ifengyu.intercom.greendao.bean.a aVar2 : GoogleMapDownLoadedActivity.this.t) {
                GoogleMapDownLoadedActivity.this.z.add(aVar2.b());
            }
            GoogleMapDownLoadedActivity googleMapDownLoadedActivity = GoogleMapDownLoadedActivity.this;
            u uVar = new u(googleMapDownLoadedActivity, this.f6470a, googleMapDownLoadedActivity.z);
            uVar.a(new a());
            uVar.show();
            uVar.getWindow().setSoftInputMode(5);
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.OffMapDownloadDialog.OnClickListener
        public void a() {
            GoogleMapDownLoadedActivity.this.b((com.ifengyu.intercom.greendao.bean.a) GoogleMapDownLoadedActivity.this.t.get(GoogleMapDownLoadedActivity.this.x));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f6476a;

        d(File file) {
            this.f6476a = file;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            GoogleMapDownLoadedActivity.b(this.f6476a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GoogleMapDownLoadedActivity.this.finish();
        }
    }

    private void w() {
        r();
        this.v = (TextView) a(R.id.title_bar_title);
        this.w = (ImageView) a(R.id.title_bar_right);
        this.B = (LinearLayout) a(R.id.offmap_download_recyclerview_layout);
        this.s = (LinearLayout) a(R.id.this_not_have_content_rl);
        this.v.setText(getText(R.string.google_satellitic_map_download));
        this.w.setVisibility(0);
        this.w.setOnClickListener(this);
        this.w.setImageResource(R.drawable.common_icon_increase);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == 1) {
            com.ifengyu.intercom.greendao.dao.b g = MiTalkiApp.b().g();
            List<com.ifengyu.intercom.greendao.bean.a> queryRaw = g.c().queryRaw("", new String[0]);
            if (queryRaw.size() > 0 && queryRaw.size() > this.t.size()) {
                if (this.s.getVisibility() == 0) {
                    this.B.setVisibility(0);
                    this.s.setVisibility(8);
                }
                com.ifengyu.intercom.greendao.bean.a aVar = queryRaw.get(queryRaw.size() - 1);
                g.update(aVar);
                this.t.add(aVar);
                this.u.notifyDataSetChanged();
                new File(k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/offline/" + aVar.b()).mkdir();
                MapDataProvider.b().a(aVar, g);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.title_bar_right) {
            Intent intent = new Intent(this, OsmOffMapActivity.class);
            this.z.clear();
            for (com.ifengyu.intercom.greendao.bean.a aVar : this.t) {
                this.z.add(aVar.b());
            }
            intent.putStringArrayListExtra("off_map_downloaded_names", this.z);
            startActivityForResult(intent, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_offmap_download);
        w();
        this.q = MiTalkiApp.b().g();
        RecyclerView recyclerView = (RecyclerView) a(R.id.offmap_download_recyclerview);
        this.r = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        a(this.q.c().queryBuilder().orderAsc(TileDownloadStateDao.Properties.Id).list());
        this.t = this.q.c().queryBuilder().orderAsc(TileDownloadStateDao.Properties.Id).list();
        List<com.ifengyu.intercom.greendao.bean.a> a2 = MapDataProvider.b().a();
        if (a2 == null || (a2 != null && a2.size() == 0)) {
            for (com.ifengyu.intercom.greendao.bean.a aVar : this.t) {
                if (aVar.e().booleanValue()) {
                    aVar.a((Boolean) false);
                    this.q.update(aVar);
                }
            }
            this.t = this.q.c().queryBuilder().orderAsc(TileDownloadStateDao.Properties.Id).list();
        }
        if (this.t.size() == 0) {
            this.B.setVisibility(8);
            this.s.setVisibility(0);
        } else {
            this.B.setVisibility(0);
            this.s.setVisibility(8);
        }
        com.ifengyu.intercom.ui.map.c.a aVar2 = new com.ifengyu.intercom.ui.map.c.a(this.t);
        this.u = aVar2;
        this.r.setAdapter(aVar2);
        this.r.setItemAnimator(null);
        this.u.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MapDataProvider.b().a(this);
        this.u.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        MapDataProvider.b().b(this);
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity
    protected void r() {
        ImageView imageView = (ImageView) a(R.id.title_bar_left);
        this.f6372c = imageView;
        imageView.setOnClickListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.ifengyu.intercom.greendao.bean.a aVar) {
        this.q.delete(aVar);
        this.t.remove(this.x);
        this.u.notifyDataSetChanged();
        if (this.t.size() == 0) {
            this.B.setVisibility(8);
            this.s.setVisibility(0);
        }
        String b2 = aVar.b();
        File file = new File(k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/offline/" + b2);
        if (file.exists()) {
            com.ifengyu.intercom.network.d.e.a().execute(new d(file));
        }
    }

    private void a(List<com.ifengyu.intercom.greendao.bean.a> list) {
        File file = new File(k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/offline");
        if (file.exists()) {
            this.A = file.listFiles();
            com.ifengyu.intercom.network.d.e.a().execute(new a(list));
        }
    }

    @Override // com.ifengyu.intercom.ui.map.MapDataProvider.c
    public void a(com.ifengyu.intercom.greendao.bean.a aVar) {
        int i = 0;
        while (true) {
            if (i >= this.t.size()) {
                i = -1;
                break;
            } else if (aVar.b().equals(this.t.get(i).b())) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            com.ifengyu.intercom.greendao.bean.a aVar2 = this.t.get(i);
            aVar2.d(aVar.l());
            aVar2.b(aVar.c());
            aVar2.a(aVar.a());
            this.u.notifyItemChanged(i);
            return;
        }
        aVar.a((Boolean) false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(File file) {
        if (file.isDirectory()) {
            for (String str : file.list()) {
                if (!b(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    @Override // com.ifengyu.intercom.ui.adapter.k
    public void a(View view, int i, RoundProgressBarView roundProgressBarView) {
        OffMapDownloadDialog offMapDownloadDialog;
        this.x = i;
        this.y = roundProgressBarView;
        if (view.getId() == R.id.offmap_click) {
            if (this.y.getVisibility() == 0) {
                if (this.t.get(this.x).e().booleanValue()) {
                    offMapDownloadDialog = new OffMapDownloadDialog(this, OffMapDownloadDialog.OFF_MAP_DIALOG_CHECK.STOP_OR_CONTINUE, true);
                } else {
                    offMapDownloadDialog = new OffMapDownloadDialog(this, OffMapDownloadDialog.OFF_MAP_DIALOG_CHECK.STOP_OR_CONTINUE, false);
                }
                offMapDownloadDialog.setOnClickListener(new b());
                offMapDownloadDialog.show();
                return;
            }
            OffMapDownloadDialog offMapDownloadDialog2 = new OffMapDownloadDialog(this, OffMapDownloadDialog.OFF_MAP_DIALOG_CHECK.RENAME, false);
            offMapDownloadDialog2.setOnClickListener(new c());
            offMapDownloadDialog2.show();
        }
    }
}
