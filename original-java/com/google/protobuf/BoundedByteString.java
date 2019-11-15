package com.google.protobuf;

import com.google.protobuf.ByteString.ByteIterator;
import java.util.NoSuchElementException;

class BoundedByteString extends LiteralByteString {
    private final int bytesLength;
    private final int bytesOffset;

    private class BoundedByteIterator implements ByteIterator {
        private final int limit;
        private int position;

        private BoundedByteIterator() {
            this.position = BoundedByteString.this.getOffsetIntoBytes();
            this.limit = this.position + BoundedByteString.this.size();
        }

        public boolean hasNext() {
            return this.position < this.limit;
        }

        public Byte next() {
            return Byte.valueOf(nextByte());
        }

        public byte nextByte() {
            if (this.position >= this.limit) {
                throw new NoSuchElementException();
            }
            byte[] bArr = BoundedByteString.this.bytes;
            int i = this.position;
            this.position = i + 1;
            return bArr[i];
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    BoundedByteString(byte[] bArr, int i, int i2) {
        super(bArr);
        if (i < 0) {
            throw new IllegalArgumentException("Offset too small: " + i);
        } else if (i2 < 0) {
            throw new IllegalArgumentException("Length too small: " + i);
        } else if (((long) i) + ((long) i2) > ((long) bArr.length)) {
            throw new IllegalArgumentException("Offset+Length too large: " + i + "+" + i2);
        } else {
            this.bytesOffset = i;
            this.bytesLength = i2;
        }
    }

    public byte byteAt(int i) {
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException("Index too small: " + i);
        } else if (i < size()) {
            return this.bytes[this.bytesOffset + i];
        } else {
            throw new ArrayIndexOutOfBoundsException("Index too large: " + i + ", " + size());
        }
    }

    public int size() {
        return this.bytesLength;
    }

    /* access modifiers changed from: protected */
    public int getOffsetIntoBytes() {
        return this.bytesOffset;
    }

    /* access modifiers changed from: protected */
    public void copyToInternal(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.bytes, getOffsetIntoBytes() + i, bArr, i2, i3);
    }

    public ByteIterator iterator() {
        return new BoundedByteIterator();
    }
}
