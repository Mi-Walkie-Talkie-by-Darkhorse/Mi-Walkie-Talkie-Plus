package com.google.zxing.datamatrix.encoder;

final class EdifactEncoder implements Encoder {
    EdifactEncoder() {
    }

    public int getEncodingMode() {
        return 4;
    }

    public void encode(EncoderContext encoderContext) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!encoderContext.hasMoreCharacters()) {
                break;
            }
            encodeChar(encoderContext.getCurrentChar(), sb);
            encoderContext.pos++;
            if (sb.length() >= 4) {
                encoderContext.writeCodewords(encodeToCodewords(sb, 0));
                sb.delete(0, 4);
                if (HighLevelEncoder.lookAheadTest(encoderContext.getMessage(), encoderContext.pos, getEncodingMode()) != getEncodingMode()) {
                    encoderContext.signalEncoderChange(0);
                    break;
                }
            }
        }
        sb.append(31);
        handleEOD(encoderContext, sb);
    }

    private static void handleEOD(EncoderContext encoderContext, CharSequence charSequence) {
        boolean z = true;
        try {
            int length = charSequence.length();
            if (length != 0) {
                if (length == 1) {
                    encoderContext.updateSymbolInfo();
                    int dataCapacity = encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount();
                    if (encoderContext.getRemainingCharacters() == 0 && dataCapacity <= 2) {
                        encoderContext.signalEncoderChange(0);
                        return;
                    }
                }
                if (length > 4) {
                    throw new IllegalStateException("Count must not exceed 4");
                }
                int i = length - 1;
                String encodeToCodewords = encodeToCodewords(charSequence, 0);
                if (!(!encoderContext.hasMoreCharacters()) || i > 2) {
                    z = false;
                }
                if (i <= 2) {
                    encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + i);
                    if (encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount() >= 3) {
                        encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + encodeToCodewords.length());
                        z = false;
                    }
                }
                if (z) {
                    encoderContext.resetSymbolInfo();
                    encoderContext.pos -= i;
                } else {
                    encoderContext.writeCodewords(encodeToCodewords);
                }
                encoderContext.signalEncoderChange(0);
            }
        } finally {
            encoderContext.signalEncoderChange(0);
        }
    }

    private static void encodeChar(char c, StringBuilder sb) {
        if (c >= ' ' && c <= '?') {
            sb.append(c);
        } else if (c < '@' || c > '^') {
            HighLevelEncoder.illegalCharacter(c);
        } else {
            sb.append((char) (c - '@'));
        }
    }

    private static String encodeToCodewords(CharSequence charSequence, int i) {
        int i2;
        char c = 0;
        int length = charSequence.length() - i;
        if (length == 0) {
            throw new IllegalStateException("StringBuilder must not be empty");
        }
        char charAt = charSequence.charAt(i);
        int i3 = length >= 2 ? charSequence.charAt(i + 1) : 0;
        if (length >= 3) {
            i2 = charSequence.charAt(i + 2);
        } else {
            i2 = 0;
        }
        if (length >= 4) {
            c = charSequence.charAt(i + 3);
        }
        int i4 = c + (i2 << 6) + (i3 << 12) + (charAt << 18);
        char c2 = (char) ((i4 >> 16) & 255);
        char c3 = (char) ((i4 >> 8) & 255);
        char c4 = (char) (i4 & 255);
        StringBuilder sb = new StringBuilder(3);
        sb.append(c2);
        if (length >= 2) {
            sb.append(c3);
        }
        if (length >= 3) {
            sb.append(c4);
        }
        return sb.toString();
    }
}
