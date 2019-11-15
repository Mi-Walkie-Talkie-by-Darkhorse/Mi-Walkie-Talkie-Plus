package okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

final class SegmentedByteString extends ByteString {
    final transient int[] directory;
    final transient byte[][] segments;

    SegmentedByteString(Buffer buffer, int i) {
        int i2 = 0;
        super(null);
        Util.checkOffsetAndCount(buffer.size, 0, (long) i);
        Segment segment = buffer.head;
        int i3 = 0;
        int i4 = 0;
        while (i4 < i) {
            if (segment.limit == segment.pos) {
                throw new AssertionError("s.limit == s.pos");
            }
            i4 += segment.limit - segment.pos;
            i3++;
            segment = segment.next;
        }
        this.segments = new byte[i3][];
        this.directory = new int[(i3 * 2)];
        Segment segment2 = buffer.head;
        int i5 = 0;
        while (i2 < i) {
            this.segments[i5] = segment2.data;
            int i6 = (segment2.limit - segment2.pos) + i2;
            if (i6 > i) {
                i6 = i;
            }
            this.directory[i5] = i6;
            this.directory[this.segments.length + i5] = segment2.pos;
            segment2.shared = true;
            i5++;
            segment2 = segment2.next;
            i2 = i6;
        }
    }

    public String utf8() {
        return toByteString().utf8();
    }

    public String string(Charset charset) {
        return toByteString().string(charset);
    }

    public String base64() {
        return toByteString().base64();
    }

    public String hex() {
        return toByteString().hex();
    }

    public ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    public ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    public ByteString md5() {
        return toByteString().md5();
    }

    public ByteString sha1() {
        return toByteString().sha1();
    }

    public ByteString sha256() {
        return toByteString().sha256();
    }

    public ByteString hmacSha1(ByteString byteString) {
        return toByteString().hmacSha1(byteString);
    }

    public ByteString hmacSha256(ByteString byteString) {
        return toByteString().hmacSha256(byteString);
    }

    public String base64Url() {
        return toByteString().base64Url();
    }

    public ByteString substring(int i) {
        return toByteString().substring(i);
    }

    public ByteString substring(int i, int i2) {
        return toByteString().substring(i, i2);
    }

    public byte getByte(int i) {
        Util.checkOffsetAndCount((long) this.directory[this.segments.length - 1], (long) i, 1);
        int segment = segment(i);
        return this.segments[segment][(i - (segment == 0 ? 0 : this.directory[segment - 1])) + this.directory[this.segments.length + segment]];
    }

    private int segment(int i) {
        int binarySearch = Arrays.binarySearch(this.directory, 0, this.segments.length, i + 1);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ -1;
    }

    public int size() {
        return this.directory[this.segments.length - 1];
    }

    public byte[] toByteArray() {
        int i = 0;
        byte[] bArr = new byte[this.directory[this.segments.length - 1]];
        int length = this.segments.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.directory[length + i];
            int i4 = this.directory[i];
            System.arraycopy(this.segments[i], i3, bArr, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr;
    }

    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    public void write(OutputStream outputStream) throws IOException {
        int i = 0;
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        int length = this.segments.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.directory[length + i];
            int i4 = this.directory[i];
            outputStream.write(this.segments[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
    }

    /* access modifiers changed from: 0000 */
    public void write(Buffer buffer) {
        int i = 0;
        int length = this.segments.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.directory[length + i];
            int i4 = this.directory[i];
            Segment segment = new Segment(this.segments[i], i3, (i3 + i4) - i2);
            if (buffer.head == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                buffer.head.prev.push(segment);
            }
            i++;
            i2 = i4;
        }
        buffer.size = ((long) i2) + buffer.size;
    }

    public boolean rangeEquals(int i, ByteString byteString, int i2, int i3) {
        if (i < 0 || i > size() - i3) {
            return false;
        }
        int segment = segment(i);
        while (i3 > 0) {
            int i4 = segment == 0 ? 0 : this.directory[segment - 1];
            int min = Math.min(i3, ((this.directory[segment] - i4) + i4) - i);
            if (!byteString.rangeEquals(i2, this.segments[segment], (i - i4) + this.directory[this.segments.length + segment], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            segment++;
        }
        return true;
    }

    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > size() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int segment = segment(i);
        while (i3 > 0) {
            int i4 = segment == 0 ? 0 : this.directory[segment - 1];
            int min = Math.min(i3, ((this.directory[segment] - i4) + i4) - i);
            if (!Util.arrayRangeEquals(this.segments[segment], (i - i4) + this.directory[this.segments.length + segment], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            segment++;
        }
        return true;
    }

    public int indexOf(byte[] bArr, int i) {
        return toByteString().indexOf(bArr, i);
    }

    public int lastIndexOf(byte[] bArr, int i) {
        return toByteString().lastIndexOf(bArr, i);
    }

    private ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    /* access modifiers changed from: 0000 */
    public byte[] internalArray() {
        return toByteArray();
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString) || ((ByteString) obj).size() != size() || !rangeEquals(0, (ByteString) obj, 0, size())) {
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i == 0) {
            i = 1;
            int length = this.segments.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                byte[] bArr = this.segments[i2];
                int i4 = this.directory[length + i2];
                int i5 = this.directory[i2];
                int i6 = (i5 - i3) + i4;
                int i7 = i4;
                int i8 = i;
                for (int i9 = i7; i9 < i6; i9++) {
                    i8 = (i8 * 31) + bArr[i9];
                }
                i2++;
                i3 = i5;
                i = i8;
            }
            this.hashCode = i;
        }
        return i;
    }

    public String toString() {
        return toByteString().toString();
    }

    private Object writeReplace() {
        return toByteString();
    }
}
