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
import com.ifengyu.im.protobuf.IMBaseDefine.ContactSessionInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.ContactSessionInfoOrBuilder;
import com.ifengyu.im.protobuf.IMBaseDefine.DepartInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.DepartInfoOrBuilder;
import com.ifengyu.im.protobuf.IMBaseDefine.SessionType;
import com.ifengyu.im.protobuf.IMBaseDefine.UserInfo;
import com.ifengyu.im.protobuf.IMBaseDefine.UserInfoOrBuilder;
import com.ifengyu.im.protobuf.IMBaseDefine.UserStat;
import com.ifengyu.im.protobuf.IMBaseDefine.UserStatOrBuilder;
import com.ifengyu.im.protobuf.IMBaseDefine.UserStatType;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class IMBuddy {

    public static final class IMAllUserReq extends GeneratedMessageLite implements IMAllUserReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int LATEST_UPDATE_TIME_FIELD_NUMBER = 2;
        public static Parser<IMAllUserReq> PARSER = new AbstractParser<IMAllUserReq>() {
            public IMAllUserReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMAllUserReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMAllUserReq defaultInstance = new IMAllUserReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int latestUpdateTime_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMAllUserReq, Builder> implements IMAllUserReqOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int latestUpdateTime_;
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
                this.latestUpdateTime_ = 0;
                this.bitField0_ &= -3;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMAllUserReq getDefaultInstanceForType() {
                return IMAllUserReq.getDefaultInstance();
            }

            public IMAllUserReq build() {
                IMAllUserReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMAllUserReq buildPartial() {
                int i = 1;
                IMAllUserReq iMAllUserReq = new IMAllUserReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMAllUserReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMAllUserReq.latestUpdateTime_ = this.latestUpdateTime_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMAllUserReq.attachData_ = this.attachData_;
                iMAllUserReq.bitField0_ = i;
                return iMAllUserReq;
            }

            public Builder mergeFrom(IMAllUserReq iMAllUserReq) {
                if (iMAllUserReq != IMAllUserReq.getDefaultInstance()) {
                    if (iMAllUserReq.hasUserId()) {
                        setUserId(iMAllUserReq.getUserId());
                    }
                    if (iMAllUserReq.hasLatestUpdateTime()) {
                        setLatestUpdateTime(iMAllUserReq.getLatestUpdateTime());
                    }
                    if (iMAllUserReq.hasAttachData()) {
                        setAttachData(iMAllUserReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMAllUserReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasLatestUpdateTime()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMAllUserReq iMAllUserReq;
                IMAllUserReq iMAllUserReq2;
                try {
                    IMAllUserReq iMAllUserReq3 = (IMAllUserReq) IMAllUserReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMAllUserReq3 != null) {
                        mergeFrom(iMAllUserReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMAllUserReq2 = (IMAllUserReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMAllUserReq = iMAllUserReq2;
                    th = th2;
                }
                if (iMAllUserReq != null) {
                    mergeFrom(iMAllUserReq);
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

            public boolean hasLatestUpdateTime() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getLatestUpdateTime() {
                return this.latestUpdateTime_;
            }

            public Builder setLatestUpdateTime(int i) {
                this.bitField0_ |= 2;
                this.latestUpdateTime_ = i;
                return this;
            }

            public Builder clearLatestUpdateTime() {
                this.bitField0_ &= -3;
                this.latestUpdateTime_ = 0;
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 4) == 4;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -5;
                this.attachData_ = IMAllUserReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMAllUserReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMAllUserReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMAllUserReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMAllUserReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMAllUserReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.latestUpdateTime_ = codedInputStream.readUInt32();
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

        public Parser<IMAllUserReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasLatestUpdateTime() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getLatestUpdateTime() {
            return this.latestUpdateTime_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.latestUpdateTime_ = 0;
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
            } else if (!hasLatestUpdateTime()) {
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
                codedOutputStream.writeUInt32(2, this.latestUpdateTime_);
            }
            if ((this.bitField0_ & 4) == 4) {
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
                i2 += CodedOutputStream.computeUInt32Size(2, this.latestUpdateTime_);
            }
            if ((this.bitField0_ & 4) == 4) {
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

        public static IMAllUserReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMAllUserReq) PARSER.parseFrom(byteString);
        }

        public static IMAllUserReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMAllUserReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMAllUserReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMAllUserReq) PARSER.parseFrom(bArr);
        }

        public static IMAllUserReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMAllUserReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMAllUserReq parseFrom(InputStream inputStream) throws IOException {
            return (IMAllUserReq) PARSER.parseFrom(inputStream);
        }

        public static IMAllUserReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAllUserReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMAllUserReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMAllUserReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMAllUserReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAllUserReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMAllUserReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMAllUserReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMAllUserReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAllUserReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMAllUserReq iMAllUserReq) {
            return newBuilder().mergeFrom(iMAllUserReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMAllUserReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getLatestUpdateTime();

        int getUserId();

        boolean hasAttachData();

        boolean hasLatestUpdateTime();

        boolean hasUserId();
    }

    public static final class IMAllUserRsp extends GeneratedMessageLite implements IMAllUserRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int LATEST_UPDATE_TIME_FIELD_NUMBER = 2;
        public static Parser<IMAllUserRsp> PARSER = new AbstractParser<IMAllUserRsp>() {
            public IMAllUserRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMAllUserRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        public static final int USER_LIST_FIELD_NUMBER = 3;
        private static final IMAllUserRsp defaultInstance = new IMAllUserRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int latestUpdateTime_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;
        /* access modifiers changed from: private */
        public List<UserInfo> userList_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMAllUserRsp, Builder> implements IMAllUserRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int latestUpdateTime_;
            private int userId_;
            private List<UserInfo> userList_ = Collections.emptyList();

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
                this.latestUpdateTime_ = 0;
                this.bitField0_ &= -3;
                this.userList_ = Collections.emptyList();
                this.bitField0_ &= -5;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMAllUserRsp getDefaultInstanceForType() {
                return IMAllUserRsp.getDefaultInstance();
            }

            public IMAllUserRsp build() {
                IMAllUserRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMAllUserRsp buildPartial() {
                int i = 1;
                IMAllUserRsp iMAllUserRsp = new IMAllUserRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMAllUserRsp.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMAllUserRsp.latestUpdateTime_ = this.latestUpdateTime_;
                if ((this.bitField0_ & 4) == 4) {
                    this.userList_ = Collections.unmodifiableList(this.userList_);
                    this.bitField0_ &= -5;
                }
                iMAllUserRsp.userList_ = this.userList_;
                if ((i2 & 8) == 8) {
                    i |= 4;
                }
                iMAllUserRsp.attachData_ = this.attachData_;
                iMAllUserRsp.bitField0_ = i;
                return iMAllUserRsp;
            }

            public Builder mergeFrom(IMAllUserRsp iMAllUserRsp) {
                if (iMAllUserRsp != IMAllUserRsp.getDefaultInstance()) {
                    if (iMAllUserRsp.hasUserId()) {
                        setUserId(iMAllUserRsp.getUserId());
                    }
                    if (iMAllUserRsp.hasLatestUpdateTime()) {
                        setLatestUpdateTime(iMAllUserRsp.getLatestUpdateTime());
                    }
                    if (!iMAllUserRsp.userList_.isEmpty()) {
                        if (this.userList_.isEmpty()) {
                            this.userList_ = iMAllUserRsp.userList_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureUserListIsMutable();
                            this.userList_.addAll(iMAllUserRsp.userList_);
                        }
                    }
                    if (iMAllUserRsp.hasAttachData()) {
                        setAttachData(iMAllUserRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMAllUserRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasLatestUpdateTime()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMAllUserRsp iMAllUserRsp;
                IMAllUserRsp iMAllUserRsp2;
                try {
                    IMAllUserRsp iMAllUserRsp3 = (IMAllUserRsp) IMAllUserRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMAllUserRsp3 != null) {
                        mergeFrom(iMAllUserRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMAllUserRsp2 = (IMAllUserRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMAllUserRsp = iMAllUserRsp2;
                    th = th2;
                }
                if (iMAllUserRsp != null) {
                    mergeFrom(iMAllUserRsp);
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

            public boolean hasLatestUpdateTime() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getLatestUpdateTime() {
                return this.latestUpdateTime_;
            }

            public Builder setLatestUpdateTime(int i) {
                this.bitField0_ |= 2;
                this.latestUpdateTime_ = i;
                return this;
            }

            public Builder clearLatestUpdateTime() {
                this.bitField0_ &= -3;
                this.latestUpdateTime_ = 0;
                return this;
            }

            private void ensureUserListIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.userList_ = new ArrayList(this.userList_);
                    this.bitField0_ |= 4;
                }
            }

            public List<UserInfo> getUserListList() {
                return Collections.unmodifiableList(this.userList_);
            }

            public int getUserListCount() {
                return this.userList_.size();
            }

            public UserInfo getUserList(int i) {
                return (UserInfo) this.userList_.get(i);
            }

            public Builder setUserList(int i, UserInfo userInfo) {
                if (userInfo == null) {
                    throw new NullPointerException();
                }
                ensureUserListIsMutable();
                this.userList_.set(i, userInfo);
                return this;
            }

            public Builder setUserList(int i, com.ifengyu.im.protobuf.IMBaseDefine.UserInfo.Builder builder) {
                ensureUserListIsMutable();
                this.userList_.set(i, builder.build());
                return this;
            }

            public Builder addUserList(UserInfo userInfo) {
                if (userInfo == null) {
                    throw new NullPointerException();
                }
                ensureUserListIsMutable();
                this.userList_.add(userInfo);
                return this;
            }

            public Builder addUserList(int i, UserInfo userInfo) {
                if (userInfo == null) {
                    throw new NullPointerException();
                }
                ensureUserListIsMutable();
                this.userList_.add(i, userInfo);
                return this;
            }

            public Builder addUserList(com.ifengyu.im.protobuf.IMBaseDefine.UserInfo.Builder builder) {
                ensureUserListIsMutable();
                this.userList_.add(builder.build());
                return this;
            }

            public Builder addUserList(int i, com.ifengyu.im.protobuf.IMBaseDefine.UserInfo.Builder builder) {
                ensureUserListIsMutable();
                this.userList_.add(i, builder.build());
                return this;
            }

            public Builder addAllUserList(Iterable<? extends UserInfo> iterable) {
                ensureUserListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.userList_);
                return this;
            }

            public Builder clearUserList() {
                this.userList_ = Collections.emptyList();
                this.bitField0_ &= -5;
                return this;
            }

            public Builder removeUserList(int i) {
                ensureUserListIsMutable();
                this.userList_.remove(i);
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
                this.attachData_ = IMAllUserRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMAllUserRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMAllUserRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMAllUserRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMAllUserRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMAllUserRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.latestUpdateTime_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            if (!(z2 & true)) {
                                this.userList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.userList_.add(codedInputStream.readMessage(UserInfo.PARSER, extensionRegistryLite));
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
                        this.userList_ = Collections.unmodifiableList(this.userList_);
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
                this.userList_ = Collections.unmodifiableList(this.userList_);
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

        public Parser<IMAllUserRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasLatestUpdateTime() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getLatestUpdateTime() {
            return this.latestUpdateTime_;
        }

        public List<UserInfo> getUserListList() {
            return this.userList_;
        }

        public List<? extends UserInfoOrBuilder> getUserListOrBuilderList() {
            return this.userList_;
        }

        public int getUserListCount() {
            return this.userList_.size();
        }

        public UserInfo getUserList(int i) {
            return (UserInfo) this.userList_.get(i);
        }

        public UserInfoOrBuilder getUserListOrBuilder(int i) {
            return (UserInfoOrBuilder) this.userList_.get(i);
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.latestUpdateTime_ = 0;
            this.userList_ = Collections.emptyList();
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
            } else if (!hasLatestUpdateTime()) {
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
                codedOutputStream.writeUInt32(2, this.latestUpdateTime_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.userList_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(3, (MessageLite) this.userList_.get(i2));
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
                i += CodedOutputStream.computeUInt32Size(2, this.latestUpdateTime_);
            }
            while (true) {
                i2 = i;
                if (i3 >= this.userList_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(3, (MessageLite) this.userList_.get(i3)) + i2;
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

        public static IMAllUserRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMAllUserRsp) PARSER.parseFrom(byteString);
        }

        public static IMAllUserRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMAllUserRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMAllUserRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMAllUserRsp) PARSER.parseFrom(bArr);
        }

        public static IMAllUserRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMAllUserRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMAllUserRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMAllUserRsp) PARSER.parseFrom(inputStream);
        }

        public static IMAllUserRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAllUserRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMAllUserRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMAllUserRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMAllUserRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAllUserRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMAllUserRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMAllUserRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMAllUserRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMAllUserRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMAllUserRsp iMAllUserRsp) {
            return newBuilder().mergeFrom(iMAllUserRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMAllUserRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getLatestUpdateTime();

        int getUserId();

        UserInfo getUserList(int i);

        int getUserListCount();

        List<UserInfo> getUserListList();

        boolean hasAttachData();

        boolean hasLatestUpdateTime();

        boolean hasUserId();
    }

    public static final class IMChangeAvatarReq extends GeneratedMessageLite implements IMChangeAvatarReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int AVATAR_URL_FIELD_NUMBER = 2;
        public static Parser<IMChangeAvatarReq> PARSER = new AbstractParser<IMChangeAvatarReq>() {
            public IMChangeAvatarReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMChangeAvatarReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMChangeAvatarReq defaultInstance = new IMChangeAvatarReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public Object avatarUrl_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMChangeAvatarReq, Builder> implements IMChangeAvatarReqOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private Object avatarUrl_ = "";
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
                this.avatarUrl_ = "";
                this.bitField0_ &= -3;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMChangeAvatarReq getDefaultInstanceForType() {
                return IMChangeAvatarReq.getDefaultInstance();
            }

            public IMChangeAvatarReq build() {
                IMChangeAvatarReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMChangeAvatarReq buildPartial() {
                int i = 1;
                IMChangeAvatarReq iMChangeAvatarReq = new IMChangeAvatarReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMChangeAvatarReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMChangeAvatarReq.avatarUrl_ = this.avatarUrl_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMChangeAvatarReq.attachData_ = this.attachData_;
                iMChangeAvatarReq.bitField0_ = i;
                return iMChangeAvatarReq;
            }

            public Builder mergeFrom(IMChangeAvatarReq iMChangeAvatarReq) {
                if (iMChangeAvatarReq != IMChangeAvatarReq.getDefaultInstance()) {
                    if (iMChangeAvatarReq.hasUserId()) {
                        setUserId(iMChangeAvatarReq.getUserId());
                    }
                    if (iMChangeAvatarReq.hasAvatarUrl()) {
                        this.bitField0_ |= 2;
                        this.avatarUrl_ = iMChangeAvatarReq.avatarUrl_;
                    }
                    if (iMChangeAvatarReq.hasAttachData()) {
                        setAttachData(iMChangeAvatarReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMChangeAvatarReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasAvatarUrl()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMChangeAvatarReq iMChangeAvatarReq;
                IMChangeAvatarReq iMChangeAvatarReq2;
                try {
                    IMChangeAvatarReq iMChangeAvatarReq3 = (IMChangeAvatarReq) IMChangeAvatarReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMChangeAvatarReq3 != null) {
                        mergeFrom(iMChangeAvatarReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMChangeAvatarReq2 = (IMChangeAvatarReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMChangeAvatarReq = iMChangeAvatarReq2;
                    th = th2;
                }
                if (iMChangeAvatarReq != null) {
                    mergeFrom(iMChangeAvatarReq);
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

            public boolean hasAvatarUrl() {
                return (this.bitField0_ & 2) == 2;
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
                this.bitField0_ |= 2;
                this.avatarUrl_ = str;
                return this;
            }

            public Builder clearAvatarUrl() {
                this.bitField0_ &= -3;
                this.avatarUrl_ = IMChangeAvatarReq.getDefaultInstance().getAvatarUrl();
                return this;
            }

            public Builder setAvatarUrlBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.avatarUrl_ = byteString;
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 4) == 4;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -5;
                this.attachData_ = IMChangeAvatarReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMChangeAvatarReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMChangeAvatarReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMChangeAvatarReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMChangeAvatarReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMChangeAvatarReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.avatarUrl_ = readBytes;
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

        public Parser<IMChangeAvatarReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasAvatarUrl() {
            return (this.bitField0_ & 2) == 2;
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

        public boolean hasAttachData() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.avatarUrl_ = "";
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
            } else if (!hasAvatarUrl()) {
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
                codedOutputStream.writeBytes(2, getAvatarUrlBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
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
                i2 += CodedOutputStream.computeBytesSize(2, getAvatarUrlBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
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

        public static IMChangeAvatarReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMChangeAvatarReq) PARSER.parseFrom(byteString);
        }

        public static IMChangeAvatarReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMChangeAvatarReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMChangeAvatarReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMChangeAvatarReq) PARSER.parseFrom(bArr);
        }

        public static IMChangeAvatarReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMChangeAvatarReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMChangeAvatarReq parseFrom(InputStream inputStream) throws IOException {
            return (IMChangeAvatarReq) PARSER.parseFrom(inputStream);
        }

        public static IMChangeAvatarReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMChangeAvatarReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMChangeAvatarReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMChangeAvatarReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMChangeAvatarReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMChangeAvatarReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMChangeAvatarReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMChangeAvatarReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMChangeAvatarReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMChangeAvatarReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMChangeAvatarReq iMChangeAvatarReq) {
            return newBuilder().mergeFrom(iMChangeAvatarReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMChangeAvatarReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        String getAvatarUrl();

        ByteString getAvatarUrlBytes();

        int getUserId();

        boolean hasAttachData();

        boolean hasAvatarUrl();

        boolean hasUserId();
    }

    public static final class IMChangeAvatarRsp extends GeneratedMessageLite implements IMChangeAvatarRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMChangeAvatarRsp> PARSER = new AbstractParser<IMChangeAvatarRsp>() {
            public IMChangeAvatarRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMChangeAvatarRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RESULT_CODE_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMChangeAvatarRsp defaultInstance = new IMChangeAvatarRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
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

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMChangeAvatarRsp, Builder> implements IMChangeAvatarRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
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
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMChangeAvatarRsp getDefaultInstanceForType() {
                return IMChangeAvatarRsp.getDefaultInstance();
            }

            public IMChangeAvatarRsp build() {
                IMChangeAvatarRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMChangeAvatarRsp buildPartial() {
                int i = 1;
                IMChangeAvatarRsp iMChangeAvatarRsp = new IMChangeAvatarRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMChangeAvatarRsp.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMChangeAvatarRsp.resultCode_ = this.resultCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMChangeAvatarRsp.attachData_ = this.attachData_;
                iMChangeAvatarRsp.bitField0_ = i;
                return iMChangeAvatarRsp;
            }

            public Builder mergeFrom(IMChangeAvatarRsp iMChangeAvatarRsp) {
                if (iMChangeAvatarRsp != IMChangeAvatarRsp.getDefaultInstance()) {
                    if (iMChangeAvatarRsp.hasUserId()) {
                        setUserId(iMChangeAvatarRsp.getUserId());
                    }
                    if (iMChangeAvatarRsp.hasResultCode()) {
                        setResultCode(iMChangeAvatarRsp.getResultCode());
                    }
                    if (iMChangeAvatarRsp.hasAttachData()) {
                        setAttachData(iMChangeAvatarRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMChangeAvatarRsp.unknownFields));
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
                IMChangeAvatarRsp iMChangeAvatarRsp;
                IMChangeAvatarRsp iMChangeAvatarRsp2;
                try {
                    IMChangeAvatarRsp iMChangeAvatarRsp3 = (IMChangeAvatarRsp) IMChangeAvatarRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMChangeAvatarRsp3 != null) {
                        mergeFrom(iMChangeAvatarRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMChangeAvatarRsp2 = (IMChangeAvatarRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMChangeAvatarRsp = iMChangeAvatarRsp2;
                    th = th2;
                }
                if (iMChangeAvatarRsp != null) {
                    mergeFrom(iMChangeAvatarRsp);
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

            public boolean hasAttachData() {
                return (this.bitField0_ & 4) == 4;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -5;
                this.attachData_ = IMChangeAvatarRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMChangeAvatarRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMChangeAvatarRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMChangeAvatarRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMChangeAvatarRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMChangeAvatarRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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

        public Parser<IMChangeAvatarRsp> getParserForType() {
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

        public boolean hasAttachData() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.resultCode_ = 0;
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
            if ((this.bitField0_ & 4) == 4) {
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
                i2 += CodedOutputStream.computeUInt32Size(2, this.resultCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
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

        public static IMChangeAvatarRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMChangeAvatarRsp) PARSER.parseFrom(byteString);
        }

        public static IMChangeAvatarRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMChangeAvatarRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMChangeAvatarRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMChangeAvatarRsp) PARSER.parseFrom(bArr);
        }

        public static IMChangeAvatarRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMChangeAvatarRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMChangeAvatarRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMChangeAvatarRsp) PARSER.parseFrom(inputStream);
        }

        public static IMChangeAvatarRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMChangeAvatarRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMChangeAvatarRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMChangeAvatarRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMChangeAvatarRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMChangeAvatarRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMChangeAvatarRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMChangeAvatarRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMChangeAvatarRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMChangeAvatarRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMChangeAvatarRsp iMChangeAvatarRsp) {
            return newBuilder().mergeFrom(iMChangeAvatarRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMChangeAvatarRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getResultCode();

        int getUserId();

        boolean hasAttachData();

        boolean hasResultCode();

        boolean hasUserId();
    }

    public static final class IMDepartmentReq extends GeneratedMessageLite implements IMDepartmentReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int LATEST_UPDATE_TIME_FIELD_NUMBER = 2;
        public static Parser<IMDepartmentReq> PARSER = new AbstractParser<IMDepartmentReq>() {
            public IMDepartmentReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMDepartmentReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMDepartmentReq defaultInstance = new IMDepartmentReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int latestUpdateTime_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMDepartmentReq, Builder> implements IMDepartmentReqOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int latestUpdateTime_;
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
                this.latestUpdateTime_ = 0;
                this.bitField0_ &= -3;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMDepartmentReq getDefaultInstanceForType() {
                return IMDepartmentReq.getDefaultInstance();
            }

            public IMDepartmentReq build() {
                IMDepartmentReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMDepartmentReq buildPartial() {
                int i = 1;
                IMDepartmentReq iMDepartmentReq = new IMDepartmentReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMDepartmentReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMDepartmentReq.latestUpdateTime_ = this.latestUpdateTime_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMDepartmentReq.attachData_ = this.attachData_;
                iMDepartmentReq.bitField0_ = i;
                return iMDepartmentReq;
            }

            public Builder mergeFrom(IMDepartmentReq iMDepartmentReq) {
                if (iMDepartmentReq != IMDepartmentReq.getDefaultInstance()) {
                    if (iMDepartmentReq.hasUserId()) {
                        setUserId(iMDepartmentReq.getUserId());
                    }
                    if (iMDepartmentReq.hasLatestUpdateTime()) {
                        setLatestUpdateTime(iMDepartmentReq.getLatestUpdateTime());
                    }
                    if (iMDepartmentReq.hasAttachData()) {
                        setAttachData(iMDepartmentReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMDepartmentReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasLatestUpdateTime()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMDepartmentReq iMDepartmentReq;
                IMDepartmentReq iMDepartmentReq2;
                try {
                    IMDepartmentReq iMDepartmentReq3 = (IMDepartmentReq) IMDepartmentReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMDepartmentReq3 != null) {
                        mergeFrom(iMDepartmentReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMDepartmentReq2 = (IMDepartmentReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMDepartmentReq = iMDepartmentReq2;
                    th = th2;
                }
                if (iMDepartmentReq != null) {
                    mergeFrom(iMDepartmentReq);
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

            public boolean hasLatestUpdateTime() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getLatestUpdateTime() {
                return this.latestUpdateTime_;
            }

            public Builder setLatestUpdateTime(int i) {
                this.bitField0_ |= 2;
                this.latestUpdateTime_ = i;
                return this;
            }

            public Builder clearLatestUpdateTime() {
                this.bitField0_ &= -3;
                this.latestUpdateTime_ = 0;
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 4) == 4;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -5;
                this.attachData_ = IMDepartmentReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMDepartmentReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMDepartmentReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMDepartmentReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMDepartmentReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMDepartmentReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.latestUpdateTime_ = codedInputStream.readUInt32();
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

        public Parser<IMDepartmentReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasLatestUpdateTime() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getLatestUpdateTime() {
            return this.latestUpdateTime_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.latestUpdateTime_ = 0;
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
            } else if (!hasLatestUpdateTime()) {
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
                codedOutputStream.writeUInt32(2, this.latestUpdateTime_);
            }
            if ((this.bitField0_ & 4) == 4) {
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
                i2 += CodedOutputStream.computeUInt32Size(2, this.latestUpdateTime_);
            }
            if ((this.bitField0_ & 4) == 4) {
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

        public static IMDepartmentReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMDepartmentReq) PARSER.parseFrom(byteString);
        }

        public static IMDepartmentReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMDepartmentReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMDepartmentReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMDepartmentReq) PARSER.parseFrom(bArr);
        }

        public static IMDepartmentReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMDepartmentReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMDepartmentReq parseFrom(InputStream inputStream) throws IOException {
            return (IMDepartmentReq) PARSER.parseFrom(inputStream);
        }

        public static IMDepartmentReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDepartmentReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMDepartmentReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMDepartmentReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMDepartmentReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDepartmentReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMDepartmentReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMDepartmentReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMDepartmentReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDepartmentReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMDepartmentReq iMDepartmentReq) {
            return newBuilder().mergeFrom(iMDepartmentReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMDepartmentReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getLatestUpdateTime();

        int getUserId();

        boolean hasAttachData();

        boolean hasLatestUpdateTime();

        boolean hasUserId();
    }

    public static final class IMDepartmentRsp extends GeneratedMessageLite implements IMDepartmentRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int DEPT_LIST_FIELD_NUMBER = 3;
        public static final int LATEST_UPDATE_TIME_FIELD_NUMBER = 2;
        public static Parser<IMDepartmentRsp> PARSER = new AbstractParser<IMDepartmentRsp>() {
            public IMDepartmentRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMDepartmentRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMDepartmentRsp defaultInstance = new IMDepartmentRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public List<DepartInfo> deptList_;
        /* access modifiers changed from: private */
        public int latestUpdateTime_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMDepartmentRsp, Builder> implements IMDepartmentRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private List<DepartInfo> deptList_ = Collections.emptyList();
            private int latestUpdateTime_;
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
                this.latestUpdateTime_ = 0;
                this.bitField0_ &= -3;
                this.deptList_ = Collections.emptyList();
                this.bitField0_ &= -5;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMDepartmentRsp getDefaultInstanceForType() {
                return IMDepartmentRsp.getDefaultInstance();
            }

            public IMDepartmentRsp build() {
                IMDepartmentRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMDepartmentRsp buildPartial() {
                int i = 1;
                IMDepartmentRsp iMDepartmentRsp = new IMDepartmentRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMDepartmentRsp.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMDepartmentRsp.latestUpdateTime_ = this.latestUpdateTime_;
                if ((this.bitField0_ & 4) == 4) {
                    this.deptList_ = Collections.unmodifiableList(this.deptList_);
                    this.bitField0_ &= -5;
                }
                iMDepartmentRsp.deptList_ = this.deptList_;
                if ((i2 & 8) == 8) {
                    i |= 4;
                }
                iMDepartmentRsp.attachData_ = this.attachData_;
                iMDepartmentRsp.bitField0_ = i;
                return iMDepartmentRsp;
            }

            public Builder mergeFrom(IMDepartmentRsp iMDepartmentRsp) {
                if (iMDepartmentRsp != IMDepartmentRsp.getDefaultInstance()) {
                    if (iMDepartmentRsp.hasUserId()) {
                        setUserId(iMDepartmentRsp.getUserId());
                    }
                    if (iMDepartmentRsp.hasLatestUpdateTime()) {
                        setLatestUpdateTime(iMDepartmentRsp.getLatestUpdateTime());
                    }
                    if (!iMDepartmentRsp.deptList_.isEmpty()) {
                        if (this.deptList_.isEmpty()) {
                            this.deptList_ = iMDepartmentRsp.deptList_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureDeptListIsMutable();
                            this.deptList_.addAll(iMDepartmentRsp.deptList_);
                        }
                    }
                    if (iMDepartmentRsp.hasAttachData()) {
                        setAttachData(iMDepartmentRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMDepartmentRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasUserId() || !hasLatestUpdateTime()) {
                    return false;
                }
                for (int i = 0; i < getDeptListCount(); i++) {
                    if (!getDeptList(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMDepartmentRsp iMDepartmentRsp;
                IMDepartmentRsp iMDepartmentRsp2;
                try {
                    IMDepartmentRsp iMDepartmentRsp3 = (IMDepartmentRsp) IMDepartmentRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMDepartmentRsp3 != null) {
                        mergeFrom(iMDepartmentRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMDepartmentRsp2 = (IMDepartmentRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMDepartmentRsp = iMDepartmentRsp2;
                    th = th2;
                }
                if (iMDepartmentRsp != null) {
                    mergeFrom(iMDepartmentRsp);
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

            public boolean hasLatestUpdateTime() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getLatestUpdateTime() {
                return this.latestUpdateTime_;
            }

            public Builder setLatestUpdateTime(int i) {
                this.bitField0_ |= 2;
                this.latestUpdateTime_ = i;
                return this;
            }

            public Builder clearLatestUpdateTime() {
                this.bitField0_ &= -3;
                this.latestUpdateTime_ = 0;
                return this;
            }

            private void ensureDeptListIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.deptList_ = new ArrayList(this.deptList_);
                    this.bitField0_ |= 4;
                }
            }

            public List<DepartInfo> getDeptListList() {
                return Collections.unmodifiableList(this.deptList_);
            }

            public int getDeptListCount() {
                return this.deptList_.size();
            }

            public DepartInfo getDeptList(int i) {
                return (DepartInfo) this.deptList_.get(i);
            }

            public Builder setDeptList(int i, DepartInfo departInfo) {
                if (departInfo == null) {
                    throw new NullPointerException();
                }
                ensureDeptListIsMutable();
                this.deptList_.set(i, departInfo);
                return this;
            }

            public Builder setDeptList(int i, com.ifengyu.im.protobuf.IMBaseDefine.DepartInfo.Builder builder) {
                ensureDeptListIsMutable();
                this.deptList_.set(i, builder.build());
                return this;
            }

            public Builder addDeptList(DepartInfo departInfo) {
                if (departInfo == null) {
                    throw new NullPointerException();
                }
                ensureDeptListIsMutable();
                this.deptList_.add(departInfo);
                return this;
            }

            public Builder addDeptList(int i, DepartInfo departInfo) {
                if (departInfo == null) {
                    throw new NullPointerException();
                }
                ensureDeptListIsMutable();
                this.deptList_.add(i, departInfo);
                return this;
            }

            public Builder addDeptList(com.ifengyu.im.protobuf.IMBaseDefine.DepartInfo.Builder builder) {
                ensureDeptListIsMutable();
                this.deptList_.add(builder.build());
                return this;
            }

            public Builder addDeptList(int i, com.ifengyu.im.protobuf.IMBaseDefine.DepartInfo.Builder builder) {
                ensureDeptListIsMutable();
                this.deptList_.add(i, builder.build());
                return this;
            }

            public Builder addAllDeptList(Iterable<? extends DepartInfo> iterable) {
                ensureDeptListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.deptList_);
                return this;
            }

            public Builder clearDeptList() {
                this.deptList_ = Collections.emptyList();
                this.bitField0_ &= -5;
                return this;
            }

            public Builder removeDeptList(int i) {
                ensureDeptListIsMutable();
                this.deptList_.remove(i);
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
                this.attachData_ = IMDepartmentRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMDepartmentRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMDepartmentRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMDepartmentRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMDepartmentRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMDepartmentRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.latestUpdateTime_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            if (!(z2 & true)) {
                                this.deptList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.deptList_.add(codedInputStream.readMessage(DepartInfo.PARSER, extensionRegistryLite));
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
                        this.deptList_ = Collections.unmodifiableList(this.deptList_);
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
                this.deptList_ = Collections.unmodifiableList(this.deptList_);
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

        public Parser<IMDepartmentRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasLatestUpdateTime() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getLatestUpdateTime() {
            return this.latestUpdateTime_;
        }

        public List<DepartInfo> getDeptListList() {
            return this.deptList_;
        }

        public List<? extends DepartInfoOrBuilder> getDeptListOrBuilderList() {
            return this.deptList_;
        }

        public int getDeptListCount() {
            return this.deptList_.size();
        }

        public DepartInfo getDeptList(int i) {
            return (DepartInfo) this.deptList_.get(i);
        }

        public DepartInfoOrBuilder getDeptListOrBuilder(int i) {
            return (DepartInfoOrBuilder) this.deptList_.get(i);
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.latestUpdateTime_ = 0;
            this.deptList_ = Collections.emptyList();
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
            } else if (!hasLatestUpdateTime()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                for (int i = 0; i < getDeptListCount(); i++) {
                    if (!getDeptList(i).isInitialized()) {
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
                codedOutputStream.writeUInt32(2, this.latestUpdateTime_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.deptList_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(3, (MessageLite) this.deptList_.get(i2));
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
                i += CodedOutputStream.computeUInt32Size(2, this.latestUpdateTime_);
            }
            while (true) {
                i2 = i;
                if (i3 >= this.deptList_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(3, (MessageLite) this.deptList_.get(i3)) + i2;
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

        public static IMDepartmentRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMDepartmentRsp) PARSER.parseFrom(byteString);
        }

        public static IMDepartmentRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMDepartmentRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMDepartmentRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMDepartmentRsp) PARSER.parseFrom(bArr);
        }

        public static IMDepartmentRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMDepartmentRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMDepartmentRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMDepartmentRsp) PARSER.parseFrom(inputStream);
        }

        public static IMDepartmentRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDepartmentRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMDepartmentRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMDepartmentRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMDepartmentRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDepartmentRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMDepartmentRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMDepartmentRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMDepartmentRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMDepartmentRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMDepartmentRsp iMDepartmentRsp) {
            return newBuilder().mergeFrom(iMDepartmentRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMDepartmentRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        DepartInfo getDeptList(int i);

        int getDeptListCount();

        List<DepartInfo> getDeptListList();

        int getLatestUpdateTime();

        int getUserId();

        boolean hasAttachData();

        boolean hasLatestUpdateTime();

        boolean hasUserId();
    }

    public static final class IMGetNearByUserListReq extends GeneratedMessageLite implements IMGetNearByUserListReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int FYAPPID_FIELD_NUMBER = 6;
        public static final int GAODE_KEY_FIELD_NUMBER = 2;
        public static final int LATITUDE_FIELD_NUMBER = 5;
        public static final int LONGITUDE_FIELD_NUMBER = 4;
        public static Parser<IMGetNearByUserListReq> PARSER = new AbstractParser<IMGetNearByUserListReq>() {
            public IMGetNearByUserListReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMGetNearByUserListReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TABLEID_FIELD_NUMBER = 3;
        public static final int USER_HANDLE_FIELD_NUMBER = 7;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMGetNearByUserListReq defaultInstance = new IMGetNearByUserListReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int fyappid_;
        /* access modifiers changed from: private */
        public Object gaodeKey_;
        /* access modifiers changed from: private */
        public Object latitude_;
        /* access modifiers changed from: private */
        public Object longitude_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object tableid_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userHandle_;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMGetNearByUserListReq, Builder> implements IMGetNearByUserListReqOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int fyappid_;
            private Object gaodeKey_ = "";
            private Object latitude_ = "";
            private Object longitude_ = "";
            private Object tableid_ = "";
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
                this.gaodeKey_ = "";
                this.bitField0_ &= -3;
                this.tableid_ = "";
                this.bitField0_ &= -5;
                this.longitude_ = "";
                this.bitField0_ &= -9;
                this.latitude_ = "";
                this.bitField0_ &= -17;
                this.fyappid_ = 0;
                this.bitField0_ &= -33;
                this.userHandle_ = 0;
                this.bitField0_ &= -65;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -129;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMGetNearByUserListReq getDefaultInstanceForType() {
                return IMGetNearByUserListReq.getDefaultInstance();
            }

            public IMGetNearByUserListReq build() {
                IMGetNearByUserListReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMGetNearByUserListReq buildPartial() {
                int i = 1;
                IMGetNearByUserListReq iMGetNearByUserListReq = new IMGetNearByUserListReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMGetNearByUserListReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMGetNearByUserListReq.gaodeKey_ = this.gaodeKey_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMGetNearByUserListReq.tableid_ = this.tableid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMGetNearByUserListReq.longitude_ = this.longitude_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMGetNearByUserListReq.latitude_ = this.latitude_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                iMGetNearByUserListReq.fyappid_ = this.fyappid_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                iMGetNearByUserListReq.userHandle_ = this.userHandle_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                iMGetNearByUserListReq.attachData_ = this.attachData_;
                iMGetNearByUserListReq.bitField0_ = i;
                return iMGetNearByUserListReq;
            }

            public Builder mergeFrom(IMGetNearByUserListReq iMGetNearByUserListReq) {
                if (iMGetNearByUserListReq != IMGetNearByUserListReq.getDefaultInstance()) {
                    if (iMGetNearByUserListReq.hasUserId()) {
                        setUserId(iMGetNearByUserListReq.getUserId());
                    }
                    if (iMGetNearByUserListReq.hasGaodeKey()) {
                        this.bitField0_ |= 2;
                        this.gaodeKey_ = iMGetNearByUserListReq.gaodeKey_;
                    }
                    if (iMGetNearByUserListReq.hasTableid()) {
                        this.bitField0_ |= 4;
                        this.tableid_ = iMGetNearByUserListReq.tableid_;
                    }
                    if (iMGetNearByUserListReq.hasLongitude()) {
                        this.bitField0_ |= 8;
                        this.longitude_ = iMGetNearByUserListReq.longitude_;
                    }
                    if (iMGetNearByUserListReq.hasLatitude()) {
                        this.bitField0_ |= 16;
                        this.latitude_ = iMGetNearByUserListReq.latitude_;
                    }
                    if (iMGetNearByUserListReq.hasFyappid()) {
                        setFyappid(iMGetNearByUserListReq.getFyappid());
                    }
                    if (iMGetNearByUserListReq.hasUserHandle()) {
                        setUserHandle(iMGetNearByUserListReq.getUserHandle());
                    }
                    if (iMGetNearByUserListReq.hasAttachData()) {
                        setAttachData(iMGetNearByUserListReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMGetNearByUserListReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasLongitude() && hasLatitude()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMGetNearByUserListReq iMGetNearByUserListReq;
                IMGetNearByUserListReq iMGetNearByUserListReq2;
                try {
                    IMGetNearByUserListReq iMGetNearByUserListReq3 = (IMGetNearByUserListReq) IMGetNearByUserListReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMGetNearByUserListReq3 != null) {
                        mergeFrom(iMGetNearByUserListReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMGetNearByUserListReq2 = (IMGetNearByUserListReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMGetNearByUserListReq = iMGetNearByUserListReq2;
                    th = th2;
                }
                if (iMGetNearByUserListReq != null) {
                    mergeFrom(iMGetNearByUserListReq);
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

            public boolean hasGaodeKey() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getGaodeKey() {
                Object obj = this.gaodeKey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.gaodeKey_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getGaodeKeyBytes() {
                Object obj = this.gaodeKey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gaodeKey_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setGaodeKey(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.gaodeKey_ = str;
                return this;
            }

            public Builder clearGaodeKey() {
                this.bitField0_ &= -3;
                this.gaodeKey_ = IMGetNearByUserListReq.getDefaultInstance().getGaodeKey();
                return this;
            }

            public Builder setGaodeKeyBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.gaodeKey_ = byteString;
                return this;
            }

            public boolean hasTableid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getTableid() {
                Object obj = this.tableid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.tableid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTableidBytes() {
                Object obj = this.tableid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.tableid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTableid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.tableid_ = str;
                return this;
            }

            public Builder clearTableid() {
                this.bitField0_ &= -5;
                this.tableid_ = IMGetNearByUserListReq.getDefaultInstance().getTableid();
                return this;
            }

            public Builder setTableidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.tableid_ = byteString;
                return this;
            }

            public boolean hasLongitude() {
                return (this.bitField0_ & 8) == 8;
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
                this.bitField0_ |= 8;
                this.longitude_ = str;
                return this;
            }

            public Builder clearLongitude() {
                this.bitField0_ &= -9;
                this.longitude_ = IMGetNearByUserListReq.getDefaultInstance().getLongitude();
                return this;
            }

            public Builder setLongitudeBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.longitude_ = byteString;
                return this;
            }

            public boolean hasLatitude() {
                return (this.bitField0_ & 16) == 16;
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
                this.bitField0_ |= 16;
                this.latitude_ = str;
                return this;
            }

            public Builder clearLatitude() {
                this.bitField0_ &= -17;
                this.latitude_ = IMGetNearByUserListReq.getDefaultInstance().getLatitude();
                return this;
            }

            public Builder setLatitudeBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.latitude_ = byteString;
                return this;
            }

            public boolean hasFyappid() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getFyappid() {
                return this.fyappid_;
            }

            public Builder setFyappid(int i) {
                this.bitField0_ |= 32;
                this.fyappid_ = i;
                return this;
            }

            public Builder clearFyappid() {
                this.bitField0_ &= -33;
                this.fyappid_ = 0;
                return this;
            }

            public boolean hasUserHandle() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getUserHandle() {
                return this.userHandle_;
            }

            public Builder setUserHandle(int i) {
                this.bitField0_ |= 64;
                this.userHandle_ = i;
                return this;
            }

            public Builder clearUserHandle() {
                this.bitField0_ &= -65;
                this.userHandle_ = 0;
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 128) == 128;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -129;
                this.attachData_ = IMGetNearByUserListReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMGetNearByUserListReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMGetNearByUserListReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMGetNearByUserListReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMGetNearByUserListReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMGetNearByUserListReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.gaodeKey_ = readBytes;
                            break;
                        case 26:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.tableid_ = readBytes2;
                            break;
                        case 34:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.longitude_ = readBytes3;
                            break;
                        case 42:
                            ByteString readBytes4 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.latitude_ = readBytes4;
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.fyappid_ = codedInputStream.readUInt32();
                            break;
                        case 56:
                            this.bitField0_ |= 64;
                            this.userHandle_ = codedInputStream.readUInt32();
                            break;
                        case 162:
                            this.bitField0_ |= 128;
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

        public Parser<IMGetNearByUserListReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasGaodeKey() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getGaodeKey() {
            Object obj = this.gaodeKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.gaodeKey_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getGaodeKeyBytes() {
            Object obj = this.gaodeKey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gaodeKey_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasTableid() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getTableid() {
            Object obj = this.tableid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.tableid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTableidBytes() {
            Object obj = this.tableid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.tableid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasLongitude() {
            return (this.bitField0_ & 8) == 8;
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
            return (this.bitField0_ & 16) == 16;
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

        public boolean hasFyappid() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getFyappid() {
            return this.fyappid_;
        }

        public boolean hasUserHandle() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 128) == 128;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.gaodeKey_ = "";
            this.tableid_ = "";
            this.longitude_ = "";
            this.latitude_ = "";
            this.fyappid_ = 0;
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
            if (!hasLongitude()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasLatitude()) {
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
                codedOutputStream.writeBytes(2, getGaodeKeyBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getTableidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getLongitudeBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getLatitudeBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt32(6, this.fyappid_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeUInt32(7, this.userHandle_);
            }
            if ((this.bitField0_ & 128) == 128) {
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
                i2 += CodedOutputStream.computeBytesSize(2, getGaodeKeyBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getTableidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getLongitudeBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getLatitudeBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt32Size(6, this.fyappid_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeUInt32Size(7, this.userHandle_);
            }
            if ((this.bitField0_ & 128) == 128) {
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

        public static IMGetNearByUserListReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMGetNearByUserListReq) PARSER.parseFrom(byteString);
        }

        public static IMGetNearByUserListReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetNearByUserListReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMGetNearByUserListReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMGetNearByUserListReq) PARSER.parseFrom(bArr);
        }

        public static IMGetNearByUserListReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetNearByUserListReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMGetNearByUserListReq parseFrom(InputStream inputStream) throws IOException {
            return (IMGetNearByUserListReq) PARSER.parseFrom(inputStream);
        }

        public static IMGetNearByUserListReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetNearByUserListReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetNearByUserListReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMGetNearByUserListReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMGetNearByUserListReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetNearByUserListReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetNearByUserListReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMGetNearByUserListReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMGetNearByUserListReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetNearByUserListReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMGetNearByUserListReq iMGetNearByUserListReq) {
            return newBuilder().mergeFrom(iMGetNearByUserListReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMGetNearByUserListReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getFyappid();

        String getGaodeKey();

        ByteString getGaodeKeyBytes();

        String getLatitude();

        ByteString getLatitudeBytes();

        String getLongitude();

        ByteString getLongitudeBytes();

        String getTableid();

        ByteString getTableidBytes();

        int getUserHandle();

        int getUserId();

        boolean hasAttachData();

        boolean hasFyappid();

        boolean hasGaodeKey();

        boolean hasLatitude();

        boolean hasLongitude();

        boolean hasTableid();

        boolean hasUserHandle();

        boolean hasUserId();
    }

    public static final class IMGetNearByUserListRsp extends GeneratedMessageLite implements IMGetNearByUserListRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMGetNearByUserListRsp> PARSER = new AbstractParser<IMGetNearByUserListRsp>() {
            public IMGetNearByUserListRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMGetNearByUserListRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RESULT_CODE_FIELD_NUMBER = 2;
        public static final int USER_HANDLE_FIELD_NUMBER = 4;
        public static final int USER_ID_FIELD_NUMBER = 1;
        public static final int USER_INFO_LIST_FIELD_NUMBER = 3;
        private static final IMGetNearByUserListRsp defaultInstance = new IMGetNearByUserListRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
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
        /* access modifiers changed from: private */
        public List<UserInfo> userInfoList_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMGetNearByUserListRsp, Builder> implements IMGetNearByUserListRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int resultCode_;
            private int userHandle_;
            private int userId_;
            private List<UserInfo> userInfoList_ = Collections.emptyList();

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
                this.userInfoList_ = Collections.emptyList();
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

            public IMGetNearByUserListRsp getDefaultInstanceForType() {
                return IMGetNearByUserListRsp.getDefaultInstance();
            }

            public IMGetNearByUserListRsp build() {
                IMGetNearByUserListRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMGetNearByUserListRsp buildPartial() {
                int i = 1;
                IMGetNearByUserListRsp iMGetNearByUserListRsp = new IMGetNearByUserListRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMGetNearByUserListRsp.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMGetNearByUserListRsp.resultCode_ = this.resultCode_;
                if ((this.bitField0_ & 4) == 4) {
                    this.userInfoList_ = Collections.unmodifiableList(this.userInfoList_);
                    this.bitField0_ &= -5;
                }
                iMGetNearByUserListRsp.userInfoList_ = this.userInfoList_;
                if ((i2 & 8) == 8) {
                    i |= 4;
                }
                iMGetNearByUserListRsp.userHandle_ = this.userHandle_;
                if ((i2 & 16) == 16) {
                    i |= 8;
                }
                iMGetNearByUserListRsp.attachData_ = this.attachData_;
                iMGetNearByUserListRsp.bitField0_ = i;
                return iMGetNearByUserListRsp;
            }

            public Builder mergeFrom(IMGetNearByUserListRsp iMGetNearByUserListRsp) {
                if (iMGetNearByUserListRsp != IMGetNearByUserListRsp.getDefaultInstance()) {
                    if (iMGetNearByUserListRsp.hasUserId()) {
                        setUserId(iMGetNearByUserListRsp.getUserId());
                    }
                    if (iMGetNearByUserListRsp.hasResultCode()) {
                        setResultCode(iMGetNearByUserListRsp.getResultCode());
                    }
                    if (!iMGetNearByUserListRsp.userInfoList_.isEmpty()) {
                        if (this.userInfoList_.isEmpty()) {
                            this.userInfoList_ = iMGetNearByUserListRsp.userInfoList_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureUserInfoListIsMutable();
                            this.userInfoList_.addAll(iMGetNearByUserListRsp.userInfoList_);
                        }
                    }
                    if (iMGetNearByUserListRsp.hasUserHandle()) {
                        setUserHandle(iMGetNearByUserListRsp.getUserHandle());
                    }
                    if (iMGetNearByUserListRsp.hasAttachData()) {
                        setAttachData(iMGetNearByUserListRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMGetNearByUserListRsp.unknownFields));
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
                IMGetNearByUserListRsp iMGetNearByUserListRsp;
                IMGetNearByUserListRsp iMGetNearByUserListRsp2;
                try {
                    IMGetNearByUserListRsp iMGetNearByUserListRsp3 = (IMGetNearByUserListRsp) IMGetNearByUserListRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMGetNearByUserListRsp3 != null) {
                        mergeFrom(iMGetNearByUserListRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMGetNearByUserListRsp2 = (IMGetNearByUserListRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMGetNearByUserListRsp = iMGetNearByUserListRsp2;
                    th = th2;
                }
                if (iMGetNearByUserListRsp != null) {
                    mergeFrom(iMGetNearByUserListRsp);
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

            private void ensureUserInfoListIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.userInfoList_ = new ArrayList(this.userInfoList_);
                    this.bitField0_ |= 4;
                }
            }

            public List<UserInfo> getUserInfoListList() {
                return Collections.unmodifiableList(this.userInfoList_);
            }

            public int getUserInfoListCount() {
                return this.userInfoList_.size();
            }

            public UserInfo getUserInfoList(int i) {
                return (UserInfo) this.userInfoList_.get(i);
            }

            public Builder setUserInfoList(int i, UserInfo userInfo) {
                if (userInfo == null) {
                    throw new NullPointerException();
                }
                ensureUserInfoListIsMutable();
                this.userInfoList_.set(i, userInfo);
                return this;
            }

            public Builder setUserInfoList(int i, com.ifengyu.im.protobuf.IMBaseDefine.UserInfo.Builder builder) {
                ensureUserInfoListIsMutable();
                this.userInfoList_.set(i, builder.build());
                return this;
            }

            public Builder addUserInfoList(UserInfo userInfo) {
                if (userInfo == null) {
                    throw new NullPointerException();
                }
                ensureUserInfoListIsMutable();
                this.userInfoList_.add(userInfo);
                return this;
            }

            public Builder addUserInfoList(int i, UserInfo userInfo) {
                if (userInfo == null) {
                    throw new NullPointerException();
                }
                ensureUserInfoListIsMutable();
                this.userInfoList_.add(i, userInfo);
                return this;
            }

            public Builder addUserInfoList(com.ifengyu.im.protobuf.IMBaseDefine.UserInfo.Builder builder) {
                ensureUserInfoListIsMutable();
                this.userInfoList_.add(builder.build());
                return this;
            }

            public Builder addUserInfoList(int i, com.ifengyu.im.protobuf.IMBaseDefine.UserInfo.Builder builder) {
                ensureUserInfoListIsMutable();
                this.userInfoList_.add(i, builder.build());
                return this;
            }

            public Builder addAllUserInfoList(Iterable<? extends UserInfo> iterable) {
                ensureUserInfoListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.userInfoList_);
                return this;
            }

            public Builder clearUserInfoList() {
                this.userInfoList_ = Collections.emptyList();
                this.bitField0_ &= -5;
                return this;
            }

            public Builder removeUserInfoList(int i) {
                ensureUserInfoListIsMutable();
                this.userInfoList_.remove(i);
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
                this.attachData_ = IMGetNearByUserListRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMGetNearByUserListRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMGetNearByUserListRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMGetNearByUserListRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMGetNearByUserListRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMGetNearByUserListRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.resultCode_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            if (!(z2 & true)) {
                                this.userInfoList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.userInfoList_.add(codedInputStream.readMessage(UserInfo.PARSER, extensionRegistryLite));
                            break;
                        case 32:
                            this.bitField0_ |= 4;
                            this.userHandle_ = codedInputStream.readUInt32();
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
                        this.userInfoList_ = Collections.unmodifiableList(this.userInfoList_);
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
                this.userInfoList_ = Collections.unmodifiableList(this.userInfoList_);
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

        public Parser<IMGetNearByUserListRsp> getParserForType() {
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

        public List<UserInfo> getUserInfoListList() {
            return this.userInfoList_;
        }

        public List<? extends UserInfoOrBuilder> getUserInfoListOrBuilderList() {
            return this.userInfoList_;
        }

        public int getUserInfoListCount() {
            return this.userInfoList_.size();
        }

        public UserInfo getUserInfoList(int i) {
            return (UserInfo) this.userInfoList_.get(i);
        }

        public UserInfoOrBuilder getUserInfoListOrBuilder(int i) {
            return (UserInfoOrBuilder) this.userInfoList_.get(i);
        }

        public boolean hasUserHandle() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 8) == 8;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.resultCode_ = 0;
            this.userInfoList_ = Collections.emptyList();
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
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.userInfoList_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(3, (MessageLite) this.userInfoList_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(4, this.userHandle_);
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
                i += CodedOutputStream.computeUInt32Size(2, this.resultCode_);
            }
            while (true) {
                i2 = i;
                if (i3 >= this.userInfoList_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(3, (MessageLite) this.userInfoList_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.userHandle_);
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

        public static IMGetNearByUserListRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMGetNearByUserListRsp) PARSER.parseFrom(byteString);
        }

        public static IMGetNearByUserListRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetNearByUserListRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMGetNearByUserListRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMGetNearByUserListRsp) PARSER.parseFrom(bArr);
        }

        public static IMGetNearByUserListRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMGetNearByUserListRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMGetNearByUserListRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMGetNearByUserListRsp) PARSER.parseFrom(inputStream);
        }

        public static IMGetNearByUserListRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetNearByUserListRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetNearByUserListRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMGetNearByUserListRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMGetNearByUserListRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetNearByUserListRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMGetNearByUserListRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMGetNearByUserListRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMGetNearByUserListRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMGetNearByUserListRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMGetNearByUserListRsp iMGetNearByUserListRsp) {
            return newBuilder().mergeFrom(iMGetNearByUserListRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMGetNearByUserListRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getResultCode();

        int getUserHandle();

        int getUserId();

        UserInfo getUserInfoList(int i);

        int getUserInfoListCount();

        List<UserInfo> getUserInfoListList();

        boolean hasAttachData();

        boolean hasResultCode();

        boolean hasUserHandle();

        boolean hasUserId();
    }

    public static final class IMPCLoginStatusNotify extends GeneratedMessageLite implements IMPCLoginStatusNotifyOrBuilder {
        public static final int LOGIN_STAT_FIELD_NUMBER = 2;
        public static Parser<IMPCLoginStatusNotify> PARSER = new AbstractParser<IMPCLoginStatusNotify>() {
            public IMPCLoginStatusNotify parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMPCLoginStatusNotify(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMPCLoginStatusNotify defaultInstance = new IMPCLoginStatusNotify(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public UserStatType loginStat_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMPCLoginStatusNotify, Builder> implements IMPCLoginStatusNotifyOrBuilder {
            private int bitField0_;
            private UserStatType loginStat_ = UserStatType.USER_STATUS_ONLINE;
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
                this.loginStat_ = UserStatType.USER_STATUS_ONLINE;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMPCLoginStatusNotify getDefaultInstanceForType() {
                return IMPCLoginStatusNotify.getDefaultInstance();
            }

            public IMPCLoginStatusNotify build() {
                IMPCLoginStatusNotify buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMPCLoginStatusNotify buildPartial() {
                int i = 1;
                IMPCLoginStatusNotify iMPCLoginStatusNotify = new IMPCLoginStatusNotify((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMPCLoginStatusNotify.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMPCLoginStatusNotify.loginStat_ = this.loginStat_;
                iMPCLoginStatusNotify.bitField0_ = i;
                return iMPCLoginStatusNotify;
            }

            public Builder mergeFrom(IMPCLoginStatusNotify iMPCLoginStatusNotify) {
                if (iMPCLoginStatusNotify != IMPCLoginStatusNotify.getDefaultInstance()) {
                    if (iMPCLoginStatusNotify.hasUserId()) {
                        setUserId(iMPCLoginStatusNotify.getUserId());
                    }
                    if (iMPCLoginStatusNotify.hasLoginStat()) {
                        setLoginStat(iMPCLoginStatusNotify.getLoginStat());
                    }
                    setUnknownFields(getUnknownFields().concat(iMPCLoginStatusNotify.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasLoginStat()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMPCLoginStatusNotify iMPCLoginStatusNotify;
                IMPCLoginStatusNotify iMPCLoginStatusNotify2;
                try {
                    IMPCLoginStatusNotify iMPCLoginStatusNotify3 = (IMPCLoginStatusNotify) IMPCLoginStatusNotify.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMPCLoginStatusNotify3 != null) {
                        mergeFrom(iMPCLoginStatusNotify3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMPCLoginStatusNotify2 = (IMPCLoginStatusNotify) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMPCLoginStatusNotify = iMPCLoginStatusNotify2;
                    th = th2;
                }
                if (iMPCLoginStatusNotify != null) {
                    mergeFrom(iMPCLoginStatusNotify);
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

            public boolean hasLoginStat() {
                return (this.bitField0_ & 2) == 2;
            }

            public UserStatType getLoginStat() {
                return this.loginStat_;
            }

            public Builder setLoginStat(UserStatType userStatType) {
                if (userStatType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.loginStat_ = userStatType;
                return this;
            }

            public Builder clearLoginStat() {
                this.bitField0_ &= -3;
                this.loginStat_ = UserStatType.USER_STATUS_ONLINE;
                return this;
            }
        }

        private IMPCLoginStatusNotify(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMPCLoginStatusNotify(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMPCLoginStatusNotify getDefaultInstance() {
            return defaultInstance;
        }

        public IMPCLoginStatusNotify getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMPCLoginStatusNotify(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.loginStat_ = valueOf;
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

        public Parser<IMPCLoginStatusNotify> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasLoginStat() {
            return (this.bitField0_ & 2) == 2;
        }

        public UserStatType getLoginStat() {
            return this.loginStat_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.loginStat_ = UserStatType.USER_STATUS_ONLINE;
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
            } else if (!hasLoginStat()) {
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
                codedOutputStream.writeEnum(2, this.loginStat_.getNumber());
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
                i2 += CodedOutputStream.computeEnumSize(2, this.loginStat_.getNumber());
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMPCLoginStatusNotify parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMPCLoginStatusNotify) PARSER.parseFrom(byteString);
        }

        public static IMPCLoginStatusNotify parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMPCLoginStatusNotify) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMPCLoginStatusNotify parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMPCLoginStatusNotify) PARSER.parseFrom(bArr);
        }

        public static IMPCLoginStatusNotify parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMPCLoginStatusNotify) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMPCLoginStatusNotify parseFrom(InputStream inputStream) throws IOException {
            return (IMPCLoginStatusNotify) PARSER.parseFrom(inputStream);
        }

        public static IMPCLoginStatusNotify parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMPCLoginStatusNotify) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMPCLoginStatusNotify parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMPCLoginStatusNotify) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMPCLoginStatusNotify parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMPCLoginStatusNotify) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMPCLoginStatusNotify parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMPCLoginStatusNotify) PARSER.parseFrom(codedInputStream);
        }

        public static IMPCLoginStatusNotify parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMPCLoginStatusNotify) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMPCLoginStatusNotify iMPCLoginStatusNotify) {
            return newBuilder().mergeFrom(iMPCLoginStatusNotify);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMPCLoginStatusNotifyOrBuilder extends MessageLiteOrBuilder {
        UserStatType getLoginStat();

        int getUserId();

        boolean hasLoginStat();

        boolean hasUserId();
    }

    public static final class IMRecentContactSessionReq extends GeneratedMessageLite implements IMRecentContactSessionReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int LATEST_UPDATE_TIME_FIELD_NUMBER = 2;
        public static Parser<IMRecentContactSessionReq> PARSER = new AbstractParser<IMRecentContactSessionReq>() {
            public IMRecentContactSessionReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMRecentContactSessionReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMRecentContactSessionReq defaultInstance = new IMRecentContactSessionReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int latestUpdateTime_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMRecentContactSessionReq, Builder> implements IMRecentContactSessionReqOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int latestUpdateTime_;
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
                this.latestUpdateTime_ = 0;
                this.bitField0_ &= -3;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMRecentContactSessionReq getDefaultInstanceForType() {
                return IMRecentContactSessionReq.getDefaultInstance();
            }

            public IMRecentContactSessionReq build() {
                IMRecentContactSessionReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMRecentContactSessionReq buildPartial() {
                int i = 1;
                IMRecentContactSessionReq iMRecentContactSessionReq = new IMRecentContactSessionReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMRecentContactSessionReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMRecentContactSessionReq.latestUpdateTime_ = this.latestUpdateTime_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMRecentContactSessionReq.attachData_ = this.attachData_;
                iMRecentContactSessionReq.bitField0_ = i;
                return iMRecentContactSessionReq;
            }

            public Builder mergeFrom(IMRecentContactSessionReq iMRecentContactSessionReq) {
                if (iMRecentContactSessionReq != IMRecentContactSessionReq.getDefaultInstance()) {
                    if (iMRecentContactSessionReq.hasUserId()) {
                        setUserId(iMRecentContactSessionReq.getUserId());
                    }
                    if (iMRecentContactSessionReq.hasLatestUpdateTime()) {
                        setLatestUpdateTime(iMRecentContactSessionReq.getLatestUpdateTime());
                    }
                    if (iMRecentContactSessionReq.hasAttachData()) {
                        setAttachData(iMRecentContactSessionReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMRecentContactSessionReq.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasLatestUpdateTime()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMRecentContactSessionReq iMRecentContactSessionReq;
                IMRecentContactSessionReq iMRecentContactSessionReq2;
                try {
                    IMRecentContactSessionReq iMRecentContactSessionReq3 = (IMRecentContactSessionReq) IMRecentContactSessionReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMRecentContactSessionReq3 != null) {
                        mergeFrom(iMRecentContactSessionReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMRecentContactSessionReq2 = (IMRecentContactSessionReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMRecentContactSessionReq = iMRecentContactSessionReq2;
                    th = th2;
                }
                if (iMRecentContactSessionReq != null) {
                    mergeFrom(iMRecentContactSessionReq);
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

            public boolean hasLatestUpdateTime() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getLatestUpdateTime() {
                return this.latestUpdateTime_;
            }

            public Builder setLatestUpdateTime(int i) {
                this.bitField0_ |= 2;
                this.latestUpdateTime_ = i;
                return this;
            }

            public Builder clearLatestUpdateTime() {
                this.bitField0_ &= -3;
                this.latestUpdateTime_ = 0;
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 4) == 4;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -5;
                this.attachData_ = IMRecentContactSessionReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMRecentContactSessionReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMRecentContactSessionReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMRecentContactSessionReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMRecentContactSessionReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMRecentContactSessionReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.latestUpdateTime_ = codedInputStream.readUInt32();
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

        public Parser<IMRecentContactSessionReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasLatestUpdateTime() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getLatestUpdateTime() {
            return this.latestUpdateTime_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.latestUpdateTime_ = 0;
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
            } else if (!hasLatestUpdateTime()) {
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
                codedOutputStream.writeUInt32(2, this.latestUpdateTime_);
            }
            if ((this.bitField0_ & 4) == 4) {
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
                i2 += CodedOutputStream.computeUInt32Size(2, this.latestUpdateTime_);
            }
            if ((this.bitField0_ & 4) == 4) {
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

        public static IMRecentContactSessionReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMRecentContactSessionReq) PARSER.parseFrom(byteString);
        }

        public static IMRecentContactSessionReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRecentContactSessionReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMRecentContactSessionReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMRecentContactSessionReq) PARSER.parseFrom(bArr);
        }

        public static IMRecentContactSessionReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRecentContactSessionReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMRecentContactSessionReq parseFrom(InputStream inputStream) throws IOException {
            return (IMRecentContactSessionReq) PARSER.parseFrom(inputStream);
        }

        public static IMRecentContactSessionReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRecentContactSessionReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMRecentContactSessionReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMRecentContactSessionReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMRecentContactSessionReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRecentContactSessionReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMRecentContactSessionReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMRecentContactSessionReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMRecentContactSessionReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRecentContactSessionReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMRecentContactSessionReq iMRecentContactSessionReq) {
            return newBuilder().mergeFrom(iMRecentContactSessionReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMRecentContactSessionReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getLatestUpdateTime();

        int getUserId();

        boolean hasAttachData();

        boolean hasLatestUpdateTime();

        boolean hasUserId();
    }

    public static final class IMRecentContactSessionRsp extends GeneratedMessageLite implements IMRecentContactSessionRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static final int CONTACT_SESSION_LIST_FIELD_NUMBER = 2;
        public static Parser<IMRecentContactSessionRsp> PARSER = new AbstractParser<IMRecentContactSessionRsp>() {
            public IMRecentContactSessionRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMRecentContactSessionRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMRecentContactSessionRsp defaultInstance = new IMRecentContactSessionRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public List<ContactSessionInfo> contactSessionList_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMRecentContactSessionRsp, Builder> implements IMRecentContactSessionRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private List<ContactSessionInfo> contactSessionList_ = Collections.emptyList();
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
                this.contactSessionList_ = Collections.emptyList();
                this.bitField0_ &= -3;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMRecentContactSessionRsp getDefaultInstanceForType() {
                return IMRecentContactSessionRsp.getDefaultInstance();
            }

            public IMRecentContactSessionRsp build() {
                IMRecentContactSessionRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMRecentContactSessionRsp buildPartial() {
                int i = 1;
                IMRecentContactSessionRsp iMRecentContactSessionRsp = new IMRecentContactSessionRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMRecentContactSessionRsp.userId_ = this.userId_;
                if ((this.bitField0_ & 2) == 2) {
                    this.contactSessionList_ = Collections.unmodifiableList(this.contactSessionList_);
                    this.bitField0_ &= -3;
                }
                iMRecentContactSessionRsp.contactSessionList_ = this.contactSessionList_;
                if ((i2 & 4) == 4) {
                    i |= 2;
                }
                iMRecentContactSessionRsp.attachData_ = this.attachData_;
                iMRecentContactSessionRsp.bitField0_ = i;
                return iMRecentContactSessionRsp;
            }

            public Builder mergeFrom(IMRecentContactSessionRsp iMRecentContactSessionRsp) {
                if (iMRecentContactSessionRsp != IMRecentContactSessionRsp.getDefaultInstance()) {
                    if (iMRecentContactSessionRsp.hasUserId()) {
                        setUserId(iMRecentContactSessionRsp.getUserId());
                    }
                    if (!iMRecentContactSessionRsp.contactSessionList_.isEmpty()) {
                        if (this.contactSessionList_.isEmpty()) {
                            this.contactSessionList_ = iMRecentContactSessionRsp.contactSessionList_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureContactSessionListIsMutable();
                            this.contactSessionList_.addAll(iMRecentContactSessionRsp.contactSessionList_);
                        }
                    }
                    if (iMRecentContactSessionRsp.hasAttachData()) {
                        setAttachData(iMRecentContactSessionRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMRecentContactSessionRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasUserId()) {
                    return false;
                }
                for (int i = 0; i < getContactSessionListCount(); i++) {
                    if (!getContactSessionList(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMRecentContactSessionRsp iMRecentContactSessionRsp;
                IMRecentContactSessionRsp iMRecentContactSessionRsp2;
                try {
                    IMRecentContactSessionRsp iMRecentContactSessionRsp3 = (IMRecentContactSessionRsp) IMRecentContactSessionRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMRecentContactSessionRsp3 != null) {
                        mergeFrom(iMRecentContactSessionRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMRecentContactSessionRsp2 = (IMRecentContactSessionRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMRecentContactSessionRsp = iMRecentContactSessionRsp2;
                    th = th2;
                }
                if (iMRecentContactSessionRsp != null) {
                    mergeFrom(iMRecentContactSessionRsp);
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

            private void ensureContactSessionListIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.contactSessionList_ = new ArrayList(this.contactSessionList_);
                    this.bitField0_ |= 2;
                }
            }

            public List<ContactSessionInfo> getContactSessionListList() {
                return Collections.unmodifiableList(this.contactSessionList_);
            }

            public int getContactSessionListCount() {
                return this.contactSessionList_.size();
            }

            public ContactSessionInfo getContactSessionList(int i) {
                return (ContactSessionInfo) this.contactSessionList_.get(i);
            }

            public Builder setContactSessionList(int i, ContactSessionInfo contactSessionInfo) {
                if (contactSessionInfo == null) {
                    throw new NullPointerException();
                }
                ensureContactSessionListIsMutable();
                this.contactSessionList_.set(i, contactSessionInfo);
                return this;
            }

            public Builder setContactSessionList(int i, com.ifengyu.im.protobuf.IMBaseDefine.ContactSessionInfo.Builder builder) {
                ensureContactSessionListIsMutable();
                this.contactSessionList_.set(i, builder.build());
                return this;
            }

            public Builder addContactSessionList(ContactSessionInfo contactSessionInfo) {
                if (contactSessionInfo == null) {
                    throw new NullPointerException();
                }
                ensureContactSessionListIsMutable();
                this.contactSessionList_.add(contactSessionInfo);
                return this;
            }

            public Builder addContactSessionList(int i, ContactSessionInfo contactSessionInfo) {
                if (contactSessionInfo == null) {
                    throw new NullPointerException();
                }
                ensureContactSessionListIsMutable();
                this.contactSessionList_.add(i, contactSessionInfo);
                return this;
            }

            public Builder addContactSessionList(com.ifengyu.im.protobuf.IMBaseDefine.ContactSessionInfo.Builder builder) {
                ensureContactSessionListIsMutable();
                this.contactSessionList_.add(builder.build());
                return this;
            }

            public Builder addContactSessionList(int i, com.ifengyu.im.protobuf.IMBaseDefine.ContactSessionInfo.Builder builder) {
                ensureContactSessionListIsMutable();
                this.contactSessionList_.add(i, builder.build());
                return this;
            }

            public Builder addAllContactSessionList(Iterable<? extends ContactSessionInfo> iterable) {
                ensureContactSessionListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.contactSessionList_);
                return this;
            }

            public Builder clearContactSessionList() {
                this.contactSessionList_ = Collections.emptyList();
                this.bitField0_ &= -3;
                return this;
            }

            public Builder removeContactSessionList(int i) {
                ensureContactSessionListIsMutable();
                this.contactSessionList_.remove(i);
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 4) == 4;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -5;
                this.attachData_ = IMRecentContactSessionRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMRecentContactSessionRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMRecentContactSessionRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMRecentContactSessionRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMRecentContactSessionRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMRecentContactSessionRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.contactSessionList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.contactSessionList_.add(codedInputStream.readMessage(ContactSessionInfo.PARSER, extensionRegistryLite));
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
                        this.contactSessionList_ = Collections.unmodifiableList(this.contactSessionList_);
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
                this.contactSessionList_ = Collections.unmodifiableList(this.contactSessionList_);
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

        public Parser<IMRecentContactSessionRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public List<ContactSessionInfo> getContactSessionListList() {
            return this.contactSessionList_;
        }

        public List<? extends ContactSessionInfoOrBuilder> getContactSessionListOrBuilderList() {
            return this.contactSessionList_;
        }

        public int getContactSessionListCount() {
            return this.contactSessionList_.size();
        }

        public ContactSessionInfo getContactSessionList(int i) {
            return (ContactSessionInfo) this.contactSessionList_.get(i);
        }

        public ContactSessionInfoOrBuilder getContactSessionListOrBuilder(int i) {
            return (ContactSessionInfoOrBuilder) this.contactSessionList_.get(i);
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.contactSessionList_ = Collections.emptyList();
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
            for (int i = 0; i < getContactSessionListCount(); i++) {
                if (!getContactSessionList(i).isInitialized()) {
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
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.contactSessionList_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(2, (MessageLite) this.contactSessionList_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 2) == 2) {
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
            while (true) {
                i2 = i;
                if (i3 >= this.contactSessionList_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(2, (MessageLite) this.contactSessionList_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 2) == 2) {
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

        public static IMRecentContactSessionRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMRecentContactSessionRsp) PARSER.parseFrom(byteString);
        }

        public static IMRecentContactSessionRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRecentContactSessionRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMRecentContactSessionRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMRecentContactSessionRsp) PARSER.parseFrom(bArr);
        }

        public static IMRecentContactSessionRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRecentContactSessionRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMRecentContactSessionRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMRecentContactSessionRsp) PARSER.parseFrom(inputStream);
        }

        public static IMRecentContactSessionRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRecentContactSessionRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMRecentContactSessionRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMRecentContactSessionRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMRecentContactSessionRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRecentContactSessionRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMRecentContactSessionRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMRecentContactSessionRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMRecentContactSessionRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRecentContactSessionRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMRecentContactSessionRsp iMRecentContactSessionRsp) {
            return newBuilder().mergeFrom(iMRecentContactSessionRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMRecentContactSessionRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        ContactSessionInfo getContactSessionList(int i);

        int getContactSessionListCount();

        List<ContactSessionInfo> getContactSessionListList();

        int getUserId();

        boolean hasAttachData();

        boolean hasUserId();
    }

    public static final class IMRemoveSessionNotify extends GeneratedMessageLite implements IMRemoveSessionNotifyOrBuilder {
        public static Parser<IMRemoveSessionNotify> PARSER = new AbstractParser<IMRemoveSessionNotify>() {
            public IMRemoveSessionNotify parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMRemoveSessionNotify(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 3;
        public static final int SESSION_TYPE_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMRemoveSessionNotify defaultInstance = new IMRemoveSessionNotify(true);
        private static final long serialVersionUID = 0;
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

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMRemoveSessionNotify, Builder> implements IMRemoveSessionNotifyOrBuilder {
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
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMRemoveSessionNotify getDefaultInstanceForType() {
                return IMRemoveSessionNotify.getDefaultInstance();
            }

            public IMRemoveSessionNotify build() {
                IMRemoveSessionNotify buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMRemoveSessionNotify buildPartial() {
                int i = 1;
                IMRemoveSessionNotify iMRemoveSessionNotify = new IMRemoveSessionNotify((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMRemoveSessionNotify.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMRemoveSessionNotify.sessionType_ = this.sessionType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMRemoveSessionNotify.sessionId_ = this.sessionId_;
                iMRemoveSessionNotify.bitField0_ = i;
                return iMRemoveSessionNotify;
            }

            public Builder mergeFrom(IMRemoveSessionNotify iMRemoveSessionNotify) {
                if (iMRemoveSessionNotify != IMRemoveSessionNotify.getDefaultInstance()) {
                    if (iMRemoveSessionNotify.hasUserId()) {
                        setUserId(iMRemoveSessionNotify.getUserId());
                    }
                    if (iMRemoveSessionNotify.hasSessionType()) {
                        setSessionType(iMRemoveSessionNotify.getSessionType());
                    }
                    if (iMRemoveSessionNotify.hasSessionId()) {
                        setSessionId(iMRemoveSessionNotify.getSessionId());
                    }
                    setUnknownFields(getUnknownFields().concat(iMRemoveSessionNotify.unknownFields));
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
                IMRemoveSessionNotify iMRemoveSessionNotify;
                IMRemoveSessionNotify iMRemoveSessionNotify2;
                try {
                    IMRemoveSessionNotify iMRemoveSessionNotify3 = (IMRemoveSessionNotify) IMRemoveSessionNotify.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMRemoveSessionNotify3 != null) {
                        mergeFrom(iMRemoveSessionNotify3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMRemoveSessionNotify2 = (IMRemoveSessionNotify) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMRemoveSessionNotify = iMRemoveSessionNotify2;
                    th = th2;
                }
                if (iMRemoveSessionNotify != null) {
                    mergeFrom(iMRemoveSessionNotify);
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
        }

        private IMRemoveSessionNotify(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMRemoveSessionNotify(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMRemoveSessionNotify getDefaultInstance() {
            return defaultInstance;
        }

        public IMRemoveSessionNotify getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMRemoveSessionNotify(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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

        public Parser<IMRemoveSessionNotify> getParserForType() {
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

        private void initFields() {
            this.userId_ = 0;
            this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
            this.sessionId_ = 0;
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
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMRemoveSessionNotify parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMRemoveSessionNotify) PARSER.parseFrom(byteString);
        }

        public static IMRemoveSessionNotify parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRemoveSessionNotify) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMRemoveSessionNotify parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMRemoveSessionNotify) PARSER.parseFrom(bArr);
        }

        public static IMRemoveSessionNotify parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRemoveSessionNotify) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMRemoveSessionNotify parseFrom(InputStream inputStream) throws IOException {
            return (IMRemoveSessionNotify) PARSER.parseFrom(inputStream);
        }

        public static IMRemoveSessionNotify parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRemoveSessionNotify) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMRemoveSessionNotify parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMRemoveSessionNotify) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMRemoveSessionNotify parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRemoveSessionNotify) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMRemoveSessionNotify parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMRemoveSessionNotify) PARSER.parseFrom(codedInputStream);
        }

        public static IMRemoveSessionNotify parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRemoveSessionNotify) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMRemoveSessionNotify iMRemoveSessionNotify) {
            return newBuilder().mergeFrom(iMRemoveSessionNotify);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMRemoveSessionNotifyOrBuilder extends MessageLiteOrBuilder {
        int getSessionId();

        SessionType getSessionType();

        int getUserId();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUserId();
    }

    public static final class IMRemoveSessionReq extends GeneratedMessageLite implements IMRemoveSessionReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMRemoveSessionReq> PARSER = new AbstractParser<IMRemoveSessionReq>() {
            public IMRemoveSessionReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMRemoveSessionReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ID_FIELD_NUMBER = 3;
        public static final int SESSION_TYPE_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMRemoveSessionReq defaultInstance = new IMRemoveSessionReq(true);
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

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMRemoveSessionReq, Builder> implements IMRemoveSessionReqOrBuilder {
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

            public IMRemoveSessionReq getDefaultInstanceForType() {
                return IMRemoveSessionReq.getDefaultInstance();
            }

            public IMRemoveSessionReq build() {
                IMRemoveSessionReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMRemoveSessionReq buildPartial() {
                int i = 1;
                IMRemoveSessionReq iMRemoveSessionReq = new IMRemoveSessionReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMRemoveSessionReq.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMRemoveSessionReq.sessionType_ = this.sessionType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMRemoveSessionReq.sessionId_ = this.sessionId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMRemoveSessionReq.attachData_ = this.attachData_;
                iMRemoveSessionReq.bitField0_ = i;
                return iMRemoveSessionReq;
            }

            public Builder mergeFrom(IMRemoveSessionReq iMRemoveSessionReq) {
                if (iMRemoveSessionReq != IMRemoveSessionReq.getDefaultInstance()) {
                    if (iMRemoveSessionReq.hasUserId()) {
                        setUserId(iMRemoveSessionReq.getUserId());
                    }
                    if (iMRemoveSessionReq.hasSessionType()) {
                        setSessionType(iMRemoveSessionReq.getSessionType());
                    }
                    if (iMRemoveSessionReq.hasSessionId()) {
                        setSessionId(iMRemoveSessionReq.getSessionId());
                    }
                    if (iMRemoveSessionReq.hasAttachData()) {
                        setAttachData(iMRemoveSessionReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMRemoveSessionReq.unknownFields));
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
                IMRemoveSessionReq iMRemoveSessionReq;
                IMRemoveSessionReq iMRemoveSessionReq2;
                try {
                    IMRemoveSessionReq iMRemoveSessionReq3 = (IMRemoveSessionReq) IMRemoveSessionReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMRemoveSessionReq3 != null) {
                        mergeFrom(iMRemoveSessionReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMRemoveSessionReq2 = (IMRemoveSessionReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMRemoveSessionReq = iMRemoveSessionReq2;
                    th = th2;
                }
                if (iMRemoveSessionReq != null) {
                    mergeFrom(iMRemoveSessionReq);
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
                this.attachData_ = IMRemoveSessionReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMRemoveSessionReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMRemoveSessionReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMRemoveSessionReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMRemoveSessionReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMRemoveSessionReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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

        public Parser<IMRemoveSessionReq> getParserForType() {
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

        public static IMRemoveSessionReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMRemoveSessionReq) PARSER.parseFrom(byteString);
        }

        public static IMRemoveSessionReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRemoveSessionReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMRemoveSessionReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMRemoveSessionReq) PARSER.parseFrom(bArr);
        }

        public static IMRemoveSessionReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRemoveSessionReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMRemoveSessionReq parseFrom(InputStream inputStream) throws IOException {
            return (IMRemoveSessionReq) PARSER.parseFrom(inputStream);
        }

        public static IMRemoveSessionReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRemoveSessionReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMRemoveSessionReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMRemoveSessionReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMRemoveSessionReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRemoveSessionReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMRemoveSessionReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMRemoveSessionReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMRemoveSessionReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRemoveSessionReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMRemoveSessionReq iMRemoveSessionReq) {
            return newBuilder().mergeFrom(iMRemoveSessionReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMRemoveSessionReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getSessionId();

        SessionType getSessionType();

        int getUserId();

        boolean hasAttachData();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUserId();
    }

    public static final class IMRemoveSessionRsp extends GeneratedMessageLite implements IMRemoveSessionRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMRemoveSessionRsp> PARSER = new AbstractParser<IMRemoveSessionRsp>() {
            public IMRemoveSessionRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMRemoveSessionRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RESULT_CODE_FIELD_NUMBER = 2;
        public static final int SESSION_ID_FIELD_NUMBER = 4;
        public static final int SESSION_TYPE_FIELD_NUMBER = 3;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final IMRemoveSessionRsp defaultInstance = new IMRemoveSessionRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString attachData_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int resultCode_;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public SessionType sessionType_;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMRemoveSessionRsp, Builder> implements IMRemoveSessionRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int resultCode_;
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
                this.resultCode_ = 0;
                this.bitField0_ &= -3;
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                this.bitField0_ &= -5;
                this.sessionId_ = 0;
                this.bitField0_ &= -9;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMRemoveSessionRsp getDefaultInstanceForType() {
                return IMRemoveSessionRsp.getDefaultInstance();
            }

            public IMRemoveSessionRsp build() {
                IMRemoveSessionRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMRemoveSessionRsp buildPartial() {
                int i = 1;
                IMRemoveSessionRsp iMRemoveSessionRsp = new IMRemoveSessionRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMRemoveSessionRsp.userId_ = this.userId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                iMRemoveSessionRsp.resultCode_ = this.resultCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                iMRemoveSessionRsp.sessionType_ = this.sessionType_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                iMRemoveSessionRsp.sessionId_ = this.sessionId_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                iMRemoveSessionRsp.attachData_ = this.attachData_;
                iMRemoveSessionRsp.bitField0_ = i;
                return iMRemoveSessionRsp;
            }

            public Builder mergeFrom(IMRemoveSessionRsp iMRemoveSessionRsp) {
                if (iMRemoveSessionRsp != IMRemoveSessionRsp.getDefaultInstance()) {
                    if (iMRemoveSessionRsp.hasUserId()) {
                        setUserId(iMRemoveSessionRsp.getUserId());
                    }
                    if (iMRemoveSessionRsp.hasResultCode()) {
                        setResultCode(iMRemoveSessionRsp.getResultCode());
                    }
                    if (iMRemoveSessionRsp.hasSessionType()) {
                        setSessionType(iMRemoveSessionRsp.getSessionType());
                    }
                    if (iMRemoveSessionRsp.hasSessionId()) {
                        setSessionId(iMRemoveSessionRsp.getSessionId());
                    }
                    if (iMRemoveSessionRsp.hasAttachData()) {
                        setAttachData(iMRemoveSessionRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMRemoveSessionRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserId() && hasResultCode() && hasSessionType() && hasSessionId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMRemoveSessionRsp iMRemoveSessionRsp;
                IMRemoveSessionRsp iMRemoveSessionRsp2;
                try {
                    IMRemoveSessionRsp iMRemoveSessionRsp3 = (IMRemoveSessionRsp) IMRemoveSessionRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMRemoveSessionRsp3 != null) {
                        mergeFrom(iMRemoveSessionRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMRemoveSessionRsp2 = (IMRemoveSessionRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMRemoveSessionRsp = iMRemoveSessionRsp2;
                    th = th2;
                }
                if (iMRemoveSessionRsp != null) {
                    mergeFrom(iMRemoveSessionRsp);
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

            public boolean hasSessionType() {
                return (this.bitField0_ & 4) == 4;
            }

            public SessionType getSessionType() {
                return this.sessionType_;
            }

            public Builder setSessionType(SessionType sessionType) {
                if (sessionType == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.sessionType_ = sessionType;
                return this;
            }

            public Builder clearSessionType() {
                this.bitField0_ &= -5;
                this.sessionType_ = SessionType.SESSION_TYPE_SINGLE;
                return this;
            }

            public boolean hasSessionId() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 8;
                this.sessionId_ = i;
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -9;
                this.sessionId_ = 0;
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
                this.attachData_ = IMRemoveSessionRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMRemoveSessionRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMRemoveSessionRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMRemoveSessionRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMRemoveSessionRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMRemoveSessionRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 24:
                            int readEnum = codedInputStream.readEnum();
                            SessionType valueOf = SessionType.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 4;
                                this.sessionType_ = valueOf;
                                break;
                            } else {
                                newInstance.writeRawVarint32(readTag);
                                newInstance.writeRawVarint32(readEnum);
                                break;
                            }
                        case 32:
                            this.bitField0_ |= 8;
                            this.sessionId_ = codedInputStream.readUInt32();
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

        public Parser<IMRemoveSessionRsp> getParserForType() {
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

        public boolean hasSessionType() {
            return (this.bitField0_ & 4) == 4;
        }

        public SessionType getSessionType() {
            return this.sessionType_;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 16) == 16;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.resultCode_ = 0;
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
            } else if (!hasResultCode()) {
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
                codedOutputStream.writeUInt32(2, this.resultCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(3, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.sessionId_);
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
                i2 += CodedOutputStream.computeUInt32Size(2, this.resultCode_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeEnumSize(3, this.sessionType_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.sessionId_);
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

        public static IMRemoveSessionRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMRemoveSessionRsp) PARSER.parseFrom(byteString);
        }

        public static IMRemoveSessionRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRemoveSessionRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMRemoveSessionRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMRemoveSessionRsp) PARSER.parseFrom(bArr);
        }

        public static IMRemoveSessionRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMRemoveSessionRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMRemoveSessionRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMRemoveSessionRsp) PARSER.parseFrom(inputStream);
        }

        public static IMRemoveSessionRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRemoveSessionRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMRemoveSessionRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMRemoveSessionRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMRemoveSessionRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRemoveSessionRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMRemoveSessionRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMRemoveSessionRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMRemoveSessionRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMRemoveSessionRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMRemoveSessionRsp iMRemoveSessionRsp) {
            return newBuilder().mergeFrom(iMRemoveSessionRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMRemoveSessionRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getResultCode();

        int getSessionId();

        SessionType getSessionType();

        int getUserId();

        boolean hasAttachData();

        boolean hasResultCode();

        boolean hasSessionId();

        boolean hasSessionType();

        boolean hasUserId();
    }

    public static final class IMUserStatNotify extends GeneratedMessageLite implements IMUserStatNotifyOrBuilder {
        public static Parser<IMUserStatNotify> PARSER = new AbstractParser<IMUserStatNotify>() {
            public IMUserStatNotify parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMUserStatNotify(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_STAT_FIELD_NUMBER = 1;
        private static final IMUserStatNotify defaultInstance = new IMUserStatNotify(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public final ByteString unknownFields;
        /* access modifiers changed from: private */
        public UserStat userStat_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMUserStatNotify, Builder> implements IMUserStatNotifyOrBuilder {
            private int bitField0_;
            private UserStat userStat_ = UserStat.getDefaultInstance();

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
                this.userStat_ = UserStat.getDefaultInstance();
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMUserStatNotify getDefaultInstanceForType() {
                return IMUserStatNotify.getDefaultInstance();
            }

            public IMUserStatNotify build() {
                IMUserStatNotify buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMUserStatNotify buildPartial() {
                int i = 1;
                IMUserStatNotify iMUserStatNotify = new IMUserStatNotify((com.google.protobuf.GeneratedMessageLite.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                iMUserStatNotify.userStat_ = this.userStat_;
                iMUserStatNotify.bitField0_ = i;
                return iMUserStatNotify;
            }

            public Builder mergeFrom(IMUserStatNotify iMUserStatNotify) {
                if (iMUserStatNotify != IMUserStatNotify.getDefaultInstance()) {
                    if (iMUserStatNotify.hasUserStat()) {
                        mergeUserStat(iMUserStatNotify.getUserStat());
                    }
                    setUnknownFields(getUnknownFields().concat(iMUserStatNotify.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasUserStat() && getUserStat().isInitialized()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMUserStatNotify iMUserStatNotify;
                IMUserStatNotify iMUserStatNotify2;
                try {
                    IMUserStatNotify iMUserStatNotify3 = (IMUserStatNotify) IMUserStatNotify.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMUserStatNotify3 != null) {
                        mergeFrom(iMUserStatNotify3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMUserStatNotify2 = (IMUserStatNotify) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMUserStatNotify = iMUserStatNotify2;
                    th = th2;
                }
                if (iMUserStatNotify != null) {
                    mergeFrom(iMUserStatNotify);
                }
                throw th;
            }

            public boolean hasUserStat() {
                return (this.bitField0_ & 1) == 1;
            }

            public UserStat getUserStat() {
                return this.userStat_;
            }

            public Builder setUserStat(UserStat userStat) {
                if (userStat == null) {
                    throw new NullPointerException();
                }
                this.userStat_ = userStat;
                this.bitField0_ |= 1;
                return this;
            }

            public Builder setUserStat(com.ifengyu.im.protobuf.IMBaseDefine.UserStat.Builder builder) {
                this.userStat_ = builder.build();
                this.bitField0_ |= 1;
                return this;
            }

            public Builder mergeUserStat(UserStat userStat) {
                if ((this.bitField0_ & 1) != 1 || this.userStat_ == UserStat.getDefaultInstance()) {
                    this.userStat_ = userStat;
                } else {
                    this.userStat_ = UserStat.newBuilder(this.userStat_).mergeFrom(userStat).buildPartial();
                }
                this.bitField0_ |= 1;
                return this;
            }

            public Builder clearUserStat() {
                this.userStat_ = UserStat.getDefaultInstance();
                this.bitField0_ &= -2;
                return this;
            }
        }

        private IMUserStatNotify(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMUserStatNotify(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMUserStatNotify getDefaultInstance() {
            return defaultInstance;
        }

        public IMUserStatNotify getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMUserStatNotify(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            com.ifengyu.im.protobuf.IMBaseDefine.UserStat.Builder builder;
            boolean z;
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
                            break;
                        case 10:
                            if ((this.bitField0_ & 1) == 1) {
                                builder = this.userStat_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.userStat_ = (UserStat) codedInputStream.readMessage(UserStat.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.userStat_);
                                this.userStat_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 1;
                            z = z2;
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                z = z2;
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
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

        public Parser<IMUserStatNotify> getParserForType() {
            return PARSER;
        }

        public boolean hasUserStat() {
            return (this.bitField0_ & 1) == 1;
        }

        public UserStat getUserStat() {
            return this.userStat_;
        }

        private void initFields() {
            this.userStat_ = UserStat.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasUserStat()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!getUserStat().isInitialized()) {
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
                codedOutputStream.writeMessage(1, this.userStat_);
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
                i2 = 0 + CodedOutputStream.computeMessageSize(1, this.userStat_);
            }
            int size = i2 + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static IMUserStatNotify parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMUserStatNotify) PARSER.parseFrom(byteString);
        }

        public static IMUserStatNotify parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUserStatNotify) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMUserStatNotify parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMUserStatNotify) PARSER.parseFrom(bArr);
        }

        public static IMUserStatNotify parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUserStatNotify) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMUserStatNotify parseFrom(InputStream inputStream) throws IOException {
            return (IMUserStatNotify) PARSER.parseFrom(inputStream);
        }

        public static IMUserStatNotify parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUserStatNotify) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMUserStatNotify parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMUserStatNotify) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMUserStatNotify parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUserStatNotify) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMUserStatNotify parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMUserStatNotify) PARSER.parseFrom(codedInputStream);
        }

        public static IMUserStatNotify parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUserStatNotify) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMUserStatNotify iMUserStatNotify) {
            return newBuilder().mergeFrom(iMUserStatNotify);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMUserStatNotifyOrBuilder extends MessageLiteOrBuilder {
        UserStat getUserStat();

        boolean hasUserStat();
    }

    public static final class IMUsersInfoReq extends GeneratedMessageLite implements IMUsersInfoReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMUsersInfoReq> PARSER = new AbstractParser<IMUsersInfoReq>() {
            public IMUsersInfoReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMUsersInfoReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_HANDLE_FIELD_NUMBER = 3;
        public static final int USER_ID_FIELD_NUMBER = 1;
        public static final int USER_ID_LIST_FIELD_NUMBER = 2;
        private static final IMUsersInfoReq defaultInstance = new IMUsersInfoReq(true);
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
        public int userHandle_;
        /* access modifiers changed from: private */
        public List<Integer> userIdList_;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMUsersInfoReq, Builder> implements IMUsersInfoReqOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int userHandle_;
            private List<Integer> userIdList_ = Collections.emptyList();
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
                this.userIdList_ = Collections.emptyList();
                this.bitField0_ &= -3;
                this.userHandle_ = 0;
                this.bitField0_ &= -5;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMUsersInfoReq getDefaultInstanceForType() {
                return IMUsersInfoReq.getDefaultInstance();
            }

            public IMUsersInfoReq build() {
                IMUsersInfoReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMUsersInfoReq buildPartial() {
                int i = 1;
                IMUsersInfoReq iMUsersInfoReq = new IMUsersInfoReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMUsersInfoReq.userId_ = this.userId_;
                if ((this.bitField0_ & 2) == 2) {
                    this.userIdList_ = Collections.unmodifiableList(this.userIdList_);
                    this.bitField0_ &= -3;
                }
                iMUsersInfoReq.userIdList_ = this.userIdList_;
                if ((i2 & 4) == 4) {
                    i |= 2;
                }
                iMUsersInfoReq.userHandle_ = this.userHandle_;
                if ((i2 & 8) == 8) {
                    i |= 4;
                }
                iMUsersInfoReq.attachData_ = this.attachData_;
                iMUsersInfoReq.bitField0_ = i;
                return iMUsersInfoReq;
            }

            public Builder mergeFrom(IMUsersInfoReq iMUsersInfoReq) {
                if (iMUsersInfoReq != IMUsersInfoReq.getDefaultInstance()) {
                    if (iMUsersInfoReq.hasUserId()) {
                        setUserId(iMUsersInfoReq.getUserId());
                    }
                    if (!iMUsersInfoReq.userIdList_.isEmpty()) {
                        if (this.userIdList_.isEmpty()) {
                            this.userIdList_ = iMUsersInfoReq.userIdList_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureUserIdListIsMutable();
                            this.userIdList_.addAll(iMUsersInfoReq.userIdList_);
                        }
                    }
                    if (iMUsersInfoReq.hasUserHandle()) {
                        setUserHandle(iMUsersInfoReq.getUserHandle());
                    }
                    if (iMUsersInfoReq.hasAttachData()) {
                        setAttachData(iMUsersInfoReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMUsersInfoReq.unknownFields));
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
                IMUsersInfoReq iMUsersInfoReq;
                IMUsersInfoReq iMUsersInfoReq2;
                try {
                    IMUsersInfoReq iMUsersInfoReq3 = (IMUsersInfoReq) IMUsersInfoReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMUsersInfoReq3 != null) {
                        mergeFrom(iMUsersInfoReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMUsersInfoReq2 = (IMUsersInfoReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMUsersInfoReq = iMUsersInfoReq2;
                    th = th2;
                }
                if (iMUsersInfoReq != null) {
                    mergeFrom(iMUsersInfoReq);
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

            private void ensureUserIdListIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.userIdList_ = new ArrayList(this.userIdList_);
                    this.bitField0_ |= 2;
                }
            }

            public List<Integer> getUserIdListList() {
                return Collections.unmodifiableList(this.userIdList_);
            }

            public int getUserIdListCount() {
                return this.userIdList_.size();
            }

            public int getUserIdList(int i) {
                return ((Integer) this.userIdList_.get(i)).intValue();
            }

            public Builder setUserIdList(int i, int i2) {
                ensureUserIdListIsMutable();
                this.userIdList_.set(i, Integer.valueOf(i2));
                return this;
            }

            public Builder addUserIdList(int i) {
                ensureUserIdListIsMutable();
                this.userIdList_.add(Integer.valueOf(i));
                return this;
            }

            public Builder addAllUserIdList(Iterable<? extends Integer> iterable) {
                ensureUserIdListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.userIdList_);
                return this;
            }

            public Builder clearUserIdList() {
                this.userIdList_ = Collections.emptyList();
                this.bitField0_ &= -3;
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
                this.attachData_ = IMUsersInfoReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMUsersInfoReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMUsersInfoReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMUsersInfoReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMUsersInfoReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMUsersInfoReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            if (!(z2 & true)) {
                                this.userIdList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.userIdList_.add(Integer.valueOf(codedInputStream.readUInt32()));
                            break;
                        case 18:
                            int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            if (!(z2 & true) && codedInputStream.getBytesUntilLimit() > 0) {
                                this.userIdList_ = new ArrayList();
                                z2 |= true;
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.userIdList_.add(Integer.valueOf(codedInputStream.readUInt32()));
                            }
                            codedInputStream.popLimit(pushLimit);
                            break;
                        case 24:
                            this.bitField0_ |= 2;
                            this.userHandle_ = codedInputStream.readUInt32();
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
                        this.userIdList_ = Collections.unmodifiableList(this.userIdList_);
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
                this.userIdList_ = Collections.unmodifiableList(this.userIdList_);
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

        public Parser<IMUsersInfoReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public List<Integer> getUserIdListList() {
            return this.userIdList_;
        }

        public int getUserIdListCount() {
            return this.userIdList_.size();
        }

        public int getUserIdList(int i) {
            return ((Integer) this.userIdList_.get(i)).intValue();
        }

        public boolean hasUserHandle() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.userIdList_ = Collections.emptyList();
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
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.userIdList_.size()) {
                    break;
                }
                codedOutputStream.writeUInt32(2, ((Integer) this.userIdList_.get(i2)).intValue());
                i = i2 + 1;
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(3, this.userHandle_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(20, this.attachData_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i;
            int i2 = 0;
            int i3 = this.memoizedSerializedSize;
            if (i3 != -1) {
                return i3;
            }
            if ((this.bitField0_ & 1) == 1) {
                i = CodedOutputStream.computeUInt32Size(1, this.userId_) + 0;
            } else {
                i = 0;
            }
            int i4 = 0;
            while (i2 < this.userIdList_.size()) {
                i2++;
                i4 = CodedOutputStream.computeUInt32SizeNoTag(((Integer) this.userIdList_.get(i2)).intValue()) + i4;
            }
            int size = i + i4 + (getUserIdListList().size() * 1);
            if ((this.bitField0_ & 2) == 2) {
                size += CodedOutputStream.computeUInt32Size(3, this.userHandle_);
            }
            if ((this.bitField0_ & 4) == 4) {
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

        public static IMUsersInfoReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMUsersInfoReq) PARSER.parseFrom(byteString);
        }

        public static IMUsersInfoReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUsersInfoReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMUsersInfoReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMUsersInfoReq) PARSER.parseFrom(bArr);
        }

        public static IMUsersInfoReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUsersInfoReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMUsersInfoReq parseFrom(InputStream inputStream) throws IOException {
            return (IMUsersInfoReq) PARSER.parseFrom(inputStream);
        }

        public static IMUsersInfoReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUsersInfoReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMUsersInfoReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMUsersInfoReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMUsersInfoReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUsersInfoReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMUsersInfoReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMUsersInfoReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMUsersInfoReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUsersInfoReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMUsersInfoReq iMUsersInfoReq) {
            return newBuilder().mergeFrom(iMUsersInfoReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMUsersInfoReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getUserHandle();

        int getUserId();

        int getUserIdList(int i);

        int getUserIdListCount();

        List<Integer> getUserIdListList();

        boolean hasAttachData();

        boolean hasUserHandle();

        boolean hasUserId();
    }

    public static final class IMUsersInfoRsp extends GeneratedMessageLite implements IMUsersInfoRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMUsersInfoRsp> PARSER = new AbstractParser<IMUsersInfoRsp>() {
            public IMUsersInfoRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMUsersInfoRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_HANDLE_FIELD_NUMBER = 3;
        public static final int USER_ID_FIELD_NUMBER = 1;
        public static final int USER_INFO_LIST_FIELD_NUMBER = 2;
        private static final IMUsersInfoRsp defaultInstance = new IMUsersInfoRsp(true);
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
        public int userHandle_;
        /* access modifiers changed from: private */
        public int userId_;
        /* access modifiers changed from: private */
        public List<UserInfo> userInfoList_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMUsersInfoRsp, Builder> implements IMUsersInfoRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int userHandle_;
            private int userId_;
            private List<UserInfo> userInfoList_ = Collections.emptyList();

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
                this.userInfoList_ = Collections.emptyList();
                this.bitField0_ &= -3;
                this.userHandle_ = 0;
                this.bitField0_ &= -5;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMUsersInfoRsp getDefaultInstanceForType() {
                return IMUsersInfoRsp.getDefaultInstance();
            }

            public IMUsersInfoRsp build() {
                IMUsersInfoRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMUsersInfoRsp buildPartial() {
                int i = 1;
                IMUsersInfoRsp iMUsersInfoRsp = new IMUsersInfoRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMUsersInfoRsp.userId_ = this.userId_;
                if ((this.bitField0_ & 2) == 2) {
                    this.userInfoList_ = Collections.unmodifiableList(this.userInfoList_);
                    this.bitField0_ &= -3;
                }
                iMUsersInfoRsp.userInfoList_ = this.userInfoList_;
                if ((i2 & 4) == 4) {
                    i |= 2;
                }
                iMUsersInfoRsp.userHandle_ = this.userHandle_;
                if ((i2 & 8) == 8) {
                    i |= 4;
                }
                iMUsersInfoRsp.attachData_ = this.attachData_;
                iMUsersInfoRsp.bitField0_ = i;
                return iMUsersInfoRsp;
            }

            public Builder mergeFrom(IMUsersInfoRsp iMUsersInfoRsp) {
                if (iMUsersInfoRsp != IMUsersInfoRsp.getDefaultInstance()) {
                    if (iMUsersInfoRsp.hasUserId()) {
                        setUserId(iMUsersInfoRsp.getUserId());
                    }
                    if (!iMUsersInfoRsp.userInfoList_.isEmpty()) {
                        if (this.userInfoList_.isEmpty()) {
                            this.userInfoList_ = iMUsersInfoRsp.userInfoList_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureUserInfoListIsMutable();
                            this.userInfoList_.addAll(iMUsersInfoRsp.userInfoList_);
                        }
                    }
                    if (iMUsersInfoRsp.hasUserHandle()) {
                        setUserHandle(iMUsersInfoRsp.getUserHandle());
                    }
                    if (iMUsersInfoRsp.hasAttachData()) {
                        setAttachData(iMUsersInfoRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMUsersInfoRsp.unknownFields));
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
                IMUsersInfoRsp iMUsersInfoRsp;
                IMUsersInfoRsp iMUsersInfoRsp2;
                try {
                    IMUsersInfoRsp iMUsersInfoRsp3 = (IMUsersInfoRsp) IMUsersInfoRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMUsersInfoRsp3 != null) {
                        mergeFrom(iMUsersInfoRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMUsersInfoRsp2 = (IMUsersInfoRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMUsersInfoRsp = iMUsersInfoRsp2;
                    th = th2;
                }
                if (iMUsersInfoRsp != null) {
                    mergeFrom(iMUsersInfoRsp);
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

            private void ensureUserInfoListIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.userInfoList_ = new ArrayList(this.userInfoList_);
                    this.bitField0_ |= 2;
                }
            }

            public List<UserInfo> getUserInfoListList() {
                return Collections.unmodifiableList(this.userInfoList_);
            }

            public int getUserInfoListCount() {
                return this.userInfoList_.size();
            }

            public UserInfo getUserInfoList(int i) {
                return (UserInfo) this.userInfoList_.get(i);
            }

            public Builder setUserInfoList(int i, UserInfo userInfo) {
                if (userInfo == null) {
                    throw new NullPointerException();
                }
                ensureUserInfoListIsMutable();
                this.userInfoList_.set(i, userInfo);
                return this;
            }

            public Builder setUserInfoList(int i, com.ifengyu.im.protobuf.IMBaseDefine.UserInfo.Builder builder) {
                ensureUserInfoListIsMutable();
                this.userInfoList_.set(i, builder.build());
                return this;
            }

            public Builder addUserInfoList(UserInfo userInfo) {
                if (userInfo == null) {
                    throw new NullPointerException();
                }
                ensureUserInfoListIsMutable();
                this.userInfoList_.add(userInfo);
                return this;
            }

            public Builder addUserInfoList(int i, UserInfo userInfo) {
                if (userInfo == null) {
                    throw new NullPointerException();
                }
                ensureUserInfoListIsMutable();
                this.userInfoList_.add(i, userInfo);
                return this;
            }

            public Builder addUserInfoList(com.ifengyu.im.protobuf.IMBaseDefine.UserInfo.Builder builder) {
                ensureUserInfoListIsMutable();
                this.userInfoList_.add(builder.build());
                return this;
            }

            public Builder addUserInfoList(int i, com.ifengyu.im.protobuf.IMBaseDefine.UserInfo.Builder builder) {
                ensureUserInfoListIsMutable();
                this.userInfoList_.add(i, builder.build());
                return this;
            }

            public Builder addAllUserInfoList(Iterable<? extends UserInfo> iterable) {
                ensureUserInfoListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.userInfoList_);
                return this;
            }

            public Builder clearUserInfoList() {
                this.userInfoList_ = Collections.emptyList();
                this.bitField0_ &= -3;
                return this;
            }

            public Builder removeUserInfoList(int i) {
                ensureUserInfoListIsMutable();
                this.userInfoList_.remove(i);
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
                this.attachData_ = IMUsersInfoRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMUsersInfoRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMUsersInfoRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMUsersInfoRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMUsersInfoRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMUsersInfoRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.userInfoList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.userInfoList_.add(codedInputStream.readMessage(UserInfo.PARSER, extensionRegistryLite));
                            break;
                        case 24:
                            this.bitField0_ |= 2;
                            this.userHandle_ = codedInputStream.readUInt32();
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
                        this.userInfoList_ = Collections.unmodifiableList(this.userInfoList_);
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
                this.userInfoList_ = Collections.unmodifiableList(this.userInfoList_);
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

        public Parser<IMUsersInfoRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public List<UserInfo> getUserInfoListList() {
            return this.userInfoList_;
        }

        public List<? extends UserInfoOrBuilder> getUserInfoListOrBuilderList() {
            return this.userInfoList_;
        }

        public int getUserInfoListCount() {
            return this.userInfoList_.size();
        }

        public UserInfo getUserInfoList(int i) {
            return (UserInfo) this.userInfoList_.get(i);
        }

        public UserInfoOrBuilder getUserInfoListOrBuilder(int i) {
            return (UserInfoOrBuilder) this.userInfoList_.get(i);
        }

        public boolean hasUserHandle() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getUserHandle() {
            return this.userHandle_;
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.userInfoList_ = Collections.emptyList();
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
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.userInfoList_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(2, (MessageLite) this.userInfoList_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(3, this.userHandle_);
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
            while (true) {
                i2 = i;
                if (i3 >= this.userInfoList_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(2, (MessageLite) this.userInfoList_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.userHandle_);
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

        public static IMUsersInfoRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMUsersInfoRsp) PARSER.parseFrom(byteString);
        }

        public static IMUsersInfoRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUsersInfoRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMUsersInfoRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMUsersInfoRsp) PARSER.parseFrom(bArr);
        }

        public static IMUsersInfoRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUsersInfoRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMUsersInfoRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMUsersInfoRsp) PARSER.parseFrom(inputStream);
        }

        public static IMUsersInfoRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUsersInfoRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMUsersInfoRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMUsersInfoRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMUsersInfoRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUsersInfoRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMUsersInfoRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMUsersInfoRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMUsersInfoRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUsersInfoRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMUsersInfoRsp iMUsersInfoRsp) {
            return newBuilder().mergeFrom(iMUsersInfoRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMUsersInfoRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getUserHandle();

        int getUserId();

        UserInfo getUserInfoList(int i);

        int getUserInfoListCount();

        List<UserInfo> getUserInfoListList();

        boolean hasAttachData();

        boolean hasUserHandle();

        boolean hasUserId();
    }

    public static final class IMUsersStatReq extends GeneratedMessageLite implements IMUsersStatReqOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMUsersStatReq> PARSER = new AbstractParser<IMUsersStatReq>() {
            public IMUsersStatReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMUsersStatReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        public static final int USER_ID_LIST_FIELD_NUMBER = 2;
        private static final IMUsersStatReq defaultInstance = new IMUsersStatReq(true);
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
        public List<Integer> userIdList_;
        /* access modifiers changed from: private */
        public int userId_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMUsersStatReq, Builder> implements IMUsersStatReqOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private List<Integer> userIdList_ = Collections.emptyList();
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
                this.userIdList_ = Collections.emptyList();
                this.bitField0_ &= -3;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMUsersStatReq getDefaultInstanceForType() {
                return IMUsersStatReq.getDefaultInstance();
            }

            public IMUsersStatReq build() {
                IMUsersStatReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMUsersStatReq buildPartial() {
                int i = 1;
                IMUsersStatReq iMUsersStatReq = new IMUsersStatReq((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMUsersStatReq.userId_ = this.userId_;
                if ((this.bitField0_ & 2) == 2) {
                    this.userIdList_ = Collections.unmodifiableList(this.userIdList_);
                    this.bitField0_ &= -3;
                }
                iMUsersStatReq.userIdList_ = this.userIdList_;
                if ((i2 & 4) == 4) {
                    i |= 2;
                }
                iMUsersStatReq.attachData_ = this.attachData_;
                iMUsersStatReq.bitField0_ = i;
                return iMUsersStatReq;
            }

            public Builder mergeFrom(IMUsersStatReq iMUsersStatReq) {
                if (iMUsersStatReq != IMUsersStatReq.getDefaultInstance()) {
                    if (iMUsersStatReq.hasUserId()) {
                        setUserId(iMUsersStatReq.getUserId());
                    }
                    if (!iMUsersStatReq.userIdList_.isEmpty()) {
                        if (this.userIdList_.isEmpty()) {
                            this.userIdList_ = iMUsersStatReq.userIdList_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureUserIdListIsMutable();
                            this.userIdList_.addAll(iMUsersStatReq.userIdList_);
                        }
                    }
                    if (iMUsersStatReq.hasAttachData()) {
                        setAttachData(iMUsersStatReq.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMUsersStatReq.unknownFields));
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
                IMUsersStatReq iMUsersStatReq;
                IMUsersStatReq iMUsersStatReq2;
                try {
                    IMUsersStatReq iMUsersStatReq3 = (IMUsersStatReq) IMUsersStatReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMUsersStatReq3 != null) {
                        mergeFrom(iMUsersStatReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMUsersStatReq2 = (IMUsersStatReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMUsersStatReq = iMUsersStatReq2;
                    th = th2;
                }
                if (iMUsersStatReq != null) {
                    mergeFrom(iMUsersStatReq);
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

            private void ensureUserIdListIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.userIdList_ = new ArrayList(this.userIdList_);
                    this.bitField0_ |= 2;
                }
            }

            public List<Integer> getUserIdListList() {
                return Collections.unmodifiableList(this.userIdList_);
            }

            public int getUserIdListCount() {
                return this.userIdList_.size();
            }

            public int getUserIdList(int i) {
                return ((Integer) this.userIdList_.get(i)).intValue();
            }

            public Builder setUserIdList(int i, int i2) {
                ensureUserIdListIsMutable();
                this.userIdList_.set(i, Integer.valueOf(i2));
                return this;
            }

            public Builder addUserIdList(int i) {
                ensureUserIdListIsMutable();
                this.userIdList_.add(Integer.valueOf(i));
                return this;
            }

            public Builder addAllUserIdList(Iterable<? extends Integer> iterable) {
                ensureUserIdListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.userIdList_);
                return this;
            }

            public Builder clearUserIdList() {
                this.userIdList_ = Collections.emptyList();
                this.bitField0_ &= -3;
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 4) == 4;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -5;
                this.attachData_ = IMUsersStatReq.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMUsersStatReq(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMUsersStatReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMUsersStatReq getDefaultInstance() {
            return defaultInstance;
        }

        public IMUsersStatReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMUsersStatReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            if (!(z2 & true)) {
                                this.userIdList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.userIdList_.add(Integer.valueOf(codedInputStream.readUInt32()));
                            break;
                        case 18:
                            int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            if (!(z2 & true) && codedInputStream.getBytesUntilLimit() > 0) {
                                this.userIdList_ = new ArrayList();
                                z2 |= true;
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.userIdList_.add(Integer.valueOf(codedInputStream.readUInt32()));
                            }
                            codedInputStream.popLimit(pushLimit);
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
                        this.userIdList_ = Collections.unmodifiableList(this.userIdList_);
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
                this.userIdList_ = Collections.unmodifiableList(this.userIdList_);
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

        public Parser<IMUsersStatReq> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public List<Integer> getUserIdListList() {
            return this.userIdList_;
        }

        public int getUserIdListCount() {
            return this.userIdList_.size();
        }

        public int getUserIdList(int i) {
            return ((Integer) this.userIdList_.get(i)).intValue();
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.userIdList_ = Collections.emptyList();
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
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.userIdList_.size()) {
                    break;
                }
                codedOutputStream.writeUInt32(2, ((Integer) this.userIdList_.get(i2)).intValue());
                i = i2 + 1;
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(20, this.attachData_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        public int getSerializedSize() {
            int i;
            int i2 = 0;
            int i3 = this.memoizedSerializedSize;
            if (i3 != -1) {
                return i3;
            }
            if ((this.bitField0_ & 1) == 1) {
                i = CodedOutputStream.computeUInt32Size(1, this.userId_) + 0;
            } else {
                i = 0;
            }
            int i4 = 0;
            while (i2 < this.userIdList_.size()) {
                i2++;
                i4 = CodedOutputStream.computeUInt32SizeNoTag(((Integer) this.userIdList_.get(i2)).intValue()) + i4;
            }
            int size = i + i4 + (getUserIdListList().size() * 1);
            if ((this.bitField0_ & 2) == 2) {
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

        public static IMUsersStatReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMUsersStatReq) PARSER.parseFrom(byteString);
        }

        public static IMUsersStatReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUsersStatReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMUsersStatReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMUsersStatReq) PARSER.parseFrom(bArr);
        }

        public static IMUsersStatReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUsersStatReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMUsersStatReq parseFrom(InputStream inputStream) throws IOException {
            return (IMUsersStatReq) PARSER.parseFrom(inputStream);
        }

        public static IMUsersStatReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUsersStatReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMUsersStatReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMUsersStatReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMUsersStatReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUsersStatReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMUsersStatReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMUsersStatReq) PARSER.parseFrom(codedInputStream);
        }

        public static IMUsersStatReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUsersStatReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMUsersStatReq iMUsersStatReq) {
            return newBuilder().mergeFrom(iMUsersStatReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMUsersStatReqOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getUserId();

        int getUserIdList(int i);

        int getUserIdListCount();

        List<Integer> getUserIdListList();

        boolean hasAttachData();

        boolean hasUserId();
    }

    public static final class IMUsersStatRsp extends GeneratedMessageLite implements IMUsersStatRspOrBuilder {
        public static final int ATTACH_DATA_FIELD_NUMBER = 20;
        public static Parser<IMUsersStatRsp> PARSER = new AbstractParser<IMUsersStatRsp>() {
            public IMUsersStatRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new IMUsersStatRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        public static final int USER_STAT_LIST_FIELD_NUMBER = 2;
        private static final IMUsersStatRsp defaultInstance = new IMUsersStatRsp(true);
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
        /* access modifiers changed from: private */
        public List<UserStat> userStatList_;

        public static final class Builder extends com.google.protobuf.GeneratedMessageLite.Builder<IMUsersStatRsp, Builder> implements IMUsersStatRspOrBuilder {
            private ByteString attachData_ = ByteString.EMPTY;
            private int bitField0_;
            private int userId_;
            private List<UserStat> userStatList_ = Collections.emptyList();

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
                this.userStatList_ = Collections.emptyList();
                this.bitField0_ &= -3;
                this.attachData_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public IMUsersStatRsp getDefaultInstanceForType() {
                return IMUsersStatRsp.getDefaultInstance();
            }

            public IMUsersStatRsp build() {
                IMUsersStatRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IMUsersStatRsp buildPartial() {
                int i = 1;
                IMUsersStatRsp iMUsersStatRsp = new IMUsersStatRsp((com.google.protobuf.GeneratedMessageLite.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                iMUsersStatRsp.userId_ = this.userId_;
                if ((this.bitField0_ & 2) == 2) {
                    this.userStatList_ = Collections.unmodifiableList(this.userStatList_);
                    this.bitField0_ &= -3;
                }
                iMUsersStatRsp.userStatList_ = this.userStatList_;
                if ((i2 & 4) == 4) {
                    i |= 2;
                }
                iMUsersStatRsp.attachData_ = this.attachData_;
                iMUsersStatRsp.bitField0_ = i;
                return iMUsersStatRsp;
            }

            public Builder mergeFrom(IMUsersStatRsp iMUsersStatRsp) {
                if (iMUsersStatRsp != IMUsersStatRsp.getDefaultInstance()) {
                    if (iMUsersStatRsp.hasUserId()) {
                        setUserId(iMUsersStatRsp.getUserId());
                    }
                    if (!iMUsersStatRsp.userStatList_.isEmpty()) {
                        if (this.userStatList_.isEmpty()) {
                            this.userStatList_ = iMUsersStatRsp.userStatList_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureUserStatListIsMutable();
                            this.userStatList_.addAll(iMUsersStatRsp.userStatList_);
                        }
                    }
                    if (iMUsersStatRsp.hasAttachData()) {
                        setAttachData(iMUsersStatRsp.getAttachData());
                    }
                    setUnknownFields(getUnknownFields().concat(iMUsersStatRsp.unknownFields));
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasUserId()) {
                    return false;
                }
                for (int i = 0; i < getUserStatListCount(); i++) {
                    if (!getUserStatList(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                IMUsersStatRsp iMUsersStatRsp;
                IMUsersStatRsp iMUsersStatRsp2;
                try {
                    IMUsersStatRsp iMUsersStatRsp3 = (IMUsersStatRsp) IMUsersStatRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (iMUsersStatRsp3 != null) {
                        mergeFrom(iMUsersStatRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    iMUsersStatRsp2 = (IMUsersStatRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    iMUsersStatRsp = iMUsersStatRsp2;
                    th = th2;
                }
                if (iMUsersStatRsp != null) {
                    mergeFrom(iMUsersStatRsp);
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

            private void ensureUserStatListIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.userStatList_ = new ArrayList(this.userStatList_);
                    this.bitField0_ |= 2;
                }
            }

            public List<UserStat> getUserStatListList() {
                return Collections.unmodifiableList(this.userStatList_);
            }

            public int getUserStatListCount() {
                return this.userStatList_.size();
            }

            public UserStat getUserStatList(int i) {
                return (UserStat) this.userStatList_.get(i);
            }

            public Builder setUserStatList(int i, UserStat userStat) {
                if (userStat == null) {
                    throw new NullPointerException();
                }
                ensureUserStatListIsMutable();
                this.userStatList_.set(i, userStat);
                return this;
            }

            public Builder setUserStatList(int i, com.ifengyu.im.protobuf.IMBaseDefine.UserStat.Builder builder) {
                ensureUserStatListIsMutable();
                this.userStatList_.set(i, builder.build());
                return this;
            }

            public Builder addUserStatList(UserStat userStat) {
                if (userStat == null) {
                    throw new NullPointerException();
                }
                ensureUserStatListIsMutable();
                this.userStatList_.add(userStat);
                return this;
            }

            public Builder addUserStatList(int i, UserStat userStat) {
                if (userStat == null) {
                    throw new NullPointerException();
                }
                ensureUserStatListIsMutable();
                this.userStatList_.add(i, userStat);
                return this;
            }

            public Builder addUserStatList(com.ifengyu.im.protobuf.IMBaseDefine.UserStat.Builder builder) {
                ensureUserStatListIsMutable();
                this.userStatList_.add(builder.build());
                return this;
            }

            public Builder addUserStatList(int i, com.ifengyu.im.protobuf.IMBaseDefine.UserStat.Builder builder) {
                ensureUserStatListIsMutable();
                this.userStatList_.add(i, builder.build());
                return this;
            }

            public Builder addAllUserStatList(Iterable<? extends UserStat> iterable) {
                ensureUserStatListIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.userStatList_);
                return this;
            }

            public Builder clearUserStatList() {
                this.userStatList_ = Collections.emptyList();
                this.bitField0_ &= -3;
                return this;
            }

            public Builder removeUserStatList(int i) {
                ensureUserStatListIsMutable();
                this.userStatList_.remove(i);
                return this;
            }

            public boolean hasAttachData() {
                return (this.bitField0_ & 4) == 4;
            }

            public ByteString getAttachData() {
                return this.attachData_;
            }

            public Builder setAttachData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.attachData_ = byteString;
                return this;
            }

            public Builder clearAttachData() {
                this.bitField0_ &= -5;
                this.attachData_ = IMUsersStatRsp.getDefaultInstance().getAttachData();
                return this;
            }
        }

        private IMUsersStatRsp(com.google.protobuf.GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private IMUsersStatRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static IMUsersStatRsp getDefaultInstance() {
            return defaultInstance;
        }

        public IMUsersStatRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        private IMUsersStatRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.userStatList_ = new ArrayList();
                                z2 |= true;
                            }
                            this.userStatList_.add(codedInputStream.readMessage(UserStat.PARSER, extensionRegistryLite));
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
                        this.userStatList_ = Collections.unmodifiableList(this.userStatList_);
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
                this.userStatList_ = Collections.unmodifiableList(this.userStatList_);
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

        public Parser<IMUsersStatRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getUserId() {
            return this.userId_;
        }

        public List<UserStat> getUserStatListList() {
            return this.userStatList_;
        }

        public List<? extends UserStatOrBuilder> getUserStatListOrBuilderList() {
            return this.userStatList_;
        }

        public int getUserStatListCount() {
            return this.userStatList_.size();
        }

        public UserStat getUserStatList(int i) {
            return (UserStat) this.userStatList_.get(i);
        }

        public UserStatOrBuilder getUserStatListOrBuilder(int i) {
            return (UserStatOrBuilder) this.userStatList_.get(i);
        }

        public boolean hasAttachData() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getAttachData() {
            return this.attachData_;
        }

        private void initFields() {
            this.userId_ = 0;
            this.userStatList_ = Collections.emptyList();
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
            for (int i = 0; i < getUserStatListCount(); i++) {
                if (!getUserStatList(i).isInitialized()) {
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
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.userStatList_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(2, (MessageLite) this.userStatList_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 2) == 2) {
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
            while (true) {
                i2 = i;
                if (i3 >= this.userStatList_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(2, (MessageLite) this.userStatList_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 2) == 2) {
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

        public static IMUsersStatRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IMUsersStatRsp) PARSER.parseFrom(byteString);
        }

        public static IMUsersStatRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUsersStatRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IMUsersStatRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IMUsersStatRsp) PARSER.parseFrom(bArr);
        }

        public static IMUsersStatRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IMUsersStatRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IMUsersStatRsp parseFrom(InputStream inputStream) throws IOException {
            return (IMUsersStatRsp) PARSER.parseFrom(inputStream);
        }

        public static IMUsersStatRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUsersStatRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IMUsersStatRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IMUsersStatRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IMUsersStatRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUsersStatRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IMUsersStatRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IMUsersStatRsp) PARSER.parseFrom(codedInputStream);
        }

        public static IMUsersStatRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IMUsersStatRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IMUsersStatRsp iMUsersStatRsp) {
            return newBuilder().mergeFrom(iMUsersStatRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }
    }

    public interface IMUsersStatRspOrBuilder extends MessageLiteOrBuilder {
        ByteString getAttachData();

        int getUserId();

        UserStat getUserStatList(int i);

        int getUserStatListCount();

        List<UserStat> getUserStatListList();

        boolean hasAttachData();

        boolean hasUserId();
    }

    private IMBuddy() {
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
