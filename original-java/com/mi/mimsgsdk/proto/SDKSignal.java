package com.mi.mimsgsdk.proto;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId;
import com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserIdOrBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SDKSignal {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_descriptor, new String[]{"Appid", "ConferenceId"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(3));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_descriptor, new String[]{"Appid", "Memebers"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_descriptor, new String[]{"Appid", "ConferenceId", "FromGuid", "FromMuid"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_descriptor, new String[]{"Appid", "Ret", "MediaId", "ErrorMsg", "Muid", "MediaMuid"});

    public static final class QueryConferenceMemberReq extends GeneratedMessage implements QueryConferenceMemberReqOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CONFERENCEID_FIELD_NUMBER = 2;
        public static Parser<QueryConferenceMemberReq> PARSER = new AbstractParser<QueryConferenceMemberReq>() {
            public QueryConferenceMemberReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new QueryConferenceMemberReq(codedInputStream, extensionRegistryLite);
            }
        };
        private static final QueryConferenceMemberReq defaultInstance = new QueryConferenceMemberReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public long conferenceId_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements QueryConferenceMemberReqOrBuilder {
            private int appid_;
            private int bitField0_;
            private long conferenceId_;

            public static final Descriptor getDescriptor() {
                return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryConferenceMemberReq.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (QueryConferenceMemberReq.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.conferenceId_ = 0;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_descriptor;
            }

            public QueryConferenceMemberReq getDefaultInstanceForType() {
                return QueryConferenceMemberReq.getDefaultInstance();
            }

            public QueryConferenceMemberReq build() {
                QueryConferenceMemberReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public QueryConferenceMemberReq buildPartial() {
                int i = 1;
                QueryConferenceMemberReq queryConferenceMemberReq = new QueryConferenceMemberReq((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                queryConferenceMemberReq.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                queryConferenceMemberReq.conferenceId_ = this.conferenceId_;
                queryConferenceMemberReq.bitField0_ = i;
                onBuilt();
                return queryConferenceMemberReq;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof QueryConferenceMemberReq) {
                    return mergeFrom((QueryConferenceMemberReq) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(QueryConferenceMemberReq queryConferenceMemberReq) {
                if (queryConferenceMemberReq != QueryConferenceMemberReq.getDefaultInstance()) {
                    if (queryConferenceMemberReq.hasAppid()) {
                        setAppid(queryConferenceMemberReq.getAppid());
                    }
                    if (queryConferenceMemberReq.hasConferenceId()) {
                        setConferenceId(queryConferenceMemberReq.getConferenceId());
                    }
                    mergeUnknownFields(queryConferenceMemberReq.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasConferenceId()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                QueryConferenceMemberReq queryConferenceMemberReq;
                QueryConferenceMemberReq queryConferenceMemberReq2;
                try {
                    QueryConferenceMemberReq queryConferenceMemberReq3 = (QueryConferenceMemberReq) QueryConferenceMemberReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (queryConferenceMemberReq3 != null) {
                        mergeFrom(queryConferenceMemberReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    queryConferenceMemberReq2 = (QueryConferenceMemberReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    queryConferenceMemberReq = queryConferenceMemberReq2;
                    th = th2;
                }
                if (queryConferenceMemberReq != null) {
                    mergeFrom(queryConferenceMemberReq);
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
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasConferenceId() {
                return (this.bitField0_ & 2) == 2;
            }

            public long getConferenceId() {
                return this.conferenceId_;
            }

            public Builder setConferenceId(long j) {
                this.bitField0_ |= 2;
                this.conferenceId_ = j;
                onChanged();
                return this;
            }

            public Builder clearConferenceId() {
                this.bitField0_ &= -3;
                this.conferenceId_ = 0;
                onChanged();
                return this;
            }
        }

        private QueryConferenceMemberReq(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private QueryConferenceMemberReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static QueryConferenceMemberReq getDefaultInstance() {
            return defaultInstance;
        }

        public QueryConferenceMemberReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private QueryConferenceMemberReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            com.google.protobuf.UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.conferenceId_ = codedInputStream.readUInt64();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
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
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberReq_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryConferenceMemberReq.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<QueryConferenceMemberReq> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasConferenceId() {
            return (this.bitField0_ & 2) == 2;
        }

        public long getConferenceId() {
            return this.conferenceId_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.conferenceId_ = 0;
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt64(2, this.conferenceId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
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
                i2 += CodedOutputStream.computeUInt64Size(2, this.conferenceId_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static QueryConferenceMemberReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (QueryConferenceMemberReq) PARSER.parseFrom(byteString);
        }

        public static QueryConferenceMemberReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (QueryConferenceMemberReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static QueryConferenceMemberReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (QueryConferenceMemberReq) PARSER.parseFrom(bArr);
        }

        public static QueryConferenceMemberReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (QueryConferenceMemberReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static QueryConferenceMemberReq parseFrom(InputStream inputStream) throws IOException {
            return (QueryConferenceMemberReq) PARSER.parseFrom(inputStream);
        }

        public static QueryConferenceMemberReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryConferenceMemberReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static QueryConferenceMemberReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (QueryConferenceMemberReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static QueryConferenceMemberReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryConferenceMemberReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static QueryConferenceMemberReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (QueryConferenceMemberReq) PARSER.parseFrom(codedInputStream);
        }

        public static QueryConferenceMemberReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryConferenceMemberReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(QueryConferenceMemberReq queryConferenceMemberReq) {
            return newBuilder().mergeFrom(queryConferenceMemberReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface QueryConferenceMemberReqOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getConferenceId();

        boolean hasAppid();

        boolean hasConferenceId();
    }

    public static final class QueryConferenceMemberRsp extends GeneratedMessage implements QueryConferenceMemberRspOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int MEMEBERS_FIELD_NUMBER = 2;
        public static Parser<QueryConferenceMemberRsp> PARSER = new AbstractParser<QueryConferenceMemberRsp>() {
            public QueryConferenceMemberRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new QueryConferenceMemberRsp(codedInputStream, extensionRegistryLite);
            }
        };
        private static final QueryConferenceMemberRsp defaultInstance = new QueryConferenceMemberRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public List<MediaUserId> memebers_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements QueryConferenceMemberRspOrBuilder {
            private int appid_;
            private int bitField0_;
            private RepeatedFieldBuilder<MediaUserId, com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder, MediaUserIdOrBuilder> memebersBuilder_;
            private List<MediaUserId> memebers_;

            public static final Descriptor getDescriptor() {
                return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryConferenceMemberRsp.class, Builder.class);
            }

            private Builder() {
                this.memebers_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.memebers_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (QueryConferenceMemberRsp.alwaysUseFieldBuilders) {
                    getMemebersFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                if (this.memebersBuilder_ == null) {
                    this.memebers_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    this.memebersBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_descriptor;
            }

            public QueryConferenceMemberRsp getDefaultInstanceForType() {
                return QueryConferenceMemberRsp.getDefaultInstance();
            }

            public QueryConferenceMemberRsp build() {
                QueryConferenceMemberRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public QueryConferenceMemberRsp buildPartial() {
                int i = 1;
                QueryConferenceMemberRsp queryConferenceMemberRsp = new QueryConferenceMemberRsp((com.google.protobuf.GeneratedMessage.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                queryConferenceMemberRsp.appid_ = this.appid_;
                if (this.memebersBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2) {
                        this.memebers_ = Collections.unmodifiableList(this.memebers_);
                        this.bitField0_ &= -3;
                    }
                    queryConferenceMemberRsp.memebers_ = this.memebers_;
                } else {
                    queryConferenceMemberRsp.memebers_ = this.memebersBuilder_.build();
                }
                queryConferenceMemberRsp.bitField0_ = i;
                onBuilt();
                return queryConferenceMemberRsp;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof QueryConferenceMemberRsp) {
                    return mergeFrom((QueryConferenceMemberRsp) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(QueryConferenceMemberRsp queryConferenceMemberRsp) {
                RepeatedFieldBuilder<MediaUserId, com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder, MediaUserIdOrBuilder> repeatedFieldBuilder = null;
                if (queryConferenceMemberRsp != QueryConferenceMemberRsp.getDefaultInstance()) {
                    if (queryConferenceMemberRsp.hasAppid()) {
                        setAppid(queryConferenceMemberRsp.getAppid());
                    }
                    if (this.memebersBuilder_ == null) {
                        if (!queryConferenceMemberRsp.memebers_.isEmpty()) {
                            if (this.memebers_.isEmpty()) {
                                this.memebers_ = queryConferenceMemberRsp.memebers_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureMemebersIsMutable();
                                this.memebers_.addAll(queryConferenceMemberRsp.memebers_);
                            }
                            onChanged();
                        }
                    } else if (!queryConferenceMemberRsp.memebers_.isEmpty()) {
                        if (this.memebersBuilder_.isEmpty()) {
                            this.memebersBuilder_.dispose();
                            this.memebersBuilder_ = null;
                            this.memebers_ = queryConferenceMemberRsp.memebers_;
                            this.bitField0_ &= -3;
                            if (QueryConferenceMemberRsp.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getMemebersFieldBuilder();
                            }
                            this.memebersBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.memebersBuilder_.addAllMessages(queryConferenceMemberRsp.memebers_);
                        }
                    }
                    mergeUnknownFields(queryConferenceMemberRsp.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasAppid()) {
                    return false;
                }
                for (int i = 0; i < getMemebersCount(); i++) {
                    if (!getMemebers(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                QueryConferenceMemberRsp queryConferenceMemberRsp;
                QueryConferenceMemberRsp queryConferenceMemberRsp2;
                try {
                    QueryConferenceMemberRsp queryConferenceMemberRsp3 = (QueryConferenceMemberRsp) QueryConferenceMemberRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (queryConferenceMemberRsp3 != null) {
                        mergeFrom(queryConferenceMemberRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    queryConferenceMemberRsp2 = (QueryConferenceMemberRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    queryConferenceMemberRsp = queryConferenceMemberRsp2;
                    th = th2;
                }
                if (queryConferenceMemberRsp != null) {
                    mergeFrom(queryConferenceMemberRsp);
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
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            private void ensureMemebersIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.memebers_ = new ArrayList(this.memebers_);
                    this.bitField0_ |= 2;
                }
            }

            public List<MediaUserId> getMemebersList() {
                if (this.memebersBuilder_ == null) {
                    return Collections.unmodifiableList(this.memebers_);
                }
                return this.memebersBuilder_.getMessageList();
            }

            public int getMemebersCount() {
                if (this.memebersBuilder_ == null) {
                    return this.memebers_.size();
                }
                return this.memebersBuilder_.getCount();
            }

            public MediaUserId getMemebers(int i) {
                if (this.memebersBuilder_ == null) {
                    return (MediaUserId) this.memebers_.get(i);
                }
                return (MediaUserId) this.memebersBuilder_.getMessage(i);
            }

            public Builder setMemebers(int i, MediaUserId mediaUserId) {
                if (this.memebersBuilder_ != null) {
                    this.memebersBuilder_.setMessage(i, mediaUserId);
                } else if (mediaUserId == null) {
                    throw new NullPointerException();
                } else {
                    ensureMemebersIsMutable();
                    this.memebers_.set(i, mediaUserId);
                    onChanged();
                }
                return this;
            }

            public Builder setMemebers(int i, com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder builder) {
                if (this.memebersBuilder_ == null) {
                    ensureMemebersIsMutable();
                    this.memebers_.set(i, builder.build());
                    onChanged();
                } else {
                    this.memebersBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMemebers(MediaUserId mediaUserId) {
                if (this.memebersBuilder_ != null) {
                    this.memebersBuilder_.addMessage(mediaUserId);
                } else if (mediaUserId == null) {
                    throw new NullPointerException();
                } else {
                    ensureMemebersIsMutable();
                    this.memebers_.add(mediaUserId);
                    onChanged();
                }
                return this;
            }

            public Builder addMemebers(int i, MediaUserId mediaUserId) {
                if (this.memebersBuilder_ != null) {
                    this.memebersBuilder_.addMessage(i, mediaUserId);
                } else if (mediaUserId == null) {
                    throw new NullPointerException();
                } else {
                    ensureMemebersIsMutable();
                    this.memebers_.add(i, mediaUserId);
                    onChanged();
                }
                return this;
            }

            public Builder addMemebers(com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder builder) {
                if (this.memebersBuilder_ == null) {
                    ensureMemebersIsMutable();
                    this.memebers_.add(builder.build());
                    onChanged();
                } else {
                    this.memebersBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMemebers(int i, com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder builder) {
                if (this.memebersBuilder_ == null) {
                    ensureMemebersIsMutable();
                    this.memebers_.add(i, builder.build());
                    onChanged();
                } else {
                    this.memebersBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMemebers(Iterable<? extends MediaUserId> iterable) {
                if (this.memebersBuilder_ == null) {
                    ensureMemebersIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.memebers_);
                    onChanged();
                } else {
                    this.memebersBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMemebers() {
                if (this.memebersBuilder_ == null) {
                    this.memebers_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    this.memebersBuilder_.clear();
                }
                return this;
            }

            public Builder removeMemebers(int i) {
                if (this.memebersBuilder_ == null) {
                    ensureMemebersIsMutable();
                    this.memebers_.remove(i);
                    onChanged();
                } else {
                    this.memebersBuilder_.remove(i);
                }
                return this;
            }

            public com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder getMemebersBuilder(int i) {
                return (com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder) getMemebersFieldBuilder().getBuilder(i);
            }

            public MediaUserIdOrBuilder getMemebersOrBuilder(int i) {
                if (this.memebersBuilder_ == null) {
                    return (MediaUserIdOrBuilder) this.memebers_.get(i);
                }
                return (MediaUserIdOrBuilder) this.memebersBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends MediaUserIdOrBuilder> getMemebersOrBuilderList() {
                if (this.memebersBuilder_ != null) {
                    return this.memebersBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.memebers_);
            }

            public com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder addMemebersBuilder() {
                return (com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder) getMemebersFieldBuilder().addBuilder(MediaUserId.getDefaultInstance());
            }

            public com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder addMemebersBuilder(int i) {
                return (com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder) getMemebersFieldBuilder().addBuilder(i, MediaUserId.getDefaultInstance());
            }

            public List<com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder> getMemebersBuilderList() {
                return getMemebersFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<MediaUserId, com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId.Builder, MediaUserIdOrBuilder> getMemebersFieldBuilder() {
                if (this.memebersBuilder_ == null) {
                    this.memebersBuilder_ = new RepeatedFieldBuilder<>(this.memebers_, (this.bitField0_ & 2) == 2, getParentForChildren(), isClean());
                    this.memebers_ = null;
                }
                return this.memebersBuilder_;
            }
        }

        private QueryConferenceMemberRsp(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private QueryConferenceMemberRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static QueryConferenceMemberRsp getDefaultInstance() {
            return defaultInstance;
        }

        public QueryConferenceMemberRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private QueryConferenceMemberRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            boolean z = false;
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            com.google.protobuf.UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            if (!(z2 & true)) {
                                this.memebers_ = new ArrayList();
                                z2 |= true;
                            }
                            this.memebers_.add(codedInputStream.readMessage(MediaUserId.PARSER, extensionRegistryLite));
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
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
                        this.memebers_ = Collections.unmodifiableList(this.memebers_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.memebers_ = Collections.unmodifiableList(this.memebers_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryConferenceMemberRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryConferenceMemberRsp.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<QueryConferenceMemberRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public List<MediaUserId> getMemebersList() {
            return this.memebers_;
        }

        public List<? extends MediaUserIdOrBuilder> getMemebersOrBuilderList() {
            return this.memebers_;
        }

        public int getMemebersCount() {
            return this.memebers_.size();
        }

        public MediaUserId getMemebers(int i) {
            return (MediaUserId) this.memebers_.get(i);
        }

        public MediaUserIdOrBuilder getMemebersOrBuilder(int i) {
            return (MediaUserIdOrBuilder) this.memebers_.get(i);
        }

        private void initFields() {
            this.appid_ = 0;
            this.memebers_ = Collections.emptyList();
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
            }
            for (int i = 0; i < getMemebersCount(); i++) {
                if (!getMemebers(i).isInitialized()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.memebers_.size()) {
                    codedOutputStream.writeMessage(2, (MessageLite) this.memebers_.get(i2));
                    i = i2 + 1;
                } else {
                    getUnknownFields().writeTo(codedOutputStream);
                    return;
                }
            }
        }

        public int getSerializedSize() {
            int i;
            int i2 = 0;
            int i3 = this.memoizedSerializedSize;
            if (i3 != -1) {
                return i3;
            }
            if ((this.bitField0_ & 1) == 1) {
                i = CodedOutputStream.computeUInt32Size(1, this.appid_) + 0;
            } else {
                i = 0;
            }
            while (true) {
                int i4 = i;
                if (i2 < this.memebers_.size()) {
                    i = CodedOutputStream.computeMessageSize(2, (MessageLite) this.memebers_.get(i2)) + i4;
                    i2++;
                } else {
                    int serializedSize = getUnknownFields().getSerializedSize() + i4;
                    this.memoizedSerializedSize = serializedSize;
                    return serializedSize;
                }
            }
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static QueryConferenceMemberRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (QueryConferenceMemberRsp) PARSER.parseFrom(byteString);
        }

        public static QueryConferenceMemberRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (QueryConferenceMemberRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static QueryConferenceMemberRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (QueryConferenceMemberRsp) PARSER.parseFrom(bArr);
        }

        public static QueryConferenceMemberRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (QueryConferenceMemberRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static QueryConferenceMemberRsp parseFrom(InputStream inputStream) throws IOException {
            return (QueryConferenceMemberRsp) PARSER.parseFrom(inputStream);
        }

        public static QueryConferenceMemberRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryConferenceMemberRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static QueryConferenceMemberRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (QueryConferenceMemberRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static QueryConferenceMemberRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryConferenceMemberRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static QueryConferenceMemberRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (QueryConferenceMemberRsp) PARSER.parseFrom(codedInputStream);
        }

        public static QueryConferenceMemberRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryConferenceMemberRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(QueryConferenceMemberRsp queryConferenceMemberRsp) {
            return newBuilder().mergeFrom(queryConferenceMemberRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface QueryConferenceMemberRspOrBuilder extends MessageOrBuilder {
        int getAppid();

        MediaUserId getMemebers(int i);

        int getMemebersCount();

        List<MediaUserId> getMemebersList();

        MediaUserIdOrBuilder getMemebersOrBuilder(int i);

        List<? extends MediaUserIdOrBuilder> getMemebersOrBuilderList();

        boolean hasAppid();
    }

    public static final class QueryMediaIdRequest extends GeneratedMessage implements QueryMediaIdRequestOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int CONFERENCEID_FIELD_NUMBER = 2;
        public static final int FROMGUID_FIELD_NUMBER = 3;
        public static final int FROMMUID_FIELD_NUMBER = 4;
        public static Parser<QueryMediaIdRequest> PARSER = new AbstractParser<QueryMediaIdRequest>() {
            public QueryMediaIdRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new QueryMediaIdRequest(codedInputStream, extensionRegistryLite);
            }
        };
        private static final QueryMediaIdRequest defaultInstance = new QueryMediaIdRequest(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public long conferenceId_;
        /* access modifiers changed from: private */
        public Object fromGuid_;
        /* access modifiers changed from: private */
        public long fromMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements QueryMediaIdRequestOrBuilder {
            private int appid_;
            private int bitField0_;
            private long conferenceId_;
            private Object fromGuid_;
            private long fromMuid_;

            public static final Descriptor getDescriptor() {
                return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryMediaIdRequest.class, Builder.class);
            }

            private Builder() {
                this.fromGuid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.fromGuid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (QueryMediaIdRequest.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.conferenceId_ = 0;
                this.bitField0_ &= -3;
                this.fromGuid_ = "";
                this.bitField0_ &= -5;
                this.fromMuid_ = 0;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_descriptor;
            }

            public QueryMediaIdRequest getDefaultInstanceForType() {
                return QueryMediaIdRequest.getDefaultInstance();
            }

            public QueryMediaIdRequest build() {
                QueryMediaIdRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public QueryMediaIdRequest buildPartial() {
                int i = 1;
                QueryMediaIdRequest queryMediaIdRequest = new QueryMediaIdRequest((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                queryMediaIdRequest.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                queryMediaIdRequest.conferenceId_ = this.conferenceId_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                queryMediaIdRequest.fromGuid_ = this.fromGuid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                queryMediaIdRequest.fromMuid_ = this.fromMuid_;
                queryMediaIdRequest.bitField0_ = i;
                onBuilt();
                return queryMediaIdRequest;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof QueryMediaIdRequest) {
                    return mergeFrom((QueryMediaIdRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(QueryMediaIdRequest queryMediaIdRequest) {
                if (queryMediaIdRequest != QueryMediaIdRequest.getDefaultInstance()) {
                    if (queryMediaIdRequest.hasAppid()) {
                        setAppid(queryMediaIdRequest.getAppid());
                    }
                    if (queryMediaIdRequest.hasConferenceId()) {
                        setConferenceId(queryMediaIdRequest.getConferenceId());
                    }
                    if (queryMediaIdRequest.hasFromGuid()) {
                        this.bitField0_ |= 4;
                        this.fromGuid_ = queryMediaIdRequest.fromGuid_;
                        onChanged();
                    }
                    if (queryMediaIdRequest.hasFromMuid()) {
                        setFromMuid(queryMediaIdRequest.getFromMuid());
                    }
                    mergeUnknownFields(queryMediaIdRequest.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasConferenceId() && hasFromGuid()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                QueryMediaIdRequest queryMediaIdRequest;
                QueryMediaIdRequest queryMediaIdRequest2;
                try {
                    QueryMediaIdRequest queryMediaIdRequest3 = (QueryMediaIdRequest) QueryMediaIdRequest.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (queryMediaIdRequest3 != null) {
                        mergeFrom(queryMediaIdRequest3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    queryMediaIdRequest2 = (QueryMediaIdRequest) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    queryMediaIdRequest = queryMediaIdRequest2;
                    th = th2;
                }
                if (queryMediaIdRequest != null) {
                    mergeFrom(queryMediaIdRequest);
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
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasConferenceId() {
                return (this.bitField0_ & 2) == 2;
            }

            public long getConferenceId() {
                return this.conferenceId_;
            }

            public Builder setConferenceId(long j) {
                this.bitField0_ |= 2;
                this.conferenceId_ = j;
                onChanged();
                return this;
            }

            public Builder clearConferenceId() {
                this.bitField0_ &= -3;
                this.conferenceId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFromGuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getFromGuid() {
                Object obj = this.fromGuid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.fromGuid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getFromGuidBytes() {
                Object obj = this.fromGuid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fromGuid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setFromGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = str;
                onChanged();
                return this;
            }

            public Builder clearFromGuid() {
                this.bitField0_ &= -5;
                this.fromGuid_ = QueryMediaIdRequest.getDefaultInstance().getFromGuid();
                onChanged();
                return this;
            }

            public Builder setFromGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fromGuid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasFromMuid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getFromMuid() {
                return this.fromMuid_;
            }

            public Builder setFromMuid(long j) {
                this.bitField0_ |= 8;
                this.fromMuid_ = j;
                onChanged();
                return this;
            }

            public Builder clearFromMuid() {
                this.bitField0_ &= -9;
                this.fromMuid_ = 0;
                onChanged();
                return this;
            }
        }

        private QueryMediaIdRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private QueryMediaIdRequest(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static QueryMediaIdRequest getDefaultInstance() {
            return defaultInstance;
        }

        public QueryMediaIdRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private QueryMediaIdRequest(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            com.google.protobuf.UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.conferenceId_ = codedInputStream.readUInt64();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.fromGuid_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.fromMuid_ = codedInputStream.readUInt64();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
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
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryMediaIdRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryMediaIdRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<QueryMediaIdRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasConferenceId() {
            return (this.bitField0_ & 2) == 2;
        }

        public long getConferenceId() {
            return this.conferenceId_;
        }

        public boolean hasFromGuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getFromGuid() {
            Object obj = this.fromGuid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.fromGuid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getFromGuidBytes() {
            Object obj = this.fromGuid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fromGuid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasFromMuid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getFromMuid() {
            return this.fromMuid_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.conferenceId_ = 0;
            this.fromGuid_ = "";
            this.fromMuid_ = 0;
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
            } else if (!hasConferenceId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasFromGuid()) {
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
                codedOutputStream.writeUInt64(2, this.conferenceId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt64(4, this.fromMuid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
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
                i2 += CodedOutputStream.computeUInt64Size(2, this.conferenceId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getFromGuidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt64Size(4, this.fromMuid_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static QueryMediaIdRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (QueryMediaIdRequest) PARSER.parseFrom(byteString);
        }

        public static QueryMediaIdRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (QueryMediaIdRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static QueryMediaIdRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (QueryMediaIdRequest) PARSER.parseFrom(bArr);
        }

        public static QueryMediaIdRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (QueryMediaIdRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static QueryMediaIdRequest parseFrom(InputStream inputStream) throws IOException {
            return (QueryMediaIdRequest) PARSER.parseFrom(inputStream);
        }

        public static QueryMediaIdRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryMediaIdRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static QueryMediaIdRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (QueryMediaIdRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static QueryMediaIdRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryMediaIdRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static QueryMediaIdRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (QueryMediaIdRequest) PARSER.parseFrom(codedInputStream);
        }

        public static QueryMediaIdRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryMediaIdRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(QueryMediaIdRequest queryMediaIdRequest) {
            return newBuilder().mergeFrom(queryMediaIdRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface QueryMediaIdRequestOrBuilder extends MessageOrBuilder {
        int getAppid();

        long getConferenceId();

        String getFromGuid();

        ByteString getFromGuidBytes();

        long getFromMuid();

        boolean hasAppid();

        boolean hasConferenceId();

        boolean hasFromGuid();

        boolean hasFromMuid();
    }

    public static final class QueryMediaIdResponse extends GeneratedMessage implements QueryMediaIdResponseOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int ERRORMSG_FIELD_NUMBER = 4;
        public static final int MEDIAID_FIELD_NUMBER = 3;
        public static final int MEDIAMUID_FIELD_NUMBER = 6;
        public static final int MUID_FIELD_NUMBER = 5;
        public static Parser<QueryMediaIdResponse> PARSER = new AbstractParser<QueryMediaIdResponse>() {
            public QueryMediaIdResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new QueryMediaIdResponse(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RET_FIELD_NUMBER = 2;
        private static final QueryMediaIdResponse defaultInstance = new QueryMediaIdResponse(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object errorMsg_;
        /* access modifiers changed from: private */
        public long mediaId_;
        /* access modifiers changed from: private */
        public int mediaMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long muid_;
        /* access modifiers changed from: private */
        public int ret_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements QueryMediaIdResponseOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object errorMsg_;
            private long mediaId_;
            private int mediaMuid_;
            private long muid_;
            private int ret_;

            public static final Descriptor getDescriptor() {
                return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryMediaIdResponse.class, Builder.class);
            }

            private Builder() {
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (QueryMediaIdResponse.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.appid_ = 0;
                this.bitField0_ &= -2;
                this.ret_ = 0;
                this.bitField0_ &= -3;
                this.mediaId_ = 0;
                this.bitField0_ &= -5;
                this.errorMsg_ = "";
                this.bitField0_ &= -9;
                this.muid_ = 0;
                this.bitField0_ &= -17;
                this.mediaMuid_ = 0;
                this.bitField0_ &= -33;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_descriptor;
            }

            public QueryMediaIdResponse getDefaultInstanceForType() {
                return QueryMediaIdResponse.getDefaultInstance();
            }

            public QueryMediaIdResponse build() {
                QueryMediaIdResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public QueryMediaIdResponse buildPartial() {
                int i = 1;
                QueryMediaIdResponse queryMediaIdResponse = new QueryMediaIdResponse((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                queryMediaIdResponse.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                queryMediaIdResponse.ret_ = this.ret_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                queryMediaIdResponse.mediaId_ = this.mediaId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                queryMediaIdResponse.errorMsg_ = this.errorMsg_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                queryMediaIdResponse.muid_ = this.muid_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                queryMediaIdResponse.mediaMuid_ = this.mediaMuid_;
                queryMediaIdResponse.bitField0_ = i;
                onBuilt();
                return queryMediaIdResponse;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof QueryMediaIdResponse) {
                    return mergeFrom((QueryMediaIdResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(QueryMediaIdResponse queryMediaIdResponse) {
                if (queryMediaIdResponse != QueryMediaIdResponse.getDefaultInstance()) {
                    if (queryMediaIdResponse.hasAppid()) {
                        setAppid(queryMediaIdResponse.getAppid());
                    }
                    if (queryMediaIdResponse.hasRet()) {
                        setRet(queryMediaIdResponse.getRet());
                    }
                    if (queryMediaIdResponse.hasMediaId()) {
                        setMediaId(queryMediaIdResponse.getMediaId());
                    }
                    if (queryMediaIdResponse.hasErrorMsg()) {
                        this.bitField0_ |= 8;
                        this.errorMsg_ = queryMediaIdResponse.errorMsg_;
                        onChanged();
                    }
                    if (queryMediaIdResponse.hasMuid()) {
                        setMuid(queryMediaIdResponse.getMuid());
                    }
                    if (queryMediaIdResponse.hasMediaMuid()) {
                        setMediaMuid(queryMediaIdResponse.getMediaMuid());
                    }
                    mergeUnknownFields(queryMediaIdResponse.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAppid() && hasRet()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                QueryMediaIdResponse queryMediaIdResponse;
                QueryMediaIdResponse queryMediaIdResponse2;
                try {
                    QueryMediaIdResponse queryMediaIdResponse3 = (QueryMediaIdResponse) QueryMediaIdResponse.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (queryMediaIdResponse3 != null) {
                        mergeFrom(queryMediaIdResponse3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    queryMediaIdResponse2 = (QueryMediaIdResponse) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    queryMediaIdResponse = queryMediaIdResponse2;
                    th = th2;
                }
                if (queryMediaIdResponse != null) {
                    mergeFrom(queryMediaIdResponse);
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
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -2;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasRet() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getRet() {
                return this.ret_;
            }

            public Builder setRet(int i) {
                this.bitField0_ |= 2;
                this.ret_ = i;
                onChanged();
                return this;
            }

            public Builder clearRet() {
                this.bitField0_ &= -3;
                this.ret_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMediaId() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getMediaId() {
                return this.mediaId_;
            }

            public Builder setMediaId(long j) {
                this.bitField0_ |= 4;
                this.mediaId_ = j;
                onChanged();
                return this;
            }

            public Builder clearMediaId() {
                this.bitField0_ &= -5;
                this.mediaId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasErrorMsg() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.errorMsg_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setErrorMsg(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.errorMsg_ = str;
                onChanged();
                return this;
            }

            public Builder clearErrorMsg() {
                this.bitField0_ &= -9;
                this.errorMsg_ = QueryMediaIdResponse.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            public Builder setErrorMsgBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.errorMsg_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasMuid() {
                return (this.bitField0_ & 16) == 16;
            }

            public long getMuid() {
                return this.muid_;
            }

            public Builder setMuid(long j) {
                this.bitField0_ |= 16;
                this.muid_ = j;
                onChanged();
                return this;
            }

            public Builder clearMuid() {
                this.bitField0_ &= -17;
                this.muid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMediaMuid() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getMediaMuid() {
                return this.mediaMuid_;
            }

            public Builder setMediaMuid(int i) {
                this.bitField0_ |= 32;
                this.mediaMuid_ = i;
                onChanged();
                return this;
            }

            public Builder clearMediaMuid() {
                this.bitField0_ &= -33;
                this.mediaMuid_ = 0;
                onChanged();
                return this;
            }
        }

        private QueryMediaIdResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private QueryMediaIdResponse(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static QueryMediaIdResponse getDefaultInstance() {
            return defaultInstance;
        }

        public QueryMediaIdResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private QueryMediaIdResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            com.google.protobuf.UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
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
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.ret_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.mediaId_ = codedInputStream.readUInt64();
                            break;
                        case 34:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.errorMsg_ = readBytes;
                            break;
                        case 40:
                            this.bitField0_ |= 16;
                            this.muid_ = codedInputStream.readUInt64();
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.mediaMuid_ = codedInputStream.readUInt32();
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
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
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKSignal.internal_static_com_mi_mimsgsdk_proto_QueryMediaIdResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryMediaIdResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<QueryMediaIdResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasRet() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getRet() {
            return this.ret_;
        }

        public boolean hasMediaId() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getMediaId() {
            return this.mediaId_;
        }

        public boolean hasErrorMsg() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.errorMsg_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasMuid() {
            return (this.bitField0_ & 16) == 16;
        }

        public long getMuid() {
            return this.muid_;
        }

        public boolean hasMediaMuid() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getMediaMuid() {
            return this.mediaMuid_;
        }

        private void initFields() {
            this.appid_ = 0;
            this.ret_ = 0;
            this.mediaId_ = 0;
            this.errorMsg_ = "";
            this.muid_ = 0;
            this.mediaMuid_ = 0;
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
            } else if (!hasRet()) {
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
                codedOutputStream.writeUInt32(2, this.ret_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.mediaId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getErrorMsgBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt64(5, this.muid_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeUInt32(6, this.mediaMuid_);
            }
            getUnknownFields().writeTo(codedOutputStream);
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
                i2 += CodedOutputStream.computeUInt32Size(2, this.ret_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt64Size(3, this.mediaId_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getErrorMsgBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt64Size(5, this.muid_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeUInt32Size(6, this.mediaMuid_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static QueryMediaIdResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (QueryMediaIdResponse) PARSER.parseFrom(byteString);
        }

        public static QueryMediaIdResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (QueryMediaIdResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static QueryMediaIdResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (QueryMediaIdResponse) PARSER.parseFrom(bArr);
        }

        public static QueryMediaIdResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (QueryMediaIdResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static QueryMediaIdResponse parseFrom(InputStream inputStream) throws IOException {
            return (QueryMediaIdResponse) PARSER.parseFrom(inputStream);
        }

        public static QueryMediaIdResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryMediaIdResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static QueryMediaIdResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (QueryMediaIdResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static QueryMediaIdResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryMediaIdResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static QueryMediaIdResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (QueryMediaIdResponse) PARSER.parseFrom(codedInputStream);
        }

        public static QueryMediaIdResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryMediaIdResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(QueryMediaIdResponse queryMediaIdResponse) {
            return newBuilder().mergeFrom(queryMediaIdResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface QueryMediaIdResponseOrBuilder extends MessageOrBuilder {
        int getAppid();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        long getMediaId();

        int getMediaMuid();

        long getMuid();

        int getRet();

        boolean hasAppid();

        boolean hasErrorMsg();

        boolean hasMediaId();

        boolean hasMediaMuid();

        boolean hasMuid();

        boolean hasRet();
    }

    private SDKSignal() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor[] fileDescriptorArr = {SDKUserC2S.getDescriptor()};
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u000fSDKSignal.proto\u0012\u0015com.mi.mimsgsdk.proto\u001a\u0010SDKUserC2S.proto\"^\n\u0013QueryMediaIdRequest\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0014\n\fconferenceId\u0018\u0002 \u0002(\u0004\u0012\u0010\n\bfromGuid\u0018\u0003 \u0002(\t\u0012\u0010\n\bfromMuid\u0018\u0004 \u0001(\u0004\"v\n\u0014QueryMediaIdResponse\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000b\n\u0003ret\u0018\u0002 \u0002(\r\u0012\u000f\n\u0007mediaId\u0018\u0003 \u0001(\u0004\u0012\u0010\n\berrorMsg\u0018\u0004 \u0001(\t\u0012\f\n\u0004muid\u0018\u0005 \u0001(\u0004\u0012\u0011\n\tmediaMuid\u0018\u0006 \u0001(\r\"?\n\u0018QueryConferenceMemberReq\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0014\n\fconferenceId\u0018\u0002 \u0002(\u0004\"_\n\u0018QueryConferenceMemberRsp\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u00124\n\bmemebers\u0018\u0002 \u0003(\u000b", "2\".com.mi.mimsgsdk.proto.MediaUserId"}, fileDescriptorArr, new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                SDKSignal.descriptor = fileDescriptor;
                return null;
            }
        });
        SDKUserC2S.getDescriptor();
    }
}
