package com.xiaomi.channel.common.audio;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

public class WavWriter {
    static final /* synthetic */ boolean $assertionsDisabled = (!WavWriter.class.desiredAssertionStatus());
    private int bps;
    private short channel;
    private int quality;
    private int sampleRate;

    public static class WaveHeader {
        public int AvgBytesPerSec;
        public short BitsPerSample;
        public short BlockAlign;
        public short Channels;
        public char[] DataHdrID = {'d', 'a', 't', 'a'};
        public int DataHdrLeth;
        public char[] FmtHdrID = {'f', 'm', 't', ' '};
        public int FmtHdrLeth;
        public short FormatTag;
        public int SamplesPerSec;
        public final char[] fileID = {Matrix.MATRIX_TYPE_RANDOM_REGULAR, 'I', 'F', 'F'};
        public int fileLength;
        public char[] wavTag = {'W', 'A', 'V', 'E'};

        public byte[] getHeader() throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            WriteChar(byteArrayOutputStream, this.fileID);
            WriteInt(byteArrayOutputStream, this.fileLength);
            WriteChar(byteArrayOutputStream, this.wavTag);
            WriteChar(byteArrayOutputStream, this.FmtHdrID);
            WriteInt(byteArrayOutputStream, this.FmtHdrLeth);
            WriteShort(byteArrayOutputStream, this.FormatTag);
            WriteShort(byteArrayOutputStream, this.Channels);
            WriteInt(byteArrayOutputStream, this.SamplesPerSec);
            WriteInt(byteArrayOutputStream, this.AvgBytesPerSec);
            WriteShort(byteArrayOutputStream, this.BlockAlign);
            WriteShort(byteArrayOutputStream, this.BitsPerSample);
            WriteChar(byteArrayOutputStream, this.DataHdrID);
            WriteInt(byteArrayOutputStream, this.DataHdrLeth);
            byteArrayOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        }

        private void WriteShort(ByteArrayOutputStream byteArrayOutputStream, int i) throws IOException {
            byte[] bArr = new byte[2];
            bArr[1] = (byte) ((i << 16) >> 24);
            bArr[0] = (byte) ((i << 24) >> 24);
            byteArrayOutputStream.write(bArr);
        }

        private void WriteInt(ByteArrayOutputStream byteArrayOutputStream, int i) throws IOException {
            byte[] bArr = new byte[4];
            bArr[3] = (byte) (i >> 24);
            bArr[2] = (byte) ((i << 8) >> 24);
            bArr[1] = (byte) ((i << 16) >> 24);
            bArr[0] = (byte) ((i << 24) >> 24);
            byteArrayOutputStream.write(bArr);
        }

        private void WriteChar(ByteArrayOutputStream byteArrayOutputStream, char[] cArr) {
            for (char write : cArr) {
                byteArrayOutputStream.write(write);
            }
        }
    }

    public WavWriter(int i, short s, int i2) {
        this.sampleRate = i;
        this.channel = s;
        this.bps = i2;
    }

    public void convertAudioFiles(String str, String str2) throws Exception {
        FileInputStream fileInputStream = new FileInputStream(str);
        FileOutputStream fileOutputStream = new FileOutputStream(str2);
        byte[] bArr = new byte[4096];
        int i = 0;
        for (int read = fileInputStream.read(bArr); read != -1; read = fileInputStream.read(bArr)) {
            i += read;
        }
        fileInputStream.close();
        WaveHeader waveHeader = new WaveHeader();
        waveHeader.fileLength = i + 36;
        waveHeader.FmtHdrLeth = 16;
        waveHeader.BitsPerSample = 16;
        waveHeader.Channels = this.channel;
        waveHeader.FormatTag = 1;
        waveHeader.SamplesPerSec = this.sampleRate;
        waveHeader.BlockAlign = (short) ((waveHeader.Channels * waveHeader.BitsPerSample) / 8);
        waveHeader.AvgBytesPerSec = waveHeader.BlockAlign * waveHeader.SamplesPerSec;
        waveHeader.DataHdrLeth = i;
        byte[] header = waveHeader.getHeader();
        if ($assertionsDisabled || header.length == 44) {
            fileOutputStream.write(header, 0, header.length);
            FileInputStream fileInputStream2 = new FileInputStream(str);
            for (int read2 = fileInputStream2.read(bArr); read2 != -1; read2 = fileInputStream2.read(bArr)) {
                fileOutputStream.write(bArr, 0, read2);
            }
            fileInputStream2.close();
            fileOutputStream.close();
            System.out.println("Convert OK!");
            return;
        }
        throw new AssertionError();
    }
}
