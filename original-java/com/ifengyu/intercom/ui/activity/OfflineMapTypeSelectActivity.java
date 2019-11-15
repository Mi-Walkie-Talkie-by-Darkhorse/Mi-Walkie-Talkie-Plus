package com.ifengyu.intercom.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.amap.api.services.district.DistrictSearchQuery;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.a;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.a.b.j;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.map.GoogleMapDownLoadedActivity;
import okhttp3.Call;
import org.json.JSONException;
import org.json.JSONObject;

public class OfflineMapTypeSelectActivity extends BaseActivity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_offline_map_type_select);
        ((TextView) findViewById(R.id.title_bar_title)).setText(getString(R.string.offlinemap_download));
        findViewById(R.id.title_bar_left).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                OfflineMapTypeSelectActivity.this.finish();
            }
        });
        c();
    }

    private void c() {
        double[] Y = w.Y();
        a.b(Y[0], Y[1], (b) new j() {
            public void a(Call call, Exception exc, int i) {
            }

            public void a(String str, int i) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if ("OK".equals((String) jSONObject.get("status"))) {
                        w.l(jSONObject.getJSONObject("result").getJSONObject("addressComponent").getString(DistrictSearchQuery.KEYWORDS_CITY));
                    }
                } catch (JSONException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        });
    }

    public void gaodeMapDownloadClicked(View view) {
        startActivity(new Intent(this, GaoDeMapDownLoadedActivity.class));
    }

    public void googleMapDownloadClicked(View view) {
        startActivity(new Intent(this, GoogleMapDownLoadedActivity.class));
    }
}
