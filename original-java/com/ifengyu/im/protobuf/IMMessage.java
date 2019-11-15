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
import com.ifengyu.im.protobuf.IMBaseDefine.MsgInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.MsgInfoOrBuilder;
import com.ifengyu.im.protobuf.IMBaseDefine.MsgType;
import com.ifengyu.im.protobuf.IMBaseDefine.SessionType;
import com.ifengyu.im.protobuf.IMBaseDefine.UnreadInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.UnreadInfoOrBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class IMMessage {

    public static final class IMClientTimeReq extends GeneratedMessageLite implements IMClientTimeReqOrBuilder {
        public static Parser<IMClientTimeReq> PARSER = new AbstractParser<IMClientTimeReq>() {
            public IMClientTimeReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMClientTimeReq(codedInputStream, extensionRegistryLite);
            }
        };
        private static final IMClientTimeReq defaultInstance = new IMClientTimeReq(true);
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMClientTimeReq, Builder> implements IMClientTimeReqOrBuilder {
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

            public IMClientTimeReq getDefaultInstanceForType() {
                return IMClientTimeReq.getDefaultInstance();
            }

            public IMClientTimeReq build() {
                IMClientTimeReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMClientTimeReq buildPartial() {
                return new IMClientTimeReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
            }

            public Builder mergeFrom(IMClientTimeReq iMClientTimeReq) {
                if (iMClientTimeReq != IMClientTimeReq.getDefaultInstance()) {
                    setUnknownFields(getUnknownFields().concat(iMClientTimeReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMClientTimeReq iMClientTimeReq;
                IMClientTimeReq iMClientTimeReq2;
                try {
                    IMClientTimeReq iMClientTimeReq3 = (IMClientTimeReq) IMClientTimeReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMClientTimeReq3 != null) {
                        mergeFrom(iMClientTimeReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMClientTimeReq2 = (IMClientTimeReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMClientTimeReq = iMClientTimeReq2;
                    th = th2;
                }
                if (iMClientTimeReq != null) {
                    mergeFrom(iMClientTimeReq);
                }
                throw th;
            }
        }

        private IMClientTimeReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMClientTimeReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMClientTimeReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMClientTimeReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMClientTimeReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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

        public Parser<IMClientTimeReq> getParserForType() {
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

        public static IMClientTimeReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMClientTimeReq) PARSER.parseFrom(byteString);
        }

        public static IMClientTimeReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMClientTimeReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMClientTimeReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMClientTimeReq) PARSER.parseFrom(bArr);
        }

        public static IMClientTimeReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMClientTimeReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMClientTimeReq parseFrom(InputStream inputStream) throws IOException {
            return (IMClientTimeReq) PARSER.parseFrom(inputStream);
        }

        public static IMClientTimeReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMClientTimeReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMClientTimeReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMClientTimeReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMClientTimeReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMClientTimeReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMClientTimeReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMClientTimeReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMClientTimeReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMClientTimeReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMClientTimeReq iMClientTimeReq) {
            return newBuilder().mergeFrom(iMClientTimeReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMClientTimeReqOrBuilder extends MessageLiteOrBuilder {
    }

    public static final class IMClientTimeRsp extends GeneratedMessageLite implements IMClientTimeRspOrBuilder {
        public static Parser<IMClientTimeRsp> PARSER = new AbstractParser<IMClientTimeRsp>() {
            public IMClientTimeRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMClientTimeRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SERVER_TIME_FIELD_NUMBER = 1;
        private static final IMClientTimeRsp defaultInstance = new IMClientTimeRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int serverTime_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMClientTimeRsp, Builder> implements IMClientTimeRspOrBuilder {
            private int bitField0_;
            private int serverTime_;

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
                this.serverTime_ = 0;
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMClientTimeRsp getDefaultInstanceForType() {
                return IMClientTimeRsp.getDefaultInstance();
            }

            public IMClientTimeRsp build() {
                IMClientTimeRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMClientTimeRsp buildPartial() {
                int i = 1;
                IMClientTimeRsp iMClientTimeRsp = new IMClientTimeRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                iMClientTimeRsp.serverTime_ = this.serverTime_;
                iMClientTimeRsp.bitField0_ = i;
                return iMClientTimeRsp;
            }

            public Builder mergeFrom(IMClientTimeRsp iMClientTimeRsp) {
                if (iMClientTimeRsp != IMClientTimeRsp.getDefaultInstance()) {
                    if (iMClientTimeRsp.hasServerTime()) {
                        setServerTime(iMClientTimeRsp.getServerTime());
                    }
                    setUnknownFields(getUnknownFields().concat(iMClientTimeRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasServerTime()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMClientTimeRsp iMClientTimeRsp;
                IMClientTimeRsp iMClientTimeRsp2;
                try {
                    IMClientTimeRsp iMClientTimeRsp3 = (IMClientTimeRsp) IMClientTimeRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMClientTimeRsp3 != null) {
                        mergeFrom(iMClientTimeRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMClientTimeRsp2 = (IMClientTimeRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMClientTimeRsp = iMClientTimeRsp2;
                    th = th2;
                }
                if (iMClientTimeRsp != null) {
                    mergeFrom(iMClientTimeRsp);
                }
                throw th;
            }

            public boolean hasServerTime() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getServerTime() {
                return this.serverTime_;
            }

            public Builder setServerTime(int i) {
                this.bitField0_ |= 1;
                this.serverTime_ = i;
                return this;
            }

            public Builder clearServerTime() {
                this.bitField0_ &= -2;
                this.serverTime_ = 0;
                return this;
            }
        }

        private IMClientTimeRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMClientTimeRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMClientTimeRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMClientTimeRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMClientTimeRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.serverTime_ = codedInputStream.readUInt32();
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

        public Parser<IMClientTimeRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasServerTime() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getServerTime() {
            return this.serverTime_;
        }

        private void initFields() {
            this.serverTime_ = 0;
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
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.serverTime_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.serverTime_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMClientTimeRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMClientTimeRsp) PARSER.parseFrom(byteString);
        }

        public static IMClientTimeRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMClientTimeRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMClientTimeRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMClientTimeRsp) PARSER.parseFrom(bArr);
        }

        public static IMClientTimeRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMClientTimeRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMClientTimeRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMClientTimeRsp) PARSER.parseFrom(inputStream);
        }

        public static IMClientTimeRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMClientTimeRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMClientTimeRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMClientTimeRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMClientTimeRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMClientTimeRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMClientTimeRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMClientTimeRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMClientTimeRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMClientTimeRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMClientTimeRsp iMClientTimeRsp) {
            return newBuilder().mergeFrom(iMClientTimeRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMClientTimeRspOrBuilder extends MessageLiteOrBuilder {
        int getServerTime();

        boolean hasServerTime();
    }

    public static final class IMGetLatestMsgIdReq extends GeneratedMessageLite implements IMGetLatestMsgIdReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMGetLatestMsgIdReq> PARSER = new AbstractParser<IMGetLatestMsgIdReq>() {
            public IMGetLatestMsgIdReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMGetLatestMsgIdReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 3;
        public static final int SESSION_TYPE_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMGetLatestMsgIdReq defaultInstance = new IMGetLatestMsgIdReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public SessionType sessionType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMGetLatestMsgIdReq, Builder> implements IMGetLatestMsgIdReqOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int sessionId_;
            private SessionType sessionType_ = SessionType.SESSION_TYPE_SINGLE;
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
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                this.bitField0_ &= -3;
                this.sessionId_ = 0;
                this.bitField0_ &= -5;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMGetLatestMsgIdReq getDefaultInstanceForType() {
                return IMGetLatestMsgIdReq.getDefaultInstance();
            }

            public IMGetLatestMsgIdReq build() {
                IMGetLatestMsgIdReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMGetLatestMsgIdReq buildPartial() {
                int i = 1;
                IMGetLatestMsgIdReq iMGetLatestMsgIdReq = new IMGetLatestMsgIdReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMGetLatestMsgIdReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMGetLatestMsgIdReq.sessionType_ = this.sessionType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMGetLatestMsgIdReq.sessionId_ = this.sessionId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMGetLatestMsgIdReq.attachData_ = this.attachData_;
                iMGetLatestMsgIdReq.bitField0_ = i;
                return iMGetLatestMsgIdReq;
            }

            public Builder mergeFrom(IMGetLatestMsgIdReq iMGetLatestMsgIdReq) {
                if (iMGetLatestMsgIdReq != IMGetLatestMsgIdReq.getDefaultInstance()) {
                    if (iMGetLatestMsgIdReq.hasUserId()) {
                        setUserId(iMGetLatestMsgIdReq.getUserId());
                    }
                    if (iMGetLatestMsgIdReq.hasSessionType()) {
                        setSessionType(iMGetLatestMsgIdReq.getSessionType());
                    }
                    if (iMGetLatestMsgIdReq.hasSessionId()) {
                        setSessionId(iMGetLatestMsgIdReq.getSessionId());
                    }
                    if (iMGetLatestMsgIdReq.hasAttachData()) {
                        setAttachData(iMGetLatestMsgIdReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMGetLatestMsgIdReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasSessionType() && hasSessionId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMGetLatestMsgIdReq iMGetLatestMsgIdReq;
                IMGetLatestMsgIdReq iMGetLatestMsgIdReq2;
                try {
                    IMGetLatestMsgIdReq iMGetLatestMsgIdReq3 = (IMGetLatestMsgIdReq) IMGetLatestMsgIdReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMGetLatestMsgIdReq3 != null) {
                        mergeFrom(iMGetLatestMsgIdReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMGetLatestMsgIdReq2 = (IMGetLatestMsgIdReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMGetLatestMsgIdReq = iMGetLatestMsgIdReq2;
                    th = th2;
                }
                if (iMGetLatestMsgIdReq != null) {
                    mergeFrom(iMGetLatestMsgIdReq);
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

            public boolean hasSessionId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 4;
                this.sessionId_ = i;
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -5;
                this.sessionId_ = 0;
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
                this.attachData_ = IMGetLatestMsgIdReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMGetLatestMsgIdReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMGetLatestMsgIdReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMGetLatestMsgIdReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMGetLatestMsgIdReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMGetLatestMsgIdReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.sessionId_ = codedInputStream.readUInt32();
                            break;
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

        public Parser<IMGetLatestMsgIdReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasSessionType() {
            return (this.bitField0_ & 2) == 2;
        }

        public SessionType getSessionType() {
            return this.sessionType_;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 8) == 8;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
            this.sessionId_ = 0;
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
            } else if (!hasSessionType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSessionId()) {
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
                codedOutputStream.writeEnum(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.sessionId_);
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
                i2 += CodedOutputStream.computeEnumSize(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.sessionId_);
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

        public static IMGetLatestMsgIdReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMGetLatestMsgIdReq) PARSER.parseFrom(byteString);
        }

        public static IMGetLatestMsgIdReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetLatestMsgIdReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMGetLatestMsgIdReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMGetLatestMsgIdReq) PARSER.parseFrom(bArr);
        }

        public static IMGetLatestMsgIdReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetLatestMsgIdReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMGetLatestMsgIdReq parseFrom(InputStream inputStream) throws IOException {
            return (IMGetLatestMsgIdReq) PARSER.parseFrom(inputStream);
        }

        public static IMGetLatestMsgIdReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetLatestMsgIdReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetLatestMsgIdReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMGetLatestMsgIdReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMGetLatestMsgIdReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetLatestMsgIdReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetLatestMsgIdReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMGetLatestMsgIdReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMGetLatestMsgIdReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetLatestMsgIdReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMGetLatestMsgIdReq iMGetLatestMsgIdReq) {
            return newBuilder().mergeFrom(iMGetLatestMsgIdReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMGetLatestMsgIdReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getSessionId();

        SessionType getSessionType();

        int getUserId();

        boolean hasAttachData();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUserId();
    }

    public static final class IMGetLatestMsgIdRsp extends GeneratedMessageLite implements IMGetLatestMsgIdRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int LATEST_MSG_ID_FIELD_NUMBER = 4;
        public static Parser<IMGetLatestMsgIdRsp> PARSER = new AbstractParser<IMGetLatestMsgIdRsp>() {
            public IMGetLatestMsgIdRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMGetLatestMsgIdRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 3;
        public static final int SESSION_TYPE_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMGetLatestMsgIdRsp defaultInstance = new IMGetLatestMsgIdRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int latestMsgId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public SessionType sessionType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMGetLatestMsgIdRsp, Builder> implements IMGetLatestMsgIdRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int latestMsgId_;
            private int sessionId_;
            private SessionType sessionType_ = SessionType.SESSION_TYPE_SINGLE;
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
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                this.bitField0_ &= -3;
                this.sessionId_ = 0;
                this.bitField0_ &= -5;
                this.latestMsgId_ = 0;
                this.bitField0_ &= -9;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMGetLatestMsgIdRsp getDefaultInstanceForType() {
                return IMGetLatestMsgIdRsp.getDefaultInstance();
            }

            public IMGetLatestMsgIdRsp build() {
                IMGetLatestMsgIdRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMGetLatestMsgIdRsp buildPartial() {
                int i = 1;
                IMGetLatestMsgIdRsp iMGetLatestMsgIdRsp = new IMGetLatestMsgIdRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMGetLatestMsgIdRsp.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMGetLatestMsgIdRsp.sessionType_ = this.sessionType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMGetLatestMsgIdRsp.sessionId_ = this.sessionId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMGetLatestMsgIdRsp.latestMsgId_ = this.latestMsgId_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMGetLatestMsgIdRsp.attachData_ = this.attachData_;
                iMGetLatestMsgIdRsp.bitField0_ = i;
                return iMGetLatestMsgIdRsp;
            }

            public Builder mergeFrom(IMGetLatestMsgIdRsp iMGetLatestMsgIdRsp) {
                if (iMGetLatestMsgIdRsp != IMGetLatestMsgIdRsp.getDefaultInstance()) {
                    if (iMGetLatestMsgIdRsp.hasUserId()) {
                        setUserId(iMGetLatestMsgIdRsp.getUserId());
                    }
                    if (iMGetLatestMsgIdRsp.hasSessionType()) {
                        setSessionType(iMGetLatestMsgIdRsp.getSessionType());
                    }
                    if (iMGetLatestMsgIdRsp.hasSessionId()) {
                        setSessionId(iMGetLatestMsgIdRsp.getSessionId());
                    }
                    if (iMGetLatestMsgIdRsp.hasLatestMsgId()) {
                        setLatestMsgId(iMGetLatestMsgIdRsp.getLatestMsgId());
                    }
                    if (iMGetLatestMsgIdRsp.hasAttachData()) {
                        setAttachData(iMGetLatestMsgIdRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMGetLatestMsgIdRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasSessionType() && hasSessionId() && hasLatestMsgId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMGetLatestMsgIdRsp iMGetLatestMsgIdRsp;
                IMGetLatestMsgIdRsp iMGetLatestMsgIdRsp2;
                try {
                    IMGetLatestMsgIdRsp iMGetLatestMsgIdRsp3 = (IMGetLatestMsgIdRsp) IMGetLatestMsgIdRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMGetLatestMsgIdRsp3 != null) {
                        mergeFrom(iMGetLatestMsgIdRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMGetLatestMsgIdRsp2 = (IMGetLatestMsgIdRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMGetLatestMsgIdRsp = iMGetLatestMsgIdRsp2;
                    th = th2;
                }
                if (iMGetLatestMsgIdRsp != null) {
                    mergeFrom(iMGetLatestMsgIdRsp);
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

            public boolean hasSessionId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 4;
                this.sessionId_ = i;
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -5;
                this.sessionId_ = 0;
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
                this.attachData_ = IMGetLatestMsgIdRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMGetLatestMsgIdRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMGetLatestMsgIdRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMGetLatestMsgIdRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMGetLatestMsgIdRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMGetLatestMsgIdRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.sessionId_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.latestMsgId_ = codedInputStream.readUInt32();
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

        public Parser<IMGetLatestMsgIdRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasSessionType() {
            return (this.bitField0_ & 2) == 2;
        }

        public SessionType getSessionType() {
            return this.sessionType_;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public boolean hasLatestMsgId() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getLatestMsgId() {
            return this.latestMsgId_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 16) == 16;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
            this.sessionId_ = 0;
            this.latestMsgId_ = 0;
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
            } else if (!hasSessionType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSessionId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasLatestMsgId()) {
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
                codedOutputStream.writeEnum(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.sessionId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.latestMsgId_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeEnumSize(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.sessionId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.latestMsgId_);
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

        public static IMGetLatestMsgIdRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMGetLatestMsgIdRsp) PARSER.parseFrom(byteString);
        }

        public static IMGetLatestMsgIdRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetLatestMsgIdRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMGetLatestMsgIdRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMGetLatestMsgIdRsp) PARSER.parseFrom(bArr);
        }

        public static IMGetLatestMsgIdRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetLatestMsgIdRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMGetLatestMsgIdRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMGetLatestMsgIdRsp) PARSER.parseFrom(inputStream);
        }

        public static IMGetLatestMsgIdRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetLatestMsgIdRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetLatestMsgIdRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMGetLatestMsgIdRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMGetLatestMsgIdRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetLatestMsgIdRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetLatestMsgIdRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMGetLatestMsgIdRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMGetLatestMsgIdRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetLatestMsgIdRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMGetLatestMsgIdRsp iMGetLatestMsgIdRsp) {
            return newBuilder().mergeFrom(iMGetLatestMsgIdRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMGetLatestMsgIdRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getLatestMsgId();

        int getSessionId();

        SessionType getSessionType();

        int getUserId();

        boolean hasAttachData();

        boolean hasLatestMsgId();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUserId();
    }

    public static final class IMGetMsgByIdReq extends GeneratedMessageLite implements IMGetMsgByIdReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int MSG_ID_LIST_FIELD_NUMBER = 4;
        public static Parser<IMGetMsgByIdReq> PARSER = new AbstractParser<IMGetMsgByIdReq>() {
            public IMGetMsgByIdReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMGetMsgByIdReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 3;
        public static final int SESSION_TYPE_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMGetMsgByIdReq defaultInstance = new IMGetMsgByIdReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<Integer> msgIdList_;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public SessionType sessionType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMGetMsgByIdReq, Builder> implements IMGetMsgByIdReqOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private List<Integer> msgIdList_ = Collections.emptyList();
            private int sessionId_;
            private SessionType sessionType_ = SessionType.SESSION_TYPE_SINGLE;
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
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                this.bitField0_ &= -3;
                this.sessionId_ = 0;
                this.bitField0_ &= -5;
                this.msgIdList_ = Collections.emptyList();
                this.bitField0_ &= -9;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMGetMsgByIdReq getDefaultInstanceForType() {
                return IMGetMsgByIdReq.getDefaultInstance();
            }

            public IMGetMsgByIdReq build() {
                IMGetMsgByIdReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMGetMsgByIdReq buildPartial() {
                int i = 1;
                IMGetMsgByIdReq iMGetMsgByIdReq = new IMGetMsgByIdReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMGetMsgByIdReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMGetMsgByIdReq.sessionType_ = this.sessionType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMGetMsgByIdReq.sessionId_ = this.sessionId_;
                if ((this.bitField0_ & 8) == 8) {
                    this.msgIdList_ = Collections.unmodifiableList(this.msgIdList_);
                    this.bitField0_ &= -9;
                }
                iMGetMsgByIdReq.msgIdList_ = this.msgIdList_;
                if ((i2 & 16) == 16) {
                    i |= 8;
                }
                iMGetMsgByIdReq.attachData_ = this.attachData_;
                iMGetMsgByIdReq.bitField0_ = i;
                return iMGetMsgByIdReq;
            }

            public Builder mergeFrom(IMGetMsgByIdReq iMGetMsgByIdReq) {
                if (iMGetMsgByIdReq != IMGetMsgByIdReq.getDefaultInstance()) {
                    if (iMGetMsgByIdReq.hasUserId()) {
                        setUserId(iMGetMsgByIdReq.getUserId());
                    }
                    if (iMGetMsgByIdReq.hasSessionType()) {
                        setSessionType(iMGetMsgByIdReq.getSessionType());
                    }
                    if (iMGetMsgByIdReq.hasSessionId()) {
                        setSessionId(iMGetMsgByIdReq.getSessionId());
                    }
                    if (!iMGetMsgByIdReq.msgIdList_.isEmpty()) {
                        if (this.msgIdList_.isEmpty()) {
                            this.msgIdList_ = iMGetMsgByIdReq.msgIdList_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureMsgIdListIsMutable();
                            this.msgIdList_.addAll(iMGetMsgByIdReq.msgIdList_);
                        }
                    }
                    if (iMGetMsgByIdReq.hasAttachData()) {
                        setAttachData(iMGetMsgByIdReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMGetMsgByIdReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasSessionType() && hasSessionId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMGetMsgByIdReq iMGetMsgByIdReq;
                IMGetMsgByIdReq iMGetMsgByIdReq2;
                try {
                    IMGetMsgByIdReq iMGetMsgByIdReq3 = (IMGetMsgByIdReq) IMGetMsgByIdReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMGetMsgByIdReq3 != null) {
                        mergeFrom(iMGetMsgByIdReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMGetMsgByIdReq2 = (IMGetMsgByIdReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMGetMsgByIdReq = iMGetMsgByIdReq2;
                    th = th2;
                }
                if (iMGetMsgByIdReq != null) {
                    mergeFrom(iMGetMsgByIdReq);
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

            public boolean hasSessionId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 4;
                this.sessionId_ = i;
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -5;
                this.sessionId_ = 0;
                return this;
            }

            private void ensureMsgIdListIsMutable() {
                if ((this.bitField0_ & 8) != 8) {
                    this.msgIdList_ = new ArrayList(this.msgIdList_);
                    this.bitField0_ |= 8;
                }
            }

            public List<Integer> getMsgIdListList() {
                return Collections.unmodifiableList(this.msgIdList_);
            }

            public int getMsgIdListCount() {
                return this.msgIdList_.size();
            }

            public int getMsgIdList(int i) {
                return ((Integer) this.msgIdList_.get(i)).intValue();
            }

            public Builder setMsgIdList(int i, int i2) {
                ensureMsgIdListIsMutable();
                this.msgIdList_.set(i, Integer.valueOf(i2));
                return this;
            }

            public Builder addMsgIdList(int i) {
                ensureMsgIdListIsMutable();
                this.msgIdList_.add(Integer.valueOf(i));
                return this;
            }

            public Builder addAllMsgIdList(Iterable<? extends Integer> iterable) {
                ensureMsgIdListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.msgIdList_);
                return this;
            }

            public Builder clearMsgIdList() {
                this.msgIdList_ = Collections.emptyList();
                this.bitField0_ &= -9;
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
                this.attachData_ = IMGetMsgByIdReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMGetMsgByIdReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMGetMsgByIdReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMGetMsgByIdReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMGetMsgByIdReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMGetMsgByIdReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.sessionId_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            if (!(z2 & true)) {
                                this.msgIdList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.msgIdList_.add(Integer.valueOf(codedInputStream.readUInt32()));
                            break;
                        case 34:
                            int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            if (!(z2 & true) && codedInputStream.getBytesUntilLimit() > 0) {
                                this.msgIdList_ = new ArrayList();
                                z2 |= true;
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.msgIdList_.add(Integer.valueOf(codedInputStream.readUInt32()));
                            }
                            codedInputStream.popLimit(pushLimit);
                            break;
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
                    if (z2 & true) {
                        this.msgIdList_ = Collections.unmodifiableList(this.msgIdList_);
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
                this.msgIdList_ = Collections.unmodifiableList(this.msgIdList_);
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

        public Parser<IMGetMsgByIdReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasSessionType() {
            return (this.bitField0_ & 2) == 2;
        }

        public SessionType getSessionType() {
            return this.sessionType_;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public List<Integer> getMsgIdListList() {
            return this.msgIdList_;
        }

        public int getMsgIdListCount() {
            return this.msgIdList_.size();
        }

        public int getMsgIdList(int i) {
            return ((Integer) this.msgIdList_.get(i)).intValue();
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 8) == 8;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
            this.sessionId_ = 0;
            this.msgIdList_ = Collections.emptyList();
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
            } else if (!hasSessionType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSessionId()) {
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
                codedOutputStream.writeEnum(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.sessionId_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.msgIdList_.size()) {
                    break;
                }
                codedOutputStream.writeUInt32(4, ((Integer) this.msgIdList_.get(i2)).intValue());
                i = i2 + 1;
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(20, this.attachData_);
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
                i = CodedOutputStream.computeUInt32Size(1, this.userId_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeEnumSize(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 = i + CodedOutputStream.computeUInt32Size(3, this.sessionId_);
            } else {
                i2 = i;
            }
            int i5 = 0;
            while (i3 < this.msgIdList_.size()) {
                i3++;
                i5 = CodedOutputStream.computeUInt32SizeNoTag(((Integer) this.msgIdList_.get(i3)).intValue()) + i5;
            }
            int size = i2 + i5 + (getMsgIdListList().size() * 1);
            if ((this.bitField0_ & 8) == 8) {
                size += CodedOutputStream.computeBytesSize(20, this.attachData_);
            }
            int size2 = size + this.unknownFields.size();
            this.memoizedSerializedSize = size2;
            return size2;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMGetMsgByIdReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMGetMsgByIdReq) PARSER.parseFrom(byteString);
        }

        public static IMGetMsgByIdReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetMsgByIdReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMGetMsgByIdReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMGetMsgByIdReq) PARSER.parseFrom(bArr);
        }

        public static IMGetMsgByIdReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetMsgByIdReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMGetMsgByIdReq parseFrom(InputStream inputStream) throws IOException {
            return (IMGetMsgByIdReq) PARSER.parseFrom(inputStream);
        }

        public static IMGetMsgByIdReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetMsgByIdReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetMsgByIdReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMGetMsgByIdReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMGetMsgByIdReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetMsgByIdReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetMsgByIdReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMGetMsgByIdReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMGetMsgByIdReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetMsgByIdReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMGetMsgByIdReq iMGetMsgByIdReq) {
            return newBuilder().mergeFrom(iMGetMsgByIdReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMGetMsgByIdReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getMsgIdList(int i);

        int getMsgIdListCount();

        List<Integer> getMsgIdListList();

        int getSessionId();

        SessionType getSessionType();

        int getUserId();

        boolean hasAttachData();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUserId();
    }

    public static final class IMGetMsgByIdRsp extends GeneratedMessageLite implements IMGetMsgByIdRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int MSG_LIST_FIELD_NUMBER = 4;
        public static Parser<IMGetMsgByIdRsp> PARSER = new AbstractParser<IMGetMsgByIdRsp>() {
            public IMGetMsgByIdRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMGetMsgByIdRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 3;
        public static final int SESSION_TYPE_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMGetMsgByIdRsp defaultInstance = new IMGetMsgByIdRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<MsgInfo> msgList_;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public SessionType sessionType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMGetMsgByIdRsp, Builder> implements IMGetMsgByIdRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private List<MsgInfo> msgList_ = Collections.emptyList();
            private int sessionId_;
            private SessionType sessionType_ = SessionType.SESSION_TYPE_SINGLE;
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
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                this.bitField0_ &= -3;
                this.sessionId_ = 0;
                this.bitField0_ &= -5;
                this.msgList_ = Collections.emptyList();
                this.bitField0_ &= -9;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMGetMsgByIdRsp getDefaultInstanceForType() {
                return IMGetMsgByIdRsp.getDefaultInstance();
            }

            public IMGetMsgByIdRsp build() {
                IMGetMsgByIdRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMGetMsgByIdRsp buildPartial() {
                int i = 1;
                IMGetMsgByIdRsp iMGetMsgByIdRsp = new IMGetMsgByIdRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMGetMsgByIdRsp.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMGetMsgByIdRsp.sessionType_ = this.sessionType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMGetMsgByIdRsp.sessionId_ = this.sessionId_;
                if ((this.bitField0_ & 8) == 8) {
                    this.msgList_ = Collections.unmodifiableList(this.msgList_);
                    this.bitField0_ &= -9;
                }
                iMGetMsgByIdRsp.msgList_ = this.msgList_;
                if ((i2 & 16) == 16) {
                    i |= 8;
                }
                iMGetMsgByIdRsp.attachData_ = this.attachData_;
                iMGetMsgByIdRsp.bitField0_ = i;
                return iMGetMsgByIdRsp;
            }

            public Builder mergeFrom(IMGetMsgByIdRsp iMGetMsgByIdRsp) {
                if (iMGetMsgByIdRsp != IMGetMsgByIdRsp.getDefaultInstance()) {
                    if (iMGetMsgByIdRsp.hasUserId()) {
                        setUserId(iMGetMsgByIdRsp.getUserId());
                    }
                    if (iMGetMsgByIdRsp.hasSessionType()) {
                        setSessionType(iMGetMsgByIdRsp.getSessionType());
                    }
                    if (iMGetMsgByIdRsp.hasSessionId()) {
                        setSessionId(iMGetMsgByIdRsp.getSessionId());
                    }
                    if (!iMGetMsgByIdRsp.msgList_.isEmpty()) {
                        if (this.msgList_.isEmpty()) {
                            this.msgList_ = iMGetMsgByIdRsp.msgList_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureMsgListIsMutable();
                            this.msgList_.addAll(iMGetMsgByIdRsp.msgList_);
                        }
                    }
                    if (iMGetMsgByIdRsp.hasAttachData()) {
                        setAttachData(iMGetMsgByIdRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMGetMsgByIdRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasUserId() || !hasSessionType() || !hasSessionId()) {
                    return false;
                }
                for (int i = 0; i < getMsgListCount(); i++) {
                    if (!getMsgList(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMGetMsgByIdRsp iMGetMsgByIdRsp;
                IMGetMsgByIdRsp iMGetMsgByIdRsp2;
                try {
                    IMGetMsgByIdRsp iMGetMsgByIdRsp3 = (IMGetMsgByIdRsp) IMGetMsgByIdRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMGetMsgByIdRsp3 != null) {
                        mergeFrom(iMGetMsgByIdRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMGetMsgByIdRsp2 = (IMGetMsgByIdRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMGetMsgByIdRsp = iMGetMsgByIdRsp2;
                    th = th2;
                }
                if (iMGetMsgByIdRsp != null) {
                    mergeFrom(iMGetMsgByIdRsp);
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

            public boolean hasSessionId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 4;
                this.sessionId_ = i;
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -5;
                this.sessionId_ = 0;
                return this;
            }

            private void ensureMsgListIsMutable() {
                if ((this.bitField0_ & 8) != 8) {
                    this.msgList_ = new ArrayList(this.msgList_);
                    this.bitField0_ |= 8;
                }
            }

            public List<MsgInfo> getMsgListList() {
                return Collections.unmodifiableList(this.msgList_);
            }

            public int getMsgListCount() {
                return this.msgList_.size();
            }

            public MsgInfo getMsgList(int i) {
                return (MsgInfo) this.msgList_.get(i);
            }

            public Builder setMsgList(int i, MsgInfo msgInfo) {
                if (msgInfo == null) {
                    throw new NullPointerException();
                }
                ensureMsgListIsMutable();
                this.msgList_.set(i, msgInfo);
                return this;
            }

            public Builder setMsgList(int i, com.ifengyu.im.protobuf.IMBaseDefine.MsgInfo.Builder builder) {
                ensureMsgListIsMutable();
                this.msgList_.set(i, builder.build());
                return this;
            }

            public Builder addMsgList(MsgInfo msgInfo) {
                if (msgInfo == null) {
                    throw new NullPointerException();
                }
                ensureMsgListIsMutable();
                this.msgList_.add(msgInfo);
                return this;
            }

            public Builder addMsgList(int i, MsgInfo msgInfo) {
                if (msgInfo == null) {
                    throw new NullPointerException();
                }
                ensureMsgListIsMutable();
                this.msgList_.add(i, msgInfo);
                return this;
            }

            public Builder addMsgList(com.ifengyu.im.protobuf.IMBaseDefine.MsgInfo.Builder builder) {
                ensureMsgListIsMutable();
                this.msgList_.add(builder.build());
                return this;
            }

            public Builder addMsgList(int i, com.ifengyu.im.protobuf.IMBaseDefine.MsgInfo.Builder builder) {
                ensureMsgListIsMutable();
                this.msgList_.add(i, builder.build());
                return this;
            }

            public Builder addAllMsgList(Iterable<? extends MsgInfo> iterable) {
                ensureMsgListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.msgList_);
                return this;
            }

            public Builder clearMsgList() {
                this.msgList_ = Collections.emptyList();
                this.bitField0_ &= -9;
                return this;
            }

            public Builder removeMsgList(int i) {
                ensureMsgListIsMutable();
                this.msgList_.remove(i);
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
                this.attachData_ = IMGetMsgByIdRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMGetMsgByIdRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMGetMsgByIdRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMGetMsgByIdRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMGetMsgByIdRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMGetMsgByIdRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.sessionId_ = codedInputStream.readUInt32();
                            break;
                        case 34:
                            if (!(z2 & true)) {
                                this.msgList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.msgList_.add(codedInputStream.readMessage(MsgInfo.PARSER, extensionRegistryLite));
                            break;
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
                    if (z2 & true) {
                        this.msgList_ = Collections.unmodifiableList(this.msgList_);
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
                this.msgList_ = Collections.unmodifiableList(this.msgList_);
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

        public Parser<IMGetMsgByIdRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasSessionType() {
            return (this.bitField0_ & 2) == 2;
        }

        public SessionType getSessionType() {
            return this.sessionType_;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public List<MsgInfo> getMsgListList() {
            return this.msgList_;
        }

        public List<? extends MsgInfoOrBuilder> getMsgListOrBuilderList() {
            return this.msgList_;
        }

        public int getMsgListCount() {
            return this.msgList_.size();
        }

        public MsgInfo getMsgList(int i) {
            return (MsgInfo) this.msgList_.get(i);
        }

        public MsgInfoOrBuilder getMsgListOrBuilder(int i) {
            return (MsgInfoOrBuilder) this.msgList_.get(i);
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 8) == 8;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
            this.sessionId_ = 0;
            this.msgList_ = Collections.emptyList();
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
            } else if (!hasSessionType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSessionId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                for (int i = 0; i < getMsgListCount(); i++) {
                    if (!getMsgList(i).isInitialized()) {
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
                codedOutputStream.writeUInt32(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.sessionId_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.msgList_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(4, (MessageLite) this.msgList_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(20, this.attachData_);
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
                i = CodedOutputStream.computeUInt32Size(1, this.userId_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeEnumSize(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                i += CodedOutputStream.computeUInt32Size(3, this.sessionId_);
            }
            while (true) {
                i2 = i;
                if (i3 >= this.msgList_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(4, (MessageLite) this.msgList_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(20, this.attachData_);
            }
            int size = this.unknownFields.size() + i2;
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMGetMsgByIdRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMGetMsgByIdRsp) PARSER.parseFrom(byteString);
        }

        public static IMGetMsgByIdRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetMsgByIdRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMGetMsgByIdRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMGetMsgByIdRsp) PARSER.parseFrom(bArr);
        }

        public static IMGetMsgByIdRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetMsgByIdRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMGetMsgByIdRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMGetMsgByIdRsp) PARSER.parseFrom(inputStream);
        }

        public static IMGetMsgByIdRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetMsgByIdRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetMsgByIdRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMGetMsgByIdRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMGetMsgByIdRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetMsgByIdRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetMsgByIdRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMGetMsgByIdRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMGetMsgByIdRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetMsgByIdRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMGetMsgByIdRsp iMGetMsgByIdRsp) {
            return newBuilder().mergeFrom(iMGetMsgByIdRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMGetMsgByIdRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        MsgInfo getMsgList(int i);

        int getMsgListCount();

        List<MsgInfo> getMsgListList();

        int getSessionId();

        SessionType getSessionType();

        int getUserId();

        boolean hasAttachData();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUserId();
    }

    public static final class IMGetMsgListReq extends GeneratedMessageLite implements IMGetMsgListReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int MSG_CNT_FIELD_NUMBER = 5;
        public static final int MSG_ID_BEGIN_FIELD_NUMBER = 4;
        public static Parser<IMGetMsgListReq> PARSER = new AbstractParser<IMGetMsgListReq>() {
            public IMGetMsgListReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMGetMsgListReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 3;
        public static final int SESSION_TYPE_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMGetMsgListReq defaultInstance = new IMGetMsgListReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int msgCnt_;
        /* access modifiers changed from: private */
        public int msgIdBegin_;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public SessionType sessionType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMGetMsgListReq, Builder> implements IMGetMsgListReqOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int msgCnt_;
            private int msgIdBegin_;
            private int sessionId_;
            private SessionType sessionType_ = SessionType.SESSION_TYPE_SINGLE;
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
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                this.bitField0_ &= -3;
                this.sessionId_ = 0;
                this.bitField0_ &= -5;
                this.msgIdBegin_ = 0;
                this.bitField0_ &= -9;
                this.msgCnt_ = 0;
                this.bitField0_ &= -17;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMGetMsgListReq getDefaultInstanceForType() {
                return IMGetMsgListReq.getDefaultInstance();
            }

            public IMGetMsgListReq build() {
                IMGetMsgListReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMGetMsgListReq buildPartial() {
                int i = 1;
                IMGetMsgListReq iMGetMsgListReq = new IMGetMsgListReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMGetMsgListReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMGetMsgListReq.sessionType_ = this.sessionType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMGetMsgListReq.sessionId_ = this.sessionId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMGetMsgListReq.msgIdBegin_ = this.msgIdBegin_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMGetMsgListReq.msgCnt_ = this.msgCnt_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                iMGetMsgListReq.attachData_ = this.attachData_;
                iMGetMsgListReq.bitField0_ = i;
                return iMGetMsgListReq;
            }

            public Builder mergeFrom(IMGetMsgListReq iMGetMsgListReq) {
                if (iMGetMsgListReq != IMGetMsgListReq.getDefaultInstance()) {
                    if (iMGetMsgListReq.hasUserId()) {
                        setUserId(iMGetMsgListReq.getUserId());
                    }
                    if (iMGetMsgListReq.hasSessionType()) {
                        setSessionType(iMGetMsgListReq.getSessionType());
                    }
                    if (iMGetMsgListReq.hasSessionId()) {
                        setSessionId(iMGetMsgListReq.getSessionId());
                    }
                    if (iMGetMsgListReq.hasMsgIdBegin()) {
                        setMsgIdBegin(iMGetMsgListReq.getMsgIdBegin());
                    }
                    if (iMGetMsgListReq.hasMsgCnt()) {
                        setMsgCnt(iMGetMsgListReq.getMsgCnt());
                    }
                    if (iMGetMsgListReq.hasAttachData()) {
                        setAttachData(iMGetMsgListReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMGetMsgListReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasSessionType() && hasSessionId() && hasMsgIdBegin() && hasMsgCnt()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMGetMsgListReq iMGetMsgListReq;
                IMGetMsgListReq iMGetMsgListReq2;
                try {
                    IMGetMsgListReq iMGetMsgListReq3 = (IMGetMsgListReq) IMGetMsgListReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMGetMsgListReq3 != null) {
                        mergeFrom(iMGetMsgListReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMGetMsgListReq2 = (IMGetMsgListReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMGetMsgListReq = iMGetMsgListReq2;
                    th = th2;
                }
                if (iMGetMsgListReq != null) {
                    mergeFrom(iMGetMsgListReq);
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

            public boolean hasSessionId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 4;
                this.sessionId_ = i;
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -5;
                this.sessionId_ = 0;
                return this;
            }

            public boolean hasMsgIdBegin() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getMsgIdBegin() {
                return this.msgIdBegin_;
            }

            public Builder setMsgIdBegin(int i) {
                this.bitField0_ |= 8;
                this.msgIdBegin_ = i;
                return this;
            }

            public Builder clearMsgIdBegin() {
                this.bitField0_ &= -9;
                this.msgIdBegin_ = 0;
                return this;
            }

            public boolean hasMsgCnt() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getMsgCnt() {
                return this.msgCnt_;
            }

            public Builder setMsgCnt(int i) {
                this.bitField0_ |= 16;
                this.msgCnt_ = i;
                return this;
            }

            public Builder clearMsgCnt() {
                this.bitField0_ &= -17;
                this.msgCnt_ = 0;
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -33;
                this.attachData_ = IMGetMsgListReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMGetMsgListReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMGetMsgListReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMGetMsgListReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMGetMsgListReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMGetMsgListReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.sessionId_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.msgIdBegin_ = codedInputStream.readUInt32();
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.msgCnt_ = codedInputStream.readUInt32();
                            break;
                        case 162:
                            this.bitField0_ |= 32;
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

        public Parser<IMGetMsgListReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasSessionType() {
            return (this.bitField0_ & 2) == 2;
        }

        public SessionType getSessionType() {
            return this.sessionType_;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public boolean hasMsgIdBegin() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getMsgIdBegin() {
            return this.msgIdBegin_;
        }

        public boolean hasMsgCnt() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getMsgCnt() {
            return this.msgCnt_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 32) == 32;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
            this.sessionId_ = 0;
            this.msgIdBegin_ = 0;
            this.msgCnt_ = 0;
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
            } else if (!hasSessionType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSessionId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsgIdBegin()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsgCnt()) {
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
                codedOutputStream.writeEnum(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.sessionId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.msgIdBegin_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt32(5, this.msgCnt_);
            }
            if ((this.bitField0_ & 32) == 32) {
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
                i2 += CodedOutputStream.computeEnumSize(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.sessionId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.msgIdBegin_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt32Size(5, this.msgCnt_);
            }
            if ((this.bitField0_ & 32) == 32) {
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

        public static IMGetMsgListReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMGetMsgListReq) PARSER.parseFrom(byteString);
        }

        public static IMGetMsgListReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetMsgListReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMGetMsgListReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMGetMsgListReq) PARSER.parseFrom(bArr);
        }

        public static IMGetMsgListReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetMsgListReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMGetMsgListReq parseFrom(InputStream inputStream) throws IOException {
            return (IMGetMsgListReq) PARSER.parseFrom(inputStream);
        }

        public static IMGetMsgListReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetMsgListReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetMsgListReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMGetMsgListReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMGetMsgListReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetMsgListReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetMsgListReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMGetMsgListReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMGetMsgListReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetMsgListReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMGetMsgListReq iMGetMsgListReq) {
            return newBuilder().mergeFrom(iMGetMsgListReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMGetMsgListReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getMsgCnt();

        int getMsgIdBegin();

        int getSessionId();

        SessionType getSessionType();

        int getUserId();

        boolean hasAttachData();

        boolean hasMsgCnt();

        boolean hasMsgIdBegin();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUserId();
    }

    public static final class IMGetMsgListRsp extends GeneratedMessageLite implements IMGetMsgListRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int MSG_ID_BEGIN_FIELD_NUMBER = 4;
        public static final int MSG_LIST_FIELD_NUMBER = 5;
        public static Parser<IMGetMsgListRsp> PARSER = new AbstractParser<IMGetMsgListRsp>() {
            public IMGetMsgListRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMGetMsgListRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 3;
        public static final int SESSION_TYPE_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMGetMsgListRsp defaultInstance = new IMGetMsgListRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int msgIdBegin_;
        /* access modifiers changed from: private */
        public List<MsgInfo> msgList_;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public SessionType sessionType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMGetMsgListRsp, Builder> implements IMGetMsgListRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int msgIdBegin_;
            private List<MsgInfo> msgList_ = Collections.emptyList();
            private int sessionId_;
            private SessionType sessionType_ = SessionType.SESSION_TYPE_SINGLE;
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
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                this.bitField0_ &= -3;
                this.sessionId_ = 0;
                this.bitField0_ &= -5;
                this.msgIdBegin_ = 0;
                this.bitField0_ &= -9;
                this.msgList_ = Collections.emptyList();
                this.bitField0_ &= -17;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMGetMsgListRsp getDefaultInstanceForType() {
                return IMGetMsgListRsp.getDefaultInstance();
            }

            public IMGetMsgListRsp build() {
                IMGetMsgListRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMGetMsgListRsp buildPartial() {
                int i = 1;
                IMGetMsgListRsp iMGetMsgListRsp = new IMGetMsgListRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMGetMsgListRsp.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMGetMsgListRsp.sessionType_ = this.sessionType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMGetMsgListRsp.sessionId_ = this.sessionId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMGetMsgListRsp.msgIdBegin_ = this.msgIdBegin_;
                if ((this.bitField0_ & 16) == 16) {
                    this.msgList_ = Collections.unmodifiableList(this.msgList_);
                    this.bitField0_ &= -17;
                }
                iMGetMsgListRsp.msgList_ = this.msgList_;
                if ((i2 & 32) == 32) {
                    i |= 16;
                }
                iMGetMsgListRsp.attachData_ = this.attachData_;
                iMGetMsgListRsp.bitField0_ = i;
                return iMGetMsgListRsp;
            }

            public Builder mergeFrom(IMGetMsgListRsp iMGetMsgListRsp) {
                if (iMGetMsgListRsp != IMGetMsgListRsp.getDefaultInstance()) {
                    if (iMGetMsgListRsp.hasUserId()) {
                        setUserId(iMGetMsgListRsp.getUserId());
                    }
                    if (iMGetMsgListRsp.hasSessionType()) {
                        setSessionType(iMGetMsgListRsp.getSessionType());
                    }
                    if (iMGetMsgListRsp.hasSessionId()) {
                        setSessionId(iMGetMsgListRsp.getSessionId());
                    }
                    if (iMGetMsgListRsp.hasMsgIdBegin()) {
                        setMsgIdBegin(iMGetMsgListRsp.getMsgIdBegin());
                    }
                    if (!iMGetMsgListRsp.msgList_.isEmpty()) {
                        if (this.msgList_.isEmpty()) {
                            this.msgList_ = iMGetMsgListRsp.msgList_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureMsgListIsMutable();
                            this.msgList_.addAll(iMGetMsgListRsp.msgList_);
                        }
                    }
                    if (iMGetMsgListRsp.hasAttachData()) {
                        setAttachData(iMGetMsgListRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMGetMsgListRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasUserId() || !hasSessionType() || !hasSessionId() || !hasMsgIdBegin()) {
                    return false;
                }
                for (int i = 0; i < getMsgListCount(); i++) {
                    if (!getMsgList(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMGetMsgListRsp iMGetMsgListRsp;
                IMGetMsgListRsp iMGetMsgListRsp2;
                try {
                    IMGetMsgListRsp iMGetMsgListRsp3 = (IMGetMsgListRsp) IMGetMsgListRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMGetMsgListRsp3 != null) {
                        mergeFrom(iMGetMsgListRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMGetMsgListRsp2 = (IMGetMsgListRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMGetMsgListRsp = iMGetMsgListRsp2;
                    th = th2;
                }
                if (iMGetMsgListRsp != null) {
                    mergeFrom(iMGetMsgListRsp);
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

            public boolean hasSessionId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 4;
                this.sessionId_ = i;
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -5;
                this.sessionId_ = 0;
                return this;
            }

            public boolean hasMsgIdBegin() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getMsgIdBegin() {
                return this.msgIdBegin_;
            }

            public Builder setMsgIdBegin(int i) {
                this.bitField0_ |= 8;
                this.msgIdBegin_ = i;
                return this;
            }

            public Builder clearMsgIdBegin() {
                this.bitField0_ &= -9;
                this.msgIdBegin_ = 0;
                return this;
            }

            private void ensureMsgListIsMutable() {
                if ((this.bitField0_ & 16) != 16) {
                    this.msgList_ = new ArrayList(this.msgList_);
                    this.bitField0_ |= 16;
                }
            }

            public List<MsgInfo> getMsgListList() {
                return Collections.unmodifiableList(this.msgList_);
            }

            public int getMsgListCount() {
                return this.msgList_.size();
            }

            public MsgInfo getMsgList(int i) {
                return (MsgInfo) this.msgList_.get(i);
            }

            public Builder setMsgList(int i, MsgInfo msgInfo) {
                if (msgInfo == null) {
                    throw new NullPointerException();
                }
                ensureMsgListIsMutable();
                this.msgList_.set(i, msgInfo);
                return this;
            }

            public Builder setMsgList(int i, com.ifengyu.im.protobuf.IMBaseDefine.MsgInfo.Builder builder) {
                ensureMsgListIsMutable();
                this.msgList_.set(i, builder.build());
                return this;
            }

            public Builder addMsgList(MsgInfo msgInfo) {
                if (msgInfo == null) {
                    throw new NullPointerException();
                }
                ensureMsgListIsMutable();
                this.msgList_.add(msgInfo);
                return this;
            }

            public Builder addMsgList(int i, MsgInfo msgInfo) {
                if (msgInfo == null) {
                    throw new NullPointerException();
                }
                ensureMsgListIsMutable();
                this.msgList_.add(i, msgInfo);
                return this;
            }

            public Builder addMsgList(com.ifengyu.im.protobuf.IMBaseDefine.MsgInfo.Builder builder) {
                ensureMsgListIsMutable();
                this.msgList_.add(builder.build());
                return this;
            }

            public Builder addMsgList(int i, com.ifengyu.im.protobuf.IMBaseDefine.MsgInfo.Builder builder) {
                ensureMsgListIsMutable();
                this.msgList_.add(i, builder.build());
                return this;
            }

            public Builder addAllMsgList(Iterable<? extends MsgInfo> iterable) {
                ensureMsgListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.msgList_);
                return this;
            }

            public Builder clearMsgList() {
                this.msgList_ = Collections.emptyList();
                this.bitField0_ &= -17;
                return this;
            }

            public Builder removeMsgList(int i) {
                ensureMsgListIsMutable();
                this.msgList_.remove(i);
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -33;
                this.attachData_ = IMGetMsgListRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMGetMsgListRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMGetMsgListRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMGetMsgListRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMGetMsgListRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMGetMsgListRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.sessionId_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.msgIdBegin_ = codedInputStream.readUInt32();
                            break;
                        case 42:
                            if (!(z2 & true)) {
                                this.msgList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.msgList_.add(codedInputStream.readMessage(MsgInfo.PARSER, extensionRegistryLite));
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
                    if (z2 & true) {
                        this.msgList_ = Collections.unmodifiableList(this.msgList_);
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
                this.msgList_ = Collections.unmodifiableList(this.msgList_);
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

        public Parser<IMGetMsgListRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasSessionType() {
            return (this.bitField0_ & 2) == 2;
        }

        public SessionType getSessionType() {
            return this.sessionType_;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public boolean hasMsgIdBegin() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getMsgIdBegin() {
            return this.msgIdBegin_;
        }

        public List<MsgInfo> getMsgListList() {
            return this.msgList_;
        }

        public List<? extends MsgInfoOrBuilder> getMsgListOrBuilderList() {
            return this.msgList_;
        }

        public int getMsgListCount() {
            return this.msgList_.size();
        }

        public MsgInfo getMsgList(int i) {
            return (MsgInfo) this.msgList_.get(i);
        }

        public MsgInfoOrBuilder getMsgListOrBuilder(int i) {
            return (MsgInfoOrBuilder) this.msgList_.get(i);
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 16) == 16;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
            this.sessionId_ = 0;
            this.msgIdBegin_ = 0;
            this.msgList_ = Collections.emptyList();
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
            } else if (!hasSessionType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSessionId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsgIdBegin()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                for (int i = 0; i < getMsgListCount(); i++) {
                    if (!getMsgList(i).isInitialized()) {
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
                codedOutputStream.writeUInt32(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.sessionId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.msgIdBegin_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.msgList_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(5, (MessageLite) this.msgList_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(20, this.attachData_);
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
                i = CodedOutputStream.computeUInt32Size(1, this.userId_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeEnumSize(2, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                i += CodedOutputStream.computeUInt32Size(3, this.sessionId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i += CodedOutputStream.computeUInt32Size(4, this.msgIdBegin_);
            }
            while (true) {
                i2 = i;
                if (i3 >= this.msgList_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(5, (MessageLite) this.msgList_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(20, this.attachData_);
            }
            int size = this.unknownFields.size() + i2;
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMGetMsgListRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMGetMsgListRsp) PARSER.parseFrom(byteString);
        }

        public static IMGetMsgListRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetMsgListRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMGetMsgListRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMGetMsgListRsp) PARSER.parseFrom(bArr);
        }

        public static IMGetMsgListRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetMsgListRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMGetMsgListRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMGetMsgListRsp) PARSER.parseFrom(inputStream);
        }

        public static IMGetMsgListRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetMsgListRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetMsgListRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMGetMsgListRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMGetMsgListRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetMsgListRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetMsgListRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMGetMsgListRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMGetMsgListRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetMsgListRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMGetMsgListRsp iMGetMsgListRsp) {
            return newBuilder().mergeFrom(iMGetMsgListRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMGetMsgListRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getMsgIdBegin();

        MsgInfo getMsgList(int i);

        int getMsgListCount();

        List<MsgInfo> getMsgListList();

        int getSessionId();

        SessionType getSessionType();

        int getUserId();

        boolean hasAttachData();

        boolean hasMsgIdBegin();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUserId();
    }

    public static final class IMMsgData extends GeneratedMessageLite implements IMMsgDataOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int CREATE_TIME_FIELD_NUMBER = 4;
        public static final int FROM_USER_ID_FIELD_NUMBER = 1;
        public static final int MSG_DATA_FIELD_NUMBER = 6;
        public static final int MSG_ID_FIELD_NUMBER = 3;
        public static final int MSG_TYPE_FIELD_NUMBER = 5;
        public static Parser<IMMsgData> PARSER = new AbstractParser<IMMsgData>() {
            public IMMsgData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMMsgData(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TO_SESSION_ID_FIELD_NUMBER = 2;
        private static final IMMsgData defaultInstance = new IMMsgData(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int createTime_;
        /* access modifiers changed from: private */
        public int fromUserId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public ByteString msgData_;
        /* access modifiers changed from: private */
        public int msgId_;
        /* access modifiers changed from: private */
        public MsgType msgType_;
        /* access modifiers changed from: private */
        public int toSessionId_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMMsgData, Builder> implements IMMsgDataOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int createTime_;
            private int fromUserId_;
            private ByteString msgData_ = ByteString.EMPTY;
            private int msgId_;
            private MsgType msgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
            private int toSessionId_;

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
                this.toSessionId_ = 0;
                this.bitField0_ &= -3;
                this.msgId_ = 0;
                this.bitField0_ &= -5;
                this.createTime_ = 0;
                this.bitField0_ &= -9;
                this.msgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
                this.bitField0_ &= -17;
                this.msgData_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMMsgData getDefaultInstanceForType() {
                return IMMsgData.getDefaultInstance();
            }

            public IMMsgData build() {
                IMMsgData buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMMsgData buildPartial() {
                int i = 1;
                IMMsgData iMMsgData = new IMMsgData((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMMsgData.fromUserId_ = this.fromUserId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMMsgData.toSessionId_ = this.toSessionId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMMsgData.msgId_ = this.msgId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMMsgData.createTime_ = this.createTime_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMMsgData.msgType_ = this.msgType_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                iMMsgData.msgData_ = this.msgData_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                iMMsgData.attachData_ = this.attachData_;
                iMMsgData.bitField0_ = i;
                return iMMsgData;
            }

            public Builder mergeFrom(IMMsgData iMMsgData) {
                if (iMMsgData != IMMsgData.getDefaultInstance()) {
                    if (iMMsgData.hasFromUserId()) {
                        setFromUserId(iMMsgData.getFromUserId());
                    }
                    if (iMMsgData.hasToSessionId()) {
                        setToSessionId(iMMsgData.getToSessionId());
                    }
                    if (iMMsgData.hasMsgId()) {
                        setMsgId(iMMsgData.getMsgId());
                    }
                    if (iMMsgData.hasCreateTime()) {
                        setCreateTime(iMMsgData.getCreateTime());
                    }
                    if (iMMsgData.hasMsgType()) {
                        setMsgType(iMMsgData.getMsgType());
                    }
                    if (iMMsgData.hasMsgData()) {
                        setMsgData(iMMsgData.getMsgData());
                    }
                    if (iMMsgData.hasAttachData()) {
                        setAttachData(iMMsgData.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMMsgData.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasFromUserId() && hasToSessionId() && hasMsgId() && hasCreateTime() && hasMsgType() && hasMsgData()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMMsgData iMMsgData;
                IMMsgData iMMsgData2;
                try {
                    IMMsgData iMMsgData3 = (IMMsgData) IMMsgData.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMMsgData3 != null) {
                        mergeFrom(iMMsgData3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMMsgData2 = (IMMsgData) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMMsgData = iMMsgData2;
                    th = th2;
                }
                if (iMMsgData != null) {
                    mergeFrom(iMMsgData);
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

            public boolean hasToSessionId() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getToSessionId() {
                return this.toSessionId_;
            }

            public Builder setToSessionId(int i) {
                this.bitField0_ |= 2;
                this.toSessionId_ = i;
                return this;
            }

            public Builder clearToSessionId() {
                this.bitField0_ &= -3;
                this.toSessionId_ = 0;
                return this;
            }

            public boolean hasMsgId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(int i) {
                this.bitField0_ |= 4;
                this.msgId_ = i;
                return this;
            }

            public Builder clearMsgId() {
                this.bitField0_ &= -5;
                this.msgId_ = 0;
                return this;
            }

            public boolean hasCreateTime() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getCreateTime() {
                return this.createTime_;
            }

            public Builder setCreateTime(int i) {
                this.bitField0_ |= 8;
                this.createTime_ = i;
                return this;
            }

            public Builder clearCreateTime() {
                this.bitField0_ &= -9;
                this.createTime_ = 0;
                return this;
            }

            public boolean hasMsgType() {
                return (this.bitField0_ & 16) == 16;
            }

            public MsgType getMsgType() {
                return this.msgType_;
            }

            public Builder setMsgType(MsgType msgType) {
                if (msgType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.msgType_ = msgType;
                return this;
            }

            public Builder clearMsgType() {
                this.bitField0_ &= -17;
                this.msgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
                return this;
            }

            public boolean hasMsgData() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getMsgData() {
                return this.msgData_;
            }

            public Builder setMsgData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.msgData_ = byteString;
                return this;
            }

            public Builder clearMsgData() {
                this.bitField0_ &= -33;
                this.msgData_ = IMMsgData.getDefaultInstance().getMsgData();
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
                this.attachData_ = IMMsgData.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMMsgData(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMMsgData(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMMsgData getDefaultInstance() {
            return defaultInstance;
        }

        public IMMsgData getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMMsgData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.toSessionId_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.msgId_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.createTime_ = codedInputStream.readUInt32();
                            break;
                        case 40:
                            int readEnum = codedInputStream.readEnum();
                            MsgType valueOf = MsgType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 16;
                                this.msgType_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 50:
                            this.bitField0_ |= 32;
                            this.msgData_ = codedInputStream.readBytes();
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

        public Parser<IMMsgData> getParserForType() {
            return PARSER;
        }

        public boolean hasFromUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getFromUserId() {
            return this.fromUserId_;
        }

        public boolean hasToSessionId() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getToSessionId() {
            return this.toSessionId_;
        }

        public boolean hasMsgId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getMsgId() {
            return this.msgId_;
        }

        public boolean hasCreateTime() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getCreateTime() {
            return this.createTime_;
        }

        public boolean hasMsgType() {
            return (this.bitField0_ & 16) == 16;
        }

        public MsgType getMsgType() {
            return this.msgType_;
        }

        public boolean hasMsgData() {
            return (this.bitField0_ & 32) == 32;
        }

        public ByteString getMsgData() {
            return this.msgData_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 64) == 64;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.fromUserId_ = 0;
            this.toSessionId_ = 0;
            this.msgId_ = 0;
            this.createTime_ = 0;
            this.msgType_ = MsgType.MSG_TYPE_SINGLE_TEXT;
            this.msgData_ = ByteString.EMPTY;
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
            if (!hasFromUserId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasToSessionId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsgId()) {
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
                codedOutputStream.writeUInt32(1, this.fromUserId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.toSessionId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.msgId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.createTime_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeEnum(5, this.msgType_.getNumber());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, this.msgData_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.fromUserId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.toSessionId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.msgId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.createTime_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeEnumSize(5, this.msgType_.getNumber());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(6, this.msgData_);
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

        public static IMMsgData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMMsgData) PARSER.parseFrom(byteString);
        }

        public static IMMsgData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMsgData) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMMsgData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMMsgData) PARSER.parseFrom(bArr);
        }

        public static IMMsgData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMsgData) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMMsgData parseFrom(InputStream inputStream) throws IOException {
            return (IMMsgData) PARSER.parseFrom(inputStream);
        }

        public static IMMsgData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgData) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMMsgData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMMsgData) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMMsgData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgData) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMMsgData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMMsgData) PARSER.parseFrom(codedInputStream);
        }

        public static IMMsgData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgData) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMMsgData iMMsgData) {
            return newBuilder().mergeFrom(iMMsgData);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public static final class IMMsgDataAck extends GeneratedMessageLite implements IMMsgDataAckOrBuilder {
        public static final int MSG_ID_FIELD_NUMBER = 3;
        public static Parser<IMMsgDataAck> PARSER = new AbstractParser<IMMsgDataAck>() {
            public IMMsgDataAck parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMMsgDataAck(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 2;
        public static final int SESSION_TYPE_FIELD_NUMBER = 4;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMMsgDataAck defaultInstance = new IMMsgDataAck(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int msgId_;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public SessionType sessionType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMMsgDataAck, Builder> implements IMMsgDataAckOrBuilder {
            private int bitField0_;
            private int msgId_;
            private int sessionId_;
            private SessionType sessionType_ = SessionType.SESSION_TYPE_SINGLE;
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
                this.sessionId_ = 0;
                this.bitField0_ &= -3;
                this.msgId_ = 0;
                this.bitField0_ &= -5;
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMMsgDataAck getDefaultInstanceForType() {
                return IMMsgDataAck.getDefaultInstance();
            }

            public IMMsgDataAck build() {
                IMMsgDataAck buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMMsgDataAck buildPartial() {
                int i = 1;
                IMMsgDataAck iMMsgDataAck = new IMMsgDataAck((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMMsgDataAck.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMMsgDataAck.sessionId_ = this.sessionId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMMsgDataAck.msgId_ = this.msgId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMMsgDataAck.sessionType_ = this.sessionType_;
                iMMsgDataAck.bitField0_ = i;
                return iMMsgDataAck;
            }

            public Builder mergeFrom(IMMsgDataAck iMMsgDataAck) {
                if (iMMsgDataAck != IMMsgDataAck.getDefaultInstance()) {
                    if (iMMsgDataAck.hasUserId()) {
                        setUserId(iMMsgDataAck.getUserId());
                    }
                    if (iMMsgDataAck.hasSessionId()) {
                        setSessionId(iMMsgDataAck.getSessionId());
                    }
                    if (iMMsgDataAck.hasMsgId()) {
                        setMsgId(iMMsgDataAck.getMsgId());
                    }
                    if (iMMsgDataAck.hasSessionType()) {
                        setSessionType(iMMsgDataAck.getSessionType());
                    }
                    setUnknownFields(getUnknownFields().concat(iMMsgDataAck.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasSessionId() && hasMsgId() && hasSessionType()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMMsgDataAck iMMsgDataAck;
                IMMsgDataAck iMMsgDataAck2;
                try {
                    IMMsgDataAck iMMsgDataAck3 = (IMMsgDataAck) IMMsgDataAck.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMMsgDataAck3 != null) {
                        mergeFrom(iMMsgDataAck3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMMsgDataAck2 = (IMMsgDataAck) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMMsgDataAck = iMMsgDataAck2;
                    th = th2;
                }
                if (iMMsgDataAck != null) {
                    mergeFrom(iMMsgDataAck);
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

            public boolean hasSessionId() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 2;
                this.sessionId_ = i;
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -3;
                this.sessionId_ = 0;
                return this;
            }

            public boolean hasMsgId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(int i) {
                this.bitField0_ |= 4;
                this.msgId_ = i;
                return this;
            }

            public Builder clearMsgId() {
                this.bitField0_ &= -5;
                this.msgId_ = 0;
                return this;
            }

            public boolean hasSessionType() {
                return (this.bitField0_ & 8) == 8;
            }

            public SessionType getSessionType() {
                return this.sessionType_;
            }

            public Builder setSessionType(SessionType sessionType) {
                if (sessionType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.sessionType_ = sessionType;
                return this;
            }

            public Builder clearSessionType() {
                this.bitField0_ &= -9;
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                return this;
            }
        }

        private IMMsgDataAck(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMMsgDataAck(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMMsgDataAck getDefaultInstance() {
            return defaultInstance;
        }

        public IMMsgDataAck getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMMsgDataAck(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.sessionId_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.msgId_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            int readEnum = codedInputStream.readEnum();
                            SessionType valueOf = SessionType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 8;
                                this.sessionType_ = valueOf;
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

        public Parser<IMMsgDataAck> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public boolean hasMsgId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getMsgId() {
            return this.msgId_;
        }

        public boolean hasSessionType() {
            return (this.bitField0_ & 8) == 8;
        }

        public SessionType getSessionType() {
            return this.sessionType_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.sessionId_ = 0;
            this.msgId_ = 0;
            this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
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
            } else if (!hasSessionId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsgId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSessionType()) {
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
                codedOutputStream.writeUInt32(2, this.sessionId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.msgId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeEnum(4, this.sessionType_.getNumber());
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
                i2 += CodedOutputStream.computeUInt32Size(2, this.sessionId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.msgId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeEnumSize(4, this.sessionType_.getNumber());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMMsgDataAck parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMMsgDataAck) PARSER.parseFrom(byteString);
        }

        public static IMMsgDataAck parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMsgDataAck) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMMsgDataAck parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMMsgDataAck) PARSER.parseFrom(bArr);
        }

        public static IMMsgDataAck parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMsgDataAck) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMMsgDataAck parseFrom(InputStream inputStream) throws IOException {
            return (IMMsgDataAck) PARSER.parseFrom(inputStream);
        }

        public static IMMsgDataAck parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgDataAck) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMMsgDataAck parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMMsgDataAck) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMMsgDataAck parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgDataAck) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMMsgDataAck parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMMsgDataAck) PARSER.parseFrom(codedInputStream);
        }

        public static IMMsgDataAck parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgDataAck) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMMsgDataAck iMMsgDataAck) {
            return newBuilder().mergeFrom(iMMsgDataAck);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMMsgDataAckOrBuilder extends MessageLiteOrBuilder {
        int getMsgId();

        int getSessionId();

        SessionType getSessionType();

        int getUserId();

        boolean hasMsgId();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUserId();
    }

    public interface IMMsgDataOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getCreateTime();

        int getFromUserId();

        ByteString getMsgData();

        int getMsgId();

        MsgType getMsgType();

        int getToSessionId();

        boolean hasAttachData();

        boolean hasCreateTime();

        boolean hasFromUserId();

        boolean hasMsgData();

        boolean hasMsgId();

        boolean hasMsgType();

        boolean hasToSessionId();
    }

    public static final class IMMsgDataReadAck extends GeneratedMessageLite implements IMMsgDataReadAckOrBuilder {
        public static final int MSG_ID_FIELD_NUMBER = 3;
        public static Parser<IMMsgDataReadAck> PARSER = new AbstractParser<IMMsgDataReadAck>() {
            public IMMsgDataReadAck parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMMsgDataReadAck(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 2;
        public static final int SESSION_TYPE_FIELD_NUMBER = 4;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMMsgDataReadAck defaultInstance = new IMMsgDataReadAck(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int msgId_;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public SessionType sessionType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMMsgDataReadAck, Builder> implements IMMsgDataReadAckOrBuilder {
            private int bitField0_;
            private int msgId_;
            private int sessionId_;
            private SessionType sessionType_ = SessionType.SESSION_TYPE_SINGLE;
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
                this.sessionId_ = 0;
                this.bitField0_ &= -3;
                this.msgId_ = 0;
                this.bitField0_ &= -5;
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMMsgDataReadAck getDefaultInstanceForType() {
                return IMMsgDataReadAck.getDefaultInstance();
            }

            public IMMsgDataReadAck build() {
                IMMsgDataReadAck buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMMsgDataReadAck buildPartial() {
                int i = 1;
                IMMsgDataReadAck iMMsgDataReadAck = new IMMsgDataReadAck((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMMsgDataReadAck.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMMsgDataReadAck.sessionId_ = this.sessionId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMMsgDataReadAck.msgId_ = this.msgId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMMsgDataReadAck.sessionType_ = this.sessionType_;
                iMMsgDataReadAck.bitField0_ = i;
                return iMMsgDataReadAck;
            }

            public Builder mergeFrom(IMMsgDataReadAck iMMsgDataReadAck) {
                if (iMMsgDataReadAck != IMMsgDataReadAck.getDefaultInstance()) {
                    if (iMMsgDataReadAck.hasUserId()) {
                        setUserId(iMMsgDataReadAck.getUserId());
                    }
                    if (iMMsgDataReadAck.hasSessionId()) {
                        setSessionId(iMMsgDataReadAck.getSessionId());
                    }
                    if (iMMsgDataReadAck.hasMsgId()) {
                        setMsgId(iMMsgDataReadAck.getMsgId());
                    }
                    if (iMMsgDataReadAck.hasSessionType()) {
                        setSessionType(iMMsgDataReadAck.getSessionType());
                    }
                    setUnknownFields(getUnknownFields().concat(iMMsgDataReadAck.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasSessionId() && hasMsgId() && hasSessionType()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMMsgDataReadAck iMMsgDataReadAck;
                IMMsgDataReadAck iMMsgDataReadAck2;
                try {
                    IMMsgDataReadAck iMMsgDataReadAck3 = (IMMsgDataReadAck) IMMsgDataReadAck.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMMsgDataReadAck3 != null) {
                        mergeFrom(iMMsgDataReadAck3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMMsgDataReadAck2 = (IMMsgDataReadAck) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMMsgDataReadAck = iMMsgDataReadAck2;
                    th = th2;
                }
                if (iMMsgDataReadAck != null) {
                    mergeFrom(iMMsgDataReadAck);
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

            public boolean hasSessionId() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 2;
                this.sessionId_ = i;
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -3;
                this.sessionId_ = 0;
                return this;
            }

            public boolean hasMsgId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(int i) {
                this.bitField0_ |= 4;
                this.msgId_ = i;
                return this;
            }

            public Builder clearMsgId() {
                this.bitField0_ &= -5;
                this.msgId_ = 0;
                return this;
            }

            public boolean hasSessionType() {
                return (this.bitField0_ & 8) == 8;
            }

            public SessionType getSessionType() {
                return this.sessionType_;
            }

            public Builder setSessionType(SessionType sessionType) {
                if (sessionType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.sessionType_ = sessionType;
                return this;
            }

            public Builder clearSessionType() {
                this.bitField0_ &= -9;
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                return this;
            }
        }

        private IMMsgDataReadAck(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMMsgDataReadAck(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMMsgDataReadAck getDefaultInstance() {
            return defaultInstance;
        }

        public IMMsgDataReadAck getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMMsgDataReadAck(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.sessionId_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.msgId_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            int readEnum = codedInputStream.readEnum();
                            SessionType valueOf = SessionType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 8;
                                this.sessionType_ = valueOf;
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

        public Parser<IMMsgDataReadAck> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public boolean hasMsgId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getMsgId() {
            return this.msgId_;
        }

        public boolean hasSessionType() {
            return (this.bitField0_ & 8) == 8;
        }

        public SessionType getSessionType() {
            return this.sessionType_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.sessionId_ = 0;
            this.msgId_ = 0;
            this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
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
            } else if (!hasSessionId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsgId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSessionType()) {
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
                codedOutputStream.writeUInt32(2, this.sessionId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.msgId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeEnum(4, this.sessionType_.getNumber());
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
                i2 += CodedOutputStream.computeUInt32Size(2, this.sessionId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.msgId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeEnumSize(4, this.sessionType_.getNumber());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMMsgDataReadAck parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMMsgDataReadAck) PARSER.parseFrom(byteString);
        }

        public static IMMsgDataReadAck parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMsgDataReadAck) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMMsgDataReadAck parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMMsgDataReadAck) PARSER.parseFrom(bArr);
        }

        public static IMMsgDataReadAck parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMsgDataReadAck) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMMsgDataReadAck parseFrom(InputStream inputStream) throws IOException {
            return (IMMsgDataReadAck) PARSER.parseFrom(inputStream);
        }

        public static IMMsgDataReadAck parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgDataReadAck) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMMsgDataReadAck parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMMsgDataReadAck) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMMsgDataReadAck parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgDataReadAck) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMMsgDataReadAck parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMMsgDataReadAck) PARSER.parseFrom(codedInputStream);
        }

        public static IMMsgDataReadAck parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgDataReadAck) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMMsgDataReadAck iMMsgDataReadAck) {
            return newBuilder().mergeFrom(iMMsgDataReadAck);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMMsgDataReadAckOrBuilder extends MessageLiteOrBuilder {
        int getMsgId();

        int getSessionId();

        SessionType getSessionType();

        int getUserId();

        boolean hasMsgId();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUserId();
    }

    public static final class IMMsgDataReadNotify extends GeneratedMessageLite implements IMMsgDataReadNotifyOrBuilder {
        public static final int MSG_ID_FIELD_NUMBER = 3;
        public static Parser<IMMsgDataReadNotify> PARSER = new AbstractParser<IMMsgDataReadNotify>() {
            public IMMsgDataReadNotify parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMMsgDataReadNotify(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 2;
        public static final int SESSION_TYPE_FIELD_NUMBER = 4;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMMsgDataReadNotify defaultInstance = new IMMsgDataReadNotify(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int msgId_;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public SessionType sessionType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMMsgDataReadNotify, Builder> implements IMMsgDataReadNotifyOrBuilder {
            private int bitField0_;
            private int msgId_;
            private int sessionId_;
            private SessionType sessionType_ = SessionType.SESSION_TYPE_SINGLE;
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
                this.sessionId_ = 0;
                this.bitField0_ &= -3;
                this.msgId_ = 0;
                this.bitField0_ &= -5;
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMMsgDataReadNotify getDefaultInstanceForType() {
                return IMMsgDataReadNotify.getDefaultInstance();
            }

            public IMMsgDataReadNotify build() {
                IMMsgDataReadNotify buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMMsgDataReadNotify buildPartial() {
                int i = 1;
                IMMsgDataReadNotify iMMsgDataReadNotify = new IMMsgDataReadNotify((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMMsgDataReadNotify.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMMsgDataReadNotify.sessionId_ = this.sessionId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMMsgDataReadNotify.msgId_ = this.msgId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMMsgDataReadNotify.sessionType_ = this.sessionType_;
                iMMsgDataReadNotify.bitField0_ = i;
                return iMMsgDataReadNotify;
            }

            public Builder mergeFrom(IMMsgDataReadNotify iMMsgDataReadNotify) {
                if (iMMsgDataReadNotify != IMMsgDataReadNotify.getDefaultInstance()) {
                    if (iMMsgDataReadNotify.hasUserId()) {
                        setUserId(iMMsgDataReadNotify.getUserId());
                    }
                    if (iMMsgDataReadNotify.hasSessionId()) {
                        setSessionId(iMMsgDataReadNotify.getSessionId());
                    }
                    if (iMMsgDataReadNotify.hasMsgId()) {
                        setMsgId(iMMsgDataReadNotify.getMsgId());
                    }
                    if (iMMsgDataReadNotify.hasSessionType()) {
                        setSessionType(iMMsgDataReadNotify.getSessionType());
                    }
                    setUnknownFields(getUnknownFields().concat(iMMsgDataReadNotify.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasSessionId() && hasMsgId() && hasSessionType()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMMsgDataReadNotify iMMsgDataReadNotify;
                IMMsgDataReadNotify iMMsgDataReadNotify2;
                try {
                    IMMsgDataReadNotify iMMsgDataReadNotify3 = (IMMsgDataReadNotify) IMMsgDataReadNotify.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMMsgDataReadNotify3 != null) {
                        mergeFrom(iMMsgDataReadNotify3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMMsgDataReadNotify2 = (IMMsgDataReadNotify) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMMsgDataReadNotify = iMMsgDataReadNotify2;
                    th = th2;
                }
                if (iMMsgDataReadNotify != null) {
                    mergeFrom(iMMsgDataReadNotify);
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

            public boolean hasSessionId() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 2;
                this.sessionId_ = i;
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -3;
                this.sessionId_ = 0;
                return this;
            }

            public boolean hasMsgId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getMsgId() {
                return this.msgId_;
            }

            public Builder setMsgId(int i) {
                this.bitField0_ |= 4;
                this.msgId_ = i;
                return this;
            }

            public Builder clearMsgId() {
                this.bitField0_ &= -5;
                this.msgId_ = 0;
                return this;
            }

            public boolean hasSessionType() {
                return (this.bitField0_ & 8) == 8;
            }

            public SessionType getSessionType() {
                return this.sessionType_;
            }

            public Builder setSessionType(SessionType sessionType) {
                if (sessionType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.sessionType_ = sessionType;
                return this;
            }

            public Builder clearSessionType() {
                this.bitField0_ &= -9;
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                return this;
            }
        }

        private IMMsgDataReadNotify(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMMsgDataReadNotify(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMMsgDataReadNotify getDefaultInstance() {
            return defaultInstance;
        }

        public IMMsgDataReadNotify getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMMsgDataReadNotify(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.sessionId_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.msgId_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            int readEnum = codedInputStream.readEnum();
                            SessionType valueOf = SessionType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 8;
                                this.sessionType_ = valueOf;
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

        public Parser<IMMsgDataReadNotify> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public boolean hasMsgId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getMsgId() {
            return this.msgId_;
        }

        public boolean hasSessionType() {
            return (this.bitField0_ & 8) == 8;
        }

        public SessionType getSessionType() {
            return this.sessionType_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.sessionId_ = 0;
            this.msgId_ = 0;
            this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
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
            } else if (!hasSessionId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMsgId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasSessionType()) {
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
                codedOutputStream.writeUInt32(2, this.sessionId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.msgId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeEnum(4, this.sessionType_.getNumber());
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
                i2 += CodedOutputStream.computeUInt32Size(2, this.sessionId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.msgId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeEnumSize(4, this.sessionType_.getNumber());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMMsgDataReadNotify parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMMsgDataReadNotify) PARSER.parseFrom(byteString);
        }

        public static IMMsgDataReadNotify parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMsgDataReadNotify) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMMsgDataReadNotify parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMMsgDataReadNotify) PARSER.parseFrom(bArr);
        }

        public static IMMsgDataReadNotify parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMMsgDataReadNotify) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMMsgDataReadNotify parseFrom(InputStream inputStream) throws IOException {
            return (IMMsgDataReadNotify) PARSER.parseFrom(inputStream);
        }

        public static IMMsgDataReadNotify parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgDataReadNotify) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMMsgDataReadNotify parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMMsgDataReadNotify) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMMsgDataReadNotify parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgDataReadNotify) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMMsgDataReadNotify parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMMsgDataReadNotify) PARSER.parseFrom(codedInputStream);
        }

        public static IMMsgDataReadNotify parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMMsgDataReadNotify) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMMsgDataReadNotify iMMsgDataReadNotify) {
            return newBuilder().mergeFrom(iMMsgDataReadNotify);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMMsgDataReadNotifyOrBuilder extends MessageLiteOrBuilder {
        int getMsgId();

        int getSessionId();

        SessionType getSessionType();

        int getUserId();

        boolean hasMsgId();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUserId();
    }

    public static final class IMUnreadMsgCntReq extends GeneratedMessageLite implements IMUnreadMsgCntReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMUnreadMsgCntReq> PARSER = new AbstractParser<IMUnreadMsgCntReq>() {
            public IMUnreadMsgCntReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMUnreadMsgCntReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMUnreadMsgCntReq defaultInstance = new IMUnreadMsgCntReq(true);
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

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMUnreadMsgCntReq, Builder> implements IMUnreadMsgCntReqOrBuilder {
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

            public IMUnreadMsgCntReq getDefaultInstanceForType() {
                return IMUnreadMsgCntReq.getDefaultInstance();
            }

            public IMUnreadMsgCntReq build() {
                IMUnreadMsgCntReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMUnreadMsgCntReq buildPartial() {
                int i = 1;
                IMUnreadMsgCntReq iMUnreadMsgCntReq = new IMUnreadMsgCntReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMUnreadMsgCntReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMUnreadMsgCntReq.attachData_ = this.attachData_;
                iMUnreadMsgCntReq.bitField0_ = i;
                return iMUnreadMsgCntReq;
            }

            public Builder mergeFrom(IMUnreadMsgCntReq iMUnreadMsgCntReq) {
                if (iMUnreadMsgCntReq != IMUnreadMsgCntReq.getDefaultInstance()) {
                    if (iMUnreadMsgCntReq.hasUserId()) {
                        setUserId(iMUnreadMsgCntReq.getUserId());
                    }
                    if (iMUnreadMsgCntReq.hasAttachData()) {
                        setAttachData(iMUnreadMsgCntReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMUnreadMsgCntReq.unknownFields));
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
                IMUnreadMsgCntReq iMUnreadMsgCntReq;
                IMUnreadMsgCntReq iMUnreadMsgCntReq2;
                try {
                    IMUnreadMsgCntReq iMUnreadMsgCntReq3 = (IMUnreadMsgCntReq) IMUnreadMsgCntReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMUnreadMsgCntReq3 != null) {
                        mergeFrom(iMUnreadMsgCntReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMUnreadMsgCntReq2 = (IMUnreadMsgCntReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMUnreadMsgCntReq = iMUnreadMsgCntReq2;
                    th = th2;
                }
                if (iMUnreadMsgCntReq != null) {
                    mergeFrom(iMUnreadMsgCntReq);
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
                this.attachData_ = IMUnreadMsgCntReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMUnreadMsgCntReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMUnreadMsgCntReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMUnreadMsgCntReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMUnreadMsgCntReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMUnreadMsgCntReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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

        public Parser<IMUnreadMsgCntReq> getParserForType() {
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

        public static IMUnreadMsgCntReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMUnreadMsgCntReq) PARSER.parseFrom(byteString);
        }

        public static IMUnreadMsgCntReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUnreadMsgCntReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMUnreadMsgCntReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMUnreadMsgCntReq) PARSER.parseFrom(bArr);
        }

        public static IMUnreadMsgCntReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUnreadMsgCntReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMUnreadMsgCntReq parseFrom(InputStream inputStream) throws IOException {
            return (IMUnreadMsgCntReq) PARSER.parseFrom(inputStream);
        }

        public static IMUnreadMsgCntReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUnreadMsgCntReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMUnreadMsgCntReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMUnreadMsgCntReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMUnreadMsgCntReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUnreadMsgCntReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMUnreadMsgCntReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMUnreadMsgCntReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMUnreadMsgCntReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUnreadMsgCntReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMUnreadMsgCntReq iMUnreadMsgCntReq) {
            return newBuilder().mergeFrom(iMUnreadMsgCntReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMUnreadMsgCntReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getUserId();

        boolean hasAttachData();

        boolean hasUserId();
    }

    public static final class IMUnreadMsgCntRsp extends GeneratedMessageLite implements IMUnreadMsgCntRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMUnreadMsgCntRsp> PARSER = new AbstractParser<IMUnreadMsgCntRsp>() {
            public IMUnreadMsgCntRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMUnreadMsgCntRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TOTAL_CNT_FIELD_NUMBER = 2;
        public static final int UNREADINFO_LIST_FIELD_NUMBER = 3;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMUnreadMsgCntRsp defaultInstance = new IMUnreadMsgCntRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int totalCnt_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public List<UnreadInfo> unreadinfoList_;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMUnreadMsgCntRsp, Builder> implements IMUnreadMsgCntRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int totalCnt_;
            private List<UnreadInfo> unreadinfoList_ = Collections.emptyList();
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
                this.totalCnt_ = 0;
                this.bitField0_ &= -3;
                this.unreadinfoList_ = Collections.emptyList();
                this.bitField0_ &= -5;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMUnreadMsgCntRsp getDefaultInstanceForType() {
                return IMUnreadMsgCntRsp.getDefaultInstance();
            }

            public IMUnreadMsgCntRsp build() {
                IMUnreadMsgCntRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMUnreadMsgCntRsp buildPartial() {
                int i = 1;
                IMUnreadMsgCntRsp iMUnreadMsgCntRsp = new IMUnreadMsgCntRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMUnreadMsgCntRsp.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMUnreadMsgCntRsp.totalCnt_ = this.totalCnt_;
                if ((this.bitField0_ & 4) == 4) {
                    this.unreadinfoList_ = Collections.unmodifiableList(this.unreadinfoList_);
                    this.bitField0_ &= -5;
                }
                iMUnreadMsgCntRsp.unreadinfoList_ = this.unreadinfoList_;
                if ((i2 & 8) == 8) {
                    i |= 4;
                }
                iMUnreadMsgCntRsp.attachData_ = this.attachData_;
                iMUnreadMsgCntRsp.bitField0_ = i;
                return iMUnreadMsgCntRsp;
            }

            public Builder mergeFrom(IMUnreadMsgCntRsp iMUnreadMsgCntRsp) {
                if (iMUnreadMsgCntRsp != IMUnreadMsgCntRsp.getDefaultInstance()) {
                    if (iMUnreadMsgCntRsp.hasUserId()) {
                        setUserId(iMUnreadMsgCntRsp.getUserId());
                    }
                    if (iMUnreadMsgCntRsp.hasTotalCnt()) {
                        setTotalCnt(iMUnreadMsgCntRsp.getTotalCnt());
                    }
                    if (!iMUnreadMsgCntRsp.unreadinfoList_.isEmpty()) {
                        if (this.unreadinfoList_.isEmpty()) {
                            this.unreadinfoList_ = iMUnreadMsgCntRsp.unreadinfoList_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureUnreadinfoListIsMutable();
                            this.unreadinfoList_.addAll(iMUnreadMsgCntRsp.unreadinfoList_);
                        }
                    }
                    if (iMUnreadMsgCntRsp.hasAttachData()) {
                        setAttachData(iMUnreadMsgCntRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMUnreadMsgCntRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasUserId() || !hasTotalCnt()) {
                    return false;
                }
                for (int i = 0; i < getUnreadinfoListCount(); i++) {
                    if (!getUnreadinfoList(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMUnreadMsgCntRsp iMUnreadMsgCntRsp;
                IMUnreadMsgCntRsp iMUnreadMsgCntRsp2;
                try {
                    IMUnreadMsgCntRsp iMUnreadMsgCntRsp3 = (IMUnreadMsgCntRsp) IMUnreadMsgCntRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMUnreadMsgCntRsp3 != null) {
                        mergeFrom(iMUnreadMsgCntRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMUnreadMsgCntRsp2 = (IMUnreadMsgCntRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMUnreadMsgCntRsp = iMUnreadMsgCntRsp2;
                    th = th2;
                }
                if (iMUnreadMsgCntRsp != null) {
                    mergeFrom(iMUnreadMsgCntRsp);
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

            public boolean hasTotalCnt() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getTotalCnt() {
                return this.totalCnt_;
            }

            public Builder setTotalCnt(int i) {
                this.bitField0_ |= 2;
                this.totalCnt_ = i;
                return this;
            }

            public Builder clearTotalCnt() {
                this.bitField0_ &= -3;
                this.totalCnt_ = 0;
                return this;
            }

            private void ensureUnreadinfoListIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.unreadinfoList_ = new ArrayList(this.unreadinfoList_);
                    this.bitField0_ |= 4;
                }
            }

            public List<UnreadInfo> getUnreadinfoListList() {
                return Collections.unmodifiableList(this.unreadinfoList_);
            }

            public int getUnreadinfoListCount() {
                return this.unreadinfoList_.size();
            }

            public UnreadInfo getUnreadinfoList(int i) {
                return (UnreadInfo) this.unreadinfoList_.get(i);
            }

            public Builder setUnreadinfoList(int i, UnreadInfo unreadInfo) {
                if (unreadInfo == null) {
                    throw new NullPointerException();
                }
                ensureUnreadinfoListIsMutable();
                this.unreadinfoList_.set(i, unreadInfo);
                return this;
            }

            public Builder setUnreadinfoList(int i, com.ifengyu.im.protobuf.IMBaseDefine.UnreadInfo.Builder builder) {
                ensureUnreadinfoListIsMutable();
                this.unreadinfoList_.set(i, builder.build());
                return this;
            }

            public Builder addUnreadinfoList(UnreadInfo unreadInfo) {
                if (unreadInfo == null) {
                    throw new NullPointerException();
                }
                ensureUnreadinfoListIsMutable();
                this.unreadinfoList_.add(unreadInfo);
                return this;
            }

            public Builder addUnreadinfoList(int i, UnreadInfo unreadInfo) {
                if (unreadInfo == null) {
                    throw new NullPointerException();
                }
                ensureUnreadinfoListIsMutable();
                this.unreadinfoList_.add(i, unreadInfo);
                return this;
            }

            public Builder addUnreadinfoList(com.ifengyu.im.protobuf.IMBaseDefine.UnreadInfo.Builder builder) {
                ensureUnreadinfoListIsMutable();
                this.unreadinfoList_.add(builder.build());
                return this;
            }

            public Builder addUnreadinfoList(int i, com.ifengyu.im.protobuf.IMBaseDefine.UnreadInfo.Builder builder) {
                ensureUnreadinfoListIsMutable();
                this.unreadinfoList_.add(i, builder.build());
                return this;
            }

            public Builder addAllUnreadinfoList(Iterable<? extends UnreadInfo> iterable) {
                ensureUnreadinfoListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.unreadinfoList_);
                return this;
            }

            public Builder clearUnreadinfoList() {
                this.unreadinfoList_ = Collections.emptyList();
                this.bitField0_ &= -5;
                return this;
            }

            public Builder removeUnreadinfoList(int i) {
                ensureUnreadinfoListIsMutable();
                this.unreadinfoList_.remove(i);
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
                this.attachData_ = IMUnreadMsgCntRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMUnreadMsgCntRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMUnreadMsgCntRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMUnreadMsgCntRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMUnreadMsgCntRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMUnreadMsgCntRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 16:
                            this.bitField0_ |= 2;
                            this.totalCnt_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            if (!(z2 & true)) {
                                this.unreadinfoList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.unreadinfoList_.add(codedInputStream.readMessage(UnreadInfo.PARSER, extensionRegistryLite));
                            break;
                        case 162:
                            this.bitField0_ |= 4;
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
                        this.unreadinfoList_ = Collections.unmodifiableList(this.unreadinfoList_);
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
                this.unreadinfoList_ = Collections.unmodifiableList(this.unreadinfoList_);
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

        public Parser<IMUnreadMsgCntRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasTotalCnt() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getTotalCnt() {
            return this.totalCnt_;
        }

        public List<UnreadInfo> getUnreadinfoListList() {
            return this.unreadinfoList_;
        }

        public List<? extends UnreadInfoOrBuilder> getUnreadinfoListOrBuilderList() {
            return this.unreadinfoList_;
        }

        public int getUnreadinfoListCount() {
            return this.unreadinfoList_.size();
        }

        public UnreadInfo getUnreadinfoList(int i) {
            return (UnreadInfo) this.unreadinfoList_.get(i);
        }

        public UnreadInfoOrBuilder getUnreadinfoListOrBuilder(int i) {
            return (UnreadInfoOrBuilder) this.unreadinfoList_.get(i);
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.totalCnt_ = 0;
            this.unreadinfoList_ = Collections.emptyList();
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
            } else if (!hasTotalCnt()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                for (int i = 0; i < getUnreadinfoListCount(); i++) {
                    if (!getUnreadinfoList(i).isInitialized()) {
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
                codedOutputStream.writeUInt32(1, this.userId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.totalCnt_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.unreadinfoList_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(3, (MessageLite) this.unreadinfoList_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(20, this.attachData_);
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
                i = CodedOutputStream.computeUInt32Size(1, this.userId_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeUInt32Size(2, this.totalCnt_);
            }
            while (true) {
                i2 = i;
                if (i3 >= this.unreadinfoList_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(3, (MessageLite) this.unreadinfoList_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(20, this.attachData_);
            }
            int size = this.unknownFields.size() + i2;
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMUnreadMsgCntRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMUnreadMsgCntRsp) PARSER.parseFrom(byteString);
        }

        public static IMUnreadMsgCntRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUnreadMsgCntRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMUnreadMsgCntRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMUnreadMsgCntRsp) PARSER.parseFrom(bArr);
        }

        public static IMUnreadMsgCntRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUnreadMsgCntRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMUnreadMsgCntRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMUnreadMsgCntRsp) PARSER.parseFrom(inputStream);
        }

        public static IMUnreadMsgCntRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUnreadMsgCntRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMUnreadMsgCntRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMUnreadMsgCntRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMUnreadMsgCntRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUnreadMsgCntRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMUnreadMsgCntRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMUnreadMsgCntRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMUnreadMsgCntRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUnreadMsgCntRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMUnreadMsgCntRsp iMUnreadMsgCntRsp) {
            return newBuilder().mergeFrom(iMUnreadMsgCntRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMUnreadMsgCntRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getTotalCnt();

        UnreadInfo getUnreadinfoList(int i);

        int getUnreadinfoListCount();

        List<UnreadInfo> getUnreadinfoListList();

        int getUserId();

        boolean hasAttachData();

        boolean hasTotalCnt();

        boolean hasUserId();
    }

    private IMMessage() {
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
