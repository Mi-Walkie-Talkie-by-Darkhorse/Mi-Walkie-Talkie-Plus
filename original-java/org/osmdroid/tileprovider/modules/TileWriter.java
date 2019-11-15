package org.osmdroid.tileprovider.modules;

import android.util.Log;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.NoSuchElementException;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;
import org.osmdroid.tileprovider.tilesource.ITileSource;

public class TileWriter implements IFilesystemCache {
    static boolean hasInited = false;
    /* access modifiers changed from: private */
    public static long mUsedCacheSpace;
    Thread initThread = null;

    public TileWriter() {
        if (!hasInited) {
            hasInited = true;
            this.initThread = new Thread() {
                public void run() {
                    TileWriter.mUsedCacheSpace = 0;
                    TileWriter.this.calculateDirectorySize(Configuration.getInstance().getOsmdroidTileCache());
                    if (TileWriter.mUsedCacheSpace > Configuration.getInstance().getTileFileSystemCacheMaxBytes()) {
                        TileWriter.this.cutCurrentCache();
                    }
                    if (Configuration.getInstance().isDebugMode()) {
                        Log.d(IMapView.LOGTAG, "Finished init thread");
                    }
                }
            };
            this.initThread.setPriority(1);
            this.initThread.start();
        }
    }

    public static long getUsedCacheSpace() {
        return mUsedCacheSpace;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0098  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00a0  */
    /* JADX WARNING: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean saveFile(org.osmdroid.tileprovider.tilesource.ITileSource r7, org.osmdroid.tileprovider.MapTile r8, java.io.InputStream r9) {
        /*
            r6 = this;
            r0 = 0
            java.io.File r3 = new java.io.File
            org.osmdroid.config.IConfigurationProvider r1 = org.osmdroid.config.Configuration.getInstance()
            java.io.File r1 = r1.getOsmdroidTileCache()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = r7.getTileRelativeFilenameString(r8)
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r4 = ".tile"
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r2 = r2.toString()
            r3.<init>(r1, r2)
            org.osmdroid.config.IConfigurationProvider r1 = org.osmdroid.config.Configuration.getInstance()
            boolean r1 = r1.isDebugTileProviders()
            if (r1 == 0) goto L_0x004b
            java.lang.String r1 = "OsmDroid"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "TileWrite "
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r4 = r3.getAbsolutePath()
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r2 = r2.toString()
            android.util.Log.d(r1, r2)
        L_0x004b:
            java.io.File r1 = r3.getParentFile()
            boolean r2 = r1.exists()
            if (r2 != 0) goto L_0x005c
            boolean r1 = r6.createFolderAndCheckIfExists(r1)
            if (r1 != 0) goto L_0x005c
        L_0x005b:
            return r0
        L_0x005c:
            r2 = 0
            java.io.BufferedOutputStream r1 = new java.io.BufferedOutputStream     // Catch:{ IOException -> 0x008e, all -> 0x009c }
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x008e, all -> 0x009c }
            java.lang.String r3 = r3.getPath()     // Catch:{ IOException -> 0x008e, all -> 0x009c }
            r4.<init>(r3)     // Catch:{ IOException -> 0x008e, all -> 0x009c }
            r3 = 8192(0x2000, float:1.14794E-41)
            r1.<init>(r4, r3)     // Catch:{ IOException -> 0x008e, all -> 0x009c }
            long r2 = org.osmdroid.tileprovider.util.StreamUtils.copy(r9, r1)     // Catch:{ IOException -> 0x00a6 }
            long r4 = mUsedCacheSpace     // Catch:{ IOException -> 0x00a6 }
            long r2 = r2 + r4
            mUsedCacheSpace = r2     // Catch:{ IOException -> 0x00a6 }
            long r2 = mUsedCacheSpace     // Catch:{ IOException -> 0x00a6 }
            org.osmdroid.config.IConfigurationProvider r4 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ IOException -> 0x00a6 }
            long r4 = r4.getTileFileSystemCacheMaxBytes()     // Catch:{ IOException -> 0x00a6 }
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 <= 0) goto L_0x0087
            r6.cutCurrentCache()     // Catch:{ IOException -> 0x00a6 }
        L_0x0087:
            if (r1 == 0) goto L_0x008c
            org.osmdroid.tileprovider.util.StreamUtils.closeStream(r1)
        L_0x008c:
            r0 = 1
            goto L_0x005b
        L_0x008e:
            r1 = move-exception
            r1 = r2
        L_0x0090:
            int r2 = org.osmdroid.tileprovider.util.Counters.fileCacheSaveErrors     // Catch:{ all -> 0x00a4 }
            int r2 = r2 + 1
            org.osmdroid.tileprovider.util.Counters.fileCacheSaveErrors = r2     // Catch:{ all -> 0x00a4 }
            if (r1 == 0) goto L_0x005b
            org.osmdroid.tileprovider.util.StreamUtils.closeStream(r1)
            goto L_0x005b
        L_0x009c:
            r0 = move-exception
            r1 = r2
        L_0x009e:
            if (r1 == 0) goto L_0x00a3
            org.osmdroid.tileprovider.util.StreamUtils.closeStream(r1)
        L_0x00a3:
            throw r0
        L_0x00a4:
            r0 = move-exception
            goto L_0x009e
        L_0x00a6:
            r2 = move-exception
            goto L_0x0090
        */
        throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.tileprovider.modules.TileWriter.saveFile(org.osmdroid.tileprovider.tilesource.ITileSource, org.osmdroid.tileprovider.MapTile, java.io.InputStream):boolean");
    }

    public void onDetach() {
        if (this.initThread != null) {
            try {
                this.initThread.interrupt();
            } catch (Throwable th) {
            }
        }
    }

    public boolean remove(ITileSource iTileSource, MapTile mapTile) {
        File file = new File(Configuration.getInstance().getOsmdroidTileCache(), iTileSource.getTileRelativeFilenameString(mapTile) + OpenStreetMapTileProviderConstants.TILE_PATH_EXTENSION);
        if (file.exists()) {
            try {
                file.delete();
                return true;
            } catch (Exception e) {
                Log.i(IMapView.LOGTAG, "Unable to delete cached tile from " + iTileSource.name() + Token.SEPARATOR + mapTile.toString(), e);
            }
        }
        return false;
    }

    public boolean exists(ITileSource iTileSource, MapTile mapTile) {
        return new File(Configuration.getInstance().getOsmdroidTileCache(), iTileSource.getTileRelativeFilenameString(mapTile) + OpenStreetMapTileProviderConstants.TILE_PATH_EXTENSION).exists();
    }

    private boolean createFolderAndCheckIfExists(File file) {
        if (file.mkdirs()) {
            return true;
        }
        if (Configuration.getInstance().isDebugMode()) {
            Log.d(IMapView.LOGTAG, "Failed to create " + file + " - wait and check again");
        }
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
        }
        if (!file.exists()) {
            if (Configuration.getInstance().isDebugMode()) {
                Log.d(IMapView.LOGTAG, "File still doesn't exist: " + file);
            }
            return false;
        } else if (!Configuration.getInstance().isDebugMode()) {
            return true;
        } else {
            Log.d(IMapView.LOGTAG, "Seems like another thread created " + file);
            return true;
        }
    }

    /* access modifiers changed from: private */
    public void calculateDirectorySize(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isFile()) {
                    mUsedCacheSpace += file2.length();
                }
                if (file2.isDirectory() && !isSymbolicDirectoryLink(file, file2)) {
                    calculateDirectorySize(file2);
                }
            }
        }
    }

    private boolean isSymbolicDirectoryLink(File file, File file2) {
        try {
            if (!file.getCanonicalPath().equals(file2.getCanonicalFile().getParent())) {
                return true;
            }
            return false;
        } catch (IOException | NoSuchElementException e) {
            return true;
        }
    }

    private List<File> getDirectoryFileList(File file) {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isFile()) {
                    arrayList.add(file2);
                }
                if (file2.isDirectory()) {
                    arrayList.addAll(getDirectoryFileList(file2));
                }
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: private */
    public void cutCurrentCache() {
        synchronized (Configuration.getInstance().getOsmdroidTileCache()) {
            if (mUsedCacheSpace > Configuration.getInstance().getTileFileSystemCacheTrimBytes()) {
                Log.d(IMapView.LOGTAG, "Trimming tile cache from " + mUsedCacheSpace + " to " + Configuration.getInstance().getTileFileSystemCacheTrimBytes());
                File[] fileArr = (File[]) getDirectoryFileList(Configuration.getInstance().getOsmdroidTileCache()).toArray(new File[0]);
                Arrays.sort(fileArr, new Comparator<File>() {
                    public int compare(File file, File file2) {
                        return Long.valueOf(file.lastModified()).compareTo(Long.valueOf(file2.lastModified()));
                    }
                });
                for (File file : fileArr) {
                    if (mUsedCacheSpace <= Configuration.getInstance().getTileFileSystemCacheTrimBytes()) {
                        break;
                    }
                    long length = file.length();
                    if (file.delete()) {
                        if (Configuration.getInstance().isDebugTileProviders()) {
                            Log.d(IMapView.LOGTAG, "Cache trim deleting " + file.getAbsolutePath());
                        }
                        mUsedCacheSpace -= length;
                    }
                }
                Log.d(IMapView.LOGTAG, "Finished trimming tile cache");
            }
        }
    }
}
