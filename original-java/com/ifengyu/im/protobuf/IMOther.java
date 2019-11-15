package com.ifengyu.im.protobuf;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.ByteString.Output;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.ifengyu.im.protobuf.IMBaseDefine.AccessSerUserLoadRatio;
import com.ifengyu.im.protobuf.IMBaseDefine.AccessSerUserLoadRatioOrBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class IMOther {

    public static final class IMAS2CSUsernum extends GeneratedMessageLite implements IMAS2CSUsernumOrBuilder {
        public static Parser<IMAS2CSUsernum> PARSER = new AbstractParser<IMAS2CSUsernum>() {
            public IMAS2CSUsernum parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMAS2CSUsernum(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_NUM_FIELD_NUMBER = 1;
        private static final IMAS2CSUsernum defaultInstance = new IMAS2CSUsernum(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userNum_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMAS2CSUsernum, Builder> implements IMAS2CSUsernumOrBuilder {
            private int bitField0_;
            private int userNum_;

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
                this.userNum_ = 0;
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMAS2CSUsernum getDefaultInstanceForType() {
                return IMAS2CSUsernum.getDefaultInstance();
            }

            public IMAS2CSUsernum build() {
                IMAS2CSUsernum buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMAS2CSUsernum buildPartial() {
                int i = 1;
                IMAS2CSUsernum iMAS2CSUsernum = new IMAS2CSUsernum((com.google.protobuf.GeneratedMessageLite.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                iMAS2CSUsernum.userNum_ = this.userNum_;
                iMAS2CSUsernum.bitField0_ = i;
                return iMAS2CSUsernum;
            }

            public Builder mergeFrom(IMAS2CSUsernum iMAS2CSUsernum) {
                if (iMAS2CSUsernum != IMAS2CSUsernum.getDefaultInstance()) {
                    if (iMAS2CSUsernum.hasUserNum()) {
                        setUserNum(iMAS2CSUsernum.getUserNum());
                    }
                    setUnknownFields(getUnknownFields().concat(iMAS2CSUsernum.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasUserNum()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMAS2CSUsernum iMAS2CSUsernum;
                IMAS2CSUsernum iMAS2CSUsernum2;
                try {
                    IMAS2CSUsernum iMAS2CSUsernum3 = (IMAS2CSUsernum) IMAS2CSUsernum.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMAS2CSUsernum3 != null) {
                        mergeFrom(iMAS2CSUsernum3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMAS2CSUsernum2 = (IMAS2CSUsernum) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMAS2CSUsernum = iMAS2CSUsernum2;
                    th = th2;
                }
                if (iMAS2CSUsernum != null) {
                    mergeFrom(iMAS2CSUsernum);
                }
                throw th;
            }

            public boolean hasUserNum() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getUserNum() {
                return this.userNum_;
            }

            public Builder setUserNum(int i) {
                this.bitField0_ |= 1;
                this.userNum_ = i;
                return this;
            }

            public Builder clearUserNum() {
                this.bitField0_ &= -2;
                this.userNum_ = 0;
                return this;
            }
        }

        private IMAS2CSUsernum(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMAS2CSUsernum(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMAS2CSUsernum getDefaultInstance() {
            return defaultInstance;
        }

        public IMAS2CSUsernum getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMAS2CSUsernum(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.userNum_ = codedInputStream.readUInt32();
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

        public Parser<IMAS2CSUsernum> getParserForType() {
            return PARSER;
        }

        public boolean hasUserNum() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserNum() {
            return this.userNum_;
        }

        private void initFields() {
            this.userNum_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasUserNum()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.userNum_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.userNum_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMAS2CSUsernum parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMAS2CSUsernum) PARSER.parseFrom(byteString);
        }

        public static IMAS2CSUsernum parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMAS2CSUsernum) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMAS2CSUsernum parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMAS2CSUsernum) PARSER.parseFrom(bArr);
        }

        public static IMAS2CSUsernum parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMAS2CSUsernum) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMAS2CSUsernum parseFrom(InputStream inputStream) throws IOException {
            return (IMAS2CSUsernum) PARSER.parseFrom(inputStream);
        }

        public static IMAS2CSUsernum parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAS2CSUsernum) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMAS2CSUsernum parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMAS2CSUsernum) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMAS2CSUsernum parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAS2CSUsernum) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMAS2CSUsernum parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMAS2CSUsernum) PARSER.parseFrom(codedInputStream);
        }

        public static IMAS2CSUsernum parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAS2CSUsernum) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMAS2CSUsernum iMAS2CSUsernum) {
            return newBuilder().mergeFrom(iMAS2CSUsernum);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMAS2CSUsernumOrBuilder extends MessageLiteOrBuilder {
        int getUserNum();

        boolean hasUserNum();
    }

    public static final class IMAS2MSLoginREQ extends GeneratedMessageLite implements IMAS2MSLoginREQOrBuilder {
        public static final int HOST_NAME_FIELD_NUMBER = 3;
        public static Parser<IMAS2MSLoginREQ> PARSER = new AbstractParser<IMAS2MSLoginREQ>() {
            public IMAS2MSLoginREQ parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMAS2MSLoginREQ(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SERVER_SID_FIELD_NUMBER = 2;
        public static final int SERVER_TYPE_FIELD_NUMBER = 1;
        private static final IMAS2MSLoginREQ defaultInstance = new IMAS2MSLoginREQ(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object hostName_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int serverSid_;
        /* access modifiers changed from: private */
        public int serverType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMAS2MSLoginREQ, Builder> implements IMAS2MSLoginREQOrBuilder {
            private int bitField0_;
            private Object hostName_ = "";
            private int serverSid_;
            private int serverType_;

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
                this.serverType_ = 0;
                this.bitField0_ &= -2;
                this.serverSid_ = 0;
                this.bitField0_ &= -3;
                this.hostName_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMAS2MSLoginREQ getDefaultInstanceForType() {
                return IMAS2MSLoginREQ.getDefaultInstance();
            }

            public IMAS2MSLoginREQ build() {
                IMAS2MSLoginREQ buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMAS2MSLoginREQ buildPartial() {
                int i = 1;
                IMAS2MSLoginREQ iMAS2MSLoginREQ = new IMAS2MSLoginREQ((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMAS2MSLoginREQ.serverType_ = this.serverType_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMAS2MSLoginREQ.serverSid_ = this.serverSid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMAS2MSLoginREQ.hostName_ = this.hostName_;
                iMAS2MSLoginREQ.bitField0_ = i;
                return iMAS2MSLoginREQ;
            }

            public Builder mergeFrom(IMAS2MSLoginREQ iMAS2MSLoginREQ) {
                if (iMAS2MSLoginREQ != IMAS2MSLoginREQ.getDefaultInstance()) {
                    if (iMAS2MSLoginREQ.hasServerType()) {
                        setServerType(iMAS2MSLoginREQ.getServerType());
                    }
                    if (iMAS2MSLoginREQ.hasServerSid()) {
                        setServerSid(iMAS2MSLoginREQ.getServerSid());
                    }
                    if (iMAS2MSLoginREQ.hasHostName()) {
                        this.bitField0_ |= 4;
                        this.hostName_ = iMAS2MSLoginREQ.hostName_;
                    }
                    setUnknownFields(getUnknownFields().concat(iMAS2MSLoginREQ.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasServerType() && hasServerSid() && hasHostName()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMAS2MSLoginREQ iMAS2MSLoginREQ;
                IMAS2MSLoginREQ iMAS2MSLoginREQ2;
                try {
                    IMAS2MSLoginREQ iMAS2MSLoginREQ3 = (IMAS2MSLoginREQ) IMAS2MSLoginREQ.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMAS2MSLoginREQ3 != null) {
                        mergeFrom(iMAS2MSLoginREQ3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMAS2MSLoginREQ2 = (IMAS2MSLoginREQ) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMAS2MSLoginREQ = iMAS2MSLoginREQ2;
                    th = th2;
                }
                if (iMAS2MSLoginREQ != null) {
                    mergeFrom(iMAS2MSLoginREQ);
                }
                throw th;
            }

            public boolean hasServerType() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getServerType() {
                return this.serverType_;
            }

            public Builder setServerType(int i) {
                this.bitField0_ |= 1;
                this.serverType_ = i;
                return this;
            }

            public Builder clearServerType() {
                this.bitField0_ &= -2;
                this.serverType_ = 0;
                return this;
            }

            public boolean hasServerSid() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getServerSid() {
                return this.serverSid_;
            }

            public Builder setServerSid(int i) {
                this.bitField0_ |= 2;
                this.serverSid_ = i;
                return this;
            }

            public Builder clearServerSid() {
                this.bitField0_ &= -3;
                this.serverSid_ = 0;
                return this;
            }

            public boolean hasHostName() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getHostName() {
                Object obj = this.hostName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.hostName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getHostNameBytes() {
                Object obj = this.hostName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.hostName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setHostName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.hostName_ = str;
                return this;
            }

            public Builder clearHostName() {
                this.bitField0_ &= -5;
                this.hostName_ = IMAS2MSLoginREQ.getDefaultInstance().getHostName();
                return this;
            }

            public Builder setHostNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.hostName_ = byteString;
                return this;
            }
        }

        private IMAS2MSLoginREQ(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMAS2MSLoginREQ(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMAS2MSLoginREQ getDefaultInstance() {
            return defaultInstance;
        }

        public IMAS2MSLoginREQ getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMAS2MSLoginREQ(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.serverType_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.serverSid_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.hostName_ = readBytes;
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

        public Parser<IMAS2MSLoginREQ> getParserForType() {
            return PARSER;
        }

        public boolean hasServerType() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getServerType() {
            return this.serverType_;
        }

        public boolean hasServerSid() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getServerSid() {
            return this.serverSid_;
        }

        public boolean hasHostName() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getHostName() {
            Object obj = this.hostName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.hostName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getHostNameBytes() {
            Object obj = this.hostName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.hostName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.serverType_ = 0;
            this.serverSid_ = 0;
            this.hostName_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasServerType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasServerSid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasHostName()) {
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
                codedOutputStream.writeUInt32(1, this.serverType_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.serverSid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getHostNameBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.serverType_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.serverSid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getHostNameBytes());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMAS2MSLoginREQ parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMAS2MSLoginREQ) PARSER.parseFrom(byteString);
        }

        public static IMAS2MSLoginREQ parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMAS2MSLoginREQ) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMAS2MSLoginREQ parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMAS2MSLoginREQ) PARSER.parseFrom(bArr);
        }

        public static IMAS2MSLoginREQ parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMAS2MSLoginREQ) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMAS2MSLoginREQ parseFrom(InputStream inputStream) throws IOException {
            return (IMAS2MSLoginREQ) PARSER.parseFrom(inputStream);
        }

        public static IMAS2MSLoginREQ parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAS2MSLoginREQ) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMAS2MSLoginREQ parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMAS2MSLoginREQ) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMAS2MSLoginREQ parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAS2MSLoginREQ) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMAS2MSLoginREQ parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMAS2MSLoginREQ) PARSER.parseFrom(codedInputStream);
        }

        public static IMAS2MSLoginREQ parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAS2MSLoginREQ) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMAS2MSLoginREQ iMAS2MSLoginREQ) {
            return newBuilder().mergeFrom(iMAS2MSLoginREQ);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMAS2MSLoginREQOrBuilder extends MessageLiteOrBuilder {
        String getHostName();

        ByteString getHostNameBytes();

        int getServerSid();

        int getServerType();

        boolean hasHostName();

        boolean hasServerSid();

        boolean hasServerType();
    }

    public static final class IMAS2MSLoginRSP extends GeneratedMessageLite implements IMAS2MSLoginRSPOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 3;
        public static final int APP_KEY_FIELD_NUMBER = 4;
        public static final int FYAPPID_FIELD_NUMBER = 2;
        public static Parser<IMAS2MSLoginRSP> PARSER = new AbstractParser<IMAS2MSLoginRSP>() {
            public IMAS2MSLoginRSP parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMAS2MSLoginRSP(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SERVER_SID_FIELD_NUMBER = 1;
        private static final IMAS2MSLoginRSP defaultInstance = new IMAS2MSLoginRSP(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appId_;
        /* access modifiers changed from: private */
        public Object appKey_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int fyappid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int serverSid_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMAS2MSLoginRSP, Builder> implements IMAS2MSLoginRSPOrBuilder {
            private int appId_;
            private Object appKey_ = "";
            private int bitField0_;
            private int fyappid_;
            private int serverSid_;

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
                this.serverSid_ = 0;
                this.bitField0_ &= -2;
                this.fyappid_ = 0;
                this.bitField0_ &= -3;
                this.appId_ = 0;
                this.bitField0_ &= -5;
                this.appKey_ = "";
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMAS2MSLoginRSP getDefaultInstanceForType() {
                return IMAS2MSLoginRSP.getDefaultInstance();
            }

            public IMAS2MSLoginRSP build() {
                IMAS2MSLoginRSP buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMAS2MSLoginRSP buildPartial() {
                int i = 1;
                IMAS2MSLoginRSP iMAS2MSLoginRSP = new IMAS2MSLoginRSP((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMAS2MSLoginRSP.serverSid_ = this.serverSid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMAS2MSLoginRSP.fyappid_ = this.fyappid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMAS2MSLoginRSP.appId_ = this.appId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMAS2MSLoginRSP.appKey_ = this.appKey_;
                iMAS2MSLoginRSP.bitField0_ = i;
                return iMAS2MSLoginRSP;
            }

            public Builder mergeFrom(IMAS2MSLoginRSP iMAS2MSLoginRSP) {
                if (iMAS2MSLoginRSP != IMAS2MSLoginRSP.getDefaultInstance()) {
                    if (iMAS2MSLoginRSP.hasServerSid()) {
                        setServerSid(iMAS2MSLoginRSP.getServerSid());
                    }
                    if (iMAS2MSLoginRSP.hasFyappid()) {
                        setFyappid(iMAS2MSLoginRSP.getFyappid());
                    }
                    if (iMAS2MSLoginRSP.hasAppId()) {
                        setAppId(iMAS2MSLoginRSP.getAppId());
                    }
                    if (iMAS2MSLoginRSP.hasAppKey()) {
                        this.bitField0_ |= 8;
                        this.appKey_ = iMAS2MSLoginRSP.appKey_;
                    }
                    setUnknownFields(getUnknownFields().concat(iMAS2MSLoginRSP.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasServerSid() && hasFyappid() && hasAppId() && hasAppKey()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMAS2MSLoginRSP iMAS2MSLoginRSP;
                IMAS2MSLoginRSP iMAS2MSLoginRSP2;
                try {
                    IMAS2MSLoginRSP iMAS2MSLoginRSP3 = (IMAS2MSLoginRSP) IMAS2MSLoginRSP.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMAS2MSLoginRSP3 != null) {
                        mergeFrom(iMAS2MSLoginRSP3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMAS2MSLoginRSP2 = (IMAS2MSLoginRSP) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMAS2MSLoginRSP = iMAS2MSLoginRSP2;
                    th = th2;
                }
                if (iMAS2MSLoginRSP != null) {
                    mergeFrom(iMAS2MSLoginRSP);
                }
                throw th;
            }

            public boolean hasServerSid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getServerSid() {
                return this.serverSid_;
            }

            public Builder setServerSid(int i) {
                this.bitField0_ |= 1;
                this.serverSid_ = i;
                return this;
            }

            public Builder clearServerSid() {
                this.bitField0_ &= -2;
                this.serverSid_ = 0;
                return this;
            }

            public boolean hasFyappid() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getFyappid() {
                return this.fyappid_;
            }

            public Builder setFyappid(int i) {
                this.bitField0_ |= 2;
                this.fyappid_ = i;
                return this;
            }

            public Builder clearFyappid() {
                this.bitField0_ &= -3;
                this.fyappid_ = 0;
                return this;
            }

            public boolean hasAppId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getAppId() {
                return this.appId_;
            }

            public Builder setAppId(int i) {
                this.bitField0_ |= 4;
                this.appId_ = i;
                return this;
            }

            public Builder clearAppId() {
                this.bitField0_ &= -5;
                this.appId_ = 0;
                return this;
            }

            public boolean hasAppKey() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getAppKey() {
                Object obj = this.appKey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.appKey_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getAppKeyBytes() {
                Object obj = this.appKey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appKey_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setAppKey(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.appKey_ = str;
                return this;
            }

            public Builder clearAppKey() {
                this.bitField0_ &= -9;
                this.appKey_ = IMAS2MSLoginRSP.getDefaultInstance().getAppKey();
                return this;
            }

            public Builder setAppKeyBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.appKey_ = byteString;
                return this;
            }
        }

        private IMAS2MSLoginRSP(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMAS2MSLoginRSP(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMAS2MSLoginRSP getDefaultInstance() {
            return defaultInstance;
        }

        public IMAS2MSLoginRSP getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMAS2MSLoginRSP(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.serverSid_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.fyappid_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.appId_ = codedInputStream.readUInt32();
                            break;
                        case 34:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.appKey_ = readBytes;
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

        public Parser<IMAS2MSLoginRSP> getParserForType() {
            return PARSER;
        }

        public boolean hasServerSid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getServerSid() {
            return this.serverSid_;
        }

        public boolean hasFyappid() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getFyappid() {
            return this.fyappid_;
        }

        public boolean hasAppId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getAppId() {
            return this.appId_;
        }

        public boolean hasAppKey() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getAppKey() {
            Object obj = this.appKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.appKey_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getAppKeyBytes() {
            Object obj = this.appKey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appKey_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.serverSid_ = 0;
            this.fyappid_ = 0;
            this.appId_ = 0;
            this.appKey_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasServerSid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFyappid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasAppId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasAppKey()) {
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
                codedOutputStream.writeUInt32(1, this.serverSid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.fyappid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.appId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getAppKeyBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.serverSid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.fyappid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.appId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getAppKeyBytes());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMAS2MSLoginRSP parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMAS2MSLoginRSP) PARSER.parseFrom(byteString);
        }

        public static IMAS2MSLoginRSP parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMAS2MSLoginRSP) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMAS2MSLoginRSP parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMAS2MSLoginRSP) PARSER.parseFrom(bArr);
        }

        public static IMAS2MSLoginRSP parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMAS2MSLoginRSP) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMAS2MSLoginRSP parseFrom(InputStream inputStream) throws IOException {
            return (IMAS2MSLoginRSP) PARSER.parseFrom(inputStream);
        }

        public static IMAS2MSLoginRSP parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAS2MSLoginRSP) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMAS2MSLoginRSP parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMAS2MSLoginRSP) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMAS2MSLoginRSP parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAS2MSLoginRSP) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMAS2MSLoginRSP parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMAS2MSLoginRSP) PARSER.parseFrom(codedInputStream);
        }

        public static IMAS2MSLoginRSP parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAS2MSLoginRSP) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMAS2MSLoginRSP iMAS2MSLoginRSP) {
            return newBuilder().mergeFrom(iMAS2MSLoginRSP);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMAS2MSLoginRSPOrBuilder extends MessageLiteOrBuilder {
        int getAppId();

        String getAppKey();

        ByteString getAppKeyBytes();

        int getFyappid();

        int getServerSid();

        boolean hasAppId();

        boolean hasAppKey();

        boolean hasFyappid();

        boolean hasServerSid();
    }

    public static final class IMCS2LSASOffline extends GeneratedMessageLite implements IMCS2LSASOfflineOrBuilder {
        public static final int AS_SID_FIELD_NUMBER = 1;
        public static Parser<IMCS2LSASOffline> PARSER = new AbstractParser<IMCS2LSASOffline>() {
            public IMCS2LSASOffline parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMCS2LSASOffline(codedInputStream, extensionRegistryLite);
            }
        };
        private static final IMCS2LSASOffline defaultInstance = new IMCS2LSASOffline(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int asSid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMCS2LSASOffline, Builder> implements IMCS2LSASOfflineOrBuilder {
            private int asSid_;
            private int bitField0_;

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
                this.asSid_ = 0;
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMCS2LSASOffline getDefaultInstanceForType() {
                return IMCS2LSASOffline.getDefaultInstance();
            }

            public IMCS2LSASOffline build() {
                IMCS2LSASOffline buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMCS2LSASOffline buildPartial() {
                int i = 1;
                IMCS2LSASOffline iMCS2LSASOffline = new IMCS2LSASOffline((com.google.protobuf.GeneratedMessageLite.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                iMCS2LSASOffline.asSid_ = this.asSid_;
                iMCS2LSASOffline.bitField0_ = i;
                return iMCS2LSASOffline;
            }

            public Builder mergeFrom(IMCS2LSASOffline iMCS2LSASOffline) {
                if (iMCS2LSASOffline != IMCS2LSASOffline.getDefaultInstance()) {
                    if (iMCS2LSASOffline.hasAsSid()) {
                        setAsSid(iMCS2LSASOffline.getAsSid());
                    }
                    setUnknownFields(getUnknownFields().concat(iMCS2LSASOffline.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasAsSid()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMCS2LSASOffline iMCS2LSASOffline;
                IMCS2LSASOffline iMCS2LSASOffline2;
                try {
                    IMCS2LSASOffline iMCS2LSASOffline3 = (IMCS2LSASOffline) IMCS2LSASOffline.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMCS2LSASOffline3 != null) {
                        mergeFrom(iMCS2LSASOffline3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMCS2LSASOffline2 = (IMCS2LSASOffline) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMCS2LSASOffline = iMCS2LSASOffline2;
                    th = th2;
                }
                if (iMCS2LSASOffline != null) {
                    mergeFrom(iMCS2LSASOffline);
                }
                throw th;
            }

            public boolean hasAsSid() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getAsSid() {
                return this.asSid_;
            }

            public Builder setAsSid(int i) {
                this.bitField0_ |= 1;
                this.asSid_ = i;
                return this;
            }

            public Builder clearAsSid() {
                this.bitField0_ &= -2;
                this.asSid_ = 0;
                return this;
            }
        }

        private IMCS2LSASOffline(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMCS2LSASOffline(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMCS2LSASOffline getDefaultInstance() {
            return defaultInstance;
        }

        public IMCS2LSASOffline getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMCS2LSASOffline(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.asSid_ = codedInputStream.readUInt32();
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

        public Parser<IMCS2LSASOffline> getParserForType() {
            return PARSER;
        }

        public boolean hasAsSid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAsSid() {
            return this.asSid_;
        }

        private void initFields() {
            this.asSid_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAsSid()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.asSid_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.asSid_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMCS2LSASOffline parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMCS2LSASOffline) PARSER.parseFrom(byteString);
        }

        public static IMCS2LSASOffline parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMCS2LSASOffline) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMCS2LSASOffline parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMCS2LSASOffline) PARSER.parseFrom(bArr);
        }

        public static IMCS2LSASOffline parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMCS2LSASOffline) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMCS2LSASOffline parseFrom(InputStream inputStream) throws IOException {
            return (IMCS2LSASOffline) PARSER.parseFrom(inputStream);
        }

        public static IMCS2LSASOffline parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMCS2LSASOffline) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMCS2LSASOffline parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMCS2LSASOffline) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMCS2LSASOffline parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMCS2LSASOffline) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMCS2LSASOffline parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMCS2LSASOffline) PARSER.parseFrom(codedInputStream);
        }

        public static IMCS2LSASOffline parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMCS2LSASOffline) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMCS2LSASOffline iMCS2LSASOffline) {
            return newBuilder().mergeFrom(iMCS2LSASOffline);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMCS2LSASOfflineOrBuilder extends MessageLiteOrBuilder {
        int getAsSid();

        boolean hasAsSid();
    }

    public static final class IMCS2LSUserload extends GeneratedMessageLite implements IMCS2LSUserloadOrBuilder {
        public static final int AS_USER_LOAD_FIELD_NUMBER = 1;
        public static Parser<IMCS2LSUserload> PARSER = new AbstractParser<IMCS2LSUserload>() {
            public IMCS2LSUserload parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMCS2LSUserload(codedInputStream, extensionRegistryLite);
            }
        };
        private static final IMCS2LSUserload defaultInstance = new IMCS2LSUserload(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public List<AccessSerUserLoadRatio> asUserLoad_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMCS2LSUserload, Builder> implements IMCS2LSUserloadOrBuilder {
            private List<AccessSerUserLoadRatio> asUserLoad_ = Collections.emptyList();
            private int bitField0_;

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
                this.asUserLoad_ = Collections.emptyList();
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMCS2LSUserload getDefaultInstanceForType() {
                return IMCS2LSUserload.getDefaultInstance();
            }

            public IMCS2LSUserload build() {
                IMCS2LSUserload buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMCS2LSUserload buildPartial() {
                IMCS2LSUserload iMCS2LSUserload = new IMCS2LSUserload((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i = this.bitField0_;
                if ((this.bitField0_ & 1) == 1) {
                    this.asUserLoad_ = Collections.unmodifiableList(this.asUserLoad_);
                    this.bitField0_ &= -2;
                }
                iMCS2LSUserload.asUserLoad_ = this.asUserLoad_;
                return iMCS2LSUserload;
            }

            public Builder mergeFrom(IMCS2LSUserload iMCS2LSUserload) {
                if (iMCS2LSUserload != IMCS2LSUserload.getDefaultInstance()) {
                    if (!iMCS2LSUserload.asUserLoad_.isEmpty()) {
                        if (this.asUserLoad_.isEmpty()) {
                            this.asUserLoad_ = iMCS2LSUserload.asUserLoad_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureAsUserLoadIsMutable();
                            this.asUserLoad_.addAll(iMCS2LSUserload.asUserLoad_);
                        }
                    }
                    setUnknownFields(getUnknownFields().concat(iMCS2LSUserload.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getAsUserLoadCount(); i++) {
                    if (!getAsUserLoad(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMCS2LSUserload iMCS2LSUserload;
                IMCS2LSUserload iMCS2LSUserload2;
                try {
                    IMCS2LSUserload iMCS2LSUserload3 = (IMCS2LSUserload) IMCS2LSUserload.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMCS2LSUserload3 != null) {
                        mergeFrom(iMCS2LSUserload3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMCS2LSUserload2 = (IMCS2LSUserload) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMCS2LSUserload = iMCS2LSUserload2;
                    th = th2;
                }
                if (iMCS2LSUserload != null) {
                    mergeFrom(iMCS2LSUserload);
                }
                throw th;
            }

            private void ensureAsUserLoadIsMutable() {
                if ((this.bitField0_ & 1) != 1) {
                    this.asUserLoad_ = new ArrayList(this.asUserLoad_);
                    this.bitField0_ |= 1;
                }
            }

            public List<AccessSerUserLoadRatio> getAsUserLoadList() {
                return Collections.unmodifiableList(this.asUserLoad_);
            }

            public int getAsUserLoadCount() {
                return this.asUserLoad_.size();
            }

            public AccessSerUserLoadRatio getAsUserLoad(int i) {
                return (AccessSerUserLoadRatio) this.asUserLoad_.get(i);
            }

            public Builder setAsUserLoad(int i, AccessSerUserLoadRatio accessSerUserLoadRatio) {
                if (accessSerUserLoadRatio == null) {
                    throw new NullPointerException();
                }
                ensureAsUserLoadIsMutable();
                this.asUserLoad_.set(i, accessSerUserLoadRatio);
                return this;
            }

            public Builder setAsUserLoad(int i, com.ifengyu.im.protobuf.IMBaseDefine.AccessSerUserLoadRatio.Builder builder) {
                ensureAsUserLoadIsMutable();
                this.asUserLoad_.set(i, builder.build());
                return this;
            }

            public Builder addAsUserLoad(AccessSerUserLoadRatio accessSerUserLoadRatio) {
                if (accessSerUserLoadRatio == null) {
                    throw new NullPointerException();
                }
                ensureAsUserLoadIsMutable();
                this.asUserLoad_.add(accessSerUserLoadRatio);
                return this;
            }

            public Builder addAsUserLoad(int i, AccessSerUserLoadRatio accessSerUserLoadRatio) {
                if (accessSerUserLoadRatio == null) {
                    throw new NullPointerException();
                }
                ensureAsUserLoadIsMutable();
                this.asUserLoad_.add(i, accessSerUserLoadRatio);
                return this;
            }

            public Builder addAsUserLoad(com.ifengyu.im.protobuf.IMBaseDefine.AccessSerUserLoadRatio.Builder builder) {
                ensureAsUserLoadIsMutable();
                this.asUserLoad_.add(builder.build());
                return this;
            }

            public Builder addAsUserLoad(int i, com.ifengyu.im.protobuf.IMBaseDefine.AccessSerUserLoadRatio.Builder builder) {
                ensureAsUserLoadIsMutable();
                this.asUserLoad_.add(i, builder.build());
                return this;
            }

            public Builder addAllAsUserLoad(Iterable<? extends AccessSerUserLoadRatio> iterable) {
                ensureAsUserLoadIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.asUserLoad_);
                return this;
            }

            public Builder clearAsUserLoad() {
                this.asUserLoad_ = Collections.emptyList();
                this.bitField0_ &= -2;
                return this;
            }

            public Builder removeAsUserLoad(int i) {
                ensureAsUserLoadIsMutable();
                this.asUserLoad_.remove(i);
                return this;
            }
        }

        private IMCS2LSUserload(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMCS2LSUserload(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMCS2LSUserload getDefaultInstance() {
            return defaultInstance;
        }

        public IMCS2LSUserload getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMCS2LSUserload(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 10:
                            if (!z2 || !true) {
                                this.asUserLoad_ = new ArrayList();
                                z2 |= true;
                            }
                            this.asUserLoad_.add(codedInputStream.readMessage(AccessSerUserLoadRatio.PARSER, extensionRegistryLite));
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
                    if (z2 && true) {
                        this.asUserLoad_ = Collections.unmodifiableList(this.asUserLoad_);
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
            if (z2 && true) {
                this.asUserLoad_ = Collections.unmodifiableList(this.asUserLoad_);
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

        public Parser<IMCS2LSUserload> getParserForType() {
            return PARSER;
        }

        public List<AccessSerUserLoadRatio> getAsUserLoadList() {
            return this.asUserLoad_;
        }

        public List<? extends AccessSerUserLoadRatioOrBuilder> getAsUserLoadOrBuilderList() {
            return this.asUserLoad_;
        }

        public int getAsUserLoadCount() {
            return this.asUserLoad_.size();
        }

        public AccessSerUserLoadRatio getAsUserLoad(int i) {
            return (AccessSerUserLoadRatio) this.asUserLoad_.get(i);
        }

        public AccessSerUserLoadRatioOrBuilder getAsUserLoadOrBuilder(int i) {
            return (AccessSerUserLoadRatioOrBuilder) this.asUserLoad_.get(i);
        }

        private void initFields() {
            this.asUserLoad_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getAsUserLoadCount(); i++) {
                if (!getAsUserLoad(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.asUserLoad_.size()) {
                    codedOutputStream.writeMessage(1, (MessageLite) this.asUserLoad_.get(i2));
                    i = i2 + 1;
                } else {
                    codedOutputStream.writeRawBytes(this.unknownFields);
                    return;
                }
            }
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.asUserLoad_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(1, (MessageLite) this.asUserLoad_.get(i3));
            }
            int size = this.unknownFields.size() + i2;
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMCS2LSUserload parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMCS2LSUserload) PARSER.parseFrom(byteString);
        }

        public static IMCS2LSUserload parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMCS2LSUserload) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMCS2LSUserload parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMCS2LSUserload) PARSER.parseFrom(bArr);
        }

        public static IMCS2LSUserload parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMCS2LSUserload) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMCS2LSUserload parseFrom(InputStream inputStream) throws IOException {
            return (IMCS2LSUserload) PARSER.parseFrom(inputStream);
        }

        public static IMCS2LSUserload parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMCS2LSUserload) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMCS2LSUserload parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMCS2LSUserload) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMCS2LSUserload parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMCS2LSUserload) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMCS2LSUserload parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMCS2LSUserload) PARSER.parseFrom(codedInputStream);
        }

        public static IMCS2LSUserload parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMCS2LSUserload) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMCS2LSUserload iMCS2LSUserload) {
            return newBuilder().mergeFrom(iMCS2LSUserload);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMCS2LSUserloadOrBuilder extends MessageLiteOrBuilder {
        AccessSerUserLoadRatio getAsUserLoad(int i);

        int getAsUserLoadCount();

        List<AccessSerUserLoadRatio> getAsUserLoadList();
    }

    public static final class IMDB2MSUserLeaveConference extends GeneratedMessageLite implements IMDB2MSUserLeaveConferenceOrBuilder {
        public static final int CONFERENCE_ID_FIELD_NUMBER = 3;
        public static final int GROUP_ID_FIELD_NUMBER = 2;
        public static Parser<IMDB2MSUserLeaveConference> PARSER = new AbstractParser<IMDB2MSUserLeaveConference>() {
            public IMDB2MSUserLeaveConference parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMDB2MSUserLeaveConference(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMDB2MSUserLeaveConference defaultInstance = new IMDB2MSUserLeaveConference(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object conferenceId_;
        /* access modifiers changed from: private */
        public int groupId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMDB2MSUserLeaveConference, Builder> implements IMDB2MSUserLeaveConferenceOrBuilder {
            private int bitField0_;
            private Object conferenceId_ = "";
            private int groupId_;
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
                this.conferenceId_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMDB2MSUserLeaveConference getDefaultInstanceForType() {
                return IMDB2MSUserLeaveConference.getDefaultInstance();
            }

            public IMDB2MSUserLeaveConference build() {
                IMDB2MSUserLeaveConference buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMDB2MSUserLeaveConference buildPartial() {
                int i = 1;
                IMDB2MSUserLeaveConference iMDB2MSUserLeaveConference = new IMDB2MSUserLeaveConference((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMDB2MSUserLeaveConference.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMDB2MSUserLeaveConference.groupId_ = this.groupId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMDB2MSUserLeaveConference.conferenceId_ = this.conferenceId_;
                iMDB2MSUserLeaveConference.bitField0_ = i;
                return iMDB2MSUserLeaveConference;
            }

            public Builder mergeFrom(IMDB2MSUserLeaveConference iMDB2MSUserLeaveConference) {
                if (iMDB2MSUserLeaveConference != IMDB2MSUserLeaveConference.getDefaultInstance()) {
                    if (iMDB2MSUserLeaveConference.hasUserId()) {
                        setUserId(iMDB2MSUserLeaveConference.getUserId());
                    }
                    if (iMDB2MSUserLeaveConference.hasGroupId()) {
                        setGroupId(iMDB2MSUserLeaveConference.getGroupId());
                    }
                    if (iMDB2MSUserLeaveConference.hasConferenceId()) {
                        this.bitField0_ |= 4;
                        this.conferenceId_ = iMDB2MSUserLeaveConference.conferenceId_;
                    }
                    setUnknownFields(getUnknownFields().concat(iMDB2MSUserLeaveConference.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasGroupId() && hasConferenceId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMDB2MSUserLeaveConference iMDB2MSUserLeaveConference;
                IMDB2MSUserLeaveConference iMDB2MSUserLeaveConference2;
                try {
                    IMDB2MSUserLeaveConference iMDB2MSUserLeaveConference3 = (IMDB2MSUserLeaveConference) IMDB2MSUserLeaveConference.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMDB2MSUserLeaveConference3 != null) {
                        mergeFrom(iMDB2MSUserLeaveConference3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMDB2MSUserLeaveConference2 = (IMDB2MSUserLeaveConference) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMDB2MSUserLeaveConference = iMDB2MSUserLeaveConference2;
                    th = th2;
                }
                if (iMDB2MSUserLeaveConference != null) {
                    mergeFrom(iMDB2MSUserLeaveConference);
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

            public boolean hasConferenceId() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getConferenceId() {
                Object obj = this.conferenceId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.conferenceId_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getConferenceIdBytes() {
                Object obj = this.conferenceId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.conferenceId_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setConferenceId(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.conferenceId_ = str;
                return this;
            }

            public Builder clearConferenceId() {
                this.bitField0_ &= -5;
                this.conferenceId_ = IMDB2MSUserLeaveConference.getDefaultInstance().getConferenceId();
                return this;
            }

            public Builder setConferenceIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.conferenceId_ = byteString;
                return this;
            }
        }

        private IMDB2MSUserLeaveConference(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMDB2MSUserLeaveConference(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMDB2MSUserLeaveConference getDefaultInstance() {
            return defaultInstance;
        }

        public IMDB2MSUserLeaveConference getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMDB2MSUserLeaveConference(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.conferenceId_ = readBytes;
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

        public Parser<IMDB2MSUserLeaveConference> getParserForType() {
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

        public boolean hasConferenceId() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getConferenceId() {
            Object obj = this.conferenceId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.conferenceId_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getConferenceIdBytes() {
            Object obj = this.conferenceId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.conferenceId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.userId_ = 0;
            this.groupId_ = 0;
            this.conferenceId_ = "";
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
            } else if (!hasConferenceId()) {
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
                codedOutputStream.writeBytes(3, getConferenceIdBytes());
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
                i2 += CodedOutputStream.computeBytesSize(3, getConferenceIdBytes());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMDB2MSUserLeaveConference parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMDB2MSUserLeaveConference) PARSER.parseFrom(byteString);
        }

        public static IMDB2MSUserLeaveConference parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMDB2MSUserLeaveConference) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMDB2MSUserLeaveConference parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMDB2MSUserLeaveConference) PARSER.parseFrom(bArr);
        }

        public static IMDB2MSUserLeaveConference parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMDB2MSUserLeaveConference) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMDB2MSUserLeaveConference parseFrom(InputStream inputStream) throws IOException {
            return (IMDB2MSUserLeaveConference) PARSER.parseFrom(inputStream);
        }

        public static IMDB2MSUserLeaveConference parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDB2MSUserLeaveConference) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMDB2MSUserLeaveConference parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMDB2MSUserLeaveConference) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMDB2MSUserLeaveConference parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDB2MSUserLeaveConference) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMDB2MSUserLeaveConference parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMDB2MSUserLeaveConference) PARSER.parseFrom(codedInputStream);
        }

        public static IMDB2MSUserLeaveConference parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDB2MSUserLeaveConference) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMDB2MSUserLeaveConference iMDB2MSUserLeaveConference) {
            return newBuilder().mergeFrom(iMDB2MSUserLeaveConference);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMDB2MSUserLeaveConferenceOrBuilder extends MessageLiteOrBuilder {
        String getConferenceId();

        ByteString getConferenceIdBytes();

        int getGroupId();

        int getUserId();

        boolean hasConferenceId();

        boolean hasGroupId();

        boolean hasUserId();
    }

    public static final class IMHeartBeat extends GeneratedMessageLite implements IMHeartBeatOrBuilder {
        public static Parser<IMHeartBeat> PARSER = new AbstractParser<IMHeartBeat>() {
            public IMHeartBeat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMHeartBeat(codedInputStream, extensionRegistryLite);
            }
        };
        private static final IMHeartBeat defaultInstance = new IMHeartBeat(true);
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMHeartBeat, Builder> implements IMHeartBeatOrBuilder {
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

            public IMHeartBeat getDefaultInstanceForType() {
                return IMHeartBeat.getDefaultInstance();
            }

            public IMHeartBeat build() {
                IMHeartBeat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMHeartBeat buildPartial() {
                return new IMHeartBeat((com.google.protobuf.GeneratedMessageLite.Builder) this);
            }

            public Builder mergeFrom(IMHeartBeat iMHeartBeat) {
                if (iMHeartBeat != IMHeartBeat.getDefaultInstance()) {
                    setUnknownFields(getUnknownFields().concat(iMHeartBeat.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMHeartBeat iMHeartBeat;
                IMHeartBeat iMHeartBeat2;
                try {
                    IMHeartBeat iMHeartBeat3 = (IMHeartBeat) IMHeartBeat.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMHeartBeat3 != null) {
                        mergeFrom(iMHeartBeat3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMHeartBeat2 = (IMHeartBeat) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMHeartBeat = iMHeartBeat2;
                    th = th2;
                }
                if (iMHeartBeat != null) {
                    mergeFrom(iMHeartBeat);
                }
                throw th;
            }
        }

        private IMHeartBeat(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMHeartBeat(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMHeartBeat getDefaultInstance() {
            return defaultInstance;
        }

        public IMHeartBeat getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMHeartBeat(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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

        public Parser<IMHeartBeat> getParserForType() {
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

        public static IMHeartBeat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMHeartBeat) PARSER.parseFrom(byteString);
        }

        public static IMHeartBeat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMHeartBeat) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMHeartBeat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMHeartBeat) PARSER.parseFrom(bArr);
        }

        public static IMHeartBeat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMHeartBeat) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMHeartBeat parseFrom(InputStream inputStream) throws IOException {
            return (IMHeartBeat) PARSER.parseFrom(inputStream);
        }

        public static IMHeartBeat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMHeartBeat) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMHeartBeat parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMHeartBeat) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMHeartBeat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMHeartBeat) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMHeartBeat parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMHeartBeat) PARSER.parseFrom(codedInputStream);
        }

        public static IMHeartBeat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMHeartBeat) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMHeartBeat iMHeartBeat) {
            return newBuilder().mergeFrom(iMHeartBeat);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMHeartBeatOrBuilder extends MessageLiteOrBuilder {
    }

    public static final class IMLoginCSRsp extends GeneratedMessageLite implements IMLoginCSRspOrBuilder {
        public static final int CS_ID_FIELD_NUMBER = 1;
        public static Parser<IMLoginCSRsp> PARSER = new AbstractParser<IMLoginCSRsp>() {
            public IMLoginCSRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMLoginCSRsp(codedInputStream, extensionRegistryLite);
            }
        };
        private static final IMLoginCSRsp defaultInstance = new IMLoginCSRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int csId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMLoginCSRsp, Builder> implements IMLoginCSRspOrBuilder {
            private int bitField0_;
            private int csId_;

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
                this.csId_ = 0;
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMLoginCSRsp getDefaultInstanceForType() {
                return IMLoginCSRsp.getDefaultInstance();
            }

            public IMLoginCSRsp build() {
                IMLoginCSRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMLoginCSRsp buildPartial() {
                int i = 1;
                IMLoginCSRsp iMLoginCSRsp = new IMLoginCSRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                iMLoginCSRsp.csId_ = this.csId_;
                iMLoginCSRsp.bitField0_ = i;
                return iMLoginCSRsp;
            }

            public Builder mergeFrom(IMLoginCSRsp iMLoginCSRsp) {
                if (iMLoginCSRsp != IMLoginCSRsp.getDefaultInstance()) {
                    if (iMLoginCSRsp.hasCsId()) {
                        setCsId(iMLoginCSRsp.getCsId());
                    }
                    setUnknownFields(getUnknownFields().concat(iMLoginCSRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasCsId()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMLoginCSRsp iMLoginCSRsp;
                IMLoginCSRsp iMLoginCSRsp2;
                try {
                    IMLoginCSRsp iMLoginCSRsp3 = (IMLoginCSRsp) IMLoginCSRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMLoginCSRsp3 != null) {
                        mergeFrom(iMLoginCSRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMLoginCSRsp2 = (IMLoginCSRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMLoginCSRsp = iMLoginCSRsp2;
                    th = th2;
                }
                if (iMLoginCSRsp != null) {
                    mergeFrom(iMLoginCSRsp);
                }
                throw th;
            }

            public boolean hasCsId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getCsId() {
                return this.csId_;
            }

            public Builder setCsId(int i) {
                this.bitField0_ |= 1;
                this.csId_ = i;
                return this;
            }

            public Builder clearCsId() {
                this.bitField0_ &= -2;
                this.csId_ = 0;
                return this;
            }
        }

        private IMLoginCSRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMLoginCSRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMLoginCSRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMLoginCSRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMLoginCSRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.csId_ = codedInputStream.readUInt32();
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

        public Parser<IMLoginCSRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasCsId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getCsId() {
            return this.csId_;
        }

        private void initFields() {
            this.csId_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasCsId()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.csId_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.csId_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMLoginCSRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMLoginCSRsp) PARSER.parseFrom(byteString);
        }

        public static IMLoginCSRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMLoginCSRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMLoginCSRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMLoginCSRsp) PARSER.parseFrom(bArr);
        }

        public static IMLoginCSRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMLoginCSRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMLoginCSRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMLoginCSRsp) PARSER.parseFrom(inputStream);
        }

        public static IMLoginCSRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLoginCSRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMLoginCSRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMLoginCSRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMLoginCSRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLoginCSRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMLoginCSRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMLoginCSRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMLoginCSRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMLoginCSRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMLoginCSRsp iMLoginCSRsp) {
            return newBuilder().mergeFrom(iMLoginCSRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMLoginCSRspOrBuilder extends MessageLiteOrBuilder {
        int getCsId();

        boolean hasCsId();
    }

    public static final class IMMS2DBApplyJoinGroupToDB extends GeneratedMessageLite implements IMMS2DBApplyJoinGroupToDBOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int GROUP_ID_FIELD_NUMBER = 3;
        public static Parser<IMMS2DBApplyJoinGroupToDB> PARSER = new AbstractParser<IMMS2DBApplyJoinGroupToDB>() {
            public IMMS2DBApplyJoinGroupToDB parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMMS2DBApplyJoinGroupToDB(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int REQ_USER_ID_FIELD_NUMBER = 1;
        public static final int REQ_USER_NAME_FIELD_NUMBER = 2;
        public static final int USER_HANDLE_FIELD_NUMBER = 4;
        private static final IMMS2DBApplyJoinGroupToDB defaultInstance = new IMMS2DBApplyJoinGroupToDB(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int groupId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int reqUserId_;
        /* access modifiers changed from: private */
        public Object reqUserName_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userHandle_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMMS2DBApplyJoinGroupToDB, Builder> implements IMMS2DBApplyJoinGroupToDBOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int groupId_;
            private int reqUserId_;
            private Object reqUserName_ = "";
            private int userHandle_;

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
                this.reqUserId_ = 0;
                this.bitField0_ &= -2;
                this.reqUserName_ = "";
                this.bitField0_ &= -3;
                this.groupId_ = 0;
                this.bitField0_ &= -5;
                this.userHandle_ = 0;
                this.bitField0_ &= -9;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMMS2DBApplyJoinGroupToDB getDefaultInstanceForType() {
                return IMMS2DBApplyJoinGroupToDB.getDefaultInstance();
            }

            public IMMS2DBApplyJoinGroupToDB build() {
                IMMS2DBApplyJoinGroupToDB buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMMS2DBApplyJoinGroupToDB buildPartial() {
                int i = 1;
                IMMS2DBApplyJoinGroupToDB iMMS2DBApplyJoinGroupToDB = new IMMS2DBApplyJoinGroupToDB((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMMS2DBApplyJoinGroupToDB.reqUserId_ = this.reqUserId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMMS2DBApplyJoinGroupToDB.reqUserName_ = this.reqUserName_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMMS2DBApplyJoinGroupToDB.groupId_ = this.groupId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMMS2DBApplyJoinGroupToDB.userHandle_ = this.userHandle_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMMS2DBApplyJoinGroupToDB.attachData_ = this.attachData_;
                iMMS2DBApplyJoinGroupToDB.bitField0_ = i;
                return iMMS2DBApplyJoinGroupToDB;
            }

            public Builder mergeFrom(IMMS2DBApplyJoinGroupToDB iMMS2DBApplyJoinGroupToDB) {
                if (iMMS2DBApplyJoinGroupToDB != IMMS2DBApplyJoinGroupToDB.getDefaultInstance()) {
                    if (iMMS2DBApplyJoinGroupToDB.hasReqUserId()) {
                        setReqUserId(iMMS2DBApplyJoinGroupToDB.getReqUserId());
                    }
                    if (iMMS2DBApplyJoinGroupToDB.hasReqUserName()) {
                        this.bitField0_ |= 2;
                        this.reqUserName_ = iMMS2DBApplyJoinGroupToDB.reqUserName_;
                    }
                    if (iMMS2DBApplyJoinGroupToDB.hasGroupId()) {
                        setGroupId(iMMS2DBApplyJoinGroupToDB.getGroupId());
                    }
                    if (iMMS2DBApplyJoinGroupToDB.hasUserHandle()) {
                        setUserHandle(iMMS2DBApplyJoinGroupToDB.getUserHandle());
                    }
                    if (iMMS2DBApplyJoinGroupToDB.hasAttachData()) {
                        setAttachData(iMMS2DBApplyJoinGroupToDB.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMMS2DBApplyJoinGroupToDB.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasReqUserId() && hasReqUserName() && hasGroupId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMMS2DBApplyJoinGroupToDB iMMS2DBApplyJoinGroupToDB;
                IMMS2DBApplyJoinGroupToDB iMMS2DBApplyJoinGroupToDB2;
                try {
                    IMMS2DBApplyJoinGroupToDB iMMS2DBApplyJoinGroupToDB3 = (IMMS2DBApplyJoinGroupToDB) IMMS2DBApplyJoinGroupToDB.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMMS2DBApplyJoinGroupToDB3 != null) {
                        mergeFrom(iMMS2DBApplyJoinGroupToDB3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMMS2DBApplyJoinGroupToDB2 = (IMMS2DBApplyJoinGroupToDB) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMMS2DBApplyJoinGroupToDB = iMMS2DBApplyJoinGroupToDB2;
                    th = th2;
                }
                if (iMMS2DBApplyJoinGroupToDB != null) {
                    mergeFrom(iMMS2DBApplyJoinGroupToDB);
                }
                throw th;
            }

            public boolean hasReqUserId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getReqUserId() {
                return this.reqUserId_;
            }

            public Builder setReqUserId(int i) {
                this.bitField0_ |= 1;
                this.reqUserId_ = i;
                return this;
            }

            public Builder clearReqUserId() {
                this.bitField0_ &= -2;
                this.reqUserId_ = 0;
                return this;
            }

            public boolean hasReqUserName() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getReqUserName() {
                Object obj = this.reqUserName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.reqUserName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getReqUserNameBytes() {
                Object obj = this.reqUserName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.reqUserName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setReqUserName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.reqUserName_ = str;
                return this;
            }

            public Builder clearReqUserName() {
                this.bitField0_ &= -3;
                this.reqUserName_ = IMMS2DBApplyJoinGroupToDB.getDefaultInstance().getReqUserName();
                return this;
            }

            public Builder setReqUserNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.reqUserName_ = byteString;
                return this;
            }

            public boolean hasGroupId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getGroupId() {
                return this.groupId_;
            }

            public Builder setGroupId(int i) {
                this.bitField0_ |= 4;
                this.groupId_ = i;
                return this;
            }

            public Builder clearGroupId() {
                this.bitField0_ &= -5;
                this.groupId_ = 0;
                return this;
            }

            public boolean hasUserHandle() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getUserHandle() {
                return this.userHandle_;
            }

            public Builder setUserHandle(int i) {
                this.bitField0_ |= 8;
                this.userHandle_ = i;
                return this;
            }

            public Builder clearUserHandle() {
                this.bitField0_ &= -9;
                this.userHandle_ = 0;
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 16) == 16;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -17;
                this.attachData_ = IMMS2DBApplyJoinGroupToDB.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMMS2DBApplyJoinGroupToDB(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMMS2DBApplyJoinGroupToDB(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMMS2DBApplyJoinGroupToDB getDefaultInstance() {
            return defaultInstance;
        }

        public IMMS2DBApplyJoinGroupToDB getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMMS2DBApplyJoinGroupToDB(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.reqUserId_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.reqUserName_ = readBytes;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.groupId_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.userHandle_ = codedInputStream.readUInt32();
                            break;
                        case 162:
                            this.bitField0_ |= 16;
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

        public Parser<IMMS2DBApplyJoinGroupToDB> getParserForType() {
            return PARSER;
        }

        public boolean hasReqUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getReqUserId() {
            return this.reqUserId_;
        }

        public boolean hasReqUserName() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getReqUserName() {
            Object obj = this.reqUserName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.reqUserName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getReqUserNameBytes() {
            Object obj = this.reqUserName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.reqUserName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasGroupId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getGroupId() {
            return this.groupId_;
        }

        public boolean hasUserHandle() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 16) == 16;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.reqUserId_ = 0;
            this.reqUserName_ = "";
            this.groupId_ = 0;
            this.userHandle_ = 0;
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
            if (!hasReqUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasReqUserName()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasGroupId()) {
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
                codedOutputStream.writeUInt32(1, this.reqUserId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getReqUserNameBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.groupId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.userHandle_);
            }
            if ((this.bitField0_ & 16) == 16) {
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.reqUserId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getReqUserNameBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.groupId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.userHandle_);
            }
            if ((this.bitField0_ & 16) == 16) {
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

        public static IMMS2DBApplyJoinGroupToDB parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMMS2DBApplyJoinGroupToDB) PARSER.parseFrom(byteString);
        }

        public static IMMS2DBApplyJoinGroupToDB parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMS2DBApplyJoinGroupToDB) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMMS2DBApplyJoinGroupToDB parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMMS2DBApplyJoinGroupToDB) PARSER.parseFrom(bArr);
        }

        public static IMMS2DBApplyJoinGroupToDB parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMS2DBApplyJoinGroupToDB) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMMS2DBApplyJoinGroupToDB parseFrom(InputStream inputStream) throws IOException {
            return (IMMS2DBApplyJoinGroupToDB) PARSER.parseFrom(inputStream);
        }

        public static IMMS2DBApplyJoinGroupToDB parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBApplyJoinGroupToDB) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMMS2DBApplyJoinGroupToDB parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMMS2DBApplyJoinGroupToDB) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMMS2DBApplyJoinGroupToDB parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBApplyJoinGroupToDB) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMMS2DBApplyJoinGroupToDB parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMMS2DBApplyJoinGroupToDB) PARSER.parseFrom(codedInputStream);
        }

        public static IMMS2DBApplyJoinGroupToDB parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBApplyJoinGroupToDB) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMMS2DBApplyJoinGroupToDB iMMS2DBApplyJoinGroupToDB) {
            return newBuilder().mergeFrom(iMMS2DBApplyJoinGroupToDB);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public static final class IMMS2DBApplyJoinGroupToDBAck extends GeneratedMessageLite implements IMMS2DBApplyJoinGroupToDBAckOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int CREATOR_FIELD_NUMBER = 4;
        public static final int GROUP_ID_FIELD_NUMBER = 3;
        public static final int GROUP_NAME_FIELD_NUMBER = 5;
        public static Parser<IMMS2DBApplyJoinGroupToDBAck> PARSER = new AbstractParser<IMMS2DBApplyJoinGroupToDBAck>() {
            public IMMS2DBApplyJoinGroupToDBAck parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMMS2DBApplyJoinGroupToDBAck(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int REQ_USER_ID_FIELD_NUMBER = 1;
        public static final int REQ_USER_NAME_FIELD_NUMBER = 2;
        public static final int USER_HANDLE_FIELD_NUMBER = 6;
        private static final IMMS2DBApplyJoinGroupToDBAck defaultInstance = new IMMS2DBApplyJoinGroupToDBAck(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int creator_;
        /* access modifiers changed from: private */
        public int groupId_;
        /* access modifiers changed from: private */
        public Object groupName_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int reqUserId_;
        /* access modifiers changed from: private */
        public Object reqUserName_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userHandle_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMMS2DBApplyJoinGroupToDBAck, Builder> implements IMMS2DBApplyJoinGroupToDBAckOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int creator_;
            private int groupId_;
            private Object groupName_ = "";
            private int reqUserId_;
            private Object reqUserName_ = "";
            private int userHandle_;

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
                this.reqUserId_ = 0;
                this.bitField0_ &= -2;
                this.reqUserName_ = "";
                this.bitField0_ &= -3;
                this.groupId_ = 0;
                this.bitField0_ &= -5;
                this.creator_ = 0;
                this.bitField0_ &= -9;
                this.groupName_ = "";
                this.bitField0_ &= -17;
                this.userHandle_ = 0;
                this.bitField0_ &= -33;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMMS2DBApplyJoinGroupToDBAck getDefaultInstanceForType() {
                return IMMS2DBApplyJoinGroupToDBAck.getDefaultInstance();
            }

            public IMMS2DBApplyJoinGroupToDBAck build() {
                IMMS2DBApplyJoinGroupToDBAck buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMMS2DBApplyJoinGroupToDBAck buildPartial() {
                int i = 1;
                IMMS2DBApplyJoinGroupToDBAck iMMS2DBApplyJoinGroupToDBAck = new IMMS2DBApplyJoinGroupToDBAck((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMMS2DBApplyJoinGroupToDBAck.reqUserId_ = this.reqUserId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMMS2DBApplyJoinGroupToDBAck.reqUserName_ = this.reqUserName_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMMS2DBApplyJoinGroupToDBAck.groupId_ = this.groupId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMMS2DBApplyJoinGroupToDBAck.creator_ = this.creator_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMMS2DBApplyJoinGroupToDBAck.groupName_ = this.groupName_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                iMMS2DBApplyJoinGroupToDBAck.userHandle_ = this.userHandle_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                iMMS2DBApplyJoinGroupToDBAck.attachData_ = this.attachData_;
                iMMS2DBApplyJoinGroupToDBAck.bitField0_ = i;
                return iMMS2DBApplyJoinGroupToDBAck;
            }

            public Builder mergeFrom(IMMS2DBApplyJoinGroupToDBAck iMMS2DBApplyJoinGroupToDBAck) {
                if (iMMS2DBApplyJoinGroupToDBAck != IMMS2DBApplyJoinGroupToDBAck.getDefaultInstance()) {
                    if (iMMS2DBApplyJoinGroupToDBAck.hasReqUserId()) {
                        setReqUserId(iMMS2DBApplyJoinGroupToDBAck.getReqUserId());
                    }
                    if (iMMS2DBApplyJoinGroupToDBAck.hasReqUserName()) {
                        this.bitField0_ |= 2;
                        this.reqUserName_ = iMMS2DBApplyJoinGroupToDBAck.reqUserName_;
                    }
                    if (iMMS2DBApplyJoinGroupToDBAck.hasGroupId()) {
                        setGroupId(iMMS2DBApplyJoinGroupToDBAck.getGroupId());
                    }
                    if (iMMS2DBApplyJoinGroupToDBAck.hasCreator()) {
                        setCreator(iMMS2DBApplyJoinGroupToDBAck.getCreator());
                    }
                    if (iMMS2DBApplyJoinGroupToDBAck.hasGroupName()) {
                        this.bitField0_ |= 16;
                        this.groupName_ = iMMS2DBApplyJoinGroupToDBAck.groupName_;
                    }
                    if (iMMS2DBApplyJoinGroupToDBAck.hasUserHandle()) {
                        setUserHandle(iMMS2DBApplyJoinGroupToDBAck.getUserHandle());
                    }
                    if (iMMS2DBApplyJoinGroupToDBAck.hasAttachData()) {
                        setAttachData(iMMS2DBApplyJoinGroupToDBAck.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMMS2DBApplyJoinGroupToDBAck.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasReqUserId() && hasReqUserName() && hasGroupId() && hasCreator() && hasGroupName()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMMS2DBApplyJoinGroupToDBAck iMMS2DBApplyJoinGroupToDBAck;
                IMMS2DBApplyJoinGroupToDBAck iMMS2DBApplyJoinGroupToDBAck2;
                try {
                    IMMS2DBApplyJoinGroupToDBAck iMMS2DBApplyJoinGroupToDBAck3 = (IMMS2DBApplyJoinGroupToDBAck) IMMS2DBApplyJoinGroupToDBAck.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMMS2DBApplyJoinGroupToDBAck3 != null) {
                        mergeFrom(iMMS2DBApplyJoinGroupToDBAck3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMMS2DBApplyJoinGroupToDBAck2 = (IMMS2DBApplyJoinGroupToDBAck) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMMS2DBApplyJoinGroupToDBAck = iMMS2DBApplyJoinGroupToDBAck2;
                    th = th2;
                }
                if (iMMS2DBApplyJoinGroupToDBAck != null) {
                    mergeFrom(iMMS2DBApplyJoinGroupToDBAck);
                }
                throw th;
            }

            public boolean hasReqUserId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getReqUserId() {
                return this.reqUserId_;
            }

            public Builder setReqUserId(int i) {
                this.bitField0_ |= 1;
                this.reqUserId_ = i;
                return this;
            }

            public Builder clearReqUserId() {
                this.bitField0_ &= -2;
                this.reqUserId_ = 0;
                return this;
            }

            public boolean hasReqUserName() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getReqUserName() {
                Object obj = this.reqUserName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.reqUserName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getReqUserNameBytes() {
                Object obj = this.reqUserName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.reqUserName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setReqUserName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.reqUserName_ = str;
                return this;
            }

            public Builder clearReqUserName() {
                this.bitField0_ &= -3;
                this.reqUserName_ = IMMS2DBApplyJoinGroupToDBAck.getDefaultInstance().getReqUserName();
                return this;
            }

            public Builder setReqUserNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.reqUserName_ = byteString;
                return this;
            }

            public boolean hasGroupId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getGroupId() {
                return this.groupId_;
            }

            public Builder setGroupId(int i) {
                this.bitField0_ |= 4;
                this.groupId_ = i;
                return this;
            }

            public Builder clearGroupId() {
                this.bitField0_ &= -5;
                this.groupId_ = 0;
                return this;
            }

            public boolean hasCreator() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getCreator() {
                return this.creator_;
            }

            public Builder setCreator(int i) {
                this.bitField0_ |= 8;
                this.creator_ = i;
                return this;
            }

            public Builder clearCreator() {
                this.bitField0_ &= -9;
                this.creator_ = 0;
                return this;
            }

            public boolean hasGroupName() {
                return (this.bitField0_ & 16) == 16;
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
                this.bitField0_ |= 16;
                this.groupName_ = str;
                return this;
            }

            public Builder clearGroupName() {
                this.bitField0_ &= -17;
                this.groupName_ = IMMS2DBApplyJoinGroupToDBAck.getDefaultInstance().getGroupName();
                return this;
            }

            public Builder setGroupNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.groupName_ = byteString;
                return this;
            }

            public boolean hasUserHandle() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getUserHandle() {
                return this.userHandle_;
            }

            public Builder setUserHandle(int i) {
                this.bitField0_ |= 32;
                this.userHandle_ = i;
                return this;
            }

            public Builder clearUserHandle() {
                this.bitField0_ &= -33;
                this.userHandle_ = 0;
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 64) == 64;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -65;
                this.attachData_ = IMMS2DBApplyJoinGroupToDBAck.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMMS2DBApplyJoinGroupToDBAck(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMMS2DBApplyJoinGroupToDBAck(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMMS2DBApplyJoinGroupToDBAck getDefaultInstance() {
            return defaultInstance;
        }

        public IMMS2DBApplyJoinGroupToDBAck getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMMS2DBApplyJoinGroupToDBAck(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.reqUserId_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.reqUserName_ = readBytes;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.groupId_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.creator_ = codedInputStream.readUInt32();
                            break;
                        case 42:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.groupName_ = readBytes2;
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.userHandle_ = codedInputStream.readUInt32();
                            break;
                        case 162:
                            this.bitField0_ |= 64;
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

        public Parser<IMMS2DBApplyJoinGroupToDBAck> getParserForType() {
            return PARSER;
        }

        public boolean hasReqUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getReqUserId() {
            return this.reqUserId_;
        }

        public boolean hasReqUserName() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getReqUserName() {
            Object obj = this.reqUserName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.reqUserName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getReqUserNameBytes() {
            Object obj = this.reqUserName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.reqUserName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasGroupId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getGroupId() {
            return this.groupId_;
        }

        public boolean hasCreator() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getCreator() {
            return this.creator_;
        }

        public boolean hasGroupName() {
            return (this.bitField0_ & 16) == 16;
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

        public boolean hasUserHandle() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 64) == 64;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.reqUserId_ = 0;
            this.reqUserName_ = "";
            this.groupId_ = 0;
            this.creator_ = 0;
            this.groupName_ = "";
            this.userHandle_ = 0;
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
            if (!hasReqUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasReqUserName()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasGroupId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCreator()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasGroupName()) {
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
                codedOutputStream.writeUInt32(1, this.reqUserId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getReqUserNameBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.groupId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.creator_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getGroupNameBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt32(6, this.userHandle_);
            }
            if ((this.bitField0_ & 64) == 64) {
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.reqUserId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getReqUserNameBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.groupId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.creator_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getGroupNameBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt32Size(6, this.userHandle_);
            }
            if ((this.bitField0_ & 64) == 64) {
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

        public static IMMS2DBApplyJoinGroupToDBAck parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMMS2DBApplyJoinGroupToDBAck) PARSER.parseFrom(byteString);
        }

        public static IMMS2DBApplyJoinGroupToDBAck parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMS2DBApplyJoinGroupToDBAck) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMMS2DBApplyJoinGroupToDBAck parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMMS2DBApplyJoinGroupToDBAck) PARSER.parseFrom(bArr);
        }

        public static IMMS2DBApplyJoinGroupToDBAck parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMS2DBApplyJoinGroupToDBAck) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMMS2DBApplyJoinGroupToDBAck parseFrom(InputStream inputStream) throws IOException {
            return (IMMS2DBApplyJoinGroupToDBAck) PARSER.parseFrom(inputStream);
        }

        public static IMMS2DBApplyJoinGroupToDBAck parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBApplyJoinGroupToDBAck) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMMS2DBApplyJoinGroupToDBAck parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMMS2DBApplyJoinGroupToDBAck) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMMS2DBApplyJoinGroupToDBAck parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBApplyJoinGroupToDBAck) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMMS2DBApplyJoinGroupToDBAck parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMMS2DBApplyJoinGroupToDBAck) PARSER.parseFrom(codedInputStream);
        }

        public static IMMS2DBApplyJoinGroupToDBAck parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBApplyJoinGroupToDBAck) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMMS2DBApplyJoinGroupToDBAck iMMS2DBApplyJoinGroupToDBAck) {
            return newBuilder().mergeFrom(iMMS2DBApplyJoinGroupToDBAck);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMMS2DBApplyJoinGroupToDBAckOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getCreator();

        int getGroupId();

        String getGroupName();

        ByteString getGroupNameBytes();

        int getReqUserId();

        String getReqUserName();

        ByteString getReqUserNameBytes();

        int getUserHandle();

        boolean hasAttachData();

        boolean hasCreator();

        boolean hasGroupId();

        boolean hasGroupName();

        boolean hasReqUserId();

        boolean hasReqUserName();

        boolean hasUserHandle();
    }

    public interface IMMS2DBApplyJoinGroupToDBOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getGroupId();

        int getReqUserId();

        String getReqUserName();

        ByteString getReqUserNameBytes();

        int getUserHandle();

        boolean hasAttachData();

        boolean hasGroupId();

        boolean hasReqUserId();

        boolean hasReqUserName();

        boolean hasUserHandle();
    }

    public static final class IMMS2DBChangeConferenceNotify extends GeneratedMessageLite implements IMMS2DBChangeConferenceNotifyOrBuilder {
        public static final int CONFERENCE_ID_FIELD_NUMBER = 5;
        public static final int GROUP_ID_FIELD_NUMBER = 4;
        public static final int IS_NEW_FIELD_NUMBER = 3;
        public static Parser<IMMS2DBChangeConferenceNotify> PARSER = new AbstractParser<IMMS2DBChangeConferenceNotify>() {
            public IMMS2DBChangeConferenceNotify parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMMS2DBChangeConferenceNotify(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TYPE_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMMS2DBChangeConferenceNotify defaultInstance = new IMMS2DBChangeConferenceNotify(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object conferenceId_;
        /* access modifiers changed from: private */
        public int groupId_;
        /* access modifiers changed from: private */
        public int isNew_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int type_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMMS2DBChangeConferenceNotify, Builder> implements IMMS2DBChangeConferenceNotifyOrBuilder {
            private int bitField0_;
            private Object conferenceId_ = "";
            private int groupId_;
            private int isNew_;
            private int type_;
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
                this.type_ = 0;
                this.bitField0_ &= -3;
                this.isNew_ = 0;
                this.bitField0_ &= -5;
                this.groupId_ = 0;
                this.bitField0_ &= -9;
                this.conferenceId_ = "";
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMMS2DBChangeConferenceNotify getDefaultInstanceForType() {
                return IMMS2DBChangeConferenceNotify.getDefaultInstance();
            }

            public IMMS2DBChangeConferenceNotify build() {
                IMMS2DBChangeConferenceNotify buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMMS2DBChangeConferenceNotify buildPartial() {
                int i = 1;
                IMMS2DBChangeConferenceNotify iMMS2DBChangeConferenceNotify = new IMMS2DBChangeConferenceNotify((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMMS2DBChangeConferenceNotify.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMMS2DBChangeConferenceNotify.type_ = this.type_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMMS2DBChangeConferenceNotify.isNew_ = this.isNew_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMMS2DBChangeConferenceNotify.groupId_ = this.groupId_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMMS2DBChangeConferenceNotify.conferenceId_ = this.conferenceId_;
                iMMS2DBChangeConferenceNotify.bitField0_ = i;
                return iMMS2DBChangeConferenceNotify;
            }

            public Builder mergeFrom(IMMS2DBChangeConferenceNotify iMMS2DBChangeConferenceNotify) {
                if (iMMS2DBChangeConferenceNotify != IMMS2DBChangeConferenceNotify.getDefaultInstance()) {
                    if (iMMS2DBChangeConferenceNotify.hasUserId()) {
                        setUserId(iMMS2DBChangeConferenceNotify.getUserId());
                    }
                    if (iMMS2DBChangeConferenceNotify.hasType()) {
                        setType(iMMS2DBChangeConferenceNotify.getType());
                    }
                    if (iMMS2DBChangeConferenceNotify.hasIsNew()) {
                        setIsNew(iMMS2DBChangeConferenceNotify.getIsNew());
                    }
                    if (iMMS2DBChangeConferenceNotify.hasGroupId()) {
                        setGroupId(iMMS2DBChangeConferenceNotify.getGroupId());
                    }
                    if (iMMS2DBChangeConferenceNotify.hasConferenceId()) {
                        this.bitField0_ |= 16;
                        this.conferenceId_ = iMMS2DBChangeConferenceNotify.conferenceId_;
                    }
                    setUnknownFields(getUnknownFields().concat(iMMS2DBChangeConferenceNotify.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasType() && hasIsNew() && hasGroupId() && hasConferenceId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMMS2DBChangeConferenceNotify iMMS2DBChangeConferenceNotify;
                IMMS2DBChangeConferenceNotify iMMS2DBChangeConferenceNotify2;
                try {
                    IMMS2DBChangeConferenceNotify iMMS2DBChangeConferenceNotify3 = (IMMS2DBChangeConferenceNotify) IMMS2DBChangeConferenceNotify.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMMS2DBChangeConferenceNotify3 != null) {
                        mergeFrom(iMMS2DBChangeConferenceNotify3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMMS2DBChangeConferenceNotify2 = (IMMS2DBChangeConferenceNotify) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMMS2DBChangeConferenceNotify = iMMS2DBChangeConferenceNotify2;
                    th = th2;
                }
                if (iMMS2DBChangeConferenceNotify != null) {
                    mergeFrom(iMMS2DBChangeConferenceNotify);
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

            public boolean hasType() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getType() {
                return this.type_;
            }

            public Builder setType(int i) {
                this.bitField0_ |= 2;
                this.type_ = i;
                return this;
            }

            public Builder clearType() {
                this.bitField0_ &= -3;
                this.type_ = 0;
                return this;
            }

            public boolean hasIsNew() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getIsNew() {
                return this.isNew_;
            }

            public Builder setIsNew(int i) {
                this.bitField0_ |= 4;
                this.isNew_ = i;
                return this;
            }

            public Builder clearIsNew() {
                this.bitField0_ &= -5;
                this.isNew_ = 0;
                return this;
            }

            public boolean hasGroupId() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getGroupId() {
                return this.groupId_;
            }

            public Builder setGroupId(int i) {
                this.bitField0_ |= 8;
                this.groupId_ = i;
                return this;
            }

            public Builder clearGroupId() {
                this.bitField0_ &= -9;
                this.groupId_ = 0;
                return this;
            }

            public boolean hasConferenceId() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getConferenceId() {
                Object obj = this.conferenceId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.conferenceId_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getConferenceIdBytes() {
                Object obj = this.conferenceId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.conferenceId_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setConferenceId(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.conferenceId_ = str;
                return this;
            }

            public Builder clearConferenceId() {
                this.bitField0_ &= -17;
                this.conferenceId_ = IMMS2DBChangeConferenceNotify.getDefaultInstance().getConferenceId();
                return this;
            }

            public Builder setConferenceIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.conferenceId_ = byteString;
                return this;
            }
        }

        private IMMS2DBChangeConferenceNotify(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMMS2DBChangeConferenceNotify(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMMS2DBChangeConferenceNotify getDefaultInstance() {
            return defaultInstance;
        }

        public IMMS2DBChangeConferenceNotify getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMMS2DBChangeConferenceNotify(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.type_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.isNew_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.groupId_ = codedInputStream.readUInt32();
                            break;
                        case 42:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.conferenceId_ = readBytes;
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

        public Parser<IMMS2DBChangeConferenceNotify> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasType() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getType() {
            return this.type_;
        }

        public boolean hasIsNew() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getIsNew() {
            return this.isNew_;
        }

        public boolean hasGroupId() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getGroupId() {
            return this.groupId_;
        }

        public boolean hasConferenceId() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getConferenceId() {
            Object obj = this.conferenceId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.conferenceId_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getConferenceIdBytes() {
            Object obj = this.conferenceId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.conferenceId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.userId_ = 0;
            this.type_ = 0;
            this.isNew_ = 0;
            this.groupId_ = 0;
            this.conferenceId_ = "";
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
            } else if (!hasType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasIsNew()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasGroupId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasConferenceId()) {
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
                codedOutputStream.writeUInt32(2, this.type_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.isNew_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.groupId_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getConferenceIdBytes());
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
                i2 += CodedOutputStream.computeUInt32Size(2, this.type_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.isNew_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.groupId_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getConferenceIdBytes());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMMS2DBChangeConferenceNotify parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMMS2DBChangeConferenceNotify) PARSER.parseFrom(byteString);
        }

        public static IMMS2DBChangeConferenceNotify parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMS2DBChangeConferenceNotify) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMMS2DBChangeConferenceNotify parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMMS2DBChangeConferenceNotify) PARSER.parseFrom(bArr);
        }

        public static IMMS2DBChangeConferenceNotify parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMS2DBChangeConferenceNotify) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMMS2DBChangeConferenceNotify parseFrom(InputStream inputStream) throws IOException {
            return (IMMS2DBChangeConferenceNotify) PARSER.parseFrom(inputStream);
        }

        public static IMMS2DBChangeConferenceNotify parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBChangeConferenceNotify) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMMS2DBChangeConferenceNotify parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMMS2DBChangeConferenceNotify) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMMS2DBChangeConferenceNotify parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBChangeConferenceNotify) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMMS2DBChangeConferenceNotify parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMMS2DBChangeConferenceNotify) PARSER.parseFrom(codedInputStream);
        }

        public static IMMS2DBChangeConferenceNotify parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBChangeConferenceNotify) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMMS2DBChangeConferenceNotify iMMS2DBChangeConferenceNotify) {
            return newBuilder().mergeFrom(iMMS2DBChangeConferenceNotify);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMMS2DBChangeConferenceNotifyOrBuilder extends MessageLiteOrBuilder {
        String getConferenceId();

        ByteString getConferenceIdBytes();

        int getGroupId();

        int getIsNew();

        int getType();

        int getUserId();

        boolean hasConferenceId();

        boolean hasGroupId();

        boolean hasIsNew();

        boolean hasType();

        boolean hasUserId();
    }

    public static final class IMMS2DBCheckConfigRequest extends GeneratedMessageLite implements IMMS2DBCheckConfigRequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 3;
        public static final int FYAPPID_FIELD_NUMBER = 2;
        public static final int MS_ID_FIELD_NUMBER = 1;
        public static Parser<IMMS2DBCheckConfigRequest> PARSER = new AbstractParser<IMMS2DBCheckConfigRequest>() {
            public IMMS2DBCheckConfigRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMMS2DBCheckConfigRequest(codedInputStream, extensionRegistryLite);
            }
        };
        private static final IMMS2DBCheckConfigRequest defaultInstance = new IMMS2DBCheckConfigRequest(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int fyappid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int msId_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMMS2DBCheckConfigRequest, Builder> implements IMMS2DBCheckConfigRequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private int fyappid_;
            private int msId_;

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
                this.msId_ = 0;
                this.bitField0_ &= -2;
                this.fyappid_ = 0;
                this.bitField0_ &= -3;
                this.appid_ = 0;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMMS2DBCheckConfigRequest getDefaultInstanceForType() {
                return IMMS2DBCheckConfigRequest.getDefaultInstance();
            }

            public IMMS2DBCheckConfigRequest build() {
                IMMS2DBCheckConfigRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMMS2DBCheckConfigRequest buildPartial() {
                int i = 1;
                IMMS2DBCheckConfigRequest iMMS2DBCheckConfigRequest = new IMMS2DBCheckConfigRequest((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMMS2DBCheckConfigRequest.msId_ = this.msId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMMS2DBCheckConfigRequest.fyappid_ = this.fyappid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMMS2DBCheckConfigRequest.appid_ = this.appid_;
                iMMS2DBCheckConfigRequest.bitField0_ = i;
                return iMMS2DBCheckConfigRequest;
            }

            public Builder mergeFrom(IMMS2DBCheckConfigRequest iMMS2DBCheckConfigRequest) {
                if (iMMS2DBCheckConfigRequest != IMMS2DBCheckConfigRequest.getDefaultInstance()) {
                    if (iMMS2DBCheckConfigRequest.hasMsId()) {
                        setMsId(iMMS2DBCheckConfigRequest.getMsId());
                    }
                    if (iMMS2DBCheckConfigRequest.hasFyappid()) {
                        setFyappid(iMMS2DBCheckConfigRequest.getFyappid());
                    }
                    if (iMMS2DBCheckConfigRequest.hasAppid()) {
                        setAppid(iMMS2DBCheckConfigRequest.getAppid());
                    }
                    setUnknownFields(getUnknownFields().concat(iMMS2DBCheckConfigRequest.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasMsId() && hasFyappid() && hasAppid()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMMS2DBCheckConfigRequest iMMS2DBCheckConfigRequest;
                IMMS2DBCheckConfigRequest iMMS2DBCheckConfigRequest2;
                try {
                    IMMS2DBCheckConfigRequest iMMS2DBCheckConfigRequest3 = (IMMS2DBCheckConfigRequest) IMMS2DBCheckConfigRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMMS2DBCheckConfigRequest3 != null) {
                        mergeFrom(iMMS2DBCheckConfigRequest3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMMS2DBCheckConfigRequest2 = (IMMS2DBCheckConfigRequest) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMMS2DBCheckConfigRequest = iMMS2DBCheckConfigRequest2;
                    th = th2;
                }
                if (iMMS2DBCheckConfigRequest != null) {
                    mergeFrom(iMMS2DBCheckConfigRequest);
                }
                throw th;
            }

            public boolean hasMsId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getMsId() {
                return this.msId_;
            }

            public Builder setMsId(int i) {
                this.bitField0_ |= 1;
                this.msId_ = i;
                return this;
            }

            public Builder clearMsId() {
                this.bitField0_ &= -2;
                this.msId_ = 0;
                return this;
            }

            public boolean hasFyappid() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getFyappid() {
                return this.fyappid_;
            }

            public Builder setFyappid(int i) {
                this.bitField0_ |= 2;
                this.fyappid_ = i;
                return this;
            }

            public Builder clearFyappid() {
                this.bitField0_ &= -3;
                this.fyappid_ = 0;
                return this;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 4;
                this.appid_ = i;
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -5;
                this.appid_ = 0;
                return this;
            }
        }

        private IMMS2DBCheckConfigRequest(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMMS2DBCheckConfigRequest(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMMS2DBCheckConfigRequest getDefaultInstance() {
            return defaultInstance;
        }

        public IMMS2DBCheckConfigRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMMS2DBCheckConfigRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.msId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.fyappid_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.appid_ = codedInputStream.readUInt32();
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

        public Parser<IMMS2DBCheckConfigRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasMsId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getMsId() {
            return this.msId_;
        }

        public boolean hasFyappid() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getFyappid() {
            return this.fyappid_;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getAppid() {
            return this.appid_;
        }

        private void initFields() {
            this.msId_ = 0;
            this.fyappid_ = 0;
            this.appid_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasMsId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFyappid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasAppid()) {
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
                codedOutputStream.writeUInt32(1, this.msId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.fyappid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.appid_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.msId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.fyappid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.appid_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMMS2DBCheckConfigRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMMS2DBCheckConfigRequest) PARSER.parseFrom(byteString);
        }

        public static IMMS2DBCheckConfigRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMS2DBCheckConfigRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMMS2DBCheckConfigRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMMS2DBCheckConfigRequest) PARSER.parseFrom(bArr);
        }

        public static IMMS2DBCheckConfigRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMS2DBCheckConfigRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMMS2DBCheckConfigRequest parseFrom(InputStream inputStream) throws IOException {
            return (IMMS2DBCheckConfigRequest) PARSER.parseFrom(inputStream);
        }

        public static IMMS2DBCheckConfigRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBCheckConfigRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMMS2DBCheckConfigRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMMS2DBCheckConfigRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMMS2DBCheckConfigRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBCheckConfigRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMMS2DBCheckConfigRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMMS2DBCheckConfigRequest) PARSER.parseFrom(codedInputStream);
        }

        public static IMMS2DBCheckConfigRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBCheckConfigRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMMS2DBCheckConfigRequest iMMS2DBCheckConfigRequest) {
            return newBuilder().mergeFrom(iMMS2DBCheckConfigRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMMS2DBCheckConfigRequestOrBuilder extends MessageLiteOrBuilder {
        int getAppid();

        int getFyappid();

        int getMsId();

        boolean hasAppid();

        boolean hasFyappid();

        boolean hasMsId();
    }

    public static final class IMMS2DBCheckConfigResponse extends GeneratedMessageLite implements IMMS2DBCheckConfigResponseOrBuilder {
        public static final int APPID_FIELD_NUMBER = 3;
        public static final int DB_APPID_FIELD_NUMBER = 7;
        public static final int DB_FYAPPID_FIELD_NUMBER = 6;
        public static final int DB_PORT_FIELD_NUMBER = 5;
        public static final int FYAPPID_FIELD_NUMBER = 2;
        public static final int MS_ID_FIELD_NUMBER = 1;
        public static Parser<IMMS2DBCheckConfigResponse> PARSER = new AbstractParser<IMMS2DBCheckConfigResponse>() {
            public IMMS2DBCheckConfigResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMMS2DBCheckConfigResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RESULT_CODE_FIELD_NUMBER = 4;
        private static final IMMS2DBCheckConfigResponse defaultInstance = new IMMS2DBCheckConfigResponse(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int dbAppid_;
        /* access modifiers changed from: private */
        public int dbFyappid_;
        /* access modifiers changed from: private */
        public int dbPort_;
        /* access modifiers changed from: private */
        public int fyappid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int msId_;
        /* access modifiers changed from: private */
        public int resultCode_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMMS2DBCheckConfigResponse, Builder> implements IMMS2DBCheckConfigResponseOrBuilder {
            private int appid_;
            private int bitField0_;
            private int dbAppid_;
            private int dbFyappid_;
            private int dbPort_;
            private int fyappid_;
            private int msId_;
            private int resultCode_;

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
                this.msId_ = 0;
                this.bitField0_ &= -2;
                this.fyappid_ = 0;
                this.bitField0_ &= -3;
                this.appid_ = 0;
                this.bitField0_ &= -5;
                this.resultCode_ = 0;
                this.bitField0_ &= -9;
                this.dbPort_ = 0;
                this.bitField0_ &= -17;
                this.dbFyappid_ = 0;
                this.bitField0_ &= -33;
                this.dbAppid_ = 0;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMMS2DBCheckConfigResponse getDefaultInstanceForType() {
                return IMMS2DBCheckConfigResponse.getDefaultInstance();
            }

            public IMMS2DBCheckConfigResponse build() {
                IMMS2DBCheckConfigResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMMS2DBCheckConfigResponse buildPartial() {
                int i = 1;
                IMMS2DBCheckConfigResponse iMMS2DBCheckConfigResponse = new IMMS2DBCheckConfigResponse((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMMS2DBCheckConfigResponse.msId_ = this.msId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMMS2DBCheckConfigResponse.fyappid_ = this.fyappid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMMS2DBCheckConfigResponse.appid_ = this.appid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMMS2DBCheckConfigResponse.resultCode_ = this.resultCode_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMMS2DBCheckConfigResponse.dbPort_ = this.dbPort_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                iMMS2DBCheckConfigResponse.dbFyappid_ = this.dbFyappid_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                iMMS2DBCheckConfigResponse.dbAppid_ = this.dbAppid_;
                iMMS2DBCheckConfigResponse.bitField0_ = i;
                return iMMS2DBCheckConfigResponse;
            }

            public Builder mergeFrom(IMMS2DBCheckConfigResponse iMMS2DBCheckConfigResponse) {
                if (iMMS2DBCheckConfigResponse != IMMS2DBCheckConfigResponse.getDefaultInstance()) {
                    if (iMMS2DBCheckConfigResponse.hasMsId()) {
                        setMsId(iMMS2DBCheckConfigResponse.getMsId());
                    }
                    if (iMMS2DBCheckConfigResponse.hasFyappid()) {
                        setFyappid(iMMS2DBCheckConfigResponse.getFyappid());
                    }
                    if (iMMS2DBCheckConfigResponse.hasAppid()) {
                        setAppid(iMMS2DBCheckConfigResponse.getAppid());
                    }
                    if (iMMS2DBCheckConfigResponse.hasResultCode()) {
                        setResultCode(iMMS2DBCheckConfigResponse.getResultCode());
                    }
                    if (iMMS2DBCheckConfigResponse.hasDbPort()) {
                        setDbPort(iMMS2DBCheckConfigResponse.getDbPort());
                    }
                    if (iMMS2DBCheckConfigResponse.hasDbFyappid()) {
                        setDbFyappid(iMMS2DBCheckConfigResponse.getDbFyappid());
                    }
                    if (iMMS2DBCheckConfigResponse.hasDbAppid()) {
                        setDbAppid(iMMS2DBCheckConfigResponse.getDbAppid());
                    }
                    setUnknownFields(getUnknownFields().concat(iMMS2DBCheckConfigResponse.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasMsId() && hasFyappid() && hasAppid() && hasResultCode()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMMS2DBCheckConfigResponse iMMS2DBCheckConfigResponse;
                IMMS2DBCheckConfigResponse iMMS2DBCheckConfigResponse2;
                try {
                    IMMS2DBCheckConfigResponse iMMS2DBCheckConfigResponse3 = (IMMS2DBCheckConfigResponse) IMMS2DBCheckConfigResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMMS2DBCheckConfigResponse3 != null) {
                        mergeFrom(iMMS2DBCheckConfigResponse3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMMS2DBCheckConfigResponse2 = (IMMS2DBCheckConfigResponse) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMMS2DBCheckConfigResponse = iMMS2DBCheckConfigResponse2;
                    th = th2;
                }
                if (iMMS2DBCheckConfigResponse != null) {
                    mergeFrom(iMMS2DBCheckConfigResponse);
                }
                throw th;
            }

            public boolean hasMsId() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getMsId() {
                return this.msId_;
            }

            public Builder setMsId(int i) {
                this.bitField0_ |= 1;
                this.msId_ = i;
                return this;
            }

            public Builder clearMsId() {
                this.bitField0_ &= -2;
                this.msId_ = 0;
                return this;
            }

            public boolean hasFyappid() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getFyappid() {
                return this.fyappid_;
            }

            public Builder setFyappid(int i) {
                this.bitField0_ |= 2;
                this.fyappid_ = i;
                return this;
            }

            public Builder clearFyappid() {
                this.bitField0_ &= -3;
                this.fyappid_ = 0;
                return this;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 4;
                this.appid_ = i;
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -5;
                this.appid_ = 0;
                return this;
            }

            public boolean hasResultCode() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getResultCode() {
                return this.resultCode_;
            }

            public Builder setResultCode(int i) {
                this.bitField0_ |= 8;
                this.resultCode_ = i;
                return this;
            }

            public Builder clearResultCode() {
                this.bitField0_ &= -9;
                this.resultCode_ = 0;
                return this;
            }

            public boolean hasDbPort() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getDbPort() {
                return this.dbPort_;
            }

            public Builder setDbPort(int i) {
                this.bitField0_ |= 16;
                this.dbPort_ = i;
                return this;
            }

            public Builder clearDbPort() {
                this.bitField0_ &= -17;
                this.dbPort_ = 0;
                return this;
            }

            public boolean hasDbFyappid() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getDbFyappid() {
                return this.dbFyappid_;
            }

            public Builder setDbFyappid(int i) {
                this.bitField0_ |= 32;
                this.dbFyappid_ = i;
                return this;
            }

            public Builder clearDbFyappid() {
                this.bitField0_ &= -33;
                this.dbFyappid_ = 0;
                return this;
            }

            public boolean hasDbAppid() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getDbAppid() {
                return this.dbAppid_;
            }

            public Builder setDbAppid(int i) {
                this.bitField0_ |= 64;
                this.dbAppid_ = i;
                return this;
            }

            public Builder clearDbAppid() {
                this.bitField0_ &= -65;
                this.dbAppid_ = 0;
                return this;
            }
        }

        private IMMS2DBCheckConfigResponse(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMMS2DBCheckConfigResponse(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMMS2DBCheckConfigResponse getDefaultInstance() {
            return defaultInstance;
        }

        public IMMS2DBCheckConfigResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMMS2DBCheckConfigResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.msId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.fyappid_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.resultCode_ = codedInputStream.readUInt32();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.dbPort_ = codedInputStream.readUInt32();
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.dbFyappid_ = codedInputStream.readUInt32();
                            break;
                        case 56:
                            this.bitField0_ |= 64;
                            this.dbAppid_ = codedInputStream.readUInt32();
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

        public Parser<IMMS2DBCheckConfigResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasMsId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getMsId() {
            return this.msId_;
        }

        public boolean hasFyappid() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getFyappid() {
            return this.fyappid_;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasResultCode() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getResultCode() {
            return this.resultCode_;
        }

        public boolean hasDbPort() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getDbPort() {
            return this.dbPort_;
        }

        public boolean hasDbFyappid() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getDbFyappid() {
            return this.dbFyappid_;
        }

        public boolean hasDbAppid() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getDbAppid() {
            return this.dbAppid_;
        }

        private void initFields() {
            this.msId_ = 0;
            this.fyappid_ = 0;
            this.appid_ = 0;
            this.resultCode_ = 0;
            this.dbPort_ = 0;
            this.dbFyappid_ = 0;
            this.dbAppid_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasMsId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFyappid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasAppid()) {
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
                codedOutputStream.writeUInt32(1, this.msId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.fyappid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.appid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.resultCode_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt32(5, this.dbPort_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt32(6, this.dbFyappid_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt32(7, this.dbAppid_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.msId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.fyappid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.appid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.resultCode_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt32Size(5, this.dbPort_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt32Size(6, this.dbFyappid_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeUInt32Size(7, this.dbAppid_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMMS2DBCheckConfigResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMMS2DBCheckConfigResponse) PARSER.parseFrom(byteString);
        }

        public static IMMS2DBCheckConfigResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMS2DBCheckConfigResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMMS2DBCheckConfigResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMMS2DBCheckConfigResponse) PARSER.parseFrom(bArr);
        }

        public static IMMS2DBCheckConfigResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMS2DBCheckConfigResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMMS2DBCheckConfigResponse parseFrom(InputStream inputStream) throws IOException {
            return (IMMS2DBCheckConfigResponse) PARSER.parseFrom(inputStream);
        }

        public static IMMS2DBCheckConfigResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBCheckConfigResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMMS2DBCheckConfigResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMMS2DBCheckConfigResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMMS2DBCheckConfigResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBCheckConfigResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMMS2DBCheckConfigResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMMS2DBCheckConfigResponse) PARSER.parseFrom(codedInputStream);
        }

        public static IMMS2DBCheckConfigResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBCheckConfigResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMMS2DBCheckConfigResponse iMMS2DBCheckConfigResponse) {
            return newBuilder().mergeFrom(iMMS2DBCheckConfigResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMMS2DBCheckConfigResponseOrBuilder extends MessageLiteOrBuilder {
        int getAppid();

        int getDbAppid();

        int getDbFyappid();

        int getDbPort();

        int getFyappid();

        int getMsId();

        int getResultCode();

        boolean hasAppid();

        boolean hasDbAppid();

        boolean hasDbFyappid();

        boolean hasDbPort();

        boolean hasFyappid();

        boolean hasMsId();

        boolean hasResultCode();
    }

    public static final class IMMS2DBUserLeaveAllConference extends GeneratedMessageLite implements IMMS2DBUserLeaveAllConferenceOrBuilder {
        public static Parser<IMMS2DBUserLeaveAllConference> PARSER = new AbstractParser<IMMS2DBUserLeaveAllConference>() {
            public IMMS2DBUserLeaveAllConference parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMMS2DBUserLeaveAllConference(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMMS2DBUserLeaveAllConference defaultInstance = new IMMS2DBUserLeaveAllConference(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMMS2DBUserLeaveAllConference, Builder> implements IMMS2DBUserLeaveAllConferenceOrBuilder {
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

            public IMMS2DBUserLeaveAllConference getDefaultInstanceForType() {
                return IMMS2DBUserLeaveAllConference.getDefaultInstance();
            }

            public IMMS2DBUserLeaveAllConference build() {
                IMMS2DBUserLeaveAllConference buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMMS2DBUserLeaveAllConference buildPartial() {
                int i = 1;
                IMMS2DBUserLeaveAllConference iMMS2DBUserLeaveAllConference = new IMMS2DBUserLeaveAllConference((com.google.protobuf.GeneratedMessageLite.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                iMMS2DBUserLeaveAllConference.userId_ = this.userId_;
                iMMS2DBUserLeaveAllConference.bitField0_ = i;
                return iMMS2DBUserLeaveAllConference;
            }

            public Builder mergeFrom(IMMS2DBUserLeaveAllConference iMMS2DBUserLeaveAllConference) {
                if (iMMS2DBUserLeaveAllConference != IMMS2DBUserLeaveAllConference.getDefaultInstance()) {
                    if (iMMS2DBUserLeaveAllConference.hasUserId()) {
                        setUserId(iMMS2DBUserLeaveAllConference.getUserId());
                    }
                    setUnknownFields(getUnknownFields().concat(iMMS2DBUserLeaveAllConference.unknownFields));
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
                IMMS2DBUserLeaveAllConference iMMS2DBUserLeaveAllConference;
                IMMS2DBUserLeaveAllConference iMMS2DBUserLeaveAllConference2;
                try {
                    IMMS2DBUserLeaveAllConference iMMS2DBUserLeaveAllConference3 = (IMMS2DBUserLeaveAllConference) IMMS2DBUserLeaveAllConference.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMMS2DBUserLeaveAllConference3 != null) {
                        mergeFrom(iMMS2DBUserLeaveAllConference3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMMS2DBUserLeaveAllConference2 = (IMMS2DBUserLeaveAllConference) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMMS2DBUserLeaveAllConference = iMMS2DBUserLeaveAllConference2;
                    th = th2;
                }
                if (iMMS2DBUserLeaveAllConference != null) {
                    mergeFrom(iMMS2DBUserLeaveAllConference);
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

        private IMMS2DBUserLeaveAllConference(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMMS2DBUserLeaveAllConference(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMMS2DBUserLeaveAllConference getDefaultInstance() {
            return defaultInstance;
        }

        public IMMS2DBUserLeaveAllConference getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMMS2DBUserLeaveAllConference(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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

        public Parser<IMMS2DBUserLeaveAllConference> getParserForType() {
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

        public static IMMS2DBUserLeaveAllConference parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMMS2DBUserLeaveAllConference) PARSER.parseFrom(byteString);
        }

        public static IMMS2DBUserLeaveAllConference parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMS2DBUserLeaveAllConference) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMMS2DBUserLeaveAllConference parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMMS2DBUserLeaveAllConference) PARSER.parseFrom(bArr);
        }

        public static IMMS2DBUserLeaveAllConference parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMS2DBUserLeaveAllConference) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMMS2DBUserLeaveAllConference parseFrom(InputStream inputStream) throws IOException {
            return (IMMS2DBUserLeaveAllConference) PARSER.parseFrom(inputStream);
        }

        public static IMMS2DBUserLeaveAllConference parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBUserLeaveAllConference) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMMS2DBUserLeaveAllConference parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMMS2DBUserLeaveAllConference) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMMS2DBUserLeaveAllConference parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBUserLeaveAllConference) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMMS2DBUserLeaveAllConference parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMMS2DBUserLeaveAllConference) PARSER.parseFrom(codedInputStream);
        }

        public static IMMS2DBUserLeaveAllConference parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMS2DBUserLeaveAllConference) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMMS2DBUserLeaveAllConference iMMS2DBUserLeaveAllConference) {
            return newBuilder().mergeFrom(iMMS2DBUserLeaveAllConference);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMMS2DBUserLeaveAllConferenceOrBuilder extends MessageLiteOrBuilder {
        int getUserId();

        boolean hasUserId();
    }

    public static final class IMOtherServInfo extends GeneratedMessageLite implements IMOtherServInfoOrBuilder {
        public static final int CUR_CONN_CNT_FIELD_NUMBER = 7;
        public static final int HOST_NAME_FIELD_NUMBER = 8;
        public static final int IP1_FIELD_NUMBER = 1;
        public static final int IP2_FIELD_NUMBER = 2;
        public static final int MAX_CONN_CNT_FIELD_NUMBER = 6;
        public static Parser<IMOtherServInfo> PARSER = new AbstractParser<IMOtherServInfo>() {
            public IMOtherServInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMOtherServInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PORT_FIELD_NUMBER = 3;
        public static final int SERVER_SID_FIELD_NUMBER = 5;
        public static final int SERVER_TYPE_FIELD_NUMBER = 4;
        private static final IMOtherServInfo defaultInstance = new IMOtherServInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int curConnCnt_;
        /* access modifiers changed from: private */
        public Object hostName_;
        /* access modifiers changed from: private */
        public Object ip1_;
        /* access modifiers changed from: private */
        public Object ip2_;
        /* access modifiers changed from: private */
        public int maxConnCnt_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int port_;
        /* access modifiers changed from: private */
        public int serverSid_;
        /* access modifiers changed from: private */
        public int serverType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMOtherServInfo, Builder> implements IMOtherServInfoOrBuilder {
            private int bitField0_;
            private int curConnCnt_;
            private Object hostName_ = "";
            private Object ip1_ = "";
            private Object ip2_ = "";
            private int maxConnCnt_;
            private int port_;
            private int serverSid_;
            private int serverType_;

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
                this.ip1_ = "";
                this.bitField0_ &= -2;
                this.ip2_ = "";
                this.bitField0_ &= -3;
                this.port_ = 0;
                this.bitField0_ &= -5;
                this.serverType_ = 0;
                this.bitField0_ &= -9;
                this.serverSid_ = 0;
                this.bitField0_ &= -17;
                this.maxConnCnt_ = 0;
                this.bitField0_ &= -33;
                this.curConnCnt_ = 0;
                this.bitField0_ &= -65;
                this.hostName_ = "";
                this.bitField0_ &= -129;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMOtherServInfo getDefaultInstanceForType() {
                return IMOtherServInfo.getDefaultInstance();
            }

            public IMOtherServInfo build() {
                IMOtherServInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMOtherServInfo buildPartial() {
                int i = 1;
                IMOtherServInfo iMOtherServInfo = new IMOtherServInfo((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMOtherServInfo.ip1_ = this.ip1_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMOtherServInfo.ip2_ = this.ip2_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMOtherServInfo.port_ = this.port_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMOtherServInfo.serverType_ = this.serverType_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMOtherServInfo.serverSid_ = this.serverSid_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                iMOtherServInfo.maxConnCnt_ = this.maxConnCnt_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                iMOtherServInfo.curConnCnt_ = this.curConnCnt_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                iMOtherServInfo.hostName_ = this.hostName_;
                iMOtherServInfo.bitField0_ = i;
                return iMOtherServInfo;
            }

            public Builder mergeFrom(IMOtherServInfo iMOtherServInfo) {
                if (iMOtherServInfo != IMOtherServInfo.getDefaultInstance()) {
                    if (iMOtherServInfo.hasIp1()) {
                        this.bitField0_ |= 1;
                        this.ip1_ = iMOtherServInfo.ip1_;
                    }
                    if (iMOtherServInfo.hasIp2()) {
                        this.bitField0_ |= 2;
                        this.ip2_ = iMOtherServInfo.ip2_;
                    }
                    if (iMOtherServInfo.hasPort()) {
                        setPort(iMOtherServInfo.getPort());
                    }
                    if (iMOtherServInfo.hasServerType()) {
                        setServerType(iMOtherServInfo.getServerType());
                    }
                    if (iMOtherServInfo.hasServerSid()) {
                        setServerSid(iMOtherServInfo.getServerSid());
                    }
                    if (iMOtherServInfo.hasMaxConnCnt()) {
                        setMaxConnCnt(iMOtherServInfo.getMaxConnCnt());
                    }
                    if (iMOtherServInfo.hasCurConnCnt()) {
                        setCurConnCnt(iMOtherServInfo.getCurConnCnt());
                    }
                    if (iMOtherServInfo.hasHostName()) {
                        this.bitField0_ |= 128;
                        this.hostName_ = iMOtherServInfo.hostName_;
                    }
                    setUnknownFields(getUnknownFields().concat(iMOtherServInfo.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasIp1() && hasIp2() && hasPort() && hasServerType() && hasServerSid() && hasMaxConnCnt() && hasCurConnCnt() && hasHostName()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMOtherServInfo iMOtherServInfo;
                IMOtherServInfo iMOtherServInfo2;
                try {
                    IMOtherServInfo iMOtherServInfo3 = (IMOtherServInfo) IMOtherServInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMOtherServInfo3 != null) {
                        mergeFrom(iMOtherServInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMOtherServInfo2 = (IMOtherServInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMOtherServInfo = iMOtherServInfo2;
                    th = th2;
                }
                if (iMOtherServInfo != null) {
                    mergeFrom(iMOtherServInfo);
                }
                throw th;
            }

            public boolean hasIp1() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getIp1() {
                Object obj = this.ip1_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.ip1_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getIp1Bytes() {
                Object obj = this.ip1_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ip1_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setIp1(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.ip1_ = str;
                return this;
            }

            public Builder clearIp1() {
                this.bitField0_ &= -2;
                this.ip1_ = IMOtherServInfo.getDefaultInstance().getIp1();
                return this;
            }

            public Builder setIp1Bytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.ip1_ = byteString;
                return this;
            }

            public boolean hasIp2() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getIp2() {
                Object obj = this.ip2_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.ip2_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getIp2Bytes() {
                Object obj = this.ip2_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ip2_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setIp2(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.ip2_ = str;
                return this;
            }

            public Builder clearIp2() {
                this.bitField0_ &= -3;
                this.ip2_ = IMOtherServInfo.getDefaultInstance().getIp2();
                return this;
            }

            public Builder setIp2Bytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.ip2_ = byteString;
                return this;
            }

            public boolean hasPort() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getPort() {
                return this.port_;
            }

            public Builder setPort(int i) {
                this.bitField0_ |= 4;
                this.port_ = i;
                return this;
            }

            public Builder clearPort() {
                this.bitField0_ &= -5;
                this.port_ = 0;
                return this;
            }

            public boolean hasServerType() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getServerType() {
                return this.serverType_;
            }

            public Builder setServerType(int i) {
                this.bitField0_ |= 8;
                this.serverType_ = i;
                return this;
            }

            public Builder clearServerType() {
                this.bitField0_ &= -9;
                this.serverType_ = 0;
                return this;
            }

            public boolean hasServerSid() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getServerSid() {
                return this.serverSid_;
            }

            public Builder setServerSid(int i) {
                this.bitField0_ |= 16;
                this.serverSid_ = i;
                return this;
            }

            public Builder clearServerSid() {
                this.bitField0_ &= -17;
                this.serverSid_ = 0;
                return this;
            }

            public boolean hasMaxConnCnt() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getMaxConnCnt() {
                return this.maxConnCnt_;
            }

            public Builder setMaxConnCnt(int i) {
                this.bitField0_ |= 32;
                this.maxConnCnt_ = i;
                return this;
            }

            public Builder clearMaxConnCnt() {
                this.bitField0_ &= -33;
                this.maxConnCnt_ = 0;
                return this;
            }

            public boolean hasCurConnCnt() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getCurConnCnt() {
                return this.curConnCnt_;
            }

            public Builder setCurConnCnt(int i) {
                this.bitField0_ |= 64;
                this.curConnCnt_ = i;
                return this;
            }

            public Builder clearCurConnCnt() {
                this.bitField0_ &= -65;
                this.curConnCnt_ = 0;
                return this;
            }

            public boolean hasHostName() {
                return (this.bitField0_ & 128) == 128;
            }

            public String getHostName() {
                Object obj = this.hostName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.hostName_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getHostNameBytes() {
                Object obj = this.hostName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.hostName_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setHostName(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.hostName_ = str;
                return this;
            }

            public Builder clearHostName() {
                this.bitField0_ &= -129;
                this.hostName_ = IMOtherServInfo.getDefaultInstance().getHostName();
                return this;
            }

            public Builder setHostNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.hostName_ = byteString;
                return this;
            }
        }

        private IMOtherServInfo(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMOtherServInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMOtherServInfo getDefaultInstance() {
            return defaultInstance;
        }

        public IMOtherServInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMOtherServInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.ip1_ = readBytes;
                            break;
                        case 18:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.ip2_ = readBytes2;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.port_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.serverType_ = codedInputStream.readUInt32();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.serverSid_ = codedInputStream.readUInt32();
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.maxConnCnt_ = codedInputStream.readUInt32();
                            break;
                        case 56:
                            this.bitField0_ |= 64;
                            this.curConnCnt_ = codedInputStream.readUInt32();
                            break;
                        case 66:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 128;
                            this.hostName_ = readBytes3;
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

        public Parser<IMOtherServInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasIp1() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getIp1() {
            Object obj = this.ip1_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ip1_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getIp1Bytes() {
            Object obj = this.ip1_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ip1_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasIp2() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getIp2() {
            Object obj = this.ip2_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ip2_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getIp2Bytes() {
            Object obj = this.ip2_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ip2_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasPort() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getPort() {
            return this.port_;
        }

        public boolean hasServerType() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getServerType() {
            return this.serverType_;
        }

        public boolean hasServerSid() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getServerSid() {
            return this.serverSid_;
        }

        public boolean hasMaxConnCnt() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getMaxConnCnt() {
            return this.maxConnCnt_;
        }

        public boolean hasCurConnCnt() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getCurConnCnt() {
            return this.curConnCnt_;
        }

        public boolean hasHostName() {
            return (this.bitField0_ & 128) == 128;
        }

        public String getHostName() {
            Object obj = this.hostName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.hostName_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getHostNameBytes() {
            Object obj = this.hostName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.hostName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.ip1_ = "";
            this.ip2_ = "";
            this.port_ = 0;
            this.serverType_ = 0;
            this.serverSid_ = 0;
            this.maxConnCnt_ = 0;
            this.curConnCnt_ = 0;
            this.hostName_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasIp1()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasIp2()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasPort()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasServerType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasServerSid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMaxConnCnt()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasCurConnCnt()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasHostName()) {
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
                codedOutputStream.writeBytes(1, getIp1Bytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getIp2Bytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.port_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.serverType_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt32(5, this.serverSid_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt32(6, this.maxConnCnt_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt32(7, this.curConnCnt_);
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeBytes(8, getHostNameBytes());
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getIp1Bytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getIp2Bytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.port_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.serverType_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt32Size(5, this.serverSid_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt32Size(6, this.maxConnCnt_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeUInt32Size(7, this.curConnCnt_);
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeBytesSize(8, getHostNameBytes());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMOtherServInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMOtherServInfo) PARSER.parseFrom(byteString);
        }

        public static IMOtherServInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMOtherServInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMOtherServInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMOtherServInfo) PARSER.parseFrom(bArr);
        }

        public static IMOtherServInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMOtherServInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMOtherServInfo parseFrom(InputStream inputStream) throws IOException {
            return (IMOtherServInfo) PARSER.parseFrom(inputStream);
        }

        public static IMOtherServInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMOtherServInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMOtherServInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMOtherServInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMOtherServInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMOtherServInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMOtherServInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMOtherServInfo) PARSER.parseFrom(codedInputStream);
        }

        public static IMOtherServInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMOtherServInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMOtherServInfo iMOtherServInfo) {
            return newBuilder().mergeFrom(iMOtherServInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMOtherServInfoOrBuilder extends MessageLiteOrBuilder {
        int getCurConnCnt();

        String getHostName();

        ByteString getHostNameBytes();

        String getIp1();

        ByteString getIp1Bytes();

        String getIp2();

        ByteString getIp2Bytes();

        int getMaxConnCnt();

        int getPort();

        int getServerSid();

        int getServerType();

        boolean hasCurConnCnt();

        boolean hasHostName();

        boolean hasIp1();

        boolean hasIp2();

        boolean hasMaxConnCnt();

        boolean hasPort();

        boolean hasServerSid();

        boolean hasServerType();
    }

    private IMOther() {
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
