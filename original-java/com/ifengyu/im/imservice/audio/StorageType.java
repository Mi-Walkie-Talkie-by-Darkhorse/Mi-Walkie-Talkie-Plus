package com.ifengyu.im.imservice.audio;

public enum StorageType {
    TYPE_LOG(DirectoryName.LOG_DIRECTORY_NAME),
    TYPE_TEMP(DirectoryName.TEMP_DIRECTORY_NAME),
    TYPE_FILE(DirectoryName.FILE_DIRECTORY_NAME),
    TYPE_AUDIO(DirectoryName.AUDIO_DIRECTORY_NAME),
    TYPE_IMAGE(DirectoryName.IMAGE_DIRECTORY_NAME),
    TYPE_VIDEO(DirectoryName.VIDEO_DIRECTORY_NAME),
    TYPE_THUMB_IMAGE(DirectoryName.THUMB_DIRECTORY_NAME),
    TYPE_THUMB_VIDEO(DirectoryName.THUMB_DIRECTORY_NAME);
    
    private DirectoryName storageDirectoryName;
    private long storageMinSize;

    enum DirectoryName {
        private static final /* synthetic */ DirectoryName[] $VALUES = null;
        public static final DirectoryName AUDIO_DIRECTORY_NAME = null;
        public static final DirectoryName DATA_DIRECTORY_NAME = null;
        public static final DirectoryName FILE_DIRECTORY_NAME = null;
        public static final DirectoryName IMAGE_DIRECTORY_NAME = null;
        public static final DirectoryName LOG_DIRECTORY_NAME = null;
        public static final DirectoryName TEMP_DIRECTORY_NAME = null;
        public static final DirectoryName THUMB_DIRECTORY_NAME = null;
        public static final DirectoryName VIDEO_DIRECTORY_NAME = null;
        private String path;

        public static DirectoryName valueOf(String str) {
            return (DirectoryName) Enum.valueOf(DirectoryName.class, str);
        }

        public static DirectoryName[] values() {
            return (DirectoryName[]) $VALUES.clone();
        }

        static {
            AUDIO_DIRECTORY_NAME = new DirectoryName("AUDIO_DIRECTORY_NAME", 0, "audio/");
            DATA_DIRECTORY_NAME = new DirectoryName("DATA_DIRECTORY_NAME", 1, "data/");
            FILE_DIRECTORY_NAME = new DirectoryName("FILE_DIRECTORY_NAME", 2, "file/");
            LOG_DIRECTORY_NAME = new DirectoryName("LOG_DIRECTORY_NAME", 3, "log/");
            TEMP_DIRECTORY_NAME = new DirectoryName("TEMP_DIRECTORY_NAME", 4, "temp/");
            IMAGE_DIRECTORY_NAME = new DirectoryName("IMAGE_DIRECTORY_NAME", 5, "image/");
            THUMB_DIRECTORY_NAME = new DirectoryName("THUMB_DIRECTORY_NAME", 6, "thumb/");
            VIDEO_DIRECTORY_NAME = new DirectoryName("VIDEO_DIRECTORY_NAME", 7, "video/");
            $VALUES = new DirectoryName[]{AUDIO_DIRECTORY_NAME, DATA_DIRECTORY_NAME, FILE_DIRECTORY_NAME, LOG_DIRECTORY_NAME, TEMP_DIRECTORY_NAME, IMAGE_DIRECTORY_NAME, THUMB_DIRECTORY_NAME, VIDEO_DIRECTORY_NAME};
        }

        public String getPath() {
            return this.path;
        }

        private DirectoryName(String str, int i, String str2) {
            this.path = str2;
        }
    }

    public String getStoragePath() {
        return this.storageDirectoryName.getPath();
    }

    public long getStorageMinSize() {
        return this.storageMinSize;
    }

    private StorageType(DirectoryName directoryName) {
        this(r7, r8, directoryName, 20971520);
    }

    private StorageType(DirectoryName directoryName, long j) {
        this.storageDirectoryName = directoryName;
        this.storageMinSize = j;
    }
}
