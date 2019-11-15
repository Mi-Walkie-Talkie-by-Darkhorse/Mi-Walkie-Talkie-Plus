package android.support.v4.content;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import android.support.annotation.RequiresApi;

@TargetApi(16)
@RequiresApi(16)
class ContentResolverCompatJellybean {
    ContentResolverCompatJellybean() {
    }

    public static Cursor query(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, Object obj) {
        return contentResolver.query(uri, strArr, str, strArr2, str2, (CancellationSignal) obj);
    }

    static boolean isFrameworkOperationCanceledException(Exception exc) {
        return exc instanceof OperationCanceledException;
    }
}
