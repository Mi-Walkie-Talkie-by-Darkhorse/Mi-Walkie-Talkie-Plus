package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@TargetApi(23)
@RequiresApi(23)
class MediaControllerCompatApi23 {

    public static class TransportControls extends android.support.v4.media.session.MediaControllerCompatApi21.TransportControls {
        public static void playFromUri(Object obj, Uri uri, Bundle bundle) {
            ((android.media.session.MediaController.TransportControls) obj).playFromUri(uri, bundle);
        }
    }

    MediaControllerCompatApi23() {
    }
}
