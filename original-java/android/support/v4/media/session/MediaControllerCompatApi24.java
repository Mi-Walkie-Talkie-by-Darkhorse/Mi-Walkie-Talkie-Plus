package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@TargetApi(24)
@RequiresApi(24)
class MediaControllerCompatApi24 {

    public static class TransportControls extends android.support.v4.media.session.MediaControllerCompatApi23.TransportControls {
        public static void prepare(Object obj) {
            ((android.media.session.MediaController.TransportControls) obj).prepare();
        }

        public static void prepareFromMediaId(Object obj, String str, Bundle bundle) {
            ((android.media.session.MediaController.TransportControls) obj).prepareFromMediaId(str, bundle);
        }

        public static void prepareFromSearch(Object obj, String str, Bundle bundle) {
            ((android.media.session.MediaController.TransportControls) obj).prepareFromSearch(str, bundle);
        }

        public static void prepareFromUri(Object obj, Uri uri, Bundle bundle) {
            ((android.media.session.MediaController.TransportControls) obj).prepareFromUri(uri, bundle);
        }
    }

    MediaControllerCompatApi24() {
    }
}
