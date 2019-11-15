package com.ifengyu.im.protobuf;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.ByteString.Output;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal.EnumLite;
import com.google.protobuf.Internal.EnumLiteMap;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class IMBaseDefine {

    public static final class AccessSerUserLoadRatio extends GeneratedMessageLite implements AccessSerUserLoadRatioOrBuilder {
        public static final int IP_ADDR1_FIELD_NUMBER = 2;
        public static final int IP_ADDR2_FIELD_NUMBER = 3;
        public static Parser<AccessSerUserLoadRatio> PARSER = new AbstractParser<AccessSerUserLoadRatio>() {
            public AccessSerUserLoadRatio parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new AccessSerUserLoadRatio(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PORT_FIELD_NUMBER = 4;
        public static final int SID_FIELD_NUMBER = 1;
        public static final int USER_LOAD_RATIO_FIELD_NUMBER = 5;
        private static final AccessSerUserLoadRatio defaultInstance = new AccessSerUserLoadRatio(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object ipAddr1_;
        /* access modifiers changed from: private */
        public Object ipAddr2_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int port_;
        /* access modifiers changed from: private */
        public int sid_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userLoadRatio_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<AccessSerUserLoadRatio, Builder> implements AccessSerUserLoadRatioOrBuilder {
            private int bitField0_;
            private Object ipAddr1_ = "";
            private Object ipAddr2_ = "";
            private int port_;
            private int sid_;
            private int userLoadRatio_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.sid_ = 0;
                this.bitField0_ &= -2;
                this.ipAddr1_ = "";
                this.bitField0_ &= -3;
                this.ipAddr2_ = "";
                this.bitField0_ &= -5;
                this.port_ = 0;
                this.bitField0_ &= -9;
                this.userLoadRatio_ = 0;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public AccessSerUserLoadRatio getDefaultInstanceForType() {
                return AccessSerUserLoadRatio.getDefaultInstance();
            }

            public AccessSerUserLoadRatio build() {
                AccessSerUserLoadRatio buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public AccessSerUserLoadRatio buildPartial() {
                int i = 1;
                AccessSerUserLoadRatio accessSerUserLoadRatio = new AccessSerUserLoadRatio((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                accessSerUserLoadRatio.sid_ = this.sid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                accessSerUserLoadRatio.ipAddr1_ = this.ipAddr1_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                accessSerUserLoadRatio.ipAddr2_ = this.ipAddr2_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                accessSerUserLoadRatio.port_ = this.port_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                accessSerUserLoadRatio.userLoadRatio_ = this.userLoadRatio_;
                accessSerUserLoadRatio.bitField0_ = i;
                return accessSerUserLoadRatio;
            }

            public Builder mergeFrom(AccessSerUserLoadRatio accessSerUserLoadRatio) {
                if (accessSerUserLoadRatio != AccessSerUserLoadRatio.getDefaultInstance()) {
                    if (accessSerUserLoadRatio.hasSid()) {
                        setSid(accessSerUserLoadRatio.getSid());
                    }
                    if (accessSerUserLoadRatio.hasIpAddr1()) {
                        this.bitField0_ |= 2;
                        this.ipAddr1_ = accessSerUserLoadRatio.ipAddr1_;
                    }
                    if (accessSerUserLoadRatio.hasIpAddr2()) {
                        this.bitField0_ |= 4;
                        this.ipAddr2_ = accessSerUserLoadRatio.ipAddr2_;
                    }
                    if (accessSerUserLoadRatio.hasPort()) {
                        setPort(accessSerUserLoadRatio.getPort());
                    }
                    if (accessSerUserLoadRatio.hasUserLoadRatio()) {
                        setUserLoadRatio(accessSerUserLoadRatio.getUserLoadRatio());
                    }
                    setUnknownFields(getUnknownFields().concat(accessSerUserLoadRatio.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasSid() && hasIpAddr1() && hasIpAddr2() && hasPort() && hasUserLoadRatio()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                AccessSerUserLoadRatio accessSerUserLoadRatio;
                AccessSerUserLoadRatio accessSerUserLoadRatio2;
                try {
                    AccessSerUserLoadRatio accessSerUserLoadRatio3 = (AccessSerUserLoadRatio) AccessSerUserLoadRatio.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (accessSerUserLoadRatio3 != null) {
                        mergeFrom(accessSerUserLoadRatio3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    accessSerUserLoadRatio2 = (AccessSerUserLoadRatio) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    accessSerUserLoadRatio = accessSerUserLoadRatio2;
                    th = th2;
                }
                if (accessSerUserLoadRatio != null) {
                    mergeFrom(accessSerUserLoadRatio);
                }
                throw th;
            }

            public boolean hasSid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getSid() {
                return this.sid_;
            }

            public Builder setSid(int i) {
                this.bitField0_ |= 1;
                this.sid_ = i;
                return this;
            }

            public Builder clearSid() {
                this.bitField0_ &= -2;
                this.sid_ = 0;
                return this;
            }

            public boolean hasIpAddr1() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getIpAddr1() {
                Object obj = this.ipAddr1_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.ipAddr1_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getIpAddr1Bytes() {
                Object obj = this.ipAddr1_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipAddr1_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setIpAddr1(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.ipAddr1_ = str;
                return this;
            }

            public Builder clearIpAddr1() {
                this.bitField0_ &= -3;
                this.ipAddr1_ = AccessSerUserLoadRatio.getDefaultInstance().getIpAddr1();
                return this;
            }

            public Builder setIpAddr1Bytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.ipAddr1_ = byteString;
                return this;
            }

            public boolean hasIpAddr2() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getIpAddr2() {
                Object obj = this.ipAddr2_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.ipAddr2_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getIpAddr2Bytes() {
                Object obj = this.ipAddr2_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipAddr2_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setIpAddr2(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.ipAddr2_ = str;
                return this;
            }

            public Builder clearIpAddr2() {
                this.bitField0_ &= -5;
                this.ipAddr2_ = AccessSerUserLoadRatio.getDefaultInstance().getIpAddr2();
                return this;
            }

            public Builder setIpAddr2Bytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.ipAddr2_ = byteString;
                return this;
            }

            public boolean hasPort() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getPort() {
                return this.port_;
            }

            public Builder setPort(int i) {
                this.bitField0_ |= 8;
                this.port_ = i;
                return this;
            }

            public Builder clearPort() {
                this.bitField0_ &= -9;
                this.port_ = 0;
                return this;
            }

            public boolean hasUserLoadRatio() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getUserLoadRatio() {
                return this.userLoadRatio_;
            }

            public Builder setUserLoadRatio(int i) {
                this.bitField0_ |= 16;
                this.userLoadRatio_ = i;
                return this;
            }

            public Builder clearUserLoadRatio() {
                this.bitField0_ &= -17;
                this.userLoadRatio_ = 0;
                return this;
            }
        }

        private AccessSerUserLoadRatio(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private AccessSerUserLoadRatio(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static AccessSerUserLoadRatio getDefaultInstance() {
            return defaultInstance;
        }

        public AccessSerUserLoadRatio getDefaultInstanceForType() {
            return defaultInstance;
        }

        private AccessSerUserLoadRatio(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.sid_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.ipAddr1_ = readBytes;
                            break;
                        case 26:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.ipAddr2_ = readBytes2;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.port_ = codedInputStream.readUInt32();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.userLoadRatio_ = codedInputStream.readUInt32();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<AccessSerUserLoadRatio> getParserForType() {
            return PARSER;
        }

        public boolean hasSid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getSid() {
            return this.sid_;
        }

        public boolean hasIpAddr1() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getIpAddr1() {
            Object obj = this.ipAddr1_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ipAddr1_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getIpAddr1Bytes() {
            Object obj = this.ipAddr1_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ipAddr1_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasIpAddr2() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getIpAddr2() {
            Object obj = this.ipAddr2_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ipAddr2_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getIpAddr2Bytes() {
            Object obj = this.ipAddr2_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ipAddr2_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasPort() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getPort() {
            return this.port_;
        }

        public boolean hasUserLoadRatio() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getUserLoadRatio() {
            return this.userLoadRatio_;
        }

        private void initFields() {
            this.sid_ = 0;
            this.ipAddr1_ = "";
            this.ipAddr2_ = "";
            this.port_ = 0;
            this.userLoadRatio_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasSid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasIpAddr1()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasIpAddr2()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasPort()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasUserLoadRatio()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.sid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getIpAddr1Bytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getIpAddr2Bytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.port_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt32(5, this.userLoadRatio_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.sid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getIpAddr1Bytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getIpAddr2Bytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.port_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt32Size(5, this.userLoadRatio_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static AccessSerUserLoadRatio parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (AccessSerUserLoadRatio) PARSER.parseFrom(byteString);
        }

        public static AccessSerUserLoadRatio parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AccessSerUserLoadRatio) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static AccessSerUserLoadRatio parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (AccessSerUserLoadRatio) PARSER.parseFrom(bArr);
        }

        public static AccessSerUserLoadRatio parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AccessSerUserLoadRatio) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static AccessSerUserLoadRatio parseFrom(InputStream inputStream) throws IOException {
            return (AccessSerUserLoadRatio) PARSER.parseFrom(inputStream);
        }

        public static AccessSerUserLoadRatio parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AccessSerUserLoadRatio) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static AccessSerUserLoadRatio parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AccessSerUserLoadRatio) PARSER.parseDelimitedFrom(inputStream);
        }

        public static AccessSerUserLoadRatio parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AccessSerUserLoadRatio) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static AccessSerUserLoadRatio parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AccessSerUserLoadRatio) PARSER.parseFrom(codedInputStream);
        }

        public static AccessSerUserLoadRatio parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AccessSerUserLoadRatio) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(AccessSerUserLoadRatio accessSerUserLoadRatio) {
            return newBuilder().mergeFrom(accessSerUserLoadRatio);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface AccessSerUserLoadRatioOrBuilder extends MessageLiteOrBuilder {
        String getIpAddr1();

        ByteString getIpAddr1Bytes();

        String getIpAddr2();

        ByteString getIpAddr2Bytes();

        int getPort();

        int getSid();

        int getUserLoadRatio();

        boolean hasIpAddr1();

        boolean hasIpAddr2();

        boolean hasPort();

        boolean hasSid();

        boolean hasUserLoadRatio();
    }

    public enum BuddyListCmdID implements EnumLite {
        CID_BUDDY_LIST_RECENT_CONTACT_SESSION_REQUEST(0, 513),
        CID_BUDDY_LIST_RECENT_CONTACT_SESSION_RESPONSE(1, 514),
        CID_BUDDY_LIST_STATUS_NOTIFY(2, 515),
        CID_BUDDY_LIST_USER_INFO_REQUEST(3, 516),
        CID_BUDDY_LIST_USER_INFO_RESPONSE(4, 517),
        CID_BUDDY_GET_NEARBY_USER_LIST_REQUEST(5, 544),
        CID_BUDDY_GET_NEARBY_USER_LIST_RESPONSE(6, 545),
        CID_BUDDY_LIST_REMOVE_SESSION_REQ(7, 518),
        CID_BUDDY_LIST_REMOVE_SESSION_RES(8, 519),
        CID_BUDDY_LIST_ALL_USER_REQUEST(9, 520),
        CID_BUDDY_LIST_ALL_USER_RESPONSE(10, 521),
        CID_BUDDY_LIST_USERS_STATUS_REQUEST(11, 522),
        CID_BUDDY_LIST_USERS_STATUS_RESPONSE(12, 523),
        CID_BUDDY_LIST_CHANGE_AVATAR_REQUEST(13, 524),
        CID_BUDDY_LIST_CHANGE_AVATAR_RESPONSE(14, 525),
        CID_BUDDY_LIST_PC_LOGIN_STATUS_NOTIFY(15, 526),
        CID_BUDDY_LIST_REMOVE_SESSION_NOTIFY(16, 527),
        CID_BUDDY_LIST_DEPARTMENT_REQUEST(17, 528),
        CID_BUDDY_LIST_DEPARTMENT_RESPONSE(18, 529);
        
        public static final int CID_BUDDY_GET_NEARBY_USER_LIST_REQUEST_VALUE = 544;
        public static final int CID_BUDDY_GET_NEARBY_USER_LIST_RESPONSE_VALUE = 545;
        public static final int CID_BUDDY_LIST_ALL_USER_REQUEST_VALUE = 520;
        public static final int CID_BUDDY_LIST_ALL_USER_RESPONSE_VALUE = 521;
        public static final int CID_BUDDY_LIST_CHANGE_AVATAR_REQUEST_VALUE = 524;
        public static final int CID_BUDDY_LIST_CHANGE_AVATAR_RESPONSE_VALUE = 525;
        public static final int CID_BUDDY_LIST_DEPARTMENT_REQUEST_VALUE = 528;
        public static final int CID_BUDDY_LIST_DEPARTMENT_RESPONSE_VALUE = 529;
        public static final int CID_BUDDY_LIST_PC_LOGIN_STATUS_NOTIFY_VALUE = 526;
        public static final int CID_BUDDY_LIST_RECENT_CONTACT_SESSION_REQUEST_VALUE = 513;
        public static final int CID_BUDDY_LIST_RECENT_CONTACT_SESSION_RESPONSE_VALUE = 514;
        public static final int CID_BUDDY_LIST_REMOVE_SESSION_NOTIFY_VALUE = 527;
        public static final int CID_BUDDY_LIST_REMOVE_SESSION_REQ_VALUE = 518;
        public static final int CID_BUDDY_LIST_REMOVE_SESSION_RES_VALUE = 519;
        public static final int CID_BUDDY_LIST_STATUS_NOTIFY_VALUE = 515;
        public static final int CID_BUDDY_LIST_USERS_STATUS_REQUEST_VALUE = 522;
        public static final int CID_BUDDY_LIST_USERS_STATUS_RESPONSE_VALUE = 523;
        public static final int CID_BUDDY_LIST_USER_INFO_REQUEST_VALUE = 516;
        public static final int CID_BUDDY_LIST_USER_INFO_RESPONSE_VALUE = 517;
        private static EnumLiteMap<BuddyListCmdID> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<BuddyListCmdID>() {
                public BuddyListCmdID findValueByNumber(int i) {
                    return BuddyListCmdID.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static BuddyListCmdID valueOf(int i) {
            switch (i) {
                case 513:
                    return CID_BUDDY_LIST_RECENT_CONTACT_SESSION_REQUEST;
                case 514:
                    return CID_BUDDY_LIST_RECENT_CONTACT_SESSION_RESPONSE;
                case 515:
                    return CID_BUDDY_LIST_STATUS_NOTIFY;
                case 516:
                    return CID_BUDDY_LIST_USER_INFO_REQUEST;
                case 517:
                    return CID_BUDDY_LIST_USER_INFO_RESPONSE;
                case 518:
                    return CID_BUDDY_LIST_REMOVE_SESSION_REQ;
                case 519:
                    return CID_BUDDY_LIST_REMOVE_SESSION_RES;
                case 520:
                    return CID_BUDDY_LIST_ALL_USER_REQUEST;
                case 521:
                    return CID_BUDDY_LIST_ALL_USER_RESPONSE;
                case 522:
                    return CID_BUDDY_LIST_USERS_STATUS_REQUEST;
                case 523:
                    return CID_BUDDY_LIST_USERS_STATUS_RESPONSE;
                case 524:
                    return CID_BUDDY_LIST_CHANGE_AVATAR_REQUEST;
                case 525:
                    return CID_BUDDY_LIST_CHANGE_AVATAR_RESPONSE;
                case 526:
                    return CID_BUDDY_LIST_PC_LOGIN_STATUS_NOTIFY;
                case 527:
                    return CID_BUDDY_LIST_REMOVE_SESSION_NOTIFY;
                case 528:
                    return CID_BUDDY_LIST_DEPARTMENT_REQUEST;
                case 529:
                    return CID_BUDDY_LIST_DEPARTMENT_RESPONSE;
                case 544:
                    return CID_BUDDY_GET_NEARBY_USER_LIST_REQUEST;
                case 545:
                    return CID_BUDDY_GET_NEARBY_USER_LIST_RESPONSE;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<BuddyListCmdID> internalGetValueMap() {
            return internalValueMap;
        }

        private BuddyListCmdID(int i, int i2) {
            this.value = i2;
        }
    }

    public enum ClientFileRole implements EnumLite {
        CLIENT_REALTIME_SENDER(0, 1),
        CLIENT_REALTIME_RECVER(1, 2),
        CLIENT_OFFLINE_UPLOAD(2, 3),
        CLIENT_OFFLINE_DOWNLOAD(3, 4);
        
        public static final int CLIENT_OFFLINE_DOWNLOAD_VALUE = 4;
        public static final int CLIENT_OFFLINE_UPLOAD_VALUE = 3;
        public static final int CLIENT_REALTIME_RECVER_VALUE = 2;
        public static final int CLIENT_REALTIME_SENDER_VALUE = 1;
        private static EnumLiteMap<ClientFileRole> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<ClientFileRole>() {
                public ClientFileRole findValueByNumber(int i) {
                    return ClientFileRole.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static ClientFileRole valueOf(int i) {
            switch (i) {
                case 1:
                    return CLIENT_REALTIME_SENDER;
                case 2:
                    return CLIENT_REALTIME_RECVER;
                case 3:
                    return CLIENT_OFFLINE_UPLOAD;
                case 4:
                    return CLIENT_OFFLINE_DOWNLOAD;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<ClientFileRole> internalGetValueMap() {
            return internalValueMap;
        }

        private ClientFileRole(int i, int i2) {
            this.value = i2;
        }
    }

    public enum ClientFileState implements EnumLite {
        CLIENT_FILE_PEER_READY(0, 0),
        CLIENT_FILE_CANCEL(1, 1),
        CLIENT_FILE_REFUSE(2, 2),
        CLIENT_FILE_DONE(3, 3);
        
        public static final int CLIENT_FILE_CANCEL_VALUE = 1;
        public static final int CLIENT_FILE_DONE_VALUE = 3;
        public static final int CLIENT_FILE_PEER_READY_VALUE = 0;
        public static final int CLIENT_FILE_REFUSE_VALUE = 2;
        private static EnumLiteMap<ClientFileState> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<ClientFileState>() {
                public ClientFileState findValueByNumber(int i) {
                    return ClientFileState.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static ClientFileState valueOf(int i) {
            switch (i) {
                case 0:
                    return CLIENT_FILE_PEER_READY;
                case 1:
                    return CLIENT_FILE_CANCEL;
                case 2:
                    return CLIENT_FILE_REFUSE;
                case 3:
                    return CLIENT_FILE_DONE;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<ClientFileState> internalGetValueMap() {
            return internalValueMap;
        }

        private ClientFileState(int i, int i2) {
            this.value = i2;
        }
    }

    public enum ClientType implements EnumLite {
        CLIENT_TYPE_WINDOWS(0, 1),
        CLIENT_TYPE_MAC(1, 2),
        CLIENT_TYPE_IOS(2, 17),
        CLIENT_TYPE_ANDROID(3, 18);
        
        public static final int CLIENT_TYPE_ANDROID_VALUE = 18;
        public static final int CLIENT_TYPE_IOS_VALUE = 17;
        public static final int CLIENT_TYPE_MAC_VALUE = 2;
        public static final int CLIENT_TYPE_WINDOWS_VALUE = 1;
        private static EnumLiteMap<ClientType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<ClientType>() {
                public ClientType findValueByNumber(int i) {
                    return ClientType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static ClientType valueOf(int i) {
            switch (i) {
                case 1:
                    return CLIENT_TYPE_WINDOWS;
                case 2:
                    return CLIENT_TYPE_MAC;
                case 17:
                    return CLIENT_TYPE_IOS;
                case 18:
                    return CLIENT_TYPE_ANDROID;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<ClientType> internalGetValueMap() {
            return internalValueMap;
        }

        private ClientType(int i, int i2) {
            this.value = i2;
        }
    }

    public static final class ContactSessionInfo extends GeneratedMessageLite implements ContactSessionInfoOrBuilder {
        public static final int LATEST_MSG_DATA_FIELD_NUMBER = 6;
        public static final int LATEST_MSG_FROM_USER_ID_FIELD_NUMBER = 8;
        public static final int LATEST_MSG_ID_FIELD_NUMBER = 5;
        public static final int LATEST_MSG_TYPE_FIELD_NUMBER = 7;
        public static Parser<ContactSessionInfo> PARSER = new AbstractParser<ContactSessionInfo>() {
            public ContactSessionInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ContactSessionInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 1;
        public static final int SESSION_STATUS_FIELD_NUMBER = 3;
        public static final int SESSION_TYPE_FIELD_NUMBER = 2;
        public static final int UPDATED_TIME_FIELD_NUMBER = 4;
        private static final ContactSessionInfo defaultInstance = new ContactSessionInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString latestMsgData_;
        /* access modifiers changed from: private */
        public int latestMsgFromUserId_;
        /* access modifiers changed from: private */
        public int latestMsgId_;
        /* access modifiers changed from: private */
        public MsgType latestMsgType_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public SessionStatusType sessionStatus_;
        /* access modifiers changed from: private */
        public SessionType sessionType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int updatedTime_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<ContactSessionInfo, Builder> implements ContactSessionInfoOrBuilder {
            private int bitField0_;
            private ByteString latestMsgData_ = ByteString.EMPTY;
            private int latestMsgFromUserId_;
            private int latestMsgId_;
            private MsgType latestMsgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
            private int sessionId_;
            private SessionStatusType sessionStatus_ = SessionStatusType.SESSION_STATUS_OK;
            private SessionType sessionType_ = SessionType.SESSION_TYPE_SINGLE;
            private int updatedTime_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.sessionId_ = 0;
                this.bitField0_ &= -2;
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                this.bitField0_ &= -3;
                this.sessionStatus_ = SessionStatusType.SESSION_STATUS_OK;
                this.bitField0_ &= -5;
                this.updatedTime_ = 0;
                this.bitField0_ &= -9;
                this.latestMsgId_ = 0;
                this.bitField0_ &= -17;
                this.latestMsgData_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                this.latestMsgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
                this.bitField0_ &= -65;
                this.latestMsgFromUserId_ = 0;
                this.bitField0_ &= -129;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public ContactSessionInfo getDefaultInstanceForType() {
                return ContactSessionInfo.getDefaultInstance();
            }

            public ContactSessionInfo build() {
                ContactSessionInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ContactSessionInfo buildPartial() {
                int i = 1;
                ContactSessionInfo contactSessionInfo = new ContactSessionInfo((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                contactSessionInfo.sessionId_ = this.sessionId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                contactSessionInfo.sessionType_ = this.sessionType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                contactSessionInfo.sessionStatus_ = this.sessionStatus_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                contactSessionInfo.updatedTime_ = this.updatedTime_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                contactSessionInfo.latestMsgId_ = this.latestMsgId_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                contactSessionInfo.latestMsgData_ = this.latestMsgData_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                contactSessionInfo.latestMsgType_ = this.latestMsgType_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                contactSessionInfo.latestMsgFromUserId_ = this.latestMsgFromUserId_;
                contactSessionInfo.bitField0_ = i;
                return contactSessionInfo;
            }

            public Builder mergeFrom(ContactSessionInfo contactSessionInfo) {
                if (contactSessionInfo != ContactSessionInfo.getDefaultInstance()) {
                    if (contactSessionInfo.hasSessionId()) {
                        setSessionId(contactSessionInfo.getSessionId());
                    }
                    if (contactSessionInfo.hasSessionType()) {
                        setSessionType(contactSessionInfo.getSessionType());
                    }
                    if (contactSessionInfo.hasSessionStatus()) {
                        setSessionStatus(contactSessionInfo.getSessionStatus());
                    }
                    if (contactSessionInfo.hasUpdatedTime()) {
                        setUpdatedTime(contactSessionInfo.getUpdatedTime());
                    }
                    if (contactSessionInfo.hasLatestMsgId()) {
                        setLatestMsgId(contactSessionInfo.getLatestMsgId());
                    }
                    if (contactSessionInfo.hasLatestMsgData()) {
                        setLatestMsgData(contactSessionInfo.getLatestMsgData());
                    }
                    if (contactSessionInfo.hasLatestMsgType()) {
                        setLatestMsgType(contactSessionInfo.getLatestMsgType());
                    }
                    if (contactSessionInfo.hasLatestMsgFromUserId()) {
                        setLatestMsgFromUserId(contactSessionInfo.getLatestMsgFromUserId());
                    }
                    setUnknownFields(getUnknownFields().concat(contactSessionInfo.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasSessionId() && hasSessionType() && hasSessionStatus() && hasUpdatedTime() && hasLatestMsgId() && hasLatestMsgData() && hasLatestMsgType() && hasLatestMsgFromUserId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ContactSessionInfo contactSessionInfo;
                ContactSessionInfo contactSessionInfo2;
                try {
                    ContactSessionInfo contactSessionInfo3 = (ContactSessionInfo) ContactSessionInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (contactSessionInfo3 != null) {
                        mergeFrom(contactSessionInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    contactSessionInfo2 = (ContactSessionInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    contactSessionInfo = contactSessionInfo2;
                    th = th2;
                }
                if (contactSessionInfo != null) {
                    mergeFrom(contactSessionInfo);
                }
                throw th;
            }

            public boolean hasSessionId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 1;
                this.sessionId_ = i;
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -2;
                this.sessionId_ = 0;
                return this;
            }

            public boolean hasSessionType() {
                return (this.bitField0_ & 2) == 2;
            }

            public SessionType getSessionType() {
                return this.sessionType_;
            }

            public Builder setSessionType(SessionType sessionType) {
                if (sessionType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.sessionType_ = sessionType;
                return this;
            }

            public Builder clearSessionType() {
                this.bitField0_ &= -3;
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                return this;
            }

            public boolean hasSessionStatus() {
                return (this.bitField0_ & 4) == 4;
            }

            public SessionStatusType getSessionStatus() {
                return this.sessionStatus_;
            }

            public Builder setSessionStatus(SessionStatusType sessionStatusType) {
                if (sessionStatusType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.sessionStatus_ = sessionStatusType;
                return this;
            }

            public Builder clearSessionStatus() {
                this.bitField0_ &= -5;
                this.sessionStatus_ = SessionStatusType.SESSION_STATUS_OK;
                return this;
            }

            public boolean hasUpdatedTime() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getUpdatedTime() {
                return this.updatedTime_;
            }

            public Builder setUpdatedTime(int i) {
                this.bitField0_ |= 8;
                this.updatedTime_ = i;
                return this;
            }

            public Builder clearUpdatedTime() {
                this.bitField0_ &= -9;
                this.updatedTime_ = 0;
                return this;
            }

            public boolean hasLatestMsgId() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getLatestMsgId() {
                return this.latestMsgId_;
            }

            public Builder setLatestMsgId(int i) {
                this.bitField0_ |= 16;
                this.latestMsgId_ = i;
                return this;
            }

            public Builder clearLatestMsgId() {
                this.bitField0_ &= -17;
                this.latestMsgId_ = 0;
                return this;
            }

            public boolean hasLatestMsgData() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getLatestMsgData() {
                return this.latestMsgData_;
            }

            public Builder setLatestMsgData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.latestMsgData_ = byteString;
                return this;
            }

            public Builder clearLatestMsgData() {
                this.bitField0_ &= -33;
                this.latestMsgData_ = ContactSessionInfo.getDefaultInstance().getLatestMsgData();
                return this;
            }

            public boolean hasLatestMsgType() {
                return (this.bitField0_ & 64) == 64;
            }

            public MsgType getLatestMsgType() {
                return this.latestMsgType_;
            }

            public Builder setLatestMsgType(MsgType msgType) {
                if (msgType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.latestMsgType_ = msgType;
                return this;
            }

            public Builder clearLatestMsgType() {
                this.bitField0_ &= -65;
                this.latestMsgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
                return this;
            }

            public boolean hasLatestMsgFromUserId() {
                return (this.bitField0_ & 128) == 128;
            }

            public int getLatestMsgFromUserId() {
                return this.latestMsgFromUserId_;
            }

            public Builder setLatestMsgFromUserId(int i) {
                this.bitField0_ |= 128;
                this.latestMsgFromUserId_ = i;
                return this;
            }

            public Builder clearLatestMsgFromUserId() {
                this.bitField0_ &= -129;
                this.latestMsgFromUserId_ = 0;
                return this;
            }
        }

        private ContactSessionInfo(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ContactSessionInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static ContactSessionInfo getDefaultInstance() {
            return defaultInstance;
        }

        public ContactSessionInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        private ContactSessionInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.sessionId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            int readEnum = codedInputStream.readEnum();
                            SessionType valueOf = SessionType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 2;
                                this.sessionType_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 24:
                            int readEnum2 = codedInputStream.readEnum();
                            SessionStatusType valueOf2 = SessionStatusType.valueOf(readEnum2);
                            if (valueOf2 != null) {
                                this.bitField0_ |= 4;
                                this.sessionStatus_ = valueOf2;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum2);
                                break;
                            }
                        case 32:
                            this.bitField0_ |= 8;
                            this.updatedTime_ = codedInputStream.readUInt32();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.latestMsgId_ = codedInputStream.readUInt32();
                            break;
                        case 50:
                            this.bitField0_ |= 32;
                            this.latestMsgData_ = codedInputStream.readBytes();
                            break;
                        case 56:
                            int readEnum3 = codedInputStream.readEnum();
                            MsgType valueOf3 = MsgType.valueOf(readEnum3);
                            if (valueOf3 != null) {
                                this.bitField0_ |= 64;
                                this.latestMsgType_ = valueOf3;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum3);
                                break;
                            }
                        case 64:
                            this.bitField0_ |= 128;
                            this.latestMsgFromUserId_ = codedInputStream.readUInt32();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ContactSessionInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public boolean hasSessionType() {
            return (this.bitField0_ & 2) == 2;
        }

        public SessionType getSessionType() {
            return this.sessionType_;
        }

        public boolean hasSessionStatus() {
            return (this.bitField0_ & 4) == 4;
        }

        public SessionStatusType getSessionStatus() {
            return this.sessionStatus_;
        }

        public boolean hasUpdatedTime() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getUpdatedTime() {
            return this.updatedTime_;
        }

        public boolean hasLatestMsgId() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getLatestMsgId() {
            return this.latestMsgId_;
        }

        public boolean hasLatestMsgData() {
            return (this.bitField0_ & 32) == 32;
        }

        public ByteString getLatestMsgData() {
            return this.latestMsgData_;
        }

        public boolean hasLatestMsgType() {
            return (this.bitField0_ & 64) == 64;
        }

        public MsgType getLatestMsgType() {
            return this.latestMsgType_;
        }

        public boolean hasLatestMsgFromUserId() {
            return (this.bitField0_ & 128) == 128;
        }

        public int getLatestMsgFromUserId() {
            return this.latestMsgFromUserId_;
        }

        private void initFields() {
            this.sessionId_ = 0;
            this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
            this.sessionStatus_ = SessionStatusType.SESSION_STATUS_OK;
            this.updatedTime_ = 0;
            this.latestMsgId_ = 0;
            this.latestMsgData_ = ByteString.EMPTY;
            this.latestMsgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
            this.latestMsgFromUserId_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasSessionId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSessionType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSessionStatus()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasUpdatedTime()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasLatestMsgId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasLatestMsgData()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasLatestMsgType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasLatestMsgFromUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.sessionId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(3, this.sessionStatus_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.updatedTime_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt32(5, this.latestMsgId_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, this.latestMsgData_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeEnum(7, this.latestMsgType_.getNumber());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeUInt32(8, this.latestMsgFromUserId_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.sessionId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeEnumSize(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeEnumSize(3, this.sessionStatus_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.updatedTime_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt32Size(5, this.latestMsgId_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(6, this.latestMsgData_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeEnumSize(7, this.latestMsgType_.getNumber());
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeUInt32Size(8, this.latestMsgFromUserId_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ContactSessionInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ContactSessionInfo) PARSER.parseFrom(byteString);
        }

        public static ContactSessionInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ContactSessionInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ContactSessionInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ContactSessionInfo) PARSER.parseFrom(bArr);
        }

        public static ContactSessionInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ContactSessionInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ContactSessionInfo parseFrom(InputStream inputStream) throws IOException {
            return (ContactSessionInfo) PARSER.parseFrom(inputStream);
        }

        public static ContactSessionInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ContactSessionInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ContactSessionInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ContactSessionInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ContactSessionInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ContactSessionInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ContactSessionInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ContactSessionInfo) PARSER.parseFrom(codedInputStream);
        }

        public static ContactSessionInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ContactSessionInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ContactSessionInfo contactSessionInfo) {
            return newBuilder().mergeFrom(contactSessionInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface ContactSessionInfoOrBuilder extends MessageLiteOrBuilder {
        ByteString getLatestMsgData();

        int getLatestMsgFromUserId();

        int getLatestMsgId();

        MsgType getLatestMsgType();

        int getSessionId();

        SessionStatusType getSessionStatus();

        SessionType getSessionType();

        int getUpdatedTime();

        boolean hasLatestMsgData();

        boolean hasLatestMsgFromUserId();

        boolean hasLatestMsgId();

        boolean hasLatestMsgType();

        boolean hasSessionId();

        boolean hasSessionStatus();

        boolean hasSessionType();

        boolean hasUpdatedTime();
    }

    public static final class DepartInfo extends GeneratedMessageLite implements DepartInfoOrBuilder {
        public static final int DEPT_ID_FIELD_NUMBER = 1;
        public static final int DEPT_NAME_FIELD_NUMBER = 3;
        public static final int DEPT_STATUS_FIELD_NUMBER = 5;
        public static final int PARENT_DEPT_ID_FIELD_NUMBER = 4;
        public static Parser<DepartInfo> PARSER = new AbstractParser<DepartInfo>() {
            public DepartInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new DepartInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PRIORITY_FIELD_NUMBER = 2;
        private static final DepartInfo defaultInstance = new DepartInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int deptId_;
        /* access modifiers changed from: private */
        public Object deptName_;
        /* access modifiers changed from: private */
        public DepartmentStatusType deptStatus_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int parentDeptId_;
        /* access modifiers changed from: private */
        public int priority_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<DepartInfo, Builder> implements DepartInfoOrBuilder {
            private int bitField0_;
            private int deptId_;
            private Object deptName_ = "";
            private DepartmentStatusType deptStatus_ = DepartmentStatusType.DEPT_STATUS_OK;
            private int parentDeptId_;
            private int priority_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.deptId_ = 0;
                this.bitField0_ &= -2;
                this.priority_ = 0;
                this.bitField0_ &= -3;
                this.deptName_ = "";
                this.bitField0_ &= -5;
                this.parentDeptId_ = 0;
                this.bitField0_ &= -9;
                this.deptStatus_ = DepartmentStatusType.DEPT_STATUS_OK;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public DepartInfo getDefaultInstanceForType() {
                return DepartInfo.getDefaultInstance();
            }

            public DepartInfo build() {
                DepartInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public DepartInfo buildPartial() {
                int i = 1;
                DepartInfo departInfo = new DepartInfo((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                departInfo.deptId_ = this.deptId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                departInfo.priority_ = this.priority_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                departInfo.deptName_ = this.deptName_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                departInfo.parentDeptId_ = this.parentDeptId_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                departInfo.deptStatus_ = this.deptStatus_;
                departInfo.bitField0_ = i;
                return departInfo;
            }

            public Builder mergeFrom(DepartInfo departInfo) {
                if (departInfo != DepartInfo.getDefaultInstance()) {
                    if (departInfo.hasDeptId()) {
                        setDeptId(departInfo.getDeptId());
                    }
                    if (departInfo.hasPriority()) {
                        setPriority(departInfo.getPriority());
                    }
                    if (departInfo.hasDeptName()) {
                        this.bitField0_ |= 4;
                        this.deptName_ = departInfo.deptName_;
                    }
                    if (departInfo.hasParentDeptId()) {
                        setParentDeptId(departInfo.getParentDeptId());
                    }
                    if (departInfo.hasDeptStatus()) {
                        setDeptStatus(departInfo.getDeptStatus());
                    }
                    setUnknownFields(getUnknownFields().concat(departInfo.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasDeptId() && hasPriority() && hasDeptName() && hasParentDeptId() && hasDeptStatus()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                DepartInfo departInfo;
                DepartInfo departInfo2;
                try {
                    DepartInfo departInfo3 = (DepartInfo) DepartInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (departInfo3 != null) {
                        mergeFrom(departInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    departInfo2 = (DepartInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    departInfo = departInfo2;
                    th = th2;
                }
                if (departInfo != null) {
                    mergeFrom(departInfo);
                }
                throw th;
            }

            public boolean hasDeptId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getDeptId() {
                return this.deptId_;
            }

            public Builder setDeptId(int i) {
                this.bitField0_ |= 1;
                this.deptId_ = i;
                return this;
            }

            public Builder clearDeptId() {
                this.bitField0_ &= -2;
                this.deptId_ = 0;
                return this;
            }

            public boolean hasPriority() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getPriority() {
                return this.priority_;
            }

            public Builder setPriority(int i) {
                this.bitField0_ |= 2;
                this.priority_ = i;
                return this;
            }

            public Builder clearPriority() {
                this.bitField0_ &= -3;
                this.priority_ = 0;
                return this;
            }

            public boolean hasDeptName() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getDeptName() {
                Object obj = this.deptName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.deptName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getDeptNameBytes() {
                Object obj = this.deptName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.deptName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setDeptName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.deptName_ = str;
                return this;
            }

            public Builder clearDeptName() {
                this.bitField0_ &= -5;
                this.deptName_ = DepartInfo.getDefaultInstance().getDeptName();
                return this;
            }

            public Builder setDeptNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.deptName_ = byteString;
                return this;
            }

            public boolean hasParentDeptId() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getParentDeptId() {
                return this.parentDeptId_;
            }

            public Builder setParentDeptId(int i) {
                this.bitField0_ |= 8;
                this.parentDeptId_ = i;
                return this;
            }

            public Builder clearParentDeptId() {
                this.bitField0_ &= -9;
                this.parentDeptId_ = 0;
                return this;
            }

            public boolean hasDeptStatus() {
                return (this.bitField0_ & 16) == 16;
            }

            public DepartmentStatusType getDeptStatus() {
                return this.deptStatus_;
            }

            public Builder setDeptStatus(DepartmentStatusType departmentStatusType) {
                if (departmentStatusType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.deptStatus_ = departmentStatusType;
                return this;
            }

            public Builder clearDeptStatus() {
                this.bitField0_ &= -17;
                this.deptStatus_ = DepartmentStatusType.DEPT_STATUS_OK;
                return this;
            }
        }

        private DepartInfo(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private DepartInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static DepartInfo getDefaultInstance() {
            return defaultInstance;
        }

        public DepartInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        private DepartInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.deptId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.priority_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.deptName_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.parentDeptId_ = codedInputStream.readUInt32();
                            break;
                        case 40:
                            int readEnum = codedInputStream.readEnum();
                            DepartmentStatusType valueOf = DepartmentStatusType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 16;
                                this.deptStatus_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<DepartInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasDeptId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getDeptId() {
            return this.deptId_;
        }

        public boolean hasPriority() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getPriority() {
            return this.priority_;
        }

        public boolean hasDeptName() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getDeptName() {
            Object obj = this.deptName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.deptName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getDeptNameBytes() {
            Object obj = this.deptName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.deptName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasParentDeptId() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getParentDeptId() {
            return this.parentDeptId_;
        }

        public boolean hasDeptStatus() {
            return (this.bitField0_ & 16) == 16;
        }

        public DepartmentStatusType getDeptStatus() {
            return this.deptStatus_;
        }

        private void initFields() {
            this.deptId_ = 0;
            this.priority_ = 0;
            this.deptName_ = "";
            this.parentDeptId_ = 0;
            this.deptStatus_ = DepartmentStatusType.DEPT_STATUS_OK;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasDeptId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasPriority()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasDeptName()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasParentDeptId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasDeptStatus()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.deptId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.priority_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getDeptNameBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.parentDeptId_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeEnum(5, this.deptStatus_.getNumber());
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.deptId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.priority_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getDeptNameBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.parentDeptId_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeEnumSize(5, this.deptStatus_.getNumber());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static DepartInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (DepartInfo) PARSER.parseFrom(byteString);
        }

        public static DepartInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DepartInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DepartInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (DepartInfo) PARSER.parseFrom(bArr);
        }

        public static DepartInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DepartInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static DepartInfo parseFrom(InputStream inputStream) throws IOException {
            return (DepartInfo) PARSER.parseFrom(inputStream);
        }

        public static DepartInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DepartInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static DepartInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DepartInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static DepartInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DepartInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static DepartInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DepartInfo) PARSER.parseFrom(codedInputStream);
        }

        public static DepartInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DepartInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(DepartInfo departInfo) {
            return newBuilder().mergeFrom(departInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface DepartInfoOrBuilder extends MessageLiteOrBuilder {
        int getDeptId();

        String getDeptName();

        ByteString getDeptNameBytes();

        DepartmentStatusType getDeptStatus();

        int getParentDeptId();

        int getPriority();

        boolean hasDeptId();

        boolean hasDeptName();

        boolean hasDeptStatus();

        boolean hasParentDeptId();

        boolean hasPriority();
    }

    public enum DepartmentStatusType implements EnumLite {
        DEPT_STATUS_OK(0, 0),
        DEPT_STATUS_DELETE(1, 1);
        
        public static final int DEPT_STATUS_DELETE_VALUE = 1;
        public static final int DEPT_STATUS_OK_VALUE = 0;
        private static EnumLiteMap<DepartmentStatusType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<DepartmentStatusType>() {
                public DepartmentStatusType findValueByNumber(int i) {
                    return DepartmentStatusType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static DepartmentStatusType valueOf(int i) {
            switch (i) {
                case 0:
                    return DEPT_STATUS_OK;
                case 1:
                    return DEPT_STATUS_DELETE;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<DepartmentStatusType> internalGetValueMap() {
            return internalValueMap;
        }

        private DepartmentStatusType(int i, int i2) {
            this.value = i2;
        }
    }

    public enum FileCmdID implements EnumLite {
        CID_FILE_LOGIN_REQ(0, CID_FILE_LOGIN_REQ_VALUE),
        CID_FILE_LOGIN_RES(1, CID_FILE_LOGIN_RES_VALUE),
        CID_FILE_STATE(2, CID_FILE_STATE_VALUE),
        CID_FILE_PULL_DATA_REQ(3, CID_FILE_PULL_DATA_REQ_VALUE),
        CID_FILE_PULL_DATA_RSP(4, CID_FILE_PULL_DATA_RSP_VALUE),
        CID_FILE_REQUEST(5, CID_FILE_REQUEST_VALUE),
        CID_FILE_RESPONSE(6, CID_FILE_RESPONSE_VALUE),
        CID_FILE_NOTIFY(7, CID_FILE_NOTIFY_VALUE),
        CID_FILE_HAS_OFFLINE_REQ(8, CID_FILE_HAS_OFFLINE_REQ_VALUE),
        CID_FILE_HAS_OFFLINE_RES(9, CID_FILE_HAS_OFFLINE_RES_VALUE),
        CID_FILE_ADD_OFFLINE_REQ(10, CID_FILE_ADD_OFFLINE_REQ_VALUE),
        CID_FILE_DEL_OFFLINE_REQ(11, CID_FILE_DEL_OFFLINE_REQ_VALUE);
        
        public static final int CID_FILE_ADD_OFFLINE_REQ_VALUE = 1291;
        public static final int CID_FILE_DEL_OFFLINE_REQ_VALUE = 1292;
        public static final int CID_FILE_HAS_OFFLINE_REQ_VALUE = 1289;
        public static final int CID_FILE_HAS_OFFLINE_RES_VALUE = 1290;
        public static final int CID_FILE_LOGIN_REQ_VALUE = 1281;
        public static final int CID_FILE_LOGIN_RES_VALUE = 1282;
        public static final int CID_FILE_NOTIFY_VALUE = 1288;
        public static final int CID_FILE_PULL_DATA_REQ_VALUE = 1284;
        public static final int CID_FILE_PULL_DATA_RSP_VALUE = 1285;
        public static final int CID_FILE_REQUEST_VALUE = 1286;
        public static final int CID_FILE_RESPONSE_VALUE = 1287;
        public static final int CID_FILE_STATE_VALUE = 1283;
        private static EnumLiteMap<FileCmdID> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<FileCmdID>() {
                public FileCmdID findValueByNumber(int i) {
                    return FileCmdID.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static FileCmdID valueOf(int i) {
            switch (i) {
                case CID_FILE_LOGIN_REQ_VALUE:
                    return CID_FILE_LOGIN_REQ;
                case CID_FILE_LOGIN_RES_VALUE:
                    return CID_FILE_LOGIN_RES;
                case CID_FILE_STATE_VALUE:
                    return CID_FILE_STATE;
                case CID_FILE_PULL_DATA_REQ_VALUE:
                    return CID_FILE_PULL_DATA_REQ;
                case CID_FILE_PULL_DATA_RSP_VALUE:
                    return CID_FILE_PULL_DATA_RSP;
                case CID_FILE_REQUEST_VALUE:
                    return CID_FILE_REQUEST;
                case CID_FILE_RESPONSE_VALUE:
                    return CID_FILE_RESPONSE;
                case CID_FILE_NOTIFY_VALUE:
                    return CID_FILE_NOTIFY;
                case CID_FILE_HAS_OFFLINE_REQ_VALUE:
                    return CID_FILE_HAS_OFFLINE_REQ;
                case CID_FILE_HAS_OFFLINE_RES_VALUE:
                    return CID_FILE_HAS_OFFLINE_RES;
                case CID_FILE_ADD_OFFLINE_REQ_VALUE:
                    return CID_FILE_ADD_OFFLINE_REQ;
                case CID_FILE_DEL_OFFLINE_REQ_VALUE:
                    return CID_FILE_DEL_OFFLINE_REQ;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<FileCmdID> internalGetValueMap() {
            return internalValueMap;
        }

        private FileCmdID(int i, int i2) {
            this.value = i2;
        }
    }

    public enum FileServerError implements EnumLite {
        FILE_SERVER_ERRNO_OK(0, 0),
        FILE_SERVER_ERRNO_CREATE_TASK_ID_ERROR(1, 1),
        FILE_SERVER_ERRNO_CREATE_TASK_ERROR(2, 2),
        FILE_SERVER_ERRNO_LOGIN_INVALID_TOKEN(3, 3),
        FILE_SERVER_ERRNO_INVALID_USER_FOR_TASK(4, 4),
        FILE_SERVER_ERRNO_PULL_DATA_WITH_INVALID_TASK_ID(5, 5),
        FILE_SERVER_ERRNO_PULL_DATA_ILLIEAGE_USER(6, 6),
        FILE_SERVER_ERRNO_PULL_DATA_MKDIR_ERROR(7, 7),
        FILE_SERVER_ERRNO_PULL_DATA_OPEN_FILE_ERROR(8, 8),
        FILE_SERVER_ERRNO_PULL_DATA_READ_FILE_HEADER_ERROR(9, 9),
        FILE_SERVER_ERRNO_PULL_DATA_ALLOC_MEM_ERROR(10, 10),
        FILE_SERVER_ERRNO_PULL_DATA_SEEK_OFFSET_ERROR(11, 11),
        FILE_SERVER_ERRNO_PULL_DATA_FINISHED(12, 12);
        
        public static final int FILE_SERVER_ERRNO_CREATE_TASK_ERROR_VALUE = 2;
        public static final int FILE_SERVER_ERRNO_CREATE_TASK_ID_ERROR_VALUE = 1;
        public static final int FILE_SERVER_ERRNO_INVALID_USER_FOR_TASK_VALUE = 4;
        public static final int FILE_SERVER_ERRNO_LOGIN_INVALID_TOKEN_VALUE = 3;
        public static final int FILE_SERVER_ERRNO_OK_VALUE = 0;
        public static final int FILE_SERVER_ERRNO_PULL_DATA_ALLOC_MEM_ERROR_VALUE = 10;
        public static final int FILE_SERVER_ERRNO_PULL_DATA_FINISHED_VALUE = 12;
        public static final int FILE_SERVER_ERRNO_PULL_DATA_ILLIEAGE_USER_VALUE = 6;
        public static final int FILE_SERVER_ERRNO_PULL_DATA_MKDIR_ERROR_VALUE = 7;
        public static final int FILE_SERVER_ERRNO_PULL_DATA_OPEN_FILE_ERROR_VALUE = 8;
        public static final int FILE_SERVER_ERRNO_PULL_DATA_READ_FILE_HEADER_ERROR_VALUE = 9;
        public static final int FILE_SERVER_ERRNO_PULL_DATA_SEEK_OFFSET_ERROR_VALUE = 11;
        public static final int FILE_SERVER_ERRNO_PULL_DATA_WITH_INVALID_TASK_ID_VALUE = 5;
        private static EnumLiteMap<FileServerError> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<FileServerError>() {
                public FileServerError findValueByNumber(int i) {
                    return FileServerError.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static FileServerError valueOf(int i) {
            switch (i) {
                case 0:
                    return FILE_SERVER_ERRNO_OK;
                case 1:
                    return FILE_SERVER_ERRNO_CREATE_TASK_ID_ERROR;
                case 2:
                    return FILE_SERVER_ERRNO_CREATE_TASK_ERROR;
                case 3:
                    return FILE_SERVER_ERRNO_LOGIN_INVALID_TOKEN;
                case 4:
                    return FILE_SERVER_ERRNO_INVALID_USER_FOR_TASK;
                case 5:
                    return FILE_SERVER_ERRNO_PULL_DATA_WITH_INVALID_TASK_ID;
                case 6:
                    return FILE_SERVER_ERRNO_PULL_DATA_ILLIEAGE_USER;
                case 7:
                    return FILE_SERVER_ERRNO_PULL_DATA_MKDIR_ERROR;
                case 8:
                    return FILE_SERVER_ERRNO_PULL_DATA_OPEN_FILE_ERROR;
                case 9:
                    return FILE_SERVER_ERRNO_PULL_DATA_READ_FILE_HEADER_ERROR;
                case 10:
                    return FILE_SERVER_ERRNO_PULL_DATA_ALLOC_MEM_ERROR;
                case 11:
                    return FILE_SERVER_ERRNO_PULL_DATA_SEEK_OFFSET_ERROR;
                case 12:
                    return FILE_SERVER_ERRNO_PULL_DATA_FINISHED;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<FileServerError> internalGetValueMap() {
            return internalValueMap;
        }

        private FileServerError(int i, int i2) {
            this.value = i2;
        }
    }

    public enum FileType implements EnumLite {
        FILE_TYPE_ONLINE(0, 1),
        FILE_TYPE_OFFLINE(1, 2);
        
        public static final int FILE_TYPE_OFFLINE_VALUE = 2;
        public static final int FILE_TYPE_ONLINE_VALUE = 1;
        private static EnumLiteMap<FileType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<FileType>() {
                public FileType findValueByNumber(int i) {
                    return FileType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static FileType valueOf(int i) {
            switch (i) {
                case 1:
                    return FILE_TYPE_ONLINE;
                case 2:
                    return FILE_TYPE_OFFLINE;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<FileType> internalGetValueMap() {
            return internalValueMap;
        }

        private FileType(int i, int i2) {
            this.value = i2;
        }
    }

    public enum GroupCmdID implements EnumLite {
        CID_GROUP_QUERY_GROUP_IM_IN_REQUEST(0, 1025),
        CID_GROUP_QUERY_GROUP_IM_IN_RESPONSE(1, 1026),
        CID_GROUP_NORMAL_LIST_REQUEST(2, 1027),
        CID_GROUP_NORMAL_LIST_RESPONSE(3, 1028),
        CID_GROUP_INFO_REQUEST(4, 1029),
        CID_GROUP_INFO_RESPONSE(5, CID_GROUP_INFO_RESPONSE_VALUE),
        CID_GROUP_CREATE_REQUEST(6, CID_GROUP_CREATE_REQUEST_VALUE),
        CID_GROUP_CREATE_RESPONSE(7, CID_GROUP_CREATE_RESPONSE_VALUE),
        CID_GROUP_CHANGE_MEMBER_REQUEST(8, CID_GROUP_CHANGE_MEMBER_REQUEST_VALUE),
        CID_GROUP_CHANGE_MEMBER_RESPONSE(9, CID_GROUP_CHANGE_MEMBER_RESPONSE_VALUE),
        CID_GROUP_SHIELD_GROUP_REQUEST(10, CID_GROUP_SHIELD_GROUP_REQUEST_VALUE),
        CID_GROUP_SHIELD_GROUP_RESPONSE(11, CID_GROUP_SHIELD_GROUP_RESPONSE_VALUE),
        CID_GROUP_CHANGE_MEMBER_NOTIFY(12, CID_GROUP_CHANGE_MEMBER_NOTIFY_VALUE),
        CID_GROUP_JUDGE_IN_GROUP_REQUEST(13, CID_GROUP_JUDGE_IN_GROUP_REQUEST_VALUE),
        CID_GROUP_JUDGE_IN_GROUP_RESPONSE(14, CID_GROUP_JUDGE_IN_GROUP_RESPONSE_VALUE),
        CID_GROUP_DESTROY_GROUP_REQUEST(15, CID_GROUP_DESTROY_GROUP_REQUEST_VALUE),
        CID_GROUP_DESTROY_GROUP_RESPONSE(16, CID_GROUP_DESTROY_GROUP_RESPONSE_VALUE),
        CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_REQ(17, CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_REQ_VALUE),
        CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_REQ_ACK(18, CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_REQ_ACK_VALUE),
        CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_NOTIFY(19, CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_NOTIFY_VALUE),
        CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_RSP(20, CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_RSP_VALUE),
        CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_RSP_ACK(21, CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_RSP_ACK_VALUE),
        CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_NOTIFY(22, CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_NOTIFY_VALUE),
        CID_GROUP_INVITE_USER_JOIN_GROUP_REQ(23, CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_VALUE),
        CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_ACK(24, CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_ACK_VALUE),
        CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_NOTIFY(25, 1052),
        CID_GROUP_INVITE_USER_JOIN_GROUP_RSP(26, 1053),
        CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_ACK(27, CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_ACK_VALUE),
        CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_NOTIFY(28, CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_NOTIFY_VALUE),
        CID_GROUP_USER_INFO_REQUEST(29, CID_GROUP_USER_INFO_REQUEST_VALUE),
        CID_GROUP_USER_INFO_RESPONSE(30, CID_GROUP_USER_INFO_RESPONSE_VALUE),
        CID_GROUP_UPDATE_NICKNAME_INGROUP_REQUEST(31, CID_GROUP_UPDATE_NICKNAME_INGROUP_REQUEST_VALUE),
        CID_GROUP_UPDATE_NICKNAME_INGROUP_RESPONSE(32, CID_GROUP_UPDATE_NICKNAME_INGROUP_RESPONSE_VALUE),
        CID_GROUP_CHANGE_NICKNAME_INGROUP_NOTIFY(33, CID_GROUP_CHANGE_NICKNAME_INGROUP_NOTIFY_VALUE),
        CID_GROUP_JOIN_CONFERENCE_REQUEST(34, CID_GROUP_JOIN_CONFERENCE_REQUEST_VALUE),
        CID_GROUP_JOIN_CONFERENCE_RESPONSE(35, CID_GROUP_JOIN_CONFERENCE_RESPONSE_VALUE),
        CID_GROUP_LEAVE_CONFERENCE_REQUEST(36, CID_GROUP_LEAVE_CONFERENCE_REQUEST_VALUE),
        CID_GROUP_LEAVE_CONFERENCE_RESPONSE(37, CID_GROUP_LEAVE_CONFERENCE_RESPONSE_VALUE),
        CID_GROUP_CONFERENCE_MEMBER_NOTIFY(38, CID_GROUP_CONFERENCE_MEMBER_NOTIFY_VALUE),
        CID_GROUP_DESTROY_CONFERENCE_REQUEST(39, CID_GROUP_DESTROY_CONFERENCE_REQUEST_VALUE),
        CID_GROUP_DESTROY_CONFERENCE_RESPONSE(40, CID_GROUP_DESTROY_CONFERENCE_RESPONSE_VALUE),
        CID_GROUP_DESTROY_CONFERENCE_NOTIFY(41, CID_GROUP_DESTROY_CONFERENCE_NOTIFY_VALUE),
        CID_GROUP_LEAVE_GROUP_REQUEST(42, CID_GROUP_LEAVE_GROUP_REQUEST_VALUE),
        CID_GROUP_LEAVE_GROUP_RESPONSE(43, CID_GROUP_LEAVE_GROUP_RESPONSE_VALUE),
        CID_GROUP_TRANSFER_CREATOR_REQUEST(44, CID_GROUP_TRANSFER_CREATOR_REQUEST_VALUE),
        CID_GROUP_TRANSFER_CREATOR_RESPONSE(45, CID_GROUP_TRANSFER_CREATOR_RESPONSE_VALUE),
        CID_GROUP_UPDATE_GROUP_NAME_REQUEST(46, CID_GROUP_UPDATE_GROUP_NAME_REQUEST_VALUE),
        CID_GROUP_UPDATE_GROUP_NAME_RESPONSE(47, CID_GROUP_UPDATE_GROUP_NAME_RESPONSE_VALUE),
        CID_GROUP_INFO_CHANGE_NOTIFY(48, CID_GROUP_INFO_CHANGE_NOTIFY_VALUE);
        
        public static final int CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_NOTIFY_VALUE = 1049;
        public static final int CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_RSP_ACK_VALUE = 1048;
        public static final int CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_RSP_VALUE = 1047;
        public static final int CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_NOTIFY_VALUE = 1046;
        public static final int CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_REQ_ACK_VALUE = 1045;
        public static final int CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_REQ_VALUE = 1044;
        public static final int CID_GROUP_CHANGE_MEMBER_NOTIFY_VALUE = 1037;
        public static final int CID_GROUP_CHANGE_MEMBER_REQUEST_VALUE = 1033;
        public static final int CID_GROUP_CHANGE_MEMBER_RESPONSE_VALUE = 1034;
        public static final int CID_GROUP_CHANGE_NICKNAME_INGROUP_NOTIFY_VALUE = 1060;
        public static final int CID_GROUP_CONFERENCE_MEMBER_NOTIFY_VALUE = 1065;
        public static final int CID_GROUP_CREATE_REQUEST_VALUE = 1031;
        public static final int CID_GROUP_CREATE_RESPONSE_VALUE = 1032;
        public static final int CID_GROUP_DESTROY_CONFERENCE_NOTIFY_VALUE = 1068;
        public static final int CID_GROUP_DESTROY_CONFERENCE_REQUEST_VALUE = 1066;
        public static final int CID_GROUP_DESTROY_CONFERENCE_RESPONSE_VALUE = 1067;
        public static final int CID_GROUP_DESTROY_GROUP_REQUEST_VALUE = 1040;
        public static final int CID_GROUP_DESTROY_GROUP_RESPONSE_VALUE = 1041;
        public static final int CID_GROUP_INFO_CHANGE_NOTIFY_VALUE = 1075;
        public static final int CID_GROUP_INFO_REQUEST_VALUE = 1029;
        public static final int CID_GROUP_INFO_RESPONSE_VALUE = 1030;
        public static final int CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_ACK_VALUE = 1051;
        public static final int CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_NOTIFY_VALUE = 1052;
        public static final int CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_VALUE = 1050;
        public static final int CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_ACK_VALUE = 1054;
        public static final int CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_NOTIFY_VALUE = 1055;
        public static final int CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_VALUE = 1053;
        public static final int CID_GROUP_JOIN_CONFERENCE_REQUEST_VALUE = 1061;
        public static final int CID_GROUP_JOIN_CONFERENCE_RESPONSE_VALUE = 1062;
        public static final int CID_GROUP_JUDGE_IN_GROUP_REQUEST_VALUE = 1038;
        public static final int CID_GROUP_JUDGE_IN_GROUP_RESPONSE_VALUE = 1039;
        public static final int CID_GROUP_LEAVE_CONFERENCE_REQUEST_VALUE = 1063;
        public static final int CID_GROUP_LEAVE_CONFERENCE_RESPONSE_VALUE = 1064;
        public static final int CID_GROUP_LEAVE_GROUP_REQUEST_VALUE = 1069;
        public static final int CID_GROUP_LEAVE_GROUP_RESPONSE_VALUE = 1070;
        public static final int CID_GROUP_NORMAL_LIST_REQUEST_VALUE = 1027;
        public static final int CID_GROUP_NORMAL_LIST_RESPONSE_VALUE = 1028;
        public static final int CID_GROUP_QUERY_GROUP_IM_IN_REQUEST_VALUE = 1025;
        public static final int CID_GROUP_QUERY_GROUP_IM_IN_RESPONSE_VALUE = 1026;
        public static final int CID_GROUP_SHIELD_GROUP_REQUEST_VALUE = 1035;
        public static final int CID_GROUP_SHIELD_GROUP_RESPONSE_VALUE = 1036;
        public static final int CID_GROUP_TRANSFER_CREATOR_REQUEST_VALUE = 1071;
        public static final int CID_GROUP_TRANSFER_CREATOR_RESPONSE_VALUE = 1072;
        public static final int CID_GROUP_UPDATE_GROUP_NAME_REQUEST_VALUE = 1073;
        public static final int CID_GROUP_UPDATE_GROUP_NAME_RESPONSE_VALUE = 1074;
        public static final int CID_GROUP_UPDATE_NICKNAME_INGROUP_REQUEST_VALUE = 1058;
        public static final int CID_GROUP_UPDATE_NICKNAME_INGROUP_RESPONSE_VALUE = 1059;
        public static final int CID_GROUP_USER_INFO_REQUEST_VALUE = 1056;
        public static final int CID_GROUP_USER_INFO_RESPONSE_VALUE = 1057;
        private static EnumLiteMap<GroupCmdID> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<GroupCmdID>() {
                public GroupCmdID findValueByNumber(int i) {
                    return GroupCmdID.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static GroupCmdID valueOf(int i) {
            switch (i) {
                case 1025:
                    return CID_GROUP_QUERY_GROUP_IM_IN_REQUEST;
                case 1026:
                    return CID_GROUP_QUERY_GROUP_IM_IN_RESPONSE;
                case 1027:
                    return CID_GROUP_NORMAL_LIST_REQUEST;
                case 1028:
                    return CID_GROUP_NORMAL_LIST_RESPONSE;
                case 1029:
                    return CID_GROUP_INFO_REQUEST;
                case CID_GROUP_INFO_RESPONSE_VALUE:
                    return CID_GROUP_INFO_RESPONSE;
                case CID_GROUP_CREATE_REQUEST_VALUE:
                    return CID_GROUP_CREATE_REQUEST;
                case CID_GROUP_CREATE_RESPONSE_VALUE:
                    return CID_GROUP_CREATE_RESPONSE;
                case CID_GROUP_CHANGE_MEMBER_REQUEST_VALUE:
                    return CID_GROUP_CHANGE_MEMBER_REQUEST;
                case CID_GROUP_CHANGE_MEMBER_RESPONSE_VALUE:
                    return CID_GROUP_CHANGE_MEMBER_RESPONSE;
                case CID_GROUP_SHIELD_GROUP_REQUEST_VALUE:
                    return CID_GROUP_SHIELD_GROUP_REQUEST;
                case CID_GROUP_SHIELD_GROUP_RESPONSE_VALUE:
                    return CID_GROUP_SHIELD_GROUP_RESPONSE;
                case CID_GROUP_CHANGE_MEMBER_NOTIFY_VALUE:
                    return CID_GROUP_CHANGE_MEMBER_NOTIFY;
                case CID_GROUP_JUDGE_IN_GROUP_REQUEST_VALUE:
                    return CID_GROUP_JUDGE_IN_GROUP_REQUEST;
                case CID_GROUP_JUDGE_IN_GROUP_RESPONSE_VALUE:
                    return CID_GROUP_JUDGE_IN_GROUP_RESPONSE;
                case CID_GROUP_DESTROY_GROUP_REQUEST_VALUE:
                    return CID_GROUP_DESTROY_GROUP_REQUEST;
                case CID_GROUP_DESTROY_GROUP_RESPONSE_VALUE:
                    return CID_GROUP_DESTROY_GROUP_RESPONSE;
                case CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_REQ_VALUE:
                    return CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_REQ;
                case CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_REQ_ACK_VALUE:
                    return CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_REQ_ACK;
                case CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_NOTIFY_VALUE:
                    return CID_GROUP_APPLY_JOIN_GROUP_TOCREATOR_NOTIFY;
                case CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_RSP_VALUE:
                    return CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_RSP;
                case CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_RSP_ACK_VALUE:
                    return CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_RSP_ACK;
                case CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_NOTIFY_VALUE:
                    return CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_NOTIFY;
                case CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_VALUE:
                    return CID_GROUP_INVITE_USER_JOIN_GROUP_REQ;
                case CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_ACK_VALUE:
                    return CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_ACK;
                case 1052:
                    return CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_NOTIFY;
                case 1053:
                    return CID_GROUP_INVITE_USER_JOIN_GROUP_RSP;
                case CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_ACK_VALUE:
                    return CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_ACK;
                case CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_NOTIFY_VALUE:
                    return CID_GROUP_INVITE_USER_JOIN_GROUP_RSP_NOTIFY;
                case CID_GROUP_USER_INFO_REQUEST_VALUE:
                    return CID_GROUP_USER_INFO_REQUEST;
                case CID_GROUP_USER_INFO_RESPONSE_VALUE:
                    return CID_GROUP_USER_INFO_RESPONSE;
                case CID_GROUP_UPDATE_NICKNAME_INGROUP_REQUEST_VALUE:
                    return CID_GROUP_UPDATE_NICKNAME_INGROUP_REQUEST;
                case CID_GROUP_UPDATE_NICKNAME_INGROUP_RESPONSE_VALUE:
                    return CID_GROUP_UPDATE_NICKNAME_INGROUP_RESPONSE;
                case CID_GROUP_CHANGE_NICKNAME_INGROUP_NOTIFY_VALUE:
                    return CID_GROUP_CHANGE_NICKNAME_INGROUP_NOTIFY;
                case CID_GROUP_JOIN_CONFERENCE_REQUEST_VALUE:
                    return CID_GROUP_JOIN_CONFERENCE_REQUEST;
                case CID_GROUP_JOIN_CONFERENCE_RESPONSE_VALUE:
                    return CID_GROUP_JOIN_CONFERENCE_RESPONSE;
                case CID_GROUP_LEAVE_CONFERENCE_REQUEST_VALUE:
                    return CID_GROUP_LEAVE_CONFERENCE_REQUEST;
                case CID_GROUP_LEAVE_CONFERENCE_RESPONSE_VALUE:
                    return CID_GROUP_LEAVE_CONFERENCE_RESPONSE;
                case CID_GROUP_CONFERENCE_MEMBER_NOTIFY_VALUE:
                    return CID_GROUP_CONFERENCE_MEMBER_NOTIFY;
                case CID_GROUP_DESTROY_CONFERENCE_REQUEST_VALUE:
                    return CID_GROUP_DESTROY_CONFERENCE_REQUEST;
                case CID_GROUP_DESTROY_CONFERENCE_RESPONSE_VALUE:
                    return CID_GROUP_DESTROY_CONFERENCE_RESPONSE;
                case CID_GROUP_DESTROY_CONFERENCE_NOTIFY_VALUE:
                    return CID_GROUP_DESTROY_CONFERENCE_NOTIFY;
                case CID_GROUP_LEAVE_GROUP_REQUEST_VALUE:
                    return CID_GROUP_LEAVE_GROUP_REQUEST;
                case CID_GROUP_LEAVE_GROUP_RESPONSE_VALUE:
                    return CID_GROUP_LEAVE_GROUP_RESPONSE;
                case CID_GROUP_TRANSFER_CREATOR_REQUEST_VALUE:
                    return CID_GROUP_TRANSFER_CREATOR_REQUEST;
                case CID_GROUP_TRANSFER_CREATOR_RESPONSE_VALUE:
                    return CID_GROUP_TRANSFER_CREATOR_RESPONSE;
                case CID_GROUP_UPDATE_GROUP_NAME_REQUEST_VALUE:
                    return CID_GROUP_UPDATE_GROUP_NAME_REQUEST;
                case CID_GROUP_UPDATE_GROUP_NAME_RESPONSE_VALUE:
                    return CID_GROUP_UPDATE_GROUP_NAME_RESPONSE;
                case CID_GROUP_INFO_CHANGE_NOTIFY_VALUE:
                    return CID_GROUP_INFO_CHANGE_NOTIFY;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<GroupCmdID> internalGetValueMap() {
            return internalValueMap;
        }

        private GroupCmdID(int i, int i2) {
            this.value = i2;
        }
    }

    public enum GroupConferenceModifyType implements EnumLite {
        GROUP_CONFERENCE_TYPE_USER_JOIN(0, 1),
        GROUP_CONFERENCE_TYPE_USER_LEAVE(1, 2),
        GROUP_CONFERENCE_TYPE_DESTROY(2, 3);
        
        public static final int GROUP_CONFERENCE_TYPE_DESTROY_VALUE = 3;
        public static final int GROUP_CONFERENCE_TYPE_USER_JOIN_VALUE = 1;
        public static final int GROUP_CONFERENCE_TYPE_USER_LEAVE_VALUE = 2;
        private static EnumLiteMap<GroupConferenceModifyType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<GroupConferenceModifyType>() {
                public GroupConferenceModifyType findValueByNumber(int i) {
                    return GroupConferenceModifyType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static GroupConferenceModifyType valueOf(int i) {
            switch (i) {
                case 1:
                    return GROUP_CONFERENCE_TYPE_USER_JOIN;
                case 2:
                    return GROUP_CONFERENCE_TYPE_USER_LEAVE;
                case 3:
                    return GROUP_CONFERENCE_TYPE_DESTROY;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<GroupConferenceModifyType> internalGetValueMap() {
            return internalValueMap;
        }

        private GroupConferenceModifyType(int i, int i2) {
            this.value = i2;
        }
    }

    public static final class GroupInfo extends GeneratedMessageLite implements GroupInfoOrBuilder {
        public static final int CONFERENCEID_FIELD_NUMBER = 8;
        public static final int GROUP_AVATAR_FIELD_NUMBER = 4;
        public static final int GROUP_CREATOR_ID_FIELD_NUMBER = 5;
        public static final int GROUP_ID_FIELD_NUMBER = 1;
        public static final int GROUP_MEMBER_LIST_FIELD_NUMBER = 9;
        public static final int GROUP_NAME_FIELD_NUMBER = 3;
        public static final int GROUP_TYPE_FIELD_NUMBER = 6;
        public static Parser<GroupInfo> PARSER = new AbstractParser<GroupInfo>() {
            public GroupInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new GroupInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SHIELD_STATUS_FIELD_NUMBER = 7;
        public static final int VERSION_FIELD_NUMBER = 2;
        private static final GroupInfo defaultInstance = new GroupInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object conferenceid_;
        /* access modifiers changed from: private */
        public Object groupAvatar_;
        /* access modifiers changed from: private */
        public int groupCreatorId_;
        /* access modifiers changed from: private */
        public int groupId_;
        /* access modifiers changed from: private */
        public List<Integer> groupMemberList_;
        /* access modifiers changed from: private */
        public Object groupName_;
        /* access modifiers changed from: private */
        public GroupType groupType_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int shieldStatus_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<GroupInfo, Builder> implements GroupInfoOrBuilder {
            private int bitField0_;
            private Object conferenceid_ = "";
            private Object groupAvatar_ = "";
            private int groupCreatorId_;
            private int groupId_;
            private List<Integer> groupMemberList_ = Collections.emptyList();
            private Object groupName_ = "";
            private GroupType groupType_ = GroupType.GROUP_TYPE_NORMAL;
            private int shieldStatus_;
            private int version_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.groupId_ = 0;
                this.bitField0_ &= -2;
                this.version_ = 0;
                this.bitField0_ &= -3;
                this.groupName_ = "";
                this.bitField0_ &= -5;
                this.groupAvatar_ = "";
                this.bitField0_ &= -9;
                this.groupCreatorId_ = 0;
                this.bitField0_ &= -17;
                this.groupType_ = GroupType.GROUP_TYPE_NORMAL;
                this.bitField0_ &= -33;
                this.shieldStatus_ = 0;
                this.bitField0_ &= -65;
                this.conferenceid_ = "";
                this.bitField0_ &= -129;
                this.groupMemberList_ = Collections.emptyList();
                this.bitField0_ &= -257;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public GroupInfo getDefaultInstanceForType() {
                return GroupInfo.getDefaultInstance();
            }

            public GroupInfo build() {
                GroupInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public GroupInfo buildPartial() {
                int i = 1;
                GroupInfo groupInfo = new GroupInfo((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                groupInfo.groupId_ = this.groupId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                groupInfo.version_ = this.version_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                groupInfo.groupName_ = this.groupName_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                groupInfo.groupAvatar_ = this.groupAvatar_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                groupInfo.groupCreatorId_ = this.groupCreatorId_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                groupInfo.groupType_ = this.groupType_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                groupInfo.shieldStatus_ = this.shieldStatus_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                groupInfo.conferenceid_ = this.conferenceid_;
                if ((this.bitField0_ & 256) == 256) {
                    this.groupMemberList_ = Collections.unmodifiableList(this.groupMemberList_);
                    this.bitField0_ &= -257;
                }
                groupInfo.groupMemberList_ = this.groupMemberList_;
                groupInfo.bitField0_ = i;
                return groupInfo;
            }

            public Builder mergeFrom(GroupInfo groupInfo) {
                if (groupInfo != GroupInfo.getDefaultInstance()) {
                    if (groupInfo.hasGroupId()) {
                        setGroupId(groupInfo.getGroupId());
                    }
                    if (groupInfo.hasVersion()) {
                        setVersion(groupInfo.getVersion());
                    }
                    if (groupInfo.hasGroupName()) {
                        this.bitField0_ |= 4;
                        this.groupName_ = groupInfo.groupName_;
                    }
                    if (groupInfo.hasGroupAvatar()) {
                        this.bitField0_ |= 8;
                        this.groupAvatar_ = groupInfo.groupAvatar_;
                    }
                    if (groupInfo.hasGroupCreatorId()) {
                        setGroupCreatorId(groupInfo.getGroupCreatorId());
                    }
                    if (groupInfo.hasGroupType()) {
                        setGroupType(groupInfo.getGroupType());
                    }
                    if (groupInfo.hasShieldStatus()) {
                        setShieldStatus(groupInfo.getShieldStatus());
                    }
                    if (groupInfo.hasConferenceid()) {
                        this.bitField0_ |= 128;
                        this.conferenceid_ = groupInfo.conferenceid_;
                    }
                    if (!groupInfo.groupMemberList_.isEmpty()) {
                        if (this.groupMemberList_.isEmpty()) {
                            this.groupMemberList_ = groupInfo.groupMemberList_;
                            this.bitField0_ &= -257;
                        } else {
                            ensureGroupMemberListIsMutable();
                            this.groupMemberList_.addAll(groupInfo.groupMemberList_);
                        }
                    }
                    setUnknownFields(getUnknownFields().concat(groupInfo.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasGroupId() && hasVersion() && hasGroupName() && hasGroupAvatar() && hasGroupCreatorId() && hasGroupType() && hasShieldStatus() && hasConferenceid()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                GroupInfo groupInfo;
                GroupInfo groupInfo2;
                try {
                    GroupInfo groupInfo3 = (GroupInfo) GroupInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (groupInfo3 != null) {
                        mergeFrom(groupInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    groupInfo2 = (GroupInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    groupInfo = groupInfo2;
                    th = th2;
                }
                if (groupInfo != null) {
                    mergeFrom(groupInfo);
                }
                throw th;
            }

            public boolean hasGroupId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getGroupId() {
                return this.groupId_;
            }

            public Builder setGroupId(int i) {
                this.bitField0_ |= 1;
                this.groupId_ = i;
                return this;
            }

            public Builder clearGroupId() {
                this.bitField0_ &= -2;
                this.groupId_ = 0;
                return this;
            }

            public boolean hasVersion() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 2;
                this.version_ = i;
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -3;
                this.version_ = 0;
                return this;
            }

            public boolean hasGroupName() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getGroupName() {
                Object obj = this.groupName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.groupName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getGroupNameBytes() {
                Object obj = this.groupName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.groupName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setGroupName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.groupName_ = str;
                return this;
            }

            public Builder clearGroupName() {
                this.bitField0_ &= -5;
                this.groupName_ = GroupInfo.getDefaultInstance().getGroupName();
                return this;
            }

            public Builder setGroupNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.groupName_ = byteString;
                return this;
            }

            public boolean hasGroupAvatar() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getGroupAvatar() {
                Object obj = this.groupAvatar_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.groupAvatar_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getGroupAvatarBytes() {
                Object obj = this.groupAvatar_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.groupAvatar_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setGroupAvatar(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.groupAvatar_ = str;
                return this;
            }

            public Builder clearGroupAvatar() {
                this.bitField0_ &= -9;
                this.groupAvatar_ = GroupInfo.getDefaultInstance().getGroupAvatar();
                return this;
            }

            public Builder setGroupAvatarBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.groupAvatar_ = byteString;
                return this;
            }

            public boolean hasGroupCreatorId() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getGroupCreatorId() {
                return this.groupCreatorId_;
            }

            public Builder setGroupCreatorId(int i) {
                this.bitField0_ |= 16;
                this.groupCreatorId_ = i;
                return this;
            }

            public Builder clearGroupCreatorId() {
                this.bitField0_ &= -17;
                this.groupCreatorId_ = 0;
                return this;
            }

            public boolean hasGroupType() {
                return (this.bitField0_ & 32) == 32;
            }

            public GroupType getGroupType() {
                return this.groupType_;
            }

            public Builder setGroupType(GroupType groupType) {
                if (groupType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.groupType_ = groupType;
                return this;
            }

            public Builder clearGroupType() {
                this.bitField0_ &= -33;
                this.groupType_ = GroupType.GROUP_TYPE_NORMAL;
                return this;
            }

            public boolean hasShieldStatus() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getShieldStatus() {
                return this.shieldStatus_;
            }

            public Builder setShieldStatus(int i) {
                this.bitField0_ |= 64;
                this.shieldStatus_ = i;
                return this;
            }

            public Builder clearShieldStatus() {
                this.bitField0_ &= -65;
                this.shieldStatus_ = 0;
                return this;
            }

            public boolean hasConferenceid() {
                return (this.bitField0_ & 128) == 128;
            }

            public String getConferenceid() {
                Object obj = this.conferenceid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.conferenceid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getConferenceidBytes() {
                Object obj = this.conferenceid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.conferenceid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setConferenceid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.conferenceid_ = str;
                return this;
            }

            public Builder clearConferenceid() {
                this.bitField0_ &= -129;
                this.conferenceid_ = GroupInfo.getDefaultInstance().getConferenceid();
                return this;
            }

            public Builder setConferenceidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.conferenceid_ = byteString;
                return this;
            }

            private void ensureGroupMemberListIsMutable() {
                if ((this.bitField0_ & 256) != 256) {
                    this.groupMemberList_ = new ArrayList(this.groupMemberList_);
                    this.bitField0_ |= 256;
                }
            }

            public List<Integer> getGroupMemberListList() {
                return Collections.unmodifiableList(this.groupMemberList_);
            }

            public int getGroupMemberListCount() {
                return this.groupMemberList_.size();
            }

            public int getGroupMemberList(int i) {
                return ((Integer) this.groupMemberList_.get(i)).intValue();
            }

            public Builder setGroupMemberList(int i, int i2) {
                ensureGroupMemberListIsMutable();
                this.groupMemberList_.set(i, Integer.valueOf(i2));
                return this;
            }

            public Builder addGroupMemberList(int i) {
                ensureGroupMemberListIsMutable();
                this.groupMemberList_.add(Integer.valueOf(i));
                return this;
            }

            public Builder addAllGroupMemberList(Iterable<? extends Integer> iterable) {
                ensureGroupMemberListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.groupMemberList_);
                return this;
            }

            public Builder clearGroupMemberList() {
                this.groupMemberList_ = Collections.emptyList();
                this.bitField0_ &= -257;
                return this;
            }
        }

        private GroupInfo(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private GroupInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static GroupInfo getDefaultInstance() {
            return defaultInstance;
        }

        public GroupInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        private GroupInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            boolean z = false;
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z2 = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.groupId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.version_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.groupName_ = readBytes;
                            break;
                        case 34:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.groupAvatar_ = readBytes2;
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.groupCreatorId_ = codedInputStream.readUInt32();
                            break;
                        case 48:
                            int readEnum = codedInputStream.readEnum();
                            GroupType valueOf = GroupType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 32;
                                this.groupType_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 56:
                            this.bitField0_ |= 64;
                            this.shieldStatus_ = codedInputStream.readUInt32();
                            break;
                        case 66:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 128;
                            this.conferenceid_ = readBytes3;
                            break;
                        case 72:
                            if (!(z2 & true)) {
                                this.groupMemberList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.groupMemberList_.add(Integer.valueOf(codedInputStream.readUInt32()));
                            break;
                        case 74:
                            int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            if (!(z2 & true) && codedInputStream.getBytesUntilLimit() > 0) {
                                this.groupMemberList_ = new ArrayList();
                                z2 |= true;
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.groupMemberList_.add(Integer.valueOf(codedInputStream.readUInt32()));
                            }
                            codedInputStream.popLimit(pushLimit);
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    if (z2 & true) {
                        this.groupMemberList_ = Collections.unmodifiableList(this.groupMemberList_);
                    }
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.groupMemberList_ = Collections.unmodifiableList(this.groupMemberList_);
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<GroupInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasGroupId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getGroupId() {
            return this.groupId_;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasGroupName() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getGroupName() {
            Object obj = this.groupName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.groupName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getGroupNameBytes() {
            Object obj = this.groupName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.groupName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasGroupAvatar() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getGroupAvatar() {
            Object obj = this.groupAvatar_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.groupAvatar_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getGroupAvatarBytes() {
            Object obj = this.groupAvatar_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.groupAvatar_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasGroupCreatorId() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getGroupCreatorId() {
            return this.groupCreatorId_;
        }

        public boolean hasGroupType() {
            return (this.bitField0_ & 32) == 32;
        }

        public GroupType getGroupType() {
            return this.groupType_;
        }

        public boolean hasShieldStatus() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getShieldStatus() {
            return this.shieldStatus_;
        }

        public boolean hasConferenceid() {
            return (this.bitField0_ & 128) == 128;
        }

        public String getConferenceid() {
            Object obj = this.conferenceid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.conferenceid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getConferenceidBytes() {
            Object obj = this.conferenceid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.conferenceid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public List<Integer> getGroupMemberListList() {
            return this.groupMemberList_;
        }

        public int getGroupMemberListCount() {
            return this.groupMemberList_.size();
        }

        public int getGroupMemberList(int i) {
            return ((Integer) this.groupMemberList_.get(i)).intValue();
        }

        private void initFields() {
            this.groupId_ = 0;
            this.version_ = 0;
            this.groupName_ = "";
            this.groupAvatar_ = "";
            this.groupCreatorId_ = 0;
            this.groupType_ = GroupType.GROUP_TYPE_NORMAL;
            this.shieldStatus_ = 0;
            this.conferenceid_ = "";
            this.groupMemberList_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasGroupId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasVersion()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasGroupName()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasGroupAvatar()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasGroupCreatorId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasGroupType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasShieldStatus()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasConferenceid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.groupId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.version_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getGroupNameBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getGroupAvatarBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt32(5, this.groupCreatorId_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeEnum(6, this.groupType_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt32(7, this.shieldStatus_);
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeBytes(8, getConferenceidBytes());
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.groupMemberList_.size()) {
                    codedOutputStream.writeUInt32(9, ((Integer) this.groupMemberList_.get(i2)).intValue());
                    i = i2 + 1;
                } else {
                    codedOutputStream.writeRawBytes(this.unknownFields);
                    return;
                }
            }
        }

        public int getSerializedSize() {
            int i;
            int i2;
            int i3 = 0;
            int i4 = this.memoizedSerializedSize;
            if (i4 != -1) {
                return i4;
            }
            if ((this.bitField0_ & 1) == 1) {
                i = CodedOutputStream.computeUInt32Size(1, this.groupId_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeUInt32Size(2, this.version_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i += CodedOutputStream.computeBytesSize(3, getGroupNameBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i += CodedOutputStream.computeBytesSize(4, getGroupAvatarBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i += CodedOutputStream.computeUInt32Size(5, this.groupCreatorId_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i += CodedOutputStream.computeEnumSize(6, this.groupType_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                i += CodedOutputStream.computeUInt32Size(7, this.shieldStatus_);
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 = i + CodedOutputStream.computeBytesSize(8, getConferenceidBytes());
            } else {
                i2 = i;
            }
            int i5 = 0;
            while (i3 < this.groupMemberList_.size()) {
                i3++;
                i5 = CodedOutputStream.computeUInt32SizeNoTag(((Integer) this.groupMemberList_.get(i3)).intValue()) + i5;
            }
            int size = i2 + i5 + (getGroupMemberListList().size() * 1) + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static GroupInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (GroupInfo) PARSER.parseFrom(byteString);
        }

        public static GroupInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (GroupInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static GroupInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (GroupInfo) PARSER.parseFrom(bArr);
        }

        public static GroupInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (GroupInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static GroupInfo parseFrom(InputStream inputStream) throws IOException {
            return (GroupInfo) PARSER.parseFrom(inputStream);
        }

        public static GroupInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (GroupInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static GroupInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (GroupInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static GroupInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (GroupInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static GroupInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (GroupInfo) PARSER.parseFrom(codedInputStream);
        }

        public static GroupInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (GroupInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(GroupInfo groupInfo) {
            return newBuilder().mergeFrom(groupInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public enum GroupInfoChangeReason implements EnumLite {
        REASON_CREATOR_LEAVE_GROUP(0, 1),
        REASON_CREATOR_TRANSFER_CREATOR(1, 2),
        REASON_CREATOR_UPDATE_GROUPNAME(2, 3);
        
        public static final int REASON_CREATOR_LEAVE_GROUP_VALUE = 1;
        public static final int REASON_CREATOR_TRANSFER_CREATOR_VALUE = 2;
        public static final int REASON_CREATOR_UPDATE_GROUPNAME_VALUE = 3;
        private static EnumLiteMap<GroupInfoChangeReason> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<GroupInfoChangeReason>() {
                public GroupInfoChangeReason findValueByNumber(int i) {
                    return GroupInfoChangeReason.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static GroupInfoChangeReason valueOf(int i) {
            switch (i) {
                case 1:
                    return REASON_CREATOR_LEAVE_GROUP;
                case 2:
                    return REASON_CREATOR_TRANSFER_CREATOR;
                case 3:
                    return REASON_CREATOR_UPDATE_GROUPNAME;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<GroupInfoChangeReason> internalGetValueMap() {
            return internalValueMap;
        }

        private GroupInfoChangeReason(int i, int i2) {
            this.value = i2;
        }
    }

    public interface GroupInfoOrBuilder extends MessageLiteOrBuilder {
        String getConferenceid();

        ByteString getConferenceidBytes();

        String getGroupAvatar();

        ByteString getGroupAvatarBytes();

        int getGroupCreatorId();

        int getGroupId();

        int getGroupMemberList(int i);

        int getGroupMemberListCount();

        List<Integer> getGroupMemberListList();

        String getGroupName();

        ByteString getGroupNameBytes();

        GroupType getGroupType();

        int getShieldStatus();

        int getVersion();

        boolean hasConferenceid();

        boolean hasGroupAvatar();

        boolean hasGroupCreatorId();

        boolean hasGroupId();

        boolean hasGroupName();

        boolean hasGroupType();

        boolean hasShieldStatus();

        boolean hasVersion();
    }

    public enum GroupModifyType implements EnumLite {
        GROUP_MODIFY_TYPE_ADD(0, 1),
        GROUP_MODIFY_TYPE_DEL(1, 2);
        
        public static final int GROUP_MODIFY_TYPE_ADD_VALUE = 1;
        public static final int GROUP_MODIFY_TYPE_DEL_VALUE = 2;
        private static EnumLiteMap<GroupModifyType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<GroupModifyType>() {
                public GroupModifyType findValueByNumber(int i) {
                    return GroupModifyType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static GroupModifyType valueOf(int i) {
            switch (i) {
                case 1:
                    return GROUP_MODIFY_TYPE_ADD;
                case 2:
                    return GROUP_MODIFY_TYPE_DEL;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<GroupModifyType> internalGetValueMap() {
            return internalValueMap;
        }

        private GroupModifyType(int i, int i2) {
            this.value = i2;
        }
    }

    public enum GroupType implements EnumLite {
        GROUP_TYPE_NORMAL(0, 1),
        GROUP_TYPE_TMP(1, 2);
        
        public static final int GROUP_TYPE_NORMAL_VALUE = 1;
        public static final int GROUP_TYPE_TMP_VALUE = 2;
        private static EnumLiteMap<GroupType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<GroupType>() {
                public GroupType findValueByNumber(int i) {
                    return GroupType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static GroupType valueOf(int i) {
            switch (i) {
                case 1:
                    return GROUP_TYPE_NORMAL;
                case 2:
                    return GROUP_TYPE_TMP;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<GroupType> internalGetValueMap() {
            return internalValueMap;
        }

        private GroupType(int i, int i2) {
            this.value = i2;
        }
    }

    public static final class GroupUserInfo extends GeneratedMessageLite implements GroupUserInfoOrBuilder {
        public static final int AVATAR_URL_FIELD_NUMBER = 7;
        public static final int CREATED_TIME_FIELD_NUMBER = 4;
        public static final int DEPARTMENT_ID_FIELD_NUMBER = 8;
        public static final int EMAIL_FIELD_NUMBER = 9;
        public static final int GROUP_ID_FIELD_NUMBER = 1;
        public static final int INCONFERENCE_FIELD_NUMBER = 15;
        public static final int NICK_NAME_INGROUP_FIELD_NUMBER = 3;
        public static Parser<GroupUserInfo> PARSER = new AbstractParser<GroupUserInfo>() {
            public GroupUserInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new GroupUserInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PHONE_VERIFIED_FIELD_NUMBER = 14;
        public static final int STATUS_FIELD_NUMBER = 13;
        public static final int USER_DOMAIN_FIELD_NUMBER = 12;
        public static final int USER_GENDER_FIELD_NUMBER = 5;
        public static final int USER_ID_FIELD_NUMBER = 2;
        public static final int USER_NICK_NAME_FIELD_NUMBER = 6;
        public static final int USER_REAL_NAME_FIELD_NUMBER = 10;
        public static final int USER_TEL_FIELD_NUMBER = 11;
        private static final GroupUserInfo defaultInstance = new GroupUserInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public Object avatarUrl_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int createdTime_;
        /* access modifiers changed from: private */
        public int departmentId_;
        /* access modifiers changed from: private */
        public Object email_;
        /* access modifiers changed from: private */
        public int groupId_;
        /* access modifiers changed from: private */
        public int inconference_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object nickNameIngroup_;
        /* access modifiers changed from: private */
        public int phoneVerified_;
        /* access modifiers changed from: private */
        public int status_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public Object userDomain_;
        /* access modifiers changed from: private */
        public int userGender_;
        /* access modifiers changed from: private */
        public int userId_;
        /* access modifiers changed from: private */
        public Object userNickName_;
        /* access modifiers changed from: private */
        public Object userRealName_;
        /* access modifiers changed from: private */
        public Object userTel_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<GroupUserInfo, Builder> implements GroupUserInfoOrBuilder {
            private Object avatarUrl_ = "";
            private int bitField0_;
            private int createdTime_;
            private int departmentId_;
            private Object email_ = "";
            private int groupId_;
            private int inconference_;
            private Object nickNameIngroup_ = "";
            private int phoneVerified_;
            private int status_;
            private Object userDomain_ = "";
            private int userGender_;
            private int userId_;
            private Object userNickName_ = "";
            private Object userRealName_ = "";
            private Object userTel_ = "";

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.groupId_ = 0;
                this.bitField0_ &= -2;
                this.userId_ = 0;
                this.bitField0_ &= -3;
                this.nickNameIngroup_ = "";
                this.bitField0_ &= -5;
                this.createdTime_ = 0;
                this.bitField0_ &= -9;
                this.userGender_ = 0;
                this.bitField0_ &= -17;
                this.userNickName_ = "";
                this.bitField0_ &= -33;
                this.avatarUrl_ = "";
                this.bitField0_ &= -65;
                this.departmentId_ = 0;
                this.bitField0_ &= -129;
                this.email_ = "";
                this.bitField0_ &= -257;
                this.userRealName_ = "";
                this.bitField0_ &= -513;
                this.userTel_ = "";
                this.bitField0_ &= -1025;
                this.userDomain_ = "";
                this.bitField0_ &= -2049;
                this.status_ = 0;
                this.bitField0_ &= -4097;
                this.phoneVerified_ = 0;
                this.bitField0_ &= -8193;
                this.inconference_ = 0;
                this.bitField0_ &= -16385;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public GroupUserInfo getDefaultInstanceForType() {
                return GroupUserInfo.getDefaultInstance();
            }

            public GroupUserInfo build() {
                GroupUserInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public GroupUserInfo buildPartial() {
                int i = 1;
                GroupUserInfo groupUserInfo = new GroupUserInfo((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                groupUserInfo.groupId_ = this.groupId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                groupUserInfo.userId_ = this.userId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                groupUserInfo.nickNameIngroup_ = this.nickNameIngroup_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                groupUserInfo.createdTime_ = this.createdTime_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                groupUserInfo.userGender_ = this.userGender_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                groupUserInfo.userNickName_ = this.userNickName_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                groupUserInfo.avatarUrl_ = this.avatarUrl_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                groupUserInfo.departmentId_ = this.departmentId_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                groupUserInfo.email_ = this.email_;
                if ((i2 & 512) == 512) {
                    i |= 512;
                }
                groupUserInfo.userRealName_ = this.userRealName_;
                if ((i2 & 1024) == 1024) {
                    i |= 1024;
                }
                groupUserInfo.userTel_ = this.userTel_;
                if ((i2 & 2048) == 2048) {
                    i |= 2048;
                }
                groupUserInfo.userDomain_ = this.userDomain_;
                if ((i2 & 4096) == 4096) {
                    i |= 4096;
                }
                groupUserInfo.status_ = this.status_;
                if ((i2 & 8192) == 8192) {
                    i |= 8192;
                }
                groupUserInfo.phoneVerified_ = this.phoneVerified_;
                if ((i2 & 16384) == 16384) {
                    i |= 16384;
                }
                groupUserInfo.inconference_ = this.inconference_;
                groupUserInfo.bitField0_ = i;
                return groupUserInfo;
            }

            public Builder mergeFrom(GroupUserInfo groupUserInfo) {
                if (groupUserInfo != GroupUserInfo.getDefaultInstance()) {
                    if (groupUserInfo.hasGroupId()) {
                        setGroupId(groupUserInfo.getGroupId());
                    }
                    if (groupUserInfo.hasUserId()) {
                        setUserId(groupUserInfo.getUserId());
                    }
                    if (groupUserInfo.hasNickNameIngroup()) {
                        this.bitField0_ |= 4;
                        this.nickNameIngroup_ = groupUserInfo.nickNameIngroup_;
                    }
                    if (groupUserInfo.hasCreatedTime()) {
                        setCreatedTime(groupUserInfo.getCreatedTime());
                    }
                    if (groupUserInfo.hasUserGender()) {
                        setUserGender(groupUserInfo.getUserGender());
                    }
                    if (groupUserInfo.hasUserNickName()) {
                        this.bitField0_ |= 32;
                        this.userNickName_ = groupUserInfo.userNickName_;
                    }
                    if (groupUserInfo.hasAvatarUrl()) {
                        this.bitField0_ |= 64;
                        this.avatarUrl_ = groupUserInfo.avatarUrl_;
                    }
                    if (groupUserInfo.hasDepartmentId()) {
                        setDepartmentId(groupUserInfo.getDepartmentId());
                    }
                    if (groupUserInfo.hasEmail()) {
                        this.bitField0_ |= 256;
                        this.email_ = groupUserInfo.email_;
                    }
                    if (groupUserInfo.hasUserRealName()) {
                        this.bitField0_ |= 512;
                        this.userRealName_ = groupUserInfo.userRealName_;
                    }
                    if (groupUserInfo.hasUserTel()) {
                        this.bitField0_ |= 1024;
                        this.userTel_ = groupUserInfo.userTel_;
                    }
                    if (groupUserInfo.hasUserDomain()) {
                        this.bitField0_ |= 2048;
                        this.userDomain_ = groupUserInfo.userDomain_;
                    }
                    if (groupUserInfo.hasStatus()) {
                        setStatus(groupUserInfo.getStatus());
                    }
                    if (groupUserInfo.hasPhoneVerified()) {
                        setPhoneVerified(groupUserInfo.getPhoneVerified());
                    }
                    if (groupUserInfo.hasInconference()) {
                        setInconference(groupUserInfo.getInconference());
                    }
                    setUnknownFields(getUnknownFields().concat(groupUserInfo.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                GroupUserInfo groupUserInfo;
                GroupUserInfo groupUserInfo2;
                try {
                    GroupUserInfo groupUserInfo3 = (GroupUserInfo) GroupUserInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (groupUserInfo3 != null) {
                        mergeFrom(groupUserInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    groupUserInfo2 = (GroupUserInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    groupUserInfo = groupUserInfo2;
                    th = th2;
                }
                if (groupUserInfo != null) {
                    mergeFrom(groupUserInfo);
                }
                throw th;
            }

            public boolean hasGroupId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getGroupId() {
                return this.groupId_;
            }

            public Builder setGroupId(int i) {
                this.bitField0_ |= 1;
                this.groupId_ = i;
                return this;
            }

            public Builder clearGroupId() {
                this.bitField0_ &= -2;
                this.groupId_ = 0;
                return this;
            }

            public boolean hasUserId() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getUserId() {
                return this.userId_;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 2;
                this.userId_ = i;
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -3;
                this.userId_ = 0;
                return this;
            }

            public boolean hasNickNameIngroup() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getNickNameIngroup() {
                Object obj = this.nickNameIngroup_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.nickNameIngroup_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getNickNameIngroupBytes() {
                Object obj = this.nickNameIngroup_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.nickNameIngroup_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setNickNameIngroup(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.nickNameIngroup_ = str;
                return this;
            }

            public Builder clearNickNameIngroup() {
                this.bitField0_ &= -5;
                this.nickNameIngroup_ = GroupUserInfo.getDefaultInstance().getNickNameIngroup();
                return this;
            }

            public Builder setNickNameIngroupBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.nickNameIngroup_ = byteString;
                return this;
            }

            public boolean hasCreatedTime() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getCreatedTime() {
                return this.createdTime_;
            }

            public Builder setCreatedTime(int i) {
                this.bitField0_ |= 8;
                this.createdTime_ = i;
                return this;
            }

            public Builder clearCreatedTime() {
                this.bitField0_ &= -9;
                this.createdTime_ = 0;
                return this;
            }

            public boolean hasUserGender() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getUserGender() {
                return this.userGender_;
            }

            public Builder setUserGender(int i) {
                this.bitField0_ |= 16;
                this.userGender_ = i;
                return this;
            }

            public Builder clearUserGender() {
                this.bitField0_ &= -17;
                this.userGender_ = 0;
                return this;
            }

            public boolean hasUserNickName() {
                return (this.bitField0_ & 32) == 32;
            }

            public String getUserNickName() {
                Object obj = this.userNickName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.userNickName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUserNickNameBytes() {
                Object obj = this.userNickName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userNickName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUserNickName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.userNickName_ = str;
                return this;
            }

            public Builder clearUserNickName() {
                this.bitField0_ &= -33;
                this.userNickName_ = GroupUserInfo.getDefaultInstance().getUserNickName();
                return this;
            }

            public Builder setUserNickNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.userNickName_ = byteString;
                return this;
            }

            public boolean hasAvatarUrl() {
                return (this.bitField0_ & 64) == 64;
            }

            public String getAvatarUrl() {
                Object obj = this.avatarUrl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.avatarUrl_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getAvatarUrlBytes() {
                Object obj = this.avatarUrl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.avatarUrl_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setAvatarUrl(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.avatarUrl_ = str;
                return this;
            }

            public Builder clearAvatarUrl() {
                this.bitField0_ &= -65;
                this.avatarUrl_ = GroupUserInfo.getDefaultInstance().getAvatarUrl();
                return this;
            }

            public Builder setAvatarUrlBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.avatarUrl_ = byteString;
                return this;
            }

            public boolean hasDepartmentId() {
                return (this.bitField0_ & 128) == 128;
            }

            public int getDepartmentId() {
                return this.departmentId_;
            }

            public Builder setDepartmentId(int i) {
                this.bitField0_ |= 128;
                this.departmentId_ = i;
                return this;
            }

            public Builder clearDepartmentId() {
                this.bitField0_ &= -129;
                this.departmentId_ = 0;
                return this;
            }

            public boolean hasEmail() {
                return (this.bitField0_ & 256) == 256;
            }

            public String getEmail() {
                Object obj = this.email_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.email_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getEmailBytes() {
                Object obj = this.email_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.email_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setEmail(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.email_ = str;
                return this;
            }

            public Builder clearEmail() {
                this.bitField0_ &= -257;
                this.email_ = GroupUserInfo.getDefaultInstance().getEmail();
                return this;
            }

            public Builder setEmailBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.email_ = byteString;
                return this;
            }

            public boolean hasUserRealName() {
                return (this.bitField0_ & 512) == 512;
            }

            public String getUserRealName() {
                Object obj = this.userRealName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.userRealName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUserRealNameBytes() {
                Object obj = this.userRealName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userRealName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUserRealName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 512;
                this.userRealName_ = str;
                return this;
            }

            public Builder clearUserRealName() {
                this.bitField0_ &= -513;
                this.userRealName_ = GroupUserInfo.getDefaultInstance().getUserRealName();
                return this;
            }

            public Builder setUserRealNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 512;
                this.userRealName_ = byteString;
                return this;
            }

            public boolean hasUserTel() {
                return (this.bitField0_ & 1024) == 1024;
            }

            public String getUserTel() {
                Object obj = this.userTel_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.userTel_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUserTelBytes() {
                Object obj = this.userTel_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userTel_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUserTel(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1024;
                this.userTel_ = str;
                return this;
            }

            public Builder clearUserTel() {
                this.bitField0_ &= -1025;
                this.userTel_ = GroupUserInfo.getDefaultInstance().getUserTel();
                return this;
            }

            public Builder setUserTelBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1024;
                this.userTel_ = byteString;
                return this;
            }

            public boolean hasUserDomain() {
                return (this.bitField0_ & 2048) == 2048;
            }

            public String getUserDomain() {
                Object obj = this.userDomain_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.userDomain_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUserDomainBytes() {
                Object obj = this.userDomain_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userDomain_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUserDomain(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2048;
                this.userDomain_ = str;
                return this;
            }

            public Builder clearUserDomain() {
                this.bitField0_ &= -2049;
                this.userDomain_ = GroupUserInfo.getDefaultInstance().getUserDomain();
                return this;
            }

            public Builder setUserDomainBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2048;
                this.userDomain_ = byteString;
                return this;
            }

            public boolean hasStatus() {
                return (this.bitField0_ & 4096) == 4096;
            }

            public int getStatus() {
                return this.status_;
            }

            public Builder setStatus(int i) {
                this.bitField0_ |= 4096;
                this.status_ = i;
                return this;
            }

            public Builder clearStatus() {
                this.bitField0_ &= -4097;
                this.status_ = 0;
                return this;
            }

            public boolean hasPhoneVerified() {
                return (this.bitField0_ & 8192) == 8192;
            }

            public int getPhoneVerified() {
                return this.phoneVerified_;
            }

            public Builder setPhoneVerified(int i) {
                this.bitField0_ |= 8192;
                this.phoneVerified_ = i;
                return this;
            }

            public Builder clearPhoneVerified() {
                this.bitField0_ &= -8193;
                this.phoneVerified_ = 0;
                return this;
            }

            public boolean hasInconference() {
                return (this.bitField0_ & 16384) == 16384;
            }

            public int getInconference() {
                return this.inconference_;
            }

            public Builder setInconference(int i) {
                this.bitField0_ |= 16384;
                this.inconference_ = i;
                return this;
            }

            public Builder clearInconference() {
                this.bitField0_ &= -16385;
                this.inconference_ = 0;
                return this;
            }
        }

        private GroupUserInfo(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private GroupUserInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static GroupUserInfo getDefaultInstance() {
            return defaultInstance;
        }

        public GroupUserInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        private GroupUserInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.groupId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.userId_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.nickNameIngroup_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.createdTime_ = codedInputStream.readUInt32();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.userGender_ = codedInputStream.readUInt32();
                            break;
                        case 50:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 32;
                            this.userNickName_ = readBytes2;
                            break;
                        case 58:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 64;
                            this.avatarUrl_ = readBytes3;
                            break;
                        case 64:
                            this.bitField0_ |= 128;
                            this.departmentId_ = codedInputStream.readUInt32();
                            break;
                        case 74:
                            ByteString readBytes4 = codedInputStream.readBytes();
                            this.bitField0_ |= 256;
                            this.email_ = readBytes4;
                            break;
                        case 82:
                            ByteString readBytes5 = codedInputStream.readBytes();
                            this.bitField0_ |= 512;
                            this.userRealName_ = readBytes5;
                            break;
                        case 90:
                            ByteString readBytes6 = codedInputStream.readBytes();
                            this.bitField0_ |= 1024;
                            this.userTel_ = readBytes6;
                            break;
                        case 98:
                            ByteString readBytes7 = codedInputStream.readBytes();
                            this.bitField0_ |= 2048;
                            this.userDomain_ = readBytes7;
                            break;
                        case 104:
                            this.bitField0_ |= 4096;
                            this.status_ = codedInputStream.readUInt32();
                            break;
                        case 112:
                            this.bitField0_ |= 8192;
                            this.phoneVerified_ = codedInputStream.readUInt32();
                            break;
                        case 120:
                            this.bitField0_ |= 16384;
                            this.inconference_ = codedInputStream.readUInt32();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<GroupUserInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasGroupId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getGroupId() {
            return this.groupId_;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasNickNameIngroup() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getNickNameIngroup() {
            Object obj = this.nickNameIngroup_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.nickNameIngroup_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getNickNameIngroupBytes() {
            Object obj = this.nickNameIngroup_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nickNameIngroup_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasCreatedTime() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getCreatedTime() {
            return this.createdTime_;
        }

        public boolean hasUserGender() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getUserGender() {
            return this.userGender_;
        }

        public boolean hasUserNickName() {
            return (this.bitField0_ & 32) == 32;
        }

        public String getUserNickName() {
            Object obj = this.userNickName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userNickName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUserNickNameBytes() {
            Object obj = this.userNickName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userNickName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasAvatarUrl() {
            return (this.bitField0_ & 64) == 64;
        }

        public String getAvatarUrl() {
            Object obj = this.avatarUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.avatarUrl_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getAvatarUrlBytes() {
            Object obj = this.avatarUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.avatarUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasDepartmentId() {
            return (this.bitField0_ & 128) == 128;
        }

        public int getDepartmentId() {
            return this.departmentId_;
        }

        public boolean hasEmail() {
            return (this.bitField0_ & 256) == 256;
        }

        public String getEmail() {
            Object obj = this.email_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.email_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getEmailBytes() {
            Object obj = this.email_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.email_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUserRealName() {
            return (this.bitField0_ & 512) == 512;
        }

        public String getUserRealName() {
            Object obj = this.userRealName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userRealName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUserRealNameBytes() {
            Object obj = this.userRealName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userRealName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUserTel() {
            return (this.bitField0_ & 1024) == 1024;
        }

        public String getUserTel() {
            Object obj = this.userTel_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userTel_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUserTelBytes() {
            Object obj = this.userTel_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userTel_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUserDomain() {
            return (this.bitField0_ & 2048) == 2048;
        }

        public String getUserDomain() {
            Object obj = this.userDomain_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userDomain_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUserDomainBytes() {
            Object obj = this.userDomain_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userDomain_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasStatus() {
            return (this.bitField0_ & 4096) == 4096;
        }

        public int getStatus() {
            return this.status_;
        }

        public boolean hasPhoneVerified() {
            return (this.bitField0_ & 8192) == 8192;
        }

        public int getPhoneVerified() {
            return this.phoneVerified_;
        }

        public boolean hasInconference() {
            return (this.bitField0_ & 16384) == 16384;
        }

        public int getInconference() {
            return this.inconference_;
        }

        private void initFields() {
            this.groupId_ = 0;
            this.userId_ = 0;
            this.nickNameIngroup_ = "";
            this.createdTime_ = 0;
            this.userGender_ = 0;
            this.userNickName_ = "";
            this.avatarUrl_ = "";
            this.departmentId_ = 0;
            this.email_ = "";
            this.userRealName_ = "";
            this.userTel_ = "";
            this.userDomain_ = "";
            this.status_ = 0;
            this.phoneVerified_ = 0;
            this.inconference_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.groupId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.userId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getNickNameIngroupBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.createdTime_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt32(5, this.userGender_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, getUserNickNameBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBytes(7, getAvatarUrlBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeUInt32(8, this.departmentId_);
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeBytes(9, getEmailBytes());
            }
            if ((this.bitField0_ & 512) == 512) {
                codedOutputStream.writeBytes(10, getUserRealNameBytes());
            }
            if ((this.bitField0_ & 1024) == 1024) {
                codedOutputStream.writeBytes(11, getUserTelBytes());
            }
            if ((this.bitField0_ & 2048) == 2048) {
                codedOutputStream.writeBytes(12, getUserDomainBytes());
            }
            if ((this.bitField0_ & 4096) == 4096) {
                codedOutputStream.writeUInt32(13, this.status_);
            }
            if ((this.bitField0_ & 8192) == 8192) {
                codedOutputStream.writeUInt32(14, this.phoneVerified_);
            }
            if ((this.bitField0_ & 16384) == 16384) {
                codedOutputStream.writeUInt32(15, this.inconference_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.groupId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.userId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getNickNameIngroupBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.createdTime_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt32Size(5, this.userGender_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(6, getUserNickNameBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeBytesSize(7, getAvatarUrlBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeUInt32Size(8, this.departmentId_);
            }
            if ((this.bitField0_ & 256) == 256) {
                i2 += CodedOutputStream.computeBytesSize(9, getEmailBytes());
            }
            if ((this.bitField0_ & 512) == 512) {
                i2 += CodedOutputStream.computeBytesSize(10, getUserRealNameBytes());
            }
            if ((this.bitField0_ & 1024) == 1024) {
                i2 += CodedOutputStream.computeBytesSize(11, getUserTelBytes());
            }
            if ((this.bitField0_ & 2048) == 2048) {
                i2 += CodedOutputStream.computeBytesSize(12, getUserDomainBytes());
            }
            if ((this.bitField0_ & 4096) == 4096) {
                i2 += CodedOutputStream.computeUInt32Size(13, this.status_);
            }
            if ((this.bitField0_ & 8192) == 8192) {
                i2 += CodedOutputStream.computeUInt32Size(14, this.phoneVerified_);
            }
            if ((this.bitField0_ & 16384) == 16384) {
                i2 += CodedOutputStream.computeUInt32Size(15, this.inconference_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static GroupUserInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (GroupUserInfo) PARSER.parseFrom(byteString);
        }

        public static GroupUserInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (GroupUserInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static GroupUserInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (GroupUserInfo) PARSER.parseFrom(bArr);
        }

        public static GroupUserInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (GroupUserInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static GroupUserInfo parseFrom(InputStream inputStream) throws IOException {
            return (GroupUserInfo) PARSER.parseFrom(inputStream);
        }

        public static GroupUserInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (GroupUserInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static GroupUserInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (GroupUserInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static GroupUserInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (GroupUserInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static GroupUserInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (GroupUserInfo) PARSER.parseFrom(codedInputStream);
        }

        public static GroupUserInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (GroupUserInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(GroupUserInfo groupUserInfo) {
            return newBuilder().mergeFrom(groupUserInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface GroupUserInfoOrBuilder extends MessageLiteOrBuilder {
        String getAvatarUrl();

        ByteString getAvatarUrlBytes();

        int getCreatedTime();

        int getDepartmentId();

        String getEmail();

        ByteString getEmailBytes();

        int getGroupId();

        int getInconference();

        String getNickNameIngroup();

        ByteString getNickNameIngroupBytes();

        int getPhoneVerified();

        int getStatus();

        String getUserDomain();

        ByteString getUserDomainBytes();

        int getUserGender();

        int getUserId();

        String getUserNickName();

        ByteString getUserNickNameBytes();

        String getUserRealName();

        ByteString getUserRealNameBytes();

        String getUserTel();

        ByteString getUserTelBytes();

        boolean hasAvatarUrl();

        boolean hasCreatedTime();

        boolean hasDepartmentId();

        boolean hasEmail();

        boolean hasGroupId();

        boolean hasInconference();

        boolean hasNickNameIngroup();

        boolean hasPhoneVerified();

        boolean hasStatus();

        boolean hasUserDomain();

        boolean hasUserGender();

        boolean hasUserId();

        boolean hasUserNickName();

        boolean hasUserRealName();

        boolean hasUserTel();
    }

    public static final class GroupVersionInfo extends GeneratedMessageLite implements GroupVersionInfoOrBuilder {
        public static final int GROUP_ID_FIELD_NUMBER = 1;
        public static Parser<GroupVersionInfo> PARSER = new AbstractParser<GroupVersionInfo>() {
            public GroupVersionInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new GroupVersionInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int VERSION_FIELD_NUMBER = 2;
        private static final GroupVersionInfo defaultInstance = new GroupVersionInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int groupId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<GroupVersionInfo, Builder> implements GroupVersionInfoOrBuilder {
            private int bitField0_;
            private int groupId_;
            private int version_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.groupId_ = 0;
                this.bitField0_ &= -2;
                this.version_ = 0;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public GroupVersionInfo getDefaultInstanceForType() {
                return GroupVersionInfo.getDefaultInstance();
            }

            public GroupVersionInfo build() {
                GroupVersionInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public GroupVersionInfo buildPartial() {
                int i = 1;
                GroupVersionInfo groupVersionInfo = new GroupVersionInfo((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                groupVersionInfo.groupId_ = this.groupId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                groupVersionInfo.version_ = this.version_;
                groupVersionInfo.bitField0_ = i;
                return groupVersionInfo;
            }

            public Builder mergeFrom(GroupVersionInfo groupVersionInfo) {
                if (groupVersionInfo != GroupVersionInfo.getDefaultInstance()) {
                    if (groupVersionInfo.hasGroupId()) {
                        setGroupId(groupVersionInfo.getGroupId());
                    }
                    if (groupVersionInfo.hasVersion()) {
                        setVersion(groupVersionInfo.getVersion());
                    }
                    setUnknownFields(getUnknownFields().concat(groupVersionInfo.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasGroupId() && hasVersion()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                GroupVersionInfo groupVersionInfo;
                GroupVersionInfo groupVersionInfo2;
                try {
                    GroupVersionInfo groupVersionInfo3 = (GroupVersionInfo) GroupVersionInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (groupVersionInfo3 != null) {
                        mergeFrom(groupVersionInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    groupVersionInfo2 = (GroupVersionInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    groupVersionInfo = groupVersionInfo2;
                    th = th2;
                }
                if (groupVersionInfo != null) {
                    mergeFrom(groupVersionInfo);
                }
                throw th;
            }

            public boolean hasGroupId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getGroupId() {
                return this.groupId_;
            }

            public Builder setGroupId(int i) {
                this.bitField0_ |= 1;
                this.groupId_ = i;
                return this;
            }

            public Builder clearGroupId() {
                this.bitField0_ &= -2;
                this.groupId_ = 0;
                return this;
            }

            public boolean hasVersion() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 2;
                this.version_ = i;
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -3;
                this.version_ = 0;
                return this;
            }
        }

        private GroupVersionInfo(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private GroupVersionInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static GroupVersionInfo getDefaultInstance() {
            return defaultInstance;
        }

        public GroupVersionInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        private GroupVersionInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.groupId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.version_ = codedInputStream.readUInt32();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<GroupVersionInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasGroupId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getGroupId() {
            return this.groupId_;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getVersion() {
            return this.version_;
        }

        private void initFields() {
            this.groupId_ = 0;
            this.version_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasGroupId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasVersion()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.groupId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.version_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.groupId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.version_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static GroupVersionInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (GroupVersionInfo) PARSER.parseFrom(byteString);
        }

        public static GroupVersionInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (GroupVersionInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static GroupVersionInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (GroupVersionInfo) PARSER.parseFrom(bArr);
        }

        public static GroupVersionInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (GroupVersionInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static GroupVersionInfo parseFrom(InputStream inputStream) throws IOException {
            return (GroupVersionInfo) PARSER.parseFrom(inputStream);
        }

        public static GroupVersionInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (GroupVersionInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static GroupVersionInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (GroupVersionInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static GroupVersionInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (GroupVersionInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static GroupVersionInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (GroupVersionInfo) PARSER.parseFrom(codedInputStream);
        }

        public static GroupVersionInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (GroupVersionInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(GroupVersionInfo groupVersionInfo) {
            return newBuilder().mergeFrom(groupVersionInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface GroupVersionInfoOrBuilder extends MessageLiteOrBuilder {
        int getGroupId();

        int getVersion();

        boolean hasGroupId();

        boolean hasVersion();
    }

    public static final class IpAddr extends GeneratedMessageLite implements IpAddrOrBuilder {
        public static final int IP_FIELD_NUMBER = 1;
        public static Parser<IpAddr> PARSER = new AbstractParser<IpAddr>() {
            public IpAddr parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IpAddr(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PORT_FIELD_NUMBER = 2;
        private static final IpAddr defaultInstance = new IpAddr(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object ip_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int port_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IpAddr, Builder> implements IpAddrOrBuilder {
            private int bitField0_;
            private Object ip_ = "";
            private int port_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.ip_ = "";
                this.bitField0_ &= -2;
                this.port_ = 0;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IpAddr getDefaultInstanceForType() {
                return IpAddr.getDefaultInstance();
            }

            public IpAddr build() {
                IpAddr buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IpAddr buildPartial() {
                int i = 1;
                IpAddr ipAddr = new IpAddr((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                ipAddr.ip_ = this.ip_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                ipAddr.port_ = this.port_;
                ipAddr.bitField0_ = i;
                return ipAddr;
            }

            public Builder mergeFrom(IpAddr ipAddr) {
                if (ipAddr != IpAddr.getDefaultInstance()) {
                    if (ipAddr.hasIp()) {
                        this.bitField0_ |= 1;
                        this.ip_ = ipAddr.ip_;
                    }
                    if (ipAddr.hasPort()) {
                        setPort(ipAddr.getPort());
                    }
                    setUnknownFields(getUnknownFields().concat(ipAddr.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasIp() && hasPort()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IpAddr ipAddr;
                IpAddr ipAddr2;
                try {
                    IpAddr ipAddr3 = (IpAddr) IpAddr.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (ipAddr3 != null) {
                        mergeFrom(ipAddr3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    ipAddr2 = (IpAddr) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    ipAddr = ipAddr2;
                    th = th2;
                }
                if (ipAddr != null) {
                    mergeFrom(ipAddr);
                }
                throw th;
            }

            public boolean hasIp() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getIp() {
                Object obj = this.ip_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.ip_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getIpBytes() {
                Object obj = this.ip_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ip_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setIp(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.ip_ = str;
                return this;
            }

            public Builder clearIp() {
                this.bitField0_ &= -2;
                this.ip_ = IpAddr.getDefaultInstance().getIp();
                return this;
            }

            public Builder setIpBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.ip_ = byteString;
                return this;
            }

            public boolean hasPort() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getPort() {
                return this.port_;
            }

            public Builder setPort(int i) {
                this.bitField0_ |= 2;
                this.port_ = i;
                return this;
            }

            public Builder clearPort() {
                this.bitField0_ &= -3;
                this.port_ = 0;
                return this;
            }
        }

        private IpAddr(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IpAddr(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IpAddr getDefaultInstance() {
            return defaultInstance;
        }

        public IpAddr getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IpAddr(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 10:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 1;
                            this.ip_ = readBytes;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.port_ = codedInputStream.readUInt32();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<IpAddr> getParserForType() {
            return PARSER;
        }

        public boolean hasIp() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getIp() {
            Object obj = this.ip_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ip_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getIpBytes() {
            Object obj = this.ip_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ip_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasPort() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getPort() {
            return this.port_;
        }

        private void initFields() {
            this.ip_ = "";
            this.port_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasIp()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasPort()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getIpBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.port_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getIpBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.port_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IpAddr parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IpAddr) PARSER.parseFrom(byteString);
        }

        public static IpAddr parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IpAddr) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IpAddr parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IpAddr) PARSER.parseFrom(bArr);
        }

        public static IpAddr parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IpAddr) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IpAddr parseFrom(InputStream inputStream) throws IOException {
            return (IpAddr) PARSER.parseFrom(inputStream);
        }

        public static IpAddr parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IpAddr) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IpAddr parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IpAddr) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IpAddr parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IpAddr) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IpAddr parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IpAddr) PARSER.parseFrom(codedInputStream);
        }

        public static IpAddr parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IpAddr) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IpAddr ipAddr) {
            return newBuilder().mergeFrom(ipAddr);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IpAddrOrBuilder extends MessageLiteOrBuilder {
        String getIp();

        ByteString getIpBytes();

        int getPort();

        boolean hasIp();

        boolean hasPort();
    }

    public enum KickReasonType implements EnumLite {
        KICK_REASON_DUPLICATE_USER(0, 1),
        KICK_REASON_MOBILE_KICK(1, 2);
        
        public static final int KICK_REASON_DUPLICATE_USER_VALUE = 1;
        public static final int KICK_REASON_MOBILE_KICK_VALUE = 2;
        private static EnumLiteMap<KickReasonType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<KickReasonType>() {
                public KickReasonType findValueByNumber(int i) {
                    return KickReasonType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static KickReasonType valueOf(int i) {
            switch (i) {
                case 1:
                    return KICK_REASON_DUPLICATE_USER;
                case 2:
                    return KICK_REASON_MOBILE_KICK;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<KickReasonType> internalGetValueMap() {
            return internalValueMap;
        }

        private KickReasonType(int i, int i2) {
            this.value = i2;
        }
    }

    public enum LoginCmdID implements EnumLite {
        CID_LOGIN_REQ_MSGSERVER(0, 257),
        CID_LOGIN_RES_MSGSERVER(1, 258),
        CID_LOGIN_REQ_USERLOGIN(2, 259),
        CID_LOGIN_RES_USERLOGIN(3, 260),
        CID_LOGIN_REQ_LOGINOUT(4, 261),
        CID_LOGIN_RES_LOGINOUT(5, 262),
        CID_LOGIN_KICK_USER(6, 263),
        CID_LOGIN_REQ_DEVICETOKEN(7, 264),
        CID_LOGIN_RES_DEVICETOKEN(8, 265),
        CID_LOGIN_REQ_KICKPCCLIENT(9, 266),
        CID_LOGIN_RES_KICKPCCLIENT(10, 267),
        CID_LOGIN_REQ_USERREG(11, 268),
        CID_LOGIN_RES_USERREG(12, 269);
        
        public static final int CID_LOGIN_KICK_USER_VALUE = 263;
        public static final int CID_LOGIN_REQ_DEVICETOKEN_VALUE = 264;
        public static final int CID_LOGIN_REQ_KICKPCCLIENT_VALUE = 266;
        public static final int CID_LOGIN_REQ_LOGINOUT_VALUE = 261;
        public static final int CID_LOGIN_REQ_MSGSERVER_VALUE = 257;
        public static final int CID_LOGIN_REQ_USERLOGIN_VALUE = 259;
        public static final int CID_LOGIN_REQ_USERREG_VALUE = 268;
        public static final int CID_LOGIN_RES_DEVICETOKEN_VALUE = 265;
        public static final int CID_LOGIN_RES_KICKPCCLIENT_VALUE = 267;
        public static final int CID_LOGIN_RES_LOGINOUT_VALUE = 262;
        public static final int CID_LOGIN_RES_MSGSERVER_VALUE = 258;
        public static final int CID_LOGIN_RES_USERLOGIN_VALUE = 260;
        public static final int CID_LOGIN_RES_USERREG_VALUE = 269;
        private static EnumLiteMap<LoginCmdID> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<LoginCmdID>() {
                public LoginCmdID findValueByNumber(int i) {
                    return LoginCmdID.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static LoginCmdID valueOf(int i) {
            switch (i) {
                case 257:
                    return CID_LOGIN_REQ_MSGSERVER;
                case 258:
                    return CID_LOGIN_RES_MSGSERVER;
                case 259:
                    return CID_LOGIN_REQ_USERLOGIN;
                case 260:
                    return CID_LOGIN_RES_USERLOGIN;
                case 261:
                    return CID_LOGIN_REQ_LOGINOUT;
                case 262:
                    return CID_LOGIN_RES_LOGINOUT;
                case 263:
                    return CID_LOGIN_KICK_USER;
                case 264:
                    return CID_LOGIN_REQ_DEVICETOKEN;
                case 265:
                    return CID_LOGIN_RES_DEVICETOKEN;
                case 266:
                    return CID_LOGIN_REQ_KICKPCCLIENT;
                case 267:
                    return CID_LOGIN_RES_KICKPCCLIENT;
                case 268:
                    return CID_LOGIN_REQ_USERREG;
                case 269:
                    return CID_LOGIN_RES_USERREG;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<LoginCmdID> internalGetValueMap() {
            return internalValueMap;
        }

        private LoginCmdID(int i, int i2) {
            this.value = i2;
        }
    }

    public enum MessageCmdID implements EnumLite {
        CID_MSG_DATA(0, CID_MSG_DATA_VALUE),
        CID_MSG_DATA_ACK(1, CID_MSG_DATA_ACK_VALUE),
        CID_MSG_READ_ACK(2, CID_MSG_READ_ACK_VALUE),
        CID_MSG_READ_NOTIFY(3, CID_MSG_READ_NOTIFY_VALUE),
        CID_MSG_TIME_REQUEST(4, CID_MSG_TIME_REQUEST_VALUE),
        CID_MSG_TIME_RESPONSE(5, CID_MSG_TIME_RESPONSE_VALUE),
        CID_MSG_UNREAD_CNT_REQUEST(6, CID_MSG_UNREAD_CNT_REQUEST_VALUE),
        CID_MSG_UNREAD_CNT_RESPONSE(7, CID_MSG_UNREAD_CNT_RESPONSE_VALUE),
        CID_MSG_LIST_REQUEST(8, CID_MSG_LIST_REQUEST_VALUE),
        CID_MSG_LIST_RESPONSE(9, CID_MSG_LIST_RESPONSE_VALUE),
        CID_MSG_GET_LATEST_MSG_ID_REQ(10, CID_MSG_GET_LATEST_MSG_ID_REQ_VALUE),
        CID_MSG_GET_LATEST_MSG_ID_RSP(11, CID_MSG_GET_LATEST_MSG_ID_RSP_VALUE),
        CID_MSG_GET_BY_MSG_ID_REQ(12, CID_MSG_GET_BY_MSG_ID_REQ_VALUE),
        CID_MSG_GET_BY_MSG_ID_RES(13, CID_MSG_GET_BY_MSG_ID_RES_VALUE);
        
        public static final int CID_MSG_DATA_ACK_VALUE = 770;
        public static final int CID_MSG_DATA_VALUE = 769;
        public static final int CID_MSG_GET_BY_MSG_ID_REQ_VALUE = 781;
        public static final int CID_MSG_GET_BY_MSG_ID_RES_VALUE = 782;
        public static final int CID_MSG_GET_LATEST_MSG_ID_REQ_VALUE = 779;
        public static final int CID_MSG_GET_LATEST_MSG_ID_RSP_VALUE = 780;
        public static final int CID_MSG_LIST_REQUEST_VALUE = 777;
        public static final int CID_MSG_LIST_RESPONSE_VALUE = 778;
        public static final int CID_MSG_READ_ACK_VALUE = 771;
        public static final int CID_MSG_READ_NOTIFY_VALUE = 772;
        public static final int CID_MSG_TIME_REQUEST_VALUE = 773;
        public static final int CID_MSG_TIME_RESPONSE_VALUE = 774;
        public static final int CID_MSG_UNREAD_CNT_REQUEST_VALUE = 775;
        public static final int CID_MSG_UNREAD_CNT_RESPONSE_VALUE = 776;
        private static EnumLiteMap<MessageCmdID> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<MessageCmdID>() {
                public MessageCmdID findValueByNumber(int i) {
                    return MessageCmdID.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static MessageCmdID valueOf(int i) {
            switch (i) {
                case CID_MSG_DATA_VALUE:
                    return CID_MSG_DATA;
                case CID_MSG_DATA_ACK_VALUE:
                    return CID_MSG_DATA_ACK;
                case CID_MSG_READ_ACK_VALUE:
                    return CID_MSG_READ_ACK;
                case CID_MSG_READ_NOTIFY_VALUE:
                    return CID_MSG_READ_NOTIFY;
                case CID_MSG_TIME_REQUEST_VALUE:
                    return CID_MSG_TIME_REQUEST;
                case CID_MSG_TIME_RESPONSE_VALUE:
                    return CID_MSG_TIME_RESPONSE;
                case CID_MSG_UNREAD_CNT_REQUEST_VALUE:
                    return CID_MSG_UNREAD_CNT_REQUEST;
                case CID_MSG_UNREAD_CNT_RESPONSE_VALUE:
                    return CID_MSG_UNREAD_CNT_RESPONSE;
                case CID_MSG_LIST_REQUEST_VALUE:
                    return CID_MSG_LIST_REQUEST;
                case CID_MSG_LIST_RESPONSE_VALUE:
                    return CID_MSG_LIST_RESPONSE;
                case CID_MSG_GET_LATEST_MSG_ID_REQ_VALUE:
                    return CID_MSG_GET_LATEST_MSG_ID_REQ;
                case CID_MSG_GET_LATEST_MSG_ID_RSP_VALUE:
                    return CID_MSG_GET_LATEST_MSG_ID_RSP;
                case CID_MSG_GET_BY_MSG_ID_REQ_VALUE:
                    return CID_MSG_GET_BY_MSG_ID_REQ;
                case CID_MSG_GET_BY_MSG_ID_RES_VALUE:
                    return CID_MSG_GET_BY_MSG_ID_RES;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<MessageCmdID> internalGetValueMap() {
            return internalValueMap;
        }

        private MessageCmdID(int i, int i2) {
            this.value = i2;
        }
    }

    public static final class MsgInfo extends GeneratedMessageLite implements MsgInfoOrBuilder {
        public static final int CREATE_TIME_FIELD_NUMBER = 3;
        public static final int FROM_SESSION_ID_FIELD_NUMBER = 2;
        public static final int MSG_DATA_FIELD_NUMBER = 5;
        public static final int MSG_ID_FIELD_NUMBER = 1;
        public static final int MSG_TYPE_FIELD_NUMBER = 4;
        public static Parser<MsgInfo> PARSER = new AbstractParser<MsgInfo>() {
            public MsgInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MsgInfo(codedInputStream, extensionRegistryLite);
            }
        };
        private static final MsgInfo defaultInstance = new MsgInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int createTime_;
        /* access modifiers changed from: private */
        public int fromSessionId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public ByteString msgData_;
        /* access modifiers changed from: private */
        public int msgId_;
        /* access modifiers changed from: private */
        public MsgType msgType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<MsgInfo, Builder> implements MsgInfoOrBuilder {
            private int bitField0_;
            private int createTime_;
            private int fromSessionId_;
            private ByteString msgData_ = ByteString.EMPTY;
            private int msgId_;
            private MsgType msgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.msgId_ = 0;
                this.bitField0_ &= -2;
                this.fromSessionId_ = 0;
                this.bitField0_ &= -3;
                this.createTime_ = 0;
                this.bitField0_ &= -5;
                this.msgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
                this.bitField0_ &= -9;
                this.msgData_ = ByteString.EMPTY;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public MsgInfo getDefaultInstanceForType() {
                return MsgInfo.getDefaultInstance();
            }

            public MsgInfo build() {
                MsgInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MsgInfo buildPartial() {
                int i = 1;
                MsgInfo msgInfo = new MsgInfo((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                msgInfo.msgId_ = this.msgId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                msgInfo.fromSessionId_ = this.fromSessionId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                msgInfo.createTime_ = this.createTime_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                msgInfo.msgType_ = this.msgType_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                msgInfo.msgData_ = this.msgData_;
                msgInfo.bitField0_ = i;
                return msgInfo;
            }

            public Builder mergeFrom(MsgInfo msgInfo) {
                if (msgInfo != MsgInfo.getDefaultInstance()) {
                    if (msgInfo.hasMsgId()) {
                        setMsgId(msgInfo.getMsgId());
                    }
                    if (msgInfo.hasFromSessionId()) {
                        setFromSessionId(msgInfo.getFromSessionId());
                    }
                    if (msgInfo.hasCreateTime()) {
                        setCreateTime(msgInfo.getCreateTime());
                    }
                    if (msgInfo.hasMsgType()) {
                        setMsgType(msgInfo.getMsgType());
                    }
                    if (msgInfo.hasMsgData()) {
                        setMsgData(msgInfo.getMsgData());
                    }
                    setUnknownFields(getUnknownFields().concat(msgInfo.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasMsgId() && hasFromSessionId() && hasCreateTime() && hasMsgType() && hasMsgData()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MsgInfo msgInfo;
                MsgInfo msgInfo2;
                try {
                    MsgInfo msgInfo3 = (MsgInfo) MsgInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (msgInfo3 != null) {
                        mergeFrom(msgInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    msgInfo2 = (MsgInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    msgInfo = msgInfo2;
                    th = th2;
                }
                if (msgInfo != null) {
                    mergeFrom(msgInfo);
                }
                throw th;
            }

            public boolean hasMsgId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(int i) {
                this.bitField0_ |= 1;
                this.msgId_ = i;
                return this;
            }

            public Builder clearMsgId() {
                this.bitField0_ &= -2;
                this.msgId_ = 0;
                return this;
            }

            public boolean hasFromSessionId() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getFromSessionId() {
                return this.fromSessionId_;
            }

            public Builder setFromSessionId(int i) {
                this.bitField0_ |= 2;
                this.fromSessionId_ = i;
                return this;
            }

            public Builder clearFromSessionId() {
                this.bitField0_ &= -3;
                this.fromSessionId_ = 0;
                return this;
            }

            public boolean hasCreateTime() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getCreateTime() {
                return this.createTime_;
            }

            public Builder setCreateTime(int i) {
                this.bitField0_ |= 4;
                this.createTime_ = i;
                return this;
            }

            public Builder clearCreateTime() {
                this.bitField0_ &= -5;
                this.createTime_ = 0;
                return this;
            }

            public boolean hasMsgType() {
                return (this.bitField0_ & 8) == 8;
            }

            public MsgType getMsgType() {
                return this.msgType_;
            }

            public Builder setMsgType(MsgType msgType) {
                if (msgType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.msgType_ = msgType;
                return this;
            }

            public Builder clearMsgType() {
                this.bitField0_ &= -9;
                this.msgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
                return this;
            }

            public boolean hasMsgData() {
                return (this.bitField0_ & 16) == 16;
            }

            public ByteString getMsgData() {
                return this.msgData_;
            }

            public Builder setMsgData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.msgData_ = byteString;
                return this;
            }

            public Builder clearMsgData() {
                this.bitField0_ &= -17;
                this.msgData_ = MsgInfo.getDefaultInstance().getMsgData();
                return this;
            }
        }

        private MsgInfo(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MsgInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static MsgInfo getDefaultInstance() {
            return defaultInstance;
        }

        public MsgInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        private MsgInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.msgId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.fromSessionId_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.createTime_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            int readEnum = codedInputStream.readEnum();
                            MsgType valueOf = MsgType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 8;
                                this.msgType_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 42:
                            this.bitField0_ |= 16;
                            this.msgData_ = codedInputStream.readBytes();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MsgInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasMsgId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getMsgId() {
            return this.msgId_;
        }

        public boolean hasFromSessionId() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getFromSessionId() {
            return this.fromSessionId_;
        }

        public boolean hasCreateTime() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getCreateTime() {
            return this.createTime_;
        }

        public boolean hasMsgType() {
            return (this.bitField0_ & 8) == 8;
        }

        public MsgType getMsgType() {
            return this.msgType_;
        }

        public boolean hasMsgData() {
            return (this.bitField0_ & 16) == 16;
        }

        public ByteString getMsgData() {
            return this.msgData_;
        }

        private void initFields() {
            this.msgId_ = 0;
            this.fromSessionId_ = 0;
            this.createTime_ = 0;
            this.msgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
            this.msgData_ = ByteString.EMPTY;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasMsgId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFromSessionId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCreateTime()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsgType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsgData()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.msgId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.fromSessionId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.createTime_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeEnum(4, this.msgType_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, this.msgData_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.msgId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.fromSessionId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.createTime_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeEnumSize(4, this.msgType_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, this.msgData_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MsgInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MsgInfo) PARSER.parseFrom(byteString);
        }

        public static MsgInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MsgInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MsgInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MsgInfo) PARSER.parseFrom(bArr);
        }

        public static MsgInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MsgInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MsgInfo parseFrom(InputStream inputStream) throws IOException {
            return (MsgInfo) PARSER.parseFrom(inputStream);
        }

        public static MsgInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MsgInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MsgInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MsgInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MsgInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MsgInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MsgInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MsgInfo) PARSER.parseFrom(codedInputStream);
        }

        public static MsgInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MsgInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MsgInfo msgInfo) {
            return newBuilder().mergeFrom(msgInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface MsgInfoOrBuilder extends MessageLiteOrBuilder {
        int getCreateTime();

        int getFromSessionId();

        ByteString getMsgData();

        int getMsgId();

        MsgType getMsgType();

        boolean hasCreateTime();

        boolean hasFromSessionId();

        boolean hasMsgData();

        boolean hasMsgId();

        boolean hasMsgType();
    }

    public enum MsgType implements EnumLite {
        MSG_TYPE_SINGLE_TEXT(0, 1),
        MSG_TYPE_SINGLE_AUDIO(1, 2),
        MSG_TYPE_GROUP_TEXT(2, 17),
        MSG_TYPE_GROUP_AUDIO(3, 18);
        
        public static final int MSG_TYPE_GROUP_AUDIO_VALUE = 18;
        public static final int MSG_TYPE_GROUP_TEXT_VALUE = 17;
        public static final int MSG_TYPE_SINGLE_AUDIO_VALUE = 2;
        public static final int MSG_TYPE_SINGLE_TEXT_VALUE = 1;
        private static EnumLiteMap<MsgType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<MsgType>() {
                public MsgType findValueByNumber(int i) {
                    return MsgType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static MsgType valueOf(int i) {
            switch (i) {
                case 1:
                    return MSG_TYPE_SINGLE_TEXT;
                case 2:
                    return MSG_TYPE_SINGLE_AUDIO;
                case 17:
                    return MSG_TYPE_GROUP_TEXT;
                case 18:
                    return MSG_TYPE_GROUP_AUDIO;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<MsgType> internalGetValueMap() {
            return internalValueMap;
        }

        private MsgType(int i, int i2) {
            this.value = i2;
        }
    }

    public static final class OfflineFileInfo extends GeneratedMessageLite implements OfflineFileInfoOrBuilder {
        public static final int FILE_NAME_FIELD_NUMBER = 3;
        public static final int FILE_SIZE_FIELD_NUMBER = 4;
        public static final int FROM_USER_ID_FIELD_NUMBER = 1;
        public static Parser<OfflineFileInfo> PARSER = new AbstractParser<OfflineFileInfo>() {
            public OfflineFileInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new OfflineFileInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TASK_ID_FIELD_NUMBER = 2;
        private static final OfflineFileInfo defaultInstance = new OfflineFileInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object fileName_;
        /* access modifiers changed from: private */
        public int fileSize_;
        /* access modifiers changed from: private */
        public int fromUserId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object taskId_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<OfflineFileInfo, Builder> implements OfflineFileInfoOrBuilder {
            private int bitField0_;
            private Object fileName_ = "";
            private int fileSize_;
            private int fromUserId_;
            private Object taskId_ = "";

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.fromUserId_ = 0;
                this.bitField0_ &= -2;
                this.taskId_ = "";
                this.bitField0_ &= -3;
                this.fileName_ = "";
                this.bitField0_ &= -5;
                this.fileSize_ = 0;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public OfflineFileInfo getDefaultInstanceForType() {
                return OfflineFileInfo.getDefaultInstance();
            }

            public OfflineFileInfo build() {
                OfflineFileInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public OfflineFileInfo buildPartial() {
                int i = 1;
                OfflineFileInfo offlineFileInfo = new OfflineFileInfo((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                offlineFileInfo.fromUserId_ = this.fromUserId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                offlineFileInfo.taskId_ = this.taskId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                offlineFileInfo.fileName_ = this.fileName_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                offlineFileInfo.fileSize_ = this.fileSize_;
                offlineFileInfo.bitField0_ = i;
                return offlineFileInfo;
            }

            public Builder mergeFrom(OfflineFileInfo offlineFileInfo) {
                if (offlineFileInfo != OfflineFileInfo.getDefaultInstance()) {
                    if (offlineFileInfo.hasFromUserId()) {
                        setFromUserId(offlineFileInfo.getFromUserId());
                    }
                    if (offlineFileInfo.hasTaskId()) {
                        this.bitField0_ |= 2;
                        this.taskId_ = offlineFileInfo.taskId_;
                    }
                    if (offlineFileInfo.hasFileName()) {
                        this.bitField0_ |= 4;
                        this.fileName_ = offlineFileInfo.fileName_;
                    }
                    if (offlineFileInfo.hasFileSize()) {
                        setFileSize(offlineFileInfo.getFileSize());
                    }
                    setUnknownFields(getUnknownFields().concat(offlineFileInfo.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasFromUserId() && hasTaskId() && hasFileName() && hasFileSize()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                OfflineFileInfo offlineFileInfo;
                OfflineFileInfo offlineFileInfo2;
                try {
                    OfflineFileInfo offlineFileInfo3 = (OfflineFileInfo) OfflineFileInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (offlineFileInfo3 != null) {
                        mergeFrom(offlineFileInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    offlineFileInfo2 = (OfflineFileInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    offlineFileInfo = offlineFileInfo2;
                    th = th2;
                }
                if (offlineFileInfo != null) {
                    mergeFrom(offlineFileInfo);
                }
                throw th;
            }

            public boolean hasFromUserId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getFromUserId() {
                return this.fromUserId_;
            }

            public Builder setFromUserId(int i) {
                this.bitField0_ |= 1;
                this.fromUserId_ = i;
                return this;
            }

            public Builder clearFromUserId() {
                this.bitField0_ &= -2;
                this.fromUserId_ = 0;
                return this;
            }

            public boolean hasTaskId() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getTaskId() {
                Object obj = this.taskId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.taskId_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTaskIdBytes() {
                Object obj = this.taskId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.taskId_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTaskId(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.taskId_ = str;
                return this;
            }

            public Builder clearTaskId() {
                this.bitField0_ &= -3;
                this.taskId_ = OfflineFileInfo.getDefaultInstance().getTaskId();
                return this;
            }

            public Builder setTaskIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.taskId_ = byteString;
                return this;
            }

            public boolean hasFileName() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getFileName() {
                Object obj = this.fileName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.fileName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getFileNameBytes() {
                Object obj = this.fileName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fileName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setFileName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fileName_ = str;
                return this;
            }

            public Builder clearFileName() {
                this.bitField0_ &= -5;
                this.fileName_ = OfflineFileInfo.getDefaultInstance().getFileName();
                return this;
            }

            public Builder setFileNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fileName_ = byteString;
                return this;
            }

            public boolean hasFileSize() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getFileSize() {
                return this.fileSize_;
            }

            public Builder setFileSize(int i) {
                this.bitField0_ |= 8;
                this.fileSize_ = i;
                return this;
            }

            public Builder clearFileSize() {
                this.bitField0_ &= -9;
                this.fileSize_ = 0;
                return this;
            }
        }

        private OfflineFileInfo(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private OfflineFileInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static OfflineFileInfo getDefaultInstance() {
            return defaultInstance;
        }

        public OfflineFileInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        private OfflineFileInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.fromUserId_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.taskId_ = readBytes;
                            break;
                        case 26:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.fileName_ = readBytes2;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.fileSize_ = codedInputStream.readUInt32();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<OfflineFileInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasFromUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getFromUserId() {
            return this.fromUserId_;
        }

        public boolean hasTaskId() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getTaskId() {
            Object obj = this.taskId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.taskId_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTaskIdBytes() {
            Object obj = this.taskId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.taskId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFileName() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getFileName() {
            Object obj = this.fileName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fileName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getFileNameBytes() {
            Object obj = this.fileName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fileName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFileSize() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getFileSize() {
            return this.fileSize_;
        }

        private void initFields() {
            this.fromUserId_ = 0;
            this.taskId_ = "";
            this.fileName_ = "";
            this.fileSize_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasFromUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTaskId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFileName()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFileSize()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.fromUserId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getTaskIdBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getFileNameBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.fileSize_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.fromUserId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getTaskIdBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getFileNameBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.fileSize_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static OfflineFileInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (OfflineFileInfo) PARSER.parseFrom(byteString);
        }

        public static OfflineFileInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (OfflineFileInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static OfflineFileInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (OfflineFileInfo) PARSER.parseFrom(bArr);
        }

        public static OfflineFileInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (OfflineFileInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static OfflineFileInfo parseFrom(InputStream inputStream) throws IOException {
            return (OfflineFileInfo) PARSER.parseFrom(inputStream);
        }

        public static OfflineFileInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (OfflineFileInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static OfflineFileInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (OfflineFileInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static OfflineFileInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (OfflineFileInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static OfflineFileInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (OfflineFileInfo) PARSER.parseFrom(codedInputStream);
        }

        public static OfflineFileInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (OfflineFileInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(OfflineFileInfo offlineFileInfo) {
            return newBuilder().mergeFrom(offlineFileInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface OfflineFileInfoOrBuilder extends MessageLiteOrBuilder {
        String getFileName();

        ByteString getFileNameBytes();

        int getFileSize();

        int getFromUserId();

        String getTaskId();

        ByteString getTaskIdBytes();

        boolean hasFileName();

        boolean hasFileSize();

        boolean hasFromUserId();

        boolean hasTaskId();
    }

    public enum OnlineListType implements EnumLite {
        ONLINE_LIST_TYPE_FRIEND_LIST(0, 1);
        
        public static final int ONLINE_LIST_TYPE_FRIEND_LIST_VALUE = 1;
        private static EnumLiteMap<OnlineListType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<OnlineListType>() {
                public OnlineListType findValueByNumber(int i) {
                    return OnlineListType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static OnlineListType valueOf(int i) {
            switch (i) {
                case 1:
                    return ONLINE_LIST_TYPE_FRIEND_LIST;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<OnlineListType> internalGetValueMap() {
            return internalValueMap;
        }

        private OnlineListType(int i, int i2) {
            this.value = i2;
        }
    }

    public enum OtherCmdID implements EnumLite {
        CID_OTHER_HEARTBEAT(0, CID_OTHER_HEARTBEAT_VALUE),
        CID_OTHER_STOP_RECV_PACKET(1, CID_OTHER_STOP_RECV_PACKET_VALUE),
        CID_OTHER_VALIDATE_REQ(2, CID_OTHER_VALIDATE_REQ_VALUE),
        CID_OTHER_VALIDATE_RSP(3, CID_OTHER_VALIDATE_RSP_VALUE),
        CID_OTHER_GET_DEVICE_TOKEN_REQ(4, CID_OTHER_GET_DEVICE_TOKEN_REQ_VALUE),
        CID_OTHER_GET_DEVICE_TOKEN_RSP(5, CID_OTHER_GET_DEVICE_TOKEN_RSP_VALUE),
        CID_OTHER_ROLE_SET(6, CID_OTHER_ROLE_SET_VALUE),
        CID_OTHER_ONLINE_USER_INFO(7, 1800),
        CID_OTHER_MSG_SERV_INFO(8, 1801),
        CID_OTHER_USER_STATUS_UPDATE(9, 1802),
        CID_OTHER_USER_CNT_UPDATE(10, 1803),
        CID_OTHER_SERVER_KICK_USER(11, CID_OTHER_SERVER_KICK_USER_VALUE),
        CID_OTHER_LOGIN_STATUS_NOTIFY(12, 1806),
        CID_OTHER_PUSH_TO_USER_REQ(13, CID_OTHER_PUSH_TO_USER_REQ_VALUE),
        CID_OTHER_PUSH_TO_USER_RSP(14, CID_OTHER_PUSH_TO_USER_RSP_VALUE),
        CID_OTHER_GET_SHIELD_REQ(15, CID_OTHER_GET_SHIELD_REQ_VALUE),
        CID_OTHER_GET_SHIELD_RSP(16, CID_OTHER_GET_SHIELD_RSP_VALUE),
        CID_OTHER_FILE_TRANSFER_REQ(17, CID_OTHER_FILE_TRANSFER_REQ_VALUE),
        CID_OTHER_FILE_TRANSFER_RSP(18, CID_OTHER_FILE_TRANSFER_RSP_VALUE),
        CID_OTHER_FILE_SERVER_IP_REQ(19, CID_OTHER_FILE_SERVER_IP_REQ_VALUE),
        CID_OTHER_FILE_SERVER_IP_RSP(20, CID_OTHER_FILE_SERVER_IP_RSP_VALUE),
        CID_OTHER_DB_REGISTER_REQ(21, CID_OTHER_DB_REGISTER_REQ_VALUE),
        CID_OTHER_DB_REGISTER_RES(22, CID_OTHER_DB_REGISTER_RES_VALUE),
        CID_OTHER_OTHER2CS_LOGIN(23, CID_OTHER_OTHER2CS_LOGIN_VALUE),
        CID_OTHER_OTHER2CS_LOGIN_RSP(24, CID_OTHER_OTHER2CS_LOGIN_RSP_VALUE),
        CID_OTHER_AS2CS_AS_USERS_NUM(25, CID_OTHER_AS2CS_AS_USERS_NUM_VALUE),
        CID_OTHER_CS2LS_AS_USERS_NUM(26, CID_OTHER_CS2LS_AS_USERS_NUM_VALUE),
        CID_OTHER_CS2LS_AS_OFFLINE(27, CID_OTHER_CS2LS_AS_OFFLINE_VALUE),
        CID_OTHER_AS2MS_LOGIN_REQ(28, CID_OTHER_AS2MS_LOGIN_REQ_VALUE),
        CID_OTHER_AS2MS_LOGIN_RSP(29, CID_OTHER_AS2MS_LOGIN_RSP_VALUE),
        CID_OTHER_MS2DB_CHECK_CONFIG_REQ(30, CID_OTHER_MS2DB_CHECK_CONFIG_REQ_VALUE),
        CID_OTHER_MS2DB_CHECK_CONFIG_RSP(31, CID_OTHER_MS2DB_CHECK_CONFIG_RSP_VALUE),
        CID_OTHER_MS2DB_CHANGE_CONFERENCE_NOTIFY(32, CID_OTHER_MS2DB_CHANGE_CONFERENCE_NOTIFY_VALUE),
        CID_OTHER_MS2DB_GROUP_CREATE_CONFERENCE(33, CID_OTHER_MS2DB_GROUP_CREATE_CONFERENCE_VALUE),
        CID_OTHER_MS2DB_USER_LEAVE_ALL_CONFERENCE(34, CID_OTHER_MS2DB_USER_LEAVE_ALL_CONFERENCE_VALUE),
        CID_OTHER_DB2MS_USER_LEAVE_CONFERENCE(35, CID_OTHER_DB2MS_USER_LEAVE_CONFERENCE_VALUE),
        CID_OTHER_APPLY_JOIN_GROUP_TODB(36, CID_OTHER_APPLY_JOIN_GROUP_TODB_VALUE),
        CID_OTHER_APPLY_JOIN_GROUP_TODB_ACK(37, CID_OTHER_APPLY_JOIN_GROUP_TODB_ACK_VALUE);
        
        public static final int CID_OTHER_APPLY_JOIN_GROUP_TODB_ACK_VALUE = 1893;
        public static final int CID_OTHER_APPLY_JOIN_GROUP_TODB_VALUE = 1892;
        public static final int CID_OTHER_AS2CS_AS_USERS_NUM_VALUE = 1858;
        public static final int CID_OTHER_AS2MS_LOGIN_REQ_VALUE = 1861;
        public static final int CID_OTHER_AS2MS_LOGIN_RSP_VALUE = 1862;
        public static final int CID_OTHER_CS2LS_AS_OFFLINE_VALUE = 1860;
        public static final int CID_OTHER_CS2LS_AS_USERS_NUM_VALUE = 1859;
        public static final int CID_OTHER_DB2MS_USER_LEAVE_CONFERENCE_VALUE = 1891;
        public static final int CID_OTHER_DB_REGISTER_REQ_VALUE = 1845;
        public static final int CID_OTHER_DB_REGISTER_RES_VALUE = 1846;
        public static final int CID_OTHER_FILE_SERVER_IP_REQ_VALUE = 1843;
        public static final int CID_OTHER_FILE_SERVER_IP_RSP_VALUE = 1844;
        public static final int CID_OTHER_FILE_TRANSFER_REQ_VALUE = 1841;
        public static final int CID_OTHER_FILE_TRANSFER_RSP_VALUE = 1842;
        public static final int CID_OTHER_GET_DEVICE_TOKEN_REQ_VALUE = 1797;
        public static final int CID_OTHER_GET_DEVICE_TOKEN_RSP_VALUE = 1798;
        public static final int CID_OTHER_GET_SHIELD_REQ_VALUE = 1809;
        public static final int CID_OTHER_GET_SHIELD_RSP_VALUE = 1810;
        public static final int CID_OTHER_HEARTBEAT_VALUE = 1793;
        public static final int CID_OTHER_LOGIN_STATUS_NOTIFY_VALUE = 1806;
        public static final int CID_OTHER_MS2DB_CHANGE_CONFERENCE_NOTIFY_VALUE = 1888;
        public static final int CID_OTHER_MS2DB_CHECK_CONFIG_REQ_VALUE = 1863;
        public static final int CID_OTHER_MS2DB_CHECK_CONFIG_RSP_VALUE = 1864;
        public static final int CID_OTHER_MS2DB_GROUP_CREATE_CONFERENCE_VALUE = 1889;
        public static final int CID_OTHER_MS2DB_USER_LEAVE_ALL_CONFERENCE_VALUE = 1890;
        public static final int CID_OTHER_MSG_SERV_INFO_VALUE = 1801;
        public static final int CID_OTHER_ONLINE_USER_INFO_VALUE = 1800;
        public static final int CID_OTHER_OTHER2CS_LOGIN_RSP_VALUE = 1857;
        public static final int CID_OTHER_OTHER2CS_LOGIN_VALUE = 1856;
        public static final int CID_OTHER_PUSH_TO_USER_REQ_VALUE = 1807;
        public static final int CID_OTHER_PUSH_TO_USER_RSP_VALUE = 1808;
        public static final int CID_OTHER_ROLE_SET_VALUE = 1799;
        public static final int CID_OTHER_SERVER_KICK_USER_VALUE = 1805;
        public static final int CID_OTHER_STOP_RECV_PACKET_VALUE = 1794;
        public static final int CID_OTHER_USER_CNT_UPDATE_VALUE = 1803;
        public static final int CID_OTHER_USER_STATUS_UPDATE_VALUE = 1802;
        public static final int CID_OTHER_VALIDATE_REQ_VALUE = 1795;
        public static final int CID_OTHER_VALIDATE_RSP_VALUE = 1796;
        private static EnumLiteMap<OtherCmdID> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<OtherCmdID>() {
                public OtherCmdID findValueByNumber(int i) {
                    return OtherCmdID.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static OtherCmdID valueOf(int i) {
            switch (i) {
                case CID_OTHER_HEARTBEAT_VALUE:
                    return CID_OTHER_HEARTBEAT;
                case CID_OTHER_STOP_RECV_PACKET_VALUE:
                    return CID_OTHER_STOP_RECV_PACKET;
                case CID_OTHER_VALIDATE_REQ_VALUE:
                    return CID_OTHER_VALIDATE_REQ;
                case CID_OTHER_VALIDATE_RSP_VALUE:
                    return CID_OTHER_VALIDATE_RSP;
                case CID_OTHER_GET_DEVICE_TOKEN_REQ_VALUE:
                    return CID_OTHER_GET_DEVICE_TOKEN_REQ;
                case CID_OTHER_GET_DEVICE_TOKEN_RSP_VALUE:
                    return CID_OTHER_GET_DEVICE_TOKEN_RSP;
                case CID_OTHER_ROLE_SET_VALUE:
                    return CID_OTHER_ROLE_SET;
                case 1800:
                    return CID_OTHER_ONLINE_USER_INFO;
                case 1801:
                    return CID_OTHER_MSG_SERV_INFO;
                case 1802:
                    return CID_OTHER_USER_STATUS_UPDATE;
                case 1803:
                    return CID_OTHER_USER_CNT_UPDATE;
                case CID_OTHER_SERVER_KICK_USER_VALUE:
                    return CID_OTHER_SERVER_KICK_USER;
                case 1806:
                    return CID_OTHER_LOGIN_STATUS_NOTIFY;
                case CID_OTHER_PUSH_TO_USER_REQ_VALUE:
                    return CID_OTHER_PUSH_TO_USER_REQ;
                case CID_OTHER_PUSH_TO_USER_RSP_VALUE:
                    return CID_OTHER_PUSH_TO_USER_RSP;
                case CID_OTHER_GET_SHIELD_REQ_VALUE:
                    return CID_OTHER_GET_SHIELD_REQ;
                case CID_OTHER_GET_SHIELD_RSP_VALUE:
                    return CID_OTHER_GET_SHIELD_RSP;
                case CID_OTHER_FILE_TRANSFER_REQ_VALUE:
                    return CID_OTHER_FILE_TRANSFER_REQ;
                case CID_OTHER_FILE_TRANSFER_RSP_VALUE:
                    return CID_OTHER_FILE_TRANSFER_RSP;
                case CID_OTHER_FILE_SERVER_IP_REQ_VALUE:
                    return CID_OTHER_FILE_SERVER_IP_REQ;
                case CID_OTHER_FILE_SERVER_IP_RSP_VALUE:
                    return CID_OTHER_FILE_SERVER_IP_RSP;
                case CID_OTHER_DB_REGISTER_REQ_VALUE:
                    return CID_OTHER_DB_REGISTER_REQ;
                case CID_OTHER_DB_REGISTER_RES_VALUE:
                    return CID_OTHER_DB_REGISTER_RES;
                case CID_OTHER_OTHER2CS_LOGIN_VALUE:
                    return CID_OTHER_OTHER2CS_LOGIN;
                case CID_OTHER_OTHER2CS_LOGIN_RSP_VALUE:
                    return CID_OTHER_OTHER2CS_LOGIN_RSP;
                case CID_OTHER_AS2CS_AS_USERS_NUM_VALUE:
                    return CID_OTHER_AS2CS_AS_USERS_NUM;
                case CID_OTHER_CS2LS_AS_USERS_NUM_VALUE:
                    return CID_OTHER_CS2LS_AS_USERS_NUM;
                case CID_OTHER_CS2LS_AS_OFFLINE_VALUE:
                    return CID_OTHER_CS2LS_AS_OFFLINE;
                case CID_OTHER_AS2MS_LOGIN_REQ_VALUE:
                    return CID_OTHER_AS2MS_LOGIN_REQ;
                case CID_OTHER_AS2MS_LOGIN_RSP_VALUE:
                    return CID_OTHER_AS2MS_LOGIN_RSP;
                case CID_OTHER_MS2DB_CHECK_CONFIG_REQ_VALUE:
                    return CID_OTHER_MS2DB_CHECK_CONFIG_REQ;
                case CID_OTHER_MS2DB_CHECK_CONFIG_RSP_VALUE:
                    return CID_OTHER_MS2DB_CHECK_CONFIG_RSP;
                case CID_OTHER_MS2DB_CHANGE_CONFERENCE_NOTIFY_VALUE:
                    return CID_OTHER_MS2DB_CHANGE_CONFERENCE_NOTIFY;
                case CID_OTHER_MS2DB_GROUP_CREATE_CONFERENCE_VALUE:
                    return CID_OTHER_MS2DB_GROUP_CREATE_CONFERENCE;
                case CID_OTHER_MS2DB_USER_LEAVE_ALL_CONFERENCE_VALUE:
                    return CID_OTHER_MS2DB_USER_LEAVE_ALL_CONFERENCE;
                case CID_OTHER_DB2MS_USER_LEAVE_CONFERENCE_VALUE:
                    return CID_OTHER_DB2MS_USER_LEAVE_CONFERENCE;
                case CID_OTHER_APPLY_JOIN_GROUP_TODB_VALUE:
                    return CID_OTHER_APPLY_JOIN_GROUP_TODB;
                case CID_OTHER_APPLY_JOIN_GROUP_TODB_ACK_VALUE:
                    return CID_OTHER_APPLY_JOIN_GROUP_TODB_ACK;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<OtherCmdID> internalGetValueMap() {
            return internalValueMap;
        }

        private OtherCmdID(int i, int i2) {
            this.value = i2;
        }
    }

    public static final class PushResult extends GeneratedMessageLite implements PushResultOrBuilder {
        public static Parser<PushResult> PARSER = new AbstractParser<PushResult>() {
            public PushResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new PushResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RESULT_CODE_FIELD_NUMBER = 2;
        public static final int USER_TOKEN_FIELD_NUMBER = 1;
        private static final PushResult defaultInstance = new PushResult(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int resultCode_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public Object userToken_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<PushResult, Builder> implements PushResultOrBuilder {
            private int bitField0_;
            private int resultCode_;
            private Object userToken_ = "";

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.userToken_ = "";
                this.bitField0_ &= -2;
                this.resultCode_ = 0;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public PushResult getDefaultInstanceForType() {
                return PushResult.getDefaultInstance();
            }

            public PushResult build() {
                PushResult buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public PushResult buildPartial() {
                int i = 1;
                PushResult pushResult = new PushResult((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                pushResult.userToken_ = this.userToken_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                pushResult.resultCode_ = this.resultCode_;
                pushResult.bitField0_ = i;
                return pushResult;
            }

            public Builder mergeFrom(PushResult pushResult) {
                if (pushResult != PushResult.getDefaultInstance()) {
                    if (pushResult.hasUserToken()) {
                        this.bitField0_ |= 1;
                        this.userToken_ = pushResult.userToken_;
                    }
                    if (pushResult.hasResultCode()) {
                        setResultCode(pushResult.getResultCode());
                    }
                    setUnknownFields(getUnknownFields().concat(pushResult.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserToken() && hasResultCode()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                PushResult pushResult;
                PushResult pushResult2;
                try {
                    PushResult pushResult3 = (PushResult) PushResult.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (pushResult3 != null) {
                        mergeFrom(pushResult3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    pushResult2 = (PushResult) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    pushResult = pushResult2;
                    th = th2;
                }
                if (pushResult != null) {
                    mergeFrom(pushResult);
                }
                throw th;
            }

            public boolean hasUserToken() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getUserToken() {
                Object obj = this.userToken_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.userToken_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUserTokenBytes() {
                Object obj = this.userToken_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userToken_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUserToken(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.userToken_ = str;
                return this;
            }

            public Builder clearUserToken() {
                this.bitField0_ &= -2;
                this.userToken_ = PushResult.getDefaultInstance().getUserToken();
                return this;
            }

            public Builder setUserTokenBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.userToken_ = byteString;
                return this;
            }

            public boolean hasResultCode() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getResultCode() {
                return this.resultCode_;
            }

            public Builder setResultCode(int i) {
                this.bitField0_ |= 2;
                this.resultCode_ = i;
                return this;
            }

            public Builder clearResultCode() {
                this.bitField0_ &= -3;
                this.resultCode_ = 0;
                return this;
            }
        }

        private PushResult(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private PushResult(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static PushResult getDefaultInstance() {
            return defaultInstance;
        }

        public PushResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        private PushResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 10:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 1;
                            this.userToken_ = readBytes;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.resultCode_ = codedInputStream.readUInt32();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<PushResult> getParserForType() {
            return PARSER;
        }

        public boolean hasUserToken() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getUserToken() {
            Object obj = this.userToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userToken_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUserTokenBytes() {
            Object obj = this.userToken_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userToken_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasResultCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getResultCode() {
            return this.resultCode_;
        }

        private void initFields() {
            this.userToken_ = "";
            this.resultCode_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasUserToken()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasResultCode()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getUserTokenBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.resultCode_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getUserTokenBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.resultCode_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static PushResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (PushResult) PARSER.parseFrom(byteString);
        }

        public static PushResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PushResult) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static PushResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (PushResult) PARSER.parseFrom(bArr);
        }

        public static PushResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (PushResult) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PushResult parseFrom(InputStream inputStream) throws IOException {
            return (PushResult) PARSER.parseFrom(inputStream);
        }

        public static PushResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PushResult) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static PushResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PushResult) PARSER.parseDelimitedFrom(inputStream);
        }

        public static PushResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PushResult) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static PushResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (PushResult) PARSER.parseFrom(codedInputStream);
        }

        public static PushResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PushResult) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(PushResult pushResult) {
            return newBuilder().mergeFrom(pushResult);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface PushResultOrBuilder extends MessageLiteOrBuilder {
        int getResultCode();

        String getUserToken();

        ByteString getUserTokenBytes();

        boolean hasResultCode();

        boolean hasUserToken();
    }

    public enum ResultType implements EnumLite {
        REFUSE_REASON_NONE(0, 0),
        REFUSE_REASON_NO_MSG_SERVER(1, 1),
        REFUSE_REASON_MSG_SERVER_FULL(2, 2),
        REFUSE_REASON_NO_DB_SERVER(3, 3),
        REFUSE_REASON_NO_LOGIN_SERVER(4, 4),
        REFUSE_REASON_NO_ROUTE_SERVER(5, 5),
        REFUSE_REASON_DB_VALIDATE_FAILED(6, 6),
        REFUSE_REASON_VERSION_TOO_OLD(7, 7),
        REFUSE_REASON_CONNECT_MIXUN_FAILED(8, 8);
        
        public static final int REFUSE_REASON_CONNECT_MIXUN_FAILED_VALUE = 8;
        public static final int REFUSE_REASON_DB_VALIDATE_FAILED_VALUE = 6;
        public static final int REFUSE_REASON_MSG_SERVER_FULL_VALUE = 2;
        public static final int REFUSE_REASON_NONE_VALUE = 0;
        public static final int REFUSE_REASON_NO_DB_SERVER_VALUE = 3;
        public static final int REFUSE_REASON_NO_LOGIN_SERVER_VALUE = 4;
        public static final int REFUSE_REASON_NO_MSG_SERVER_VALUE = 1;
        public static final int REFUSE_REASON_NO_ROUTE_SERVER_VALUE = 5;
        public static final int REFUSE_REASON_VERSION_TOO_OLD_VALUE = 7;
        private static EnumLiteMap<ResultType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<ResultType>() {
                public ResultType findValueByNumber(int i) {
                    return ResultType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static ResultType valueOf(int i) {
            switch (i) {
                case 0:
                    return REFUSE_REASON_NONE;
                case 1:
                    return REFUSE_REASON_NO_MSG_SERVER;
                case 2:
                    return REFUSE_REASON_MSG_SERVER_FULL;
                case 3:
                    return REFUSE_REASON_NO_DB_SERVER;
                case 4:
                    return REFUSE_REASON_NO_LOGIN_SERVER;
                case 5:
                    return REFUSE_REASON_NO_ROUTE_SERVER;
                case 6:
                    return REFUSE_REASON_DB_VALIDATE_FAILED;
                case 7:
                    return REFUSE_REASON_VERSION_TOO_OLD;
                case 8:
                    return REFUSE_REASON_CONNECT_MIXUN_FAILED;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<ResultType> internalGetValueMap() {
            return internalValueMap;
        }

        private ResultType(int i, int i2) {
            this.value = i2;
        }
    }

    public static final class ServerUserStat extends GeneratedMessageLite implements ServerUserStatOrBuilder {
        public static final int CLIENT_TYPE_FIELD_NUMBER = 3;
        public static Parser<ServerUserStat> PARSER = new AbstractParser<ServerUserStat>() {
            public ServerUserStat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ServerUserStat(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int STATUS_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final ServerUserStat defaultInstance = new ServerUserStat(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ClientType clientType_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public UserStatType status_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<ServerUserStat, Builder> implements ServerUserStatOrBuilder {
            private int bitField0_;
            private ClientType clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
            private UserStatType status_ = UserStatType.USER_STATUS_ONLINE;
            private int userId_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.userId_ = 0;
                this.bitField0_ &= -2;
                this.status_ = UserStatType.USER_STATUS_ONLINE;
                this.bitField0_ &= -3;
                this.clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public ServerUserStat getDefaultInstanceForType() {
                return ServerUserStat.getDefaultInstance();
            }

            public ServerUserStat build() {
                ServerUserStat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ServerUserStat buildPartial() {
                int i = 1;
                ServerUserStat serverUserStat = new ServerUserStat((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                serverUserStat.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                serverUserStat.status_ = this.status_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                serverUserStat.clientType_ = this.clientType_;
                serverUserStat.bitField0_ = i;
                return serverUserStat;
            }

            public Builder mergeFrom(ServerUserStat serverUserStat) {
                if (serverUserStat != ServerUserStat.getDefaultInstance()) {
                    if (serverUserStat.hasUserId()) {
                        setUserId(serverUserStat.getUserId());
                    }
                    if (serverUserStat.hasStatus()) {
                        setStatus(serverUserStat.getStatus());
                    }
                    if (serverUserStat.hasClientType()) {
                        setClientType(serverUserStat.getClientType());
                    }
                    setUnknownFields(getUnknownFields().concat(serverUserStat.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasStatus() && hasClientType()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ServerUserStat serverUserStat;
                ServerUserStat serverUserStat2;
                try {
                    ServerUserStat serverUserStat3 = (ServerUserStat) ServerUserStat.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (serverUserStat3 != null) {
                        mergeFrom(serverUserStat3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    serverUserStat2 = (ServerUserStat) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    serverUserStat = serverUserStat2;
                    th = th2;
                }
                if (serverUserStat != null) {
                    mergeFrom(serverUserStat);
                }
                throw th;
            }

            public boolean hasUserId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getUserId() {
                return this.userId_;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 1;
                this.userId_ = i;
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -2;
                this.userId_ = 0;
                return this;
            }

            public boolean hasStatus() {
                return (this.bitField0_ & 2) == 2;
            }

            public UserStatType getStatus() {
                return this.status_;
            }

            public Builder setStatus(UserStatType userStatType) {
                if (userStatType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.status_ = userStatType;
                return this;
            }

            public Builder clearStatus() {
                this.bitField0_ &= -3;
                this.status_ = UserStatType.USER_STATUS_ONLINE;
                return this;
            }

            public boolean hasClientType() {
                return (this.bitField0_ & 4) == 4;
            }

            public ClientType getClientType() {
                return this.clientType_;
            }

            public Builder setClientType(ClientType clientType) {
                if (clientType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.clientType_ = clientType;
                return this;
            }

            public Builder clearClientType() {
                this.bitField0_ &= -5;
                this.clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
                return this;
            }
        }

        private ServerUserStat(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ServerUserStat(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static ServerUserStat getDefaultInstance() {
            return defaultInstance;
        }

        public ServerUserStat getDefaultInstanceForType() {
            return defaultInstance;
        }

        private ServerUserStat(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.userId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            int readEnum = codedInputStream.readEnum();
                            UserStatType valueOf = UserStatType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 2;
                                this.status_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 24:
                            int readEnum2 = codedInputStream.readEnum();
                            ClientType valueOf2 = ClientType.valueOf(readEnum2);
                            if (valueOf2 != null) {
                                this.bitField0_ |= 4;
                                this.clientType_ = valueOf2;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum2);
                                break;
                            }
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ServerUserStat> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasStatus() {
            return (this.bitField0_ & 2) == 2;
        }

        public UserStatType getStatus() {
            return this.status_;
        }

        public boolean hasClientType() {
            return (this.bitField0_ & 4) == 4;
        }

        public ClientType getClientType() {
            return this.clientType_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.status_ = UserStatType.USER_STATUS_ONLINE;
            this.clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasStatus()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasClientType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.status_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(3, this.clientType_.getNumber());
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeEnumSize(2, this.status_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeEnumSize(3, this.clientType_.getNumber());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ServerUserStat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ServerUserStat) PARSER.parseFrom(byteString);
        }

        public static ServerUserStat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ServerUserStat) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ServerUserStat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ServerUserStat) PARSER.parseFrom(bArr);
        }

        public static ServerUserStat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ServerUserStat) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ServerUserStat parseFrom(InputStream inputStream) throws IOException {
            return (ServerUserStat) PARSER.parseFrom(inputStream);
        }

        public static ServerUserStat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ServerUserStat) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ServerUserStat parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ServerUserStat) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ServerUserStat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ServerUserStat) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ServerUserStat parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ServerUserStat) PARSER.parseFrom(codedInputStream);
        }

        public static ServerUserStat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ServerUserStat) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ServerUserStat serverUserStat) {
            return newBuilder().mergeFrom(serverUserStat);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface ServerUserStatOrBuilder extends MessageLiteOrBuilder {
        ClientType getClientType();

        UserStatType getStatus();

        int getUserId();

        boolean hasClientType();

        boolean hasStatus();

        boolean hasUserId();
    }

    public enum ServiceID implements EnumLite {
        SID_LOGIN(0, 1),
        SID_BUDDY_LIST(1, 2),
        SID_MSG(2, 3),
        SID_GROUP(3, 4),
        SID_FILE(4, 5),
        SID_SWITCH_SERVICE(5, 6),
        SID_OTHER(6, 7),
        SID_INTERNAL(7, 8);
        
        public static final int SID_BUDDY_LIST_VALUE = 2;
        public static final int SID_FILE_VALUE = 5;
        public static final int SID_GROUP_VALUE = 4;
        public static final int SID_INTERNAL_VALUE = 8;
        public static final int SID_LOGIN_VALUE = 1;
        public static final int SID_MSG_VALUE = 3;
        public static final int SID_OTHER_VALUE = 7;
        public static final int SID_SWITCH_SERVICE_VALUE = 6;
        private static EnumLiteMap<ServiceID> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<ServiceID>() {
                public ServiceID findValueByNumber(int i) {
                    return ServiceID.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static ServiceID valueOf(int i) {
            switch (i) {
                case 1:
                    return SID_LOGIN;
                case 2:
                    return SID_BUDDY_LIST;
                case 3:
                    return SID_MSG;
                case 4:
                    return SID_GROUP;
                case 5:
                    return SID_FILE;
                case 6:
                    return SID_SWITCH_SERVICE;
                case 7:
                    return SID_OTHER;
                case 8:
                    return SID_INTERNAL;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<ServiceID> internalGetValueMap() {
            return internalValueMap;
        }

        private ServiceID(int i, int i2) {
            this.value = i2;
        }
    }

    public enum SessionStatusType implements EnumLite {
        SESSION_STATUS_OK(0, 0),
        SESSION_STATUS_DELETE(1, 1);
        
        public static final int SESSION_STATUS_DELETE_VALUE = 1;
        public static final int SESSION_STATUS_OK_VALUE = 0;
        private static EnumLiteMap<SessionStatusType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<SessionStatusType>() {
                public SessionStatusType findValueByNumber(int i) {
                    return SessionStatusType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static SessionStatusType valueOf(int i) {
            switch (i) {
                case 0:
                    return SESSION_STATUS_OK;
                case 1:
                    return SESSION_STATUS_DELETE;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<SessionStatusType> internalGetValueMap() {
            return internalValueMap;
        }

        private SessionStatusType(int i, int i2) {
            this.value = i2;
        }
    }

    public enum SessionType implements EnumLite {
        SESSION_TYPE_SINGLE(0, 1),
        SESSION_TYPE_GROUP(1, 2);
        
        public static final int SESSION_TYPE_GROUP_VALUE = 2;
        public static final int SESSION_TYPE_SINGLE_VALUE = 1;
        private static EnumLiteMap<SessionType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<SessionType>() {
                public SessionType findValueByNumber(int i) {
                    return SessionType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static SessionType valueOf(int i) {
            switch (i) {
                case 1:
                    return SESSION_TYPE_SINGLE;
                case 2:
                    return SESSION_TYPE_GROUP;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<SessionType> internalGetValueMap() {
            return internalValueMap;
        }

        private SessionType(int i, int i2) {
            this.value = i2;
        }
    }

    public static final class ShieldStatus extends GeneratedMessageLite implements ShieldStatusOrBuilder {
        public static final int GROUP_ID_FIELD_NUMBER = 2;
        public static Parser<ShieldStatus> PARSER = new AbstractParser<ShieldStatus>() {
            public ShieldStatus parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ShieldStatus(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SHIELD_STATUS_FIELD_NUMBER = 3;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final ShieldStatus defaultInstance = new ShieldStatus(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int groupId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int shieldStatus_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<ShieldStatus, Builder> implements ShieldStatusOrBuilder {
            private int bitField0_;
            private int groupId_;
            private int shieldStatus_;
            private int userId_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.userId_ = 0;
                this.bitField0_ &= -2;
                this.groupId_ = 0;
                this.bitField0_ &= -3;
                this.shieldStatus_ = 0;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public ShieldStatus getDefaultInstanceForType() {
                return ShieldStatus.getDefaultInstance();
            }

            public ShieldStatus build() {
                ShieldStatus buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ShieldStatus buildPartial() {
                int i = 1;
                ShieldStatus shieldStatus = new ShieldStatus((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                shieldStatus.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                shieldStatus.groupId_ = this.groupId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                shieldStatus.shieldStatus_ = this.shieldStatus_;
                shieldStatus.bitField0_ = i;
                return shieldStatus;
            }

            public Builder mergeFrom(ShieldStatus shieldStatus) {
                if (shieldStatus != ShieldStatus.getDefaultInstance()) {
                    if (shieldStatus.hasUserId()) {
                        setUserId(shieldStatus.getUserId());
                    }
                    if (shieldStatus.hasGroupId()) {
                        setGroupId(shieldStatus.getGroupId());
                    }
                    if (shieldStatus.hasShieldStatus()) {
                        setShieldStatus(shieldStatus.getShieldStatus());
                    }
                    setUnknownFields(getUnknownFields().concat(shieldStatus.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasGroupId() && hasShieldStatus()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ShieldStatus shieldStatus;
                ShieldStatus shieldStatus2;
                try {
                    ShieldStatus shieldStatus3 = (ShieldStatus) ShieldStatus.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (shieldStatus3 != null) {
                        mergeFrom(shieldStatus3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    shieldStatus2 = (ShieldStatus) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    shieldStatus = shieldStatus2;
                    th = th2;
                }
                if (shieldStatus != null) {
                    mergeFrom(shieldStatus);
                }
                throw th;
            }

            public boolean hasUserId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getUserId() {
                return this.userId_;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 1;
                this.userId_ = i;
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -2;
                this.userId_ = 0;
                return this;
            }

            public boolean hasGroupId() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getGroupId() {
                return this.groupId_;
            }

            public Builder setGroupId(int i) {
                this.bitField0_ |= 2;
                this.groupId_ = i;
                return this;
            }

            public Builder clearGroupId() {
                this.bitField0_ &= -3;
                this.groupId_ = 0;
                return this;
            }

            public boolean hasShieldStatus() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getShieldStatus() {
                return this.shieldStatus_;
            }

            public Builder setShieldStatus(int i) {
                this.bitField0_ |= 4;
                this.shieldStatus_ = i;
                return this;
            }

            public Builder clearShieldStatus() {
                this.bitField0_ &= -5;
                this.shieldStatus_ = 0;
                return this;
            }
        }

        private ShieldStatus(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ShieldStatus(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static ShieldStatus getDefaultInstance() {
            return defaultInstance;
        }

        public ShieldStatus getDefaultInstanceForType() {
            return defaultInstance;
        }

        private ShieldStatus(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.userId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.groupId_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.shieldStatus_ = codedInputStream.readUInt32();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ShieldStatus> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasGroupId() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getGroupId() {
            return this.groupId_;
        }

        public boolean hasShieldStatus() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getShieldStatus() {
            return this.shieldStatus_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.groupId_ = 0;
            this.shieldStatus_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasGroupId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasShieldStatus()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.groupId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.shieldStatus_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.groupId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.shieldStatus_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ShieldStatus parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ShieldStatus) PARSER.parseFrom(byteString);
        }

        public static ShieldStatus parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ShieldStatus) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ShieldStatus parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ShieldStatus) PARSER.parseFrom(bArr);
        }

        public static ShieldStatus parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ShieldStatus) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ShieldStatus parseFrom(InputStream inputStream) throws IOException {
            return (ShieldStatus) PARSER.parseFrom(inputStream);
        }

        public static ShieldStatus parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ShieldStatus) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ShieldStatus parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ShieldStatus) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ShieldStatus parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ShieldStatus) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ShieldStatus parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ShieldStatus) PARSER.parseFrom(codedInputStream);
        }

        public static ShieldStatus parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ShieldStatus) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ShieldStatus shieldStatus) {
            return newBuilder().mergeFrom(shieldStatus);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface ShieldStatusOrBuilder extends MessageLiteOrBuilder {
        int getGroupId();

        int getShieldStatus();

        int getUserId();

        boolean hasGroupId();

        boolean hasShieldStatus();

        boolean hasUserId();
    }

    public enum SwitchServiceCmdID implements EnumLite {
        CID_SWITCH_P2P_CMD(0, CID_SWITCH_P2P_CMD_VALUE);
        
        public static final int CID_SWITCH_P2P_CMD_VALUE = 1537;
        private static EnumLiteMap<SwitchServiceCmdID> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<SwitchServiceCmdID>() {
                public SwitchServiceCmdID findValueByNumber(int i) {
                    return SwitchServiceCmdID.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static SwitchServiceCmdID valueOf(int i) {
            switch (i) {
                case CID_SWITCH_P2P_CMD_VALUE:
                    return CID_SWITCH_P2P_CMD;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<SwitchServiceCmdID> internalGetValueMap() {
            return internalValueMap;
        }

        private SwitchServiceCmdID(int i, int i2) {
            this.value = i2;
        }
    }

    public static final class UnreadInfo extends GeneratedMessageLite implements UnreadInfoOrBuilder {
        public static final int LATEST_MSG_DATA_FIELD_NUMBER = 5;
        public static final int LATEST_MSG_FROM_USER_ID_FIELD_NUMBER = 7;
        public static final int LATEST_MSG_ID_FIELD_NUMBER = 4;
        public static final int LATEST_MSG_TYPE_FIELD_NUMBER = 6;
        public static Parser<UnreadInfo> PARSER = new AbstractParser<UnreadInfo>() {
            public UnreadInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new UnreadInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 1;
        public static final int SESSION_TYPE_FIELD_NUMBER = 2;
        public static final int UNREAD_CNT_FIELD_NUMBER = 3;
        private static final UnreadInfo defaultInstance = new UnreadInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString latestMsgData_;
        /* access modifiers changed from: private */
        public int latestMsgFromUserId_;
        /* access modifiers changed from: private */
        public int latestMsgId_;
        /* access modifiers changed from: private */
        public MsgType latestMsgType_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public SessionType sessionType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int unreadCnt_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<UnreadInfo, Builder> implements UnreadInfoOrBuilder {
            private int bitField0_;
            private ByteString latestMsgData_ = ByteString.EMPTY;
            private int latestMsgFromUserId_;
            private int latestMsgId_;
            private MsgType latestMsgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
            private int sessionId_;
            private SessionType sessionType_ = SessionType.SESSION_TYPE_SINGLE;
            private int unreadCnt_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.sessionId_ = 0;
                this.bitField0_ &= -2;
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                this.bitField0_ &= -3;
                this.unreadCnt_ = 0;
                this.bitField0_ &= -5;
                this.latestMsgId_ = 0;
                this.bitField0_ &= -9;
                this.latestMsgData_ = ByteString.EMPTY;
                this.bitField0_ &= -17;
                this.latestMsgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
                this.bitField0_ &= -33;
                this.latestMsgFromUserId_ = 0;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public UnreadInfo getDefaultInstanceForType() {
                return UnreadInfo.getDefaultInstance();
            }

            public UnreadInfo build() {
                UnreadInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public UnreadInfo buildPartial() {
                int i = 1;
                UnreadInfo unreadInfo = new UnreadInfo((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                unreadInfo.sessionId_ = this.sessionId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                unreadInfo.sessionType_ = this.sessionType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                unreadInfo.unreadCnt_ = this.unreadCnt_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                unreadInfo.latestMsgId_ = this.latestMsgId_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                unreadInfo.latestMsgData_ = this.latestMsgData_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                unreadInfo.latestMsgType_ = this.latestMsgType_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                unreadInfo.latestMsgFromUserId_ = this.latestMsgFromUserId_;
                unreadInfo.bitField0_ = i;
                return unreadInfo;
            }

            public Builder mergeFrom(UnreadInfo unreadInfo) {
                if (unreadInfo != UnreadInfo.getDefaultInstance()) {
                    if (unreadInfo.hasSessionId()) {
                        setSessionId(unreadInfo.getSessionId());
                    }
                    if (unreadInfo.hasSessionType()) {
                        setSessionType(unreadInfo.getSessionType());
                    }
                    if (unreadInfo.hasUnreadCnt()) {
                        setUnreadCnt(unreadInfo.getUnreadCnt());
                    }
                    if (unreadInfo.hasLatestMsgId()) {
                        setLatestMsgId(unreadInfo.getLatestMsgId());
                    }
                    if (unreadInfo.hasLatestMsgData()) {
                        setLatestMsgData(unreadInfo.getLatestMsgData());
                    }
                    if (unreadInfo.hasLatestMsgType()) {
                        setLatestMsgType(unreadInfo.getLatestMsgType());
                    }
                    if (unreadInfo.hasLatestMsgFromUserId()) {
                        setLatestMsgFromUserId(unreadInfo.getLatestMsgFromUserId());
                    }
                    setUnknownFields(getUnknownFields().concat(unreadInfo.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasSessionId() && hasSessionType() && hasUnreadCnt() && hasLatestMsgId() && hasLatestMsgData() && hasLatestMsgType() && hasLatestMsgFromUserId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UnreadInfo unreadInfo;
                UnreadInfo unreadInfo2;
                try {
                    UnreadInfo unreadInfo3 = (UnreadInfo) UnreadInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (unreadInfo3 != null) {
                        mergeFrom(unreadInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    unreadInfo2 = (UnreadInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    unreadInfo = unreadInfo2;
                    th = th2;
                }
                if (unreadInfo != null) {
                    mergeFrom(unreadInfo);
                }
                throw th;
            }

            public boolean hasSessionId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 1;
                this.sessionId_ = i;
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -2;
                this.sessionId_ = 0;
                return this;
            }

            public boolean hasSessionType() {
                return (this.bitField0_ & 2) == 2;
            }

            public SessionType getSessionType() {
                return this.sessionType_;
            }

            public Builder setSessionType(SessionType sessionType) {
                if (sessionType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.sessionType_ = sessionType;
                return this;
            }

            public Builder clearSessionType() {
                this.bitField0_ &= -3;
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                return this;
            }

            public boolean hasUnreadCnt() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getUnreadCnt() {
                return this.unreadCnt_;
            }

            public Builder setUnreadCnt(int i) {
                this.bitField0_ |= 4;
                this.unreadCnt_ = i;
                return this;
            }

            public Builder clearUnreadCnt() {
                this.bitField0_ &= -5;
                this.unreadCnt_ = 0;
                return this;
            }

            public boolean hasLatestMsgId() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getLatestMsgId() {
                return this.latestMsgId_;
            }

            public Builder setLatestMsgId(int i) {
                this.bitField0_ |= 8;
                this.latestMsgId_ = i;
                return this;
            }

            public Builder clearLatestMsgId() {
                this.bitField0_ &= -9;
                this.latestMsgId_ = 0;
                return this;
            }

            public boolean hasLatestMsgData() {
                return (this.bitField0_ & 16) == 16;
            }

            public ByteString getLatestMsgData() {
                return this.latestMsgData_;
            }

            public Builder setLatestMsgData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.latestMsgData_ = byteString;
                return this;
            }

            public Builder clearLatestMsgData() {
                this.bitField0_ &= -17;
                this.latestMsgData_ = UnreadInfo.getDefaultInstance().getLatestMsgData();
                return this;
            }

            public boolean hasLatestMsgType() {
                return (this.bitField0_ & 32) == 32;
            }

            public MsgType getLatestMsgType() {
                return this.latestMsgType_;
            }

            public Builder setLatestMsgType(MsgType msgType) {
                if (msgType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.latestMsgType_ = msgType;
                return this;
            }

            public Builder clearLatestMsgType() {
                this.bitField0_ &= -33;
                this.latestMsgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
                return this;
            }

            public boolean hasLatestMsgFromUserId() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getLatestMsgFromUserId() {
                return this.latestMsgFromUserId_;
            }

            public Builder setLatestMsgFromUserId(int i) {
                this.bitField0_ |= 64;
                this.latestMsgFromUserId_ = i;
                return this;
            }

            public Builder clearLatestMsgFromUserId() {
                this.bitField0_ &= -65;
                this.latestMsgFromUserId_ = 0;
                return this;
            }
        }

        private UnreadInfo(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private UnreadInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static UnreadInfo getDefaultInstance() {
            return defaultInstance;
        }

        public UnreadInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        private UnreadInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.sessionId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            int readEnum = codedInputStream.readEnum();
                            SessionType valueOf = SessionType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 2;
                                this.sessionType_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 24:
                            this.bitField0_ |= 4;
                            this.unreadCnt_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.latestMsgId_ = codedInputStream.readUInt32();
                            break;
                        case 42:
                            this.bitField0_ |= 16;
                            this.latestMsgData_ = codedInputStream.readBytes();
                            break;
                        case 48:
                            int readEnum2 = codedInputStream.readEnum();
                            MsgType valueOf2 = MsgType.valueOf(readEnum2);
                            if (valueOf2 != null) {
                                this.bitField0_ |= 32;
                                this.latestMsgType_ = valueOf2;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum2);
                                break;
                            }
                        case 56:
                            this.bitField0_ |= 64;
                            this.latestMsgFromUserId_ = codedInputStream.readUInt32();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<UnreadInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public boolean hasSessionType() {
            return (this.bitField0_ & 2) == 2;
        }

        public SessionType getSessionType() {
            return this.sessionType_;
        }

        public boolean hasUnreadCnt() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getUnreadCnt() {
            return this.unreadCnt_;
        }

        public boolean hasLatestMsgId() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getLatestMsgId() {
            return this.latestMsgId_;
        }

        public boolean hasLatestMsgData() {
            return (this.bitField0_ & 16) == 16;
        }

        public ByteString getLatestMsgData() {
            return this.latestMsgData_;
        }

        public boolean hasLatestMsgType() {
            return (this.bitField0_ & 32) == 32;
        }

        public MsgType getLatestMsgType() {
            return this.latestMsgType_;
        }

        public boolean hasLatestMsgFromUserId() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getLatestMsgFromUserId() {
            return this.latestMsgFromUserId_;
        }

        private void initFields() {
            this.sessionId_ = 0;
            this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
            this.unreadCnt_ = 0;
            this.latestMsgId_ = 0;
            this.latestMsgData_ = ByteString.EMPTY;
            this.latestMsgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
            this.latestMsgFromUserId_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasSessionId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSessionType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasUnreadCnt()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasLatestMsgId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasLatestMsgData()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasLatestMsgType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasLatestMsgFromUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.sessionId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.unreadCnt_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.latestMsgId_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, this.latestMsgData_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeEnum(6, this.latestMsgType_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt32(7, this.latestMsgFromUserId_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.sessionId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeEnumSize(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.unreadCnt_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.latestMsgId_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, this.latestMsgData_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeEnumSize(6, this.latestMsgType_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeUInt32Size(7, this.latestMsgFromUserId_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static UnreadInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (UnreadInfo) PARSER.parseFrom(byteString);
        }

        public static UnreadInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UnreadInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UnreadInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (UnreadInfo) PARSER.parseFrom(bArr);
        }

        public static UnreadInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UnreadInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static UnreadInfo parseFrom(InputStream inputStream) throws IOException {
            return (UnreadInfo) PARSER.parseFrom(inputStream);
        }

        public static UnreadInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UnreadInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static UnreadInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UnreadInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static UnreadInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UnreadInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static UnreadInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (UnreadInfo) PARSER.parseFrom(codedInputStream);
        }

        public static UnreadInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UnreadInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(UnreadInfo unreadInfo) {
            return newBuilder().mergeFrom(unreadInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface UnreadInfoOrBuilder extends MessageLiteOrBuilder {
        ByteString getLatestMsgData();

        int getLatestMsgFromUserId();

        int getLatestMsgId();

        MsgType getLatestMsgType();

        int getSessionId();

        SessionType getSessionType();

        int getUnreadCnt();

        boolean hasLatestMsgData();

        boolean hasLatestMsgFromUserId();

        boolean hasLatestMsgId();

        boolean hasLatestMsgType();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUnreadCnt();
    }

    public static final class UserInfo extends GeneratedMessageLite implements UserInfoOrBuilder {
        public static final int AVATAR_URL_FIELD_NUMBER = 4;
        public static final int DEPARTMENT_ID_FIELD_NUMBER = 5;
        public static final int DISTANCE_FIELD_NUMBER = 12;
        public static final int EMAIL_FIELD_NUMBER = 6;
        public static final int LATITUDE_FIELD_NUMBER = 14;
        public static final int LONGITUDE_FIELD_NUMBER = 13;
        public static Parser<UserInfo> PARSER = new AbstractParser<UserInfo>() {
            public UserInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new UserInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PHONE_VERIFIED_FIELD_NUMBER = 11;
        public static final int STATUS_FIELD_NUMBER = 10;
        public static final int USER_DOMAIN_FIELD_NUMBER = 9;
        public static final int USER_GENDER_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        public static final int USER_NICK_NAME_FIELD_NUMBER = 3;
        public static final int USER_REAL_NAME_FIELD_NUMBER = 7;
        public static final int USER_TEL_FIELD_NUMBER = 8;
        private static final UserInfo defaultInstance = new UserInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public Object avatarUrl_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int departmentId_;
        /* access modifiers changed from: private */
        public int distance_;
        /* access modifiers changed from: private */
        public Object email_;
        /* access modifiers changed from: private */
        public Object latitude_;
        /* access modifiers changed from: private */
        public Object longitude_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int phoneVerified_;
        /* access modifiers changed from: private */
        public int status_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public Object userDomain_;
        /* access modifiers changed from: private */
        public int userGender_;
        /* access modifiers changed from: private */
        public int userId_;
        /* access modifiers changed from: private */
        public Object userNickName_;
        /* access modifiers changed from: private */
        public Object userRealName_;
        /* access modifiers changed from: private */
        public Object userTel_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<UserInfo, Builder> implements UserInfoOrBuilder {
            private Object avatarUrl_ = "";
            private int bitField0_;
            private int departmentId_;
            private int distance_;
            private Object email_ = "";
            private Object latitude_ = "";
            private Object longitude_ = "";
            private int phoneVerified_;
            private int status_;
            private Object userDomain_ = "";
            private int userGender_;
            private int userId_;
            private Object userNickName_ = "";
            private Object userRealName_ = "";
            private Object userTel_ = "";

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.userId_ = 0;
                this.bitField0_ &= -2;
                this.userGender_ = 0;
                this.bitField0_ &= -3;
                this.userNickName_ = "";
                this.bitField0_ &= -5;
                this.avatarUrl_ = "";
                this.bitField0_ &= -9;
                this.departmentId_ = 0;
                this.bitField0_ &= -17;
                this.email_ = "";
                this.bitField0_ &= -33;
                this.userRealName_ = "";
                this.bitField0_ &= -65;
                this.userTel_ = "";
                this.bitField0_ &= -129;
                this.userDomain_ = "";
                this.bitField0_ &= -257;
                this.status_ = 0;
                this.bitField0_ &= -513;
                this.phoneVerified_ = 0;
                this.bitField0_ &= -1025;
                this.distance_ = 0;
                this.bitField0_ &= -2049;
                this.longitude_ = "";
                this.bitField0_ &= -4097;
                this.latitude_ = "";
                this.bitField0_ &= -8193;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public UserInfo getDefaultInstanceForType() {
                return UserInfo.getDefaultInstance();
            }

            public UserInfo build() {
                UserInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public UserInfo buildPartial() {
                int i = 1;
                UserInfo userInfo = new UserInfo((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                userInfo.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                userInfo.userGender_ = this.userGender_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                userInfo.userNickName_ = this.userNickName_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                userInfo.avatarUrl_ = this.avatarUrl_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                userInfo.departmentId_ = this.departmentId_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                userInfo.email_ = this.email_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                userInfo.userRealName_ = this.userRealName_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                userInfo.userTel_ = this.userTel_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                userInfo.userDomain_ = this.userDomain_;
                if ((i2 & 512) == 512) {
                    i |= 512;
                }
                userInfo.status_ = this.status_;
                if ((i2 & 1024) == 1024) {
                    i |= 1024;
                }
                userInfo.phoneVerified_ = this.phoneVerified_;
                if ((i2 & 2048) == 2048) {
                    i |= 2048;
                }
                userInfo.distance_ = this.distance_;
                if ((i2 & 4096) == 4096) {
                    i |= 4096;
                }
                userInfo.longitude_ = this.longitude_;
                if ((i2 & 8192) == 8192) {
                    i |= 8192;
                }
                userInfo.latitude_ = this.latitude_;
                userInfo.bitField0_ = i;
                return userInfo;
            }

            public Builder mergeFrom(UserInfo userInfo) {
                if (userInfo != UserInfo.getDefaultInstance()) {
                    if (userInfo.hasUserId()) {
                        setUserId(userInfo.getUserId());
                    }
                    if (userInfo.hasUserGender()) {
                        setUserGender(userInfo.getUserGender());
                    }
                    if (userInfo.hasUserNickName()) {
                        this.bitField0_ |= 4;
                        this.userNickName_ = userInfo.userNickName_;
                    }
                    if (userInfo.hasAvatarUrl()) {
                        this.bitField0_ |= 8;
                        this.avatarUrl_ = userInfo.avatarUrl_;
                    }
                    if (userInfo.hasDepartmentId()) {
                        setDepartmentId(userInfo.getDepartmentId());
                    }
                    if (userInfo.hasEmail()) {
                        this.bitField0_ |= 32;
                        this.email_ = userInfo.email_;
                    }
                    if (userInfo.hasUserRealName()) {
                        this.bitField0_ |= 64;
                        this.userRealName_ = userInfo.userRealName_;
                    }
                    if (userInfo.hasUserTel()) {
                        this.bitField0_ |= 128;
                        this.userTel_ = userInfo.userTel_;
                    }
                    if (userInfo.hasUserDomain()) {
                        this.bitField0_ |= 256;
                        this.userDomain_ = userInfo.userDomain_;
                    }
                    if (userInfo.hasStatus()) {
                        setStatus(userInfo.getStatus());
                    }
                    if (userInfo.hasPhoneVerified()) {
                        setPhoneVerified(userInfo.getPhoneVerified());
                    }
                    if (userInfo.hasDistance()) {
                        setDistance(userInfo.getDistance());
                    }
                    if (userInfo.hasLongitude()) {
                        this.bitField0_ |= 4096;
                        this.longitude_ = userInfo.longitude_;
                    }
                    if (userInfo.hasLatitude()) {
                        this.bitField0_ |= 8192;
                        this.latitude_ = userInfo.latitude_;
                    }
                    setUnknownFields(getUnknownFields().concat(userInfo.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UserInfo userInfo;
                UserInfo userInfo2;
                try {
                    UserInfo userInfo3 = (UserInfo) UserInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (userInfo3 != null) {
                        mergeFrom(userInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    userInfo2 = (UserInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    userInfo = userInfo2;
                    th = th2;
                }
                if (userInfo != null) {
                    mergeFrom(userInfo);
                }
                throw th;
            }

            public boolean hasUserId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getUserId() {
                return this.userId_;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 1;
                this.userId_ = i;
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -2;
                this.userId_ = 0;
                return this;
            }

            public boolean hasUserGender() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getUserGender() {
                return this.userGender_;
            }

            public Builder setUserGender(int i) {
                this.bitField0_ |= 2;
                this.userGender_ = i;
                return this;
            }

            public Builder clearUserGender() {
                this.bitField0_ &= -3;
                this.userGender_ = 0;
                return this;
            }

            public boolean hasUserNickName() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getUserNickName() {
                Object obj = this.userNickName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.userNickName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUserNickNameBytes() {
                Object obj = this.userNickName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userNickName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUserNickName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.userNickName_ = str;
                return this;
            }

            public Builder clearUserNickName() {
                this.bitField0_ &= -5;
                this.userNickName_ = UserInfo.getDefaultInstance().getUserNickName();
                return this;
            }

            public Builder setUserNickNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.userNickName_ = byteString;
                return this;
            }

            public boolean hasAvatarUrl() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getAvatarUrl() {
                Object obj = this.avatarUrl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.avatarUrl_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getAvatarUrlBytes() {
                Object obj = this.avatarUrl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.avatarUrl_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setAvatarUrl(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.avatarUrl_ = str;
                return this;
            }

            public Builder clearAvatarUrl() {
                this.bitField0_ &= -9;
                this.avatarUrl_ = UserInfo.getDefaultInstance().getAvatarUrl();
                return this;
            }

            public Builder setAvatarUrlBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.avatarUrl_ = byteString;
                return this;
            }

            public boolean hasDepartmentId() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getDepartmentId() {
                return this.departmentId_;
            }

            public Builder setDepartmentId(int i) {
                this.bitField0_ |= 16;
                this.departmentId_ = i;
                return this;
            }

            public Builder clearDepartmentId() {
                this.bitField0_ &= -17;
                this.departmentId_ = 0;
                return this;
            }

            public boolean hasEmail() {
                return (this.bitField0_ & 32) == 32;
            }

            public String getEmail() {
                Object obj = this.email_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.email_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getEmailBytes() {
                Object obj = this.email_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.email_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setEmail(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.email_ = str;
                return this;
            }

            public Builder clearEmail() {
                this.bitField0_ &= -33;
                this.email_ = UserInfo.getDefaultInstance().getEmail();
                return this;
            }

            public Builder setEmailBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.email_ = byteString;
                return this;
            }

            public boolean hasUserRealName() {
                return (this.bitField0_ & 64) == 64;
            }

            public String getUserRealName() {
                Object obj = this.userRealName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.userRealName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUserRealNameBytes() {
                Object obj = this.userRealName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userRealName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUserRealName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.userRealName_ = str;
                return this;
            }

            public Builder clearUserRealName() {
                this.bitField0_ &= -65;
                this.userRealName_ = UserInfo.getDefaultInstance().getUserRealName();
                return this;
            }

            public Builder setUserRealNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.userRealName_ = byteString;
                return this;
            }

            public boolean hasUserTel() {
                return (this.bitField0_ & 128) == 128;
            }

            public String getUserTel() {
                Object obj = this.userTel_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.userTel_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUserTelBytes() {
                Object obj = this.userTel_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userTel_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUserTel(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.userTel_ = str;
                return this;
            }

            public Builder clearUserTel() {
                this.bitField0_ &= -129;
                this.userTel_ = UserInfo.getDefaultInstance().getUserTel();
                return this;
            }

            public Builder setUserTelBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.userTel_ = byteString;
                return this;
            }

            public boolean hasUserDomain() {
                return (this.bitField0_ & 256) == 256;
            }

            public String getUserDomain() {
                Object obj = this.userDomain_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.userDomain_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUserDomainBytes() {
                Object obj = this.userDomain_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userDomain_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUserDomain(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.userDomain_ = str;
                return this;
            }

            public Builder clearUserDomain() {
                this.bitField0_ &= -257;
                this.userDomain_ = UserInfo.getDefaultInstance().getUserDomain();
                return this;
            }

            public Builder setUserDomainBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.userDomain_ = byteString;
                return this;
            }

            public boolean hasStatus() {
                return (this.bitField0_ & 512) == 512;
            }

            public int getStatus() {
                return this.status_;
            }

            public Builder setStatus(int i) {
                this.bitField0_ |= 512;
                this.status_ = i;
                return this;
            }

            public Builder clearStatus() {
                this.bitField0_ &= -513;
                this.status_ = 0;
                return this;
            }

            public boolean hasPhoneVerified() {
                return (this.bitField0_ & 1024) == 1024;
            }

            public int getPhoneVerified() {
                return this.phoneVerified_;
            }

            public Builder setPhoneVerified(int i) {
                this.bitField0_ |= 1024;
                this.phoneVerified_ = i;
                return this;
            }

            public Builder clearPhoneVerified() {
                this.bitField0_ &= -1025;
                this.phoneVerified_ = 0;
                return this;
            }

            public boolean hasDistance() {
                return (this.bitField0_ & 2048) == 2048;
            }

            public int getDistance() {
                return this.distance_;
            }

            public Builder setDistance(int i) {
                this.bitField0_ |= 2048;
                this.distance_ = i;
                return this;
            }

            public Builder clearDistance() {
                this.bitField0_ &= -2049;
                this.distance_ = 0;
                return this;
            }

            public boolean hasLongitude() {
                return (this.bitField0_ & 4096) == 4096;
            }

            public String getLongitude() {
                Object obj = this.longitude_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.longitude_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getLongitudeBytes() {
                Object obj = this.longitude_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.longitude_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setLongitude(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4096;
                this.longitude_ = str;
                return this;
            }

            public Builder clearLongitude() {
                this.bitField0_ &= -4097;
                this.longitude_ = UserInfo.getDefaultInstance().getLongitude();
                return this;
            }

            public Builder setLongitudeBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4096;
                this.longitude_ = byteString;
                return this;
            }

            public boolean hasLatitude() {
                return (this.bitField0_ & 8192) == 8192;
            }

            public String getLatitude() {
                Object obj = this.latitude_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.latitude_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getLatitudeBytes() {
                Object obj = this.latitude_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.latitude_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setLatitude(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8192;
                this.latitude_ = str;
                return this;
            }

            public Builder clearLatitude() {
                this.bitField0_ &= -8193;
                this.latitude_ = UserInfo.getDefaultInstance().getLatitude();
                return this;
            }

            public Builder setLatitudeBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8192;
                this.latitude_ = byteString;
                return this;
            }
        }

        private UserInfo(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private UserInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static UserInfo getDefaultInstance() {
            return defaultInstance;
        }

        public UserInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        private UserInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.userId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.userGender_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.userNickName_ = readBytes;
                            break;
                        case 34:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.avatarUrl_ = readBytes2;
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.departmentId_ = codedInputStream.readUInt32();
                            break;
                        case 50:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 32;
                            this.email_ = readBytes3;
                            break;
                        case 58:
                            ByteString readBytes4 = codedInputStream.readBytes();
                            this.bitField0_ |= 64;
                            this.userRealName_ = readBytes4;
                            break;
                        case 66:
                            ByteString readBytes5 = codedInputStream.readBytes();
                            this.bitField0_ |= 128;
                            this.userTel_ = readBytes5;
                            break;
                        case 74:
                            ByteString readBytes6 = codedInputStream.readBytes();
                            this.bitField0_ |= 256;
                            this.userDomain_ = readBytes6;
                            break;
                        case 80:
                            this.bitField0_ |= 512;
                            this.status_ = codedInputStream.readUInt32();
                            break;
                        case 88:
                            this.bitField0_ |= 1024;
                            this.phoneVerified_ = codedInputStream.readUInt32();
                            break;
                        case 96:
                            this.bitField0_ |= 2048;
                            this.distance_ = codedInputStream.readUInt32();
                            break;
                        case 106:
                            ByteString readBytes7 = codedInputStream.readBytes();
                            this.bitField0_ |= 4096;
                            this.longitude_ = readBytes7;
                            break;
                        case 114:
                            ByteString readBytes8 = codedInputStream.readBytes();
                            this.bitField0_ |= 8192;
                            this.latitude_ = readBytes8;
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<UserInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasUserGender() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getUserGender() {
            return this.userGender_;
        }

        public boolean hasUserNickName() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getUserNickName() {
            Object obj = this.userNickName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userNickName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUserNickNameBytes() {
            Object obj = this.userNickName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userNickName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasAvatarUrl() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getAvatarUrl() {
            Object obj = this.avatarUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.avatarUrl_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getAvatarUrlBytes() {
            Object obj = this.avatarUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.avatarUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasDepartmentId() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getDepartmentId() {
            return this.departmentId_;
        }

        public boolean hasEmail() {
            return (this.bitField0_ & 32) == 32;
        }

        public String getEmail() {
            Object obj = this.email_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.email_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getEmailBytes() {
            Object obj = this.email_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.email_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUserRealName() {
            return (this.bitField0_ & 64) == 64;
        }

        public String getUserRealName() {
            Object obj = this.userRealName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userRealName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUserRealNameBytes() {
            Object obj = this.userRealName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userRealName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUserTel() {
            return (this.bitField0_ & 128) == 128;
        }

        public String getUserTel() {
            Object obj = this.userTel_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userTel_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUserTelBytes() {
            Object obj = this.userTel_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userTel_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUserDomain() {
            return (this.bitField0_ & 256) == 256;
        }

        public String getUserDomain() {
            Object obj = this.userDomain_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userDomain_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUserDomainBytes() {
            Object obj = this.userDomain_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userDomain_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasStatus() {
            return (this.bitField0_ & 512) == 512;
        }

        public int getStatus() {
            return this.status_;
        }

        public boolean hasPhoneVerified() {
            return (this.bitField0_ & 1024) == 1024;
        }

        public int getPhoneVerified() {
            return this.phoneVerified_;
        }

        public boolean hasDistance() {
            return (this.bitField0_ & 2048) == 2048;
        }

        public int getDistance() {
            return this.distance_;
        }

        public boolean hasLongitude() {
            return (this.bitField0_ & 4096) == 4096;
        }

        public String getLongitude() {
            Object obj = this.longitude_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.longitude_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getLongitudeBytes() {
            Object obj = this.longitude_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.longitude_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasLatitude() {
            return (this.bitField0_ & 8192) == 8192;
        }

        public String getLatitude() {
            Object obj = this.latitude_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.latitude_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getLatitudeBytes() {
            Object obj = this.latitude_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.latitude_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.userId_ = 0;
            this.userGender_ = 0;
            this.userNickName_ = "";
            this.avatarUrl_ = "";
            this.departmentId_ = 0;
            this.email_ = "";
            this.userRealName_ = "";
            this.userTel_ = "";
            this.userDomain_ = "";
            this.status_ = 0;
            this.phoneVerified_ = 0;
            this.distance_ = 0;
            this.longitude_ = "";
            this.latitude_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.userGender_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getUserNickNameBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getAvatarUrlBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt32(5, this.departmentId_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, getEmailBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBytes(7, getUserRealNameBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeBytes(8, getUserTelBytes());
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeBytes(9, getUserDomainBytes());
            }
            if ((this.bitField0_ & 512) == 512) {
                codedOutputStream.writeUInt32(10, this.status_);
            }
            if ((this.bitField0_ & 1024) == 1024) {
                codedOutputStream.writeUInt32(11, this.phoneVerified_);
            }
            if ((this.bitField0_ & 2048) == 2048) {
                codedOutputStream.writeUInt32(12, this.distance_);
            }
            if ((this.bitField0_ & 4096) == 4096) {
                codedOutputStream.writeBytes(13, getLongitudeBytes());
            }
            if ((this.bitField0_ & 8192) == 8192) {
                codedOutputStream.writeBytes(14, getLatitudeBytes());
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.userGender_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getUserNickNameBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getAvatarUrlBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt32Size(5, this.departmentId_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(6, getEmailBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeBytesSize(7, getUserRealNameBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeBytesSize(8, getUserTelBytes());
            }
            if ((this.bitField0_ & 256) == 256) {
                i2 += CodedOutputStream.computeBytesSize(9, getUserDomainBytes());
            }
            if ((this.bitField0_ & 512) == 512) {
                i2 += CodedOutputStream.computeUInt32Size(10, this.status_);
            }
            if ((this.bitField0_ & 1024) == 1024) {
                i2 += CodedOutputStream.computeUInt32Size(11, this.phoneVerified_);
            }
            if ((this.bitField0_ & 2048) == 2048) {
                i2 += CodedOutputStream.computeUInt32Size(12, this.distance_);
            }
            if ((this.bitField0_ & 4096) == 4096) {
                i2 += CodedOutputStream.computeBytesSize(13, getLongitudeBytes());
            }
            if ((this.bitField0_ & 8192) == 8192) {
                i2 += CodedOutputStream.computeBytesSize(14, getLatitudeBytes());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static UserInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (UserInfo) PARSER.parseFrom(byteString);
        }

        public static UserInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UserInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UserInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (UserInfo) PARSER.parseFrom(bArr);
        }

        public static UserInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UserInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static UserInfo parseFrom(InputStream inputStream) throws IOException {
            return (UserInfo) PARSER.parseFrom(inputStream);
        }

        public static UserInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static UserInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UserInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static UserInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static UserInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (UserInfo) PARSER.parseFrom(codedInputStream);
        }

        public static UserInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(UserInfo userInfo) {
            return newBuilder().mergeFrom(userInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface UserInfoOrBuilder extends MessageLiteOrBuilder {
        String getAvatarUrl();

        ByteString getAvatarUrlBytes();

        int getDepartmentId();

        int getDistance();

        String getEmail();

        ByteString getEmailBytes();

        String getLatitude();

        ByteString getLatitudeBytes();

        String getLongitude();

        ByteString getLongitudeBytes();

        int getPhoneVerified();

        int getStatus();

        String getUserDomain();

        ByteString getUserDomainBytes();

        int getUserGender();

        int getUserId();

        String getUserNickName();

        ByteString getUserNickNameBytes();

        String getUserRealName();

        ByteString getUserRealNameBytes();

        String getUserTel();

        ByteString getUserTelBytes();

        boolean hasAvatarUrl();

        boolean hasDepartmentId();

        boolean hasDistance();

        boolean hasEmail();

        boolean hasLatitude();

        boolean hasLongitude();

        boolean hasPhoneVerified();

        boolean hasStatus();

        boolean hasUserDomain();

        boolean hasUserGender();

        boolean hasUserId();

        boolean hasUserNickName();

        boolean hasUserRealName();

        boolean hasUserTel();
    }

    public static final class UserStat extends GeneratedMessageLite implements UserStatOrBuilder {
        public static Parser<UserStat> PARSER = new AbstractParser<UserStat>() {
            public UserStat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new UserStat(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int STATUS_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final UserStat defaultInstance = new UserStat(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public UserStatType status_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<UserStat, Builder> implements UserStatOrBuilder {
            private int bitField0_;
            private UserStatType status_ = UserStatType.USER_STATUS_ONLINE;
            private int userId_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.userId_ = 0;
                this.bitField0_ &= -2;
                this.status_ = UserStatType.USER_STATUS_ONLINE;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public UserStat getDefaultInstanceForType() {
                return UserStat.getDefaultInstance();
            }

            public UserStat build() {
                UserStat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public UserStat buildPartial() {
                int i = 1;
                UserStat userStat = new UserStat((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                userStat.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                userStat.status_ = this.status_;
                userStat.bitField0_ = i;
                return userStat;
            }

            public Builder mergeFrom(UserStat userStat) {
                if (userStat != UserStat.getDefaultInstance()) {
                    if (userStat.hasUserId()) {
                        setUserId(userStat.getUserId());
                    }
                    if (userStat.hasStatus()) {
                        setStatus(userStat.getStatus());
                    }
                    setUnknownFields(getUnknownFields().concat(userStat.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasStatus()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UserStat userStat;
                UserStat userStat2;
                try {
                    UserStat userStat3 = (UserStat) UserStat.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (userStat3 != null) {
                        mergeFrom(userStat3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    userStat2 = (UserStat) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    userStat = userStat2;
                    th = th2;
                }
                if (userStat != null) {
                    mergeFrom(userStat);
                }
                throw th;
            }

            public boolean hasUserId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getUserId() {
                return this.userId_;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 1;
                this.userId_ = i;
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -2;
                this.userId_ = 0;
                return this;
            }

            public boolean hasStatus() {
                return (this.bitField0_ & 2) == 2;
            }

            public UserStatType getStatus() {
                return this.status_;
            }

            public Builder setStatus(UserStatType userStatType) {
                if (userStatType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.status_ = userStatType;
                return this;
            }

            public Builder clearStatus() {
                this.bitField0_ &= -3;
                this.status_ = UserStatType.USER_STATUS_ONLINE;
                return this;
            }
        }

        private UserStat(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private UserStat(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static UserStat getDefaultInstance() {
            return defaultInstance;
        }

        public UserStat getDefaultInstanceForType() {
            return defaultInstance;
        }

        private UserStat(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.userId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            int readEnum = codedInputStream.readEnum();
                            UserStatType valueOf = UserStatType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 2;
                                this.status_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<UserStat> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasStatus() {
            return (this.bitField0_ & 2) == 2;
        }

        public UserStatType getStatus() {
            return this.status_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.status_ = UserStatType.USER_STATUS_ONLINE;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasStatus()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.status_.getNumber());
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeEnumSize(2, this.status_.getNumber());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static UserStat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (UserStat) PARSER.parseFrom(byteString);
        }

        public static UserStat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UserStat) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UserStat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (UserStat) PARSER.parseFrom(bArr);
        }

        public static UserStat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UserStat) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static UserStat parseFrom(InputStream inputStream) throws IOException {
            return (UserStat) PARSER.parseFrom(inputStream);
        }

        public static UserStat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserStat) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static UserStat parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UserStat) PARSER.parseDelimitedFrom(inputStream);
        }

        public static UserStat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserStat) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static UserStat parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (UserStat) PARSER.parseFrom(codedInputStream);
        }

        public static UserStat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserStat) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(UserStat userStat) {
            return newBuilder().mergeFrom(userStat);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface UserStatOrBuilder extends MessageLiteOrBuilder {
        UserStatType getStatus();

        int getUserId();

        boolean hasStatus();

        boolean hasUserId();
    }

    public enum UserStatType implements EnumLite {
        USER_STATUS_ONLINE(0, 1),
        USER_STATUS_OFFLINE(1, 2),
        USER_STATUS_LEAVE(2, 3);
        
        public static final int USER_STATUS_LEAVE_VALUE = 3;
        public static final int USER_STATUS_OFFLINE_VALUE = 2;
        public static final int USER_STATUS_ONLINE_VALUE = 1;
        private static EnumLiteMap<UserStatType> internalValueMap;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<UserStatType>() {
                public UserStatType findValueByNumber(int i) {
                    return UserStatType.valueOf(i);
                }
            };
        }

        public final int getNumber() {
            return this.value;
        }

        public static UserStatType valueOf(int i) {
            switch (i) {
                case 1:
                    return USER_STATUS_ONLINE;
                case 2:
                    return USER_STATUS_OFFLINE;
                case 3:
                    return USER_STATUS_LEAVE;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<UserStatType> internalGetValueMap() {
            return internalValueMap;
        }

        private UserStatType(int i, int i2) {
            this.value = i2;
        }
    }

    public static final class UserTokenInfo extends GeneratedMessageLite implements UserTokenInfoOrBuilder {
        public static Parser<UserTokenInfo> PARSER = new AbstractParser<UserTokenInfo>() {
            public UserTokenInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new UserTokenInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PUSH_COUNT_FIELD_NUMBER = 4;
        public static final int PUSH_TYPE_FIELD_NUMBER = 5;
        public static final int TOKEN_FIELD_NUMBER = 3;
        public static final int USER_ID_FIELD_NUMBER = 1;
        public static final int USER_TYPE_FIELD_NUMBER = 2;
        private static final UserTokenInfo defaultInstance = new UserTokenInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int pushCount_;
        /* access modifiers changed from: private */
        public int pushType_;
        /* access modifiers changed from: private */
        public Object token_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;
        /* access modifiers changed from: private */
        public ClientType userType_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<UserTokenInfo, Builder> implements UserTokenInfoOrBuilder {
            private int bitField0_;
            private int pushCount_;
            private int pushType_;
            private Object token_ = "";
            private int userId_;
            private ClientType userType_ = ClientType.CLIENT_TYPE_WINDOWS;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.userId_ = 0;
                this.bitField0_ &= -2;
                this.userType_ = ClientType.CLIENT_TYPE_WINDOWS;
                this.bitField0_ &= -3;
                this.token_ = "";
                this.bitField0_ &= -5;
                this.pushCount_ = 0;
                this.bitField0_ &= -9;
                this.pushType_ = 0;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public UserTokenInfo getDefaultInstanceForType() {
                return UserTokenInfo.getDefaultInstance();
            }

            public UserTokenInfo build() {
                UserTokenInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public UserTokenInfo buildPartial() {
                int i = 1;
                UserTokenInfo userTokenInfo = new UserTokenInfo((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                userTokenInfo.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                userTokenInfo.userType_ = this.userType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                userTokenInfo.token_ = this.token_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                userTokenInfo.pushCount_ = this.pushCount_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                userTokenInfo.pushType_ = this.pushType_;
                userTokenInfo.bitField0_ = i;
                return userTokenInfo;
            }

            public Builder mergeFrom(UserTokenInfo userTokenInfo) {
                if (userTokenInfo != UserTokenInfo.getDefaultInstance()) {
                    if (userTokenInfo.hasUserId()) {
                        setUserId(userTokenInfo.getUserId());
                    }
                    if (userTokenInfo.hasUserType()) {
                        setUserType(userTokenInfo.getUserType());
                    }
                    if (userTokenInfo.hasToken()) {
                        this.bitField0_ |= 4;
                        this.token_ = userTokenInfo.token_;
                    }
                    if (userTokenInfo.hasPushCount()) {
                        setPushCount(userTokenInfo.getPushCount());
                    }
                    if (userTokenInfo.hasPushType()) {
                        setPushType(userTokenInfo.getPushType());
                    }
                    setUnknownFields(getUnknownFields().concat(userTokenInfo.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasUserType() && hasToken() && hasPushCount() && hasPushType()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UserTokenInfo userTokenInfo;
                UserTokenInfo userTokenInfo2;
                try {
                    UserTokenInfo userTokenInfo3 = (UserTokenInfo) UserTokenInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (userTokenInfo3 != null) {
                        mergeFrom(userTokenInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    userTokenInfo2 = (UserTokenInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    userTokenInfo = userTokenInfo2;
                    th = th2;
                }
                if (userTokenInfo != null) {
                    mergeFrom(userTokenInfo);
                }
                throw th;
            }

            public boolean hasUserId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getUserId() {
                return this.userId_;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 1;
                this.userId_ = i;
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -2;
                this.userId_ = 0;
                return this;
            }

            public boolean hasUserType() {
                return (this.bitField0_ & 2) == 2;
            }

            public ClientType getUserType() {
                return this.userType_;
            }

            public Builder setUserType(ClientType clientType) {
                if (clientType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.userType_ = clientType;
                return this;
            }

            public Builder clearUserType() {
                this.bitField0_ &= -3;
                this.userType_ = ClientType.CLIENT_TYPE_WINDOWS;
                return this;
            }

            public boolean hasToken() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getToken() {
                Object obj = this.token_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.token_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTokenBytes() {
                Object obj = this.token_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setToken(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.token_ = str;
                return this;
            }

            public Builder clearToken() {
                this.bitField0_ &= -5;
                this.token_ = UserTokenInfo.getDefaultInstance().getToken();
                return this;
            }

            public Builder setTokenBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.token_ = byteString;
                return this;
            }

            public boolean hasPushCount() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getPushCount() {
                return this.pushCount_;
            }

            public Builder setPushCount(int i) {
                this.bitField0_ |= 8;
                this.pushCount_ = i;
                return this;
            }

            public Builder clearPushCount() {
                this.bitField0_ &= -9;
                this.pushCount_ = 0;
                return this;
            }

            public boolean hasPushType() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getPushType() {
                return this.pushType_;
            }

            public Builder setPushType(int i) {
                this.bitField0_ |= 16;
                this.pushType_ = i;
                return this;
            }

            public Builder clearPushType() {
                this.bitField0_ &= -17;
                this.pushType_ = 0;
                return this;
            }
        }

        private UserTokenInfo(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private UserTokenInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static UserTokenInfo getDefaultInstance() {
            return defaultInstance;
        }

        public UserTokenInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        private UserTokenInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.userId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            int readEnum = codedInputStream.readEnum();
                            ClientType valueOf = ClientType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 2;
                                this.userType_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.token_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.pushCount_ = codedInputStream.readUInt32();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.pushType_ = codedInputStream.readUInt32();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException e3) {
                    } finally {
                        this.unknownFields = newOutput.toByteString();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException e4) {
            } finally {
                this.unknownFields = newOutput.toByteString();
            }
            makeExtensionsImmutable();
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<UserTokenInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasUserType() {
            return (this.bitField0_ & 2) == 2;
        }

        public ClientType getUserType() {
            return this.userType_;
        }

        public boolean hasToken() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getToken() {
            Object obj = this.token_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.token_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasPushCount() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getPushCount() {
            return this.pushCount_;
        }

        public boolean hasPushType() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getPushType() {
            return this.pushType_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.userType_ = ClientType.CLIENT_TYPE_WINDOWS;
            this.token_ = "";
            this.pushCount_ = 0;
            this.pushType_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasUserType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasToken()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasPushCount()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasPushType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.userType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getTokenBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.pushCount_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt32(5, this.pushType_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.bitField0_ & 1) == 1) {
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeEnumSize(2, this.userType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getTokenBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.pushCount_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt32Size(5, this.pushType_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static UserTokenInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (UserTokenInfo) PARSER.parseFrom(byteString);
        }

        public static UserTokenInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UserTokenInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UserTokenInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (UserTokenInfo) PARSER.parseFrom(bArr);
        }

        public static UserTokenInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UserTokenInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static UserTokenInfo parseFrom(InputStream inputStream) throws IOException {
            return (UserTokenInfo) PARSER.parseFrom(inputStream);
        }

        public static UserTokenInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserTokenInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static UserTokenInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UserTokenInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static UserTokenInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserTokenInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static UserTokenInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (UserTokenInfo) PARSER.parseFrom(codedInputStream);
        }

        public static UserTokenInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserTokenInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(UserTokenInfo userTokenInfo) {
            return newBuilder().mergeFrom(userTokenInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface UserTokenInfoOrBuilder extends MessageLiteOrBuilder {
        int getPushCount();

        int getPushType();

        String getToken();

        ByteString getTokenBytes();

        int getUserId();

        ClientType getUserType();

        boolean hasPushCount();

        boolean hasPushType();

        boolean hasToken();

        boolean hasUserId();

        boolean hasUserType();
    }

    private IMBaseDefine() {
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
