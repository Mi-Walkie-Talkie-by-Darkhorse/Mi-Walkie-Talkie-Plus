package org.jboss.netty.handler.codec.socks;

import org.jboss.netty.buffer.ChannelBuffer;

public abstract class SocksMessage {
    private final MessageType messageType;
    private final ProtocolVersion protocolVersion = ProtocolVersion.SOCKS5;

    public enum AddressType {
        IPv4(1),
        DOMAIN(3),
        IPv6(4),
        UNKNOWN(-1);
        
        private final byte b;

        private AddressType(byte b2) {
            this.b = b2;
        }

        public static AddressType fromByte(byte b2) {
            AddressType[] values;
            for (AddressType addressType : values()) {
                if (addressType.b == b2) {
                    return addressType;
                }
            }
            return UNKNOWN;
        }

        public byte getByteValue() {
            return this.b;
        }
    }

    public enum AuthScheme {
        NO_AUTH(0),
        AUTH_GSSAPI(1),
        AUTH_PASSWORD(2),
        UNKNOWN(-1);
        
        private final byte b;

        private AuthScheme(byte b2) {
            this.b = b2;
        }

        public static AuthScheme fromByte(byte b2) {
            AuthScheme[] values;
            for (AuthScheme authScheme : values()) {
                if (authScheme.b == b2) {
                    return authScheme;
                }
            }
            return UNKNOWN;
        }

        public byte getByteValue() {
            return this.b;
        }
    }

    public enum AuthStatus {
        SUCCESS(0),
        FAILURE(-1);
        
        private final byte b;

        private AuthStatus(byte b2) {
            this.b = b2;
        }

        public static AuthStatus fromByte(byte b2) {
            AuthStatus[] values;
            for (AuthStatus authStatus : values()) {
                if (authStatus.b == b2) {
                    return authStatus;
                }
            }
            return FAILURE;
        }

        public byte getByteValue() {
            return this.b;
        }
    }

    public enum CmdStatus {
        SUCCESS(0),
        FAILURE(1),
        FORBIDDEN(2),
        NETWORK_UNREACHABLE(3),
        HOST_UNREACHABLE(4),
        REFUSED(5),
        TTL_EXPIRED(6),
        COMMAND_NOT_SUPPORTED(7),
        ADDRESS_NOT_SUPPORTED(8),
        UNASSIGNED(-1);
        
        private final byte b;

        private CmdStatus(byte b2) {
            this.b = b2;
        }

        public static CmdStatus fromByte(byte b2) {
            CmdStatus[] values;
            for (CmdStatus cmdStatus : values()) {
                if (cmdStatus.b == b2) {
                    return cmdStatus;
                }
            }
            return UNASSIGNED;
        }

        public byte getByteValue() {
            return this.b;
        }
    }

    public enum CmdType {
        CONNECT(1),
        BIND(2),
        UDP(3),
        UNKNOWN(-1);
        
        private final byte b;

        private CmdType(byte b2) {
            this.b = b2;
        }

        public static CmdType fromByte(byte b2) {
            CmdType[] values;
            for (CmdType cmdType : values()) {
                if (cmdType.b == b2) {
                    return cmdType;
                }
            }
            return UNKNOWN;
        }

        public byte getByteValue() {
            return this.b;
        }
    }

    public enum MessageType {
        REQUEST,
        RESPONSE,
        UNKNOWN
    }

    public enum ProtocolVersion {
        SOCKS4a(4),
        SOCKS5(5),
        UNKNOWN(-1);
        
        private final byte b;

        private ProtocolVersion(byte b2) {
            this.b = b2;
        }

        public static ProtocolVersion fromByte(byte b2) {
            ProtocolVersion[] values;
            for (ProtocolVersion protocolVersion : values()) {
                if (protocolVersion.b == b2) {
                    return protocolVersion;
                }
            }
            return UNKNOWN;
        }

        public byte getByteValue() {
            return this.b;
        }
    }

    public enum SubnegotiationVersion {
        AUTH_PASSWORD(1),
        UNKNOWN(-1);
        
        private final byte b;

        private SubnegotiationVersion(byte b2) {
            this.b = b2;
        }

        public static SubnegotiationVersion fromByte(byte b2) {
            SubnegotiationVersion[] values;
            for (SubnegotiationVersion subnegotiationVersion : values()) {
                if (subnegotiationVersion.b == b2) {
                    return subnegotiationVersion;
                }
            }
            return UNKNOWN;
        }

        public byte getByteValue() {
            return this.b;
        }
    }

    public abstract void encodeAsByteBuf(ChannelBuffer channelBuffer) throws Exception;

    protected SocksMessage(MessageType messageType2) {
        if (messageType2 == null) {
            throw new NullPointerException("messageType");
        }
        this.messageType = messageType2;
    }

    public MessageType getMessageType() {
        return this.messageType;
    }

    public ProtocolVersion getProtocolVersion() {
        return this.protocolVersion;
    }
}
