package org.bouncycastle.crypto.tls;

class DTLSReplayWindow {
    private static final long VALID_SEQ_MASK = 281474976710655L;
    private static final long WINDOW_SIZE = 64;
    private long bitmap = 0;
    private long latestConfirmedSeq = -1;

    DTLSReplayWindow() {
    }

    /* access modifiers changed from: 0000 */
    public void reportAuthenticated(long j) {
        if ((VALID_SEQ_MASK & j) != j) {
            throw new IllegalArgumentException("'seq' out of range");
        } else if (j <= this.latestConfirmedSeq) {
            long j2 = this.latestConfirmedSeq - j;
            if (j2 < 64) {
                this.bitmap = (1 << ((int) j2)) | this.bitmap;
            }
        } else {
            long j3 = j - this.latestConfirmedSeq;
            if (j3 >= 64) {
                this.bitmap = 1;
            } else {
                this.bitmap <<= (int) j3;
                this.bitmap |= 1;
            }
            this.latestConfirmedSeq = j;
        }
    }

    /* access modifiers changed from: 0000 */
    public void reset() {
        this.latestConfirmedSeq = -1;
        this.bitmap = 0;
    }

    /* access modifiers changed from: 0000 */
    public boolean shouldDiscard(long j) {
        if ((VALID_SEQ_MASK & j) != j) {
            return true;
        }
        if (j <= this.latestConfirmedSeq) {
            long j2 = this.latestConfirmedSeq - j;
            if (j2 >= 64) {
                return true;
            }
            if (((1 << ((int) j2)) & this.bitmap) != 0) {
                return true;
            }
        }
        return false;
    }
}
