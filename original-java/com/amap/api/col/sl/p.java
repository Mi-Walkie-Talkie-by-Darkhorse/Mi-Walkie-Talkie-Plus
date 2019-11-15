package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.cloud.CloudImage;
import com.amap.api.services.cloud.CloudItem;
import com.amap.api.services.cloud.CloudItemDetail;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CloudHandler */
public abstract class p<T, V> extends l<T, V> {
    public p(Context context, T t) {
        super(context, t);
    }

    protected static CloudItemDetail a(JSONObject jSONObject) throws JSONException {
        CloudItemDetail cloudItemDetail = new CloudItemDetail(z.a(jSONObject, "_id"), z.b(jSONObject, "_location"), z.a(jSONObject, "_name"), z.a(jSONObject, "_address"));
        cloudItemDetail.setCreatetime(z.a(jSONObject, "_createtime"));
        cloudItemDetail.setUpdatetime(z.a(jSONObject, "_updatetime"));
        if (jSONObject.has("_distance")) {
            String optString = jSONObject.optString("_distance");
            if (!(optString == null || optString.equals("") || optString.equals("[]"))) {
                cloudItemDetail.setDistance(Integer.parseInt(optString));
            }
        }
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("_image");
        if (optJSONArray == null || optJSONArray.length() == 0) {
            cloudItemDetail.setmCloudImage(arrayList);
            return cloudItemDetail;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
            arrayList.add(new CloudImage(z.a(jSONObject2, "_id"), z.a(jSONObject2, "_preurl"), z.a(jSONObject2, "_url")));
        }
        cloudItemDetail.setmCloudImage(arrayList);
        return cloudItemDetail;
    }

    public final Map<String, String> c() {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-Type", "application/x-www-form-urlencoded");
        hashMap.put("Accept-Encoding", "gzip");
        hashMap.put("User-Agent", "AMAP SDK Android Search 6.1.0");
        hashMap.put("X-INFO", bs.a(this.d));
        hashMap.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", new Object[]{"6.1.0", "cloud"}));
        hashMap.put("logversion", "2.1");
        return hashMap;
    }

    protected static void a(CloudItem cloudItem, JSONObject jSONObject) {
        Iterator keys = jSONObject.keys();
        HashMap hashMap = new HashMap();
        if (keys != null) {
            while (keys.hasNext()) {
                Object next = keys.next();
                if (next != null && !next.toString().startsWith("_")) {
                    hashMap.put(next.toString(), jSONObject.optString(next.toString()));
                }
            }
            cloudItem.setCustomfield(hashMap);
        }
    }
}
