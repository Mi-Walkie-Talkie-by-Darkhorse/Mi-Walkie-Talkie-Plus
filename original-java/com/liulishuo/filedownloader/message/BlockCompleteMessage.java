package com.liulishuo.filedownloader.message;

import com.liulishuo.filedownloader.e.g;

public interface BlockCompleteMessage {

    public static class BlockCompleteMessageImpl extends MessageSnapshot implements BlockCompleteMessage {
        private final MessageSnapshot b;

        public BlockCompleteMessageImpl(MessageSnapshot messageSnapshot) {
            super(messageSnapshot.m());
            if (messageSnapshot.b() != -3) {
                throw new IllegalArgumentException(g.a("can't create the block complete message for id[%d], status[%d]", Integer.valueOf(messageSnapshot.m()), Byte.valueOf(messageSnapshot.b())));
            } else {
                this.b = messageSnapshot;
            }
        }

        public MessageSnapshot d_() {
            return this.b;
        }

        public byte b() {
            return 4;
        }
    }

    MessageSnapshot d_();
}
