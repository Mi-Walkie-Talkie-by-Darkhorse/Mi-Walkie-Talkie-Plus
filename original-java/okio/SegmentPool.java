package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import javax.annotation.Nullable;

final class SegmentPool {
    static final long MAX_SIZE = 65536;
    static long byteCount;
    @Nullable
    static Segment next;

    private SegmentPool() {
    }

    static Segment take() {
        synchronized (SegmentPool.class) {
            if (next == null) {
                return new Segment();
            }
            Segment segment = next;
            next = segment.next;
            segment.next = null;
            byteCount -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            return segment;
        }
    }

    static void recycle(Segment segment) {
        if (segment.next != null || segment.prev != null) {
            throw new IllegalArgumentException();
        } else if (!segment.shared) {
            synchronized (SegmentPool.class) {
                if (byteCount + PlaybackStateCompat.ACTION_PLAY_FROM_URI <= 65536) {
                    byteCount += PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                    segment.next = next;
                    segment.limit = 0;
                    segment.pos = 0;
                    next = segment;
                }
            }
        }
    }
}
