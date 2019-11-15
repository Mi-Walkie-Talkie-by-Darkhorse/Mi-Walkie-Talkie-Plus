package org.osmdroid.tileprovider.modules;

import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Set;
import org.osmdroid.api.IMapView;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.util.GEMFFile;

public class GEMFFileArchive implements IArchiveFile {
    private GEMFFile mFile;

    public GEMFFileArchive() {
    }

    private GEMFFileArchive(File file) throws FileNotFoundException, IOException {
        this.mFile = new GEMFFile(file);
    }

    public static GEMFFileArchive getGEMFFileArchive(File file) throws FileNotFoundException, IOException {
        return new GEMFFileArchive(file);
    }

    public void init(File file) throws Exception {
        this.mFile = new GEMFFile(file);
    }

    public InputStream getInputStream(ITileSource iTileSource, MapTile mapTile) {
        return this.mFile.getInputStream(mapTile.getX(), mapTile.getY(), mapTile.getZoomLevel());
    }

    public Set<String> getTileSources() {
        HashSet hashSet = new HashSet();
        try {
            hashSet.addAll(this.mFile.getSources().values());
        } catch (Exception e) {
            Log.w(IMapView.LOGTAG, "Error getting tile sources: ", e);
        }
        return hashSet;
    }

    public void close() {
        try {
            this.mFile.close();
        } catch (IOException e) {
        }
    }

    public String toString() {
        return "GEMFFileArchive [mGEMFFile=" + this.mFile.getName() + "]";
    }
}
