package org.osmdroid.tileprovider.modules;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.osmdroid.api.IMapView;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.tilesource.ITileSource;

public class ZipFileArchive implements IArchiveFile {
    protected ZipFile mZipFile;

    public ZipFileArchive() {
    }

    private ZipFileArchive(ZipFile zipFile) {
        this.mZipFile = zipFile;
    }

    public static ZipFileArchive getZipFileArchive(File file) throws ZipException, IOException {
        return new ZipFileArchive(new ZipFile(file));
    }

    public void init(File file) throws Exception {
        this.mZipFile = new ZipFile(file);
    }

    public InputStream getInputStream(ITileSource iTileSource, MapTile mapTile) {
        try {
            ZipEntry entry = this.mZipFile.getEntry(iTileSource.getTileRelativeFilenameString(mapTile));
            if (entry != null) {
                return this.mZipFile.getInputStream(entry);
            }
        } catch (IOException e) {
            Log.w(IMapView.LOGTAG, "Error getting zip stream: " + mapTile, e);
        }
        return null;
    }

    public Set<String> getTileSources() {
        HashSet hashSet = new HashSet();
        try {
            Enumeration entries = this.mZipFile.entries();
            while (entries.hasMoreElements()) {
                String name = ((ZipEntry) entries.nextElement()).getName();
                if (name.contains("/")) {
                    hashSet.add(name.split("/")[0]);
                }
            }
        } catch (Exception e) {
            Log.w(IMapView.LOGTAG, "Error getting tile sources: ", e);
        }
        return hashSet;
    }

    public void close() {
        try {
            this.mZipFile.close();
        } catch (IOException e) {
        }
    }

    public String toString() {
        return "ZipFileArchive [mZipFile=" + this.mZipFile.getName() + "]";
    }
}
