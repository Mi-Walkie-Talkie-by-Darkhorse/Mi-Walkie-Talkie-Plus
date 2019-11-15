package cn.bingoogolapple.qrcode.core;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.view.WindowManager;
import com.mi.milinkforgame.sdk.data.Error;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.bouncycastle.crypto.tls.CipherSuite;

final class CameraConfigurationManager {
    private static final Pattern COMMA_PATTERN = Pattern.compile(Constants.ACCEPT_TIME_SEPARATOR_SP);
    private static final int TEN_DESIRED_ZOOM = 27;
    private Point mCameraResolution;
    private final Context mContext;
    private Point mPreviewResolution;
    private Point mScreenResolution;

    public CameraConfigurationManager(Context context) {
        this.mContext = context;
    }

    public void initFromCameraParameters(Camera camera) {
        Parameters parameters = camera.getParameters();
        if (autoFocusAble(camera)) {
            parameters.setFocusMode("auto");
        }
        this.mScreenResolution = BGAQRCodeUtil.getScreenResolution(this.mContext);
        Point point = new Point();
        point.x = this.mScreenResolution.x;
        point.y = this.mScreenResolution.y;
        int orientation = BGAQRCodeUtil.getOrientation(this.mContext);
        if (orientation == 0) {
            point.x = this.mScreenResolution.y;
            point.y = this.mScreenResolution.x;
        }
        this.mPreviewResolution = getPreviewResolution(parameters, point);
        if (orientation == 0) {
            this.mCameraResolution = new Point(this.mPreviewResolution.y, this.mPreviewResolution.x);
        } else {
            this.mCameraResolution = this.mPreviewResolution;
        }
    }

    public static boolean autoFocusAble(Camera camera) {
        if (findSettableValue(camera.getParameters().getSupportedFocusModes(), "auto") != null) {
            return true;
        }
        return false;
    }

    public Point getCameraResolution() {
        return this.mCameraResolution;
    }

    public void setDesiredCameraParameters(Camera camera) {
        Parameters parameters = camera.getParameters();
        parameters.setPreviewSize(this.mPreviewResolution.x, this.mPreviewResolution.y);
        setZoom(parameters);
        camera.setDisplayOrientation(getDisplayOrientation());
        camera.setParameters(parameters);
    }

    public void openFlashlight(Camera camera) {
        doSetTorch(camera, true);
    }

    public void closeFlashlight(Camera camera) {
        doSetTorch(camera, false);
    }

    private void doSetTorch(Camera camera, boolean z) {
        String findSettableValue;
        Parameters parameters = camera.getParameters();
        if (z) {
            findSettableValue = findSettableValue(parameters.getSupportedFlashModes(), "torch", "on");
        } else {
            findSettableValue = findSettableValue(parameters.getSupportedFlashModes(), "off");
        }
        if (findSettableValue != null) {
            parameters.setFlashMode(findSettableValue);
        }
        camera.setParameters(parameters);
    }

    private static String findSettableValue(Collection<String> collection, String... strArr) {
        if (collection != null) {
            for (String str : strArr) {
                if (collection.contains(str)) {
                    return str;
                }
            }
        }
        return null;
    }

    public int getDisplayOrientation() {
        int i;
        CameraInfo cameraInfo = new CameraInfo();
        Camera.getCameraInfo(0, cameraInfo);
        switch (((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getRotation()) {
            case 0:
                i = 0;
                break;
            case 1:
                i = 90;
                break;
            case 2:
                i = CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256;
                break;
            case 3:
                i = Error.E_WTSDK_A1_DECRYPT;
                break;
            default:
                i = 0;
                break;
        }
        if (cameraInfo.facing == 1) {
            return (360 - ((i + cameraInfo.orientation) % 360)) % 360;
        }
        return ((cameraInfo.orientation - i) + 360) % 360;
    }

    private static Point getPreviewResolution(Parameters parameters, Point point) {
        Point findBestPreviewSizeValue = findBestPreviewSizeValue(parameters.getSupportedPreviewSizes(), point);
        if (findBestPreviewSizeValue == null) {
            return new Point((point.x >> 3) << 3, (point.y >> 3) << 3);
        }
        return findBestPreviewSizeValue;
    }

    private static Point findBestPreviewSizeValue(List<Size> list, Point point) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = Integer.MAX_VALUE;
        Iterator it = list.iterator();
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i5;
            if (!it.hasNext()) {
                i = i6;
                i2 = i7;
                break;
            }
            Size size = (Size) it.next();
            i2 = size.width;
            i = size.height;
            i5 = Math.abs(i2 - point.x) + Math.abs(i - point.y);
            if (i5 == 0) {
                break;
            }
            if (i5 < i8) {
                i3 = i;
                i4 = i2;
            } else {
                i5 = i8;
                i3 = i6;
                i4 = i7;
            }
            i7 = i4;
            i6 = i3;
        }
        if (i2 <= 0 || i <= 0) {
            return null;
        }
        return new Point(i2, i);
    }

    private static int findBestMotZoomValue(CharSequence charSequence, int i) {
        String[] split = COMMA_PATTERN.split(charSequence);
        int length = split.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            try {
                double parseDouble = Double.parseDouble(split[i2].trim());
                int i4 = (int) (10.0d * parseDouble);
                if (Math.abs(((double) i) - parseDouble) >= ((double) Math.abs(i - i3))) {
                    i4 = i3;
                }
                i2++;
                i3 = i4;
            } catch (NumberFormatException e) {
                return i;
            }
        }
        return i3;
    }

    private void setZoom(Parameters parameters) {
        String str = parameters.get("zoom-supported");
        if (str == null || Boolean.parseBoolean(str)) {
            int i = 27;
            String str2 = parameters.get("max-zoom");
            if (str2 != null) {
                try {
                    int parseDouble = (int) (Double.parseDouble(str2) * 10.0d);
                    if (27 <= parseDouble) {
                        parseDouble = 27;
                    }
                    i = parseDouble;
                } catch (NumberFormatException e) {
                }
            }
            String str3 = parameters.get("taking-picture-zoom-max");
            if (str3 != null) {
                try {
                    int parseInt = Integer.parseInt(str3);
                    if (i > parseInt) {
                        i = parseInt;
                    }
                } catch (NumberFormatException e2) {
                }
            }
            String str4 = parameters.get("mot-zoom-values");
            if (str4 != null) {
                i = findBestMotZoomValue(str4, i);
            }
            String str5 = parameters.get("mot-zoom-step");
            if (str5 != null) {
                try {
                    int parseDouble2 = (int) (Double.parseDouble(str5.trim()) * 10.0d);
                    if (parseDouble2 > 1) {
                        i -= i % parseDouble2;
                    }
                } catch (NumberFormatException e3) {
                }
            }
            if (!(str2 == null && str4 == null)) {
                parameters.set("zoom", String.valueOf(((double) i) / 10.0d));
            }
            if (str3 != null) {
                parameters.set("taking-picture-zoom", i);
            }
        }
    }
}
