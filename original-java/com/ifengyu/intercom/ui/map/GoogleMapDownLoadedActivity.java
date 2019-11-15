package com.ifengyu.intercom.ui.map;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.greendao.bean.a;
import com.ifengyu.intercom.greendao.dao.TileDownloadStateDao.Properties;
import com.ifengyu.intercom.network.a.e;
import com.ifengyu.intercom.ui.adapter.k;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.map.MapDataProvider.b;
import com.ifengyu.intercom.ui.widget.dialog.OffMapDownloadDialog;
import com.ifengyu.intercom.ui.widget.dialog.OffMapDownloadDialog.OFF_MAP_DIALOG_CHECK;
import com.ifengyu.intercom.ui.widget.dialog.w;
import com.ifengyu.intercom.ui.widget.view.RoundProgressBarView;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GoogleMapDownLoadedActivity extends BaseActivity implements OnClickListener, k, b {
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.greendao.dao.b a;
    private RecyclerView b;
    private LinearLayout c;
    /* access modifiers changed from: private */
    public List<a> d;
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.ui.map.a.a q;
    private TextView r;
    private ImageView s;
    /* access modifiers changed from: private */
    public int t;
    /* access modifiers changed from: private */
    public RoundProgressBarView u;
    /* access modifiers changed from: private */
    public ArrayList<String> v = new ArrayList<>();
    /* access modifiers changed from: private */
    public File[] w;
    private LinearLayout x;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_offmap_download);
        c();
        this.a = MiTalkiApp.a().b();
        this.b = (RecyclerView) c(R.id.offmap_download_recyclerview);
        this.b.setLayoutManager(new LinearLayoutManager(this));
        a(this.a.b().queryBuilder().a(Properties.a).c());
        this.d = this.a.b().queryBuilder().a(Properties.a).c();
        List b2 = MapDataProvider.a().b();
        if (b2 == null || (b2 != null && b2.size() == 0)) {
            for (a aVar : this.d) {
                if (aVar.m().booleanValue()) {
                    aVar.a(Boolean.valueOf(false));
                    this.a.update(aVar);
                }
            }
            this.d = this.a.b().queryBuilder().a(Properties.a).c();
        }
        if (this.d.size() == 0) {
            this.x.setVisibility(8);
            this.c.setVisibility(0);
        } else {
            this.x.setVisibility(0);
            this.c.setVisibility(8);
        }
        this.q = new com.ifengyu.intercom.ui.map.a.a(this.d);
        this.b.setAdapter(this.q);
        this.b.setItemAnimator(null);
        this.q.a((k) this);
    }

    private void c() {
        c_();
        this.r = (TextView) c(R.id.title_bar_title);
        this.s = (ImageView) c(R.id.title_bar_right);
        this.x = (LinearLayout) c(R.id.offmap_download_recyclerview_layout);
        this.c = (LinearLayout) c(R.id.this_not_have_content_rl);
        this.r.setText(getText(R.string.google_satellitic_map_download));
        this.s.setVisibility(0);
        this.s.setOnClickListener(this);
        this.s.setImageResource(R.drawable.common_icon_increase);
    }

    private void a(final List<a> list) {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "mitalki/map/offline");
        if (file.exists()) {
            this.w = file.listFiles();
            e.b().execute(new Runnable() {
                public void run() {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < GoogleMapDownLoadedActivity.this.w.length) {
                            Iterator it = list.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    GoogleMapDownLoadedActivity.b(GoogleMapDownLoadedActivity.this.w[i2]);
                                    break;
                                }
                                a aVar = (a) it.next();
                                File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "mitalki/map/offline" + "/" + aVar.k());
                                if (!file.exists()) {
                                    GoogleMapDownLoadedActivity.this.a.delete(aVar);
                                }
                                if (GoogleMapDownLoadedActivity.this.w[i2].toString().equals(file.toString())) {
                                    break;
                                }
                            }
                            i = i2 + 1;
                        } else {
                            return;
                        }
                    }
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MapDataProvider.a().a((b) this);
        this.q.notifyDataSetChanged();
    }

    public void a(a aVar) {
        int i = 0;
        while (true) {
            if (i >= this.d.size()) {
                i = -1;
                break;
            } else if (aVar.k().equals(((a) this.d.get(i)).k())) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            a aVar2 = (a) this.d.get(i);
            aVar2.c(aVar.h());
            aVar2.d(aVar.i());
            aVar2.b(aVar.g());
            this.q.notifyItemChanged(i);
            return;
        }
        aVar.a(Boolean.valueOf(false));
    }

    public void a(View view, int i, RoundProgressBarView roundProgressBarView) {
        OffMapDownloadDialog offMapDownloadDialog;
        this.t = i;
        this.u = roundProgressBarView;
        switch (view.getId()) {
            case R.id.offmap_click /*2131755688*/:
                if (this.u.getVisibility() == 0) {
                    if (((a) this.d.get(this.t)).m().booleanValue()) {
                        offMapDownloadDialog = new OffMapDownloadDialog(this, OFF_MAP_DIALOG_CHECK.STOP_OR_CONTINUE, true);
                    } else {
                        offMapDownloadDialog = new OffMapDownloadDialog(this, OFF_MAP_DIALOG_CHECK.STOP_OR_CONTINUE, false);
                    }
                    offMapDownloadDialog.setOnClickListener(new OffMapDownloadDialog.OnClickListener() {
                        public void a() {
                            if (GoogleMapDownLoadedActivity.this.u.getVisibility() == 8) {
                                v.a((CharSequence) ad.a((int) R.string.toast_map_download_completed), false);
                            } else if (((a) GoogleMapDownLoadedActivity.this.d.get(GoogleMapDownLoadedActivity.this.t)).m().booleanValue() || v.a((Context) GoogleMapDownLoadedActivity.this)) {
                                MapDataProvider.a().a((a) GoogleMapDownLoadedActivity.this.d.get(GoogleMapDownLoadedActivity.this.t), GoogleMapDownLoadedActivity.this.a);
                                GoogleMapDownLoadedActivity.this.q.notifyItemChanged(GoogleMapDownLoadedActivity.this.t);
                            } else {
                                v.a((CharSequence) GoogleMapDownLoadedActivity.this.getString(R.string.net_error_please_check), false);
                            }
                        }

                        public void b() {
                        }

                        public void c() {
                            a aVar = (a) GoogleMapDownLoadedActivity.this.d.get(GoogleMapDownLoadedActivity.this.t);
                            MapDataProvider.a().a(aVar, GoogleMapDownLoadedActivity.this.a);
                            GoogleMapDownLoadedActivity.this.b(aVar);
                        }
                    });
                    offMapDownloadDialog.show();
                    return;
                }
                OffMapDownloadDialog offMapDownloadDialog2 = new OffMapDownloadDialog(this, OFF_MAP_DIALOG_CHECK.RENAME, false);
                offMapDownloadDialog2.setOnClickListener(new OffMapDownloadDialog.OnClickListener() {
                    /* access modifiers changed from: private */
                    public String b;
                    /* access modifiers changed from: private */
                    public a c;

                    public void a() {
                    }

                    public void b() {
                        this.c = (a) GoogleMapDownLoadedActivity.this.d.get(GoogleMapDownLoadedActivity.this.t);
                        this.b = this.c.k();
                        GoogleMapDownLoadedActivity.this.v.clear();
                        for (a k : GoogleMapDownLoadedActivity.this.d) {
                            GoogleMapDownLoadedActivity.this.v.add(k.k());
                        }
                        w wVar = new w(GoogleMapDownLoadedActivity.this, this.b, GoogleMapDownLoadedActivity.this.v);
                        wVar.a((w.a) new w.a() {
                            public void a(final String str) {
                                AnonymousClass3.this.c.b(str);
                                GoogleMapDownLoadedActivity.this.q.notifyDataSetChanged();
                                GoogleMapDownLoadedActivity.this.a.update(AnonymousClass3.this.c);
                                e.b().execute(new Runnable() {
                                    public void run() {
                                        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "mitalki/map/offline" + "/" + AnonymousClass3.this.b);
                                        File file2 = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "mitalki/map/offline" + "/" + str);
                                        if (file.exists()) {
                                            file.renameTo(file2);
                                        }
                                    }
                                });
                            }
                        });
                        wVar.show();
                        wVar.getWindow().setSoftInputMode(5);
                    }

                    public void c() {
                        GoogleMapDownLoadedActivity.this.b((a) GoogleMapDownLoadedActivity.this.d.get(GoogleMapDownLoadedActivity.this.t));
                    }
                });
                offMapDownloadDialog2.show();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void b(a aVar) {
        this.a.delete(aVar);
        this.d.remove(this.t);
        this.q.notifyDataSetChanged();
        if (this.d.size() == 0) {
            this.x.setVisibility(8);
            this.c.setVisibility(0);
        }
        final File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "mitalki/map/offline" + "/" + aVar.k());
        if (file.exists()) {
            e.b().execute(new Runnable() {
                public void run() {
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                    GoogleMapDownLoadedActivity.b(file);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public static boolean b(File file) {
        if (file.isDirectory()) {
            String[] list = file.list();
            for (String file2 : list) {
                if (!b(new File(file, file2))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_right /*2131755355*/:
                Intent intent = new Intent(this, OsmOffMapActivity.class);
                this.v.clear();
                for (a k : this.d) {
                    this.v.add(k.k());
                }
                intent.putStringArrayListExtra("off_map_downloaded_names", this.v);
                startActivityForResult(intent, 0);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == 1) {
            com.ifengyu.intercom.greendao.dao.b b2 = MiTalkiApp.a().b();
            List queryRaw = b2.b().queryRaw("", new String[0]);
            if (queryRaw.size() > 0 && queryRaw.size() > this.d.size()) {
                if (this.c.getVisibility() == 0) {
                    this.x.setVisibility(0);
                    this.c.setVisibility(8);
                }
                a aVar = (a) queryRaw.get(queryRaw.size() - 1);
                b2.update(aVar);
                this.d.add(aVar);
                this.q.notifyDataSetChanged();
                new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "mitalki/map/offline" + "/" + aVar.k()).mkdir();
                MapDataProvider.a().a(aVar, b2);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        MapDataProvider.a().b((b) this);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void c_() {
        this.g = (ImageView) c(R.id.title_bar_left);
        this.g.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                GoogleMapDownLoadedActivity.this.finish();
            }
        });
    }
}
