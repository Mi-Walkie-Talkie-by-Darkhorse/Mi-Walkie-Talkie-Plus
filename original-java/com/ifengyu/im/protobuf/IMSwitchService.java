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
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.OutputStream;

public final class IMSwitchService {

    public static final class IMP2PCmdMsg extends GeneratedMessageLite implements IMP2PCmdMsgOrBuilder {
        public static final int CMD_MSG_DATA_FIELD_NUMBER = 3;
        public static final int FROM_USER_ID_FIELD_NUMBER = 1;
        public static Parser<IMP2PCmdMsg> PARSER = new AbstractParser<IMP2PCmdMsg>() {
            public IMP2PCmdMsg parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMP2PCmdMsg(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TO_USER_ID_FIELD_NUMBER = 2;
        private static final IMP2PCmdMsg defaultInstance = new IMP2PCmdMsg(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object cmdMsgData_;
        /* access modifiers changed from: private */
        public int fromUserId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int toUserId_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMP2PCmdMsg, Builder> implements IMP2PCmdMsgOrBuilder {
            private int bitField0_;
            private Object cmdMsgData_ = "";
            private int fromUserId_;
            private int toUserId_;

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
                this.toUserId_ = 0;
                this.bitField0_ &= -3;
                this.cmdMsgData_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMP2PCmdMsg getDefaultInstanceForType() {
                return IMP2PCmdMsg.getDefaultInstance();
            }

            public IMP2PCmdMsg build() {
                IMP2PCmdMsg buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMP2PCmdMsg buildPartial() {
                int i = 1;
                IMP2PCmdMsg iMP2PCmdMsg = new IMP2PCmdMsg((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMP2PCmdMsg.fromUserId_ = this.fromUserId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMP2PCmdMsg.toUserId_ = this.toUserId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMP2PCmdMsg.cmdMsgData_ = this.cmdMsgData_;
                iMP2PCmdMsg.bitField0_ = i;
                return iMP2PCmdMsg;
            }

            public Builder mergeFrom(IMP2PCmdMsg iMP2PCmdMsg) {
                if (iMP2PCmdMsg != IMP2PCmdMsg.getDefaultInstance()) {
                    if (iMP2PCmdMsg.hasFromUserId()) {
                        setFromUserId(iMP2PCmdMsg.getFromUserId());
                    }
                    if (iMP2PCmdMsg.hasToUserId()) {
                        setToUserId(iMP2PCmdMsg.getToUserId());
                    }
                    if (iMP2PCmdMsg.hasCmdMsgData()) {
                        this.bitField0_ |= 4;
                        this.cmdMsgData_ = iMP2PCmdMsg.cmdMsgData_;
                    }
                    setUnknownFields(getUnknownFields().concat(iMP2PCmdMsg.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasFromUserId() && hasToUserId() && hasCmdMsgData()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMP2PCmdMsg iMP2PCmdMsg;
                IMP2PCmdMsg iMP2PCmdMsg2;
                try {
                    IMP2PCmdMsg iMP2PCmdMsg3 = (IMP2PCmdMsg) IMP2PCmdMsg.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMP2PCmdMsg3 != null) {
                        mergeFrom(iMP2PCmdMsg3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMP2PCmdMsg2 = (IMP2PCmdMsg) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMP2PCmdMsg = iMP2PCmdMsg2;
                    th = th2;
                }
                if (iMP2PCmdMsg != null) {
                    mergeFrom(iMP2PCmdMsg);
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

            public boolean hasToUserId() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getToUserId() {
                return this.toUserId_;
            }

            public Builder setToUserId(int i) {
                this.bitField0_ |= 2;
                this.toUserId_ = i;
                return this;
            }

            public Builder clearToUserId() {
                this.bitField0_ &= -3;
                this.toUserId_ = 0;
                return this;
            }

            public boolean hasCmdMsgData() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getCmdMsgData() {
                Object obj = this.cmdMsgData_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.cmdMsgData_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getCmdMsgDataBytes() {
                Object obj = this.cmdMsgData_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cmdMsgData_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setCmdMsgData(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.cmdMsgData_ = str;
                return this;
            }

            public Builder clearCmdMsgData() {
                this.bitField0_ &= -5;
                this.cmdMsgData_ = IMP2PCmdMsg.getDefaultInstance().getCmdMsgData();
                return this;
            }

            public Builder setCmdMsgDataBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.cmdMsgData_ = byteString;
                return this;
            }
        }

        private IMP2PCmdMsg(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMP2PCmdMsg(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMP2PCmdMsg getDefaultInstance() {
            return defaultInstance;
        }

        public IMP2PCmdMsg getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMP2PCmdMsg(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 16:
                            this.bitField0_ |= 2;
                            this.toUserId_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.cmdMsgData_ = readBytes;
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

        public Parser<IMP2PCmdMsg> getParserForType() {
            return PARSER;
        }

        public boolean hasFromUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getFromUserId() {
            return this.fromUserId_;
        }

        public boolean hasToUserId() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getToUserId() {
            return this.toUserId_;
        }

        public boolean hasCmdMsgData() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getCmdMsgData() {
            Object obj = this.cmdMsgData_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.cmdMsgData_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getCmdMsgDataBytes() {
            Object obj = this.cmdMsgData_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cmdMsgData_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.fromUserId_ = 0;
            this.toUserId_ = 0;
            this.cmdMsgData_ = "";
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
            } else if (!hasToUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCmdMsgData()) {
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
                codedOutputStream.writeUInt32(2, this.toUserId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getCmdMsgDataBytes());
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
                i2 += CodedOutputStream.computeUInt32Size(2, this.toUserId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getCmdMsgDataBytes());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMP2PCmdMsg parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMP2PCmdMsg) PARSER.parseFrom(byteString);
        }

        public static IMP2PCmdMsg parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMP2PCmdMsg) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMP2PCmdMsg parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMP2PCmdMsg) PARSER.parseFrom(bArr);
        }

        public static IMP2PCmdMsg parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMP2PCmdMsg) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMP2PCmdMsg parseFrom(InputStream inputStream) throws IOException {
            return (IMP2PCmdMsg) PARSER.parseFrom(inputStream);
        }

        public static IMP2PCmdMsg parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMP2PCmdMsg) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMP2PCmdMsg parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMP2PCmdMsg) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMP2PCmdMsg parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMP2PCmdMsg) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMP2PCmdMsg parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMP2PCmdMsg) PARSER.parseFrom(codedInputStream);
        }

        public static IMP2PCmdMsg parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMP2PCmdMsg) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMP2PCmdMsg iMP2PCmdMsg) {
            return newBuilder().mergeFrom(iMP2PCmdMsg);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMP2PCmdMsgOrBuilder extends MessageLiteOrBuilder {
        String getCmdMsgData();

        ByteString getCmdMsgDataBytes();

        int getFromUserId();

        int getToUserId();

        boolean hasCmdMsgData();

        boolean hasFromUserId();

        boolean hasToUserId();
    }

    private IMSwitchService() {
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
