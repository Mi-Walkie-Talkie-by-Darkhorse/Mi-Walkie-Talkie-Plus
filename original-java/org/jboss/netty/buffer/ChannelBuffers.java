package org.jboss.netty.buffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.util.ArrayList;
import java.util.List;
import org.jboss.netty.util.CharsetUtil;

public final class ChannelBuffers {
    public static final ByteOrder BIG_ENDIAN = ByteOrder.BIG_ENDIAN;
    public static final ChannelBuffer EMPTY_BUFFER = new BigEndianHeapChannelBuffer(0);
    private static final char[] HEXDUMP_TABLE = new char[1024];
    public static final ByteOrder LITTLE_ENDIAN = ByteOrder.LITTLE_ENDIAN;

    static {
        char[] charArray = "0123456789abcdef".toCharArray();
        for (int i = 0; i < 256; i++) {
            HEXDUMP_TABLE[i << 1] = charArray[(i >>> 4) & 15];
            HEXDUMP_TABLE[(i << 1) + 1] = charArray[i & 15];
        }
    }

    public static ChannelBuffer buffer(int i) {
        return buffer(BIG_ENDIAN, i);
    }

    public static ChannelBuffer buffer(ByteOrder byteOrder, int i) {
        if (byteOrder == BIG_ENDIAN) {
            if (i == 0) {
                return EMPTY_BUFFER;
            }
            return new BigEndianHeapChannelBuffer(i);
        } else if (byteOrder != LITTLE_ENDIAN) {
            throw new NullPointerException("endianness");
        } else if (i == 0) {
            return EMPTY_BUFFER;
        } else {
            return new LittleEndianHeapChannelBuffer(i);
        }
    }

    public static ChannelBuffer directBuffer(int i) {
        return directBuffer(BIG_ENDIAN, i);
    }

    public static ChannelBuffer directBuffer(ByteOrder byteOrder, int i) {
        if (byteOrder == null) {
            throw new NullPointerException("endianness");
        } else if (i == 0) {
            return EMPTY_BUFFER;
        } else {
            ByteBufferBackedChannelBuffer byteBufferBackedChannelBuffer = new ByteBufferBackedChannelBuffer(ByteBuffer.allocateDirect(i).order(byteOrder));
            byteBufferBackedChannelBuffer.clear();
            return byteBufferBackedChannelBuffer;
        }
    }

    public static ChannelBuffer dynamicBuffer() {
        return dynamicBuffer(BIG_ENDIAN, 256);
    }

    public static ChannelBuffer dynamicBuffer(ChannelBufferFactory channelBufferFactory) {
        if (channelBufferFactory != null) {
            return new DynamicChannelBuffer(channelBufferFactory.getDefaultOrder(), 256, channelBufferFactory);
        }
        throw new NullPointerException("factory");
    }

    public static ChannelBuffer dynamicBuffer(int i) {
        return dynamicBuffer(BIG_ENDIAN, i);
    }

    public static ChannelBuffer dynamicBuffer(ByteOrder byteOrder, int i) {
        return new DynamicChannelBuffer(byteOrder, i);
    }

    public static ChannelBuffer dynamicBuffer(int i, ChannelBufferFactory channelBufferFactory) {
        if (channelBufferFactory != null) {
            return new DynamicChannelBuffer(channelBufferFactory.getDefaultOrder(), i, channelBufferFactory);
        }
        throw new NullPointerException("factory");
    }

    public static ChannelBuffer dynamicBuffer(ByteOrder byteOrder, int i, ChannelBufferFactory channelBufferFactory) {
        return new DynamicChannelBuffer(byteOrder, i, channelBufferFactory);
    }

    public static ChannelBuffer wrappedBuffer(byte[] bArr) {
        return wrappedBuffer(BIG_ENDIAN, bArr);
    }

    public static ChannelBuffer wrappedBuffer(ByteOrder byteOrder, byte[] bArr) {
        if (byteOrder == BIG_ENDIAN) {
            if (bArr.length == 0) {
                return EMPTY_BUFFER;
            }
            return new BigEndianHeapChannelBuffer(bArr);
        } else if (byteOrder != LITTLE_ENDIAN) {
            throw new NullPointerException("endianness");
        } else if (bArr.length == 0) {
            return EMPTY_BUFFER;
        } else {
            return new LittleEndianHeapChannelBuffer(bArr);
        }
    }

    public static ChannelBuffer wrappedBuffer(byte[] bArr, int i, int i2) {
        return wrappedBuffer(BIG_ENDIAN, bArr, i, i2);
    }

    public static ChannelBuffer wrappedBuffer(ByteOrder byteOrder, byte[] bArr, int i, int i2) {
        if (byteOrder == null) {
            throw new NullPointerException("endianness");
        } else if (i == 0) {
            if (i2 == bArr.length) {
                return wrappedBuffer(byteOrder, bArr);
            }
            if (i2 == 0) {
                return EMPTY_BUFFER;
            }
            return new TruncatedChannelBuffer(wrappedBuffer(byteOrder, bArr), i2);
        } else if (i2 == 0) {
            return EMPTY_BUFFER;
        } else {
            return new SlicedChannelBuffer(wrappedBuffer(byteOrder, bArr), i, i2);
        }
    }

    public static ChannelBuffer wrappedBuffer(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return EMPTY_BUFFER;
        }
        if (byteBuffer.hasArray()) {
            return wrappedBuffer(byteBuffer.order(), byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
        }
        return new ByteBufferBackedChannelBuffer(byteBuffer);
    }

    public static ChannelBuffer wrappedBuffer(ChannelBuffer channelBuffer) {
        if (channelBuffer.readable()) {
            return channelBuffer.slice();
        }
        return EMPTY_BUFFER;
    }

    public static ChannelBuffer wrappedBuffer(byte[]... bArr) {
        return wrappedBuffer(BIG_ENDIAN, bArr);
    }

    public static ChannelBuffer wrappedBuffer(ByteOrder byteOrder, byte[]... bArr) {
        switch (bArr.length) {
            case 0:
                break;
            case 1:
                if (bArr[0].length != 0) {
                    return wrappedBuffer(byteOrder, bArr[0]);
                }
                break;
            default:
                ArrayList arrayList = new ArrayList(bArr.length);
                for (byte[] bArr2 : bArr) {
                    if (bArr2 == null) {
                        return compositeBuffer(byteOrder, arrayList, false);
                    }
                    if (bArr2.length > 0) {
                        arrayList.add(wrappedBuffer(byteOrder, bArr2));
                    }
                }
                return compositeBuffer(byteOrder, arrayList, false);
        }
        return EMPTY_BUFFER;
    }

    private static ChannelBuffer compositeBuffer(ByteOrder byteOrder, List<ChannelBuffer> list, boolean z) {
        switch (list.size()) {
            case 0:
                return EMPTY_BUFFER;
            case 1:
                return (ChannelBuffer) list.get(0);
            default:
                return new CompositeChannelBuffer(byteOrder, list, z);
        }
    }

    public static ChannelBuffer wrappedBuffer(ChannelBuffer... channelBufferArr) {
        return wrappedBuffer(false, channelBufferArr);
    }

    public static ChannelBuffer wrappedBuffer(boolean z, ChannelBuffer... channelBufferArr) {
        ByteOrder byteOrder;
        switch (channelBufferArr.length) {
            case 0:
                break;
            case 1:
                if (channelBufferArr[0].readable()) {
                    return wrappedBuffer(channelBufferArr[0]);
                }
                break;
            default:
                ArrayList arrayList = new ArrayList(channelBufferArr.length);
                int length = channelBufferArr.length;
                int i = 0;
                ByteOrder byteOrder2 = null;
                while (i < length) {
                    ChannelBuffer channelBuffer = channelBufferArr[i];
                    if (channelBuffer == null) {
                        return compositeBuffer(byteOrder2, arrayList, z);
                    }
                    if (channelBuffer.readable()) {
                        if (byteOrder2 == null) {
                            byteOrder = channelBuffer.order();
                        } else if (!byteOrder2.equals(channelBuffer.order())) {
                            throw new IllegalArgumentException("inconsistent byte order");
                        } else {
                            byteOrder = byteOrder2;
                        }
                        if (channelBuffer instanceof CompositeChannelBuffer) {
                            arrayList.addAll(((CompositeChannelBuffer) channelBuffer).decompose(channelBuffer.readerIndex(), channelBuffer.readableBytes()));
                        } else {
                            arrayList.add(channelBuffer.slice());
                        }
                    } else {
                        byteOrder = byteOrder2;
                    }
                    i++;
                    byteOrder2 = byteOrder;
                }
                return compositeBuffer(byteOrder2, arrayList, z);
        }
        return EMPTY_BUFFER;
    }

    public static ChannelBuffer wrappedBuffer(ByteBuffer... byteBufferArr) {
        return wrappedBuffer(false, byteBufferArr);
    }

    public static ChannelBuffer wrappedBuffer(boolean z, ByteBuffer... byteBufferArr) {
        switch (byteBufferArr.length) {
            case 0:
                break;
            case 1:
                if (byteBufferArr[0].hasRemaining()) {
                    return wrappedBuffer(byteBufferArr[0]);
                }
                break;
            default:
                ArrayList arrayList = new ArrayList(byteBufferArr.length);
                ByteOrder byteOrder = null;
                for (ByteBuffer byteBuffer : byteBufferArr) {
                    if (byteBuffer == null) {
                        return compositeBuffer(byteOrder, arrayList, z);
                    }
                    if (byteBuffer.hasRemaining()) {
                        if (byteOrder == null) {
                            byteOrder = byteBuffer.order();
                        } else if (!byteOrder.equals(byteBuffer.order())) {
                            throw new IllegalArgumentException("inconsistent byte order");
                        }
                        arrayList.add(wrappedBuffer(byteBuffer));
                    }
                }
                return compositeBuffer(byteOrder, arrayList, z);
        }
        return EMPTY_BUFFER;
    }

    public static ChannelBuffer copiedBuffer(byte[] bArr) {
        return copiedBuffer(BIG_ENDIAN, bArr);
    }

    public static ChannelBuffer copiedBuffer(ByteOrder byteOrder, byte[] bArr) {
        if (byteOrder == BIG_ENDIAN) {
            if (bArr.length == 0) {
                return EMPTY_BUFFER;
            }
            return new BigEndianHeapChannelBuffer((byte[]) bArr.clone());
        } else if (byteOrder != LITTLE_ENDIAN) {
            throw new NullPointerException("endianness");
        } else if (bArr.length == 0) {
            return EMPTY_BUFFER;
        } else {
            return new LittleEndianHeapChannelBuffer((byte[]) bArr.clone());
        }
    }

    public static ChannelBuffer copiedBuffer(byte[] bArr, int i, int i2) {
        return copiedBuffer(BIG_ENDIAN, bArr, i, i2);
    }

    public static ChannelBuffer copiedBuffer(ByteOrder byteOrder, byte[] bArr, int i, int i2) {
        if (byteOrder == null) {
            throw new NullPointerException("endianness");
        } else if (i2 == 0) {
            return EMPTY_BUFFER;
        } else {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return wrappedBuffer(byteOrder, bArr2);
        }
    }

    /* JADX INFO: finally extract failed */
    public static ChannelBuffer copiedBuffer(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        if (remaining == 0) {
            return EMPTY_BUFFER;
        }
        byte[] bArr = new byte[remaining];
        int position = byteBuffer.position();
        try {
            byteBuffer.get(bArr);
            byteBuffer.position(position);
            return wrappedBuffer(byteBuffer.order(), bArr);
        } catch (Throwable th) {
            byteBuffer.position(position);
            throw th;
        }
    }

    public static ChannelBuffer copiedBuffer(ChannelBuffer channelBuffer) {
        if (channelBuffer.readable()) {
            return channelBuffer.copy();
        }
        return EMPTY_BUFFER;
    }

    public static ChannelBuffer copiedBuffer(byte[]... bArr) {
        return copiedBuffer(BIG_ENDIAN, bArr);
    }

    public static ChannelBuffer copiedBuffer(ByteOrder byteOrder, byte[]... bArr) {
        switch (bArr.length) {
            case 0:
                return EMPTY_BUFFER;
            case 1:
                if (bArr[0].length == 0) {
                    return EMPTY_BUFFER;
                }
                return copiedBuffer(byteOrder, bArr[0]);
            default:
                int i = 0;
                for (byte[] bArr2 : bArr) {
                    if (Integer.MAX_VALUE - i < bArr2.length) {
                        throw new IllegalArgumentException("The total length of the specified arrays is too big.");
                    }
                    i += bArr2.length;
                }
                if (i == 0) {
                    return EMPTY_BUFFER;
                }
                byte[] bArr3 = new byte[i];
                int i2 = 0;
                for (byte[] bArr4 : bArr) {
                    System.arraycopy(bArr4, 0, bArr3, i2, bArr4.length);
                    i2 += bArr4.length;
                }
                return wrappedBuffer(byteOrder, bArr3);
        }
    }

    public static ChannelBuffer copiedBuffer(ChannelBuffer... channelBufferArr) {
        switch (channelBufferArr.length) {
            case 0:
                return EMPTY_BUFFER;
            case 1:
                return copiedBuffer(channelBufferArr[0]);
            default:
                ChannelBuffer[] channelBufferArr2 = new ChannelBuffer[channelBufferArr.length];
                for (int i = 0; i < channelBufferArr.length; i++) {
                    channelBufferArr2[i] = copiedBuffer(channelBufferArr[i]);
                }
                return wrappedBuffer(false, channelBufferArr2);
        }
    }

    public static ChannelBuffer copiedBuffer(ByteBuffer... byteBufferArr) {
        switch (byteBufferArr.length) {
            case 0:
                return EMPTY_BUFFER;
            case 1:
                return copiedBuffer(byteBufferArr[0]);
            default:
                ChannelBuffer[] channelBufferArr = new ChannelBuffer[byteBufferArr.length];
                for (int i = 0; i < byteBufferArr.length; i++) {
                    channelBufferArr[i] = copiedBuffer(byteBufferArr[i]);
                }
                return wrappedBuffer(false, channelBufferArr);
        }
    }

    public static ChannelBuffer copiedBuffer(CharSequence charSequence, Charset charset) {
        return copiedBuffer(BIG_ENDIAN, charSequence, charset);
    }

    public static ChannelBuffer copiedBuffer(CharSequence charSequence, int i, int i2, Charset charset) {
        return copiedBuffer(BIG_ENDIAN, charSequence, i, i2, charset);
    }

    public static ChannelBuffer copiedBuffer(ByteOrder byteOrder, CharSequence charSequence, Charset charset) {
        if (charSequence == null) {
            throw new NullPointerException("string");
        } else if (charSequence instanceof CharBuffer) {
            return copiedBuffer(byteOrder, (CharBuffer) charSequence, charset);
        } else {
            return copiedBuffer(byteOrder, CharBuffer.wrap(charSequence), charset);
        }
    }

    public static ChannelBuffer copiedBuffer(ByteOrder byteOrder, CharSequence charSequence, int i, int i2, Charset charset) {
        if (charSequence == null) {
            throw new NullPointerException("string");
        } else if (i2 == 0) {
            return EMPTY_BUFFER;
        } else {
            if (!(charSequence instanceof CharBuffer)) {
                return copiedBuffer(byteOrder, CharBuffer.wrap(charSequence, i, i + i2), charset);
            }
            CharBuffer charBuffer = (CharBuffer) charSequence;
            if (charBuffer.hasArray()) {
                return copiedBuffer(byteOrder, charBuffer.array(), charBuffer.arrayOffset() + charBuffer.position() + i, i2, charset);
            }
            CharBuffer slice = charBuffer.slice();
            slice.limit(i2);
            slice.position(i);
            return copiedBuffer(byteOrder, slice, charset);
        }
    }

    public static ChannelBuffer copiedBuffer(char[] cArr, Charset charset) {
        return copiedBuffer(BIG_ENDIAN, cArr, 0, cArr.length, charset);
    }

    public static ChannelBuffer copiedBuffer(char[] cArr, int i, int i2, Charset charset) {
        return copiedBuffer(BIG_ENDIAN, cArr, i, i2, charset);
    }

    public static ChannelBuffer copiedBuffer(ByteOrder byteOrder, char[] cArr, Charset charset) {
        return copiedBuffer(byteOrder, cArr, 0, cArr.length, charset);
    }

    public static ChannelBuffer copiedBuffer(ByteOrder byteOrder, char[] cArr, int i, int i2, Charset charset) {
        if (cArr == null) {
            throw new NullPointerException("array");
        } else if (i2 == 0) {
            return EMPTY_BUFFER;
        } else {
            return copiedBuffer(byteOrder, CharBuffer.wrap(cArr, i, i2), charset);
        }
    }

    private static ChannelBuffer copiedBuffer(ByteOrder byteOrder, CharBuffer charBuffer, Charset charset) {
        ByteBuffer encodeString = encodeString(charBuffer, charset);
        ChannelBuffer wrappedBuffer = wrappedBuffer(byteOrder, encodeString.array());
        wrappedBuffer.writerIndex(encodeString.remaining());
        return wrappedBuffer;
    }

    @Deprecated
    public static ChannelBuffer copiedBuffer(String str, String str2) {
        return copiedBuffer((CharSequence) str, Charset.forName(str2));
    }

    @Deprecated
    public static ChannelBuffer copiedBuffer(ByteOrder byteOrder, String str, String str2) {
        return copiedBuffer(byteOrder, (CharSequence) str, Charset.forName(str2));
    }

    public static ChannelBuffer unmodifiableBuffer(ChannelBuffer channelBuffer) {
        if (channelBuffer instanceof ReadOnlyChannelBuffer) {
            channelBuffer = ((ReadOnlyChannelBuffer) channelBuffer).unwrap();
        }
        return new ReadOnlyChannelBuffer(channelBuffer);
    }

    public static ChannelBuffer hexDump(String str) {
        int length = str.length();
        byte[] bArr = new byte[(length / 2)];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return wrappedBuffer(bArr);
    }

    public static String hexDump(ChannelBuffer channelBuffer) {
        return hexDump(channelBuffer, channelBuffer.readerIndex(), channelBuffer.readableBytes());
    }

    public static String hexDump(ChannelBuffer channelBuffer, int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("length: " + i2);
        } else if (i2 == 0) {
            return "";
        } else {
            int i3 = i + i2;
            char[] cArr = new char[(i2 << 1)];
            int i4 = 0;
            while (i < i3) {
                System.arraycopy(HEXDUMP_TABLE, channelBuffer.getUnsignedByte(i) << 1, cArr, i4, 2);
                i++;
                i4 += 2;
            }
            return new String(cArr);
        }
    }

    public static int hashCode(ChannelBuffer channelBuffer) {
        int i;
        int i2;
        int readableBytes = channelBuffer.readableBytes();
        int i3 = readableBytes >>> 2;
        int i4 = readableBytes & 3;
        int readerIndex = channelBuffer.readerIndex();
        if (channelBuffer.order() == BIG_ENDIAN) {
            int i5 = i3;
            i2 = readerIndex;
            i = 1;
            while (i5 > 0) {
                int i6 = channelBuffer.getInt(i2) + (i * 31);
                i5--;
                i2 += 4;
                i = i6;
            }
        } else {
            int i7 = i3;
            int i8 = readerIndex;
            int i9 = 1;
            while (i7 > 0) {
                int swapInt = swapInt(channelBuffer.getInt(i2)) + (i * 31);
                i7--;
                i8 = i2 + 4;
                i9 = swapInt;
            }
        }
        int i10 = i4;
        int i11 = i2;
        int i12 = i;
        int i13 = i10;
        while (i13 > 0) {
            int i14 = i11 + 1;
            i13--;
            i12 = channelBuffer.getByte(i11) + (i12 * 31);
            i11 = i14;
        }
        if (i12 == 0) {
            return 1;
        }
        return i12;
    }

    public static boolean equals(ChannelBuffer channelBuffer, ChannelBuffer channelBuffer2) {
        int i;
        int i2;
        int readableBytes = channelBuffer.readableBytes();
        if (readableBytes != channelBuffer2.readableBytes()) {
            return false;
        }
        int i3 = readableBytes >>> 3;
        int i4 = readableBytes & 7;
        int readerIndex = channelBuffer.readerIndex();
        int readerIndex2 = channelBuffer2.readerIndex();
        if (channelBuffer.order() == channelBuffer2.order()) {
            int i5 = i3;
            i2 = readerIndex2;
            i = readerIndex;
            int i6 = i5;
            while (i6 > 0) {
                if (channelBuffer.getLong(i) != channelBuffer2.getLong(i2)) {
                    return false;
                }
                int i7 = i + 8;
                i6--;
                i2 += 8;
                i = i7;
            }
        } else {
            int i8 = i3;
            int i9 = readerIndex2;
            int i10 = readerIndex;
            int i11 = i8;
            while (i11 > 0) {
                if (channelBuffer.getLong(i) != swapLong(channelBuffer2.getLong(i2))) {
                    return false;
                }
                int i12 = i + 8;
                i11--;
                i9 = i2 + 8;
                i10 = i12;
            }
        }
        int i13 = i4;
        int i14 = i;
        int i15 = i2;
        for (int i16 = i13; i16 > 0; i16--) {
            if (channelBuffer.getByte(i14) != channelBuffer2.getByte(i15)) {
                return false;
            }
            i14++;
            i15++;
        }
        return true;
    }

    public static int compare(ChannelBuffer channelBuffer, ChannelBuffer channelBuffer2) {
        int i;
        int i2;
        int readableBytes = channelBuffer.readableBytes();
        int readableBytes2 = channelBuffer2.readableBytes();
        int min = Math.min(readableBytes, readableBytes2);
        int i3 = min >>> 2;
        int i4 = min & 3;
        int readerIndex = channelBuffer.readerIndex();
        int readerIndex2 = channelBuffer2.readerIndex();
        if (channelBuffer.order() == channelBuffer2.order()) {
            int i5 = i3;
            i2 = readerIndex2;
            i = readerIndex;
            int i6 = i5;
            while (i6 > 0) {
                long unsignedInt = channelBuffer.getUnsignedInt(i);
                long unsignedInt2 = channelBuffer2.getUnsignedInt(i2);
                if (unsignedInt > unsignedInt2) {
                    return 1;
                }
                if (unsignedInt < unsignedInt2) {
                    return -1;
                }
                int i7 = i + 4;
                i6--;
                i2 += 4;
                i = i7;
            }
        } else {
            int i8 = i3;
            int i9 = readerIndex2;
            int i10 = readerIndex;
            int i11 = i8;
            while (i11 > 0) {
                long unsignedInt3 = channelBuffer.getUnsignedInt(i);
                long swapInt = ((long) swapInt(channelBuffer2.getInt(i2))) & 4294967295L;
                if (unsignedInt3 > swapInt) {
                    return 1;
                }
                if (unsignedInt3 < swapInt) {
                    return -1;
                }
                int i12 = i + 4;
                i11--;
                i9 = i2 + 4;
                i10 = i12;
            }
        }
        int i13 = i4;
        int i14 = i;
        int i15 = i2;
        for (int i16 = i13; i16 > 0; i16--) {
            short unsignedByte = channelBuffer.getUnsignedByte(i14);
            short unsignedByte2 = channelBuffer2.getUnsignedByte(i15);
            if (unsignedByte > unsignedByte2) {
                return 1;
            }
            if (unsignedByte < unsignedByte2) {
                return -1;
            }
            i14++;
            i15++;
        }
        return readableBytes - readableBytes2;
    }

    public static int indexOf(ChannelBuffer channelBuffer, int i, int i2, byte b) {
        if (i <= i2) {
            return firstIndexOf(channelBuffer, i, i2, b);
        }
        return lastIndexOf(channelBuffer, i, i2, b);
    }

    public static int indexOf(ChannelBuffer channelBuffer, int i, int i2, ChannelBufferIndexFinder channelBufferIndexFinder) {
        if (i <= i2) {
            return firstIndexOf(channelBuffer, i, i2, channelBufferIndexFinder);
        }
        return lastIndexOf(channelBuffer, i, i2, channelBufferIndexFinder);
    }

    public static short swapShort(short s) {
        return (short) ((s << 8) | ((s >>> 8) & 255));
    }

    public static int swapMedium(int i) {
        return ((i << 16) & 16711680) | (65280 & i) | ((i >>> 16) & 255);
    }

    public static int swapInt(int i) {
        return (swapShort((short) i) << 16) | (swapShort((short) (i >>> 16)) & 65535);
    }

    public static long swapLong(long j) {
        return (((long) swapInt((int) j)) << 32) | (((long) swapInt((int) (j >>> 32))) & 4294967295L);
    }

    private static int firstIndexOf(ChannelBuffer channelBuffer, int i, int i2, byte b) {
        int max = Math.max(i, 0);
        if (max >= i2 || channelBuffer.capacity() == 0) {
            return -1;
        }
        while (max < i2) {
            if (channelBuffer.getByte(max) == b) {
                return max;
            }
            max++;
        }
        return -1;
    }

    private static int lastIndexOf(ChannelBuffer channelBuffer, int i, int i2, byte b) {
        int min = Math.min(i, channelBuffer.capacity());
        if (min < 0 || channelBuffer.capacity() == 0) {
            return -1;
        }
        for (int i3 = min - 1; i3 >= i2; i3--) {
            if (channelBuffer.getByte(i3) == b) {
                return i3;
            }
        }
        return -1;
    }

    private static int firstIndexOf(ChannelBuffer channelBuffer, int i, int i2, ChannelBufferIndexFinder channelBufferIndexFinder) {
        int max = Math.max(i, 0);
        if (max >= i2 || channelBuffer.capacity() == 0) {
            return -1;
        }
        while (max < i2) {
            if (channelBufferIndexFinder.find(channelBuffer, max)) {
                return max;
            }
            max++;
        }
        return -1;
    }

    private static int lastIndexOf(ChannelBuffer channelBuffer, int i, int i2, ChannelBufferIndexFinder channelBufferIndexFinder) {
        int min = Math.min(i, channelBuffer.capacity());
        if (min < 0 || channelBuffer.capacity() == 0) {
            return -1;
        }
        for (int i3 = min - 1; i3 >= i2; i3--) {
            if (channelBufferIndexFinder.find(channelBuffer, i3)) {
                return i3;
            }
        }
        return -1;
    }

    static ByteBuffer encodeString(CharBuffer charBuffer, Charset charset) {
        CharsetEncoder encoder = CharsetUtil.getEncoder(charset);
        ByteBuffer allocate = ByteBuffer.allocate((int) (((double) charBuffer.remaining()) * ((double) encoder.maxBytesPerChar())));
        try {
            CoderResult encode = encoder.encode(charBuffer, allocate, true);
            if (!encode.isUnderflow()) {
                encode.throwException();
            }
            CoderResult flush = encoder.flush(allocate);
            if (!flush.isUnderflow()) {
                flush.throwException();
            }
            allocate.flip();
            return allocate;
        } catch (CharacterCodingException e) {
            throw new IllegalStateException(e);
        }
    }

    static String decodeString(ByteBuffer byteBuffer, Charset charset) {
        CharsetDecoder decoder = CharsetUtil.getDecoder(charset);
        CharBuffer allocate = CharBuffer.allocate((int) (((double) byteBuffer.remaining()) * ((double) decoder.maxCharsPerByte())));
        try {
            CoderResult decode = decoder.decode(byteBuffer, allocate, true);
            if (!decode.isUnderflow()) {
                decode.throwException();
            }
            CoderResult flush = decoder.flush(allocate);
            if (!flush.isUnderflow()) {
                flush.throwException();
            }
            return allocate.flip().toString();
        } catch (CharacterCodingException e) {
            throw new IllegalStateException(e);
        }
    }

    private ChannelBuffers() {
    }
}
