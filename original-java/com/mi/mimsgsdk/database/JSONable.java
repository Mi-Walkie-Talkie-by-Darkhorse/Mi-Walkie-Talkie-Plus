package com.mi.mimsgsdk.database;

import org.json.JSONObject;

public interface JSONable {
    boolean parseJSONString(String str);

    JSONObject toJSONObject();

    String toJSONString();
}
