package com.xiaomi.channel.common.audio;

import com.mi.milinkforgame.sdk.client.ClientLog;
import java.io.File;
import java.io.IOException;

public class IOUtils {
    private static String LOG_TAG = IOUtils.class.getSimpleName();

    public static void hideFromMediaScanner(File file) {
        File file2 = new File(file, ".nomedia");
        if (!file2.exists() || !file2.isFile()) {
            try {
                file2.createNewFile();
            } catch (IOException e) {
                ClientLog.e(LOG_TAG, e.toString());
            }
        }
    }
}
