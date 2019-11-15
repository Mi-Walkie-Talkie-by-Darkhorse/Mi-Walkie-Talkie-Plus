package com.ifengyu.im.protobuf;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.ByteString.Output;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.ifengyu.im.protobuf.IMBaseDefine.ClientType;
import com.ifengyu.im.protobuf.IMBaseDefine.KickReasonType;
import com.ifengyu.im.protobuf.IMBaseDefine.ResultType;
import com.ifengyu.im.protobuf.IMBaseDefine.UserInfo;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.OutputStream;

public final class IMLogin {

    public static final class IMDeviceTokenReq extends GeneratedMessageLite implements IMDeviceTokenReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int CLIENT_TYPE_FIELD_NUMBER = 3;
        public static final int DEVICE_TOKEN_FIELD_NUMBER = 2;
        public static Parser<IMDeviceTokenReq> PARSER = new AbstractParser<IMDeviceTokenReq>() {
            public IMDeviceTokenReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMDeviceTokenReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMDeviceTokenReq defaultInstance = new IMDeviceTokenReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ClientType clientType_;
        /* access modifiers changed from: private */
        public Object deviceToken_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMDeviceTokenReq, Builder> implements IMDeviceTokenReqOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private ClientType clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
            private Object deviceToken_ = "";
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
                this.deviceToken_ = "";
                this.bitField0_ &= -3;
                this.clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
                this.bitField0_ &= -5;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMDeviceTokenReq getDefaultInstanceForType() {
                return IMDeviceTokenReq.getDefaultInstance();
            }

            public IMDeviceTokenReq build() {
                IMDeviceTokenReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMDeviceTokenReq buildPartial() {
                int i = 1;
                IMDeviceTokenReq iMDeviceTokenReq = new IMDeviceTokenReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMDeviceTokenReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMDeviceTokenReq.deviceToken_ = this.deviceToken_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMDeviceTokenReq.clientType_ = this.clientType_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMDeviceTokenReq.attachData_ = this.attachData_;
                iMDeviceTokenReq.bitField0_ = i;
                return iMDeviceTokenReq;
            }

            public Builder mergeFrom(IMDeviceTokenReq iMDeviceTokenReq) {
                if (iMDeviceTokenReq != IMDeviceTokenReq.getDefaultInstance()) {
                    if (iMDeviceTokenReq.hasUserId()) {
                        setUserId(iMDeviceTokenReq.getUserId());
                    }
                    if (iMDeviceTokenReq.hasDeviceToken()) {
                        this.bitField0_ |= 2;
                        this.deviceToken_ = iMDeviceTokenReq.deviceToken_;
                    }
                    if (iMDeviceTokenReq.hasClientType()) {
                        setClientType(iMDeviceTokenReq.getClientType());
                    }
                    if (iMDeviceTokenReq.hasAttachData()) {
                        setAttachData(iMDeviceTokenReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMDeviceTokenReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasDeviceToken()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMDeviceTokenReq iMDeviceTokenReq;
                IMDeviceTokenReq iMDeviceTokenReq2;
                try {
                    IMDeviceTokenReq iMDeviceTokenReq3 = (IMDeviceTokenReq) IMDeviceTokenReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMDeviceTokenReq3 != null) {
                        mergeFrom(iMDeviceTokenReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMDeviceTokenReq2 = (IMDeviceTokenReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMDeviceTokenReq = iMDeviceTokenReq2;
                    th = th2;
                }
                if (iMDeviceTokenReq != null) {
                    mergeFrom(iMDeviceTokenReq);
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

            public boolean hasDeviceToken() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getDeviceToken() {
                Object obj = this.deviceToken_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.deviceToken_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getDeviceTokenBytes() {
                Object obj = this.deviceToken_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.deviceToken_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setDeviceToken(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.deviceToken_ = str;
                return this;
            }

            public Builder clearDeviceToken() {
                this.bitField0_ &= -3;
                this.deviceToken_ = IMDeviceTokenReq.getDefaultInstance().getDeviceToken();
                return this;
            }

            public Builder setDeviceTokenBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.deviceToken_ = byteString;
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

            public boolean hasAttachData() {
                return (this.bitField0_ & 8) == 8;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -9;
                this.attachData_ = IMDeviceTokenReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMDeviceTokenReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMDeviceTokenReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMDeviceTokenReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMDeviceTokenReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMDeviceTokenReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.deviceToken_ = readBytes;
                            break;
                        case 24:
                            int readEnum = codedInputStream.readEnum();
                            ClientType valueOf = ClientType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 4;
                                this.clientType_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 162:
                            this.bitField0_ |= 8;
                            this.attachData_ = codedInputStream.readBytes();
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

        public Parser<IMDeviceTokenReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasDeviceToken() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getDeviceToken() {
            Object obj = this.deviceToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.deviceToken_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getDeviceTokenBytes() {
            Object obj = this.deviceToken_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.deviceToken_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasClientType() {
            return (this.bitField0_ & 4) == 4;
        }

        public ClientType getClientType() {
            return this.clientType_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 8) == 8;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.deviceToken_ = "";
            this.clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
            this.attachData_ = ByteString.EMPTY;
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
            } else if (!hasDeviceToken()) {
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
                codedOutputStream.writeBytes(2, getDeviceTokenBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(3, this.clientType_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(20, this.attachData_);
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
                i2 += CodedOutputStream.computeBytesSize(2, getDeviceTokenBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeEnumSize(3, this.clientType_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(20, this.attachData_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMDeviceTokenReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMDeviceTokenReq) PARSER.parseFrom(byteString);
        }

        public static IMDeviceTokenReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMDeviceTokenReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMDeviceTokenReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMDeviceTokenReq) PARSER.parseFrom(bArr);
        }

        public static IMDeviceTokenReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMDeviceTokenReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMDeviceTokenReq parseFrom(InputStream inputStream) throws IOException {
            return (IMDeviceTokenReq) PARSER.parseFrom(inputStream);
        }

        public static IMDeviceTokenReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDeviceTokenReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMDeviceTokenReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMDeviceTokenReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMDeviceTokenReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDeviceTokenReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMDeviceTokenReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMDeviceTokenReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMDeviceTokenReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDeviceTokenReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMDeviceTokenReq iMDeviceTokenReq) {
            return newBuilder().mergeFrom(iMDeviceTokenReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMDeviceTokenReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        ClientType getClientType();

        String getDeviceToken();

        ByteString getDeviceTokenBytes();

        int getUserId();

        boolean hasAttachData();

        boolean hasClientType();

        boolean hasDeviceToken();

        boolean hasUserId();
    }

    public static final class IMDeviceTokenRsp extends GeneratedMessageLite implements IMDeviceTokenRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMDeviceTokenRsp> PARSER = new AbstractParser<IMDeviceTokenRsp>() {
            public IMDeviceTokenRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMDeviceTokenRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMDeviceTokenRsp defaultInstance = new IMDeviceTokenRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMDeviceTokenRsp, Builder> implements IMDeviceTokenRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
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
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMDeviceTokenRsp getDefaultInstanceForType() {
                return IMDeviceTokenRsp.getDefaultInstance();
            }

            public IMDeviceTokenRsp build() {
                IMDeviceTokenRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMDeviceTokenRsp buildPartial() {
                int i = 1;
                IMDeviceTokenRsp iMDeviceTokenRsp = new IMDeviceTokenRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMDeviceTokenRsp.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMDeviceTokenRsp.attachData_ = this.attachData_;
                iMDeviceTokenRsp.bitField0_ = i;
                return iMDeviceTokenRsp;
            }

            public Builder mergeFrom(IMDeviceTokenRsp iMDeviceTokenRsp) {
                if (iMDeviceTokenRsp != IMDeviceTokenRsp.getDefaultInstance()) {
                    if (iMDeviceTokenRsp.hasUserId()) {
                        setUserId(iMDeviceTokenRsp.getUserId());
                    }
                    if (iMDeviceTokenRsp.hasAttachData()) {
                        setAttachData(iMDeviceTokenRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMDeviceTokenRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasUserId()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMDeviceTokenRsp iMDeviceTokenRsp;
                IMDeviceTokenRsp iMDeviceTokenRsp2;
                try {
                    IMDeviceTokenRsp iMDeviceTokenRsp3 = (IMDeviceTokenRsp) IMDeviceTokenRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMDeviceTokenRsp3 != null) {
                        mergeFrom(iMDeviceTokenRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMDeviceTokenRsp2 = (IMDeviceTokenRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMDeviceTokenRsp = iMDeviceTokenRsp2;
                    th = th2;
                }
                if (iMDeviceTokenRsp != null) {
                    mergeFrom(iMDeviceTokenRsp);
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

            public boolean hasAttachData() {
                return (this.bitField0_ & 2) == 2;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -3;
                this.attachData_ = IMDeviceTokenRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMDeviceTokenRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMDeviceTokenRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMDeviceTokenRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMDeviceTokenRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMDeviceTokenRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 162:
                            this.bitField0_ |= 2;
                            this.attachData_ = codedInputStream.readBytes();
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

        public Parser<IMDeviceTokenRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.attachData_ = ByteString.EMPTY;
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
                codedOutputStream.writeBytes(20, this.attachData_);
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
                i2 += CodedOutputStream.computeBytesSize(20, this.attachData_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMDeviceTokenRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMDeviceTokenRsp) PARSER.parseFrom(byteString);
        }

        public static IMDeviceTokenRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMDeviceTokenRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMDeviceTokenRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMDeviceTokenRsp) PARSER.parseFrom(bArr);
        }

        public static IMDeviceTokenRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMDeviceTokenRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMDeviceTokenRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMDeviceTokenRsp) PARSER.parseFrom(inputStream);
        }

        public static IMDeviceTokenRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDeviceTokenRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMDeviceTokenRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMDeviceTokenRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMDeviceTokenRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDeviceTokenRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMDeviceTokenRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMDeviceTokenRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMDeviceTokenRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDeviceTokenRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMDeviceTokenRsp iMDeviceTokenRsp) {
            return newBuilder().mergeFrom(iMDeviceTokenRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMDeviceTokenRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getUserId();

        boolean hasAttachData();

        boolean hasUserId();
    }

    public static final class IMKickPCClientReq extends GeneratedMessageLite implements IMKickPCClientReqOrBuilder {
        public static Parser<IMKickPCClientReq> PARSER = new AbstractParser<IMKickPCClientReq>() {
            public IMKickPCClientReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMKickPCClientReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMKickPCClientReq defaultInstance = new IMKickPCClientReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMKickPCClientReq, Builder> implements IMKickPCClientReqOrBuilder {
            private int bitField0_;
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
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMKickPCClientReq getDefaultInstanceForType() {
                return IMKickPCClientReq.getDefaultInstance();
            }

            public IMKickPCClientReq build() {
                IMKickPCClientReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMKickPCClientReq buildPartial() {
                int i = 1;
                IMKickPCClientReq iMKickPCClientReq = new IMKickPCClientReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                iMKickPCClientReq.userId_ = this.userId_;
                iMKickPCClientReq.bitField0_ = i;
                return iMKickPCClientReq;
            }

            public Builder mergeFrom(IMKickPCClientReq iMKickPCClientReq) {
                if (iMKickPCClientReq != IMKickPCClientReq.getDefaultInstance()) {
                    if (iMKickPCClientReq.hasUserId()) {
                        setUserId(iMKickPCClientReq.getUserId());
                    }
                    setUnknownFields(getUnknownFields().concat(iMKickPCClientReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasUserId()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMKickPCClientReq iMKickPCClientReq;
                IMKickPCClientReq iMKickPCClientReq2;
                try {
                    IMKickPCClientReq iMKickPCClientReq3 = (IMKickPCClientReq) IMKickPCClientReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMKickPCClientReq3 != null) {
                        mergeFrom(iMKickPCClientReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMKickPCClientReq2 = (IMKickPCClientReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMKickPCClientReq = iMKickPCClientReq2;
                    th = th2;
                }
                if (iMKickPCClientReq != null) {
                    mergeFrom(iMKickPCClientReq);
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
        }

        private IMKickPCClientReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMKickPCClientReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMKickPCClientReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMKickPCClientReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMKickPCClientReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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

        public Parser<IMKickPCClientReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        private void initFields() {
            this.userId_ = 0;
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
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.userId_);
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
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMKickPCClientReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMKickPCClientReq) PARSER.parseFrom(byteString);
        }

        public static IMKickPCClientReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMKickPCClientReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMKickPCClientReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMKickPCClientReq) PARSER.parseFrom(bArr);
        }

        public static IMKickPCClientReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMKickPCClientReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMKickPCClientReq parseFrom(InputStream inputStream) throws IOException {
            return (IMKickPCClientReq) PARSER.parseFrom(inputStream);
        }

        public static IMKickPCClientReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMKickPCClientReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMKickPCClientReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMKickPCClientReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMKickPCClientReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMKickPCClientReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMKickPCClientReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMKickPCClientReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMKickPCClientReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMKickPCClientReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMKickPCClientReq iMKickPCClientReq) {
            return newBuilder().mergeFrom(iMKickPCClientReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMKickPCClientReqOrBuilder extends MessageLiteOrBuilder {
        int getUserId();

        boolean hasUserId();
    }

    public static final class IMKickPCClientRsp extends GeneratedMessageLite implements IMKickPCClientRspOrBuilder {
        public static Parser<IMKickPCClientRsp> PARSER = new AbstractParser<IMKickPCClientRsp>() {
            public IMKickPCClientRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMKickPCClientRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RESULT_CODE_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMKickPCClientRsp defaultInstance = new IMKickPCClientRsp(true);
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
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMKickPCClientRsp, Builder> implements IMKickPCClientRspOrBuilder {
            private int bitField0_;
            private int resultCode_;
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
                this.resultCode_ = 0;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMKickPCClientRsp getDefaultInstanceForType() {
                return IMKickPCClientRsp.getDefaultInstance();
            }

            public IMKickPCClientRsp build() {
                IMKickPCClientRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMKickPCClientRsp buildPartial() {
                int i = 1;
                IMKickPCClientRsp iMKickPCClientRsp = new IMKickPCClientRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMKickPCClientRsp.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMKickPCClientRsp.resultCode_ = this.resultCode_;
                iMKickPCClientRsp.bitField0_ = i;
                return iMKickPCClientRsp;
            }

            public Builder mergeFrom(IMKickPCClientRsp iMKickPCClientRsp) {
                if (iMKickPCClientRsp != IMKickPCClientRsp.getDefaultInstance()) {
                    if (iMKickPCClientRsp.hasUserId()) {
                        setUserId(iMKickPCClientRsp.getUserId());
                    }
                    if (iMKickPCClientRsp.hasResultCode()) {
                        setResultCode(iMKickPCClientRsp.getResultCode());
                    }
                    setUnknownFields(getUnknownFields().concat(iMKickPCClientRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasResultCode()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMKickPCClientRsp iMKickPCClientRsp;
                IMKickPCClientRsp iMKickPCClientRsp2;
                try {
                    IMKickPCClientRsp iMKickPCClientRsp3 = (IMKickPCClientRsp) IMKickPCClientRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMKickPCClientRsp3 != null) {
                        mergeFrom(iMKickPCClientRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMKickPCClientRsp2 = (IMKickPCClientRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMKickPCClientRsp = iMKickPCClientRsp2;
                    th = th2;
                }
                if (iMKickPCClientRsp != null) {
                    mergeFrom(iMKickPCClientRsp);
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

        private IMKickPCClientRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMKickPCClientRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMKickPCClientRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMKickPCClientRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMKickPCClientRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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

        public Parser<IMKickPCClientRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasResultCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getResultCode() {
            return this.resultCode_;
        }

        private void initFields() {
            this.userId_ = 0;
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
            if (!hasUserId()) {
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
                codedOutputStream.writeUInt32(1, this.userId_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.userId_);
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

        public static IMKickPCClientRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMKickPCClientRsp) PARSER.parseFrom(byteString);
        }

        public static IMKickPCClientRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMKickPCClientRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMKickPCClientRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMKickPCClientRsp) PARSER.parseFrom(bArr);
        }

        public static IMKickPCClientRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMKickPCClientRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMKickPCClientRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMKickPCClientRsp) PARSER.parseFrom(inputStream);
        }

        public static IMKickPCClientRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMKickPCClientRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMKickPCClientRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMKickPCClientRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMKickPCClientRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMKickPCClientRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMKickPCClientRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMKickPCClientRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMKickPCClientRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMKickPCClientRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMKickPCClientRsp iMKickPCClientRsp) {
            return newBuilder().mergeFrom(iMKickPCClientRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMKickPCClientRspOrBuilder extends MessageLiteOrBuilder {
        int getResultCode();

        int getUserId();

        boolean hasResultCode();

        boolean hasUserId();
    }

    public static final class IMKickUser extends GeneratedMessageLite implements IMKickUserOrBuilder {
        public static final int KICK_REASON_FIELD_NUMBER = 2;
        public static Parser<IMKickUser> PARSER = new AbstractParser<IMKickUser>() {
            public IMKickUser parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMKickUser(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_HANDLE_FIELD_NUMBER = 3;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMKickUser defaultInstance = new IMKickUser(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public KickReasonType kickReason_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userHandle_;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMKickUser, Builder> implements IMKickUserOrBuilder {
            private int bitField0_;
            private KickReasonType kickReason_ = KickReasonType.KICK_REASON_DUPLICATE_USER;
            private int userHandle_;
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
                this.kickReason_ = KickReasonType.KICK_REASON_DUPLICATE_USER;
                this.bitField0_ &= -3;
                this.userHandle_ = 0;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMKickUser getDefaultInstanceForType() {
                return IMKickUser.getDefaultInstance();
            }

            public IMKickUser build() {
                IMKickUser buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMKickUser buildPartial() {
                int i = 1;
                IMKickUser iMKickUser = new IMKickUser((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMKickUser.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMKickUser.kickReason_ = this.kickReason_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMKickUser.userHandle_ = this.userHandle_;
                iMKickUser.bitField0_ = i;
                return iMKickUser;
            }

            public Builder mergeFrom(IMKickUser iMKickUser) {
                if (iMKickUser != IMKickUser.getDefaultInstance()) {
                    if (iMKickUser.hasUserId()) {
                        setUserId(iMKickUser.getUserId());
                    }
                    if (iMKickUser.hasKickReason()) {
                        setKickReason(iMKickUser.getKickReason());
                    }
                    if (iMKickUser.hasUserHandle()) {
                        setUserHandle(iMKickUser.getUserHandle());
                    }
                    setUnknownFields(getUnknownFields().concat(iMKickUser.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasKickReason()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMKickUser iMKickUser;
                IMKickUser iMKickUser2;
                try {
                    IMKickUser iMKickUser3 = (IMKickUser) IMKickUser.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMKickUser3 != null) {
                        mergeFrom(iMKickUser3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMKickUser2 = (IMKickUser) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMKickUser = iMKickUser2;
                    th = th2;
                }
                if (iMKickUser != null) {
                    mergeFrom(iMKickUser);
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

            public boolean hasKickReason() {
                return (this.bitField0_ & 2) == 2;
            }

            public KickReasonType getKickReason() {
                return this.kickReason_;
            }

            public Builder setKickReason(KickReasonType kickReasonType) {
                if (kickReasonType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.kickReason_ = kickReasonType;
                return this;
            }

            public Builder clearKickReason() {
                this.bitField0_ &= -3;
                this.kickReason_ = KickReasonType.KICK_REASON_DUPLICATE_USER;
                return this;
            }

            public boolean hasUserHandle() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getUserHandle() {
                return this.userHandle_;
            }

            public Builder setUserHandle(int i) {
                this.bitField0_ |= 4;
                this.userHandle_ = i;
                return this;
            }

            public Builder clearUserHandle() {
                this.bitField0_ &= -5;
                this.userHandle_ = 0;
                return this;
            }
        }

        private IMKickUser(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMKickUser(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMKickUser getDefaultInstance() {
            return defaultInstance;
        }

        public IMKickUser getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMKickUser(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            KickReasonType valueOf = KickReasonType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 2;
                                this.kickReason_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 24:
                            this.bitField0_ |= 4;
                            this.userHandle_ = codedInputStream.readUInt32();
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

        public Parser<IMKickUser> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasKickReason() {
            return (this.bitField0_ & 2) == 2;
        }

        public KickReasonType getKickReason() {
            return this.kickReason_;
        }

        public boolean hasUserHandle() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.kickReason_ = KickReasonType.KICK_REASON_DUPLICATE_USER;
            this.userHandle_ = 0;
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
            } else if (!hasKickReason()) {
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
                codedOutputStream.writeEnum(2, this.kickReason_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.userHandle_);
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
                i2 += CodedOutputStream.computeEnumSize(2, this.kickReason_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.userHandle_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMKickUser parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMKickUser) PARSER.parseFrom(byteString);
        }

        public static IMKickUser parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMKickUser) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMKickUser parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMKickUser) PARSER.parseFrom(bArr);
        }

        public static IMKickUser parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMKickUser) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMKickUser parseFrom(InputStream inputStream) throws IOException {
            return (IMKickUser) PARSER.parseFrom(inputStream);
        }

        public static IMKickUser parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMKickUser) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMKickUser parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMKickUser) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMKickUser parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMKickUser) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMKickUser parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMKickUser) PARSER.parseFrom(codedInputStream);
        }

        public static IMKickUser parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMKickUser) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMKickUser iMKickUser) {
            return newBuilder().mergeFrom(iMKickUser);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMKickUserOrBuilder extends MessageLiteOrBuilder {
        KickReasonType getKickReason();

        int getUserHandle();

        int getUserId();

        boolean hasKickReason();

        boolean hasUserHandle();

        boolean hasUserId();
    }

    public static final class IMLoginReq extends GeneratedMessageLite implements IMLoginReqOrBuilder {
        public static final int APIKEY_FIELD_NUMBER = 5;
        public static final int APPID_FIELD_NUMBER = 2;
        public static final int CLIENT_TYPE_FIELD_NUMBER = 7;
        public static final int CLIENT_VERSION_FIELD_NUMBER = 8;
        public static final int FYAPPID_FIELD_NUMBER = 1;
        public static Parser<IMLoginReq> PARSER = new AbstractParser<IMLoginReq>() {
            public IMLoginReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMLoginReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TIME_FIELD_NUMBER = 6;
        public static final int USER_HANDLE_FIELD_NUMBER = 3;
        public static final int USER_ID_FIELD_NUMBER = 4;
        private static final IMLoginReq defaultInstance = new IMLoginReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public Object apikey_;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ClientType clientType_;
        /* access modifiers changed from: private */
        public Object clientVersion_;
        /* access modifiers changed from: private */
        public int fyappid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int time_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userHandle_;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMLoginReq, Builder> implements IMLoginReqOrBuilder {
            private Object apikey_ = "";
            private int appid_;
            private int bitField0_;
            private ClientType clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
            private Object clientVersion_ = "";
            private int fyappid_;
            private int time_;
            private int userHandle_;
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
                this.fyappid_ = 0;
                this.bitField0_ &= -2;
                this.appid_ = 0;
                this.bitField0_ &= -3;
                this.userHandle_ = 0;
                this.bitField0_ &= -5;
                this.userId_ = 0;
                this.bitField0_ &= -9;
                this.apikey_ = "";
                this.bitField0_ &= -17;
                this.time_ = 0;
                this.bitField0_ &= -33;
                this.clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
                this.bitField0_ &= -65;
                this.clientVersion_ = "";
                this.bitField0_ &= -129;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMLoginReq getDefaultInstanceForType() {
                return IMLoginReq.getDefaultInstance();
            }

            public IMLoginReq build() {
                IMLoginReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMLoginReq buildPartial() {
                int i = 1;
                IMLoginReq iMLoginReq = new IMLoginReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMLoginReq.fyappid_ = this.fyappid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMLoginReq.appid_ = this.appid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMLoginReq.userHandle_ = this.userHandle_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMLoginReq.userId_ = this.userId_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMLoginReq.apikey_ = this.apikey_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                iMLoginReq.time_ = this.time_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                iMLoginReq.clientType_ = this.clientType_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                iMLoginReq.clientVersion_ = this.clientVersion_;
                iMLoginReq.bitField0_ = i;
                return iMLoginReq;
            }

            public Builder mergeFrom(IMLoginReq iMLoginReq) {
                if (iMLoginReq != IMLoginReq.getDefaultInstance()) {
                    if (iMLoginReq.hasFyappid()) {
                        setFyappid(iMLoginReq.getFyappid());
                    }
                    if (iMLoginReq.hasAppid()) {
                        setAppid(iMLoginReq.getAppid());
                    }
                    if (iMLoginReq.hasUserHandle()) {
                        setUserHandle(iMLoginReq.getUserHandle());
                    }
                    if (iMLoginReq.hasUserId()) {
                        setUserId(iMLoginReq.getUserId());
                    }
                    if (iMLoginReq.hasApikey()) {
                        this.bitField0_ |= 16;
                        this.apikey_ = iMLoginReq.apikey_;
                    }
                    if (iMLoginReq.hasTime()) {
                        setTime(iMLoginReq.getTime());
                    }
                    if (iMLoginReq.hasClientType()) {
                        setClientType(iMLoginReq.getClientType());
                    }
                    if (iMLoginReq.hasClientVersion()) {
                        this.bitField0_ |= 128;
                        this.clientVersion_ = iMLoginReq.clientVersion_;
                    }
                    setUnknownFields(getUnknownFields().concat(iMLoginReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasFyappid() && hasAppid() && hasUserId() && hasApikey() && hasTime() && hasClientType()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMLoginReq iMLoginReq;
                IMLoginReq iMLoginReq2;
                try {
                    IMLoginReq iMLoginReq3 = (IMLoginReq) IMLoginReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMLoginReq3 != null) {
                        mergeFrom(iMLoginReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMLoginReq2 = (IMLoginReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMLoginReq = iMLoginReq2;
                    th = th2;
                }
                if (iMLoginReq != null) {
                    mergeFrom(iMLoginReq);
                }
                throw th;
            }

            public boolean hasFyappid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getFyappid() {
                return this.fyappid_;
            }

            public Builder setFyappid(int i) {
                this.bitField0_ |= 1;
                this.fyappid_ = i;
                return this;
            }

            public Builder clearFyappid() {
                this.bitField0_ &= -2;
                this.fyappid_ = 0;
                return this;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 2;
                this.appid_ = i;
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -3;
                this.appid_ = 0;
                return this;
            }

            public boolean hasUserHandle() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getUserHandle() {
                return this.userHandle_;
            }

            public Builder setUserHandle(int i) {
                this.bitField0_ |= 4;
                this.userHandle_ = i;
                return this;
            }

            public Builder clearUserHandle() {
                this.bitField0_ &= -5;
                this.userHandle_ = 0;
                return this;
            }

            public boolean hasUserId() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getUserId() {
                return this.userId_;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 8;
                this.userId_ = i;
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -9;
                this.userId_ = 0;
                return this;
            }

            public boolean hasApikey() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getApikey() {
                Object obj = this.apikey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.apikey_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getApikeyBytes() {
                Object obj = this.apikey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.apikey_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setApikey(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.apikey_ = str;
                return this;
            }

            public Builder clearApikey() {
                this.bitField0_ &= -17;
                this.apikey_ = IMLoginReq.getDefaultInstance().getApikey();
                return this;
            }

            public Builder setApikeyBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.apikey_ = byteString;
                return this;
            }

            public boolean hasTime() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getTime() {
                return this.time_;
            }

            public Builder setTime(int i) {
                this.bitField0_ |= 32;
                this.time_ = i;
                return this;
            }

            public Builder clearTime() {
                this.bitField0_ &= -33;
                this.time_ = 0;
                return this;
            }

            public boolean hasClientType() {
                return (this.bitField0_ & 64) == 64;
            }

            public ClientType getClientType() {
                return this.clientType_;
            }

            public Builder setClientType(ClientType clientType) {
                if (clientType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.clientType_ = clientType;
                return this;
            }

            public Builder clearClientType() {
                this.bitField0_ &= -65;
                this.clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
                return this;
            }

            public boolean hasClientVersion() {
                return (this.bitField0_ & 128) == 128;
            }

            public String getClientVersion() {
                Object obj = this.clientVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.clientVersion_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getClientVersionBytes() {
                Object obj = this.clientVersion_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.clientVersion_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setClientVersion(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.clientVersion_ = str;
                return this;
            }

            public Builder clearClientVersion() {
                this.bitField0_ &= -129;
                this.clientVersion_ = IMLoginReq.getDefaultInstance().getClientVersion();
                return this;
            }

            public Builder setClientVersionBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.clientVersion_ = byteString;
                return this;
            }
        }

        private IMLoginReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMLoginReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMLoginReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMLoginReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMLoginReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.fyappid_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.userHandle_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.userId_ = codedInputStream.readUInt32();
                            break;
                        case 42:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.apikey_ = readBytes;
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.time_ = codedInputStream.readUInt32();
                            break;
                        case 56:
                            int readEnum = codedInputStream.readEnum();
                            ClientType valueOf = ClientType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 64;
                                this.clientType_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 66:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 128;
                            this.clientVersion_ = readBytes2;
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

        public Parser<IMLoginReq> getParserForType() {
            return PARSER;
        }

        public boolean hasFyappid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getFyappid() {
            return this.fyappid_;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasUserHandle() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasApikey() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getApikey() {
            Object obj = this.apikey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.apikey_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getApikeyBytes() {
            Object obj = this.apikey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.apikey_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasTime() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getTime() {
            return this.time_;
        }

        public boolean hasClientType() {
            return (this.bitField0_ & 64) == 64;
        }

        public ClientType getClientType() {
            return this.clientType_;
        }

        public boolean hasClientVersion() {
            return (this.bitField0_ & 128) == 128;
        }

        public String getClientVersion() {
            Object obj = this.clientVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.clientVersion_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getClientVersionBytes() {
            Object obj = this.clientVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.clientVersion_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.fyappid_ = 0;
            this.appid_ = 0;
            this.userHandle_ = 0;
            this.userId_ = 0;
            this.apikey_ = "";
            this.time_ = 0;
            this.clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
            this.clientVersion_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasFyappid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasApikey()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTime()) {
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
                codedOutputStream.writeUInt32(1, this.fyappid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.appid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.userHandle_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.userId_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getApikeyBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt32(6, this.time_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeEnum(7, this.clientType_.getNumber());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeBytes(8, getClientVersionBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.fyappid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.appid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.userHandle_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.userId_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getApikeyBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt32Size(6, this.time_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeEnumSize(7, this.clientType_.getNumber());
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeBytesSize(8, getClientVersionBytes());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMLoginReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMLoginReq) PARSER.parseFrom(byteString);
        }

        public static IMLoginReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMLoginReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMLoginReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMLoginReq) PARSER.parseFrom(bArr);
        }

        public static IMLoginReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMLoginReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMLoginReq parseFrom(InputStream inputStream) throws IOException {
            return (IMLoginReq) PARSER.parseFrom(inputStream);
        }

        public static IMLoginReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLoginReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMLoginReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMLoginReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMLoginReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLoginReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMLoginReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMLoginReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMLoginReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLoginReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMLoginReq iMLoginReq) {
            return newBuilder().mergeFrom(iMLoginReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMLoginReqOrBuilder extends MessageLiteOrBuilder {
        String getApikey();

        ByteString getApikeyBytes();

        int getAppid();

        ClientType getClientType();

        String getClientVersion();

        ByteString getClientVersionBytes();

        int getFyappid();

        int getTime();

        int getUserHandle();

        int getUserId();

        boolean hasApikey();

        boolean hasAppid();

        boolean hasClientType();

        boolean hasClientVersion();

        boolean hasFyappid();

        boolean hasTime();

        boolean hasUserHandle();

        boolean hasUserId();
    }

    public static final class IMLoginRes extends GeneratedMessageLite implements IMLoginResOrBuilder {
        public static final int B2_FIELD_NUMBER = 7;
        public static Parser<IMLoginRes> PARSER = new AbstractParser<IMLoginRes>() {
            public IMLoginRes parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMLoginRes(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PUBLICID_FIELD_NUMBER = 8;
        public static final int PUBLICKEY_FIELD_NUMBER = 9;
        public static final int RESULT_CODE_FIELD_NUMBER = 3;
        public static final int RESULT_STRING_FIELD_NUMBER = 4;
        public static final int SERVER_TIME_FIELD_NUMBER = 2;
        public static final int USER_HANDLE_FIELD_NUMBER = 1;
        public static final int USER_ID_FIELD_NUMBER = 6;
        public static final int USER_NAME_FIELD_NUMBER = 5;
        private static final IMLoginRes defaultInstance = new IMLoginRes(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public Object b2_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object publicid_;
        /* access modifiers changed from: private */
        public Object publickey_;
        /* access modifiers changed from: private */
        public ResultType resultCode_;
        /* access modifiers changed from: private */
        public Object resultString_;
        /* access modifiers changed from: private */
        public int serverTime_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userHandle_;
        /* access modifiers changed from: private */
        public int userId_;
        /* access modifiers changed from: private */
        public Object userName_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMLoginRes, Builder> implements IMLoginResOrBuilder {
            private Object b2_ = "";
            private int bitField0_;
            private Object publicid_ = "";
            private Object publickey_ = "";
            private ResultType resultCode_ = ResultType.REFUSE_REASON_NONE;
            private Object resultString_ = "";
            private int serverTime_;
            private int userHandle_;
            private int userId_;
            private Object userName_ = "";

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
                this.userHandle_ = 0;
                this.bitField0_ &= -2;
                this.serverTime_ = 0;
                this.bitField0_ &= -3;
                this.resultCode_ = ResultType.REFUSE_REASON_NONE;
                this.bitField0_ &= -5;
                this.resultString_ = "";
                this.bitField0_ &= -9;
                this.userName_ = "";
                this.bitField0_ &= -17;
                this.userId_ = 0;
                this.bitField0_ &= -33;
                this.b2_ = "";
                this.bitField0_ &= -65;
                this.publicid_ = "";
                this.bitField0_ &= -129;
                this.publickey_ = "";
                this.bitField0_ &= -257;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMLoginRes getDefaultInstanceForType() {
                return IMLoginRes.getDefaultInstance();
            }

            public IMLoginRes build() {
                IMLoginRes buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMLoginRes buildPartial() {
                int i = 1;
                IMLoginRes iMLoginRes = new IMLoginRes((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMLoginRes.userHandle_ = this.userHandle_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMLoginRes.serverTime_ = this.serverTime_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMLoginRes.resultCode_ = this.resultCode_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMLoginRes.resultString_ = this.resultString_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMLoginRes.userName_ = this.userName_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                iMLoginRes.userId_ = this.userId_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                iMLoginRes.b2_ = this.b2_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                iMLoginRes.publicid_ = this.publicid_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                iMLoginRes.publickey_ = this.publickey_;
                iMLoginRes.bitField0_ = i;
                return iMLoginRes;
            }

            public Builder mergeFrom(IMLoginRes iMLoginRes) {
                if (iMLoginRes != IMLoginRes.getDefaultInstance()) {
                    if (iMLoginRes.hasUserHandle()) {
                        setUserHandle(iMLoginRes.getUserHandle());
                    }
                    if (iMLoginRes.hasServerTime()) {
                        setServerTime(iMLoginRes.getServerTime());
                    }
                    if (iMLoginRes.hasResultCode()) {
                        setResultCode(iMLoginRes.getResultCode());
                    }
                    if (iMLoginRes.hasResultString()) {
                        this.bitField0_ |= 8;
                        this.resultString_ = iMLoginRes.resultString_;
                    }
                    if (iMLoginRes.hasUserName()) {
                        this.bitField0_ |= 16;
                        this.userName_ = iMLoginRes.userName_;
                    }
                    if (iMLoginRes.hasUserId()) {
                        setUserId(iMLoginRes.getUserId());
                    }
                    if (iMLoginRes.hasB2()) {
                        this.bitField0_ |= 64;
                        this.b2_ = iMLoginRes.b2_;
                    }
                    if (iMLoginRes.hasPublicid()) {
                        this.bitField0_ |= 128;
                        this.publicid_ = iMLoginRes.publicid_;
                    }
                    if (iMLoginRes.hasPublickey()) {
                        this.bitField0_ |= 256;
                        this.publickey_ = iMLoginRes.publickey_;
                    }
                    setUnknownFields(getUnknownFields().concat(iMLoginRes.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasServerTime() && hasResultCode()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMLoginRes iMLoginRes;
                IMLoginRes iMLoginRes2;
                try {
                    IMLoginRes iMLoginRes3 = (IMLoginRes) IMLoginRes.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMLoginRes3 != null) {
                        mergeFrom(iMLoginRes3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMLoginRes2 = (IMLoginRes) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMLoginRes = iMLoginRes2;
                    th = th2;
                }
                if (iMLoginRes != null) {
                    mergeFrom(iMLoginRes);
                }
                throw th;
            }

            public boolean hasUserHandle() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getUserHandle() {
                return this.userHandle_;
            }

            public Builder setUserHandle(int i) {
                this.bitField0_ |= 1;
                this.userHandle_ = i;
                return this;
            }

            public Builder clearUserHandle() {
                this.bitField0_ &= -2;
                this.userHandle_ = 0;
                return this;
            }

            public boolean hasServerTime() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getServerTime() {
                return this.serverTime_;
            }

            public Builder setServerTime(int i) {
                this.bitField0_ |= 2;
                this.serverTime_ = i;
                return this;
            }

            public Builder clearServerTime() {
                this.bitField0_ &= -3;
                this.serverTime_ = 0;
                return this;
            }

            public boolean hasResultCode() {
                return (this.bitField0_ & 4) == 4;
            }

            public ResultType getResultCode() {
                return this.resultCode_;
            }

            public Builder setResultCode(ResultType resultType) {
                if (resultType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.resultCode_ = resultType;
                return this;
            }

            public Builder clearResultCode() {
                this.bitField0_ &= -5;
                this.resultCode_ = ResultType.REFUSE_REASON_NONE;
                return this;
            }

            public boolean hasResultString() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getResultString() {
                Object obj = this.resultString_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.resultString_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getResultStringBytes() {
                Object obj = this.resultString_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.resultString_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setResultString(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.resultString_ = str;
                return this;
            }

            public Builder clearResultString() {
                this.bitField0_ &= -9;
                this.resultString_ = IMLoginRes.getDefaultInstance().getResultString();
                return this;
            }

            public Builder setResultStringBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.resultString_ = byteString;
                return this;
            }

            public boolean hasUserName() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getUserName() {
                Object obj = this.userName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.userName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUserNameBytes() {
                Object obj = this.userName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUserName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.userName_ = str;
                return this;
            }

            public Builder clearUserName() {
                this.bitField0_ &= -17;
                this.userName_ = IMLoginRes.getDefaultInstance().getUserName();
                return this;
            }

            public Builder setUserNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.userName_ = byteString;
                return this;
            }

            public boolean hasUserId() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getUserId() {
                return this.userId_;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 32;
                this.userId_ = i;
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -33;
                this.userId_ = 0;
                return this;
            }

            public boolean hasB2() {
                return (this.bitField0_ & 64) == 64;
            }

            public String getB2() {
                Object obj = this.b2_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.b2_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getB2Bytes() {
                Object obj = this.b2_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.b2_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setB2(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.b2_ = str;
                return this;
            }

            public Builder clearB2() {
                this.bitField0_ &= -65;
                this.b2_ = IMLoginRes.getDefaultInstance().getB2();
                return this;
            }

            public Builder setB2Bytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.b2_ = byteString;
                return this;
            }

            public boolean hasPublicid() {
                return (this.bitField0_ & 128) == 128;
            }

            public String getPublicid() {
                Object obj = this.publicid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.publicid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getPublicidBytes() {
                Object obj = this.publicid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.publicid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setPublicid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.publicid_ = str;
                return this;
            }

            public Builder clearPublicid() {
                this.bitField0_ &= -129;
                this.publicid_ = IMLoginRes.getDefaultInstance().getPublicid();
                return this;
            }

            public Builder setPublicidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.publicid_ = byteString;
                return this;
            }

            public boolean hasPublickey() {
                return (this.bitField0_ & 256) == 256;
            }

            public String getPublickey() {
                Object obj = this.publickey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.publickey_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getPublickeyBytes() {
                Object obj = this.publickey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.publickey_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setPublickey(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.publickey_ = str;
                return this;
            }

            public Builder clearPublickey() {
                this.bitField0_ &= -257;
                this.publickey_ = IMLoginRes.getDefaultInstance().getPublickey();
                return this;
            }

            public Builder setPublickeyBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.publickey_ = byteString;
                return this;
            }
        }

        private IMLoginRes(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMLoginRes(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMLoginRes getDefaultInstance() {
            return defaultInstance;
        }

        public IMLoginRes getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMLoginRes(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.userHandle_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.serverTime_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            int readEnum = codedInputStream.readEnum();
                            ResultType valueOf = ResultType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 4;
                                this.resultCode_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 34:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.resultString_ = readBytes;
                            break;
                        case 42:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.userName_ = readBytes2;
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.userId_ = codedInputStream.readUInt32();
                            break;
                        case 58:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 64;
                            this.b2_ = readBytes3;
                            break;
                        case 66:
                            ByteString readBytes4 = codedInputStream.readBytes();
                            this.bitField0_ |= 128;
                            this.publicid_ = readBytes4;
                            break;
                        case 74:
                            ByteString readBytes5 = codedInputStream.readBytes();
                            this.bitField0_ |= 256;
                            this.publickey_ = readBytes5;
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

        public Parser<IMLoginRes> getParserForType() {
            return PARSER;
        }

        public boolean hasUserHandle() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        public boolean hasServerTime() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getServerTime() {
            return this.serverTime_;
        }

        public boolean hasResultCode() {
            return (this.bitField0_ & 4) == 4;
        }

        public ResultType getResultCode() {
            return this.resultCode_;
        }

        public boolean hasResultString() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getResultString() {
            Object obj = this.resultString_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.resultString_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getResultStringBytes() {
            Object obj = this.resultString_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resultString_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUserName() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getUserName() {
            Object obj = this.userName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUserNameBytes() {
            Object obj = this.userName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasB2() {
            return (this.bitField0_ & 64) == 64;
        }

        public String getB2() {
            Object obj = this.b2_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.b2_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getB2Bytes() {
            Object obj = this.b2_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.b2_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasPublicid() {
            return (this.bitField0_ & 128) == 128;
        }

        public String getPublicid() {
            Object obj = this.publicid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.publicid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getPublicidBytes() {
            Object obj = this.publicid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.publicid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasPublickey() {
            return (this.bitField0_ & 256) == 256;
        }

        public String getPublickey() {
            Object obj = this.publickey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.publickey_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getPublickeyBytes() {
            Object obj = this.publickey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.publickey_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.userHandle_ = 0;
            this.serverTime_ = 0;
            this.resultCode_ = ResultType.REFUSE_REASON_NONE;
            this.resultString_ = "";
            this.userName_ = "";
            this.userId_ = 0;
            this.b2_ = "";
            this.publicid_ = "";
            this.publickey_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasServerTime()) {
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
                codedOutputStream.writeUInt32(1, this.userHandle_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.serverTime_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(3, this.resultCode_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getResultStringBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getUserNameBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt32(6, this.userId_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBytes(7, getB2Bytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeBytes(8, getPublicidBytes());
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeBytes(9, getPublickeyBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.userHandle_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.serverTime_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeEnumSize(3, this.resultCode_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getResultStringBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getUserNameBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt32Size(6, this.userId_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeBytesSize(7, getB2Bytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeBytesSize(8, getPublicidBytes());
            }
            if ((this.bitField0_ & 256) == 256) {
                i2 += CodedOutputStream.computeBytesSize(9, getPublickeyBytes());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMLoginRes parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMLoginRes) PARSER.parseFrom(byteString);
        }

        public static IMLoginRes parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMLoginRes) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMLoginRes parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMLoginRes) PARSER.parseFrom(bArr);
        }

        public static IMLoginRes parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMLoginRes) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMLoginRes parseFrom(InputStream inputStream) throws IOException {
            return (IMLoginRes) PARSER.parseFrom(inputStream);
        }

        public static IMLoginRes parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLoginRes) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMLoginRes parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMLoginRes) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMLoginRes parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLoginRes) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMLoginRes parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMLoginRes) PARSER.parseFrom(codedInputStream);
        }

        public static IMLoginRes parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLoginRes) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMLoginRes iMLoginRes) {
            return newBuilder().mergeFrom(iMLoginRes);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMLoginResOrBuilder extends MessageLiteOrBuilder {
        String getB2();

        ByteString getB2Bytes();

        String getPublicid();

        ByteString getPublicidBytes();

        String getPublickey();

        ByteString getPublickeyBytes();

        ResultType getResultCode();

        String getResultString();

        ByteString getResultStringBytes();

        int getServerTime();

        int getUserHandle();

        int getUserId();

        String getUserName();

        ByteString getUserNameBytes();

        boolean hasB2();

        boolean hasPublicid();

        boolean hasPublickey();

        boolean hasResultCode();

        boolean hasResultString();

        boolean hasServerTime();

        boolean hasUserHandle();

        boolean hasUserId();

        boolean hasUserName();
    }

    public static final class IMLogoutReq extends GeneratedMessageLite implements IMLogoutReqOrBuilder {
        public static Parser<IMLogoutReq> PARSER = new AbstractParser<IMLogoutReq>() {
            public IMLogoutReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMLogoutReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_HANDLE_FIELD_NUMBER = 1;
        public static final int USER_ID_FIELD_NUMBER = 2;
        private static final IMLogoutReq defaultInstance = new IMLogoutReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userHandle_;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMLogoutReq, Builder> implements IMLogoutReqOrBuilder {
            private int bitField0_;
            private int userHandle_;
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
                this.userHandle_ = 0;
                this.bitField0_ &= -2;
                this.userId_ = 0;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMLogoutReq getDefaultInstanceForType() {
                return IMLogoutReq.getDefaultInstance();
            }

            public IMLogoutReq build() {
                IMLogoutReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMLogoutReq buildPartial() {
                int i = 1;
                IMLogoutReq iMLogoutReq = new IMLogoutReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMLogoutReq.userHandle_ = this.userHandle_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMLogoutReq.userId_ = this.userId_;
                iMLogoutReq.bitField0_ = i;
                return iMLogoutReq;
            }

            public Builder mergeFrom(IMLogoutReq iMLogoutReq) {
                if (iMLogoutReq != IMLogoutReq.getDefaultInstance()) {
                    if (iMLogoutReq.hasUserHandle()) {
                        setUserHandle(iMLogoutReq.getUserHandle());
                    }
                    if (iMLogoutReq.hasUserId()) {
                        setUserId(iMLogoutReq.getUserId());
                    }
                    setUnknownFields(getUnknownFields().concat(iMLogoutReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMLogoutReq iMLogoutReq;
                IMLogoutReq iMLogoutReq2;
                try {
                    IMLogoutReq iMLogoutReq3 = (IMLogoutReq) IMLogoutReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMLogoutReq3 != null) {
                        mergeFrom(iMLogoutReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMLogoutReq2 = (IMLogoutReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMLogoutReq = iMLogoutReq2;
                    th = th2;
                }
                if (iMLogoutReq != null) {
                    mergeFrom(iMLogoutReq);
                }
                throw th;
            }

            public boolean hasUserHandle() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getUserHandle() {
                return this.userHandle_;
            }

            public Builder setUserHandle(int i) {
                this.bitField0_ |= 1;
                this.userHandle_ = i;
                return this;
            }

            public Builder clearUserHandle() {
                this.bitField0_ &= -2;
                this.userHandle_ = 0;
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
        }

        private IMLogoutReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMLogoutReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMLogoutReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMLogoutReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMLogoutReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.userHandle_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.userId_ = codedInputStream.readUInt32();
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

        public Parser<IMLogoutReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserHandle() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getUserId() {
            return this.userId_;
        }

        private void initFields() {
            this.userHandle_ = 0;
            this.userId_ = 0;
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
                codedOutputStream.writeUInt32(1, this.userHandle_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.userId_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.userHandle_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.userId_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMLogoutReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMLogoutReq) PARSER.parseFrom(byteString);
        }

        public static IMLogoutReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMLogoutReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMLogoutReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMLogoutReq) PARSER.parseFrom(bArr);
        }

        public static IMLogoutReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMLogoutReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMLogoutReq parseFrom(InputStream inputStream) throws IOException {
            return (IMLogoutReq) PARSER.parseFrom(inputStream);
        }

        public static IMLogoutReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLogoutReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMLogoutReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMLogoutReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMLogoutReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLogoutReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMLogoutReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMLogoutReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMLogoutReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLogoutReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMLogoutReq iMLogoutReq) {
            return newBuilder().mergeFrom(iMLogoutReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMLogoutReqOrBuilder extends MessageLiteOrBuilder {
        int getUserHandle();

        int getUserId();

        boolean hasUserHandle();

        boolean hasUserId();
    }

    public static final class IMLogoutRsp extends GeneratedMessageLite implements IMLogoutRspOrBuilder {
        public static Parser<IMLogoutRsp> PARSER = new AbstractParser<IMLogoutRsp>() {
            public IMLogoutRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMLogoutRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RESULT_CODE_FIELD_NUMBER = 1;
        public static final int USER_HANDLE_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 3;
        private static final IMLogoutRsp defaultInstance = new IMLogoutRsp(true);
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
        public int userHandle_;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMLogoutRsp, Builder> implements IMLogoutRspOrBuilder {
            private int bitField0_;
            private int resultCode_;
            private int userHandle_;
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
                this.resultCode_ = 0;
                this.bitField0_ &= -2;
                this.userHandle_ = 0;
                this.bitField0_ &= -3;
                this.userId_ = 0;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMLogoutRsp getDefaultInstanceForType() {
                return IMLogoutRsp.getDefaultInstance();
            }

            public IMLogoutRsp build() {
                IMLogoutRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMLogoutRsp buildPartial() {
                int i = 1;
                IMLogoutRsp iMLogoutRsp = new IMLogoutRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMLogoutRsp.resultCode_ = this.resultCode_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMLogoutRsp.userHandle_ = this.userHandle_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMLogoutRsp.userId_ = this.userId_;
                iMLogoutRsp.bitField0_ = i;
                return iMLogoutRsp;
            }

            public Builder mergeFrom(IMLogoutRsp iMLogoutRsp) {
                if (iMLogoutRsp != IMLogoutRsp.getDefaultInstance()) {
                    if (iMLogoutRsp.hasResultCode()) {
                        setResultCode(iMLogoutRsp.getResultCode());
                    }
                    if (iMLogoutRsp.hasUserHandle()) {
                        setUserHandle(iMLogoutRsp.getUserHandle());
                    }
                    if (iMLogoutRsp.hasUserId()) {
                        setUserId(iMLogoutRsp.getUserId());
                    }
                    setUnknownFields(getUnknownFields().concat(iMLogoutRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasResultCode()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMLogoutRsp iMLogoutRsp;
                IMLogoutRsp iMLogoutRsp2;
                try {
                    IMLogoutRsp iMLogoutRsp3 = (IMLogoutRsp) IMLogoutRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMLogoutRsp3 != null) {
                        mergeFrom(iMLogoutRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMLogoutRsp2 = (IMLogoutRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMLogoutRsp = iMLogoutRsp2;
                    th = th2;
                }
                if (iMLogoutRsp != null) {
                    mergeFrom(iMLogoutRsp);
                }
                throw th;
            }

            public boolean hasResultCode() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getResultCode() {
                return this.resultCode_;
            }

            public Builder setResultCode(int i) {
                this.bitField0_ |= 1;
                this.resultCode_ = i;
                return this;
            }

            public Builder clearResultCode() {
                this.bitField0_ &= -2;
                this.resultCode_ = 0;
                return this;
            }

            public boolean hasUserHandle() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getUserHandle() {
                return this.userHandle_;
            }

            public Builder setUserHandle(int i) {
                this.bitField0_ |= 2;
                this.userHandle_ = i;
                return this;
            }

            public Builder clearUserHandle() {
                this.bitField0_ &= -3;
                this.userHandle_ = 0;
                return this;
            }

            public boolean hasUserId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getUserId() {
                return this.userId_;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 4;
                this.userId_ = i;
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -5;
                this.userId_ = 0;
                return this;
            }
        }

        private IMLogoutRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMLogoutRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMLogoutRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMLogoutRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMLogoutRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.resultCode_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.userHandle_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.userId_ = codedInputStream.readUInt32();
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

        public Parser<IMLogoutRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasResultCode() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getResultCode() {
            return this.resultCode_;
        }

        public boolean hasUserHandle() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getUserId() {
            return this.userId_;
        }

        private void initFields() {
            this.resultCode_ = 0;
            this.userHandle_ = 0;
            this.userId_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasResultCode()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.resultCode_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.userHandle_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.userId_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.resultCode_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.userHandle_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.userId_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMLogoutRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMLogoutRsp) PARSER.parseFrom(byteString);
        }

        public static IMLogoutRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMLogoutRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMLogoutRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMLogoutRsp) PARSER.parseFrom(bArr);
        }

        public static IMLogoutRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMLogoutRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMLogoutRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMLogoutRsp) PARSER.parseFrom(inputStream);
        }

        public static IMLogoutRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLogoutRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMLogoutRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMLogoutRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMLogoutRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLogoutRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMLogoutRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMLogoutRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMLogoutRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLogoutRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMLogoutRsp iMLogoutRsp) {
            return newBuilder().mergeFrom(iMLogoutRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMLogoutRspOrBuilder extends MessageLiteOrBuilder {
        int getResultCode();

        int getUserHandle();

        int getUserId();

        boolean hasResultCode();

        boolean hasUserHandle();

        boolean hasUserId();
    }

    public static final class IMMsgServReq extends GeneratedMessageLite implements IMMsgServReqOrBuilder {
        public static Parser<IMMsgServReq> PARSER = new AbstractParser<IMMsgServReq>() {
            public IMMsgServReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMMsgServReq(codedInputStream, extensionRegistryLite);
            }
        };
        private static final IMMsgServReq defaultInstance = new IMMsgServReq(true);
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMMsgServReq, Builder> implements IMMsgServReqOrBuilder {
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
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMMsgServReq getDefaultInstanceForType() {
                return IMMsgServReq.getDefaultInstance();
            }

            public IMMsgServReq build() {
                IMMsgServReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMMsgServReq buildPartial() {
                return new IMMsgServReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
            }

            public Builder mergeFrom(IMMsgServReq iMMsgServReq) {
                if (iMMsgServReq != IMMsgServReq.getDefaultInstance()) {
                    setUnknownFields(getUnknownFields().concat(iMMsgServReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMMsgServReq iMMsgServReq;
                IMMsgServReq iMMsgServReq2;
                try {
                    IMMsgServReq iMMsgServReq3 = (IMMsgServReq) IMMsgServReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMMsgServReq3 != null) {
                        mergeFrom(iMMsgServReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMMsgServReq2 = (IMMsgServReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMMsgServReq = iMMsgServReq2;
                    th = th2;
                }
                if (iMMsgServReq != null) {
                    mergeFrom(iMMsgServReq);
                }
                throw th;
            }
        }

        private IMMsgServReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMMsgServReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMMsgServReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMMsgServReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMMsgServReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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

        public Parser<IMMsgServReq> getParserForType() {
            return PARSER;
        }

        private void initFields() {
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
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int size = 0 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMMsgServReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMMsgServReq) PARSER.parseFrom(byteString);
        }

        public static IMMsgServReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMsgServReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMMsgServReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMMsgServReq) PARSER.parseFrom(bArr);
        }

        public static IMMsgServReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMsgServReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMMsgServReq parseFrom(InputStream inputStream) throws IOException {
            return (IMMsgServReq) PARSER.parseFrom(inputStream);
        }

        public static IMMsgServReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgServReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMMsgServReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMMsgServReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMMsgServReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgServReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMMsgServReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMMsgServReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMMsgServReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgServReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMMsgServReq iMMsgServReq) {
            return newBuilder().mergeFrom(iMMsgServReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMMsgServReqOrBuilder extends MessageLiteOrBuilder {
    }

    public static final class IMMsgServRsp extends GeneratedMessageLite implements IMMsgServRspOrBuilder {
        public static final int BACKIP_IP_FIELD_NUMBER = 3;
        public static Parser<IMMsgServRsp> PARSER = new AbstractParser<IMMsgServRsp>() {
            public IMMsgServRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMMsgServRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PORT_FIELD_NUMBER = 4;
        public static final int PRIOR_IP_FIELD_NUMBER = 2;
        public static final int RESULT_CODE_FIELD_NUMBER = 1;
        private static final IMMsgServRsp defaultInstance = new IMMsgServRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public Object backipIp_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int port_;
        /* access modifiers changed from: private */
        public Object priorIp_;
        /* access modifiers changed from: private */
        public ResultType resultCode_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMMsgServRsp, Builder> implements IMMsgServRspOrBuilder {
            private Object backipIp_ = "";
            private int bitField0_;
            private int port_;
            private Object priorIp_ = "";
            private ResultType resultCode_ = ResultType.REFUSE_REASON_NONE;

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
                this.resultCode_ = ResultType.REFUSE_REASON_NONE;
                this.bitField0_ &= -2;
                this.priorIp_ = "";
                this.bitField0_ &= -3;
                this.backipIp_ = "";
                this.bitField0_ &= -5;
                this.port_ = 0;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMMsgServRsp getDefaultInstanceForType() {
                return IMMsgServRsp.getDefaultInstance();
            }

            public IMMsgServRsp build() {
                IMMsgServRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMMsgServRsp buildPartial() {
                int i = 1;
                IMMsgServRsp iMMsgServRsp = new IMMsgServRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMMsgServRsp.resultCode_ = this.resultCode_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMMsgServRsp.priorIp_ = this.priorIp_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMMsgServRsp.backipIp_ = this.backipIp_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMMsgServRsp.port_ = this.port_;
                iMMsgServRsp.bitField0_ = i;
                return iMMsgServRsp;
            }

            public Builder mergeFrom(IMMsgServRsp iMMsgServRsp) {
                if (iMMsgServRsp != IMMsgServRsp.getDefaultInstance()) {
                    if (iMMsgServRsp.hasResultCode()) {
                        setResultCode(iMMsgServRsp.getResultCode());
                    }
                    if (iMMsgServRsp.hasPriorIp()) {
                        this.bitField0_ |= 2;
                        this.priorIp_ = iMMsgServRsp.priorIp_;
                    }
                    if (iMMsgServRsp.hasBackipIp()) {
                        this.bitField0_ |= 4;
                        this.backipIp_ = iMMsgServRsp.backipIp_;
                    }
                    if (iMMsgServRsp.hasPort()) {
                        setPort(iMMsgServRsp.getPort());
                    }
                    setUnknownFields(getUnknownFields().concat(iMMsgServRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasResultCode()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMMsgServRsp iMMsgServRsp;
                IMMsgServRsp iMMsgServRsp2;
                try {
                    IMMsgServRsp iMMsgServRsp3 = (IMMsgServRsp) IMMsgServRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMMsgServRsp3 != null) {
                        mergeFrom(iMMsgServRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMMsgServRsp2 = (IMMsgServRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMMsgServRsp = iMMsgServRsp2;
                    th = th2;
                }
                if (iMMsgServRsp != null) {
                    mergeFrom(iMMsgServRsp);
                }
                throw th;
            }

            public boolean hasResultCode() {
                return (this.bitField0_ & 1) == 1;
            }

            public ResultType getResultCode() {
                return this.resultCode_;
            }

            public Builder setResultCode(ResultType resultType) {
                if (resultType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.resultCode_ = resultType;
                return this;
            }

            public Builder clearResultCode() {
                this.bitField0_ &= -2;
                this.resultCode_ = ResultType.REFUSE_REASON_NONE;
                return this;
            }

            public boolean hasPriorIp() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getPriorIp() {
                Object obj = this.priorIp_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.priorIp_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getPriorIpBytes() {
                Object obj = this.priorIp_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.priorIp_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setPriorIp(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.priorIp_ = str;
                return this;
            }

            public Builder clearPriorIp() {
                this.bitField0_ &= -3;
                this.priorIp_ = IMMsgServRsp.getDefaultInstance().getPriorIp();
                return this;
            }

            public Builder setPriorIpBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.priorIp_ = byteString;
                return this;
            }

            public boolean hasBackipIp() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getBackipIp() {
                Object obj = this.backipIp_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.backipIp_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getBackipIpBytes() {
                Object obj = this.backipIp_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.backipIp_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setBackipIp(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.backipIp_ = str;
                return this;
            }

            public Builder clearBackipIp() {
                this.bitField0_ &= -5;
                this.backipIp_ = IMMsgServRsp.getDefaultInstance().getBackipIp();
                return this;
            }

            public Builder setBackipIpBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.backipIp_ = byteString;
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
        }

        private IMMsgServRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMMsgServRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMMsgServRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMMsgServRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMMsgServRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            int readEnum = codedInputStream.readEnum();
                            ResultType valueOf = ResultType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 1;
                                this.resultCode_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.priorIp_ = readBytes;
                            break;
                        case 26:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.backipIp_ = readBytes2;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
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

        public Parser<IMMsgServRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasResultCode() {
            return (this.bitField0_ & 1) == 1;
        }

        public ResultType getResultCode() {
            return this.resultCode_;
        }

        public boolean hasPriorIp() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getPriorIp() {
            Object obj = this.priorIp_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.priorIp_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getPriorIpBytes() {
            Object obj = this.priorIp_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.priorIp_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasBackipIp() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getBackipIp() {
            Object obj = this.backipIp_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.backipIp_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getBackipIpBytes() {
            Object obj = this.backipIp_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.backipIp_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasPort() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getPort() {
            return this.port_;
        }

        private void initFields() {
            this.resultCode_ = ResultType.REFUSE_REASON_NONE;
            this.priorIp_ = "";
            this.backipIp_ = "";
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
            if (!hasResultCode()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeEnum(1, this.resultCode_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getPriorIpBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getBackipIpBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.port_);
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
                i2 = 0 + CodedOutputStream.computeEnumSize(1, this.resultCode_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getPriorIpBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getBackipIpBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.port_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMMsgServRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMMsgServRsp) PARSER.parseFrom(byteString);
        }

        public static IMMsgServRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMsgServRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMMsgServRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMMsgServRsp) PARSER.parseFrom(bArr);
        }

        public static IMMsgServRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMsgServRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMMsgServRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMMsgServRsp) PARSER.parseFrom(inputStream);
        }

        public static IMMsgServRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgServRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMMsgServRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMMsgServRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMMsgServRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgServRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMMsgServRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMMsgServRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMMsgServRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgServRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMMsgServRsp iMMsgServRsp) {
            return newBuilder().mergeFrom(iMMsgServRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMMsgServRspOrBuilder extends MessageLiteOrBuilder {
        String getBackipIp();

        ByteString getBackipIpBytes();

        int getPort();

        String getPriorIp();

        ByteString getPriorIpBytes();

        ResultType getResultCode();

        boolean hasBackipIp();

        boolean hasPort();

        boolean hasPriorIp();

        boolean hasResultCode();
    }

    public static final class IMRegisterReq extends GeneratedMessageLite implements IMRegisterReqOrBuilder {
        public static final int APIKEY_FIELD_NUMBER = 5;
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int APPKEY_FIELD_NUMBER = 2;
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int CLIENT_TYPE_FIELD_NUMBER = 6;
        public static final int CLIENT_VERSION_FIELD_NUMBER = 7;
        public static Parser<IMRegisterReq> PARSER = new AbstractParser<IMRegisterReq>() {
            public IMRegisterReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMRegisterReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_HANDLE_FIELD_NUMBER = 3;
        public static final int USER_INFO_FIELD_NUMBER = 8;
        public static final int USER_NAME_FIELD_NUMBER = 4;
        private static final IMRegisterReq defaultInstance = new IMRegisterReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public Object apikey_;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public Object appkey_;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ClientType clientType_;
        /* access modifiers changed from: private */
        public Object clientVersion_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userHandle_;
        /* access modifiers changed from: private */
        public UserInfo userInfo_;
        /* access modifiers changed from: private */
        public Object userName_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMRegisterReq, Builder> implements IMRegisterReqOrBuilder {
            private Object apikey_ = "";
            private int appid_;
            private Object appkey_ = "";
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private ClientType clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
            private Object clientVersion_ = "";
            private int userHandle_;
            private UserInfo userInfo_ = UserInfo.getDefaultInstance();
            private Object userName_ = "";

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
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.appkey_ = "";
                this.bitField0_ &= -3;
                this.userHandle_ = 0;
                this.bitField0_ &= -5;
                this.userName_ = "";
                this.bitField0_ &= -9;
                this.apikey_ = "";
                this.bitField0_ &= -17;
                this.clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
                this.bitField0_ &= -33;
                this.clientVersion_ = "";
                this.bitField0_ &= -65;
                this.userInfo_ = UserInfo.getDefaultInstance();
                this.bitField0_ &= -129;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -257;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMRegisterReq getDefaultInstanceForType() {
                return IMRegisterReq.getDefaultInstance();
            }

            public IMRegisterReq build() {
                IMRegisterReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMRegisterReq buildPartial() {
                int i = 1;
                IMRegisterReq iMRegisterReq = new IMRegisterReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMRegisterReq.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMRegisterReq.appkey_ = this.appkey_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMRegisterReq.userHandle_ = this.userHandle_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMRegisterReq.userName_ = this.userName_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMRegisterReq.apikey_ = this.apikey_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                iMRegisterReq.clientType_ = this.clientType_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                iMRegisterReq.clientVersion_ = this.clientVersion_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                iMRegisterReq.userInfo_ = this.userInfo_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                iMRegisterReq.attachData_ = this.attachData_;
                iMRegisterReq.bitField0_ = i;
                return iMRegisterReq;
            }

            public Builder mergeFrom(IMRegisterReq iMRegisterReq) {
                if (iMRegisterReq != IMRegisterReq.getDefaultInstance()) {
                    if (iMRegisterReq.hasAppid()) {
                        setAppid(iMRegisterReq.getAppid());
                    }
                    if (iMRegisterReq.hasAppkey()) {
                        this.bitField0_ |= 2;
                        this.appkey_ = iMRegisterReq.appkey_;
                    }
                    if (iMRegisterReq.hasUserHandle()) {
                        setUserHandle(iMRegisterReq.getUserHandle());
                    }
                    if (iMRegisterReq.hasUserName()) {
                        this.bitField0_ |= 8;
                        this.userName_ = iMRegisterReq.userName_;
                    }
                    if (iMRegisterReq.hasApikey()) {
                        this.bitField0_ |= 16;
                        this.apikey_ = iMRegisterReq.apikey_;
                    }
                    if (iMRegisterReq.hasClientType()) {
                        setClientType(iMRegisterReq.getClientType());
                    }
                    if (iMRegisterReq.hasClientVersion()) {
                        this.bitField0_ |= 64;
                        this.clientVersion_ = iMRegisterReq.clientVersion_;
                    }
                    if (iMRegisterReq.hasUserInfo()) {
                        mergeUserInfo(iMRegisterReq.getUserInfo());
                    }
                    if (iMRegisterReq.hasAttachData()) {
                        setAttachData(iMRegisterReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMRegisterReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasAppkey()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMRegisterReq iMRegisterReq;
                IMRegisterReq iMRegisterReq2;
                try {
                    IMRegisterReq iMRegisterReq3 = (IMRegisterReq) IMRegisterReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMRegisterReq3 != null) {
                        mergeFrom(iMRegisterReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMRegisterReq2 = (IMRegisterReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMRegisterReq = iMRegisterReq2;
                    th = th2;
                }
                if (iMRegisterReq != null) {
                    mergeFrom(iMRegisterReq);
                }
                throw th;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 1;
                this.appid_ = i;
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                return this;
            }

            public boolean hasAppkey() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getAppkey() {
                Object obj = this.appkey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.appkey_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getAppkeyBytes() {
                Object obj = this.appkey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appkey_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setAppkey(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.appkey_ = str;
                return this;
            }

            public Builder clearAppkey() {
                this.bitField0_ &= -3;
                this.appkey_ = IMRegisterReq.getDefaultInstance().getAppkey();
                return this;
            }

            public Builder setAppkeyBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.appkey_ = byteString;
                return this;
            }

            public boolean hasUserHandle() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getUserHandle() {
                return this.userHandle_;
            }

            public Builder setUserHandle(int i) {
                this.bitField0_ |= 4;
                this.userHandle_ = i;
                return this;
            }

            public Builder clearUserHandle() {
                this.bitField0_ &= -5;
                this.userHandle_ = 0;
                return this;
            }

            public boolean hasUserName() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getUserName() {
                Object obj = this.userName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.userName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUserNameBytes() {
                Object obj = this.userName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUserName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.userName_ = str;
                return this;
            }

            public Builder clearUserName() {
                this.bitField0_ &= -9;
                this.userName_ = IMRegisterReq.getDefaultInstance().getUserName();
                return this;
            }

            public Builder setUserNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.userName_ = byteString;
                return this;
            }

            public boolean hasApikey() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getApikey() {
                Object obj = this.apikey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.apikey_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getApikeyBytes() {
                Object obj = this.apikey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.apikey_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setApikey(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.apikey_ = str;
                return this;
            }

            public Builder clearApikey() {
                this.bitField0_ &= -17;
                this.apikey_ = IMRegisterReq.getDefaultInstance().getApikey();
                return this;
            }

            public Builder setApikeyBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.apikey_ = byteString;
                return this;
            }

            public boolean hasClientType() {
                return (this.bitField0_ & 32) == 32;
            }

            public ClientType getClientType() {
                return this.clientType_;
            }

            public Builder setClientType(ClientType clientType) {
                if (clientType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.clientType_ = clientType;
                return this;
            }

            public Builder clearClientType() {
                this.bitField0_ &= -33;
                this.clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
                return this;
            }

            public boolean hasClientVersion() {
                return (this.bitField0_ & 64) == 64;
            }

            public String getClientVersion() {
                Object obj = this.clientVersion_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.clientVersion_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getClientVersionBytes() {
                Object obj = this.clientVersion_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.clientVersion_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setClientVersion(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.clientVersion_ = str;
                return this;
            }

            public Builder clearClientVersion() {
                this.bitField0_ &= -65;
                this.clientVersion_ = IMRegisterReq.getDefaultInstance().getClientVersion();
                return this;
            }

            public Builder setClientVersionBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.clientVersion_ = byteString;
                return this;
            }

            public boolean hasUserInfo() {
                return (this.bitField0_ & 128) == 128;
            }

            public UserInfo getUserInfo() {
                return this.userInfo_;
            }

            public Builder setUserInfo(UserInfo userInfo) {
                if (userInfo == null) {
                    throw new NullPointerException();
                }
                this.userInfo_ = userInfo;
                this.bitField0_ |= 128;
                return this;
            }

            public Builder setUserInfo(com.ifengyu.im.protobuf.IMBaseDefine.UserInfo.Builder builder) {
                this.userInfo_ = builder.build();
                this.bitField0_ |= 128;
                return this;
            }

            public Builder mergeUserInfo(UserInfo userInfo) {
                if ((this.bitField0_ & 128) != 128 || this.userInfo_ == UserInfo.getDefaultInstance()) {
                    this.userInfo_ = userInfo;
                } else {
                    this.userInfo_ = UserInfo.newBuilder(this.userInfo_).mergeFrom(userInfo).buildPartial();
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder clearUserInfo() {
                this.userInfo_ = UserInfo.getDefaultInstance();
                this.bitField0_ &= -129;
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 256) == 256;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -257;
                this.attachData_ = IMRegisterReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMRegisterReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMRegisterReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMRegisterReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMRegisterReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMRegisterReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            boolean z;
            com.ifengyu.im.protobuf.IMBaseDefine.UserInfo.Builder builder;
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) newOutput);
            boolean z2 = false;
            while (!z2) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            continue;
                        case 8:
                            this.bitField0_ |= 1;
                            this.appid_ = codedInputStream.readUInt32();
                            z = z2;
                            continue;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.appkey_ = readBytes;
                            z = z2;
                            continue;
                        case 24:
                            this.bitField0_ |= 4;
                            this.userHandle_ = codedInputStream.readUInt32();
                            z = z2;
                            continue;
                        case 34:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.userName_ = readBytes2;
                            z = z2;
                            continue;
                        case 42:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.apikey_ = readBytes3;
                            z = z2;
                            continue;
                        case 48:
                            int readEnum = codedInputStream.readEnum();
                            ClientType valueOf = ClientType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 32;
                                this.clientType_ = valueOf;
                                z = z2;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                z = z2;
                                continue;
                            }
                        case 58:
                            ByteString readBytes4 = codedInputStream.readBytes();
                            this.bitField0_ |= 64;
                            this.clientVersion_ = readBytes4;
                            z = z2;
                            continue;
                        case 66:
                            if ((this.bitField0_ & 128) == 128) {
                                builder = this.userInfo_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.userInfo_ = (UserInfo) codedInputStream.readMessage(UserInfo.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.userInfo_);
                                this.userInfo_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 128;
                            z = z2;
                            continue;
                        case 162:
                            this.bitField0_ |= 256;
                            this.attachData_ = codedInputStream.readBytes();
                            break;
                        default:
                            if (!parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                z = true;
                                continue;
                            }
                            break;
                    }
                    z = z2;
                    z2 = z;
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

        public Parser<IMRegisterReq> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasAppkey() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getAppkey() {
            Object obj = this.appkey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.appkey_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getAppkeyBytes() {
            Object obj = this.appkey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appkey_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUserHandle() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        public boolean hasUserName() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getUserName() {
            Object obj = this.userName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUserNameBytes() {
            Object obj = this.userName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasApikey() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getApikey() {
            Object obj = this.apikey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.apikey_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getApikeyBytes() {
            Object obj = this.apikey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.apikey_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasClientType() {
            return (this.bitField0_ & 32) == 32;
        }

        public ClientType getClientType() {
            return this.clientType_;
        }

        public boolean hasClientVersion() {
            return (this.bitField0_ & 64) == 64;
        }

        public String getClientVersion() {
            Object obj = this.clientVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.clientVersion_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getClientVersionBytes() {
            Object obj = this.clientVersion_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.clientVersion_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUserInfo() {
            return (this.bitField0_ & 128) == 128;
        }

        public UserInfo getUserInfo() {
            return this.userInfo_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 256) == 256;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.appkey_ = "";
            this.userHandle_ = 0;
            this.userName_ = "";
            this.apikey_ = "";
            this.clientType_ = ClientType.CLIENT_TYPE_WINDOWS;
            this.clientVersion_ = "";
            this.userInfo_ = UserInfo.getDefaultInstance();
            this.attachData_ = ByteString.EMPTY;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAppid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasAppkey()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getAppkeyBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.userHandle_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getUserNameBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getApikeyBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeEnum(6, this.clientType_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBytes(7, getClientVersionBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeMessage(8, this.userInfo_);
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeBytes(20, this.attachData_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getAppkeyBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.userHandle_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getUserNameBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getApikeyBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeEnumSize(6, this.clientType_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeBytesSize(7, getClientVersionBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeMessageSize(8, this.userInfo_);
            }
            if ((this.bitField0_ & 256) == 256) {
                i2 += CodedOutputStream.computeBytesSize(20, this.attachData_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMRegisterReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMRegisterReq) PARSER.parseFrom(byteString);
        }

        public static IMRegisterReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRegisterReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMRegisterReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMRegisterReq) PARSER.parseFrom(bArr);
        }

        public static IMRegisterReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRegisterReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMRegisterReq parseFrom(InputStream inputStream) throws IOException {
            return (IMRegisterReq) PARSER.parseFrom(inputStream);
        }

        public static IMRegisterReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRegisterReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMRegisterReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMRegisterReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMRegisterReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRegisterReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMRegisterReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMRegisterReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMRegisterReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRegisterReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMRegisterReq iMRegisterReq) {
            return newBuilder().mergeFrom(iMRegisterReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMRegisterReqOrBuilder extends MessageLiteOrBuilder {
        String getApikey();

        ByteString getApikeyBytes();

        int getAppid();

        String getAppkey();

        ByteString getAppkeyBytes();

        ByteString getAttachData();

        ClientType getClientType();

        String getClientVersion();

        ByteString getClientVersionBytes();

        int getUserHandle();

        UserInfo getUserInfo();

        String getUserName();

        ByteString getUserNameBytes();

        boolean hasApikey();

        boolean hasAppid();

        boolean hasAppkey();

        boolean hasAttachData();

        boolean hasClientType();

        boolean hasClientVersion();

        boolean hasUserHandle();

        boolean hasUserInfo();

        boolean hasUserName();
    }

    public static final class IMRegisterRes extends GeneratedMessageLite implements IMRegisterResOrBuilder {
        public static Parser<IMRegisterRes> PARSER = new AbstractParser<IMRegisterRes>() {
            public IMRegisterRes parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMRegisterRes(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RESULT_CODE_FIELD_NUMBER = 3;
        public static final int RESULT_STRING_FIELD_NUMBER = 4;
        public static final int SERVER_TIME_FIELD_NUMBER = 2;
        public static final int USER_HANDLE_FIELD_NUMBER = 1;
        public static final int USER_ID_FIELD_NUMBER = 6;
        public static final int USER_NAME_FIELD_NUMBER = 5;
        private static final IMRegisterRes defaultInstance = new IMRegisterRes(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public ResultType resultCode_;
        /* access modifiers changed from: private */
        public Object resultString_;
        /* access modifiers changed from: private */
        public int serverTime_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userHandle_;
        /* access modifiers changed from: private */
        public int userId_;
        /* access modifiers changed from: private */
        public Object userName_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMRegisterRes, Builder> implements IMRegisterResOrBuilder {
            private int bitField0_;
            private ResultType resultCode_ = ResultType.REFUSE_REASON_NONE;
            private Object resultString_ = "";
            private int serverTime_;
            private int userHandle_;
            private int userId_;
            private Object userName_ = "";

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
                this.userHandle_ = 0;
                this.bitField0_ &= -2;
                this.serverTime_ = 0;
                this.bitField0_ &= -3;
                this.resultCode_ = ResultType.REFUSE_REASON_NONE;
                this.bitField0_ &= -5;
                this.resultString_ = "";
                this.bitField0_ &= -9;
                this.userName_ = "";
                this.bitField0_ &= -17;
                this.userId_ = 0;
                this.bitField0_ &= -33;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMRegisterRes getDefaultInstanceForType() {
                return IMRegisterRes.getDefaultInstance();
            }

            public IMRegisterRes build() {
                IMRegisterRes buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMRegisterRes buildPartial() {
                int i = 1;
                IMRegisterRes iMRegisterRes = new IMRegisterRes((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMRegisterRes.userHandle_ = this.userHandle_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMRegisterRes.serverTime_ = this.serverTime_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMRegisterRes.resultCode_ = this.resultCode_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMRegisterRes.resultString_ = this.resultString_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMRegisterRes.userName_ = this.userName_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                iMRegisterRes.userId_ = this.userId_;
                iMRegisterRes.bitField0_ = i;
                return iMRegisterRes;
            }

            public Builder mergeFrom(IMRegisterRes iMRegisterRes) {
                if (iMRegisterRes != IMRegisterRes.getDefaultInstance()) {
                    if (iMRegisterRes.hasUserHandle()) {
                        setUserHandle(iMRegisterRes.getUserHandle());
                    }
                    if (iMRegisterRes.hasServerTime()) {
                        setServerTime(iMRegisterRes.getServerTime());
                    }
                    if (iMRegisterRes.hasResultCode()) {
                        setResultCode(iMRegisterRes.getResultCode());
                    }
                    if (iMRegisterRes.hasResultString()) {
                        this.bitField0_ |= 8;
                        this.resultString_ = iMRegisterRes.resultString_;
                    }
                    if (iMRegisterRes.hasUserName()) {
                        this.bitField0_ |= 16;
                        this.userName_ = iMRegisterRes.userName_;
                    }
                    if (iMRegisterRes.hasUserId()) {
                        setUserId(iMRegisterRes.getUserId());
                    }
                    setUnknownFields(getUnknownFields().concat(iMRegisterRes.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMRegisterRes iMRegisterRes;
                IMRegisterRes iMRegisterRes2;
                try {
                    IMRegisterRes iMRegisterRes3 = (IMRegisterRes) IMRegisterRes.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMRegisterRes3 != null) {
                        mergeFrom(iMRegisterRes3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMRegisterRes2 = (IMRegisterRes) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMRegisterRes = iMRegisterRes2;
                    th = th2;
                }
                if (iMRegisterRes != null) {
                    mergeFrom(iMRegisterRes);
                }
                throw th;
            }

            public boolean hasUserHandle() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getUserHandle() {
                return this.userHandle_;
            }

            public Builder setUserHandle(int i) {
                this.bitField0_ |= 1;
                this.userHandle_ = i;
                return this;
            }

            public Builder clearUserHandle() {
                this.bitField0_ &= -2;
                this.userHandle_ = 0;
                return this;
            }

            public boolean hasServerTime() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getServerTime() {
                return this.serverTime_;
            }

            public Builder setServerTime(int i) {
                this.bitField0_ |= 2;
                this.serverTime_ = i;
                return this;
            }

            public Builder clearServerTime() {
                this.bitField0_ &= -3;
                this.serverTime_ = 0;
                return this;
            }

            public boolean hasResultCode() {
                return (this.bitField0_ & 4) == 4;
            }

            public ResultType getResultCode() {
                return this.resultCode_;
            }

            public Builder setResultCode(ResultType resultType) {
                if (resultType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.resultCode_ = resultType;
                return this;
            }

            public Builder clearResultCode() {
                this.bitField0_ &= -5;
                this.resultCode_ = ResultType.REFUSE_REASON_NONE;
                return this;
            }

            public boolean hasResultString() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getResultString() {
                Object obj = this.resultString_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.resultString_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getResultStringBytes() {
                Object obj = this.resultString_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.resultString_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setResultString(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.resultString_ = str;
                return this;
            }

            public Builder clearResultString() {
                this.bitField0_ &= -9;
                this.resultString_ = IMRegisterRes.getDefaultInstance().getResultString();
                return this;
            }

            public Builder setResultStringBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.resultString_ = byteString;
                return this;
            }

            public boolean hasUserName() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getUserName() {
                Object obj = this.userName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.userName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUserNameBytes() {
                Object obj = this.userName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUserName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.userName_ = str;
                return this;
            }

            public Builder clearUserName() {
                this.bitField0_ &= -17;
                this.userName_ = IMRegisterRes.getDefaultInstance().getUserName();
                return this;
            }

            public Builder setUserNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.userName_ = byteString;
                return this;
            }

            public boolean hasUserId() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getUserId() {
                return this.userId_;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 32;
                this.userId_ = i;
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -33;
                this.userId_ = 0;
                return this;
            }
        }

        private IMRegisterRes(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMRegisterRes(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMRegisterRes getDefaultInstance() {
            return defaultInstance;
        }

        public IMRegisterRes getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMRegisterRes(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.userHandle_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.serverTime_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            int readEnum = codedInputStream.readEnum();
                            ResultType valueOf = ResultType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 4;
                                this.resultCode_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 34:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.resultString_ = readBytes;
                            break;
                        case 42:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.userName_ = readBytes2;
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.userId_ = codedInputStream.readUInt32();
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

        public Parser<IMRegisterRes> getParserForType() {
            return PARSER;
        }

        public boolean hasUserHandle() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        public boolean hasServerTime() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getServerTime() {
            return this.serverTime_;
        }

        public boolean hasResultCode() {
            return (this.bitField0_ & 4) == 4;
        }

        public ResultType getResultCode() {
            return this.resultCode_;
        }

        public boolean hasResultString() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getResultString() {
            Object obj = this.resultString_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.resultString_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getResultStringBytes() {
            Object obj = this.resultString_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resultString_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUserName() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getUserName() {
            Object obj = this.userName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.userName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUserNameBytes() {
            Object obj = this.userName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getUserId() {
            return this.userId_;
        }

        private void initFields() {
            this.userHandle_ = 0;
            this.serverTime_ = 0;
            this.resultCode_ = ResultType.REFUSE_REASON_NONE;
            this.resultString_ = "";
            this.userName_ = "";
            this.userId_ = 0;
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
                codedOutputStream.writeUInt32(1, this.userHandle_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.serverTime_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(3, this.resultCode_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getResultStringBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getUserNameBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt32(6, this.userId_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.userHandle_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.serverTime_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeEnumSize(3, this.resultCode_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getResultStringBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getUserNameBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt32Size(6, this.userId_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMRegisterRes parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMRegisterRes) PARSER.parseFrom(byteString);
        }

        public static IMRegisterRes parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRegisterRes) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMRegisterRes parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMRegisterRes) PARSER.parseFrom(bArr);
        }

        public static IMRegisterRes parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRegisterRes) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMRegisterRes parseFrom(InputStream inputStream) throws IOException {
            return (IMRegisterRes) PARSER.parseFrom(inputStream);
        }

        public static IMRegisterRes parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRegisterRes) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMRegisterRes parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMRegisterRes) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMRegisterRes parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRegisterRes) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMRegisterRes parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMRegisterRes) PARSER.parseFrom(codedInputStream);
        }

        public static IMRegisterRes parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRegisterRes) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMRegisterRes iMRegisterRes) {
            return newBuilder().mergeFrom(iMRegisterRes);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMRegisterResOrBuilder extends MessageLiteOrBuilder {
        ResultType getResultCode();

        String getResultString();

        ByteString getResultStringBytes();

        int getServerTime();

        int getUserHandle();

        int getUserId();

        String getUserName();

        ByteString getUserNameBytes();

        boolean hasResultCode();

        boolean hasResultString();

        boolean hasServerTime();

        boolean hasUserHandle();

        boolean hasUserId();

        boolean hasUserName();
    }

    private IMLogin() {
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
