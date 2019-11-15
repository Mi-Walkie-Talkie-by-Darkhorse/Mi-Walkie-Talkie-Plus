package org.bouncycastle.crypto.tls;

import java.util.Vector;

class DTLSReassembler {
    private final byte[] body;
    private Vector missing = new Vector();
    private final short msg_type;

    private static class Range {
        private int end;
        private int start;

        Range(int i, int i2) {
            this.start = i;
            this.end = i2;
        }

        public int getEnd() {
            return this.end;
        }

        public int getStart() {
            return this.start;
        }

        public void setEnd(int i) {
            this.end = i;
        }

        public void setStart(int i) {
            this.start = i;
        }
    }

    DTLSReassembler(short s, int i) {
        this.msg_type = s;
        this.body = new byte[i];
        this.missing.addElement(new Range(0, i));
    }

    /* access modifiers changed from: 0000 */
    public void contributeFragment(short s, int i, byte[] bArr, int i2, int i3, int i4) {
        int i5 = 0;
        int i6 = i3 + i4;
        if (this.msg_type != s || this.body.length != i || i6 > i) {
            return;
        }
        if (i4 != 0) {
            while (i5 < this.missing.size()) {
                Range range = (Range) this.missing.elementAt(i5);
                if (range.getStart() < i6) {
                    if (range.getEnd() > i3) {
                        int max = Math.max(range.getStart(), i3);
                        int min = Math.min(range.getEnd(), i6);
                        System.arraycopy(bArr, (i2 + max) - i3, this.body, max, min - max);
                        if (max != range.getStart()) {
                            if (min != range.getEnd()) {
                                i5++;
                                this.missing.insertElementAt(new Range(min, range.getEnd()), i5);
                            }
                            range.setEnd(max);
                        } else if (min == range.getEnd()) {
                            int i7 = i5 - 1;
                            this.missing.removeElementAt(i5);
                            i5 = i7;
                        } else {
                            range.setStart(min);
                        }
                    }
                    i5++;
                } else {
                    return;
                }
            }
        } else if (i3 == 0 && !this.missing.isEmpty() && ((Range) this.missing.firstElement()).getEnd() == 0) {
            this.missing.removeElementAt(0);
        }
    }

    /* access modifiers changed from: 0000 */
    public byte[] getBodyIfComplete() {
        if (this.missing.isEmpty()) {
            return this.body;
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public short getMsgType() {
        return this.msg_type;
    }

    /* access modifiers changed from: 0000 */
    public void reset() {
        this.missing.removeAllElements();
        this.missing.addElement(new Range(0, this.body.length));
    }
}
