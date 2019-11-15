package com.autonavi.ae.gmap.style;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.autonavi.ae.gmap.style.MapTilsCacheAndResManager.RetStyleIconsFile;
import com.autonavi.ae.gmap.utils.GLFileUtil;
import com.autonavi.ae.gmap.utils.GLMapUtil;
import com.autonavi.amap.mapcore.FileUtil;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class MapTilsCacheAndResManagerImpl extends MapTilsCacheAndResManager {
    private static final int CREATE_DIR_COUNT = 5;
    private static final long Style_Update_Internal_Time = 43200000;
    private static volatile MapTilsCacheAndResManagerImpl instance = null;
    private String mCacheDir = "";
    private String mCachePath;
    private Context mContext;
    private String mMapExtResPath;

    public MapTilsCacheAndResManagerImpl(Context context, String str) {
        this.mCacheDir = str;
        this.mContext = context;
    }

    public void setMapCachePath(String str) {
        this.mCacheDir = str;
    }

    public String getMapCachePath() {
        return this.mCacheDir;
    }

    public void checkDir() {
        int i = 0;
        File file = new File(this.mCacheDir, MapTilsCacheAndResManager.MAP_RES_EXT_PATH_NAME);
        while (!file.exists()) {
            int i2 = i + 1;
            if (i >= 5) {
                break;
            }
            file.mkdir();
            i = i2;
        }
        this.mMapExtResPath = file.toString() + "/";
    }

    public synchronized void reset() {
        instance = null;
    }

    public byte[] getStyleData(String str, RetStyleIconsFile retStyleIconsFile) {
        try {
            return getStyleIconsData(str, 1, retStyleIconsFile);
        } catch (IOException e) {
            return null;
        }
    }

    public byte[] getIconsData(String str, RetStyleIconsFile retStyleIconsFile) {
        try {
            return getStyleIconsData(str, 2, retStyleIconsFile);
        } catch (IOException e) {
            return null;
        }
    }

    public byte[] getOtherResData(String str) {
        try {
            InputStream open = this.mContext.getAssets().open("map_assets/" + str);
            int available = open.available();
            if (available == 0) {
                return null;
            }
            byte[] bArr = new byte[available];
            for (int i = 0; i < available; i += open.read(bArr, i, available - i)) {
            }
            open.close();
            return bArr;
        } catch (IOException | OutOfMemoryError e) {
            return null;
        }
    }

    public byte[] getOtherResDataFromDisk(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return FileUtil.readFileContents(str);
    }

    public void saveFile(String str, int i, int i2, byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            File[] listFiles = new File(this.mMapExtResPath).listFiles();
            if (listFiles != null) {
                String str2 = str + "_";
                int length = listFiles.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        break;
                    }
                    File file = listFiles[i3];
                    if (file.getName().contains(str2)) {
                        file.delete();
                        break;
                    }
                    i3++;
                }
            }
            String str3 = str + "_" + i + "_" + i2 + ".data";
            addUdateRecorder(str + "_" + i);
            GLFileUtil.writeDatasToFile(this.mMapExtResPath + str3, bArr);
        }
    }

    private String getFilePreName(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split("_");
        if (split.length >= 3) {
            return split[0] + "_" + split[1] + "_" + split[2];
        }
        return null;
    }

    private void setRetFile(RetStyleIconsFile retStyleIconsFile, String str) {
        if (retStyleIconsFile != null) {
            retStyleIconsFile.fullName = str;
            String[] split = str.split("_|\\.");
            if (split.length >= 2) {
                retStyleIconsFile.name = split[0] + "_" + split[1];
                try {
                    retStyleIconsFile.clientVersion = Integer.parseInt(split[2]);
                    if (split.length > 3) {
                        retStyleIconsFile.serverVersion = Integer.parseInt(split[3]);
                    } else {
                        retStyleIconsFile.serverVersion = 1;
                    }
                } catch (NumberFormatException e) {
                    retStyleIconsFile.clientVersion = 1;
                    retStyleIconsFile.serverVersion = 1;
                }
            }
        }
    }

    private byte[] getStyleIconsData(String str, int i, RetStyleIconsFile retStyleIconsFile) throws IOException {
        String filePreName = getFilePreName(str);
        if (filePreName == null) {
            return null;
        }
        RetStyleIconsFile retStyleIconsFile2 = new RetStyleIconsFile();
        setRetFile(retStyleIconsFile2, str);
        File[] listFiles = new File(this.mMapExtResPath).listFiles();
        if (listFiles != null) {
            try {
                for (File file : listFiles) {
                    if (file.getName().contains(filePreName)) {
                        setRetFile(retStyleIconsFile, file.getName());
                        if (retStyleIconsFile2.serverVersion < retStyleIconsFile.serverVersion) {
                            byte[] readFileContents = GLFileUtil.readFileContents(file.getAbsolutePath());
                            if (readFileContents != null && readFileContents.length > 0) {
                                return readFileContents;
                            }
                        } else {
                            GLFileUtil.deleteFile(file);
                        }
                    }
                }
            } catch (OutOfMemoryError e) {
            }
        }
        setRetFile(retStyleIconsFile, str);
        return GLMapUtil.decodeAssetResData(this.mContext, "map_assets/" + str);
    }

    static void copyAssertToTmp(Context context, String str, File file) {
        if (!file.exists()) {
            try {
                if (file.createNewFile()) {
                    byte[] decodeAssetResData = GLMapUtil.decodeAssetResData(context, str);
                    if (decodeAssetResData != null) {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        fileOutputStream.write(decodeAssetResData);
                        fileOutputStream.close();
                    }
                }
            } catch (IOException e) {
            }
        }
    }

    public void addUdateRecorder(String str) {
        Editor edit = this.mContext.getSharedPreferences("styles_icons_update_recorder", 0).edit();
        edit.putLong(str, System.currentTimeMillis());
        edit.commit();
    }

    public synchronized boolean canUpate(String str) {
        boolean z = false;
        synchronized (this) {
            long j = this.mContext.getSharedPreferences("styles_icons_update_recorder", 0).getLong(str, -1);
            if (j <= 0 || System.currentTimeMillis() - j >= 43200000) {
                z = true;
            }
        }
        return z;
    }

    public byte[] getPolyIconFilePath(String str, RetStyleIconsFile retStyleIconsFile) {
        byte[] bArr = null;
        try {
            String filePreName = getFilePreName(str);
            if (TextUtils.isEmpty(filePreName)) {
                return bArr;
            }
            RetStyleIconsFile retStyleIconsFile2 = new RetStyleIconsFile();
            setRetFile(retStyleIconsFile2, str);
            File[] listFiles = new File(this.mMapExtResPath).listFiles();
            if (listFiles != null) {
                try {
                    for (File file : listFiles) {
                        if (file.getName().contains(filePreName)) {
                            setRetFile(retStyleIconsFile, file.getName());
                            if (retStyleIconsFile2.serverVersion >= retStyleIconsFile.serverVersion) {
                                GLFileUtil.deleteFile(file);
                            } else if (file.length() > 0) {
                                return (file.getAbsolutePath() + "\u0000").getBytes("utf-8");
                            }
                        }
                    }
                } catch (Throwable th) {
                }
            }
            copyAssetsFile(str);
            setRetFile(retStyleIconsFile, str);
            return (this.mMapExtResPath + str + "\u0000").getBytes("utf-8");
        } catch (Throwable th2) {
            ThrowableExtension.printStackTrace(th2);
            return bArr;
        }
    }

    private void copyAssetsFile(String str) {
        try {
            File file = new File(this.mMapExtResPath + str);
            if (file == null || !file.exists()) {
                InputStream open = this.mContext.getAssets().open("map_assets/" + str);
                if (open.available() != 0) {
                    FileOutputStream fileOutputStream = new FileOutputStream(this.mMapExtResPath + str);
                    byte[] bArr = new byte[1024];
                    for (int read = open.read(bArr); read > 0; read = open.read(bArr)) {
                        fileOutputStream.write(bArr, 0, read);
                    }
                    fileOutputStream.flush();
                    open.close();
                    fileOutputStream.close();
                }
            }
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
    }
}
