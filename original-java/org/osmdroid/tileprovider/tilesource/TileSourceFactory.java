package org.osmdroid.tileprovider.tilesource;

import java.util.ArrayList;
import java.util.List;
import org.osmdroid.tileprovider.MapTile;

public class TileSourceFactory {
    public static final OnlineTileSourceBase BASE_OVERLAY_NL = new XYTileSource("BaseNL", 0, 18, 256, ".png", new String[]{"http://overlay.openstreetmap.nl/basemap/"});
    public static final OnlineTileSourceBase CLOUDMADESMALLTILES = new CloudmadeTileSource("CloudMadeSmallTiles", 0, 21, 64, ".png", new String[]{"http://a.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s", "http://b.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s", "http://c.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"});
    public static final OnlineTileSourceBase CLOUDMADESTANDARDTILES = new CloudmadeTileSource("CloudMadeStandardTiles", 0, 18, 256, ".png", new String[]{"http://a.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s", "http://b.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s", "http://c.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"});
    public static final OnlineTileSourceBase CYCLEMAP = new XYTileSource("CycleMap", 0, 17, 256, ".png", new String[]{"http://a.tile.opencyclemap.org/cycle/", "http://b.tile.opencyclemap.org/cycle/", "http://c.tile.opencyclemap.org/cycle/"}, "Maps © Thunderforest, Data © OpenStreetMap contributors.");
    public static final OnlineTileSourceBase ChartbundleENRH = new XYTileSource("ChartbundleENRH", 4, 12, 256, ".png?type=google", new String[]{"http://wms.chartbundle.com/tms/v1.0/enrh/", "chartbundle.com"});
    public static final OnlineTileSourceBase ChartbundleENRL = new XYTileSource("ChartbundleENRL", 4, 12, 256, ".png?type=google", new String[]{"http://wms.chartbundle.com/tms/v1.0/enrl/", "chartbundle.com"});
    public static final OnlineTileSourceBase ChartbundleWAC = new XYTileSource("ChartbundleWAC", 4, 12, 256, ".png?type=google", new String[]{"http://wms.chartbundle.com/tms/v1.0/wac/"}, "chartbundle.com");
    public static final OnlineTileSourceBase DEFAULT_TILE_SOURCE = MAPNIK;
    public static final OnlineTileSourceBase FIETS_OVERLAY_NL = new XYTileSource("Fiets", 3, 18, 256, ".png", new String[]{"http://overlay.openstreetmap.nl/openfietskaart-overlay/"}, "© OpenStreetMap contributors");
    public static final OnlineTileSourceBase HIKEBIKEMAP = new XYTileSource("HikeBikeMap", 0, 18, 256, ".png", new String[]{"http://a.tiles.wmflabs.org/hikebike/", "http://b.tiles.wmflabs.org/hikebike/", "http://c.tiles.wmflabs.org/hikebike/"});
    public static final OnlineTileSourceBase MAPNIK = new XYTileSource("Mapnik", 0, 19, 256, ".png", new String[]{"http://a.tile.openstreetmap.org/", "http://b.tile.openstreetmap.org/", "http://c.tile.openstreetmap.org/"}, "© OpenStreetMap contributors");
    public static final OnlineTileSourceBase OPEN_SEAMAP = new XYTileSource("OpenSeaMap", 3, 18, 256, ".png", new String[]{"http://tiles.openseamap.org/seamark/"}, "OpenSeaMap");
    public static final OnlineTileSourceBase OpenTopo = new XYTileSource("OpenTopoMap", 0, 19, 256, ".png", new String[]{"https://opentopomap.org/"}, "Kartendaten: © OpenStreetMap-Mitwirkende, SRTM | Kartendarstellung: © OpenTopoMap (CC-BY-SA)");
    public static final OnlineTileSourceBase PUBLIC_TRANSPORT = new XYTileSource("OSMPublicTransport", 0, 17, 256, ".png", new String[]{"http://openptmap.org/tiles/"}, "© OpenStreetMap contributors");
    public static final OnlineTileSourceBase ROADS_OVERLAY_NL = new XYTileSource("RoadsNL", 0, 18, 256, ".png", new String[]{"http://overlay.openstreetmap.nl/roads/"}, "© OpenStreetMap contributors");
    public static final OnlineTileSourceBase USGS_SAT = new OnlineTileSourceBase("USGS National Map Sat", 0, 15, 256, "", new String[]{"https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryTopo/MapServer/tile/"}, "USGS") {
        public String getTileURLString(MapTile mapTile) {
            return getBaseUrl() + mapTile.getZoomLevel() + "/" + mapTile.getY() + "/" + mapTile.getX();
        }
    };
    public static final OnlineTileSourceBase USGS_TOPO = new OnlineTileSourceBase("USGS National Map Topo", 0, 15, 256, "", new String[]{"https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/tile/"}, "USGS") {
        public String getTileURLString(MapTile mapTile) {
            return getBaseUrl() + mapTile.getZoomLevel() + "/" + mapTile.getY() + "/" + mapTile.getX();
        }
    };
    private static List<ITileSource> mTileSources = new ArrayList();

    public static ITileSource getTileSource(String str) throws IllegalArgumentException {
        for (ITileSource iTileSource : mTileSources) {
            if (iTileSource.name().equals(str)) {
                return iTileSource;
            }
        }
        throw new IllegalArgumentException("No such tile source: " + str);
    }

    public static boolean containsTileSource(String str) {
        for (ITileSource name : mTileSources) {
            if (name.name().equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public static ITileSource getTileSource(int i) throws IllegalArgumentException {
        for (ITileSource iTileSource : mTileSources) {
            if (iTileSource.ordinal() == i) {
                return iTileSource;
            }
        }
        throw new IllegalArgumentException("No tile source at position: " + i);
    }

    public static List<ITileSource> getTileSources() {
        return mTileSources;
    }

    public static void addTileSource(ITileSource iTileSource) {
        mTileSources.add(iTileSource);
    }

    static {
        mTileSources.add(MAPNIK);
        mTileSources.add(CYCLEMAP);
        mTileSources.add(PUBLIC_TRANSPORT);
        mTileSources.add(HIKEBIKEMAP);
        mTileSources.add(USGS_TOPO);
        mTileSources.add(USGS_SAT);
        mTileSources.add(ChartbundleWAC);
        mTileSources.add(ChartbundleENRH);
        mTileSources.add(ChartbundleENRL);
        mTileSources.add(OpenTopo);
    }
}
