package org.bouncycastle.util.io;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class Streams {
    private static int BUFFER_SIZE = 4096;

    public static void drain(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[BUFFER_SIZE];
        do {
        } while (inputStream.read(bArr, 0, bArr.length) >= 0);
    }

    public static void pipeAll(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[BUFFER_SIZE];
        while (true) {
            int read = inputStream.read(bArr, 0, bArr.length);
            if (read >= 0) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static long pipeAllLimited(InputStream inputStream, long j, OutputStream outputStream) throws IOException {
        long j2 = 0;
        byte[] bArr = new byte[BUFFER_SIZE];
        while (true) {
            int read = inputStream.read(bArr, 0, bArr.length);
            if (read < 0) {
                return j2;
            }
            if (j - j2 < ((long) read)) {
                throw new StreamOverflowException("Data Overflow");
            }
            j2 += (long) read;
            outputStream.write(bArr, 0, read);
        }
    }

    public static byte[] readAll(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        pipeAll(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] readAllLimited(InputStream inputStream, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        pipeAllLimited(inputStream, (long) i, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static int readFully(InputStream inputStream, byte[] bArr) throws IOException {
        return readFully(inputStream, bArr, 0, bArr.length);
    }

    public static int readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            int read = inputStream.read(bArr, i + i3, i2 - i3);
            if (read < 0) {
                break;
            }
            i3 += read;
        }
        return i3;
    }
}
