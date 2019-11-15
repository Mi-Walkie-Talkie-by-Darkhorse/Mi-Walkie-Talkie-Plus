package org.osmdroid.tileprovider.tilesource;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;
import com.mi.milinkforgame.sdk.base.os.Http;
import java.io.File;
import java.io.InputStream;
import java.util.Random;
import org.osmdroid.api.IMapView;
import org.osmdroid.tileprovider.BitmapPool;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.ReusableBitmapDrawable;
import org.osmdroid.tileprovider.util.Counters;

public abstract class BitmapTileSourceBase implements ITileSource {
    private static int globalOrdinal = 0;
    protected String mCopyright;
    protected final String mImageFilenameEnding;
    private final int mMaximumZoomLevel;
    private final int mMinimumZoomLevel;
    protected String mName;
    private final int mOrdinal;
    private final int mTileSizePixels;
    protected final Random random;

    public static final class LowMemoryException extends Exception {
        private static final long serialVersionUID = 146526524087765134L;

        public LowMemoryException(String str) {
            super(str);
        }

        public LowMemoryException(Throwable th) {
            super(th);
        }
    }

    public BitmapTileSourceBase(String str, int i, int i2, int i3, String str2) {
        this(str, i, i2, i3, str2, null);
    }

    public BitmapTileSourceBase(String str, int i, int i2, int i3, String str2, String str3) {
        this.random = new Random();
        int i4 = globalOrdinal;
        globalOrdinal = i4 + 1;
        this.mOrdinal = i4;
        this.mName = str;
        this.mMinimumZoomLevel = i;
        this.mMaximumZoomLevel = i2;
        this.mTileSizePixels = i3;
        this.mImageFilenameEnding = str2;
        this.mCopyright = str3;
    }

    public int ordinal() {
        return this.mOrdinal;
    }

    public String name() {
        return this.mName;
    }

    public String pathBase() {
        return this.mName;
    }

    public String imageFilenameEnding() {
        return this.mImageFilenameEnding;
    }

    public int getMinimumZoomLevel() {
        return this.mMinimumZoomLevel;
    }

    public int getMaximumZoomLevel() {
        return this.mMaximumZoomLevel;
    }

    public int getTileSizePixels() {
        return this.mTileSizePixels;
    }

    public Drawable getDrawable(String str) throws LowMemoryException {
        Bitmap decodeFile;
        try {
            Options options = new Options();
            BitmapPool.getInstance().applyReusableOptions(options);
            if (VERSION.SDK_INT == 15) {
                decodeFile = BitmapFactory.decodeFile(str);
            } else {
                decodeFile = BitmapFactory.decodeFile(str, options);
            }
            if (decodeFile != null) {
                return new ReusableBitmapDrawable(decodeFile);
            }
            if (new File(str).exists()) {
                Log.d(IMapView.LOGTAG, str + " is an invalid image file, deleting...");
                try {
                    new File(str).delete();
                } catch (Throwable th) {
                    Log.e(IMapView.LOGTAG, "Error deleting invalid file: " + str, th);
                }
                return null;
            }
            Log.d(IMapView.LOGTAG, "Request tile: " + str + " does not exist");
            return null;
        } catch (OutOfMemoryError e) {
            Log.e(IMapView.LOGTAG, "OutOfMemoryError loading bitmap: " + str);
            System.gc();
            throw new LowMemoryException((Throwable) e);
        } catch (Exception e2) {
            Log.e(IMapView.LOGTAG, "Unexpected error loading bitmap: " + str, e2);
            Counters.tileDownloadErrors++;
            System.gc();
        }
    }

    public String getTileRelativeFilenameString(MapTile mapTile) {
        StringBuilder sb = new StringBuilder();
        sb.append(pathBase());
        sb.append(Http.PROTOCOL_HOST_SPLITTER);
        sb.append(mapTile.getZoomLevel());
        sb.append(Http.PROTOCOL_HOST_SPLITTER);
        sb.append(mapTile.getX());
        sb.append(Http.PROTOCOL_HOST_SPLITTER);
        sb.append(mapTile.getY());
        sb.append(imageFilenameEnding());
        return sb.toString();
    }

    public Drawable getDrawable(InputStream inputStream) throws LowMemoryException {
        try {
            Options options = new Options();
            BitmapPool.getInstance().applyReusableOptions(options);
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
            if (decodeStream != null) {
                return new ReusableBitmapDrawable(decodeStream);
            }
        } catch (OutOfMemoryError e) {
            Log.e(IMapView.LOGTAG, "OutOfMemoryError loading bitmap");
            System.gc();
            throw new LowMemoryException((Throwable) e);
        } catch (Exception e2) {
            Log.w(IMapView.LOGTAG, "#547 Error loading bitmap" + pathBase(), e2);
        }
        return null;
    }

    public String getCopyrightNotice() {
        return this.mCopyright;
    }
}
