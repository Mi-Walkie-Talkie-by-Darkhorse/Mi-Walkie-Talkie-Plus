package org.osmdroid.tileprovider.modules;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteFullException;
import android.util.Log;
import com.amap.api.services.core.AMapException;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.tileprovider.util.Counters;

public class SqlTileWriter implements IFilesystemCache {
    public static boolean CLEANUP_ON_START = true;
    public static final String COLUMN_EXPIRES = "expires";
    public static final String DATABASE_FILENAME = "cache.db";
    static boolean hasInited = false;
    protected SQLiteDatabase db;
    protected File db_file;
    protected long lastSizeCheck = 0;
    final int questimate = AMapException.CODE_AMAP_SHARE_LICENSE_IS_EXPIRED;

    public SqlTileWriter() {
        Configuration.getInstance().getOsmdroidTileCache().mkdirs();
        this.db_file = new File(Configuration.getInstance().getOsmdroidTileCache().getAbsolutePath() + File.separator + DATABASE_FILENAME);
        try {
            this.db = SQLiteDatabase.openOrCreateDatabase(this.db_file, null);
            this.db.execSQL("CREATE TABLE IF NOT EXISTS tiles (key INTEGER , provider TEXT, tile BLOB, expires INTEGER, PRIMARY KEY (key, provider));");
        } catch (Throwable th) {
            Log.e(IMapView.LOGTAG, "Unable to start the sqlite tile writer. Check external storage availability.", th);
        }
        if (!hasInited) {
            hasInited = true;
            if (CLEANUP_ON_START) {
                AnonymousClass1 r0 = new Thread() {
                    public void run() {
                        SqlTileWriter.this.runCleanupOperation();
                    }
                };
                r0.setPriority(1);
                r0.start();
            }
        }
    }

    public void runCleanupOperation() {
        if (this.db != null) {
            try {
                if (this.db_file.length() > Configuration.getInstance().getTileFileSystemCacheMaxBytes()) {
                    long currentTimeMillis = System.currentTimeMillis();
                    Log.i(IMapView.LOGTAG, "Local cache is now " + this.db_file.length() + " max size is " + Configuration.getInstance().getTileFileSystemCacheMaxBytes());
                    long length = (this.db_file.length() - Configuration.getInstance().getTileFileSystemCacheMaxBytes()) / 4000;
                    Log.d(IMapView.LOGTAG, "Local cache purging " + length + " tiles.");
                    if (length > 0) {
                        try {
                            this.db.execSQL("DELETE FROM tiles WHERE key in (SELECT key FROM tiles ORDER BY expires DESC LIMIT " + length + ")");
                        } catch (Throwable th) {
                            Log.e(IMapView.LOGTAG, "error purging tiles from the tile cache", th);
                        }
                    }
                    Log.d(IMapView.LOGTAG, "purge completed in " + (System.currentTimeMillis() - currentTimeMillis) + "ms, cache size is " + this.db_file.length() + " bytes");
                }
            } catch (Exception e) {
                if (Configuration.getInstance().isDebugMode()) {
                    Log.d(IMapView.LOGTAG, "SqliteTileWriter init thread crash, db is probably not available", e);
                }
            }
            if (Configuration.getInstance().isDebugMode()) {
                Log.d(IMapView.LOGTAG, "Finished init thread");
            }
        } else if (Configuration.getInstance().isDebugMode()) {
            Log.d(IMapView.LOGTAG, "Finished init thread, aborted due to null database reference");
        }
    }

    public boolean saveFile(ITileSource iTileSource, MapTile mapTile, InputStream inputStream) {
        if (this.db == null || !this.db.isOpen()) {
            Log.d(IMapView.LOGTAG, "Unable to store cached tile from " + iTileSource.name() + Token.SEPARATOR + mapTile.toString() + ", database not available.");
            Counters.fileCacheSaveErrors++;
        } else {
            try {
                ContentValues contentValues = new ContentValues();
                long zoomLevel = (long) mapTile.getZoomLevel();
                long y = ((long) mapTile.getY()) + ((((long) mapTile.getX()) + (zoomLevel << ((int) zoomLevel))) << ((int) zoomLevel));
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
                contentValues.put("key", Long.valueOf(y));
                contentValues.put(DatabaseFileArchive.COLUMN_TILE, bArr);
                if (mapTile.getExpires() != null) {
                    contentValues.put("expires", Long.valueOf(mapTile.getExpires().getTime()));
                }
                this.db.delete("tiles", "key=? and provider=?", new String[]{y + "", iTileSource.name()});
                this.db.insert("tiles", null, contentValues);
                if (Configuration.getInstance().isDebugMode()) {
                    Log.d(IMapView.LOGTAG, "tile inserted " + iTileSource.name() + mapTile.toString());
                }
                if (System.currentTimeMillis() > this.lastSizeCheck + 300000) {
                    this.lastSizeCheck = System.currentTimeMillis();
                    if (this.db_file != null && this.db_file.length() > Configuration.getInstance().getTileFileSystemCacheTrimBytes()) {
                        runCleanupOperation();
                    }
                }
            } catch (SQLiteFullException e) {
                runCleanupOperation();
            } catch (Throwable th) {
                Log.e(IMapView.LOGTAG, "Unable to store cached tile from " + iTileSource.name() + Token.SEPARATOR + mapTile.toString() + " db is " + (this.db == null ? "null" : "not null"), th);
                Counters.fileCacheSaveErrors++;
            }
        }
        return false;
    }

    public boolean exists(String str, MapTile mapTile) {
        if (this.db == null || !this.db.isOpen()) {
            Log.d(IMapView.LOGTAG, "Unable to test for tile exists cached tile from " + str + Token.SEPARATOR + mapTile.toString() + ", database not available.");
            return false;
        }
        try {
            long y = (long) mapTile.getY();
            long zoomLevel = (long) mapTile.getZoomLevel();
            Cursor query = this.db.query("tiles", new String[]{DatabaseFileArchive.COLUMN_TILE}, "key = " + (y + ((((long) mapTile.getX()) + (zoomLevel << ((int) zoomLevel))) << ((int) zoomLevel))) + " and " + DatabaseFileArchive.COLUMN_PROVIDER + " = '" + str + "'", null, null, null, null);
            if (query.getCount() != 0) {
                query.close();
                return true;
            }
            query.close();
            return false;
        } catch (Throwable th) {
            Log.e(IMapView.LOGTAG, "Unable to store cached tile from " + str + Token.SEPARATOR + mapTile.toString(), th);
        }
    }

    public boolean exists(ITileSource iTileSource, MapTile mapTile) {
        return exists(iTileSource.name(), mapTile);
    }

    public void onDetach() {
        if (this.db != null && this.db.isOpen()) {
            try {
                this.db.close();
                Log.i(IMapView.LOGTAG, "Database detached");
            } catch (Exception e) {
                Log.e(IMapView.LOGTAG, "Database detach failed", e);
            }
        }
        this.db = null;
        this.db_file = null;
    }

    public boolean purgeCache() {
        if (this.db != null && this.db.isOpen()) {
            try {
                this.db.delete("tiles", null, null);
                return true;
            } catch (Throwable th) {
                Log.w(IMapView.LOGTAG, "Error purging the db", th);
            }
        }
        return false;
    }

    public boolean purgeCache(String str) {
        if (this.db != null && this.db.isOpen()) {
            try {
                this.db.delete("tiles", "provider = ?", new String[]{str});
                return true;
            } catch (Throwable th) {
                Log.w(IMapView.LOGTAG, "Error purging the db", th);
            }
        }
        return false;
    }

    public int[] importFromFileCache(boolean z) {
        int[] iArr = {0, 0, 0, 0};
        File osmdroidTileCache = Configuration.getInstance().getOsmdroidTileCache();
        if (osmdroidTileCache.exists()) {
            File[] listFiles = osmdroidTileCache.listFiles();
            if (listFiles != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= listFiles.length) {
                        break;
                    }
                    if (listFiles[i2].isDirectory() && !listFiles[i2].isHidden()) {
                        File[] listFiles2 = listFiles[i2].listFiles();
                        if (listFiles2 != null) {
                            int i3 = 0;
                            while (true) {
                                int i4 = i3;
                                if (i4 >= listFiles2.length) {
                                    break;
                                }
                                if (listFiles2[i4].isDirectory() && !listFiles2[i4].isHidden()) {
                                    File[] listFiles3 = listFiles2[i4].listFiles();
                                    if (listFiles3 != null) {
                                        int i5 = 0;
                                        while (true) {
                                            int i6 = i5;
                                            if (i6 >= listFiles3.length) {
                                                break;
                                            }
                                            if (listFiles3[i6].isDirectory() && !listFiles3[i6].isHidden()) {
                                                File[] listFiles4 = listFiles3[i6].listFiles();
                                                if (listFiles3 != null) {
                                                    int i7 = 0;
                                                    while (true) {
                                                        int i8 = i7;
                                                        if (i8 >= listFiles4.length) {
                                                            break;
                                                        }
                                                        if (!listFiles4[i8].isHidden() && !listFiles4[i8].isDirectory()) {
                                                            try {
                                                                ContentValues contentValues = new ContentValues();
                                                                long parseLong = Long.parseLong(listFiles3[i6].getName());
                                                                long parseLong2 = Long.parseLong(listFiles4[i8].getName().substring(0, listFiles4[i8].getName().indexOf(".")));
                                                                long parseLong3 = Long.parseLong(listFiles2[i4].getName());
                                                                long j = (((parseLong3 << ((int) parseLong3)) + parseLong) << ((int) parseLong3)) + parseLong2;
                                                                contentValues.put(DatabaseFileArchive.COLUMN_PROVIDER, listFiles[i2].getName());
                                                                if (!exists(listFiles[i2].getName(), new MapTile((int) parseLong3, (int) parseLong, (int) parseLong2))) {
                                                                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(listFiles4[i8]));
                                                                    ArrayList arrayList = new ArrayList();
                                                                    while (true) {
                                                                        int read = bufferedInputStream.read();
                                                                        if (read == -1) {
                                                                            break;
                                                                        }
                                                                        arrayList.add(Byte.valueOf((byte) read));
                                                                    }
                                                                    byte[] bArr = new byte[arrayList.size()];
                                                                    for (int i9 = 0; i9 < arrayList.size(); i9++) {
                                                                        bArr[i9] = ((Byte) arrayList.get(i9)).byteValue();
                                                                    }
                                                                    contentValues.put("key", Long.valueOf(j));
                                                                    contentValues.put(DatabaseFileArchive.COLUMN_TILE, bArr);
                                                                    if (this.db.insert("tiles", null, contentValues) > 0) {
                                                                        if (Configuration.getInstance().isDebugMode()) {
                                                                            Log.d(IMapView.LOGTAG, "tile inserted " + listFiles[i2].getName() + "/" + parseLong3 + "/" + parseLong + "/" + parseLong2);
                                                                        }
                                                                        iArr[0] = iArr[0] + 1;
                                                                        if (z) {
                                                                            listFiles4[i8].delete();
                                                                            iArr[2] = iArr[2] + 1;
                                                                        }
                                                                    } else {
                                                                        Log.w(IMapView.LOGTAG, "tile NOT inserted " + listFiles[i2].getName() + "/" + parseLong3 + "/" + parseLong + "/" + parseLong2);
                                                                    }
                                                                }
                                                            } catch (Exception e) {
                                                                iArr[3] = iArr[3] + 1;
                                                            } catch (Throwable th) {
                                                                Log.e(IMapView.LOGTAG, "Unable to store cached tile from " + listFiles[i2].getName() + " db is " + (this.db == null ? "null" : "not null"), th);
                                                                iArr[1] = iArr[1] + 1;
                                                            }
                                                        }
                                                        i7 = i8 + 1;
                                                    }
                                                }
                                            }
                                            if (z) {
                                                try {
                                                    listFiles3[i6].delete();
                                                } catch (Exception e2) {
                                                    Log.e(IMapView.LOGTAG, "Unable to delete directory from " + listFiles3[i6].getAbsolutePath(), e2);
                                                    iArr[3] = iArr[3] + 1;
                                                }
                                            }
                                            i5 = i6 + 1;
                                        }
                                    }
                                }
                                if (z) {
                                    try {
                                        listFiles2[i4].delete();
                                    } catch (Exception e3) {
                                        Log.e(IMapView.LOGTAG, "Unable to delete directory from " + listFiles2[i4].getAbsolutePath(), e3);
                                        iArr[3] = iArr[3] + 1;
                                    }
                                }
                                i3 = i4 + 1;
                            }
                        }
                        if (z) {
                            try {
                                listFiles[i2].delete();
                            } catch (Exception e4) {
                                Log.e(IMapView.LOGTAG, "Unable to delete directory from " + listFiles[i2].getAbsolutePath(), e4);
                                iArr[3] = iArr[3] + 1;
                            }
                        }
                    }
                    i = i2 + 1;
                }
            }
        }
        return iArr;
    }

    public boolean remove(ITileSource iTileSource, MapTile mapTile) {
        if (this.db == null) {
            Log.d(IMapView.LOGTAG, "Unable to delete cached tile from " + iTileSource.name() + Token.SEPARATOR + mapTile.toString() + ", database not available.");
            Counters.fileCacheSaveErrors++;
            return false;
        }
        try {
            long zoomLevel = (long) mapTile.getZoomLevel();
            this.db.delete("tiles", "key=? and provider=?", new String[]{(((((long) mapTile.getX()) + (zoomLevel << ((int) zoomLevel))) << ((int) zoomLevel)) + ((long) mapTile.getY())) + "", iTileSource.name()});
            return true;
        } catch (Throwable th) {
            Log.e(IMapView.LOGTAG, "Unable to delete cached tile from " + iTileSource.name() + Token.SEPARATOR + mapTile.toString() + " db is " + (this.db == null ? "null" : "not null"), th);
            Counters.fileCacheSaveErrors++;
            return false;
        }
    }

    public long getRowCount(String str) {
        Cursor rawQuery;
        if (str == null) {
            try {
                rawQuery = this.db.rawQuery("select count(*) from tiles", null);
            } catch (Throwable th) {
                Log.e(IMapView.LOGTAG, "Unable to query for row count " + str, th);
                return 0;
            }
        } else {
            rawQuery = this.db.rawQuery("select count(*) from tiles where provider='" + str + "'", null);
        }
        rawQuery.moveToFirst();
        long j = rawQuery.getLong(0);
        rawQuery.close();
        return j;
    }
}
