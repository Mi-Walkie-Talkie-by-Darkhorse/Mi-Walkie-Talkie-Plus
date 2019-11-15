package com.mi.mimsgsdk.upload;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import android.text.format.DateFormat;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.utils.AttachmentManagerUtils;
import com.mi.mimsgsdk.utils.GlobalData;
import com.xiaomi.channel.common.audio.CommonUtils;
import com.xiaomi.channel.common.audio.IOUtils;
import com.xiaomi.channel.common.audio.MessageType;
import com.xiaomi.channel.common.audio.SDCardUtils;
import java.io.File;

public class AttachmentUtils {
    private static final long MIN_ATTACHMENT_BASE_ID = 10240;

    public static String getSuffixFromMimeType(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int indexOf = str.indexOf(47);
        if (indexOf >= 0) {
            return "." + str.substring(indexOf + 1);
        }
        return "";
    }

    public static String getSuffixFromFilePath(String str) {
        String str2 = "";
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        int lastIndexOf = str.lastIndexOf(47);
        int lastIndexOf2 = str.lastIndexOf(46);
        if (lastIndexOf2 > lastIndexOf) {
            return str.substring(lastIndexOf2 + 1);
        }
        return str2;
    }

    public static synchronized long generateAttachmentId(Context context) {
        long max;
        synchronized (AttachmentUtils.class) {
            if (context == null) {
                ClientLog.d("Attachment", "mAudioMsgSdkManager context = null");
            }
            max = Math.max(System.currentTimeMillis(), VoipPreferenceUtils.getSettingLong(context, "pref_key_attachment_base_id", (long) MIN_ATTACHMENT_BASE_ID)) + 1;
            VoipPreferenceUtils.setSettingLong(context, "pref_key_attachment_base_id", max);
        }
        return max;
    }

    public static synchronized long generateAttachmentId() {
        long max;
        synchronized (AttachmentUtils.class) {
            max = Math.max(System.currentTimeMillis(), PreferenceUtils.getSettingLong(GlobalData.app(), "pref_key_attachment_base_id", (long) MIN_ATTACHMENT_BASE_ID)) + 1;
            PreferenceUtils.setSettingLong(GlobalData.app(), "pref_key_attachment_base_id", max);
        }
        return max;
    }

    public static String getMimeType(int i, String str) {
        String substring;
        int i2 = -1;
        if (!TextUtils.isEmpty(str)) {
            i2 = str.lastIndexOf(46);
            if (i2 < 0) {
                i2 = str.lastIndexOf("+");
            }
        }
        if (i2 < 0) {
            substring = "";
        } else {
            substring = str.substring(i2 + 1);
        }
        String str2 = "";
        switch (i) {
            case 2:
                String fileType = FileUtils.getFileType(str);
                if (!TextUtils.isEmpty(fileType)) {
                    substring = fileType;
                }
                return "image/" + substring;
            case 3:
                String fileType2 = FileUtils.getFileType(str);
                if (!TextUtils.isEmpty(fileType2)) {
                    substring = fileType2;
                }
                return "audio/" + substring;
            case 4:
                String fileType3 = FileUtils.getFileType(str);
                if (!TextUtils.isEmpty(fileType3)) {
                    substring = fileType3;
                }
                return "video/" + substring;
            case 100:
                String fileType4 = FileUtils.getFileType(str);
                if (!TextUtils.isEmpty(fileType4)) {
                    substring = fileType4;
                }
                return "others/" + substring;
            default:
                return "";
        }
    }

    public static boolean isResourceDownloading(String str) {
        return AttachmentManagerUtils.isResourceDownloading(str);
    }

    public static void addDownloadingResource(String str, long j) {
        AttachmentManagerUtils.mDownloadingResources.put(str, Long.valueOf(j));
    }

    public static void removeDownloadingResource(String str) {
        AttachmentManagerUtils.mDownloadingResources.remove(str);
    }

    public static String newVideoFilePath() {
        return CommonUtils.getUniqueFileName(makeDirsIfNeeded(4), DateFormat.format("yyyyMMdd", System.currentTimeMillis()).toString() + ".3gp");
    }

    public static String newFilePath(String str) {
        return CommonUtils.getUniqueFileName(makeDirsIfNeeded(4), DateFormat.format("yyyyMMdd", System.currentTimeMillis()).toString() + str);
    }

    public static String newFilePath(String str, int i) {
        return CommonUtils.getUniqueFileName(makeDirsIfNeeded(i), DateFormat.format("yyyyMMdd", System.currentTimeMillis()).toString() + str);
    }

    public static File makeDirsIfNeeded(int i) {
        if (SDCardUtils.isSDCardBusy()) {
            return null;
        }
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "mivtalk");
        if (file.isDirectory() || file.mkdirs()) {
            IOUtils.hideFromMediaScanner(file);
        }
        if (MessageType.isImage(i)) {
            File file2 = new File(file, "images");
            if (!file2.isDirectory() && !file2.mkdirs()) {
                return file2;
            }
            IOUtils.hideFromMediaScanner(file2);
            return file2;
        } else if (MessageType.isAudio(i)) {
            File file3 = new File(file, "audio");
            if (!file3.isDirectory() && !file3.mkdirs()) {
                return file3;
            }
            IOUtils.hideFromMediaScanner(file3);
            return file3;
        } else if (MessageType.isVideo(i)) {
            File file4 = new File(file, "video");
            if (!file4.isDirectory() && !file4.mkdirs()) {
                return file4;
            }
            IOUtils.hideFromMediaScanner(file4);
            return file4;
        } else if (i == 102) {
            File file5 = new File(file, "music");
            if (!file5.isDirectory() && !file5.mkdirs()) {
                return file5;
            }
            IOUtils.hideFromMediaScanner(file5);
            return file5;
        } else {
            throw new IllegalArgumentException("hey, what are you passing in ? " + i);
        }
    }
}
