package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.browse.MediaBrowser;
import android.media.browse.MediaBrowser.MediaItem;
import android.os.Parcel;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

@TargetApi(23)
@RequiresApi(23)
class MediaBrowserCompatApi23 {

    interface ItemCallback {
        void onError(@NonNull String str);

        void onItemLoaded(Parcel parcel);
    }

    static class ItemCallbackProxy<T extends ItemCallback> extends android.media.browse.MediaBrowser.ItemCallback {
        protected final T mItemCallback;

        public ItemCallbackProxy(T t) {
            this.mItemCallback = t;
        }

        public void onItemLoaded(MediaItem mediaItem) {
            if (mediaItem == null) {
                this.mItemCallback.onItemLoaded(null);
                return;
            }
            Parcel obtain = Parcel.obtain();
            mediaItem.writeToParcel(obtain, 0);
            this.mItemCallback.onItemLoaded(obtain);
        }

        public void onError(@NonNull String str) {
            this.mItemCallback.onError(str);
        }
    }

    MediaBrowserCompatApi23() {
    }

    public static Object createItemCallback(ItemCallback itemCallback) {
        return new ItemCallbackProxy(itemCallback);
    }

    public static void getItem(Object obj, String str, Object obj2) {
        ((MediaBrowser) obj).getItem(str, (android.media.browse.MediaBrowser.ItemCallback) obj2);
    }
}
