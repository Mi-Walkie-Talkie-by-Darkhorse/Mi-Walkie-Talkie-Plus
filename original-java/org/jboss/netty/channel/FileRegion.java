package org.jboss.netty.channel;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;
import org.jboss.netty.util.ExternalResourceReleasable;

public interface FileRegion extends ExternalResourceReleasable {
    long getCount();

    long getPosition();

    long transferTo(WritableByteChannel writableByteChannel, long j) throws IOException;
}
