package org.osmdroid.tileprovider.tilesource.bing;

import org.json.JSONArray;
import org.json.JSONObject;

public class ImageryMetaDataResource {
    private static final String COPYRIGHT = "copyright";
    private static final String IMAGE_HEIGHT = "imageHeight";
    private static final String IMAGE_URL = "imageUrl";
    private static final String IMAGE_URL_SUBDOMAINS = "imageUrlSubdomains";
    private static final String IMAGE_WIDTH = "imageWidth";
    private static final String ZOOM_MAX = "ZoomMax";
    private static final String ZOOM_MIN = "ZoomMin";
    public String copyright = "";
    public int m_imageHeight = 256;
    public String m_imageUrl;
    public String[] m_imageUrlSubdomains;
    public int m_imageWidth = 256;
    public boolean m_isInitialised = false;
    private int m_subdomainsCounter = 0;
    public int m_zoomMax = 22;
    public int m_zoomMin = 1;

    public static ImageryMetaDataResource getDefaultInstance() {
        return new ImageryMetaDataResource();
    }

    public static ImageryMetaDataResource getInstanceFromJSON(JSONObject jSONObject, JSONObject jSONObject2) throws Exception {
        ImageryMetaDataResource imageryMetaDataResource = new ImageryMetaDataResource();
        if (jSONObject == null) {
            throw new Exception("JSON to parse is null");
        }
        imageryMetaDataResource.copyright = jSONObject2.getString(COPYRIGHT);
        if (jSONObject.has(IMAGE_HEIGHT)) {
            imageryMetaDataResource.m_imageHeight = jSONObject.getInt(IMAGE_HEIGHT);
        }
        if (jSONObject.has(IMAGE_WIDTH)) {
            imageryMetaDataResource.m_imageWidth = jSONObject.getInt(IMAGE_WIDTH);
        }
        if (jSONObject.has(ZOOM_MIN)) {
            imageryMetaDataResource.m_zoomMin = jSONObject.getInt(ZOOM_MIN);
        }
        if (jSONObject.has(ZOOM_MAX)) {
            imageryMetaDataResource.m_zoomMax = jSONObject.getInt(ZOOM_MAX);
        }
        imageryMetaDataResource.m_imageUrl = jSONObject.getString("imageUrl");
        if (imageryMetaDataResource.m_imageUrl != null && imageryMetaDataResource.m_imageUrl.matches(".*?\\{.*?\\}.*?")) {
            imageryMetaDataResource.m_imageUrl = imageryMetaDataResource.m_imageUrl.replaceAll("\\{.*?\\}", "%s");
        }
        JSONArray jSONArray = jSONObject.getJSONArray(IMAGE_URL_SUBDOMAINS);
        if (jSONArray != null && jSONArray.length() >= 1) {
            imageryMetaDataResource.m_imageUrlSubdomains = new String[jSONArray.length()];
            for (int i = 0; i < jSONArray.length(); i++) {
                imageryMetaDataResource.m_imageUrlSubdomains[i] = jSONArray.getString(i);
            }
        }
        imageryMetaDataResource.m_isInitialised = true;
        return imageryMetaDataResource;
    }

    public synchronized String getSubDomain() {
        String str;
        if (this.m_imageUrlSubdomains == null || this.m_imageUrlSubdomains.length <= 0) {
            str = null;
        } else {
            str = this.m_imageUrlSubdomains[this.m_subdomainsCounter];
            if (this.m_subdomainsCounter < this.m_imageUrlSubdomains.length - 1) {
                this.m_subdomainsCounter++;
            } else {
                this.m_subdomainsCounter = 0;
            }
        }
        return str;
    }
}
