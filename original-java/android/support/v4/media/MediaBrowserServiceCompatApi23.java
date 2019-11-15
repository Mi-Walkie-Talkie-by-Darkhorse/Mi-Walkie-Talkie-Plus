package android.support.v4.media;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.browse.MediaBrowser.MediaItem;
import android.os.Parcel;
import android.service.media.MediaBrowserService.Result;
import android.support.annotation.RequiresApi;

@TargetApi(23)
@RequiresApi(23)
class MediaBrowserServiceCompatApi23 {

    static class MediaBrowserServiceAdaptor extends MediaBrowserServiceAdaptor {
        MediaBrowserServiceAdaptor(Context context, ServiceCompatProxy serviceCompatProxy) {
            super(context, serviceCompatProxy);
        }

        public void onLoadItem(String str, Result<MediaItem> result) {
            ((ServiceCompatProxy) this.mServiceProxy).onLoadItem(str, new ResultWrapper(result));
        }
    }

    public interface ServiceCompatProxy extends android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceCompatProxy {
        void onLoadItem(String str, ResultWrapper<Parcel> resultWrapper);
    }

    MediaBrowserServiceCompatApi23() {
    }

    public static Object createService(Context context, ServiceCompatProxy serviceCompatProxy) {
        return new MediaBrowserServiceAdaptor(context, serviceCompatProxy);
    }
}
