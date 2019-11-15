package org.bouncycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.Digest;

class DigestInputBuffer extends ByteArrayOutputStream {
    DigestInputBuffer() {
    }

    /* access modifiers changed from: 0000 */
    public void updateDigest(Digest digest) {
        digest.update(this.buf, 0, this.count);
    }
}
