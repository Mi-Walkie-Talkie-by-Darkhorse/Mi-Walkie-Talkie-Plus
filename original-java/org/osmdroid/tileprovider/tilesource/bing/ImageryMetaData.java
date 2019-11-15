package org.osmdroid.tileprovider.tilesource.bing;

import org.json.JSONArray;
import org.json.JSONObject;

public class ImageryMetaData {
    private static final String AUTH_RESULT_CODE = "authenticationResultCode";
    private static final String AUTH_RESULT_CODE_VALID = "ValidCredentials";
    private static final String ESTIMATED_TOTAL = "estimatedTotal";
    private static final String RESOURCE = "resources";
    private static final String RESOURCE_SETS = "resourceSets";
    private static final String STATUS_CODE = "statusCode";

    public static ImageryMetaDataResource getInstanceFromJSON(String str) throws Exception {
        if (str == null) {
            throw new Exception("JSON to parse is null");
        }
        JSONObject jSONObject = new JSONObject(str);
        int i = jSONObject.getInt(STATUS_CODE);
        if (i != 200) {
            throw new Exception("Status code = " + i);
        } else if (AUTH_RESULT_CODE_VALID.compareToIgnoreCase(jSONObject.getString(AUTH_RESULT_CODE)) != 0) {
            throw new Exception("authentication result code = " + jSONObject.getString(AUTH_RESULT_CODE));
        } else {
            JSONArray jSONArray = jSONObject.getJSONArray(RESOURCE_SETS);
            if (jSONArray == null || jSONArray.length() < 1) {
                throw new Exception("No results set found in json response");
            } else if (jSONArray.getJSONObject(0).getInt(ESTIMATED_TOTAL) > 0) {
                return ImageryMetaDataResource.getInstanceFromJSON(jSONArray.getJSONObject(0).getJSONArray(RESOURCE).getJSONObject(0), jSONObject);
            } else {
                throw new Exception("No resource found in json response");
            }
        }
    }
}
