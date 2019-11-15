package okhttp3.internal.cache2;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import okio.Buffer;

final class FileOperator {
    private static final int BUFFER_SIZE = 8192;
    private final byte[] byteArray = new byte[8192];
    private final ByteBuffer byteBuffer = ByteBuffer.wrap(this.byteArray);
    private final FileChannel fileChannel;

    FileOperator(FileChannel fileChannel2) {
        this.fileChannel = fileChannel2;
    }

    public void write(long j, Buffer buffer, long j2) throws IOException {
        if (j2 < 0 || j2 > buffer.size()) {
            throw new IndexOutOfBoundsException();
        }
        long j3 = j;
        while (j2 > 0) {
            try {
                int min = (int) Math.min(PlaybackStateCompat.ACTION_PLAY_FROM_URI, j2);
                buffer.read(this.byteArray, 0, min);
                this.byteBuffer.limit(min);
                do {
                    j3 += (long) this.fileChannel.write(this.byteBuffer, j3);
                } while (this.byteBuffer.hasRemaining());
                j2 -= (long) min;
            } finally {
                this.byteBuffer.clear();
            }
        }
    }

    public void read(long j, Buffer buffer, long j2) throws IOException {
        if (j2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j2 > 0) {
            this.byteBuffer.limit((int) Math.min(PlaybackStateCompat.ACTION_PLAY_FROM_URI, j2));
            if (this.fileChannel.read(this.byteBuffer, j) == -1) {
                throw new EOFException();
            }
            try {
                int position = this.byteBuffer.position();
                buffer.write(this.byteArray, 0, position);
                j += (long) position;
                j2 -= (long) position;
            } finally {
                this.byteBuffer.clear();
            }
        }
    }
}
