package org.jboss.netty.channel;

import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public class DefaultFileRegion implements FileRegion {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(DefaultFileRegion.class);
    private final long count;
    private final FileChannel file;
    private final long position;
    private final boolean releaseAfterTransfer;

    public DefaultFileRegion(FileChannel fileChannel, long j, long j2) {
        this(fileChannel, j, j2, false);
    }

    public DefaultFileRegion(FileChannel fileChannel, long j, long j2, boolean z) {
        this.file = fileChannel;
        this.position = j;
        this.count = j2;
        this.releaseAfterTransfer = z;
    }

    public long getPosition() {
        return this.position;
    }

    public long getCount() {
        return this.count;
    }

    public boolean releaseAfterTransfer() {
        return this.releaseAfterTransfer;
    }

    public long transferTo(WritableByteChannel writableByteChannel, long j) throws IOException {
        long j2 = this.count - j;
        if (j2 < 0 || j < 0) {
            throw new IllegalArgumentException("position out of range: " + j + " (expected: 0 - " + (this.count - 1) + ')');
        } else if (j2 == 0) {
            return 0;
        } else {
            return this.file.transferTo(this.position + j, j2, writableByteChannel);
        }
    }

    public void releaseExternalResources() {
        try {
            this.file.close();
        } catch (IOException e) {
            if (logger.isWarnEnabled()) {
                logger.warn("Failed to close a file.", e);
            }
        }
    }
}
