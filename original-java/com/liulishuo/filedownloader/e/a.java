package com.liulishuo.filedownloader.e;

/* compiled from: DownloadServiceNotConnectedHelper */
public class a {
    public static boolean a(String str, String str2, boolean z) {
        a("request start the task([%s], [%s], [%B]) in the download service", str, str2, Boolean.valueOf(z));
        return false;
    }

    public static boolean a(int i) {
        a("request pause the task[%d] in the download service", Integer.valueOf(i));
        return false;
    }

    public static byte b(int i) {
        a("request get the status for the task[%d] in the download service", Integer.valueOf(i));
        return 0;
    }

    private static void a(String str, Object... objArr) {
        d.d(a.class, str + ", but the download service isn't connected yet." + "\nYou can use FileDownloader#isServiceConnected() to check whether the service has been connected, \nbesides you can use following functions easier to control your code invoke after the service has been connected: \n1. FileDownloader#bindService(Runnable)\n2. FileDownloader#insureServiceBind()\n3. FileDownloader#insureServiceBindAsync()", objArr);
    }
}
