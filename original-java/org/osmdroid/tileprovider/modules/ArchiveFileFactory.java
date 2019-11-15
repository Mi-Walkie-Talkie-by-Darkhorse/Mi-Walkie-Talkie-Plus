package org.osmdroid.tileprovider.modules;

import android.os.Build.VERSION;
import android.util.Log;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.osmdroid.api.IMapView;

public class ArchiveFileFactory {
    static Map<String, Class<? extends IArchiveFile>> extensionMap = new HashMap();

    static {
        extensionMap.put("zip", ZipFileArchive.class);
        if (VERSION.SDK_INT >= 10) {
            extensionMap.put("sqlite", DatabaseFileArchive.class);
            extensionMap.put("mbtiles", MBTilesFileArchive.class);
            extensionMap.put("gemf", GEMFFileArchive.class);
        }
    }

    public static boolean isFileExtensionRegistered(String str) {
        return extensionMap.containsKey(str);
    }

    public static void registerArchiveFileProvider(Class<? extends IArchiveFile> cls, String str) {
        extensionMap.put(str, cls);
    }

    public static IArchiveFile getArchiveFile(File file) {
        String name = file.getName();
        if (name.contains(".")) {
            try {
                name = name.substring(name.lastIndexOf(".") + 1);
            } catch (Exception e) {
            }
        }
        Class cls = (Class) extensionMap.get(name.toLowerCase());
        if (cls != null) {
            try {
                IArchiveFile iArchiveFile = (IArchiveFile) cls.newInstance();
                iArchiveFile.init(file);
                return iArchiveFile;
            } catch (InstantiationException e2) {
                Log.e(IMapView.LOGTAG, "Error initializing archive file provider " + file.getAbsolutePath(), e2);
            } catch (IllegalAccessException e3) {
                Log.e(IMapView.LOGTAG, "Error initializing archive file provider " + file.getAbsolutePath(), e3);
            } catch (Exception e4) {
                Log.e(IMapView.LOGTAG, "Error opening archive file " + file.getAbsolutePath(), e4);
            }
        }
        return null;
    }
}
