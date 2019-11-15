package org.osmdroid.tileprovider.tilesource;

import android.util.Log;
import org.osmdroid.api.IMapView;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.util.CloudmadeUtil;

public class CloudmadeTileSource extends OnlineTileSourceBase implements IStyledTileSource<Integer> {
    private Integer mStyle = Integer.valueOf(1);

    public CloudmadeTileSource(String str, int i, int i2, int i3, String str2, String[] strArr) {
        super(str, i, i2, i3, str2, strArr);
    }

    public String pathBase() {
        if (this.mStyle == null || this.mStyle.intValue() <= 1) {
            return this.mName;
        }
        return this.mName + this.mStyle;
    }

    public String getTileURLString(MapTile mapTile) {
        String cloudmadeKey = CloudmadeUtil.getCloudmadeKey();
        if (cloudmadeKey.length() == 0) {
            Log.e(IMapView.LOGTAG, "CloudMade key is not set. You should enter it in the manifest and call CloudmadeUtil.retrieveCloudmadeKey()");
        }
        String cloudmadeToken = CloudmadeUtil.getCloudmadeToken();
        return String.format(getBaseUrl(), new Object[]{cloudmadeKey, this.mStyle, Integer.valueOf(getTileSizePixels()), Integer.valueOf(mapTile.getZoomLevel()), Integer.valueOf(mapTile.getX()), Integer.valueOf(mapTile.getY()), this.mImageFilenameEnding, cloudmadeToken});
    }

    public void setStyle(Integer num) {
        this.mStyle = num;
    }

    public void setStyle(String str) {
        try {
            this.mStyle = Integer.valueOf(Integer.parseInt(str));
        } catch (NumberFormatException e) {
            Log.e(IMapView.LOGTAG, "Error setting integer style: " + str);
        }
    }

    public Integer getStyle() {
        return this.mStyle;
    }
}
