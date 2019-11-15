package com.mi.milinkforgame.sdk.util.compress;

import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;

public class ZLibCompression implements ICompression {
    private static final String TAG = ZLibCompression.class.getName();

    public byte[] compress(byte[] bArr) {
        byte[] bArr2 = null;
        if (bArr != null) {
            byte[] bArr3 = new byte[0];
            Deflater deflater = new Deflater();
            deflater.reset();
            deflater.setInput(bArr);
            deflater.finish();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
            try {
                byte[] bArr4 = new byte[1024];
                while (!deflater.finished()) {
                    byteArrayOutputStream.write(bArr4, 0, deflater.deflate(bArr4));
                }
                bArr2 = byteArrayOutputStream.toByteArray();
                try {
                } catch (IOException e) {
                    MiLinkLog.e(TAG, "close fail", e);
                }
            } catch (Exception e2) {
                MiLinkLog.e(TAG, "compress fail", e2);
                try {
                } catch (IOException e3) {
                    MiLinkLog.e(TAG, "close fail", e3);
                }
            } catch (OutOfMemoryError e4) {
                MiLinkLog.e(TAG, "compress out of memory", e4);
                try {
                } catch (IOException e5) {
                    MiLinkLog.e(TAG, "close fail", e5);
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e6) {
                    MiLinkLog.e(TAG, "close fail", e6);
                }
            }
            deflater.end();
        }
        return bArr2;
    }

    public byte[] decompress(byte[] bArr) {
        byte[] bArr2 = null;
        if (bArr != null) {
            byte[] bArr3 = new byte[0];
            Inflater inflater = new Inflater();
            inflater.reset();
            inflater.setInput(bArr);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
            try {
                byte[] bArr4 = new byte[1024];
                while (!inflater.finished()) {
                    byteArrayOutputStream.write(bArr4, 0, inflater.inflate(bArr4));
                }
                bArr2 = byteArrayOutputStream.toByteArray();
                try {
                } catch (IOException e) {
                    MiLinkLog.e(TAG, "close fail", e);
                }
            } catch (Exception e2) {
                MiLinkLog.e(TAG, "decompress fail", e2);
                try {
                } catch (IOException e3) {
                    MiLinkLog.e(TAG, "close fail", e3);
                }
            } catch (OutOfMemoryError e4) {
                MiLinkLog.e(TAG, "decompress out of memory", e4);
                try {
                } catch (IOException e5) {
                    MiLinkLog.e(TAG, "close fail", e5);
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e6) {
                    MiLinkLog.e(TAG, "close fail", e6);
                }
            }
            inflater.end();
        }
        return bArr2;
    }
}
