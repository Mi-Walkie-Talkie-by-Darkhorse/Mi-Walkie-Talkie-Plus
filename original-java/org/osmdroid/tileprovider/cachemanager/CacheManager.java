package org.osmdroid.tileprovider.cachemanager;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.graphics.Point;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.MapTileProviderBase;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;
import org.osmdroid.tileprovider.modules.IFilesystemCache;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.util.BoundingBox;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.util.MyMath;
import org.osmdroid.util.TileSystem;
import org.osmdroid.views.MapView;

public class CacheManager {
    protected final MapView mMapView;
    protected Set<CacheManagerTask> mPendingTasks = new HashSet();
    protected final MapTileProviderBase mTileProvider;
    protected final IFilesystemCache mTileWriter;

    public interface CacheManagerCallback {
        void downloadStarted();

        void onTaskComplete();

        void onTaskFailed(int i);

        void setPossibleTilesInArea(int i);

        void updateProgress(int i, int i2, int i3, int i4);
    }

    public abstract class CacheManagerTask extends AsyncTask<Object, Integer, Integer> {
        CacheManagerCallback callback;
        BoundingBox mBB;
        Context mCtx;
        ArrayList<GeoPoint> mGeoPoints;
        ProgressDialog mProgressDialog;
        int mZoomMax;
        int mZoomMin;
        boolean showUI;

        public CacheManagerTask(CacheManager cacheManager, Context context, BoundingBox boundingBox, int i, int i2, CacheManagerCallback cacheManagerCallback, boolean z) {
            this(context, boundingBox, i, i2);
            this.callback = cacheManagerCallback;
            this.showUI = z;
        }

        public CacheManagerTask(CacheManager cacheManager, Context context, ArrayList<GeoPoint> arrayList, int i, int i2, CacheManagerCallback cacheManagerCallback, boolean z) {
            this(context, arrayList, i, i2);
            this.callback = cacheManagerCallback;
            this.showUI = z;
            this.mGeoPoints = arrayList;
        }

        public CacheManagerTask(Context context, ArrayList<GeoPoint> arrayList, int i, int i2) {
            this.mProgressDialog = null;
            this.showUI = true;
            this.callback = null;
            this.mCtx = context;
            this.mGeoPoints = arrayList;
            this.mZoomMin = Math.max(i, CacheManager.this.mMapView.getMinZoomLevel());
            this.mZoomMax = Math.min(i2, CacheManager.this.mMapView.getMaxZoomLevel());
        }

        public CacheManagerTask(Context context, BoundingBox boundingBox, int i, int i2) {
            this.mProgressDialog = null;
            this.showUI = true;
            this.callback = null;
            this.mCtx = context;
            this.mBB = boundingBox;
            this.mZoomMin = Math.max(i, CacheManager.this.mMapView.getMinZoomLevel());
            this.mZoomMax = Math.min(i2, CacheManager.this.mMapView.getMaxZoomLevel());
        }

        /* access modifiers changed from: protected */
        public void onPreExecute() {
            if (this.showUI) {
                this.mProgressDialog = createProgressDialog(this.mCtx);
            }
        }

        /* access modifiers changed from: protected */
        public ProgressDialog createProgressDialog(Context context) {
            ProgressDialog progressDialog = new ProgressDialog(context);
            progressDialog.setProgressStyle(1);
            progressDialog.setCancelable(true);
            progressDialog.setOnCancelListener(new OnCancelListener() {
                public void onCancel(DialogInterface dialogInterface) {
                    CacheManagerTask.this.cancel(true);
                }
            });
            return progressDialog;
        }

        /* access modifiers changed from: protected */
        public void onProgressUpdate(Integer... numArr) {
            if (this.showUI) {
                this.mProgressDialog.setProgress(numArr[0].intValue());
                this.mProgressDialog.setMessage(CacheManager.this.zoomMessage(numArr[1].intValue(), this.mZoomMin, this.mZoomMax));
            }
            if (this.callback != null) {
                try {
                    this.callback.updateProgress(numArr[0].intValue(), numArr[1].intValue(), this.mZoomMin, this.mZoomMax);
                } catch (Throwable th) {
                    Log.w(IMapView.LOGTAG, "Error caught processing cachemanager callback, your implementation is faulty", th);
                }
            }
        }

        /* access modifiers changed from: protected */
        public void onCancelled() {
            super.onCancelled();
            CacheManager.this.mPendingTasks.remove(this);
        }
    }

    public class CleaningTask extends CacheManagerTask {
        public CleaningTask(Context context, BoundingBox boundingBox, int i, int i2) {
            super(context, boundingBox, i, i2);
            this.showUI = true;
        }

        /* access modifiers changed from: protected */
        public void onPreExecute() {
            super.onPreExecute();
            if (this.mProgressDialog != null) {
                this.mProgressDialog.setTitle("Cleaning tiles");
                this.mProgressDialog.setMessage(CacheManager.this.zoomMessage(this.mZoomMin, this.mZoomMin, this.mZoomMax));
                this.mProgressDialog.setMax(CacheManager.this.possibleTilesInArea(this.mBB, this.mZoomMin, this.mZoomMax));
                this.mProgressDialog.show();
            }
        }

        /* access modifiers changed from: protected */
        public void onPostExecute(Integer num) {
            Toast.makeText(this.mCtx, "Cleaning completed, " + num + " tiles deleted.", 0).show();
            if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
                this.mProgressDialog.dismiss();
            }
            CacheManager.this.mPendingTasks.remove(this);
        }

        /* access modifiers changed from: protected */
        public Integer doInBackground(Object... objArr) {
            return Integer.valueOf(cleanArea());
        }

        /* access modifiers changed from: protected */
        public int cleanArea() {
            ITileSource tileSource = CacheManager.this.mTileProvider.getTileSource();
            int i = 0;
            int i2 = 0;
            for (int i3 = this.mZoomMin; i3 <= this.mZoomMax; i3++) {
                Point mapTileFromCoordinates = CacheManager.getMapTileFromCoordinates(this.mBB.getLatSouth(), this.mBB.getLonEast(), i3);
                Point mapTileFromCoordinates2 = CacheManager.getMapTileFromCoordinates(this.mBB.getLatNorth(), this.mBB.getLonWest(), i3);
                int i4 = 1 << i3;
                int i5 = mapTileFromCoordinates2.y > 0 ? -1 : 0;
                int i6 = mapTileFromCoordinates2.x > 0 ? -1 : 0;
                int i7 = mapTileFromCoordinates2.y + i5;
                while (i7 <= mapTileFromCoordinates.y + 2 + i5) {
                    int i8 = i;
                    int i9 = i2;
                    for (int i10 = mapTileFromCoordinates2.x + i6; i10 <= mapTileFromCoordinates.x + 2 + i6; i10++) {
                        File fileName = CacheManager.getFileName(tileSource, new MapTile(i3, MyMath.mod(i10, i4), MyMath.mod(i7, i4)));
                        if (fileName.exists()) {
                            fileName.delete();
                            i8++;
                        }
                        i9++;
                        if (i9 % 1000 == 0) {
                            if (isCancelled()) {
                                return i8;
                            }
                            publishProgress(new Integer[]{Integer.valueOf(i9), Integer.valueOf(i3)});
                        }
                    }
                    i7++;
                    i2 = i9;
                    i = i8;
                }
            }
            return i;
        }
    }

    public class DownloadingTask extends CacheManagerTask {
        public DownloadingTask(Context context, BoundingBox boundingBox, int i, int i2, CacheManagerCallback cacheManagerCallback, boolean z) {
            super((CacheManager) CacheManager.this, context, boundingBox, i, i2, cacheManagerCallback, z);
        }

        public DownloadingTask(Context context, ArrayList<GeoPoint> arrayList, int i, int i2, CacheManagerCallback cacheManagerCallback, boolean z) {
            super((CacheManager) CacheManager.this, context, arrayList, i, i2, cacheManagerCallback, z);
        }

        /* access modifiers changed from: protected */
        public void onPreExecute() {
            super.onPreExecute();
            int i = 0;
            if (this.mBB != null) {
                i = CacheManager.this.possibleTilesInArea(this.mBB, this.mZoomMin, this.mZoomMax);
            } else if (this.mGeoPoints != null) {
                i = CacheManager.this.possibleTilesCovered(this.mGeoPoints, this.mZoomMin, this.mZoomMax);
            }
            if (this.showUI) {
                this.mProgressDialog.setTitle("Downloading tiles");
                this.mProgressDialog.setMessage(CacheManager.this.zoomMessage(this.mZoomMin, this.mZoomMin, this.mZoomMax));
                this.mProgressDialog.setMax(i);
                this.mProgressDialog.show();
            }
            if (this.callback != null) {
                try {
                    this.callback.setPossibleTilesInArea(i);
                    this.callback.downloadStarted();
                } catch (Throwable th) {
                    Log.w(IMapView.LOGTAG, "Error caught processing cachemanager callback, your implementation is faulty", th);
                }
            }
        }

        /* access modifiers changed from: protected */
        public void onPostExecute(Integer num) {
            if (this.showUI) {
                if (num.intValue() != 0) {
                    Toast.makeText(this.mCtx, "Loading completed with " + num + " errors.", 0).show();
                }
                if (this.mProgressDialog.isShowing()) {
                    this.mProgressDialog.dismiss();
                }
            }
            if (this.callback != null) {
                try {
                    if (num.intValue() == 0) {
                        this.callback.onTaskComplete();
                    } else {
                        this.callback.onTaskFailed(num.intValue());
                    }
                } catch (Throwable th) {
                    Log.w(IMapView.LOGTAG, "Error caught processing cachemanager callback, your implementation is faulty", th);
                }
            }
            CacheManager.this.mPendingTasks.remove(this);
        }

        /* access modifiers changed from: protected */
        public Integer doInBackground(Object... objArr) {
            return Integer.valueOf(downloadArea());
        }

        /* access modifiers changed from: protected */
        /* JADX WARNING: Code restructure failed: missing block: B:119:0x041a, code lost:
            r10 = r10 + 1;
            r6 = r7;
            r13 = r14;
            r7 = r8;
            r8 = r9;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int downloadArea() {
            /*
                r37 = this;
                r0 = r37
                org.osmdroid.tileprovider.cachemanager.CacheManager r6 = org.osmdroid.tileprovider.cachemanager.CacheManager.this
                org.osmdroid.tileprovider.MapTileProviderBase r6 = r6.mTileProvider
                org.osmdroid.tileprovider.tilesource.ITileSource r6 = r6.getTileSource()
                boolean r6 = r6 instanceof org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase
                if (r6 == 0) goto L_0x0098
                r0 = r37
                org.osmdroid.tileprovider.cachemanager.CacheManager r6 = org.osmdroid.tileprovider.cachemanager.CacheManager.this
                org.osmdroid.tileprovider.MapTileProviderBase r6 = r6.mTileProvider
                org.osmdroid.tileprovider.tilesource.ITileSource r6 = r6.getTileSource()
                r12 = r6
                org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase r12 = (org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase) r12
                r8 = 0
                r7 = 0
                r0 = r37
                org.osmdroid.util.BoundingBox r6 = r0.mBB
                if (r6 == 0) goto L_0x00c6
                r0 = r37
                int r6 = r0.mZoomMin
            L_0x0027:
                r0 = r37
                int r9 = r0.mZoomMax
                if (r6 > r9) goto L_0x0444
                r0 = r37
                org.osmdroid.util.BoundingBox r9 = r0.mBB
                double r10 = r9.getLatSouth()
                r0 = r37
                org.osmdroid.util.BoundingBox r9 = r0.mBB
                double r14 = r9.getLonEast()
                android.graphics.Point r11 = org.osmdroid.tileprovider.cachemanager.CacheManager.getMapTileFromCoordinates(r10, r14, r6)
                r0 = r37
                org.osmdroid.util.BoundingBox r9 = r0.mBB
                double r14 = r9.getLatNorth()
                r0 = r37
                org.osmdroid.util.BoundingBox r9 = r0.mBB
                double r16 = r9.getLonWest()
                r0 = r16
                android.graphics.Point r13 = org.osmdroid.tileprovider.cachemanager.CacheManager.getMapTileFromCoordinates(r14, r0, r6)
                r9 = 1
                int r14 = r9 << r6
                int r9 = r13.y
            L_0x005c:
                int r10 = r11.y
                if (r9 > r10) goto L_0x00c2
                int r10 = r13.x
                r36 = r10
                r10 = r8
                r8 = r7
                r7 = r36
            L_0x0068:
                int r15 = r11.x
                if (r7 > r15) goto L_0x00bc
                int r15 = org.osmdroid.util.MyMath.mod(r9, r14)
                int r16 = org.osmdroid.util.MyMath.mod(r7, r14)
                org.osmdroid.tileprovider.MapTile r17 = new org.osmdroid.tileprovider.MapTile
                r0 = r17
                r1 = r16
                r0.<init>(r6, r1, r15)
                r0 = r37
                org.osmdroid.tileprovider.cachemanager.CacheManager r15 = org.osmdroid.tileprovider.cachemanager.CacheManager.this
                r0 = r17
                boolean r15 = r15.loadTile(r12, r0)
                if (r15 != 0) goto L_0x008b
                int r8 = r8 + 1
            L_0x008b:
                int r10 = r10 + 1
                int r15 = r10 % 10
                if (r15 != 0) goto L_0x00b9
                boolean r15 = r37.isCancelled()
                if (r15 == 0) goto L_0x00a1
            L_0x0097:
                return r8
            L_0x0098:
                java.lang.String r6 = "OsmDroid"
                java.lang.String r7 = "TileSource is not an online tile source"
                android.util.Log.e(r6, r7)
                r8 = 0
                goto L_0x0097
            L_0x00a1:
                r15 = 2
                java.lang.Integer[] r15 = new java.lang.Integer[r15]
                r16 = 0
                java.lang.Integer r17 = java.lang.Integer.valueOf(r10)
                r15[r16] = r17
                r16 = 1
                java.lang.Integer r17 = java.lang.Integer.valueOf(r6)
                r15[r16] = r17
                r0 = r37
                r0.publishProgress(r15)
            L_0x00b9:
                int r7 = r7 + 1
                goto L_0x0068
            L_0x00bc:
                int r7 = r9 + 1
                r9 = r7
                r7 = r8
                r8 = r10
                goto L_0x005c
            L_0x00c2:
                int r6 = r6 + 1
                goto L_0x0027
            L_0x00c6:
                r0 = r37
                java.util.ArrayList r6 = r0.mGeoPoints
                if (r6 == 0) goto L_0x0444
                r13 = 0
                r6 = 0
                java.util.ArrayList r21 = new java.util.ArrayList
                r21.<init>()
                r0 = r37
                int r10 = r0.mZoomMin
            L_0x00d7:
                r0 = r37
                int r9 = r0.mZoomMax
                if (r10 > r9) goto L_0x0422
                r9 = 1
                int r22 = r9 << r10
                r0 = r37
                java.util.ArrayList r9 = r0.mGeoPoints
                java.util.Iterator r23 = r9.iterator()
                r14 = r13
                r9 = r8
                r8 = r7
                r7 = r6
            L_0x00ec:
                boolean r6 = r23.hasNext()
                if (r6 == 0) goto L_0x041a
                java.lang.Object r6 = r23.next()
                r13 = r6
                org.osmdroid.util.GeoPoint r13 = (org.osmdroid.util.GeoPoint) r13
                double r16 = r13.getLatitude()
                r0 = r16
                double r24 = org.osmdroid.util.TileSystem.GroundResolution(r0, r10)
                if (r9 == 0) goto L_0x035a
                if (r14 == 0) goto L_0x0453
                double r16 = r13.getLatitude()
                double r18 = r14.getLatitude()
                double r16 = r16 - r18
                double r18 = r13.getLongitude()
                double r26 = r14.getLongitude()
                double r18 = r18 - r26
                double r16 = r16 / r18
                double r18 = r13.getLongitude()
                double r26 = r14.getLongitude()
                int r6 = (r18 > r26 ? 1 : (r18 == r26 ? 0 : -1))
                if (r6 <= 0) goto L_0x0334
                r18 = 4609753056924675352(0x3ff921fb54442d18, double:1.5707963267948966)
                double r16 = java.lang.Math.atan(r16)
                double r16 = r18 - r16
            L_0x0134:
                org.osmdroid.util.GeoPoint r26 = new org.osmdroid.util.GeoPoint
                double r18 = r14.getLatitude()
                double r28 = r14.getLongitude()
                r0 = r26
                r1 = r18
                r3 = r28
                r0.<init>(r1, r3)
                r15 = r7
                r18 = r8
                r19 = r9
            L_0x014c:
                double r6 = r13.getLatitude()
                double r8 = r14.getLatitude()
                int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r6 <= 0) goto L_0x0164
                double r6 = r26.getLatitude()
                double r8 = r13.getLatitude()
                int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r6 < 0) goto L_0x017c
            L_0x0164:
                double r6 = r13.getLatitude()
                double r8 = r14.getLatitude()
                int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r6 >= 0) goto L_0x044d
                double r6 = r26.getLatitude()
                double r8 = r13.getLatitude()
                int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r6 <= 0) goto L_0x044d
            L_0x017c:
                double r6 = r13.getLongitude()
                double r8 = r14.getLongitude()
                int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r6 <= 0) goto L_0x0194
                double r6 = r26.getLongitude()
                double r8 = r13.getLongitude()
                int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r6 < 0) goto L_0x01ac
            L_0x0194:
                double r6 = r13.getLongitude()
                double r8 = r14.getLongitude()
                int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r6 >= 0) goto L_0x044d
                double r6 = r26.getLongitude()
                double r8 = r13.getLongitude()
                int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r6 <= 0) goto L_0x044d
            L_0x01ac:
                android.graphics.Point r11 = new android.graphics.Point
                r11.<init>()
                double r6 = r13.getLatitude()
                double r8 = r13.getLongitude()
                org.osmdroid.util.TileSystem.LatLongToPixelXY(r6, r8, r10, r11)
                double r6 = r26.getLatitude()
                r8 = 4614256656552045848(0x400921fb54442d18, double:3.141592653589793)
                double r6 = r6 * r8
                r8 = 4640537203540230144(0x4066800000000000, double:180.0)
                double r6 = r6 / r8
                double r8 = r26.getLongitude()
                r28 = 4614256656552045848(0x400921fb54442d18, double:3.141592653589793)
                double r8 = r8 * r28
                r28 = 4640537203540230144(0x4066800000000000, double:180.0)
                double r8 = r8 / r28
                double r28 = java.lang.Math.sin(r6)
                r30 = 4708606483430899712(0x415854a640000000, double:6378137.0)
                double r30 = r24 / r30
                double r30 = java.lang.Math.cos(r30)
                double r28 = r28 * r30
                double r30 = java.lang.Math.cos(r6)
                r32 = 4708606483430899712(0x415854a640000000, double:6378137.0)
                double r32 = r24 / r32
                double r32 = java.lang.Math.sin(r32)
                double r30 = r30 * r32
                double r32 = java.lang.Math.cos(r16)
                double r30 = r30 * r32
                double r28 = r28 + r30
                double r28 = java.lang.Math.asin(r28)
                double r30 = java.lang.Math.sin(r16)
                r32 = 4708606483430899712(0x415854a640000000, double:6378137.0)
                double r32 = r24 / r32
                double r32 = java.lang.Math.sin(r32)
                double r30 = r30 * r32
                double r32 = java.lang.Math.cos(r6)
                double r30 = r30 * r32
                r32 = 4708606483430899712(0x415854a640000000, double:6378137.0)
                double r32 = r24 / r32
                double r32 = java.lang.Math.cos(r32)
                double r6 = java.lang.Math.sin(r6)
                double r34 = java.lang.Math.sin(r28)
                double r6 = r6 * r34
                double r6 = r32 - r6
                r0 = r30
                double r6 = java.lang.Math.atan2(r0, r6)
                double r6 = r6 + r8
                r8 = 4640537203540230144(0x4066800000000000, double:180.0)
                double r8 = r8 * r28
                r28 = 4614256656552045848(0x400921fb54442d18, double:3.141592653589793)
                double r8 = r8 / r28
                r0 = r26
                r0.setLatitude(r8)
                r8 = 4640537203540230144(0x4066800000000000, double:180.0)
                double r6 = r6 * r8
                r8 = 4614256656552045848(0x400921fb54442d18, double:3.141592653589793)
                double r6 = r6 / r8
                r0 = r26
                r0.setLongitude(r6)
                double r6 = r26.getLatitude()
                double r8 = r26.getLongitude()
                android.graphics.Point r7 = org.osmdroid.tileprovider.cachemanager.CacheManager.getMapTileFromCoordinates(r6, r8, r10)
                boolean r6 = r7.equals(r15)
                if (r6 != 0) goto L_0x014c
                int r6 = r7.x
                if (r6 < 0) goto L_0x0341
                r6 = 0
                r11 = r6
            L_0x027d:
                int r6 = r7.y
                if (r6 < 0) goto L_0x0347
                r6 = 0
                r15 = r6
            L_0x0283:
                int r6 = r7.x
                int r6 = r6 + r11
                r8 = r18
                r9 = r19
                r18 = r6
            L_0x028c:
                int r6 = r7.x
                int r6 = r6 + 1
                int r6 = r6 + r11
                r0 = r18
                if (r0 > r6) goto L_0x0353
                int r6 = r7.y
                int r6 = r6 + r15
                r19 = r6
            L_0x029a:
                int r6 = r7.y
                int r6 = r6 + 1
                int r6 = r6 + r15
                r0 = r19
                if (r0 > r6) goto L_0x034d
                android.graphics.Point r27 = new android.graphics.Point
                r0 = r27
                r1 = r18
                r2 = r19
                r0.<init>(r1, r2)
                r20 = 0
                java.util.Iterator r28 = r21.iterator()
            L_0x02b4:
                boolean r6 = r28.hasNext()
                if (r6 == 0) goto L_0x0449
                java.lang.Object r6 = r28.next()
                android.graphics.Point r6 = (android.graphics.Point) r6
                int r0 = r6.x
                r29 = r0
                int r6 = r6.y
                r0 = r27
                r1 = r29
                boolean r6 = r0.equals(r1, r6)
                if (r6 == 0) goto L_0x02b4
                r6 = 1
            L_0x02d1:
                if (r6 != 0) goto L_0x032e
                r0 = r27
                int r6 = r0.y
                r0 = r22
                int r6 = org.osmdroid.util.MyMath.mod(r6, r0)
                r0 = r27
                int r0 = r0.x
                r20 = r0
                r0 = r20
                r1 = r22
                int r20 = org.osmdroid.util.MyMath.mod(r0, r1)
                org.osmdroid.tileprovider.MapTile r28 = new org.osmdroid.tileprovider.MapTile
                r0 = r28
                r1 = r20
                r0.<init>(r10, r1, r6)
                r0 = r37
                org.osmdroid.tileprovider.cachemanager.CacheManager r6 = org.osmdroid.tileprovider.cachemanager.CacheManager.this
                r0 = r28
                boolean r6 = r6.loadTile(r12, r0)
                if (r6 != 0) goto L_0x0302
                int r8 = r8 + 1
            L_0x0302:
                int r9 = r9 + 1
                int r6 = r9 % 10
                if (r6 != 0) goto L_0x0326
                boolean r6 = r37.isCancelled()
                if (r6 != 0) goto L_0x0097
                r6 = 2
                java.lang.Integer[] r6 = new java.lang.Integer[r6]
                r20 = 0
                java.lang.Integer r28 = java.lang.Integer.valueOf(r9)
                r6[r20] = r28
                r20 = 1
                java.lang.Integer r28 = java.lang.Integer.valueOf(r10)
                r6[r20] = r28
                r0 = r37
                r0.publishProgress(r6)
            L_0x0326:
                r6 = 0
                r0 = r21
                r1 = r27
                r0.add(r6, r1)
            L_0x032e:
                int r6 = r19 + 1
                r19 = r6
                goto L_0x029a
            L_0x0334:
                r18 = 4616991696741409234(0x4012d97c7f3321d2, double:4.71238898038469)
                double r16 = java.lang.Math.atan(r16)
                double r16 = r18 - r16
                goto L_0x0134
            L_0x0341:
                int r6 = r7.x
                int r6 = -r6
                r11 = r6
                goto L_0x027d
            L_0x0347:
                int r6 = r7.y
                int r6 = -r6
                r15 = r6
                goto L_0x0283
            L_0x034d:
                int r6 = r18 + 1
                r18 = r6
                goto L_0x028c
            L_0x0353:
                r15 = r7
                r18 = r8
                r19 = r9
                goto L_0x014c
            L_0x035a:
                double r6 = r13.getLatitude()
                double r14 = r13.getLongitude()
                android.graphics.Point r16 = org.osmdroid.tileprovider.cachemanager.CacheManager.getMapTileFromCoordinates(r6, r14, r10)
                r0 = r16
                int r6 = r0.x
                if (r6 < 0) goto L_0x03db
                r6 = 0
            L_0x036d:
                r0 = r16
                int r7 = r0.y
                if (r7 < 0) goto L_0x03e1
                r7 = 0
            L_0x0374:
                r0 = r16
                int r11 = r0.x
                int r11 = r11 + r6
                r36 = r11
                r11 = r9
                r9 = r8
                r8 = r36
            L_0x037f:
                r0 = r16
                int r14 = r0.x
                int r14 = r14 + 1
                int r14 = r14 + r6
                if (r8 > r14) goto L_0x0410
                r0 = r16
                int r14 = r0.y
                int r14 = r14 + r7
            L_0x038d:
                r0 = r16
                int r15 = r0.y
                int r15 = r15 + 1
                int r15 = r15 + r7
                if (r14 > r15) goto L_0x040c
                android.graphics.Point r17 = new android.graphics.Point
                r0 = r17
                r0.<init>(r8, r14)
                r0 = r17
                int r15 = r0.y
                r0 = r22
                int r15 = org.osmdroid.util.MyMath.mod(r15, r0)
                r0 = r17
                int r0 = r0.x
                r18 = r0
                r0 = r18
                r1 = r22
                int r18 = org.osmdroid.util.MyMath.mod(r0, r1)
                org.osmdroid.tileprovider.MapTile r19 = new org.osmdroid.tileprovider.MapTile
                r0 = r19
                r1 = r18
                r0.<init>(r10, r1, r15)
                r0 = r37
                org.osmdroid.tileprovider.cachemanager.CacheManager r15 = org.osmdroid.tileprovider.cachemanager.CacheManager.this
                r0 = r19
                boolean r15 = r15.loadTile(r12, r0)
                if (r15 != 0) goto L_0x0447
                int r15 = r9 + 1
            L_0x03cc:
                int r11 = r11 + 1
                int r9 = r11 % 10
                if (r9 != 0) goto L_0x03ff
                boolean r9 = r37.isCancelled()
                if (r9 == 0) goto L_0x03e7
                r8 = r15
                goto L_0x0097
            L_0x03db:
                r0 = r16
                int r6 = r0.x
                int r6 = -r6
                goto L_0x036d
            L_0x03e1:
                r0 = r16
                int r7 = r0.y
                int r7 = -r7
                goto L_0x0374
            L_0x03e7:
                r9 = 2
                java.lang.Integer[] r9 = new java.lang.Integer[r9]
                r18 = 0
                java.lang.Integer r19 = java.lang.Integer.valueOf(r11)
                r9[r18] = r19
                r18 = 1
                java.lang.Integer r19 = java.lang.Integer.valueOf(r10)
                r9[r18] = r19
                r0 = r37
                r0.publishProgress(r9)
            L_0x03ff:
                r9 = 0
                r0 = r21
                r1 = r17
                r0.add(r9, r1)
                int r9 = r14 + 1
                r14 = r9
                r9 = r15
                goto L_0x038d
            L_0x040c:
                int r8 = r8 + 1
                goto L_0x037f
            L_0x0410:
                r6 = r16
                r7 = r9
                r8 = r11
            L_0x0414:
                r14 = r13
                r9 = r8
                r8 = r7
                r7 = r6
                goto L_0x00ec
            L_0x041a:
                int r10 = r10 + 1
                r6 = r7
                r13 = r14
                r7 = r8
                r8 = r9
                goto L_0x00d7
            L_0x0422:
                java.lang.String r6 = "OsmDroid"
                java.lang.StringBuilder r8 = new java.lang.StringBuilder
                r8.<init>()
                java.lang.String r9 = "downloaded "
                java.lang.StringBuilder r8 = r8.append(r9)
                int r9 = r21.size()
                java.lang.StringBuilder r8 = r8.append(r9)
                java.lang.String r9 = " tiles"
                java.lang.StringBuilder r8 = r8.append(r9)
                java.lang.String r8 = r8.toString()
                android.util.Log.d(r6, r8)
            L_0x0444:
                r8 = r7
                goto L_0x0097
            L_0x0447:
                r15 = r9
                goto L_0x03cc
            L_0x0449:
                r6 = r20
                goto L_0x02d1
            L_0x044d:
                r6 = r15
                r7 = r18
                r8 = r19
                goto L_0x0414
            L_0x0453:
                r6 = r7
                r7 = r8
                r8 = r9
                goto L_0x0414
            */
            throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.tileprovider.cachemanager.CacheManager.DownloadingTask.downloadArea():int");
        }
    }

    public CacheManager(MapView mapView) {
        this.mTileProvider = mapView.getTileProvider();
        this.mTileWriter = mapView.getTileProvider().getTileWriter();
        this.mMapView = mapView;
    }

    public CacheManager(MapView mapView, IFilesystemCache iFilesystemCache) {
        this.mTileProvider = mapView.getTileProvider();
        this.mTileWriter = iFilesystemCache;
        this.mMapView = mapView;
    }

    public int getPendingJobs() {
        return this.mPendingTasks.size();
    }

    public static Point getMapTileFromCoordinates(double d, double d2, int i) {
        return new Point((int) Math.floor(((d2 + 180.0d) / 360.0d) * ((double) (1 << i))), (int) Math.floor(((1.0d - (Math.log(Math.tan((d * 3.141592653589793d) / 180.0d) + (1.0d / Math.cos((d * 3.141592653589793d) / 180.0d))) / 3.141592653589793d)) / 2.0d) * ((double) (1 << i))));
    }

    public static GeoPoint getCoordinatesFromMapTile(int i, int i2, int i3) {
        double d = 3.141592653589793d - ((6.283185307179586d * ((double) i2)) / ((double) (1 << i3)));
        return new GeoPoint(Math.atan((Math.exp(d) - Math.exp(-d)) * 0.5d) * 57.29577951308232d, ((360.0d * ((double) i)) / ((double) (1 << i3))) - 180.0d);
    }

    public static File getFileName(ITileSource iTileSource, MapTile mapTile) {
        return new File(Configuration.getInstance().getOsmdroidTileCache(), iTileSource.getTileRelativeFilenameString(mapTile) + OpenStreetMapTileProviderConstants.TILE_PATH_EXTENSION);
    }

    /* JADX WARNING: type inference failed for: r3v0 */
    /* JADX WARNING: type inference failed for: r1v1 */
    /* JADX WARNING: type inference failed for: r5v0 */
    /* JADX WARNING: type inference failed for: r3v1 */
    /* JADX WARNING: type inference failed for: r5v1, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r3v2, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r5v2 */
    /* JADX WARNING: type inference failed for: r5v3, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r3v3, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r5v4 */
    /* JADX WARNING: type inference failed for: r5v5, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r3v4, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r5v6 */
    /* JADX WARNING: type inference failed for: r5v7, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r3v5, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r5v8 */
    /* JADX WARNING: type inference failed for: r3v6, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r1v12, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r5v9 */
    /* JADX WARNING: type inference failed for: r3v7 */
    /* JADX WARNING: type inference failed for: r0v33, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r1v14 */
    /* JADX WARNING: type inference failed for: r5v17 */
    /* JADX WARNING: type inference failed for: r3v8 */
    /* JADX WARNING: type inference failed for: r5v18 */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: type inference failed for: r5v19 */
    /* JADX WARNING: type inference failed for: r3v10 */
    /* JADX WARNING: type inference failed for: r5v20 */
    /* JADX WARNING: type inference failed for: r3v11 */
    /* JADX WARNING: type inference failed for: r5v24, types: [java.io.Closeable, java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r3v12 */
    /* JADX WARNING: type inference failed for: r3v13 */
    /* JADX WARNING: type inference failed for: r3v14 */
    /* JADX WARNING: type inference failed for: r3v15 */
    /* JADX WARNING: type inference failed for: r3v16 */
    /* JADX WARNING: type inference failed for: r12v1 */
    /* JADX WARNING: type inference failed for: r1v24 */
    /* JADX WARNING: type inference failed for: r3v28 */
    /* JADX WARNING: type inference failed for: r3v29 */
    /* JADX WARNING: type inference failed for: r3v30 */
    /* JADX WARNING: type inference failed for: r3v31 */
    /* JADX WARNING: type inference failed for: r3v32 */
    /* JADX WARNING: type inference failed for: r3v33 */
    /* JADX WARNING: type inference failed for: r5v29 */
    /* JADX WARNING: type inference failed for: r3v34 */
    /* JADX WARNING: type inference failed for: r5v30 */
    /* JADX WARNING: type inference failed for: r5v31 */
    /* JADX WARNING: type inference failed for: r3v35 */
    /* JADX WARNING: type inference failed for: r3v36 */
    /* JADX WARNING: type inference failed for: r5v32 */
    /* JADX WARNING: type inference failed for: r5v33 */
    /* JADX WARNING: type inference failed for: r3v37 */
    /* JADX WARNING: type inference failed for: r3v38 */
    /* JADX WARNING: type inference failed for: r5v34 */
    /* JADX WARNING: type inference failed for: r5v35 */
    /* JADX WARNING: type inference failed for: r3v39 */
    /* JADX WARNING: type inference failed for: r3v40 */
    /* JADX WARNING: type inference failed for: r5v36 */
    /* JADX WARNING: type inference failed for: r5v37 */
    /* JADX WARNING: type inference failed for: r5v38 */
    /* JADX WARNING: type inference failed for: r5v39 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r5v0
  assigns: []
  uses: []
  mth insns count: 245
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:70:0x01b2=Splitter:B:70:0x01b2, B:78:0x01e5=Splitter:B:78:0x01e5, B:62:0x017f=Splitter:B:62:0x017f} */
    /* JADX WARNING: Unknown variable types count: 19 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean loadTile(org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase r14, org.osmdroid.tileprovider.MapTile r15) {
        /*
            r13 = this;
            r3 = 0
            r1 = 1
            r2 = 0
            java.io.File r0 = getFileName(r14, r15)
            boolean r0 = r0.exists()
            if (r0 == 0) goto L_0x000f
            r0 = r1
        L_0x000e:
            return r0
        L_0x000f:
            org.osmdroid.tileprovider.modules.IFilesystemCache r0 = r13.mTileWriter
            boolean r0 = r0.exists(r14, r15)
            if (r0 == 0) goto L_0x0019
            r0 = r1
            goto L_0x000e
        L_0x0019:
            r0 = 0
            java.lang.String r4 = r14.getTileURLString(r15)     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            org.osmdroid.config.IConfigurationProvider r5 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            boolean r5 = r5.isDebugMode()     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            if (r5 == 0) goto L_0x0040
            java.lang.String r5 = "OsmDroid"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            r6.<init>()     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            java.lang.String r7 = "Downloading Maptile from url: "
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            java.lang.StringBuilder r6 = r6.append(r4)     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            java.lang.String r6 = r6.toString()     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            android.util.Log.d(r5, r6)     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
        L_0x0040:
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            if (r5 == 0) goto L_0x004e
            org.osmdroid.tileprovider.util.StreamUtils.closeStream(r3)
            r0.disconnect()     // Catch:{ Exception -> 0x0215 }
        L_0x004c:
            r0 = r2
            goto L_0x000e
        L_0x004e:
            java.net.URL r0 = new java.net.URL     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            r0.<init>(r4)     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            java.net.URLConnection r0 = r0.openConnection()     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ UnknownHostException -> 0x0253, FileNotFoundException -> 0x017d, IOException -> 0x01b0, Throwable -> 0x01e3, all -> 0x020c }
            r4 = 1
            r0.setUseCaches(r4)     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            org.osmdroid.config.IConfigurationProvider r4 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            java.lang.String r4 = r4.getUserAgentHttpHeader()     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            org.osmdroid.config.IConfigurationProvider r5 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            java.lang.String r5 = r5.getUserAgentValue()     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            r0.setRequestProperty(r4, r5)     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            r0.connect()     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            int r4 = r0.getResponseCode()     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            r5 = 200(0xc8, float:2.8E-43)
            if (r4 == r5) goto L_0x00b0
            java.lang.String r1 = "OsmDroid"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            r4.<init>()     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            java.lang.String r5 = "Problem downloading MapTile: "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            java.lang.StringBuilder r4 = r4.append(r15)     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            java.lang.String r5 = " HTTP response: "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            java.lang.String r5 = r0.getResponseMessage()     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            java.lang.String r4 = r4.toString()     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            android.util.Log.w(r1, r4)     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            int r1 = org.osmdroid.tileprovider.util.Counters.tileDownloadErrors     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            int r1 = r1 + 1
            org.osmdroid.tileprovider.util.Counters.tileDownloadErrors = r1     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            org.osmdroid.tileprovider.util.StreamUtils.closeStream(r3)
            r0.disconnect()     // Catch:{ Exception -> 0x0218 }
        L_0x00ad:
            r0 = r2
            goto L_0x000e
        L_0x00b0:
            java.io.InputStream r5 = r0.getInputStream()     // Catch:{ UnknownHostException -> 0x0257, FileNotFoundException -> 0x0248, IOException -> 0x023d, Throwable -> 0x0234, all -> 0x0225 }
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            r3.<init>()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            org.osmdroid.config.IConfigurationProvider r3 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            java.lang.Long r3 = r3.getExpirationOverrideDuration()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            if (r3 == 0) goto L_0x00e2
            java.util.Date r4 = new java.util.Date     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            long r6 = java.lang.System.currentTimeMillis()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            long r8 = r3.longValue()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            long r6 = r6 + r8
            r4.<init>(r6)     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
        L_0x00d1:
            r15.setExpires(r4)     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            org.osmdroid.tileprovider.modules.IFilesystemCache r3 = r13.mTileWriter     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            r3.saveFile(r14, r15, r5)     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            org.osmdroid.tileprovider.util.StreamUtils.closeStream(r5)
            r0.disconnect()     // Catch:{ Exception -> 0x021b }
        L_0x00df:
            r0 = r1
            goto L_0x000e
        L_0x00e2:
            java.util.Date r4 = new java.util.Date     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            long r6 = java.lang.System.currentTimeMillis()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            r8 = 604800000(0x240c8400, double:2.988109026E-315)
            long r6 = r6 + r8
            org.osmdroid.config.IConfigurationProvider r3 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            long r8 = r3.getExpirationExtendedDuration()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            long r6 = r6 + r8
            r4.<init>(r6)     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            java.lang.String r3 = "Expires"
            java.lang.String r6 = r0.getHeaderField(r3)     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            if (r6 == 0) goto L_0x00d1
            int r3 = r6.length()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            if (r3 <= 0) goto L_0x00d1
            org.osmdroid.config.IConfigurationProvider r3 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ Exception -> 0x0123 }
            java.text.SimpleDateFormat r3 = r3.getHttpHeaderDateTimeFormat()     // Catch:{ Exception -> 0x0123 }
            java.util.Date r4 = r3.parse(r6)     // Catch:{ Exception -> 0x0123 }
            long r8 = r4.getTime()     // Catch:{ Exception -> 0x0123 }
            org.osmdroid.config.IConfigurationProvider r3 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ Exception -> 0x0123 }
            long r10 = r3.getExpirationExtendedDuration()     // Catch:{ Exception -> 0x0123 }
            long r8 = r8 + r10
            r4.setTime(r8)     // Catch:{ Exception -> 0x0123 }
            goto L_0x00d1
        L_0x0123:
            r3 = move-exception
            org.osmdroid.config.IConfigurationProvider r7 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            boolean r7 = r7.isDebugMapTileDownloader()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            if (r7 == 0) goto L_0x00d1
            java.lang.String r7 = "OsmDroid"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            r8.<init>()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            java.lang.String r9 = "Unable to parse expiration tag for tile, using default, server returned "
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            java.lang.StringBuilder r6 = r8.append(r6)     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            java.lang.String r6 = r6.toString()     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            android.util.Log.d(r7, r6, r3)     // Catch:{ UnknownHostException -> 0x0147, FileNotFoundException -> 0x024e, IOException -> 0x0243, Throwable -> 0x0239, all -> 0x022a }
            goto L_0x00d1
        L_0x0147:
            r1 = move-exception
            r3 = r5
            r12 = r0
            r0 = r1
            r1 = r12
        L_0x014c:
            java.lang.String r4 = "OsmDroid"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x022e }
            r5.<init>()     // Catch:{ all -> 0x022e }
            java.lang.String r6 = "UnknownHostException downloading MapTile: "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ all -> 0x022e }
            java.lang.StringBuilder r5 = r5.append(r15)     // Catch:{ all -> 0x022e }
            java.lang.String r6 = " : "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ all -> 0x022e }
            java.lang.StringBuilder r0 = r5.append(r0)     // Catch:{ all -> 0x022e }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x022e }
            android.util.Log.w(r4, r0)     // Catch:{ all -> 0x022e }
            int r0 = org.osmdroid.tileprovider.util.Counters.tileDownloadErrors     // Catch:{ all -> 0x022e }
            int r0 = r0 + 1
            org.osmdroid.tileprovider.util.Counters.tileDownloadErrors = r0     // Catch:{ all -> 0x022e }
            org.osmdroid.tileprovider.util.StreamUtils.closeStream(r3)
            r1.disconnect()     // Catch:{ Exception -> 0x021e }
        L_0x017a:
            r0 = r2
            goto L_0x000e
        L_0x017d:
            r0 = move-exception
            r5 = r3
        L_0x017f:
            int r1 = org.osmdroid.tileprovider.util.Counters.tileDownloadErrors     // Catch:{ all -> 0x0232 }
            int r1 = r1 + 1
            org.osmdroid.tileprovider.util.Counters.tileDownloadErrors = r1     // Catch:{ all -> 0x0232 }
            java.lang.String r1 = "OsmDroid"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0232 }
            r4.<init>()     // Catch:{ all -> 0x0232 }
            java.lang.String r6 = "Tile not found: "
            java.lang.StringBuilder r4 = r4.append(r6)     // Catch:{ all -> 0x0232 }
            java.lang.StringBuilder r4 = r4.append(r15)     // Catch:{ all -> 0x0232 }
            java.lang.String r6 = " : "
            java.lang.StringBuilder r4 = r4.append(r6)     // Catch:{ all -> 0x0232 }
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch:{ all -> 0x0232 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0232 }
            android.util.Log.w(r1, r0)     // Catch:{ all -> 0x0232 }
            org.osmdroid.tileprovider.util.StreamUtils.closeStream(r5)
            r3.disconnect()     // Catch:{ Exception -> 0x0221 }
        L_0x01ad:
            r0 = r2
            goto L_0x000e
        L_0x01b0:
            r0 = move-exception
            r5 = r3
        L_0x01b2:
            int r1 = org.osmdroid.tileprovider.util.Counters.tileDownloadErrors     // Catch:{ all -> 0x0232 }
            int r1 = r1 + 1
            org.osmdroid.tileprovider.util.Counters.tileDownloadErrors = r1     // Catch:{ all -> 0x0232 }
            java.lang.String r1 = "OsmDroid"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0232 }
            r4.<init>()     // Catch:{ all -> 0x0232 }
            java.lang.String r6 = "IOException downloading MapTile: "
            java.lang.StringBuilder r4 = r4.append(r6)     // Catch:{ all -> 0x0232 }
            java.lang.StringBuilder r4 = r4.append(r15)     // Catch:{ all -> 0x0232 }
            java.lang.String r6 = " : "
            java.lang.StringBuilder r4 = r4.append(r6)     // Catch:{ all -> 0x0232 }
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch:{ all -> 0x0232 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0232 }
            android.util.Log.w(r1, r0)     // Catch:{ all -> 0x0232 }
            org.osmdroid.tileprovider.util.StreamUtils.closeStream(r5)
            r3.disconnect()     // Catch:{ Exception -> 0x01e1 }
            goto L_0x01ad
        L_0x01e1:
            r0 = move-exception
            goto L_0x01ad
        L_0x01e3:
            r0 = move-exception
            r5 = r3
        L_0x01e5:
            int r1 = org.osmdroid.tileprovider.util.Counters.tileDownloadErrors     // Catch:{ all -> 0x0232 }
            int r1 = r1 + 1
            org.osmdroid.tileprovider.util.Counters.tileDownloadErrors = r1     // Catch:{ all -> 0x0232 }
            java.lang.String r1 = "OsmDroid"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0232 }
            r4.<init>()     // Catch:{ all -> 0x0232 }
            java.lang.String r6 = "Error downloading MapTile: "
            java.lang.StringBuilder r4 = r4.append(r6)     // Catch:{ all -> 0x0232 }
            java.lang.StringBuilder r4 = r4.append(r15)     // Catch:{ all -> 0x0232 }
            java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x0232 }
            android.util.Log.e(r1, r4, r0)     // Catch:{ all -> 0x0232 }
            org.osmdroid.tileprovider.util.StreamUtils.closeStream(r5)
            r3.disconnect()     // Catch:{ Exception -> 0x020a }
            goto L_0x01ad
        L_0x020a:
            r0 = move-exception
            goto L_0x01ad
        L_0x020c:
            r0 = move-exception
            r5 = r3
        L_0x020e:
            org.osmdroid.tileprovider.util.StreamUtils.closeStream(r5)
            r3.disconnect()     // Catch:{ Exception -> 0x0223 }
        L_0x0214:
            throw r0
        L_0x0215:
            r0 = move-exception
            goto L_0x004c
        L_0x0218:
            r0 = move-exception
            goto L_0x00ad
        L_0x021b:
            r0 = move-exception
            goto L_0x00df
        L_0x021e:
            r0 = move-exception
            goto L_0x017a
        L_0x0221:
            r0 = move-exception
            goto L_0x01ad
        L_0x0223:
            r1 = move-exception
            goto L_0x0214
        L_0x0225:
            r1 = move-exception
            r5 = r3
            r3 = r0
            r0 = r1
            goto L_0x020e
        L_0x022a:
            r1 = move-exception
            r3 = r0
            r0 = r1
            goto L_0x020e
        L_0x022e:
            r0 = move-exception
            r5 = r3
            r3 = r1
            goto L_0x020e
        L_0x0232:
            r0 = move-exception
            goto L_0x020e
        L_0x0234:
            r1 = move-exception
            r5 = r3
            r3 = r0
            r0 = r1
            goto L_0x01e5
        L_0x0239:
            r1 = move-exception
            r3 = r0
            r0 = r1
            goto L_0x01e5
        L_0x023d:
            r1 = move-exception
            r5 = r3
            r3 = r0
            r0 = r1
            goto L_0x01b2
        L_0x0243:
            r1 = move-exception
            r3 = r0
            r0 = r1
            goto L_0x01b2
        L_0x0248:
            r1 = move-exception
            r5 = r3
            r3 = r0
            r0 = r1
            goto L_0x017f
        L_0x024e:
            r1 = move-exception
            r3 = r0
            r0 = r1
            goto L_0x017f
        L_0x0253:
            r0 = move-exception
            r1 = r3
            goto L_0x014c
        L_0x0257:
            r1 = move-exception
            r12 = r1
            r1 = r0
            r0 = r12
            goto L_0x014c
        */
        throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.tileprovider.cachemanager.CacheManager.loadTile(org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase, org.osmdroid.tileprovider.MapTile):boolean");
    }

    public int possibleTilesInArea(BoundingBox boundingBox, int i, int i2) {
        int i3 = 0;
        while (i <= i2) {
            Point mapTileFromCoordinates = getMapTileFromCoordinates(boundingBox.getLatSouth(), boundingBox.getLonEast(), i);
            Point mapTileFromCoordinates2 = getMapTileFromCoordinates(boundingBox.getLatNorth(), boundingBox.getLonWest(), i);
            i3 += ((mapTileFromCoordinates.x - mapTileFromCoordinates2.x) + 1) * ((mapTileFromCoordinates.y - mapTileFromCoordinates2.y) + 1);
            i++;
        }
        return i3;
    }

    public int possibleTilesCovered(ArrayList<GeoPoint> arrayList, int i, int i2) {
        Point point;
        Point point2;
        GeoPoint geoPoint;
        Point point3;
        double atan;
        boolean z;
        ArrayList arrayList2 = new ArrayList();
        GeoPoint geoPoint2 = null;
        Point point4 = null;
        int i3 = i;
        while (i3 <= i2) {
            Iterator it = arrayList.iterator();
            while (true) {
                point2 = point;
                geoPoint = geoPoint2;
                if (!it.hasNext()) {
                    break;
                }
                geoPoint2 = (GeoPoint) it.next();
                double GroundResolution = TileSystem.GroundResolution(geoPoint2.getLatitude(), i3);
                if (arrayList2.size() == 0) {
                    point3 = getMapTileFromCoordinates(geoPoint2.getLatitude(), geoPoint2.getLongitude(), i3);
                    int i4 = point3.x >= 0 ? 0 : -point3.x;
                    int i5 = point3.y >= 0 ? 0 : -point3.y;
                    for (int i6 = point3.x + i4; i6 <= point3.x + 1 + i4; i6++) {
                        for (int i7 = point3.y + i5; i7 <= point3.y + 1 + i5; i7++) {
                            arrayList2.add(0, new Point(i6, i7));
                        }
                    }
                } else if (geoPoint != null) {
                    double latitude = (geoPoint2.getLatitude() - geoPoint.getLatitude()) / (geoPoint2.getLongitude() - geoPoint.getLongitude());
                    if (geoPoint2.getLongitude() > geoPoint.getLongitude()) {
                        atan = 1.5707963267948966d - Math.atan(latitude);
                    } else {
                        atan = 4.71238898038469d - Math.atan(latitude);
                    }
                    GeoPoint geoPoint3 = new GeoPoint(geoPoint.getLatitude(), geoPoint.getLongitude());
                    point3 = point2;
                    while (true) {
                        if (((geoPoint2.getLatitude() <= geoPoint.getLatitude() || geoPoint3.getLatitude() >= geoPoint2.getLatitude()) && (geoPoint2.getLatitude() >= geoPoint.getLatitude() || geoPoint3.getLatitude() <= geoPoint2.getLatitude())) || ((geoPoint2.getLongitude() <= geoPoint.getLongitude() || geoPoint3.getLongitude() >= geoPoint2.getLongitude()) && (geoPoint2.getLongitude() >= geoPoint.getLongitude() || geoPoint3.getLongitude() <= geoPoint2.getLongitude()))) {
                            break;
                        }
                        TileSystem.LatLongToPixelXY(geoPoint2.getLatitude(), geoPoint2.getLongitude(), i3, new Point());
                        double latitude2 = (geoPoint3.getLatitude() * 3.141592653589793d) / 180.0d;
                        double longitude = (geoPoint3.getLongitude() * 3.141592653589793d) / 180.0d;
                        double asin = Math.asin((Math.sin(latitude2) * Math.cos(GroundResolution / 6378137.0d)) + (Math.cos(latitude2) * Math.sin(GroundResolution / 6378137.0d) * Math.cos(atan)));
                        double atan2 = Math.atan2(Math.sin(atan) * Math.sin(GroundResolution / 6378137.0d) * Math.cos(latitude2), Math.cos(GroundResolution / 6378137.0d) - (Math.sin(latitude2) * Math.sin(asin))) + longitude;
                        geoPoint3.setLatitude((180.0d * asin) / 3.141592653589793d);
                        geoPoint3.setLongitude((atan2 * 180.0d) / 3.141592653589793d);
                        Point mapTileFromCoordinates = getMapTileFromCoordinates(geoPoint3.getLatitude(), geoPoint3.getLongitude(), i3);
                        if (!mapTileFromCoordinates.equals(point3)) {
                            int i8 = mapTileFromCoordinates.x >= 0 ? 0 : -mapTileFromCoordinates.x;
                            int i9 = mapTileFromCoordinates.y >= 0 ? 0 : -mapTileFromCoordinates.y;
                            int i10 = mapTileFromCoordinates.x + i8;
                            while (true) {
                                int i11 = i10;
                                if (i11 > mapTileFromCoordinates.x + 1 + i8) {
                                    break;
                                }
                                int i12 = mapTileFromCoordinates.y + i9;
                                while (true) {
                                    int i13 = i12;
                                    if (i13 > mapTileFromCoordinates.y + 1 + i9) {
                                        break;
                                    }
                                    Point point5 = new Point(i11, i13);
                                    Iterator it2 = arrayList2.iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            z = false;
                                            break;
                                        }
                                        Point point6 = (Point) it2.next();
                                        if (point5.equals(point6.x, point6.y)) {
                                            z = true;
                                            break;
                                        }
                                    }
                                    if (!z) {
                                        arrayList2.add(0, point5);
                                    }
                                    i12 = i13 + 1;
                                }
                                i10 = i11 + 1;
                            }
                            point3 = mapTileFromCoordinates;
                        }
                    }
                } else {
                    point = point2;
                }
                point = point3;
            }
            i3++;
            point4 = point2;
            geoPoint2 = geoPoint;
        }
        Log.d(IMapView.LOGTAG, "need " + arrayList2.size() + " Tiles");
        return arrayList2.size();
    }

    /* access modifiers changed from: protected */
    public String zoomMessage(int i, int i2, int i3) {
        return "Handling zoom level: " + i + " (from " + i2 + " to " + i3 + ")";
    }

    public DownloadingTask downloadAreaAsync(Context context, BoundingBox boundingBox, int i, int i2) {
        DownloadingTask downloadingTask = new DownloadingTask(context, boundingBox, i, i2, (CacheManagerCallback) null, true);
        downloadingTask.execute(new Object[0]);
        this.mPendingTasks.add(downloadingTask);
        return downloadingTask;
    }

    public DownloadingTask downloadAreaAsync(Context context, ArrayList<GeoPoint> arrayList, int i, int i2) {
        DownloadingTask downloadingTask = new DownloadingTask(context, arrayList, i, i2, (CacheManagerCallback) null, true);
        downloadingTask.execute(new Object[0]);
        this.mPendingTasks.add(downloadingTask);
        return downloadingTask;
    }

    public DownloadingTask downloadAreaAsync(Context context, BoundingBox boundingBox, int i, int i2, CacheManagerCallback cacheManagerCallback) {
        DownloadingTask downloadingTask = new DownloadingTask(context, boundingBox, i, i2, cacheManagerCallback, true);
        downloadingTask.execute(new Object[0]);
        this.mPendingTasks.add(downloadingTask);
        return downloadingTask;
    }

    public DownloadingTask downloadAreaAsync(Context context, ArrayList<GeoPoint> arrayList, int i, int i2, CacheManagerCallback cacheManagerCallback) {
        DownloadingTask downloadingTask = new DownloadingTask(context, arrayList, i, i2, cacheManagerCallback, true);
        downloadingTask.execute(new Object[0]);
        this.mPendingTasks.add(downloadingTask);
        return downloadingTask;
    }

    public DownloadingTask downloadAreaAsyncNoUI(Context context, ArrayList<GeoPoint> arrayList, int i, int i2, CacheManagerCallback cacheManagerCallback) {
        DownloadingTask downloadingTask = new DownloadingTask(context, arrayList, i, i2, cacheManagerCallback, false);
        downloadingTask.execute(new Object[0]);
        this.mPendingTasks.add(downloadingTask);
        return downloadingTask;
    }

    public DownloadingTask downloadAreaAsyncNoUI(Context context, BoundingBox boundingBox, int i, int i2, CacheManagerCallback cacheManagerCallback) {
        DownloadingTask downloadingTask = new DownloadingTask(context, boundingBox, i, i2, cacheManagerCallback, false);
        downloadingTask.execute(new Object[0]);
        this.mPendingTasks.add(downloadingTask);
        return downloadingTask;
    }

    public void cancelAllJobs() {
        for (CacheManagerTask cancel : this.mPendingTasks) {
            cancel.cancel(true);
        }
        this.mPendingTasks.clear();
    }

    public CleaningTask cleanAreaAsync(Context context, BoundingBox boundingBox, int i, int i2) {
        CleaningTask cleaningTask = new CleaningTask(context, boundingBox, i, i2);
        cleaningTask.execute(new Object[0]);
        this.mPendingTasks.add(cleaningTask);
        return cleaningTask;
    }

    public CleaningTask cleanAreaAsync(Context context, ArrayList<GeoPoint> arrayList, int i, int i2) {
        CleaningTask cleaningTask = new CleaningTask(context, extendedBoundsFromGeoPoints(arrayList, i), i, i2);
        cleaningTask.execute(new Object[0]);
        this.mPendingTasks.add(cleaningTask);
        return cleaningTask;
    }

    public BoundingBox extendedBoundsFromGeoPoints(ArrayList<GeoPoint> arrayList, int i) {
        BoundingBox fromGeoPoints = BoundingBox.fromGeoPoints(arrayList);
        Point mapTileFromCoordinates = getMapTileFromCoordinates(fromGeoPoints.getLatSouth(), fromGeoPoints.getLonEast(), i);
        GeoPoint coordinatesFromMapTile = getCoordinatesFromMapTile(mapTileFromCoordinates.x + 1, mapTileFromCoordinates.y + 1, i);
        Point mapTileFromCoordinates2 = getMapTileFromCoordinates(fromGeoPoints.getLatNorth(), fromGeoPoints.getLonWest(), i);
        GeoPoint coordinatesFromMapTile2 = getCoordinatesFromMapTile(mapTileFromCoordinates2.x - 1, mapTileFromCoordinates2.y - 1, i);
        return new BoundingBox(coordinatesFromMapTile2.getLatitude(), coordinatesFromMapTile2.getLongitude(), coordinatesFromMapTile.getLatitude(), coordinatesFromMapTile.getLongitude());
    }

    public long currentCacheUsage() {
        return directorySize(Configuration.getInstance().getOsmdroidTileCache());
    }

    public long cacheCapacity() {
        return Configuration.getInstance().getTileFileSystemCacheMaxBytes();
    }

    public long directorySize(File file) {
        long j = 0;
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isFile()) {
                    j += file2.length();
                } else if (file2.isDirectory()) {
                    j += directorySize(file2);
                }
            }
        }
        return j;
    }
}
