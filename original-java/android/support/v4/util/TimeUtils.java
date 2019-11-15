package android.support.v4.util;

import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import java.io.PrintWriter;

@RestrictTo({Scope.LIBRARY_GROUP})
public final class TimeUtils {
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static char[] sFormatStr = new char[24];
    private static final Object sFormatSync = new Object();

    private static int accumField(int i, int i2, boolean z, int i3) {
        if (i > 99 || (z && i3 >= 3)) {
            return i2 + 3;
        }
        if (i > 9 || (z && i3 >= 2)) {
            return i2 + 2;
        }
        if (z || i > 0) {
            return i2 + 1;
        }
        return 0;
    }

    private static int printField(char[] cArr, int i, char c, int i2, boolean z, int i3) {
        int i4;
        int i5;
        if (!z && i <= 0) {
            return i2;
        }
        if ((!z || i3 < 3) && i <= 99) {
            i5 = i2;
            i4 = i;
        } else {
            int i6 = i / 100;
            cArr[i2] = (char) (i6 + 48);
            i5 = i2 + 1;
            i4 = i - (i6 * 100);
        }
        if ((z && i3 >= 2) || i4 > 9 || i2 != i5) {
            int i7 = i4 / 10;
            cArr[i5] = (char) (i7 + 48);
            i5++;
            i4 -= i7 * 10;
        }
        cArr[i5] = (char) (i4 + 48);
        int i8 = i5 + 1;
        cArr[i8] = c;
        return i8 + 1;
    }

    private static int formatDurationLocked(long j, int i) {
        char c;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (sFormatStr.length < i) {
            sFormatStr = new char[i];
        }
        char[] cArr = sFormatStr;
        if (j == 0) {
            int i7 = i - 1;
            while (0 < i7) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j > 0) {
            c = '+';
        } else {
            j = -j;
            c = '-';
        }
        int i8 = (int) (j % 1000);
        int floor = (int) Math.floor((double) (j / 1000));
        int i9 = 0;
        if (floor > SECONDS_PER_DAY) {
            i9 = floor / SECONDS_PER_DAY;
            floor -= SECONDS_PER_DAY * i9;
        }
        if (floor > SECONDS_PER_HOUR) {
            int i10 = floor / SECONDS_PER_HOUR;
            i2 = i10;
            i3 = floor - (i10 * SECONDS_PER_HOUR);
        } else {
            i2 = 0;
            i3 = floor;
        }
        if (i3 > 60) {
            int i11 = i3 / 60;
            i4 = i11;
            i5 = i3 - (i11 * 60);
        } else {
            i4 = 0;
            i5 = i3;
        }
        if (i != 0) {
            int accumField = accumField(i9, 1, false, 0);
            int accumField2 = accumField + accumField(i2, 1, accumField > 0, 2);
            int accumField3 = accumField2 + accumField(i4, 1, accumField2 > 0, 2);
            int accumField4 = accumField3 + accumField(i5, 1, accumField3 > 0, 2);
            i6 = 0;
            int accumField5 = accumField(i8, 2, true, accumField4 > 0 ? 3 : 0) + 1 + accumField4;
            while (accumField5 < i) {
                cArr[i6] = ' ';
                accumField5++;
                i6++;
            }
        } else {
            i6 = 0;
        }
        cArr[i6] = c;
        int i12 = i6 + 1;
        boolean z = i != 0;
        int printField = printField(cArr, i9, 'd', i12, false, 0);
        int printField2 = printField(cArr, i2, 'h', printField, printField != i12, z ? 2 : 0);
        int printField3 = printField(cArr, i4, 'm', printField2, printField2 != i12, z ? 2 : 0);
        int printField4 = printField(cArr, i5, 's', printField3, printField3 != i12, z ? 2 : 0);
        int printField5 = printField(cArr, i8, 'm', printField4, true, (!z || printField4 == i12) ? 0 : 3);
        cArr[printField5] = 's';
        return printField5 + 1;
    }

    public static void formatDuration(long j, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j, 0));
        }
    }

    public static void formatDuration(long j, PrintWriter printWriter, int i) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j, i)));
        }
    }

    public static void formatDuration(long j, PrintWriter printWriter) {
        formatDuration(j, printWriter, 0);
    }

    public static void formatDuration(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j - j2, printWriter, 0);
        }
    }

    private TimeUtils() {
    }
}
