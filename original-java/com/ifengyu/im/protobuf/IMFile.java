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
import com.ifengyu.im.protobuf.IMBaseDefine.ClientFileRole;
import com.ifengyu.im.protobuf.IMBaseDefine.ClientFileState;
import com.ifengyu.im.protobuf.IMBaseDefine.FileType;
import com.ifengyu.im.protobuf.IMBaseDefine.IpAddr;
import com.ifengyu.im.protobuf.IMBaseDefine.IpAddrOrBuilder;
import com.ifengyu.im.protobuf.IMBaseDefine.OfflineFileInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.OfflineFileInfoOrBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class IMFile {

    public static final class IMFileAddOfflineReq extends GeneratedMessageLite implements IMFileAddOfflineReqOrBuilder {
        public static final int FILE_NAME_FIELD_NUMBER = 4;
        public static final int FILE_SIZE_FIELD_NUMBER = 5;
        public static final int FROM_USER_ID_FIELD_NUMBER = 1;
        public static Parser<IMFileAddOfflineReq> PARSER = new AbstractParser<IMFileAddOfflineReq>() {
            public IMFileAddOfflineReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMFileAddOfflineReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TASK_ID_FIELD_NUMBER = 3;
        public static final int TO_USER_ID_FIELD_NUMBER = 2;
        private static final IMFileAddOfflineReq defaultInstance = new IMFileAddOfflineReq(true);
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
        public int toUserId_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMFileAddOfflineReq, Builder> implements IMFileAddOfflineReqOrBuilder {
            private int bitField0_;
            private Object fileName_ = "";
            private int fileSize_;
            private int fromUserId_;
            private Object taskId_ = "";
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
                this.taskId_ = "";
                this.bitField0_ &= -5;
                this.fileName_ = "";
                this.bitField0_ &= -9;
                this.fileSize_ = 0;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMFileAddOfflineReq getDefaultInstanceForType() {
                return IMFileAddOfflineReq.getDefaultInstance();
            }

            public IMFileAddOfflineReq build() {
                IMFileAddOfflineReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMFileAddOfflineReq buildPartial() {
                int i = 1;
                IMFileAddOfflineReq iMFileAddOfflineReq = new IMFileAddOfflineReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMFileAddOfflineReq.fromUserId_ = this.fromUserId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMFileAddOfflineReq.toUserId_ = this.toUserId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMFileAddOfflineReq.taskId_ = this.taskId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMFileAddOfflineReq.fileName_ = this.fileName_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMFileAddOfflineReq.fileSize_ = this.fileSize_;
                iMFileAddOfflineReq.bitField0_ = i;
                return iMFileAddOfflineReq;
            }

            public Builder mergeFrom(IMFileAddOfflineReq iMFileAddOfflineReq) {
                if (iMFileAddOfflineReq != IMFileAddOfflineReq.getDefaultInstance()) {
                    if (iMFileAddOfflineReq.hasFromUserId()) {
                        setFromUserId(iMFileAddOfflineReq.getFromUserId());
                    }
                    if (iMFileAddOfflineReq.hasToUserId()) {
                        setToUserId(iMFileAddOfflineReq.getToUserId());
                    }
                    if (iMFileAddOfflineReq.hasTaskId()) {
                        this.bitField0_ |= 4;
                        this.taskId_ = iMFileAddOfflineReq.taskId_;
                    }
                    if (iMFileAddOfflineReq.hasFileName()) {
                        this.bitField0_ |= 8;
                        this.fileName_ = iMFileAddOfflineReq.fileName_;
                    }
                    if (iMFileAddOfflineReq.hasFileSize()) {
                        setFileSize(iMFileAddOfflineReq.getFileSize());
                    }
                    setUnknownFields(getUnknownFields().concat(iMFileAddOfflineReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasFromUserId() && hasToUserId() && hasTaskId() && hasFileName() && hasFileSize()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMFileAddOfflineReq iMFileAddOfflineReq;
                IMFileAddOfflineReq iMFileAddOfflineReq2;
                try {
                    IMFileAddOfflineReq iMFileAddOfflineReq3 = (IMFileAddOfflineReq) IMFileAddOfflineReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMFileAddOfflineReq3 != null) {
                        mergeFrom(iMFileAddOfflineReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMFileAddOfflineReq2 = (IMFileAddOfflineReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMFileAddOfflineReq = iMFileAddOfflineReq2;
                    th = th2;
                }
                if (iMFileAddOfflineReq != null) {
                    mergeFrom(iMFileAddOfflineReq);
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

            public boolean hasTaskId() {
                return (this.bitField0_ & 4) == 4;
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
                this.bitField0_ |= 4;
                this.taskId_ = str;
                return this;
            }

            public Builder clearTaskId() {
                this.bitField0_ &= -5;
                this.taskId_ = IMFileAddOfflineReq.getDefaultInstance().getTaskId();
                return this;
            }

            public Builder setTaskIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.taskId_ = byteString;
                return this;
            }

            public boolean hasFileName() {
                return (this.bitField0_ & 8) == 8;
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
                this.bitField0_ |= 8;
                this.fileName_ = str;
                return this;
            }

            public Builder clearFileName() {
                this.bitField0_ &= -9;
                this.fileName_ = IMFileAddOfflineReq.getDefaultInstance().getFileName();
                return this;
            }

            public Builder setFileNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.fileName_ = byteString;
                return this;
            }

            public boolean hasFileSize() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getFileSize() {
                return this.fileSize_;
            }

            public Builder setFileSize(int i) {
                this.bitField0_ |= 16;
                this.fileSize_ = i;
                return this;
            }

            public Builder clearFileSize() {
                this.bitField0_ &= -17;
                this.fileSize_ = 0;
                return this;
            }
        }

        private IMFileAddOfflineReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMFileAddOfflineReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMFileAddOfflineReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMFileAddOfflineReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMFileAddOfflineReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.taskId_ = readBytes;
                            break;
                        case 34:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.fileName_ = readBytes2;
                            break;
                        case 40:
                            this.bitField0_ |= 16;
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

        public Parser<IMFileAddOfflineReq> getParserForType() {
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

        public boolean hasTaskId() {
            return (this.bitField0_ & 4) == 4;
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
            return (this.bitField0_ & 8) == 8;
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
            return (this.bitField0_ & 16) == 16;
        }

        public int getFileSize() {
            return this.fileSize_;
        }

        private void initFields() {
            this.fromUserId_ = 0;
            this.toUserId_ = 0;
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
            } else if (!hasToUserId()) {
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
                codedOutputStream.writeUInt32(2, this.toUserId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getTaskIdBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getFileNameBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt32(5, this.fileSize_);
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
                i2 += CodedOutputStream.computeBytesSize(3, getTaskIdBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getFileNameBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt32Size(5, this.fileSize_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMFileAddOfflineReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMFileAddOfflineReq) PARSER.parseFrom(byteString);
        }

        public static IMFileAddOfflineReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileAddOfflineReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMFileAddOfflineReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMFileAddOfflineReq) PARSER.parseFrom(bArr);
        }

        public static IMFileAddOfflineReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileAddOfflineReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMFileAddOfflineReq parseFrom(InputStream inputStream) throws IOException {
            return (IMFileAddOfflineReq) PARSER.parseFrom(inputStream);
        }

        public static IMFileAddOfflineReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileAddOfflineReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileAddOfflineReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMFileAddOfflineReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMFileAddOfflineReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileAddOfflineReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileAddOfflineReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMFileAddOfflineReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMFileAddOfflineReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileAddOfflineReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMFileAddOfflineReq iMFileAddOfflineReq) {
            return newBuilder().mergeFrom(iMFileAddOfflineReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMFileAddOfflineReqOrBuilder extends MessageLiteOrBuilder {
        String getFileName();

        ByteString getFileNameBytes();

        int getFileSize();

        int getFromUserId();

        String getTaskId();

        ByteString getTaskIdBytes();

        int getToUserId();

        boolean hasFileName();

        boolean hasFileSize();

        boolean hasFromUserId();

        boolean hasTaskId();

        boolean hasToUserId();
    }

    public static final class IMFileDelOfflineReq extends GeneratedMessageLite implements IMFileDelOfflineReqOrBuilder {
        public static final int FROM_USER_ID_FIELD_NUMBER = 1;
        public static Parser<IMFileDelOfflineReq> PARSER = new AbstractParser<IMFileDelOfflineReq>() {
            public IMFileDelOfflineReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMFileDelOfflineReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TASK_ID_FIELD_NUMBER = 3;
        public static final int TO_USER_ID_FIELD_NUMBER = 2;
        private static final IMFileDelOfflineReq defaultInstance = new IMFileDelOfflineReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int fromUserId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object taskId_;
        /* access modifiers changed from: private */
        public int toUserId_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMFileDelOfflineReq, Builder> implements IMFileDelOfflineReqOrBuilder {
            private int bitField0_;
            private int fromUserId_;
            private Object taskId_ = "";
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
                this.taskId_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMFileDelOfflineReq getDefaultInstanceForType() {
                return IMFileDelOfflineReq.getDefaultInstance();
            }

            public IMFileDelOfflineReq build() {
                IMFileDelOfflineReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMFileDelOfflineReq buildPartial() {
                int i = 1;
                IMFileDelOfflineReq iMFileDelOfflineReq = new IMFileDelOfflineReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMFileDelOfflineReq.fromUserId_ = this.fromUserId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMFileDelOfflineReq.toUserId_ = this.toUserId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMFileDelOfflineReq.taskId_ = this.taskId_;
                iMFileDelOfflineReq.bitField0_ = i;
                return iMFileDelOfflineReq;
            }

            public Builder mergeFrom(IMFileDelOfflineReq iMFileDelOfflineReq) {
                if (iMFileDelOfflineReq != IMFileDelOfflineReq.getDefaultInstance()) {
                    if (iMFileDelOfflineReq.hasFromUserId()) {
                        setFromUserId(iMFileDelOfflineReq.getFromUserId());
                    }
                    if (iMFileDelOfflineReq.hasToUserId()) {
                        setToUserId(iMFileDelOfflineReq.getToUserId());
                    }
                    if (iMFileDelOfflineReq.hasTaskId()) {
                        this.bitField0_ |= 4;
                        this.taskId_ = iMFileDelOfflineReq.taskId_;
                    }
                    setUnknownFields(getUnknownFields().concat(iMFileDelOfflineReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasFromUserId() && hasToUserId() && hasTaskId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMFileDelOfflineReq iMFileDelOfflineReq;
                IMFileDelOfflineReq iMFileDelOfflineReq2;
                try {
                    IMFileDelOfflineReq iMFileDelOfflineReq3 = (IMFileDelOfflineReq) IMFileDelOfflineReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMFileDelOfflineReq3 != null) {
                        mergeFrom(iMFileDelOfflineReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMFileDelOfflineReq2 = (IMFileDelOfflineReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMFileDelOfflineReq = iMFileDelOfflineReq2;
                    th = th2;
                }
                if (iMFileDelOfflineReq != null) {
                    mergeFrom(iMFileDelOfflineReq);
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

            public boolean hasTaskId() {
                return (this.bitField0_ & 4) == 4;
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
                this.bitField0_ |= 4;
                this.taskId_ = str;
                return this;
            }

            public Builder clearTaskId() {
                this.bitField0_ &= -5;
                this.taskId_ = IMFileDelOfflineReq.getDefaultInstance().getTaskId();
                return this;
            }

            public Builder setTaskIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.taskId_ = byteString;
                return this;
            }
        }

        private IMFileDelOfflineReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMFileDelOfflineReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMFileDelOfflineReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMFileDelOfflineReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMFileDelOfflineReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.taskId_ = readBytes;
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

        public Parser<IMFileDelOfflineReq> getParserForType() {
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

        public boolean hasTaskId() {
            return (this.bitField0_ & 4) == 4;
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

        private void initFields() {
            this.fromUserId_ = 0;
            this.toUserId_ = 0;
            this.taskId_ = "";
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
            } else if (!hasTaskId()) {
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
                codedOutputStream.writeBytes(3, getTaskIdBytes());
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
                i2 += CodedOutputStream.computeBytesSize(3, getTaskIdBytes());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMFileDelOfflineReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMFileDelOfflineReq) PARSER.parseFrom(byteString);
        }

        public static IMFileDelOfflineReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileDelOfflineReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMFileDelOfflineReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMFileDelOfflineReq) PARSER.parseFrom(bArr);
        }

        public static IMFileDelOfflineReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileDelOfflineReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMFileDelOfflineReq parseFrom(InputStream inputStream) throws IOException {
            return (IMFileDelOfflineReq) PARSER.parseFrom(inputStream);
        }

        public static IMFileDelOfflineReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileDelOfflineReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileDelOfflineReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMFileDelOfflineReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMFileDelOfflineReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileDelOfflineReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileDelOfflineReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMFileDelOfflineReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMFileDelOfflineReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileDelOfflineReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMFileDelOfflineReq iMFileDelOfflineReq) {
            return newBuilder().mergeFrom(iMFileDelOfflineReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMFileDelOfflineReqOrBuilder extends MessageLiteOrBuilder {
        int getFromUserId();

        String getTaskId();

        ByteString getTaskIdBytes();

        int getToUserId();

        boolean hasFromUserId();

        boolean hasTaskId();

        boolean hasToUserId();
    }

    public static final class IMFileHasOfflineReq extends GeneratedMessageLite implements IMFileHasOfflineReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMFileHasOfflineReq> PARSER = new AbstractParser<IMFileHasOfflineReq>() {
            public IMFileHasOfflineReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMFileHasOfflineReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMFileHasOfflineReq defaultInstance = new IMFileHasOfflineReq(true);
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

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMFileHasOfflineReq, Builder> implements IMFileHasOfflineReqOrBuilder {
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

            public IMFileHasOfflineReq getDefaultInstanceForType() {
                return IMFileHasOfflineReq.getDefaultInstance();
            }

            public IMFileHasOfflineReq build() {
                IMFileHasOfflineReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMFileHasOfflineReq buildPartial() {
                int i = 1;
                IMFileHasOfflineReq iMFileHasOfflineReq = new IMFileHasOfflineReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMFileHasOfflineReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMFileHasOfflineReq.attachData_ = this.attachData_;
                iMFileHasOfflineReq.bitField0_ = i;
                return iMFileHasOfflineReq;
            }

            public Builder mergeFrom(IMFileHasOfflineReq iMFileHasOfflineReq) {
                if (iMFileHasOfflineReq != IMFileHasOfflineReq.getDefaultInstance()) {
                    if (iMFileHasOfflineReq.hasUserId()) {
                        setUserId(iMFileHasOfflineReq.getUserId());
                    }
                    if (iMFileHasOfflineReq.hasAttachData()) {
                        setAttachData(iMFileHasOfflineReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMFileHasOfflineReq.unknownFields));
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
                IMFileHasOfflineReq iMFileHasOfflineReq;
                IMFileHasOfflineReq iMFileHasOfflineReq2;
                try {
                    IMFileHasOfflineReq iMFileHasOfflineReq3 = (IMFileHasOfflineReq) IMFileHasOfflineReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMFileHasOfflineReq3 != null) {
                        mergeFrom(iMFileHasOfflineReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMFileHasOfflineReq2 = (IMFileHasOfflineReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMFileHasOfflineReq = iMFileHasOfflineReq2;
                    th = th2;
                }
                if (iMFileHasOfflineReq != null) {
                    mergeFrom(iMFileHasOfflineReq);
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
                this.attachData_ = IMFileHasOfflineReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMFileHasOfflineReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMFileHasOfflineReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMFileHasOfflineReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMFileHasOfflineReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMFileHasOfflineReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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

        public Parser<IMFileHasOfflineReq> getParserForType() {
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

        public static IMFileHasOfflineReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMFileHasOfflineReq) PARSER.parseFrom(byteString);
        }

        public static IMFileHasOfflineReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileHasOfflineReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMFileHasOfflineReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMFileHasOfflineReq) PARSER.parseFrom(bArr);
        }

        public static IMFileHasOfflineReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileHasOfflineReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMFileHasOfflineReq parseFrom(InputStream inputStream) throws IOException {
            return (IMFileHasOfflineReq) PARSER.parseFrom(inputStream);
        }

        public static IMFileHasOfflineReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileHasOfflineReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileHasOfflineReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMFileHasOfflineReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMFileHasOfflineReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileHasOfflineReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileHasOfflineReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMFileHasOfflineReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMFileHasOfflineReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileHasOfflineReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMFileHasOfflineReq iMFileHasOfflineReq) {
            return newBuilder().mergeFrom(iMFileHasOfflineReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMFileHasOfflineReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getUserId();

        boolean hasAttachData();

        boolean hasUserId();
    }

    public static final class IMFileHasOfflineRsp extends GeneratedMessageLite implements IMFileHasOfflineRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int IP_ADDR_LIST_FIELD_NUMBER = 3;
        public static final int OFFLINE_FILE_LIST_FIELD_NUMBER = 2;
        public static Parser<IMFileHasOfflineRsp> PARSER = new AbstractParser<IMFileHasOfflineRsp>() {
            public IMFileHasOfflineRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMFileHasOfflineRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMFileHasOfflineRsp defaultInstance = new IMFileHasOfflineRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public List<IpAddr> ipAddrList_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<OfflineFileInfo> offlineFileList_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMFileHasOfflineRsp, Builder> implements IMFileHasOfflineRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private List<IpAddr> ipAddrList_ = Collections.emptyList();
            private List<OfflineFileInfo> offlineFileList_ = Collections.emptyList();
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
                this.offlineFileList_ = Collections.emptyList();
                this.bitField0_ &= -3;
                this.ipAddrList_ = Collections.emptyList();
                this.bitField0_ &= -5;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMFileHasOfflineRsp getDefaultInstanceForType() {
                return IMFileHasOfflineRsp.getDefaultInstance();
            }

            public IMFileHasOfflineRsp build() {
                IMFileHasOfflineRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMFileHasOfflineRsp buildPartial() {
                int i = 1;
                IMFileHasOfflineRsp iMFileHasOfflineRsp = new IMFileHasOfflineRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMFileHasOfflineRsp.userId_ = this.userId_;
                if ((this.bitField0_ & 2) == 2) {
                    this.offlineFileList_ = Collections.unmodifiableList(this.offlineFileList_);
                    this.bitField0_ &= -3;
                }
                iMFileHasOfflineRsp.offlineFileList_ = this.offlineFileList_;
                if ((this.bitField0_ & 4) == 4) {
                    this.ipAddrList_ = Collections.unmodifiableList(this.ipAddrList_);
                    this.bitField0_ &= -5;
                }
                iMFileHasOfflineRsp.ipAddrList_ = this.ipAddrList_;
                if ((i2 & 8) == 8) {
                    i |= 2;
                }
                iMFileHasOfflineRsp.attachData_ = this.attachData_;
                iMFileHasOfflineRsp.bitField0_ = i;
                return iMFileHasOfflineRsp;
            }

            public Builder mergeFrom(IMFileHasOfflineRsp iMFileHasOfflineRsp) {
                if (iMFileHasOfflineRsp != IMFileHasOfflineRsp.getDefaultInstance()) {
                    if (iMFileHasOfflineRsp.hasUserId()) {
                        setUserId(iMFileHasOfflineRsp.getUserId());
                    }
                    if (!iMFileHasOfflineRsp.offlineFileList_.isEmpty()) {
                        if (this.offlineFileList_.isEmpty()) {
                            this.offlineFileList_ = iMFileHasOfflineRsp.offlineFileList_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureOfflineFileListIsMutable();
                            this.offlineFileList_.addAll(iMFileHasOfflineRsp.offlineFileList_);
                        }
                    }
                    if (!iMFileHasOfflineRsp.ipAddrList_.isEmpty()) {
                        if (this.ipAddrList_.isEmpty()) {
                            this.ipAddrList_ = iMFileHasOfflineRsp.ipAddrList_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureIpAddrListIsMutable();
                            this.ipAddrList_.addAll(iMFileHasOfflineRsp.ipAddrList_);
                        }
                    }
                    if (iMFileHasOfflineRsp.hasAttachData()) {
                        setAttachData(iMFileHasOfflineRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMFileHasOfflineRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasUserId()) {
                    return false;
                }
                for (int i = 0; i < getOfflineFileListCount(); i++) {
                    if (!getOfflineFileList(i).isInitialized()) {
                        return false;
                    }
                }
                for (int i2 = 0; i2 < getIpAddrListCount(); i2++) {
                    if (!getIpAddrList(i2).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMFileHasOfflineRsp iMFileHasOfflineRsp;
                IMFileHasOfflineRsp iMFileHasOfflineRsp2;
                try {
                    IMFileHasOfflineRsp iMFileHasOfflineRsp3 = (IMFileHasOfflineRsp) IMFileHasOfflineRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMFileHasOfflineRsp3 != null) {
                        mergeFrom(iMFileHasOfflineRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMFileHasOfflineRsp2 = (IMFileHasOfflineRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMFileHasOfflineRsp = iMFileHasOfflineRsp2;
                    th = th2;
                }
                if (iMFileHasOfflineRsp != null) {
                    mergeFrom(iMFileHasOfflineRsp);
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

            private void ensureOfflineFileListIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.offlineFileList_ = new ArrayList(this.offlineFileList_);
                    this.bitField0_ |= 2;
                }
            }

            public List<OfflineFileInfo> getOfflineFileListList() {
                return Collections.unmodifiableList(this.offlineFileList_);
            }

            public int getOfflineFileListCount() {
                return this.offlineFileList_.size();
            }

            public OfflineFileInfo getOfflineFileList(int i) {
                return (OfflineFileInfo) this.offlineFileList_.get(i);
            }

            public Builder setOfflineFileList(int i, OfflineFileInfo offlineFileInfo) {
                if (offlineFileInfo == null) {
                    throw new NullPointerException();
                }
                ensureOfflineFileListIsMutable();
                this.offlineFileList_.set(i, offlineFileInfo);
                return this;
            }

            public Builder setOfflineFileList(int i, com.ifengyu.im.protobuf.IMBaseDefine.OfflineFileInfo.Builder builder) {
                ensureOfflineFileListIsMutable();
                this.offlineFileList_.set(i, builder.build());
                return this;
            }

            public Builder addOfflineFileList(OfflineFileInfo offlineFileInfo) {
                if (offlineFileInfo == null) {
                    throw new NullPointerException();
                }
                ensureOfflineFileListIsMutable();
                this.offlineFileList_.add(offlineFileInfo);
                return this;
            }

            public Builder addOfflineFileList(int i, OfflineFileInfo offlineFileInfo) {
                if (offlineFileInfo == null) {
                    throw new NullPointerException();
                }
                ensureOfflineFileListIsMutable();
                this.offlineFileList_.add(i, offlineFileInfo);
                return this;
            }

            public Builder addOfflineFileList(com.ifengyu.im.protobuf.IMBaseDefine.OfflineFileInfo.Builder builder) {
                ensureOfflineFileListIsMutable();
                this.offlineFileList_.add(builder.build());
                return this;
            }

            public Builder addOfflineFileList(int i, com.ifengyu.im.protobuf.IMBaseDefine.OfflineFileInfo.Builder builder) {
                ensureOfflineFileListIsMutable();
                this.offlineFileList_.add(i, builder.build());
                return this;
            }

            public Builder addAllOfflineFileList(Iterable<? extends OfflineFileInfo> iterable) {
                ensureOfflineFileListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.offlineFileList_);
                return this;
            }

            public Builder clearOfflineFileList() {
                this.offlineFileList_ = Collections.emptyList();
                this.bitField0_ &= -3;
                return this;
            }

            public Builder removeOfflineFileList(int i) {
                ensureOfflineFileListIsMutable();
                this.offlineFileList_.remove(i);
                return this;
            }

            private void ensureIpAddrListIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.ipAddrList_ = new ArrayList(this.ipAddrList_);
                    this.bitField0_ |= 4;
                }
            }

            public List<IpAddr> getIpAddrListList() {
                return Collections.unmodifiableList(this.ipAddrList_);
            }

            public int getIpAddrListCount() {
                return this.ipAddrList_.size();
            }

            public IpAddr getIpAddrList(int i) {
                return (IpAddr) this.ipAddrList_.get(i);
            }

            public Builder setIpAddrList(int i, IpAddr ipAddr) {
                if (ipAddr == null) {
                    throw new NullPointerException();
                }
                ensureIpAddrListIsMutable();
                this.ipAddrList_.set(i, ipAddr);
                return this;
            }

            public Builder setIpAddrList(int i, com.ifengyu.im.protobuf.IMBaseDefine.IpAddr.Builder builder) {
                ensureIpAddrListIsMutable();
                this.ipAddrList_.set(i, builder.build());
                return this;
            }

            public Builder addIpAddrList(IpAddr ipAddr) {
                if (ipAddr == null) {
                    throw new NullPointerException();
                }
                ensureIpAddrListIsMutable();
                this.ipAddrList_.add(ipAddr);
                return this;
            }

            public Builder addIpAddrList(int i, IpAddr ipAddr) {
                if (ipAddr == null) {
                    throw new NullPointerException();
                }
                ensureIpAddrListIsMutable();
                this.ipAddrList_.add(i, ipAddr);
                return this;
            }

            public Builder addIpAddrList(com.ifengyu.im.protobuf.IMBaseDefine.IpAddr.Builder builder) {
                ensureIpAddrListIsMutable();
                this.ipAddrList_.add(builder.build());
                return this;
            }

            public Builder addIpAddrList(int i, com.ifengyu.im.protobuf.IMBaseDefine.IpAddr.Builder builder) {
                ensureIpAddrListIsMutable();
                this.ipAddrList_.add(i, builder.build());
                return this;
            }

            public Builder addAllIpAddrList(Iterable<? extends IpAddr> iterable) {
                ensureIpAddrListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.ipAddrList_);
                return this;
            }

            public Builder clearIpAddrList() {
                this.ipAddrList_ = Collections.emptyList();
                this.bitField0_ &= -5;
                return this;
            }

            public Builder removeIpAddrList(int i) {
                ensureIpAddrListIsMutable();
                this.ipAddrList_.remove(i);
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
                this.attachData_ = IMFileHasOfflineRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMFileHasOfflineRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMFileHasOfflineRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMFileHasOfflineRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMFileHasOfflineRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMFileHasOfflineRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.userId_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            if (!(z2 & true)) {
                                this.offlineFileList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.offlineFileList_.add(codedInputStream.readMessage(OfflineFileInfo.PARSER, extensionRegistryLite));
                            break;
                        case 26:
                            if (!(z2 & true)) {
                                this.ipAddrList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.ipAddrList_.add(codedInputStream.readMessage(IpAddr.PARSER, extensionRegistryLite));
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
                    if (z2 & true) {
                        this.offlineFileList_ = Collections.unmodifiableList(this.offlineFileList_);
                    }
                    if (z2 & true) {
                        this.ipAddrList_ = Collections.unmodifiableList(this.ipAddrList_);
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
                this.offlineFileList_ = Collections.unmodifiableList(this.offlineFileList_);
            }
            if (z2 & true) {
                this.ipAddrList_ = Collections.unmodifiableList(this.ipAddrList_);
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

        public Parser<IMFileHasOfflineRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public List<OfflineFileInfo> getOfflineFileListList() {
            return this.offlineFileList_;
        }

        public List<? extends OfflineFileInfoOrBuilder> getOfflineFileListOrBuilderList() {
            return this.offlineFileList_;
        }

        public int getOfflineFileListCount() {
            return this.offlineFileList_.size();
        }

        public OfflineFileInfo getOfflineFileList(int i) {
            return (OfflineFileInfo) this.offlineFileList_.get(i);
        }

        public OfflineFileInfoOrBuilder getOfflineFileListOrBuilder(int i) {
            return (OfflineFileInfoOrBuilder) this.offlineFileList_.get(i);
        }

        public List<IpAddr> getIpAddrListList() {
            return this.ipAddrList_;
        }

        public List<? extends IpAddrOrBuilder> getIpAddrListOrBuilderList() {
            return this.ipAddrList_;
        }

        public int getIpAddrListCount() {
            return this.ipAddrList_.size();
        }

        public IpAddr getIpAddrList(int i) {
            return (IpAddr) this.ipAddrList_.get(i);
        }

        public IpAddrOrBuilder getIpAddrListOrBuilder(int i) {
            return (IpAddrOrBuilder) this.ipAddrList_.get(i);
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.offlineFileList_ = Collections.emptyList();
            this.ipAddrList_ = Collections.emptyList();
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
            for (int i = 0; i < getOfflineFileListCount(); i++) {
                if (!getOfflineFileList(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            for (int i2 = 0; i2 < getIpAddrListCount(); i2++) {
                if (!getIpAddrList(i2).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.userId_);
            }
            for (int i = 0; i < this.offlineFileList_.size(); i++) {
                codedOutputStream.writeMessage(2, (MessageLite) this.offlineFileList_.get(i));
            }
            for (int i2 = 0; i2 < this.ipAddrList_.size(); i2++) {
                codedOutputStream.writeMessage(3, (MessageLite) this.ipAddrList_.get(i2));
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(20, this.attachData_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i;
            int i2 = this.memoizedSerializedSize;
            if (i2 != -1) {
                return i2;
            }
            if ((this.bitField0_ & 1) == 1) {
                i = CodedOutputStream.computeUInt32Size(1, this.userId_) + 0;
            } else {
                i = 0;
            }
            int i3 = i;
            for (int i4 = 0; i4 < this.offlineFileList_.size(); i4++) {
                i3 += CodedOutputStream.computeMessageSize(2, (MessageLite) this.offlineFileList_.get(i4));
            }
            for (int i5 = 0; i5 < this.ipAddrList_.size(); i5++) {
                i3 += CodedOutputStream.computeMessageSize(3, (MessageLite) this.ipAddrList_.get(i5));
            }
            if ((this.bitField0_ & 2) == 2) {
                i3 += CodedOutputStream.computeBytesSize(20, this.attachData_);
            }
            int size = this.unknownFields.size() + i3;
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMFileHasOfflineRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMFileHasOfflineRsp) PARSER.parseFrom(byteString);
        }

        public static IMFileHasOfflineRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileHasOfflineRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMFileHasOfflineRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMFileHasOfflineRsp) PARSER.parseFrom(bArr);
        }

        public static IMFileHasOfflineRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileHasOfflineRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMFileHasOfflineRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMFileHasOfflineRsp) PARSER.parseFrom(inputStream);
        }

        public static IMFileHasOfflineRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileHasOfflineRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileHasOfflineRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMFileHasOfflineRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMFileHasOfflineRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileHasOfflineRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileHasOfflineRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMFileHasOfflineRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMFileHasOfflineRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileHasOfflineRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMFileHasOfflineRsp iMFileHasOfflineRsp) {
            return newBuilder().mergeFrom(iMFileHasOfflineRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMFileHasOfflineRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        IpAddr getIpAddrList(int i);

        int getIpAddrListCount();

        List<IpAddr> getIpAddrListList();

        OfflineFileInfo getOfflineFileList(int i);

        int getOfflineFileListCount();

        List<OfflineFileInfo> getOfflineFileListList();

        int getUserId();

        boolean hasAttachData();

        boolean hasUserId();
    }

    public static final class IMFileLoginReq extends GeneratedMessageLite implements IMFileLoginReqOrBuilder {
        public static final int FILE_ROLE_FIELD_NUMBER = 3;
        public static Parser<IMFileLoginReq> PARSER = new AbstractParser<IMFileLoginReq>() {
            public IMFileLoginReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMFileLoginReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TASK_ID_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMFileLoginReq defaultInstance = new IMFileLoginReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ClientFileRole fileRole_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object taskId_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMFileLoginReq, Builder> implements IMFileLoginReqOrBuilder {
            private int bitField0_;
            private ClientFileRole fileRole_ = ClientFileRole.CLIENT_REALTIME_SENDER;
            private Object taskId_ = "";
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
                this.taskId_ = "";
                this.bitField0_ &= -3;
                this.fileRole_ = ClientFileRole.CLIENT_REALTIME_SENDER;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMFileLoginReq getDefaultInstanceForType() {
                return IMFileLoginReq.getDefaultInstance();
            }

            public IMFileLoginReq build() {
                IMFileLoginReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMFileLoginReq buildPartial() {
                int i = 1;
                IMFileLoginReq iMFileLoginReq = new IMFileLoginReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMFileLoginReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMFileLoginReq.taskId_ = this.taskId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMFileLoginReq.fileRole_ = this.fileRole_;
                iMFileLoginReq.bitField0_ = i;
                return iMFileLoginReq;
            }

            public Builder mergeFrom(IMFileLoginReq iMFileLoginReq) {
                if (iMFileLoginReq != IMFileLoginReq.getDefaultInstance()) {
                    if (iMFileLoginReq.hasUserId()) {
                        setUserId(iMFileLoginReq.getUserId());
                    }
                    if (iMFileLoginReq.hasTaskId()) {
                        this.bitField0_ |= 2;
                        this.taskId_ = iMFileLoginReq.taskId_;
                    }
                    if (iMFileLoginReq.hasFileRole()) {
                        setFileRole(iMFileLoginReq.getFileRole());
                    }
                    setUnknownFields(getUnknownFields().concat(iMFileLoginReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasTaskId() && hasFileRole()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMFileLoginReq iMFileLoginReq;
                IMFileLoginReq iMFileLoginReq2;
                try {
                    IMFileLoginReq iMFileLoginReq3 = (IMFileLoginReq) IMFileLoginReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMFileLoginReq3 != null) {
                        mergeFrom(iMFileLoginReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMFileLoginReq2 = (IMFileLoginReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMFileLoginReq = iMFileLoginReq2;
                    th = th2;
                }
                if (iMFileLoginReq != null) {
                    mergeFrom(iMFileLoginReq);
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
                this.taskId_ = IMFileLoginReq.getDefaultInstance().getTaskId();
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

            public boolean hasFileRole() {
                return (this.bitField0_ & 4) == 4;
            }

            public ClientFileRole getFileRole() {
                return this.fileRole_;
            }

            public Builder setFileRole(ClientFileRole clientFileRole) {
                if (clientFileRole == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fileRole_ = clientFileRole;
                return this;
            }

            public Builder clearFileRole() {
                this.bitField0_ &= -5;
                this.fileRole_ = ClientFileRole.CLIENT_REALTIME_SENDER;
                return this;
            }
        }

        private IMFileLoginReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMFileLoginReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMFileLoginReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMFileLoginReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMFileLoginReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.taskId_ = readBytes;
                            break;
                        case 24:
                            int readEnum = codedInputStream.readEnum();
                            ClientFileRole valueOf = ClientFileRole.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 4;
                                this.fileRole_ = valueOf;
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

        public Parser<IMFileLoginReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
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

        public boolean hasFileRole() {
            return (this.bitField0_ & 4) == 4;
        }

        public ClientFileRole getFileRole() {
            return this.fileRole_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.taskId_ = "";
            this.fileRole_ = ClientFileRole.CLIENT_REALTIME_SENDER;
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
            } else if (!hasTaskId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFileRole()) {
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
                codedOutputStream.writeBytes(2, getTaskIdBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(3, this.fileRole_.getNumber());
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
                i2 += CodedOutputStream.computeBytesSize(2, getTaskIdBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeEnumSize(3, this.fileRole_.getNumber());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMFileLoginReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMFileLoginReq) PARSER.parseFrom(byteString);
        }

        public static IMFileLoginReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileLoginReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMFileLoginReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMFileLoginReq) PARSER.parseFrom(bArr);
        }

        public static IMFileLoginReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileLoginReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMFileLoginReq parseFrom(InputStream inputStream) throws IOException {
            return (IMFileLoginReq) PARSER.parseFrom(inputStream);
        }

        public static IMFileLoginReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileLoginReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileLoginReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMFileLoginReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMFileLoginReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileLoginReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileLoginReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMFileLoginReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMFileLoginReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileLoginReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMFileLoginReq iMFileLoginReq) {
            return newBuilder().mergeFrom(iMFileLoginReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMFileLoginReqOrBuilder extends MessageLiteOrBuilder {
        ClientFileRole getFileRole();

        String getTaskId();

        ByteString getTaskIdBytes();

        int getUserId();

        boolean hasFileRole();

        boolean hasTaskId();

        boolean hasUserId();
    }

    public static final class IMFileLoginRsp extends GeneratedMessageLite implements IMFileLoginRspOrBuilder {
        public static Parser<IMFileLoginRsp> PARSER = new AbstractParser<IMFileLoginRsp>() {
            public IMFileLoginRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMFileLoginRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RESULT_CODE_FIELD_NUMBER = 1;
        public static final int TASK_ID_FIELD_NUMBER = 2;
        private static final IMFileLoginRsp defaultInstance = new IMFileLoginRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int resultCode_;
        /* access modifiers changed from: private */
        public Object taskId_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMFileLoginRsp, Builder> implements IMFileLoginRspOrBuilder {
            private int bitField0_;
            private int resultCode_;
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
                this.resultCode_ = 0;
                this.bitField0_ &= -2;
                this.taskId_ = "";
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMFileLoginRsp getDefaultInstanceForType() {
                return IMFileLoginRsp.getDefaultInstance();
            }

            public IMFileLoginRsp build() {
                IMFileLoginRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMFileLoginRsp buildPartial() {
                int i = 1;
                IMFileLoginRsp iMFileLoginRsp = new IMFileLoginRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMFileLoginRsp.resultCode_ = this.resultCode_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMFileLoginRsp.taskId_ = this.taskId_;
                iMFileLoginRsp.bitField0_ = i;
                return iMFileLoginRsp;
            }

            public Builder mergeFrom(IMFileLoginRsp iMFileLoginRsp) {
                if (iMFileLoginRsp != IMFileLoginRsp.getDefaultInstance()) {
                    if (iMFileLoginRsp.hasResultCode()) {
                        setResultCode(iMFileLoginRsp.getResultCode());
                    }
                    if (iMFileLoginRsp.hasTaskId()) {
                        this.bitField0_ |= 2;
                        this.taskId_ = iMFileLoginRsp.taskId_;
                    }
                    setUnknownFields(getUnknownFields().concat(iMFileLoginRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasResultCode() && hasTaskId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMFileLoginRsp iMFileLoginRsp;
                IMFileLoginRsp iMFileLoginRsp2;
                try {
                    IMFileLoginRsp iMFileLoginRsp3 = (IMFileLoginRsp) IMFileLoginRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMFileLoginRsp3 != null) {
                        mergeFrom(iMFileLoginRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMFileLoginRsp2 = (IMFileLoginRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMFileLoginRsp = iMFileLoginRsp2;
                    th = th2;
                }
                if (iMFileLoginRsp != null) {
                    mergeFrom(iMFileLoginRsp);
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
                this.taskId_ = IMFileLoginRsp.getDefaultInstance().getTaskId();
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
        }

        private IMFileLoginRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMFileLoginRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMFileLoginRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMFileLoginRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMFileLoginRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.taskId_ = readBytes;
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

        public Parser<IMFileLoginRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasResultCode() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getResultCode() {
            return this.resultCode_;
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

        private void initFields() {
            this.resultCode_ = 0;
            this.taskId_ = "";
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
            } else if (!hasTaskId()) {
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
                codedOutputStream.writeUInt32(1, this.resultCode_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getTaskIdBytes());
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
                i2 += CodedOutputStream.computeBytesSize(2, getTaskIdBytes());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMFileLoginRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMFileLoginRsp) PARSER.parseFrom(byteString);
        }

        public static IMFileLoginRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileLoginRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMFileLoginRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMFileLoginRsp) PARSER.parseFrom(bArr);
        }

        public static IMFileLoginRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileLoginRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMFileLoginRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMFileLoginRsp) PARSER.parseFrom(inputStream);
        }

        public static IMFileLoginRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileLoginRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileLoginRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMFileLoginRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMFileLoginRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileLoginRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileLoginRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMFileLoginRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMFileLoginRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileLoginRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMFileLoginRsp iMFileLoginRsp) {
            return newBuilder().mergeFrom(iMFileLoginRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMFileLoginRspOrBuilder extends MessageLiteOrBuilder {
        int getResultCode();

        String getTaskId();

        ByteString getTaskIdBytes();

        boolean hasResultCode();

        boolean hasTaskId();
    }

    public static final class IMFileNotify extends GeneratedMessageLite implements IMFileNotifyOrBuilder {
        public static final int FILE_NAME_FIELD_NUMBER = 3;
        public static final int FILE_SIZE_FIELD_NUMBER = 4;
        public static final int FROM_USER_ID_FIELD_NUMBER = 1;
        public static final int IP_ADDR_LIST_FIELD_NUMBER = 6;
        public static final int OFFLINE_READY_FIELD_NUMBER = 8;
        public static Parser<IMFileNotify> PARSER = new AbstractParser<IMFileNotify>() {
            public IMFileNotify parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMFileNotify(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TASK_ID_FIELD_NUMBER = 5;
        public static final int TO_USER_ID_FIELD_NUMBER = 2;
        public static final int TRANS_MODE_FIELD_NUMBER = 7;
        private static final IMFileNotify defaultInstance = new IMFileNotify(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object fileName_;
        /* access modifiers changed from: private */
        public int fileSize_;
        /* access modifiers changed from: private */
        public int fromUserId_;
        /* access modifiers changed from: private */
        public List<IpAddr> ipAddrList_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int offlineReady_;
        /* access modifiers changed from: private */
        public Object taskId_;
        /* access modifiers changed from: private */
        public int toUserId_;
        /* access modifiers changed from: private */
        public FileType transMode_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMFileNotify, Builder> implements IMFileNotifyOrBuilder {
            private int bitField0_;
            private Object fileName_ = "";
            private int fileSize_;
            private int fromUserId_;
            private List<IpAddr> ipAddrList_ = Collections.emptyList();
            private int offlineReady_;
            private Object taskId_ = "";
            private int toUserId_;
            private FileType transMode_ = FileType.FILE_TYPE_ONLINE;

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
                this.fileName_ = "";
                this.bitField0_ &= -5;
                this.fileSize_ = 0;
                this.bitField0_ &= -9;
                this.taskId_ = "";
                this.bitField0_ &= -17;
                this.ipAddrList_ = Collections.emptyList();
                this.bitField0_ &= -33;
                this.transMode_ = FileType.FILE_TYPE_ONLINE;
                this.bitField0_ &= -65;
                this.offlineReady_ = 0;
                this.bitField0_ &= -129;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMFileNotify getDefaultInstanceForType() {
                return IMFileNotify.getDefaultInstance();
            }

            public IMFileNotify build() {
                IMFileNotify buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMFileNotify buildPartial() {
                int i = 1;
                IMFileNotify iMFileNotify = new IMFileNotify((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMFileNotify.fromUserId_ = this.fromUserId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMFileNotify.toUserId_ = this.toUserId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMFileNotify.fileName_ = this.fileName_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMFileNotify.fileSize_ = this.fileSize_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMFileNotify.taskId_ = this.taskId_;
                if ((this.bitField0_ & 32) == 32) {
                    this.ipAddrList_ = Collections.unmodifiableList(this.ipAddrList_);
                    this.bitField0_ &= -33;
                }
                iMFileNotify.ipAddrList_ = this.ipAddrList_;
                if ((i2 & 64) == 64) {
                    i |= 32;
                }
                iMFileNotify.transMode_ = this.transMode_;
                if ((i2 & 128) == 128) {
                    i |= 64;
                }
                iMFileNotify.offlineReady_ = this.offlineReady_;
                iMFileNotify.bitField0_ = i;
                return iMFileNotify;
            }

            public Builder mergeFrom(IMFileNotify iMFileNotify) {
                if (iMFileNotify != IMFileNotify.getDefaultInstance()) {
                    if (iMFileNotify.hasFromUserId()) {
                        setFromUserId(iMFileNotify.getFromUserId());
                    }
                    if (iMFileNotify.hasToUserId()) {
                        setToUserId(iMFileNotify.getToUserId());
                    }
                    if (iMFileNotify.hasFileName()) {
                        this.bitField0_ |= 4;
                        this.fileName_ = iMFileNotify.fileName_;
                    }
                    if (iMFileNotify.hasFileSize()) {
                        setFileSize(iMFileNotify.getFileSize());
                    }
                    if (iMFileNotify.hasTaskId()) {
                        this.bitField0_ |= 16;
                        this.taskId_ = iMFileNotify.taskId_;
                    }
                    if (!iMFileNotify.ipAddrList_.isEmpty()) {
                        if (this.ipAddrList_.isEmpty()) {
                            this.ipAddrList_ = iMFileNotify.ipAddrList_;
                            this.bitField0_ &= -33;
                        } else {
                            ensureIpAddrListIsMutable();
                            this.ipAddrList_.addAll(iMFileNotify.ipAddrList_);
                        }
                    }
                    if (iMFileNotify.hasTransMode()) {
                        setTransMode(iMFileNotify.getTransMode());
                    }
                    if (iMFileNotify.hasOfflineReady()) {
                        setOfflineReady(iMFileNotify.getOfflineReady());
                    }
                    setUnknownFields(getUnknownFields().concat(iMFileNotify.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasFromUserId() || !hasToUserId() || !hasFileName() || !hasFileSize() || !hasTaskId() || !hasTransMode() || !hasOfflineReady()) {
                    return false;
                }
                for (int i = 0; i < getIpAddrListCount(); i++) {
                    if (!getIpAddrList(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMFileNotify iMFileNotify;
                IMFileNotify iMFileNotify2;
                try {
                    IMFileNotify iMFileNotify3 = (IMFileNotify) IMFileNotify.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMFileNotify3 != null) {
                        mergeFrom(iMFileNotify3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMFileNotify2 = (IMFileNotify) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMFileNotify = iMFileNotify2;
                    th = th2;
                }
                if (iMFileNotify != null) {
                    mergeFrom(iMFileNotify);
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
                this.fileName_ = IMFileNotify.getDefaultInstance().getFileName();
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

            public boolean hasTaskId() {
                return (this.bitField0_ & 16) == 16;
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
                this.bitField0_ |= 16;
                this.taskId_ = str;
                return this;
            }

            public Builder clearTaskId() {
                this.bitField0_ &= -17;
                this.taskId_ = IMFileNotify.getDefaultInstance().getTaskId();
                return this;
            }

            public Builder setTaskIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.taskId_ = byteString;
                return this;
            }

            private void ensureIpAddrListIsMutable() {
                if ((this.bitField0_ & 32) != 32) {
                    this.ipAddrList_ = new ArrayList(this.ipAddrList_);
                    this.bitField0_ |= 32;
                }
            }

            public List<IpAddr> getIpAddrListList() {
                return Collections.unmodifiableList(this.ipAddrList_);
            }

            public int getIpAddrListCount() {
                return this.ipAddrList_.size();
            }

            public IpAddr getIpAddrList(int i) {
                return (IpAddr) this.ipAddrList_.get(i);
            }

            public Builder setIpAddrList(int i, IpAddr ipAddr) {
                if (ipAddr == null) {
                    throw new NullPointerException();
                }
                ensureIpAddrListIsMutable();
                this.ipAddrList_.set(i, ipAddr);
                return this;
            }

            public Builder setIpAddrList(int i, com.ifengyu.im.protobuf.IMBaseDefine.IpAddr.Builder builder) {
                ensureIpAddrListIsMutable();
                this.ipAddrList_.set(i, builder.build());
                return this;
            }

            public Builder addIpAddrList(IpAddr ipAddr) {
                if (ipAddr == null) {
                    throw new NullPointerException();
                }
                ensureIpAddrListIsMutable();
                this.ipAddrList_.add(ipAddr);
                return this;
            }

            public Builder addIpAddrList(int i, IpAddr ipAddr) {
                if (ipAddr == null) {
                    throw new NullPointerException();
                }
                ensureIpAddrListIsMutable();
                this.ipAddrList_.add(i, ipAddr);
                return this;
            }

            public Builder addIpAddrList(com.ifengyu.im.protobuf.IMBaseDefine.IpAddr.Builder builder) {
                ensureIpAddrListIsMutable();
                this.ipAddrList_.add(builder.build());
                return this;
            }

            public Builder addIpAddrList(int i, com.ifengyu.im.protobuf.IMBaseDefine.IpAddr.Builder builder) {
                ensureIpAddrListIsMutable();
                this.ipAddrList_.add(i, builder.build());
                return this;
            }

            public Builder addAllIpAddrList(Iterable<? extends IpAddr> iterable) {
                ensureIpAddrListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.ipAddrList_);
                return this;
            }

            public Builder clearIpAddrList() {
                this.ipAddrList_ = Collections.emptyList();
                this.bitField0_ &= -33;
                return this;
            }

            public Builder removeIpAddrList(int i) {
                ensureIpAddrListIsMutable();
                this.ipAddrList_.remove(i);
                return this;
            }

            public boolean hasTransMode() {
                return (this.bitField0_ & 64) == 64;
            }

            public FileType getTransMode() {
                return this.transMode_;
            }

            public Builder setTransMode(FileType fileType) {
                if (fileType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.transMode_ = fileType;
                return this;
            }

            public Builder clearTransMode() {
                this.bitField0_ &= -65;
                this.transMode_ = FileType.FILE_TYPE_ONLINE;
                return this;
            }

            public boolean hasOfflineReady() {
                return (this.bitField0_ & 128) == 128;
            }

            public int getOfflineReady() {
                return this.offlineReady_;
            }

            public Builder setOfflineReady(int i) {
                this.bitField0_ |= 128;
                this.offlineReady_ = i;
                return this;
            }

            public Builder clearOfflineReady() {
                this.bitField0_ &= -129;
                this.offlineReady_ = 0;
                return this;
            }
        }

        private IMFileNotify(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMFileNotify(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMFileNotify getDefaultInstance() {
            return defaultInstance;
        }

        public IMFileNotify getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMFileNotify(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.fromUserId_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.toUserId_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.fileName_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.fileSize_ = codedInputStream.readUInt32();
                            break;
                        case 42:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.taskId_ = readBytes2;
                            break;
                        case 50:
                            if (!(z2 & true)) {
                                this.ipAddrList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.ipAddrList_.add(codedInputStream.readMessage(IpAddr.PARSER, extensionRegistryLite));
                            break;
                        case 56:
                            int readEnum = codedInputStream.readEnum();
                            FileType valueOf = FileType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 32;
                                this.transMode_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 64:
                            this.bitField0_ |= 64;
                            this.offlineReady_ = codedInputStream.readUInt32();
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
                        this.ipAddrList_ = Collections.unmodifiableList(this.ipAddrList_);
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
                this.ipAddrList_ = Collections.unmodifiableList(this.ipAddrList_);
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

        public Parser<IMFileNotify> getParserForType() {
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

        public boolean hasTaskId() {
            return (this.bitField0_ & 16) == 16;
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

        public List<IpAddr> getIpAddrListList() {
            return this.ipAddrList_;
        }

        public List<? extends IpAddrOrBuilder> getIpAddrListOrBuilderList() {
            return this.ipAddrList_;
        }

        public int getIpAddrListCount() {
            return this.ipAddrList_.size();
        }

        public IpAddr getIpAddrList(int i) {
            return (IpAddr) this.ipAddrList_.get(i);
        }

        public IpAddrOrBuilder getIpAddrListOrBuilder(int i) {
            return (IpAddrOrBuilder) this.ipAddrList_.get(i);
        }

        public boolean hasTransMode() {
            return (this.bitField0_ & 32) == 32;
        }

        public FileType getTransMode() {
            return this.transMode_;
        }

        public boolean hasOfflineReady() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getOfflineReady() {
            return this.offlineReady_;
        }

        private void initFields() {
            this.fromUserId_ = 0;
            this.toUserId_ = 0;
            this.fileName_ = "";
            this.fileSize_ = 0;
            this.taskId_ = "";
            this.ipAddrList_ = Collections.emptyList();
            this.transMode_ = FileType.FILE_TYPE_ONLINE;
            this.offlineReady_ = 0;
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
            } else if (!hasFileName()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFileSize()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTaskId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTransMode()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasOfflineReady()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                for (int i = 0; i < getIpAddrListCount(); i++) {
                    if (!getIpAddrList(i).isInitialized()) {
                        this.memoizedIsInitialized = 0;
                        return false;
                    }
                }
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
                codedOutputStream.writeBytes(3, getFileNameBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.fileSize_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getTaskIdBytes());
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.ipAddrList_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(6, (MessageLite) this.ipAddrList_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeEnum(7, this.transMode_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt32(8, this.offlineReady_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
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
                i = CodedOutputStream.computeUInt32Size(1, this.fromUserId_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeUInt32Size(2, this.toUserId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i += CodedOutputStream.computeBytesSize(3, getFileNameBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i += CodedOutputStream.computeUInt32Size(4, this.fileSize_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i += CodedOutputStream.computeBytesSize(5, getTaskIdBytes());
            }
            while (true) {
                i2 = i;
                if (i3 >= this.ipAddrList_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(6, (MessageLite) this.ipAddrList_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeEnumSize(7, this.transMode_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeUInt32Size(8, this.offlineReady_);
            }
            int size = this.unknownFields.size() + i2;
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMFileNotify parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMFileNotify) PARSER.parseFrom(byteString);
        }

        public static IMFileNotify parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileNotify) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMFileNotify parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMFileNotify) PARSER.parseFrom(bArr);
        }

        public static IMFileNotify parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileNotify) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMFileNotify parseFrom(InputStream inputStream) throws IOException {
            return (IMFileNotify) PARSER.parseFrom(inputStream);
        }

        public static IMFileNotify parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileNotify) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileNotify parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMFileNotify) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMFileNotify parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileNotify) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileNotify parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMFileNotify) PARSER.parseFrom(codedInputStream);
        }

        public static IMFileNotify parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileNotify) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMFileNotify iMFileNotify) {
            return newBuilder().mergeFrom(iMFileNotify);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMFileNotifyOrBuilder extends MessageLiteOrBuilder {
        String getFileName();

        ByteString getFileNameBytes();

        int getFileSize();

        int getFromUserId();

        IpAddr getIpAddrList(int i);

        int getIpAddrListCount();

        List<IpAddr> getIpAddrListList();

        int getOfflineReady();

        String getTaskId();

        ByteString getTaskIdBytes();

        int getToUserId();

        FileType getTransMode();

        boolean hasFileName();

        boolean hasFileSize();

        boolean hasFromUserId();

        boolean hasOfflineReady();

        boolean hasTaskId();

        boolean hasToUserId();

        boolean hasTransMode();
    }

    public static final class IMFilePullDataReq extends GeneratedMessageLite implements IMFilePullDataReqOrBuilder {
        public static final int DATA_SIZE_FIELD_NUMBER = 5;
        public static final int OFFSET_FIELD_NUMBER = 4;
        public static Parser<IMFilePullDataReq> PARSER = new AbstractParser<IMFilePullDataReq>() {
            public IMFilePullDataReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMFilePullDataReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TASK_ID_FIELD_NUMBER = 1;
        public static final int TRANS_MODE_FIELD_NUMBER = 3;
        public static final int USER_ID_FIELD_NUMBER = 2;
        private static final IMFilePullDataReq defaultInstance = new IMFilePullDataReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int dataSize_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int offset_;
        /* access modifiers changed from: private */
        public Object taskId_;
        /* access modifiers changed from: private */
        public FileType transMode_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMFilePullDataReq, Builder> implements IMFilePullDataReqOrBuilder {
            private int bitField0_;
            private int dataSize_;
            private int offset_;
            private Object taskId_ = "";
            private FileType transMode_ = FileType.FILE_TYPE_ONLINE;
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
                this.taskId_ = "";
                this.bitField0_ &= -2;
                this.userId_ = 0;
                this.bitField0_ &= -3;
                this.transMode_ = FileType.FILE_TYPE_ONLINE;
                this.bitField0_ &= -5;
                this.offset_ = 0;
                this.bitField0_ &= -9;
                this.dataSize_ = 0;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMFilePullDataReq getDefaultInstanceForType() {
                return IMFilePullDataReq.getDefaultInstance();
            }

            public IMFilePullDataReq build() {
                IMFilePullDataReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMFilePullDataReq buildPartial() {
                int i = 1;
                IMFilePullDataReq iMFilePullDataReq = new IMFilePullDataReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMFilePullDataReq.taskId_ = this.taskId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMFilePullDataReq.userId_ = this.userId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMFilePullDataReq.transMode_ = this.transMode_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMFilePullDataReq.offset_ = this.offset_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMFilePullDataReq.dataSize_ = this.dataSize_;
                iMFilePullDataReq.bitField0_ = i;
                return iMFilePullDataReq;
            }

            public Builder mergeFrom(IMFilePullDataReq iMFilePullDataReq) {
                if (iMFilePullDataReq != IMFilePullDataReq.getDefaultInstance()) {
                    if (iMFilePullDataReq.hasTaskId()) {
                        this.bitField0_ |= 1;
                        this.taskId_ = iMFilePullDataReq.taskId_;
                    }
                    if (iMFilePullDataReq.hasUserId()) {
                        setUserId(iMFilePullDataReq.getUserId());
                    }
                    if (iMFilePullDataReq.hasTransMode()) {
                        setTransMode(iMFilePullDataReq.getTransMode());
                    }
                    if (iMFilePullDataReq.hasOffset()) {
                        setOffset(iMFilePullDataReq.getOffset());
                    }
                    if (iMFilePullDataReq.hasDataSize()) {
                        setDataSize(iMFilePullDataReq.getDataSize());
                    }
                    setUnknownFields(getUnknownFields().concat(iMFilePullDataReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasTaskId() && hasUserId() && hasTransMode() && hasOffset() && hasDataSize()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMFilePullDataReq iMFilePullDataReq;
                IMFilePullDataReq iMFilePullDataReq2;
                try {
                    IMFilePullDataReq iMFilePullDataReq3 = (IMFilePullDataReq) IMFilePullDataReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMFilePullDataReq3 != null) {
                        mergeFrom(iMFilePullDataReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMFilePullDataReq2 = (IMFilePullDataReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMFilePullDataReq = iMFilePullDataReq2;
                    th = th2;
                }
                if (iMFilePullDataReq != null) {
                    mergeFrom(iMFilePullDataReq);
                }
                throw th;
            }

            public boolean hasTaskId() {
                return (this.bitField0_ & 1) == 1;
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
                this.bitField0_ |= 1;
                this.taskId_ = str;
                return this;
            }

            public Builder clearTaskId() {
                this.bitField0_ &= -2;
                this.taskId_ = IMFilePullDataReq.getDefaultInstance().getTaskId();
                return this;
            }

            public Builder setTaskIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.taskId_ = byteString;
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

            public boolean hasTransMode() {
                return (this.bitField0_ & 4) == 4;
            }

            public FileType getTransMode() {
                return this.transMode_;
            }

            public Builder setTransMode(FileType fileType) {
                if (fileType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.transMode_ = fileType;
                return this;
            }

            public Builder clearTransMode() {
                this.bitField0_ &= -5;
                this.transMode_ = FileType.FILE_TYPE_ONLINE;
                return this;
            }

            public boolean hasOffset() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getOffset() {
                return this.offset_;
            }

            public Builder setOffset(int i) {
                this.bitField0_ |= 8;
                this.offset_ = i;
                return this;
            }

            public Builder clearOffset() {
                this.bitField0_ &= -9;
                this.offset_ = 0;
                return this;
            }

            public boolean hasDataSize() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getDataSize() {
                return this.dataSize_;
            }

            public Builder setDataSize(int i) {
                this.bitField0_ |= 16;
                this.dataSize_ = i;
                return this;
            }

            public Builder clearDataSize() {
                this.bitField0_ &= -17;
                this.dataSize_ = 0;
                return this;
            }
        }

        private IMFilePullDataReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMFilePullDataReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMFilePullDataReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMFilePullDataReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMFilePullDataReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.taskId_ = readBytes;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.userId_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            int readEnum = codedInputStream.readEnum();
                            FileType valueOf = FileType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 4;
                                this.transMode_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 32:
                            this.bitField0_ |= 8;
                            this.offset_ = codedInputStream.readUInt32();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.dataSize_ = codedInputStream.readUInt32();
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

        public Parser<IMFilePullDataReq> getParserForType() {
            return PARSER;
        }

        public boolean hasTaskId() {
            return (this.bitField0_ & 1) == 1;
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

        public boolean hasUserId() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasTransMode() {
            return (this.bitField0_ & 4) == 4;
        }

        public FileType getTransMode() {
            return this.transMode_;
        }

        public boolean hasOffset() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getOffset() {
            return this.offset_;
        }

        public boolean hasDataSize() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getDataSize() {
            return this.dataSize_;
        }

        private void initFields() {
            this.taskId_ = "";
            this.userId_ = 0;
            this.transMode_ = FileType.FILE_TYPE_ONLINE;
            this.offset_ = 0;
            this.dataSize_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasTaskId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTransMode()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasOffset()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasDataSize()) {
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
                codedOutputStream.writeBytes(1, getTaskIdBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.userId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(3, this.transMode_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.offset_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt32(5, this.dataSize_);
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getTaskIdBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.userId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeEnumSize(3, this.transMode_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.offset_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt32Size(5, this.dataSize_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMFilePullDataReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMFilePullDataReq) PARSER.parseFrom(byteString);
        }

        public static IMFilePullDataReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFilePullDataReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMFilePullDataReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMFilePullDataReq) PARSER.parseFrom(bArr);
        }

        public static IMFilePullDataReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFilePullDataReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMFilePullDataReq parseFrom(InputStream inputStream) throws IOException {
            return (IMFilePullDataReq) PARSER.parseFrom(inputStream);
        }

        public static IMFilePullDataReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFilePullDataReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMFilePullDataReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMFilePullDataReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMFilePullDataReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFilePullDataReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMFilePullDataReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMFilePullDataReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMFilePullDataReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFilePullDataReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMFilePullDataReq iMFilePullDataReq) {
            return newBuilder().mergeFrom(iMFilePullDataReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMFilePullDataReqOrBuilder extends MessageLiteOrBuilder {
        int getDataSize();

        int getOffset();

        String getTaskId();

        ByteString getTaskIdBytes();

        FileType getTransMode();

        int getUserId();

        boolean hasDataSize();

        boolean hasOffset();

        boolean hasTaskId();

        boolean hasTransMode();

        boolean hasUserId();
    }

    public static final class IMFilePullDataRsp extends GeneratedMessageLite implements IMFilePullDataRspOrBuilder {
        public static final int DATA_FIELD_NUMBER = 5;
        public static final int OFFSET_FIELD_NUMBER = 4;
        public static Parser<IMFilePullDataRsp> PARSER = new AbstractParser<IMFilePullDataRsp>() {
            public IMFilePullDataRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMFilePullDataRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RESULT_CODE_FIELD_NUMBER = 1;
        public static final int TASK_ID_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 3;
        private static final IMFilePullDataRsp defaultInstance = new IMFilePullDataRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString data_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int offset_;
        /* access modifiers changed from: private */
        public int resultCode_;
        /* access modifiers changed from: private */
        public Object taskId_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMFilePullDataRsp, Builder> implements IMFilePullDataRspOrBuilder {
            private int bitField0_;
            private ByteString data_ = ByteString.EMPTY;
            private int offset_;
            private int resultCode_;
            private Object taskId_ = "";
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
                this.taskId_ = "";
                this.bitField0_ &= -3;
                this.userId_ = 0;
                this.bitField0_ &= -5;
                this.offset_ = 0;
                this.bitField0_ &= -9;
                this.data_ = ByteString.EMPTY;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMFilePullDataRsp getDefaultInstanceForType() {
                return IMFilePullDataRsp.getDefaultInstance();
            }

            public IMFilePullDataRsp build() {
                IMFilePullDataRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMFilePullDataRsp buildPartial() {
                int i = 1;
                IMFilePullDataRsp iMFilePullDataRsp = new IMFilePullDataRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMFilePullDataRsp.resultCode_ = this.resultCode_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMFilePullDataRsp.taskId_ = this.taskId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMFilePullDataRsp.userId_ = this.userId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMFilePullDataRsp.offset_ = this.offset_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMFilePullDataRsp.data_ = this.data_;
                iMFilePullDataRsp.bitField0_ = i;
                return iMFilePullDataRsp;
            }

            public Builder mergeFrom(IMFilePullDataRsp iMFilePullDataRsp) {
                if (iMFilePullDataRsp != IMFilePullDataRsp.getDefaultInstance()) {
                    if (iMFilePullDataRsp.hasResultCode()) {
                        setResultCode(iMFilePullDataRsp.getResultCode());
                    }
                    if (iMFilePullDataRsp.hasTaskId()) {
                        this.bitField0_ |= 2;
                        this.taskId_ = iMFilePullDataRsp.taskId_;
                    }
                    if (iMFilePullDataRsp.hasUserId()) {
                        setUserId(iMFilePullDataRsp.getUserId());
                    }
                    if (iMFilePullDataRsp.hasOffset()) {
                        setOffset(iMFilePullDataRsp.getOffset());
                    }
                    if (iMFilePullDataRsp.hasData()) {
                        setData(iMFilePullDataRsp.getData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMFilePullDataRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasResultCode() && hasTaskId() && hasUserId() && hasOffset() && hasData()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMFilePullDataRsp iMFilePullDataRsp;
                IMFilePullDataRsp iMFilePullDataRsp2;
                try {
                    IMFilePullDataRsp iMFilePullDataRsp3 = (IMFilePullDataRsp) IMFilePullDataRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMFilePullDataRsp3 != null) {
                        mergeFrom(iMFilePullDataRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMFilePullDataRsp2 = (IMFilePullDataRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMFilePullDataRsp = iMFilePullDataRsp2;
                    th = th2;
                }
                if (iMFilePullDataRsp != null) {
                    mergeFrom(iMFilePullDataRsp);
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
                this.taskId_ = IMFilePullDataRsp.getDefaultInstance().getTaskId();
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

            public boolean hasOffset() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getOffset() {
                return this.offset_;
            }

            public Builder setOffset(int i) {
                this.bitField0_ |= 8;
                this.offset_ = i;
                return this;
            }

            public Builder clearOffset() {
                this.bitField0_ &= -9;
                this.offset_ = 0;
                return this;
            }

            public boolean hasData() {
                return (this.bitField0_ & 16) == 16;
            }

            public ByteString getData() {
                return this.data_;
            }

            public Builder setData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.data_ = byteString;
                return this;
            }

            public Builder clearData() {
                this.bitField0_ &= -17;
                this.data_ = IMFilePullDataRsp.getDefaultInstance().getData();
                return this;
            }
        }

        private IMFilePullDataRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMFilePullDataRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMFilePullDataRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMFilePullDataRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMFilePullDataRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.taskId_ = readBytes;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.userId_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.offset_ = codedInputStream.readUInt32();
                            break;
                        case 42:
                            this.bitField0_ |= 16;
                            this.data_ = codedInputStream.readBytes();
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

        public Parser<IMFilePullDataRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasResultCode() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getResultCode() {
            return this.resultCode_;
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

        public boolean hasUserId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasOffset() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getOffset() {
            return this.offset_;
        }

        public boolean hasData() {
            return (this.bitField0_ & 16) == 16;
        }

        public ByteString getData() {
            return this.data_;
        }

        private void initFields() {
            this.resultCode_ = 0;
            this.taskId_ = "";
            this.userId_ = 0;
            this.offset_ = 0;
            this.data_ = ByteString.EMPTY;
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
            } else if (!hasTaskId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasOffset()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasData()) {
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
                codedOutputStream.writeUInt32(1, this.resultCode_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getTaskIdBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.userId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.offset_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, this.data_);
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
                i2 += CodedOutputStream.computeBytesSize(2, getTaskIdBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.userId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.offset_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, this.data_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMFilePullDataRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMFilePullDataRsp) PARSER.parseFrom(byteString);
        }

        public static IMFilePullDataRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFilePullDataRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMFilePullDataRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMFilePullDataRsp) PARSER.parseFrom(bArr);
        }

        public static IMFilePullDataRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFilePullDataRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMFilePullDataRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMFilePullDataRsp) PARSER.parseFrom(inputStream);
        }

        public static IMFilePullDataRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFilePullDataRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMFilePullDataRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMFilePullDataRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMFilePullDataRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFilePullDataRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMFilePullDataRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMFilePullDataRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMFilePullDataRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFilePullDataRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMFilePullDataRsp iMFilePullDataRsp) {
            return newBuilder().mergeFrom(iMFilePullDataRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMFilePullDataRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getData();

        int getOffset();

        int getResultCode();

        String getTaskId();

        ByteString getTaskIdBytes();

        int getUserId();

        boolean hasData();

        boolean hasOffset();

        boolean hasResultCode();

        boolean hasTaskId();

        boolean hasUserId();
    }

    public static final class IMFileReq extends GeneratedMessageLite implements IMFileReqOrBuilder {
        public static final int FILE_NAME_FIELD_NUMBER = 3;
        public static final int FILE_SIZE_FIELD_NUMBER = 4;
        public static final int FROM_USER_ID_FIELD_NUMBER = 1;
        public static Parser<IMFileReq> PARSER = new AbstractParser<IMFileReq>() {
            public IMFileReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMFileReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TO_USER_ID_FIELD_NUMBER = 2;
        public static final int TRANS_MODE_FIELD_NUMBER = 5;
        private static final IMFileReq defaultInstance = new IMFileReq(true);
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
        public int toUserId_;
        /* access modifiers changed from: private */
        public FileType transMode_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMFileReq, Builder> implements IMFileReqOrBuilder {
            private int bitField0_;
            private Object fileName_ = "";
            private int fileSize_;
            private int fromUserId_;
            private int toUserId_;
            private FileType transMode_ = FileType.FILE_TYPE_ONLINE;

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
                this.fileName_ = "";
                this.bitField0_ &= -5;
                this.fileSize_ = 0;
                this.bitField0_ &= -9;
                this.transMode_ = FileType.FILE_TYPE_ONLINE;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMFileReq getDefaultInstanceForType() {
                return IMFileReq.getDefaultInstance();
            }

            public IMFileReq build() {
                IMFileReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMFileReq buildPartial() {
                int i = 1;
                IMFileReq iMFileReq = new IMFileReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMFileReq.fromUserId_ = this.fromUserId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMFileReq.toUserId_ = this.toUserId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMFileReq.fileName_ = this.fileName_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMFileReq.fileSize_ = this.fileSize_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMFileReq.transMode_ = this.transMode_;
                iMFileReq.bitField0_ = i;
                return iMFileReq;
            }

            public Builder mergeFrom(IMFileReq iMFileReq) {
                if (iMFileReq != IMFileReq.getDefaultInstance()) {
                    if (iMFileReq.hasFromUserId()) {
                        setFromUserId(iMFileReq.getFromUserId());
                    }
                    if (iMFileReq.hasToUserId()) {
                        setToUserId(iMFileReq.getToUserId());
                    }
                    if (iMFileReq.hasFileName()) {
                        this.bitField0_ |= 4;
                        this.fileName_ = iMFileReq.fileName_;
                    }
                    if (iMFileReq.hasFileSize()) {
                        setFileSize(iMFileReq.getFileSize());
                    }
                    if (iMFileReq.hasTransMode()) {
                        setTransMode(iMFileReq.getTransMode());
                    }
                    setUnknownFields(getUnknownFields().concat(iMFileReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasFromUserId() && hasToUserId() && hasFileName() && hasFileSize() && hasTransMode()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMFileReq iMFileReq;
                IMFileReq iMFileReq2;
                try {
                    IMFileReq iMFileReq3 = (IMFileReq) IMFileReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMFileReq3 != null) {
                        mergeFrom(iMFileReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMFileReq2 = (IMFileReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMFileReq = iMFileReq2;
                    th = th2;
                }
                if (iMFileReq != null) {
                    mergeFrom(iMFileReq);
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
                this.fileName_ = IMFileReq.getDefaultInstance().getFileName();
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

            public boolean hasTransMode() {
                return (this.bitField0_ & 16) == 16;
            }

            public FileType getTransMode() {
                return this.transMode_;
            }

            public Builder setTransMode(FileType fileType) {
                if (fileType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.transMode_ = fileType;
                return this;
            }

            public Builder clearTransMode() {
                this.bitField0_ &= -17;
                this.transMode_ = FileType.FILE_TYPE_ONLINE;
                return this;
            }
        }

        private IMFileReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMFileReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMFileReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMFileReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMFileReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.fileName_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.fileSize_ = codedInputStream.readUInt32();
                            break;
                        case 40:
                            int readEnum = codedInputStream.readEnum();
                            FileType valueOf = FileType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 16;
                                this.transMode_ = valueOf;
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

        public Parser<IMFileReq> getParserForType() {
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

        public boolean hasTransMode() {
            return (this.bitField0_ & 16) == 16;
        }

        public FileType getTransMode() {
            return this.transMode_;
        }

        private void initFields() {
            this.fromUserId_ = 0;
            this.toUserId_ = 0;
            this.fileName_ = "";
            this.fileSize_ = 0;
            this.transMode_ = FileType.FILE_TYPE_ONLINE;
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
            } else if (!hasFileName()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFileSize()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTransMode()) {
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
                codedOutputStream.writeBytes(3, getFileNameBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.fileSize_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeEnum(5, this.transMode_.getNumber());
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
                i2 += CodedOutputStream.computeBytesSize(3, getFileNameBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.fileSize_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeEnumSize(5, this.transMode_.getNumber());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMFileReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMFileReq) PARSER.parseFrom(byteString);
        }

        public static IMFileReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMFileReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMFileReq) PARSER.parseFrom(bArr);
        }

        public static IMFileReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMFileReq parseFrom(InputStream inputStream) throws IOException {
            return (IMFileReq) PARSER.parseFrom(inputStream);
        }

        public static IMFileReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMFileReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMFileReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMFileReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMFileReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMFileReq iMFileReq) {
            return newBuilder().mergeFrom(iMFileReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMFileReqOrBuilder extends MessageLiteOrBuilder {
        String getFileName();

        ByteString getFileNameBytes();

        int getFileSize();

        int getFromUserId();

        int getToUserId();

        FileType getTransMode();

        boolean hasFileName();

        boolean hasFileSize();

        boolean hasFromUserId();

        boolean hasToUserId();

        boolean hasTransMode();
    }

    public static final class IMFileRsp extends GeneratedMessageLite implements IMFileRspOrBuilder {
        public static final int FILE_NAME_FIELD_NUMBER = 4;
        public static final int FROM_USER_ID_FIELD_NUMBER = 2;
        public static final int IP_ADDR_LIST_FIELD_NUMBER = 6;
        public static Parser<IMFileRsp> PARSER = new AbstractParser<IMFileRsp>() {
            public IMFileRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMFileRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RESULT_CODE_FIELD_NUMBER = 1;
        public static final int TASK_ID_FIELD_NUMBER = 5;
        public static final int TO_USER_ID_FIELD_NUMBER = 3;
        public static final int TRANS_MODE_FIELD_NUMBER = 7;
        private static final IMFileRsp defaultInstance = new IMFileRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object fileName_;
        /* access modifiers changed from: private */
        public int fromUserId_;
        /* access modifiers changed from: private */
        public List<IpAddr> ipAddrList_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int resultCode_;
        /* access modifiers changed from: private */
        public Object taskId_;
        /* access modifiers changed from: private */
        public int toUserId_;
        /* access modifiers changed from: private */
        public FileType transMode_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMFileRsp, Builder> implements IMFileRspOrBuilder {
            private int bitField0_;
            private Object fileName_ = "";
            private int fromUserId_;
            private List<IpAddr> ipAddrList_ = Collections.emptyList();
            private int resultCode_;
            private Object taskId_ = "";
            private int toUserId_;
            private FileType transMode_ = FileType.FILE_TYPE_ONLINE;

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
                this.fromUserId_ = 0;
                this.bitField0_ &= -3;
                this.toUserId_ = 0;
                this.bitField0_ &= -5;
                this.fileName_ = "";
                this.bitField0_ &= -9;
                this.taskId_ = "";
                this.bitField0_ &= -17;
                this.ipAddrList_ = Collections.emptyList();
                this.bitField0_ &= -33;
                this.transMode_ = FileType.FILE_TYPE_ONLINE;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMFileRsp getDefaultInstanceForType() {
                return IMFileRsp.getDefaultInstance();
            }

            public IMFileRsp build() {
                IMFileRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMFileRsp buildPartial() {
                int i = 1;
                IMFileRsp iMFileRsp = new IMFileRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMFileRsp.resultCode_ = this.resultCode_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMFileRsp.fromUserId_ = this.fromUserId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMFileRsp.toUserId_ = this.toUserId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMFileRsp.fileName_ = this.fileName_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMFileRsp.taskId_ = this.taskId_;
                if ((this.bitField0_ & 32) == 32) {
                    this.ipAddrList_ = Collections.unmodifiableList(this.ipAddrList_);
                    this.bitField0_ &= -33;
                }
                iMFileRsp.ipAddrList_ = this.ipAddrList_;
                if ((i2 & 64) == 64) {
                    i |= 32;
                }
                iMFileRsp.transMode_ = this.transMode_;
                iMFileRsp.bitField0_ = i;
                return iMFileRsp;
            }

            public Builder mergeFrom(IMFileRsp iMFileRsp) {
                if (iMFileRsp != IMFileRsp.getDefaultInstance()) {
                    if (iMFileRsp.hasResultCode()) {
                        setResultCode(iMFileRsp.getResultCode());
                    }
                    if (iMFileRsp.hasFromUserId()) {
                        setFromUserId(iMFileRsp.getFromUserId());
                    }
                    if (iMFileRsp.hasToUserId()) {
                        setToUserId(iMFileRsp.getToUserId());
                    }
                    if (iMFileRsp.hasFileName()) {
                        this.bitField0_ |= 8;
                        this.fileName_ = iMFileRsp.fileName_;
                    }
                    if (iMFileRsp.hasTaskId()) {
                        this.bitField0_ |= 16;
                        this.taskId_ = iMFileRsp.taskId_;
                    }
                    if (!iMFileRsp.ipAddrList_.isEmpty()) {
                        if (this.ipAddrList_.isEmpty()) {
                            this.ipAddrList_ = iMFileRsp.ipAddrList_;
                            this.bitField0_ &= -33;
                        } else {
                            ensureIpAddrListIsMutable();
                            this.ipAddrList_.addAll(iMFileRsp.ipAddrList_);
                        }
                    }
                    if (iMFileRsp.hasTransMode()) {
                        setTransMode(iMFileRsp.getTransMode());
                    }
                    setUnknownFields(getUnknownFields().concat(iMFileRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasResultCode() || !hasFromUserId() || !hasToUserId() || !hasFileName() || !hasTaskId() || !hasTransMode()) {
                    return false;
                }
                for (int i = 0; i < getIpAddrListCount(); i++) {
                    if (!getIpAddrList(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMFileRsp iMFileRsp;
                IMFileRsp iMFileRsp2;
                try {
                    IMFileRsp iMFileRsp3 = (IMFileRsp) IMFileRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMFileRsp3 != null) {
                        mergeFrom(iMFileRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMFileRsp2 = (IMFileRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMFileRsp = iMFileRsp2;
                    th = th2;
                }
                if (iMFileRsp != null) {
                    mergeFrom(iMFileRsp);
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

            public boolean hasFromUserId() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getFromUserId() {
                return this.fromUserId_;
            }

            public Builder setFromUserId(int i) {
                this.bitField0_ |= 2;
                this.fromUserId_ = i;
                return this;
            }

            public Builder clearFromUserId() {
                this.bitField0_ &= -3;
                this.fromUserId_ = 0;
                return this;
            }

            public boolean hasToUserId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getToUserId() {
                return this.toUserId_;
            }

            public Builder setToUserId(int i) {
                this.bitField0_ |= 4;
                this.toUserId_ = i;
                return this;
            }

            public Builder clearToUserId() {
                this.bitField0_ &= -5;
                this.toUserId_ = 0;
                return this;
            }

            public boolean hasFileName() {
                return (this.bitField0_ & 8) == 8;
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
                this.bitField0_ |= 8;
                this.fileName_ = str;
                return this;
            }

            public Builder clearFileName() {
                this.bitField0_ &= -9;
                this.fileName_ = IMFileRsp.getDefaultInstance().getFileName();
                return this;
            }

            public Builder setFileNameBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.fileName_ = byteString;
                return this;
            }

            public boolean hasTaskId() {
                return (this.bitField0_ & 16) == 16;
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
                this.bitField0_ |= 16;
                this.taskId_ = str;
                return this;
            }

            public Builder clearTaskId() {
                this.bitField0_ &= -17;
                this.taskId_ = IMFileRsp.getDefaultInstance().getTaskId();
                return this;
            }

            public Builder setTaskIdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.taskId_ = byteString;
                return this;
            }

            private void ensureIpAddrListIsMutable() {
                if ((this.bitField0_ & 32) != 32) {
                    this.ipAddrList_ = new ArrayList(this.ipAddrList_);
                    this.bitField0_ |= 32;
                }
            }

            public List<IpAddr> getIpAddrListList() {
                return Collections.unmodifiableList(this.ipAddrList_);
            }

            public int getIpAddrListCount() {
                return this.ipAddrList_.size();
            }

            public IpAddr getIpAddrList(int i) {
                return (IpAddr) this.ipAddrList_.get(i);
            }

            public Builder setIpAddrList(int i, IpAddr ipAddr) {
                if (ipAddr == null) {
                    throw new NullPointerException();
                }
                ensureIpAddrListIsMutable();
                this.ipAddrList_.set(i, ipAddr);
                return this;
            }

            public Builder setIpAddrList(int i, com.ifengyu.im.protobuf.IMBaseDefine.IpAddr.Builder builder) {
                ensureIpAddrListIsMutable();
                this.ipAddrList_.set(i, builder.build());
                return this;
            }

            public Builder addIpAddrList(IpAddr ipAddr) {
                if (ipAddr == null) {
                    throw new NullPointerException();
                }
                ensureIpAddrListIsMutable();
                this.ipAddrList_.add(ipAddr);
                return this;
            }

            public Builder addIpAddrList(int i, IpAddr ipAddr) {
                if (ipAddr == null) {
                    throw new NullPointerException();
                }
                ensureIpAddrListIsMutable();
                this.ipAddrList_.add(i, ipAddr);
                return this;
            }

            public Builder addIpAddrList(com.ifengyu.im.protobuf.IMBaseDefine.IpAddr.Builder builder) {
                ensureIpAddrListIsMutable();
                this.ipAddrList_.add(builder.build());
                return this;
            }

            public Builder addIpAddrList(int i, com.ifengyu.im.protobuf.IMBaseDefine.IpAddr.Builder builder) {
                ensureIpAddrListIsMutable();
                this.ipAddrList_.add(i, builder.build());
                return this;
            }

            public Builder addAllIpAddrList(Iterable<? extends IpAddr> iterable) {
                ensureIpAddrListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.ipAddrList_);
                return this;
            }

            public Builder clearIpAddrList() {
                this.ipAddrList_ = Collections.emptyList();
                this.bitField0_ &= -33;
                return this;
            }

            public Builder removeIpAddrList(int i) {
                ensureIpAddrListIsMutable();
                this.ipAddrList_.remove(i);
                return this;
            }

            public boolean hasTransMode() {
                return (this.bitField0_ & 64) == 64;
            }

            public FileType getTransMode() {
                return this.transMode_;
            }

            public Builder setTransMode(FileType fileType) {
                if (fileType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.transMode_ = fileType;
                return this;
            }

            public Builder clearTransMode() {
                this.bitField0_ &= -65;
                this.transMode_ = FileType.FILE_TYPE_ONLINE;
                return this;
            }
        }

        private IMFileRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMFileRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMFileRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMFileRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMFileRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.resultCode_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.fromUserId_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.toUserId_ = codedInputStream.readUInt32();
                            break;
                        case 34:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.fileName_ = readBytes;
                            break;
                        case 42:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.taskId_ = readBytes2;
                            break;
                        case 50:
                            if (!(z2 & true)) {
                                this.ipAddrList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.ipAddrList_.add(codedInputStream.readMessage(IpAddr.PARSER, extensionRegistryLite));
                            break;
                        case 56:
                            int readEnum = codedInputStream.readEnum();
                            FileType valueOf = FileType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 32;
                                this.transMode_ = valueOf;
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
                    if (z2 & true) {
                        this.ipAddrList_ = Collections.unmodifiableList(this.ipAddrList_);
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
                this.ipAddrList_ = Collections.unmodifiableList(this.ipAddrList_);
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

        public Parser<IMFileRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasResultCode() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getResultCode() {
            return this.resultCode_;
        }

        public boolean hasFromUserId() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getFromUserId() {
            return this.fromUserId_;
        }

        public boolean hasToUserId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getToUserId() {
            return this.toUserId_;
        }

        public boolean hasFileName() {
            return (this.bitField0_ & 8) == 8;
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

        public boolean hasTaskId() {
            return (this.bitField0_ & 16) == 16;
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

        public List<IpAddr> getIpAddrListList() {
            return this.ipAddrList_;
        }

        public List<? extends IpAddrOrBuilder> getIpAddrListOrBuilderList() {
            return this.ipAddrList_;
        }

        public int getIpAddrListCount() {
            return this.ipAddrList_.size();
        }

        public IpAddr getIpAddrList(int i) {
            return (IpAddr) this.ipAddrList_.get(i);
        }

        public IpAddrOrBuilder getIpAddrListOrBuilder(int i) {
            return (IpAddrOrBuilder) this.ipAddrList_.get(i);
        }

        public boolean hasTransMode() {
            return (this.bitField0_ & 32) == 32;
        }

        public FileType getTransMode() {
            return this.transMode_;
        }

        private void initFields() {
            this.resultCode_ = 0;
            this.fromUserId_ = 0;
            this.toUserId_ = 0;
            this.fileName_ = "";
            this.taskId_ = "";
            this.ipAddrList_ = Collections.emptyList();
            this.transMode_ = FileType.FILE_TYPE_ONLINE;
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
            } else if (!hasFromUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasToUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFileName()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTaskId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTransMode()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                for (int i = 0; i < getIpAddrListCount(); i++) {
                    if (!getIpAddrList(i).isInitialized()) {
                        this.memoizedIsInitialized = 0;
                        return false;
                    }
                }
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.resultCode_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.fromUserId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.toUserId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getFileNameBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getTaskIdBytes());
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.ipAddrList_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(6, (MessageLite) this.ipAddrList_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeEnum(7, this.transMode_.getNumber());
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
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
                i = CodedOutputStream.computeUInt32Size(1, this.resultCode_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeUInt32Size(2, this.fromUserId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i += CodedOutputStream.computeUInt32Size(3, this.toUserId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i += CodedOutputStream.computeBytesSize(4, getFileNameBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i += CodedOutputStream.computeBytesSize(5, getTaskIdBytes());
            }
            while (true) {
                i2 = i;
                if (i3 >= this.ipAddrList_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(6, (MessageLite) this.ipAddrList_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeEnumSize(7, this.transMode_.getNumber());
            }
            int size = this.unknownFields.size() + i2;
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMFileRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMFileRsp) PARSER.parseFrom(byteString);
        }

        public static IMFileRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMFileRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMFileRsp) PARSER.parseFrom(bArr);
        }

        public static IMFileRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMFileRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMFileRsp) PARSER.parseFrom(inputStream);
        }

        public static IMFileRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMFileRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMFileRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMFileRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMFileRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMFileRsp iMFileRsp) {
            return newBuilder().mergeFrom(iMFileRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMFileRspOrBuilder extends MessageLiteOrBuilder {
        String getFileName();

        ByteString getFileNameBytes();

        int getFromUserId();

        IpAddr getIpAddrList(int i);

        int getIpAddrListCount();

        List<IpAddr> getIpAddrListList();

        int getResultCode();

        String getTaskId();

        ByteString getTaskIdBytes();

        int getToUserId();

        FileType getTransMode();

        boolean hasFileName();

        boolean hasFromUserId();

        boolean hasResultCode();

        boolean hasTaskId();

        boolean hasToUserId();

        boolean hasTransMode();
    }

    public static final class IMFileState extends GeneratedMessageLite implements IMFileStateOrBuilder {
        public static Parser<IMFileState> PARSER = new AbstractParser<IMFileState>() {
            public IMFileState parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMFileState(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int STATE_FIELD_NUMBER = 1;
        public static final int TASK_ID_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 3;
        private static final IMFileState defaultInstance = new IMFileState(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public ClientFileState state_;
        /* access modifiers changed from: private */
        public Object taskId_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMFileState, Builder> implements IMFileStateOrBuilder {
            private int bitField0_;
            private ClientFileState state_ = ClientFileState.CLIENT_FILE_PEER_READY;
            private Object taskId_ = "";
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
                this.state_ = ClientFileState.CLIENT_FILE_PEER_READY;
                this.bitField0_ &= -2;
                this.taskId_ = "";
                this.bitField0_ &= -3;
                this.userId_ = 0;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMFileState getDefaultInstanceForType() {
                return IMFileState.getDefaultInstance();
            }

            public IMFileState build() {
                IMFileState buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMFileState buildPartial() {
                int i = 1;
                IMFileState iMFileState = new IMFileState((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMFileState.state_ = this.state_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMFileState.taskId_ = this.taskId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMFileState.userId_ = this.userId_;
                iMFileState.bitField0_ = i;
                return iMFileState;
            }

            public Builder mergeFrom(IMFileState iMFileState) {
                if (iMFileState != IMFileState.getDefaultInstance()) {
                    if (iMFileState.hasState()) {
                        setState(iMFileState.getState());
                    }
                    if (iMFileState.hasTaskId()) {
                        this.bitField0_ |= 2;
                        this.taskId_ = iMFileState.taskId_;
                    }
                    if (iMFileState.hasUserId()) {
                        setUserId(iMFileState.getUserId());
                    }
                    setUnknownFields(getUnknownFields().concat(iMFileState.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasState() && hasTaskId() && hasUserId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMFileState iMFileState;
                IMFileState iMFileState2;
                try {
                    IMFileState iMFileState3 = (IMFileState) IMFileState.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMFileState3 != null) {
                        mergeFrom(iMFileState3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMFileState2 = (IMFileState) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMFileState = iMFileState2;
                    th = th2;
                }
                if (iMFileState != null) {
                    mergeFrom(iMFileState);
                }
                throw th;
            }

            public boolean hasState() {
                return (this.bitField0_ & 1) == 1;
            }

            public ClientFileState getState() {
                return this.state_;
            }

            public Builder setState(ClientFileState clientFileState) {
                if (clientFileState == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.state_ = clientFileState;
                return this;
            }

            public Builder clearState() {
                this.bitField0_ &= -2;
                this.state_ = ClientFileState.CLIENT_FILE_PEER_READY;
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
                this.taskId_ = IMFileState.getDefaultInstance().getTaskId();
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

        private IMFileState(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMFileState(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMFileState getDefaultInstance() {
            return defaultInstance;
        }

        public IMFileState getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMFileState(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            ClientFileState valueOf = ClientFileState.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 1;
                                this.state_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.taskId_ = readBytes;
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

        public Parser<IMFileState> getParserForType() {
            return PARSER;
        }

        public boolean hasState() {
            return (this.bitField0_ & 1) == 1;
        }

        public ClientFileState getState() {
            return this.state_;
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

        public boolean hasUserId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getUserId() {
            return this.userId_;
        }

        private void initFields() {
            this.state_ = ClientFileState.CLIENT_FILE_PEER_READY;
            this.taskId_ = "";
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
            if (!hasState()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasTaskId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasUserId()) {
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
                codedOutputStream.writeEnum(1, this.state_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getTaskIdBytes());
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
                i2 = 0 + CodedOutputStream.computeEnumSize(1, this.state_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getTaskIdBytes());
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

        public static IMFileState parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMFileState) PARSER.parseFrom(byteString);
        }

        public static IMFileState parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileState) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMFileState parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMFileState) PARSER.parseFrom(bArr);
        }

        public static IMFileState parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMFileState) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMFileState parseFrom(InputStream inputStream) throws IOException {
            return (IMFileState) PARSER.parseFrom(inputStream);
        }

        public static IMFileState parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileState) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileState parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMFileState) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMFileState parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileState) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMFileState parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMFileState) PARSER.parseFrom(codedInputStream);
        }

        public static IMFileState parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMFileState) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMFileState iMFileState) {
            return newBuilder().mergeFrom(iMFileState);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMFileStateOrBuilder extends MessageLiteOrBuilder {
        ClientFileState getState();

        String getTaskId();

        ByteString getTaskIdBytes();

        int getUserId();

        boolean hasState();

        boolean hasTaskId();

        boolean hasUserId();
    }

    private IMFile() {
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
