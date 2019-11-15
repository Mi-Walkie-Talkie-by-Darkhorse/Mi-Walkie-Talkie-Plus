package com.mi.mimsgsdk.utils;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class ImageUtils {
    public static String saveToLocal(Bitmap bitmap, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            bitmap.compress(CompressFormat.JPEG, 75, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return str;
        } catch (FileNotFoundException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        } catch (IOException e2) {
            ThrowableExtension.printStackTrace(e2);
            return null;
        }
    }
}
