package org.osmdroid.tileprovider.modules;

import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import org.osmdroid.api.IMapView;
import org.osmdroid.tileprovider.IMapTileProviderCallback;
import org.osmdroid.tileprovider.IRegisterReceiver;
import org.osmdroid.tileprovider.MapTileProviderArray;
import org.osmdroid.tileprovider.tilesource.FileBasedTileSource;

public class OfflineTileProvider extends MapTileProviderArray implements IMapTileProviderCallback {
    IArchiveFile[] archives;

    public OfflineTileProvider(IRegisterReceiver iRegisterReceiver, File[] fileArr) throws Exception {
        super(FileBasedTileSource.getSource(fileArr[0].getName()), iRegisterReceiver);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < fileArr.length; i++) {
            IArchiveFile archiveFile = ArchiveFileFactory.getArchiveFile(fileArr[i]);
            if (archiveFile != null) {
                arrayList.add(archiveFile);
            } else {
                Log.w(IMapView.LOGTAG, "Skipping " + fileArr[i] + ", no tile provider is registered to handle the file extension");
            }
        }
        this.archives = new IArchiveFile[arrayList.size()];
        this.archives = (IArchiveFile[]) arrayList.toArray(this.archives);
        this.mTileProviderList.add(new MapTileFileArchiveProvider(iRegisterReceiver, getTileSource(), this.archives));
    }

    public IArchiveFile[] getArchives() {
        return this.archives;
    }

    public void detach() {
        if (this.archives != null) {
            for (IArchiveFile close : this.archives) {
                close.close();
            }
        }
        super.detach();
    }
}
