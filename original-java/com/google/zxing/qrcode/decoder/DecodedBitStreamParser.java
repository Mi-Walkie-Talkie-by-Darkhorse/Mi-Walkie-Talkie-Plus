package com.google.zxing.qrcode.decoder;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.StringUtils;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import java.util.Map;

final class DecodedBitStreamParser {
    private static final char[] ALPHANUMERIC_CHARS = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();
    private static final int GB2312_SUBSET = 1;

    private DecodedBitStreamParser() {
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    static com.google.zxing.common.DecoderResult decode(byte[] r11, com.google.zxing.qrcode.decoder.Version r12, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel r13, java.util.Map<com.google.zxing.DecodeHintType, ?> r14) throws com.google.zxing.FormatException {
        /*
            com.google.zxing.common.BitSource r0 = new com.google.zxing.common.BitSource
            r0.<init>(r11)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = 50
            r1.<init>(r2)
            java.util.ArrayList r4 = new java.util.ArrayList
            r2 = 1
            r4.<init>(r2)
            r5 = -1
            r6 = -1
            r3 = 0
            r2 = 0
            r8 = r6
            r9 = r5
            r6 = r2
        L_0x0019:
            int r2 = r0.available()     // Catch:{ IllegalArgumentException -> 0x0046 }
            r5 = 4
            if (r2 >= r5) goto L_0x004c
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.TERMINATOR     // Catch:{ IllegalArgumentException -> 0x0046 }
            r7 = r2
        L_0x0023:
            int[] r2 = com.google.zxing.qrcode.decoder.DecodedBitStreamParser.AnonymousClass1.$SwitchMap$com$google$zxing$qrcode$decoder$Mode     // Catch:{ IllegalArgumentException -> 0x0046 }
            int r5 = r7.ordinal()     // Catch:{ IllegalArgumentException -> 0x0046 }
            r2 = r2[r5]     // Catch:{ IllegalArgumentException -> 0x0046 }
            switch(r2) {
                case 5: goto L_0x0057;
                case 6: goto L_0x0073;
                case 7: goto L_0x0073;
                case 8: goto L_0x0078;
                case 9: goto L_0x0095;
                case 10: goto L_0x00a4;
                default: goto L_0x002e;
            }     // Catch:{ IllegalArgumentException -> 0x0046 }
        L_0x002e:
            int r2 = r7.getCharacterCountBits(r12)     // Catch:{ IllegalArgumentException -> 0x0046 }
            int r2 = r0.readBits(r2)     // Catch:{ IllegalArgumentException -> 0x0046 }
            int[] r5 = com.google.zxing.qrcode.decoder.DecodedBitStreamParser.AnonymousClass1.$SwitchMap$com$google$zxing$qrcode$decoder$Mode     // Catch:{ IllegalArgumentException -> 0x0046 }
            int r10 = r7.ordinal()     // Catch:{ IllegalArgumentException -> 0x0046 }
            r5 = r5[r10]     // Catch:{ IllegalArgumentException -> 0x0046 }
            switch(r5) {
                case 1: goto L_0x00bb;
                case 2: goto L_0x00c2;
                case 3: goto L_0x00c9;
                case 4: goto L_0x00d1;
                default: goto L_0x0041;
            }     // Catch:{ IllegalArgumentException -> 0x0046 }
        L_0x0041:
            com.google.zxing.FormatException r0 = com.google.zxing.FormatException.getFormatInstance()     // Catch:{ IllegalArgumentException -> 0x0046 }
            throw r0     // Catch:{ IllegalArgumentException -> 0x0046 }
        L_0x0046:
            r0 = move-exception
            com.google.zxing.FormatException r0 = com.google.zxing.FormatException.getFormatInstance()
            throw r0
        L_0x004c:
            r2 = 4
            int r2 = r0.readBits(r2)     // Catch:{ IllegalArgumentException -> 0x0046 }
            com.google.zxing.qrcode.decoder.Mode r2 = com.google.zxing.qrcode.decoder.Mode.forBits(r2)     // Catch:{ IllegalArgumentException -> 0x0046 }
            r7 = r2
            goto L_0x0023
        L_0x0057:
            r2 = r6
            r5 = r9
            r6 = r8
        L_0x005a:
            com.google.zxing.qrcode.decoder.Mode r8 = com.google.zxing.qrcode.decoder.Mode.TERMINATOR     // Catch:{ IllegalArgumentException -> 0x0046 }
            if (r7 != r8) goto L_0x00e4
            com.google.zxing.common.DecoderResult r0 = new com.google.zxing.common.DecoderResult
            java.lang.String r2 = r1.toString()
            boolean r1 = r4.isEmpty()
            if (r1 == 0) goto L_0x00d8
            r3 = 0
        L_0x006b:
            if (r13 != 0) goto L_0x00da
            r4 = 0
        L_0x006e:
            r1 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return r0
        L_0x0073:
            r6 = 1
            r2 = r6
            r5 = r9
            r6 = r8
            goto L_0x005a
        L_0x0078:
            int r2 = r0.available()     // Catch:{ IllegalArgumentException -> 0x0046 }
            r5 = 16
            if (r2 >= r5) goto L_0x0085
            com.google.zxing.FormatException r0 = com.google.zxing.FormatException.getFormatInstance()     // Catch:{ IllegalArgumentException -> 0x0046 }
            throw r0     // Catch:{ IllegalArgumentException -> 0x0046 }
        L_0x0085:
            r2 = 8
            int r9 = r0.readBits(r2)     // Catch:{ IllegalArgumentException -> 0x0046 }
            r2 = 8
            int r8 = r0.readBits(r2)     // Catch:{ IllegalArgumentException -> 0x0046 }
            r2 = r6
            r5 = r9
            r6 = r8
            goto L_0x005a
        L_0x0095:
            int r2 = parseECIValue(r0)     // Catch:{ IllegalArgumentException -> 0x0046 }
            com.google.zxing.common.CharacterSetECI r3 = com.google.zxing.common.CharacterSetECI.getCharacterSetECIByValue(r2)     // Catch:{ IllegalArgumentException -> 0x0046 }
            if (r3 != 0) goto L_0x00df
            com.google.zxing.FormatException r0 = com.google.zxing.FormatException.getFormatInstance()     // Catch:{ IllegalArgumentException -> 0x0046 }
            throw r0     // Catch:{ IllegalArgumentException -> 0x0046 }
        L_0x00a4:
            r2 = 4
            int r2 = r0.readBits(r2)     // Catch:{ IllegalArgumentException -> 0x0046 }
            int r5 = r7.getCharacterCountBits(r12)     // Catch:{ IllegalArgumentException -> 0x0046 }
            int r5 = r0.readBits(r5)     // Catch:{ IllegalArgumentException -> 0x0046 }
            r10 = 1
            if (r2 != r10) goto L_0x00df
            decodeHanziSegment(r0, r1, r5)     // Catch:{ IllegalArgumentException -> 0x0046 }
            r2 = r6
            r5 = r9
            r6 = r8
            goto L_0x005a
        L_0x00bb:
            decodeNumericSegment(r0, r1, r2)     // Catch:{ IllegalArgumentException -> 0x0046 }
            r2 = r6
            r5 = r9
            r6 = r8
            goto L_0x005a
        L_0x00c2:
            decodeAlphanumericSegment(r0, r1, r2, r6)     // Catch:{ IllegalArgumentException -> 0x0046 }
            r2 = r6
            r5 = r9
            r6 = r8
            goto L_0x005a
        L_0x00c9:
            r5 = r14
            decodeByteSegment(r0, r1, r2, r3, r4, r5)     // Catch:{ IllegalArgumentException -> 0x0046 }
            r2 = r6
            r5 = r9
            r6 = r8
            goto L_0x005a
        L_0x00d1:
            decodeKanjiSegment(r0, r1, r2)     // Catch:{ IllegalArgumentException -> 0x0046 }
            r2 = r6
            r5 = r9
            r6 = r8
            goto L_0x005a
        L_0x00d8:
            r3 = r4
            goto L_0x006b
        L_0x00da:
            java.lang.String r4 = r13.toString()
            goto L_0x006e
        L_0x00df:
            r2 = r6
            r5 = r9
            r6 = r8
            goto L_0x005a
        L_0x00e4:
            r8 = r6
            r9 = r5
            r6 = r2
            goto L_0x0019
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.decoder.DecodedBitStreamParser.decode(byte[], com.google.zxing.qrcode.decoder.Version, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel, java.util.Map):com.google.zxing.common.DecoderResult");
    }

    private static void decodeHanziSegment(BitSource bitSource, StringBuilder sb, int i) throws FormatException {
        int i2;
        if (i * 13 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[(i * 2)];
        int i3 = 0;
        while (i > 0) {
            int readBits = bitSource.readBits(13);
            int i4 = (readBits % 96) | ((readBits / 96) << 8);
            if (i4 < 959) {
                i2 = 41377;
            } else {
                i2 = 42657;
            }
            int i5 = i4 + i2;
            bArr[i3] = (byte) (i5 >> 8);
            bArr[i3 + 1] = (byte) i5;
            i--;
            i3 += 2;
        }
        try {
            sb.append(new String(bArr, StringUtils.GB2312));
        } catch (UnsupportedEncodingException e) {
            throw FormatException.getFormatInstance();
        }
    }

    private static void decodeKanjiSegment(BitSource bitSource, StringBuilder sb, int i) throws FormatException {
        int i2;
        if (i * 13 > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[(i * 2)];
        int i3 = 0;
        while (i > 0) {
            int readBits = bitSource.readBits(13);
            int i4 = (readBits % 192) | ((readBits / 192) << 8);
            if (i4 < 7936) {
                i2 = 33088;
            } else {
                i2 = 49472;
            }
            int i5 = i4 + i2;
            bArr[i3] = (byte) (i5 >> 8);
            bArr[i3 + 1] = (byte) i5;
            i--;
            i3 += 2;
        }
        try {
            sb.append(new String(bArr, StringUtils.SHIFT_JIS));
        } catch (UnsupportedEncodingException e) {
            throw FormatException.getFormatInstance();
        }
    }

    private static void decodeByteSegment(BitSource bitSource, StringBuilder sb, int i, CharacterSetECI characterSetECI, Collection<byte[]> collection, Map<DecodeHintType, ?> map) throws FormatException {
        String name;
        if ((i << 3) > bitSource.available()) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) bitSource.readBits(8);
        }
        if (characterSetECI == null) {
            name = StringUtils.guessEncoding(bArr, map);
        } else {
            name = characterSetECI.name();
        }
        try {
            sb.append(new String(bArr, name));
            collection.add(bArr);
        } catch (UnsupportedEncodingException e) {
            throw FormatException.getFormatInstance();
        }
    }

    private static char toAlphaNumericChar(int i) throws FormatException {
        if (i < ALPHANUMERIC_CHARS.length) {
            return ALPHANUMERIC_CHARS[i];
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeAlphanumericSegment(BitSource bitSource, StringBuilder sb, int i, boolean z) throws FormatException {
        while (i > 1) {
            if (bitSource.available() < 11) {
                throw FormatException.getFormatInstance();
            }
            int readBits = bitSource.readBits(11);
            sb.append(toAlphaNumericChar(readBits / 45));
            sb.append(toAlphaNumericChar(readBits % 45));
            i -= 2;
        }
        if (i == 1) {
            if (bitSource.available() < 6) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(bitSource.readBits(6)));
        }
        if (z) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length >= sb.length() - 1 || sb.charAt(length + 1) != '%') {
                        sb.setCharAt(length, 29);
                    } else {
                        sb.deleteCharAt(length + 1);
                    }
                }
            }
        }
    }

    private static void decodeNumericSegment(BitSource bitSource, StringBuilder sb, int i) throws FormatException {
        while (i >= 3) {
            if (bitSource.available() < 10) {
                throw FormatException.getFormatInstance();
            }
            int readBits = bitSource.readBits(10);
            if (readBits >= 1000) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(readBits / 100));
            sb.append(toAlphaNumericChar((readBits / 10) % 10));
            sb.append(toAlphaNumericChar(readBits % 10));
            i -= 3;
        }
        if (i == 2) {
            if (bitSource.available() < 7) {
                throw FormatException.getFormatInstance();
            }
            int readBits2 = bitSource.readBits(7);
            if (readBits2 >= 100) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(readBits2 / 10));
            sb.append(toAlphaNumericChar(readBits2 % 10));
        } else if (i != 1) {
        } else {
            if (bitSource.available() < 4) {
                throw FormatException.getFormatInstance();
            }
            int readBits3 = bitSource.readBits(4);
            if (readBits3 >= 10) {
                throw FormatException.getFormatInstance();
            }
            sb.append(toAlphaNumericChar(readBits3));
        }
    }

    private static int parseECIValue(BitSource bitSource) throws FormatException {
        int readBits = bitSource.readBits(8);
        if ((readBits & 128) == 0) {
            return readBits & 127;
        }
        if ((readBits & 192) == 128) {
            return ((readBits & 63) << 8) | bitSource.readBits(8);
        } else if ((readBits & 224) == 192) {
            return ((readBits & 31) << 16) | bitSource.readBits(16);
        } else {
            throw FormatException.getFormatInstance();
        }
    }
}
