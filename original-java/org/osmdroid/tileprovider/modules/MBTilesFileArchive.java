package org.osmdroid.tileprovider.modules;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.Collections;
import java.util.Set;
import org.osmdroid.api.IMapView;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.tilesource.ITileSource;

public class MBTilesFileArchive implements IArchiveFile {
    public static final String COL_TILES_TILE_COLUMN = "tile_column";
    public static final String COL_TILES_TILE_DATA = "tile_data";
    public static final String COL_TILES_TILE_ROW = "tile_row";
    public static final String COL_TILES_ZOOM_LEVEL = "zoom_level";
    public static final String TABLE_TILES = "tiles";
    private SQLiteDatabase mDatabase;

    public MBTilesFileArchive() {
    }

    private MBTilesFileArchive(SQLiteDatabase sQLiteDatabase) {
        this.mDatabase = sQLiteDatabase;
    }

    public static MBTilesFileArchive getDatabaseFileArchive(File file) throws SQLiteException {
        return new MBTilesFileArchive(SQLiteDatabase.openDatabase(file.getAbsolutePath(), null, 17));
    }

    public void init(File file) throws Exception {
        this.mDatabase = SQLiteDatabase.openDatabase(file.getAbsolutePath(), null, 17);
    }

    public InputStream getInputStream(ITileSource iTileSource, MapTile mapTile) {
        ByteArrayInputStream byteArrayInputStream;
        try {
            Cursor query = this.mDatabase.query("tiles", new String[]{COL_TILES_TILE_DATA}, "tile_column=? and tile_row=? and zoom_level=?", new String[]{Integer.toString(mapTile.getX()), Double.toString((Math.pow(2.0d, (double) mapTile.getZoomLevel()) - ((double) mapTile.getY())) - 1.0d), Integer.toString(mapTile.getZoomLevel())}, null, null, null);
            if (query.getCount() != 0) {
                query.moveToFirst();
                byteArrayInputStream = new ByteArrayInputStream(query.getBlob(0));
            } else {
                byteArrayInputStream = null;
            }
            query.close();
            if (byteArrayInputStream != null) {
                return byteArrayInputStream;
            }
        } catch (Throwable th) {
            Log.w(IMapView.LOGTAG, "Error getting db stream: " + mapTile, th);
        }
        return null;
    }

    public Set<String> getTileSources() {
        return Collections.EMPTY_SET;
    }

    public void close() {
        this.mDatabase.close();
    }

    public String toString() {
        return "DatabaseFileArchive [mDatabase=" + this.mDatabase.getPath() + "]";
    }
}
