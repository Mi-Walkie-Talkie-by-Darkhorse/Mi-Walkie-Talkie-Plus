package android.support.v4.media;

@Deprecated
public abstract class TransportController {
    @Deprecated
    public abstract int getBufferPercentage();

    @Deprecated
    public abstract long getCurrentPosition();

    @Deprecated
    public abstract long getDuration();

    @Deprecated
    public abstract int getTransportControlFlags();

    @Deprecated
    public abstract boolean isPlaying();

    @Deprecated
    public abstract void pausePlaying();

    @Deprecated
    public abstract void registerStateListener(TransportStateListener transportStateListener);

    @Deprecated
    public abstract void seekTo(long j);

    @Deprecated
    public abstract void startPlaying();

    @Deprecated
    public abstract void stopPlaying();

    @Deprecated
    public abstract void unregisterStateListener(TransportStateListener transportStateListener);
}
