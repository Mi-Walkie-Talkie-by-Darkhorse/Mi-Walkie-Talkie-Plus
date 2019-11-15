package pub.devrel.easypermissions;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import pub.devrel.easypermissions.helper.PermissionHelper;

public class EasyPermissions {
    private static final String TAG = "EasyPermissions";

    public interface PermissionCallbacks extends OnRequestPermissionsResultCallback {
        void onPermissionsDenied(int i, List<String> list);

        void onPermissionsGranted(int i, List<String> list);
    }

    public static boolean hasPermissions(Context context, @NonNull String... strArr) {
        if (VERSION.SDK_INT < 23) {
            Log.w(TAG, "hasPermissions: API version < M, returning true by default");
            return true;
        } else if (context == null) {
            throw new IllegalArgumentException("Can't check permissions for null context");
        } else {
            for (String checkSelfPermission : strArr) {
                if (ContextCompat.checkSelfPermission(context, checkSelfPermission) != 0) {
                    return false;
                }
            }
            return true;
        }
    }

    public static void requestPermissions(@NonNull Activity activity, @NonNull String str, int i, @NonNull String... strArr) {
        requestPermissions(activity, str, 17039370, 17039360, i, strArr);
    }

    public static void requestPermissions(@NonNull Fragment fragment, @NonNull String str, int i, @NonNull String... strArr) {
        requestPermissions(fragment, str, 17039370, 17039360, i, strArr);
    }

    public static void requestPermissions(@NonNull android.app.Fragment fragment, @NonNull String str, int i, @NonNull String... strArr) {
        requestPermissions(fragment, str, 17039370, 17039360, i, strArr);
    }

    public static void requestPermissions(@NonNull Activity activity, @NonNull String str, @StringRes int i, @StringRes int i2, int i3, @NonNull String... strArr) {
        requestPermissions(PermissionHelper.newInstance(activity), str, i, i2, i3, strArr);
    }

    public static void requestPermissions(@NonNull Fragment fragment, @NonNull String str, @StringRes int i, @StringRes int i2, int i3, @NonNull String... strArr) {
        requestPermissions(PermissionHelper.newInstance(fragment), str, i, i2, i3, strArr);
    }

    public static void requestPermissions(@NonNull android.app.Fragment fragment, @NonNull String str, @StringRes int i, @StringRes int i2, int i3, @NonNull String... strArr) {
        requestPermissions(PermissionHelper.newInstance(fragment), str, i, i2, i3, strArr);
    }

    private static void requestPermissions(@NonNull PermissionHelper permissionHelper, @NonNull String str, @StringRes int i, @StringRes int i2, int i3, @NonNull String... strArr) {
        if (hasPermissions(permissionHelper.getContext(), strArr)) {
            notifyAlreadyHasPermissions(permissionHelper.getHost(), i3, strArr);
        } else {
            permissionHelper.requestPermissions(str, i, i2, i3, strArr);
        }
    }

    public static void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr, @NonNull Object... objArr) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            String str = strArr[i2];
            if (iArr[i2] == 0) {
                arrayList.add(str);
            } else {
                arrayList2.add(str);
            }
        }
        for (Object obj : objArr) {
            if (!arrayList.isEmpty() && (obj instanceof PermissionCallbacks)) {
                ((PermissionCallbacks) obj).onPermissionsGranted(i, arrayList);
            }
            if (!arrayList2.isEmpty() && (obj instanceof PermissionCallbacks)) {
                ((PermissionCallbacks) obj).onPermissionsDenied(i, arrayList2);
            }
            if (!arrayList.isEmpty() && arrayList2.isEmpty()) {
                runAnnotatedMethods(obj, i);
            }
        }
    }

    public static boolean somePermissionPermanentlyDenied(@NonNull Activity activity, @NonNull List<String> list) {
        return PermissionHelper.newInstance(activity).somePermissionPermanentlyDenied(list);
    }

    public static boolean somePermissionPermanentlyDenied(@NonNull Fragment fragment, @NonNull List<String> list) {
        return PermissionHelper.newInstance(fragment).somePermissionPermanentlyDenied(list);
    }

    public static boolean somePermissionPermanentlyDenied(@NonNull android.app.Fragment fragment, @NonNull List<String> list) {
        return PermissionHelper.newInstance(fragment).somePermissionPermanentlyDenied(list);
    }

    public static boolean permissionPermanentlyDenied(@NonNull Activity activity, @NonNull String str) {
        return PermissionHelper.newInstance(activity).permissionPermanentlyDenied(str);
    }

    public static boolean permissionPermanentlyDenied(@NonNull Fragment fragment, @NonNull String str) {
        return PermissionHelper.newInstance(fragment).permissionPermanentlyDenied(str);
    }

    public static boolean permissionPermanentlyDenied(@NonNull android.app.Fragment fragment, @NonNull String str) {
        return PermissionHelper.newInstance(fragment).permissionPermanentlyDenied(str);
    }

    public static boolean somePermissionDenied(@NonNull Activity activity, @NonNull String... strArr) {
        return PermissionHelper.newInstance(activity).somePermissionDenied(strArr);
    }

    public static boolean somePermissionDenied(@NonNull Fragment fragment, @NonNull String... strArr) {
        return PermissionHelper.newInstance(fragment).somePermissionDenied(strArr);
    }

    public static boolean somePermissionDenied(@NonNull android.app.Fragment fragment, @NonNull String... strArr) {
        return PermissionHelper.newInstance(fragment).somePermissionDenied(strArr);
    }

    private static void notifyAlreadyHasPermissions(@NonNull Object obj, int i, @NonNull String[] strArr) {
        int[] iArr = new int[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            iArr[i2] = 0;
        }
        onRequestPermissionsResult(i, strArr, iArr, obj);
    }

    private static void runAnnotatedMethods(@NonNull Object obj, int i) {
        Class cls;
        Method[] declaredMethods;
        Class cls2 = obj.getClass();
        if (isUsingAndroidAnnotations(obj)) {
            cls = cls2.getSuperclass();
        } else {
            cls = cls2;
        }
        while (cls != null) {
            for (Method method : cls.getDeclaredMethods()) {
                if (method.isAnnotationPresent(AfterPermissionGranted.class) && ((AfterPermissionGranted) method.getAnnotation(AfterPermissionGranted.class)).value() == i) {
                    if (method.getParameterTypes().length > 0) {
                        throw new RuntimeException("Cannot execute method " + method.getName() + " because it is non-void method and/or has input parameters.");
                    }
                    try {
                        if (!method.isAccessible()) {
                            method.setAccessible(true);
                        }
                        method.invoke(obj, new Object[0]);
                    } catch (IllegalAccessException e) {
                        Log.e(TAG, "runDefaultMethod:IllegalAccessException", e);
                    } catch (InvocationTargetException e2) {
                        Log.e(TAG, "runDefaultMethod:InvocationTargetException", e2);
                    }
                }
            }
            cls = cls.getSuperclass();
        }
    }

    private static boolean isUsingAndroidAnnotations(@NonNull Object obj) {
        boolean z = false;
        if (!obj.getClass().getSimpleName().endsWith("_")) {
            return z;
        }
        try {
            return Class.forName("org.androidannotations.api.view.HasViews").isInstance(obj);
        } catch (ClassNotFoundException e) {
            return z;
        }
    }
}
