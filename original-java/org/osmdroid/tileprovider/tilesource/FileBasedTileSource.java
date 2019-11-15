package org.osmdroid.tileprovider.tilesource;

public class FileBasedTileSource extends XYTileSource {
    public FileBasedTileSource(String str, int i, int i2, int i3, String str2, String[] strArr) {
        super(str, i, i2, i3, str2, strArr);
    }

    public static ITileSource getSource(String str) {
        String str2;
        if (str.contains(".")) {
            str2 = str.substring(0, str.indexOf("."));
        } else {
            str2 = str;
        }
        return new FileBasedTileSource(str2, 0, 18, 256, ".png", new String[]{"http://localhost"});
    }
}
