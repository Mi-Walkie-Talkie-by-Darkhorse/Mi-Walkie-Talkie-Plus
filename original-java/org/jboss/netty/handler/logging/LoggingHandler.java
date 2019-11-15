package org.jboss.netty.handler.logging;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelUpstreamHandler;
import org.jboss.netty.logging.InternalLogLevel;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

@Sharable
public class LoggingHandler implements ChannelDownstreamHandler, ChannelUpstreamHandler {
    private static final char[] BYTE2CHAR = new char[256];
    private static final String[] BYTE2HEX = new String[256];
    private static final String[] BYTEPADDING = new String[16];
    private static final InternalLogLevel DEFAULT_LEVEL = InternalLogLevel.DEBUG;
    private static final String[] HEXPADDING = new String[16];
    private static final String NEWLINE = String.format("%n", new Object[0]);
    private final boolean hexDump;
    private final InternalLogLevel level;
    private final InternalLogger logger;

    static {
        int i = 0;
        while (i < 10) {
            StringBuilder sb = new StringBuilder(3);
            sb.append(" 0");
            sb.append(i);
            BYTE2HEX[i] = sb.toString();
            i++;
        }
        while (i < 16) {
            StringBuilder sb2 = new StringBuilder(3);
            sb2.append(" 0");
            sb2.append((char) ((i + 97) - 10));
            BYTE2HEX[i] = sb2.toString();
            i++;
        }
        while (i < BYTE2HEX.length) {
            StringBuilder sb3 = new StringBuilder(3);
            sb3.append(' ');
            sb3.append(Integer.toHexString(i));
            BYTE2HEX[i] = sb3.toString();
            i++;
        }
        for (int i2 = 0; i2 < HEXPADDING.length; i2++) {
            int length = HEXPADDING.length - i2;
            StringBuilder sb4 = new StringBuilder(length * 3);
            for (int i3 = 0; i3 < length; i3++) {
                sb4.append("   ");
            }
            HEXPADDING[i2] = sb4.toString();
        }
        for (int i4 = 0; i4 < BYTEPADDING.length; i4++) {
            int length2 = BYTEPADDING.length - i4;
            StringBuilder sb5 = new StringBuilder(length2);
            for (int i5 = 0; i5 < length2; i5++) {
                sb5.append(' ');
            }
            BYTEPADDING[i4] = sb5.toString();
        }
        for (int i6 = 0; i6 < BYTE2CHAR.length; i6++) {
            if (i6 <= 31 || i6 >= 127) {
                BYTE2CHAR[i6] = '.';
            } else {
                BYTE2CHAR[i6] = (char) i6;
            }
        }
    }

    public LoggingHandler() {
        this(true);
    }

    public LoggingHandler(InternalLogLevel internalLogLevel) {
        this(internalLogLevel, true);
    }

    public LoggingHandler(boolean z) {
        this(DEFAULT_LEVEL, z);
    }

    public LoggingHandler(InternalLogLevel internalLogLevel, boolean z) {
        if (internalLogLevel == null) {
            throw new NullPointerException("level");
        }
        this.logger = InternalLoggerFactory.getInstance(getClass());
        this.level = internalLogLevel;
        this.hexDump = z;
    }

    public LoggingHandler(Class<?> cls) {
        this(cls, true);
    }

    public LoggingHandler(Class<?> cls, boolean z) {
        this(cls, DEFAULT_LEVEL, z);
    }

    public LoggingHandler(Class<?> cls, InternalLogLevel internalLogLevel) {
        this(cls, internalLogLevel, true);
    }

    public LoggingHandler(Class<?> cls, InternalLogLevel internalLogLevel, boolean z) {
        if (cls == null) {
            throw new NullPointerException("clazz");
        } else if (internalLogLevel == null) {
            throw new NullPointerException("level");
        } else {
            this.logger = InternalLoggerFactory.getInstance(cls);
            this.level = internalLogLevel;
            this.hexDump = z;
        }
    }

    public LoggingHandler(String str) {
        this(str, true);
    }

    public LoggingHandler(String str, boolean z) {
        this(str, DEFAULT_LEVEL, z);
    }

    public LoggingHandler(String str, InternalLogLevel internalLogLevel, boolean z) {
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        } else if (internalLogLevel == null) {
            throw new NullPointerException("level");
        } else {
            this.logger = InternalLoggerFactory.getInstance(str);
            this.level = internalLogLevel;
            this.hexDump = z;
        }
    }

    public InternalLogger getLogger() {
        return this.logger;
    }

    public InternalLogLevel getLevel() {
        return this.level;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0042  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0052  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void log(org.jboss.netty.channel.ChannelEvent r5) {
        /*
            r4 = this;
            org.jboss.netty.logging.InternalLogger r0 = r4.getLogger()
            org.jboss.netty.logging.InternalLogLevel r1 = r4.level
            boolean r0 = r0.isEnabled(r1)
            if (r0 == 0) goto L_0x0051
            java.lang.String r1 = r5.toString()
            boolean r0 = r4.hexDump
            if (r0 == 0) goto L_0x005c
            boolean r0 = r5 instanceof org.jboss.netty.channel.MessageEvent
            if (r0 == 0) goto L_0x005c
            r0 = r5
            org.jboss.netty.channel.MessageEvent r0 = (org.jboss.netty.channel.MessageEvent) r0
            java.lang.Object r2 = r0.getMessage()
            boolean r2 = r2 instanceof org.jboss.netty.buffer.ChannelBuffer
            if (r2 == 0) goto L_0x005c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.StringBuilder r1 = r2.append(r1)
            java.lang.Object r0 = r0.getMessage()
            org.jboss.netty.buffer.ChannelBuffer r0 = (org.jboss.netty.buffer.ChannelBuffer) r0
            java.lang.String r0 = formatBuffer(r0)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
        L_0x003e:
            boolean r1 = r5 instanceof org.jboss.netty.channel.ExceptionEvent
            if (r1 == 0) goto L_0x0052
            org.jboss.netty.logging.InternalLogger r1 = r4.getLogger()
            org.jboss.netty.logging.InternalLogLevel r2 = r4.level
            org.jboss.netty.channel.ExceptionEvent r5 = (org.jboss.netty.channel.ExceptionEvent) r5
            java.lang.Throwable r3 = r5.getCause()
            r1.log(r2, r0, r3)
        L_0x0051:
            return
        L_0x0052:
            org.jboss.netty.logging.InternalLogger r1 = r4.getLogger()
            org.jboss.netty.logging.InternalLogLevel r2 = r4.level
            r1.log(r2, r0)
            goto L_0x0051
        L_0x005c:
            r0 = r1
            goto L_0x003e
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.logging.LoggingHandler.log(org.jboss.netty.channel.ChannelEvent):void");
    }

    private static String formatBuffer(ChannelBuffer channelBuffer) {
        int readableBytes = channelBuffer.readableBytes();
        StringBuilder sb = new StringBuilder(((readableBytes % 15 == 0 ? 0 : 1) + (readableBytes / 16) + 4) * 80);
        sb.append(NEWLINE + "         +-------------------------------------------------+" + NEWLINE + "         |  0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f |" + NEWLINE + "+--------+-------------------------------------------------+----------------+");
        int readerIndex = channelBuffer.readerIndex();
        int writerIndex = channelBuffer.writerIndex();
        int i = readerIndex;
        while (i < writerIndex) {
            int i2 = i - readerIndex;
            int i3 = i2 & 15;
            if (i3 == 0) {
                sb.append(NEWLINE);
                sb.append(Long.toHexString((((long) i2) & 4294967295L) | 4294967296L));
                sb.setCharAt(sb.length() - 9, '|');
                sb.append('|');
            }
            sb.append(BYTE2HEX[channelBuffer.getUnsignedByte(i)]);
            if (i3 == 15) {
                sb.append(" |");
                for (int i4 = i - 15; i4 <= i; i4++) {
                    sb.append(BYTE2CHAR[channelBuffer.getUnsignedByte(i4)]);
                }
                sb.append('|');
            }
            i++;
        }
        if (((i - readerIndex) & 15) != 0) {
            int i5 = readableBytes & 15;
            sb.append(HEXPADDING[i5]);
            sb.append(" |");
            for (int i6 = i - i5; i6 < i; i6++) {
                sb.append(BYTE2CHAR[channelBuffer.getUnsignedByte(i6)]);
            }
            sb.append(BYTEPADDING[i5]);
            sb.append('|');
        }
        sb.append(NEWLINE + "+--------+-------------------------------------------------+----------------+");
        return sb.toString();
    }

    public void handleUpstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        log(channelEvent);
        channelHandlerContext.sendUpstream(channelEvent);
    }

    public void handleDownstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        log(channelEvent);
        channelHandlerContext.sendDownstream(channelEvent);
    }
}
