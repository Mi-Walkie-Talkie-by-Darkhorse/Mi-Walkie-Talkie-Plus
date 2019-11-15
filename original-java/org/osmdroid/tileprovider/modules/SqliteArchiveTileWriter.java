package org.osmdroid.tileprovider.modules;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.tilesource.ITileSource;

public class SqliteArchiveTileWriter implements IFilesystemCache {
    static boolean hasInited = false;
    final SQLiteDatabase db;
    final File db_file;
    final int questimate = 8000;

    public SqliteArchiveTileWriter(String str) throws Exception {
        this.db_file = new File(str);
        try {
            this.db = SQLiteDatabase.openOrCreateDatabase(this.db_file.getAbsolutePath(), null);
            try {
                this.db.execSQL("CREATE TABLE IF NOT EXISTS tiles (key INTEGER , provider TEXT, tile BLOB, PRIMARY KEY (key, provider));");
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
                Log.d(IMapView.LOGTAG, "error setting db schema, it probably exists already", th);
            }
        } catch (Exception e) {
            throw new Exception("Trouble creating database file at " + str, e);
        }
    }

    public boolean saveFile(ITileSource iTileSource, MapTile mapTile, InputStream inputStream) {
        try {
            ContentValues contentValues = new ContentValues();
            long y = (long) mapTile.getY();
            long zoomLevel = (long) mapTile.getZoomLevel();
            long x = y + ((((long) mapTile.getX()) + (zoomLevel << ((int) zoomLevel))) << ((int) zoomLevel));
            contentValues.put(DatabaseFileArchive.COLUMN_PROVIDER, iTileSource.name());
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            ArrayList arrayList = new ArrayList();
            while (true) {
                int read = bufferedInputStream.read();
                if (read == -1) {
                    break;
                }
                arrayList.add(Byte.valueOf((byte) read));
            }
            byte[] bArr = new byte[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                bArr[i] = ((Byte) arrayList.get(i)).byteValue();
            }
            contentValues.put("key", Long.valueOf(x));
            contentValues.put(DatabaseFileArchive.COLUMN_TILE, bArr);
            this.db.insert("tiles", null, contentValues);
            if (Configuration.getInstance().isDebugMode()) {
                Log.d(IMapView.LOGTAG, "tile inserted " + iTileSource.name() + mapTile.toString());
            }
        } catch (Throwable th) {
            Log.e(IMapView.LOGTAG, "Unable to store cached tile from " + iTileSource.name() + Token.SEPARATOR + mapTile.toString(), th);
        }
        return false;
    }

    public boolean exists(ITileSource iTileSource, MapTile mapTile) {
        try {
            long y = (long) mapTile.getY();
            long zoomLevel = (long) mapTile.getZoomLevel();
            Cursor query = this.db.query("tiles", new String[]{DatabaseFileArchive.COLUMN_TILE}, "key = " + (y + ((((long) mapTile.getX()) + (zoomLevel << ((int) zoomLevel))) << ((int) zoomLevel))) + " and " + DatabaseFileArchive.COLUMN_PROVIDER + " = '" + iTileSource.name() + "'", null, null, null, null);
            if (query.getCount() != 0) {
                query.close();
                return true;
            }
            query.close();
            return false;
        } catch (Throwable th) {
            Log.e(IMapView.LOGTAG, "Unable to store cached tile from " + iTileSource.name() + Token.SEPARATOR + mapTile.toString(), th);
        }
    }

    public void onDetach() {
        if (this.db != null) {
            this.db.close();
        }
    }

    public boolean remove(ITileSource iTileSource, MapTile mapTile) {
        return false;
    }
}
