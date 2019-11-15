package com.google.zxing.datamatrix.encoder;

final class X12Encoder extends C40Encoder {
    X12Encoder() {
    }

    public int getEncodingMode() {
        return 3;
    }

    public void encode(EncoderContext encoderContext) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!encoderContext.hasMoreCharacters()) {
                break;
            }
            char currentChar = encoderContext.getCurrentChar();
            encoderContext.pos++;
            encodeChar(currentChar, sb);
            if (sb.length() % 3 == 0) {
                writeNextTriplet(encoderContext, sb);
                if (HighLevelEncoder.lookAheadTest(encoderContext.getMessage(), encoderContext.pos, getEncodingMode()) != getEncodingMode()) {
                    encoderContext.signalEncoderChange(0);
                    break;
                }
            }
        }
        handleEOD(encoderContext, sb);
    }

    /* access modifiers changed from: 0000 */
    public int encodeChar(char c, StringBuilder sb) {
        switch (c) {
            case 13:
                sb.append(0);
                break;
            case ' ':
                sb.append(3);
                break;
            case '*':
                sb.append(1);
                break;
            case '>':
                sb.append(2);
                break;
            default:
                if (c < '0' || c > '9') {
                    if (c >= 'A' && c <= 'Z') {
                        sb.append((char) ((c - 'A') + 14));
                        break;
                    } else {
                        HighLevelEncoder.illegalCharacter(c);
                        break;
                    }
                } else {
                    sb.append((char) ((c - '0') + 4));
                    break;
                }
                break;
        }
        return 1;
    }

    /* access modifiers changed from: 0000 */
    public void handleEOD(EncoderContext encoderContext, StringBuilder sb) {
        encoderContext.updateSymbolInfo();
        int dataCapacity = encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount();
        encoderContext.pos -= sb.length();
        if (encoderContext.getRemainingCharacters() > 1 || dataCapacity > 1 || encoderContext.getRemainingCharacters() != dataCapacity) {
            encoderContext.writeCodeword(254);
        }
        if (encoderContext.getNewEncoding() < 0) {
            encoderContext.signalEncoderChange(0);
        }
    }
}
