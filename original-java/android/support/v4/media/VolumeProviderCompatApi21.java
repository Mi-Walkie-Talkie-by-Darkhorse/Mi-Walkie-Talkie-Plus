package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.VolumeProvider;
import android.support.annotation.RequiresApi;

@TargetApi(21)
@RequiresApi(21)
class VolumeProviderCompatApi21 {

    public interface Delegate {
        void onAdjustVolume(int i);

        void onSetVolumeTo(int i);
    }

    VolumeProviderCompatApi21() {
    }

    public static Object createVolumeProvider(int i, int i2, int i3, final Delegate delegate) {
        return new VolumeProvider(i, i2, i3) {
            public void onSetVolumeTo(int i) {
                delegate.onSetVolumeTo(i);
            }

            public void onAdjustVolume(int i) {
                delegate.onAdjustVolume(i);
            }
        };
    }

    public static void setCurrentVolume(Object obj, int i) {
        ((VolumeProvider) obj).setCurrentVolume(i);
    }
}
