package org.osmdroid.tileprovider.modules;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Set;
import org.osmdroid.api.IMapView;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.tilesource.ITileSource;

public class DatabaseFileArchive implements IArchiveFile {
    public static final String COLUMN_KEY = "key";
    public static final String COLUMN_PROVIDER = "provider";
    public static final String COLUMN_TILE = "tile";
    public static final String TABLE = "tiles";
    static final String[] tile_column = {COLUMN_TILE};
    private SQLiteDatabase mDatabase;

    public DatabaseFileArchive() {
    }

    private DatabaseFileArchive(SQLiteDatabase sQLiteDatabase) {
        this.mDatabase = sQLiteDatabase;
    }

    public static DatabaseFileArchive getDatabaseFileArchive(File file) throws SQLiteException {
        return new DatabaseFileArchive(SQLiteDatabase.openDatabase(file.getAbsolutePath(), null, 0));
    }

    public Set<String> getTileSources() {
        HashSet hashSet = new HashSet();
        try {
            Cursor rawQuery = this.mDatabase.rawQuery("SELECT distinct provider FROM tiles", null);
            while (rawQuery.moveToNext()) {
                hashSet.add(rawQuery.getString(0));
            }
            rawQuery.close();
        } catch (Exception e) {
            Log.w(IMapView.LOGTAG, "Error getting tile sources: ", e);
        }
        return hashSet;
    }

    public void init(File file) throws Exception {
        this.mDatabase = SQLiteDatabase.openDatabase(file.getAbsolutePath(), null, 17);
    }

    public byte[] getImage(ITileSource iTileSource, MapTile mapTile) {
        byte[] bArr;
        try {
            long y = (long) mapTile.getY();
            long zoomLevel = (long) mapTile.getZoomLevel();
            Cursor query = this.mDatabase.query("tiles", new String[]{COLUMN_TILE}, "key = " + (y + ((((long) mapTile.getX()) + (zoomLevel << ((int) zoomLevel))) << ((int) zoomLevel))) + " and " + COLUMN_PROVIDER + " = '" + iTileSource.name() + "'", null, null, null, null);
            if (query.getCount() != 0) {
                query.moveToFirst();
                bArr = query.getBlob(0);
            } else {
                bArr = null;
            }
            query.close();
            if (bArr != null) {
                return bArr;
            }
        } catch (Throwable th) {
            Log.w(IMapView.LOGTAG, "Error getting db stream: " + mapTile, th);
        }
        return null;
    }

    public InputStream getInputStream(ITileSource iTileSource, MapTile mapTile) {
        ByteArrayInputStream byteArrayInputStream;
        try {
            byte[] image = getImage(iTileSource, mapTile);
            if (image != null) {
                byteArrayInputStream = new ByteArrayInputStream(image);
            } else {
                byteArrayInputStream = null;
            }
            if (byteArrayInputStream != null) {
                return byteArrayInputStream;
            }
        } catch (Throwable th) {
            Log.w(IMapView.LOGTAG, "Error getting db stream: " + mapTile, th);
        }
        return null;
    }

    public void close() {
        this.mDatabase.close();
    }

    public String toString() {
        return "DatabaseFileArchive [mDatabase=" + this.mDatabase.getPath() + "]";
    }
}
