package com.liulishuo.filedownloader.exception;

public class FileDownloadGiveUpRetryException extends RuntimeException {
    public FileDownloadGiveUpRetryException(String str) {
        super(str);
    }
}
