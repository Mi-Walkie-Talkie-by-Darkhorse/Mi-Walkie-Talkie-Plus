package com.liulishuo.filedownloader.model;

import com.liulishuo.filedownloader.a;

/* compiled from: FileDownloadStatus */
public class b {
    public static boolean a(int i) {
        return i < 0;
    }

    public static boolean b(int i) {
        return i > 0;
    }

    public static boolean a(int i, int i2) {
        if ((i != 3 && i != 5 && i == i2) || a(i)) {
            return false;
        }
        if (i >= 1 && i <= 6 && i2 >= 10 && i2 <= 11) {
            return false;
        }
        switch (i) {
            case 1:
                switch (i2) {
                    case 0:
                        return false;
                    default:
                        return true;
                }
            case 2:
                switch (i2) {
                    case 0:
                    case 1:
                    case 6:
                        return false;
                    default:
                        return true;
                }
            case 3:
                switch (i2) {
                    case 0:
                    case 1:
                    case 2:
                    case 6:
                        return false;
                    default:
                        return true;
                }
            case 5:
                switch (i2) {
                    case 1:
                    case 6:
                        return false;
                    default:
                        return true;
                }
            case 6:
                switch (i2) {
                    case 0:
                    case 1:
                        return false;
                    default:
                        return true;
                }
            default:
                return true;
        }
    }

    public static boolean b(int i, int i2) {
        if ((i != 3 && i != 5 && i == i2) || a(i)) {
            return false;
        }
        if (i2 == -2) {
            return true;
        }
        if (i2 == -1) {
            return true;
        }
        switch (i) {
            case 0:
                switch (i2) {
                    case 10:
                        return true;
                    default:
                        return false;
                }
            case 1:
                switch (i2) {
                    case 6:
                        return true;
                    default:
                        return false;
                }
            case 2:
            case 3:
                switch (i2) {
                    case -3:
                    case 3:
                    case 5:
                        return true;
                    default:
                        return false;
                }
            case 5:
            case 6:
                switch (i2) {
                    case 2:
                    case 5:
                        return true;
                    default:
                        return false;
                }
            case 10:
                switch (i2) {
                    case 11:
                        return true;
                    default:
                        return false;
                }
            case 11:
                switch (i2) {
                    case -4:
                    case -3:
                    case 1:
                        return true;
                    default:
                        return false;
                }
            default:
                return false;
        }
    }

    public static boolean a(a aVar) {
        return aVar.q() == 0 || aVar.q() == 3;
    }
}
