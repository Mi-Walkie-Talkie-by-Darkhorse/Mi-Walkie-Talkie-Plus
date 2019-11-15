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
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SDKUserC2S {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_MediaUserId_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_MediaUserId_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_MediaUserId_descriptor, new String[]{"Guid", "Muid", "MediaMuid"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_descriptor, new String[]{"Appid", "MediaMuid"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_descriptor, new String[]{"Appid", "Ret", "MediaIds", "ErrorMsg"});

    public static final class MediaUserId extends GeneratedMessage implements MediaUserIdOrBuilder {
        public static final int GUID_FIELD_NUMBER = 1;
        public static final int MEDIAMUID_FIELD_NUMBER = 3;
        public static final int MUID_FIELD_NUMBER = 2;
        public static Parser<MediaUserId> PARSER = new AbstractParser<MediaUserId>() {
            public MediaUserId parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MediaUserId(codedInputStream, extensionRegistryLite);
            }
        };
        private static final MediaUserId defaultInstance = new MediaUserId(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object guid_;
        /* access modifiers changed from: private */
        public int mediaMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long muid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MediaUserIdOrBuilder {
            private int bitField0_;
            private Object guid_;
            private int mediaMuid_;
            private long muid_;

            public static final Descriptor getDescriptor() {
                return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_MediaUserId_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_MediaUserId_fieldAccessorTable.ensureFieldAccessorsInitialized(MediaUserId.class, Builder.class);
            }

            private Builder() {
                this.guid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.guid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MediaUserId.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.guid_ = "";
                this.bitField0_ &= -2;
                this.muid_ = 0;
                this.bitField0_ &= -3;
                this.mediaMuid_ = 0;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_MediaUserId_descriptor;
            }

            public MediaUserId getDefaultInstanceForType() {
                return MediaUserId.getDefaultInstance();
            }

            public MediaUserId build() {
                MediaUserId buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MediaUserId buildPartial() {
                int i = 1;
                MediaUserId mediaUserId = new MediaUserId((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                mediaUserId.guid_ = this.guid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                mediaUserId.muid_ = this.muid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                mediaUserId.mediaMuid_ = this.mediaMuid_;
                mediaUserId.bitField0_ = i;
                onBuilt();
                return mediaUserId;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MediaUserId) {
                    return mergeFrom((MediaUserId) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MediaUserId mediaUserId) {
                if (mediaUserId != MediaUserId.getDefaultInstance()) {
                    if (mediaUserId.hasGuid()) {
                        this.bitField0_ |= 1;
                        this.guid_ = mediaUserId.guid_;
                        onChanged();
                    }
                    if (mediaUserId.hasMuid()) {
                        setMuid(mediaUserId.getMuid());
                    }
                    if (mediaUserId.hasMediaMuid()) {
                        setMediaMuid(mediaUserId.getMediaMuid());
                    }
                    mergeUnknownFields(mediaUserId.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasGuid() && hasMuid() && hasMediaMuid()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MediaUserId mediaUserId;
                MediaUserId mediaUserId2;
                try {
                    MediaUserId mediaUserId3 = (MediaUserId) MediaUserId.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mediaUserId3 != null) {
                        mergeFrom(mediaUserId3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mediaUserId2 = (MediaUserId) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mediaUserId = mediaUserId2;
                    th = th2;
                }
                if (mediaUserId != null) {
                    mergeFrom(mediaUserId);
                }
                throw th;
            }

            public boolean hasGuid() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getGuid() {
                Object obj = this.guid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.guid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getGuidBytes() {
                Object obj = this.guid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.guid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setGuid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.guid_ = str;
                onChanged();
                return this;
            }

            public Builder clearGuid() {
                this.bitField0_ &= -2;
                this.guid_ = MediaUserId.getDefaultInstance().getGuid();
                onChanged();
                return this;
            }

            public Builder setGuidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.guid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasMuid() {
                return (this.bitField0_ & 2) == 2;
            }

            public long getMuid() {
                return this.muid_;
            }

            public Builder setMuid(long j) {
                this.bitField0_ |= 2;
                this.muid_ = j;
                onChanged();
                return this;
            }

            public Builder clearMuid() {
                this.bitField0_ &= -3;
                this.muid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMediaMuid() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getMediaMuid() {
                return this.mediaMuid_;
            }

            public Builder setMediaMuid(int i) {
                this.bitField0_ |= 4;
                this.mediaMuid_ = i;
                onChanged();
                return this;
            }

            public Builder clearMediaMuid() {
                this.bitField0_ &= -5;
                this.mediaMuid_ = 0;
                onChanged();
                return this;
            }
        }

        private MediaUserId(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MediaUserId(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MediaUserId getDefaultInstance() {
            return defaultInstance;
        }

        public MediaUserId getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MediaUserId(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 10:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 1;
                            this.guid_ = readBytes;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.muid_ = codedInputStream.readUInt64();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
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
            return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_MediaUserId_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_MediaUserId_fieldAccessorTable.ensureFieldAccessorsInitialized(MediaUserId.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MediaUserId> getParserForType() {
            return PARSER;
        }

        public boolean hasGuid() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getGuid() {
            Object obj = this.guid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.guid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getGuidBytes() {
            Object obj = this.guid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.guid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasMuid() {
            return (this.bitField0_ & 2) == 2;
        }

        public long getMuid() {
            return this.muid_;
        }

        public boolean hasMediaMuid() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getMediaMuid() {
            return this.mediaMuid_;
        }

        private void initFields() {
            this.guid_ = "";
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
            if (!hasGuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMuid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasMediaMuid()) {
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
                codedOutputStream.writeBytes(1, getGuidBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt64(2, this.muid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.mediaMuid_);
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getGuidBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt64Size(2, this.muid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.mediaMuid_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MediaUserId parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MediaUserId) PARSER.parseFrom(byteString);
        }

        public static MediaUserId parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MediaUserId) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MediaUserId parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MediaUserId) PARSER.parseFrom(bArr);
        }

        public static MediaUserId parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MediaUserId) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MediaUserId parseFrom(InputStream inputStream) throws IOException {
            return (MediaUserId) PARSER.parseFrom(inputStream);
        }

        public static MediaUserId parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MediaUserId) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MediaUserId parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MediaUserId) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MediaUserId parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MediaUserId) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MediaUserId parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MediaUserId) PARSER.parseFrom(codedInputStream);
        }

        public static MediaUserId parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MediaUserId) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MediaUserId mediaUserId) {
            return newBuilder().mergeFrom(mediaUserId);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MediaUserIdOrBuilder extends MessageOrBuilder {
        String getGuid();

        ByteString getGuidBytes();

        int getMediaMuid();

        long getMuid();

        boolean hasGuid();

        boolean hasMediaMuid();

        boolean hasMuid();
    }

    public static final class QueryMuidReq extends GeneratedMessage implements QueryMuidReqOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int MEDIAMUID_FIELD_NUMBER = 2;
        public static Parser<QueryMuidReq> PARSER = new AbstractParser<QueryMuidReq>() {
            public QueryMuidReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new QueryMuidReq(codedInputStream, extensionRegistryLite);
            }
        };
        private static final QueryMuidReq defaultInstance = new QueryMuidReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public List<Integer> mediaMuid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements QueryMuidReqOrBuilder {
            private int appid_;
            private int bitField0_;
            private List<Integer> mediaMuid_;

            public static final Descriptor getDescriptor() {
                return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryMuidReq.class, Builder.class);
            }

            private Builder() {
                this.mediaMuid_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.mediaMuid_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (QueryMuidReq.alwaysUseFieldBuilders) {
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
                this.mediaMuid_ = Collections.emptyList();
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_descriptor;
            }

            public QueryMuidReq getDefaultInstanceForType() {
                return QueryMuidReq.getDefaultInstance();
            }

            public QueryMuidReq build() {
                QueryMuidReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public QueryMuidReq buildPartial() {
                int i = 1;
                QueryMuidReq queryMuidReq = new QueryMuidReq((com.google.protobuf.GeneratedMessage.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                queryMuidReq.appid_ = this.appid_;
                if ((this.bitField0_ & 2) == 2) {
                    this.mediaMuid_ = Collections.unmodifiableList(this.mediaMuid_);
                    this.bitField0_ &= -3;
                }
                queryMuidReq.mediaMuid_ = this.mediaMuid_;
                queryMuidReq.bitField0_ = i;
                onBuilt();
                return queryMuidReq;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof QueryMuidReq) {
                    return mergeFrom((QueryMuidReq) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(QueryMuidReq queryMuidReq) {
                if (queryMuidReq != QueryMuidReq.getDefaultInstance()) {
                    if (queryMuidReq.hasAppid()) {
                        setAppid(queryMuidReq.getAppid());
                    }
                    if (!queryMuidReq.mediaMuid_.isEmpty()) {
                        if (this.mediaMuid_.isEmpty()) {
                            this.mediaMuid_ = queryMuidReq.mediaMuid_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureMediaMuidIsMutable();
                            this.mediaMuid_.addAll(queryMuidReq.mediaMuid_);
                        }
                        onChanged();
                    }
                    mergeUnknownFields(queryMuidReq.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasAppid()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                QueryMuidReq queryMuidReq;
                QueryMuidReq queryMuidReq2;
                try {
                    QueryMuidReq queryMuidReq3 = (QueryMuidReq) QueryMuidReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (queryMuidReq3 != null) {
                        mergeFrom(queryMuidReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    queryMuidReq2 = (QueryMuidReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    queryMuidReq = queryMuidReq2;
                    th = th2;
                }
                if (queryMuidReq != null) {
                    mergeFrom(queryMuidReq);
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

            private void ensureMediaMuidIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.mediaMuid_ = new ArrayList(this.mediaMuid_);
                    this.bitField0_ |= 2;
                }
            }

            public List<Integer> getMediaMuidList() {
                return Collections.unmodifiableList(this.mediaMuid_);
            }

            public int getMediaMuidCount() {
                return this.mediaMuid_.size();
            }

            public int getMediaMuid(int i) {
                return ((Integer) this.mediaMuid_.get(i)).intValue();
            }

            public Builder setMediaMuid(int i, int i2) {
                ensureMediaMuidIsMutable();
                this.mediaMuid_.set(i, Integer.valueOf(i2));
                onChanged();
                return this;
            }

            public Builder addMediaMuid(int i) {
                ensureMediaMuidIsMutable();
                this.mediaMuid_.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            public Builder addAllMediaMuid(Iterable<? extends Integer> iterable) {
                ensureMediaMuidIsMutable();
                com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.mediaMuid_);
                onChanged();
                return this;
            }

            public Builder clearMediaMuid() {
                this.mediaMuid_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }
        }

        private QueryMuidReq(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private QueryMuidReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static QueryMuidReq getDefaultInstance() {
            return defaultInstance;
        }

        public QueryMuidReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private QueryMuidReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 16:
                            if (!(z2 & true)) {
                                this.mediaMuid_ = new ArrayList();
                                z2 |= true;
                            }
                            this.mediaMuid_.add(Integer.valueOf(codedInputStream.readUInt32()));
                            break;
                        case 18:
                            int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            if (!(z2 & true) && codedInputStream.getBytesUntilLimit() > 0) {
                                this.mediaMuid_ = new ArrayList();
                                z2 |= true;
                            }
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                this.mediaMuid_.add(Integer.valueOf(codedInputStream.readUInt32()));
                            }
                            codedInputStream.popLimit(pushLimit);
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
                        this.mediaMuid_ = Collections.unmodifiableList(this.mediaMuid_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.mediaMuid_ = Collections.unmodifiableList(this.mediaMuid_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_QueryMuidReq_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryMuidReq.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<QueryMuidReq> getParserForType() {
            return PARSER;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getAppid() {
            return this.appid_;
        }

        public List<Integer> getMediaMuidList() {
            return this.mediaMuid_;
        }

        public int getMediaMuidCount() {
            return this.mediaMuid_.size();
        }

        public int getMediaMuid(int i) {
            return ((Integer) this.mediaMuid_.get(i)).intValue();
        }

        private void initFields() {
            this.appid_ = 0;
            this.mediaMuid_ = Collections.emptyList();
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
                if (i2 < this.mediaMuid_.size()) {
                    codedOutputStream.writeUInt32(2, ((Integer) this.mediaMuid_.get(i2)).intValue());
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
            int i4 = 0;
            while (i2 < this.mediaMuid_.size()) {
                i2++;
                i4 = CodedOutputStream.computeUInt32SizeNoTag(((Integer) this.mediaMuid_.get(i2)).intValue()) + i4;
            }
            int size = i + i4 + (getMediaMuidList().size() * 1) + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = size;
            return size;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static QueryMuidReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (QueryMuidReq) PARSER.parseFrom(byteString);
        }

        public static QueryMuidReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (QueryMuidReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static QueryMuidReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (QueryMuidReq) PARSER.parseFrom(bArr);
        }

        public static QueryMuidReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (QueryMuidReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static QueryMuidReq parseFrom(InputStream inputStream) throws IOException {
            return (QueryMuidReq) PARSER.parseFrom(inputStream);
        }

        public static QueryMuidReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryMuidReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static QueryMuidReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (QueryMuidReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static QueryMuidReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryMuidReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static QueryMuidReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (QueryMuidReq) PARSER.parseFrom(codedInputStream);
        }

        public static QueryMuidReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryMuidReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(QueryMuidReq queryMuidReq) {
            return newBuilder().mergeFrom(queryMuidReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface QueryMuidReqOrBuilder extends MessageOrBuilder {
        int getAppid();

        int getMediaMuid(int i);

        int getMediaMuidCount();

        List<Integer> getMediaMuidList();

        boolean hasAppid();
    }

    public static final class QueryMuidRsp extends GeneratedMessage implements QueryMuidRspOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int ERRORMSG_FIELD_NUMBER = 4;
        public static final int MEDIAIDS_FIELD_NUMBER = 3;
        public static Parser<QueryMuidRsp> PARSER = new AbstractParser<QueryMuidRsp>() {
            public QueryMuidRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new QueryMuidRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RET_FIELD_NUMBER = 2;
        private static final QueryMuidRsp defaultInstance = new QueryMuidRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object errorMsg_;
        /* access modifiers changed from: private */
        public List<MediaUserId> mediaIds_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int ret_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements QueryMuidRspOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object errorMsg_;
            private RepeatedFieldBuilder<MediaUserId, Builder, MediaUserIdOrBuilder> mediaIdsBuilder_;
            private List<MediaUserId> mediaIds_;
            private int ret_;

            public static final Descriptor getDescriptor() {
                return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryMuidRsp.class, Builder.class);
            }

            private Builder() {
                this.mediaIds_ = Collections.emptyList();
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.mediaIds_ = Collections.emptyList();
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (QueryMuidRsp.alwaysUseFieldBuilders) {
                    getMediaIdsFieldBuilder();
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
                if (this.mediaIdsBuilder_ == null) {
                    this.mediaIds_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                } else {
                    this.mediaIdsBuilder_.clear();
                }
                this.errorMsg_ = "";
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_descriptor;
            }

            public QueryMuidRsp getDefaultInstanceForType() {
                return QueryMuidRsp.getDefaultInstance();
            }

            public QueryMuidRsp build() {
                QueryMuidRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public QueryMuidRsp buildPartial() {
                int i = 1;
                QueryMuidRsp queryMuidRsp = new QueryMuidRsp((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                queryMuidRsp.appid_ = this.appid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                queryMuidRsp.ret_ = this.ret_;
                if (this.mediaIdsBuilder_ == null) {
                    if ((this.bitField0_ & 4) == 4) {
                        this.mediaIds_ = Collections.unmodifiableList(this.mediaIds_);
                        this.bitField0_ &= -5;
                    }
                    queryMuidRsp.mediaIds_ = this.mediaIds_;
                } else {
                    queryMuidRsp.mediaIds_ = this.mediaIdsBuilder_.build();
                }
                if ((i2 & 8) == 8) {
                    i |= 4;
                }
                queryMuidRsp.errorMsg_ = this.errorMsg_;
                queryMuidRsp.bitField0_ = i;
                onBuilt();
                return queryMuidRsp;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof QueryMuidRsp) {
                    return mergeFrom((QueryMuidRsp) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(QueryMuidRsp queryMuidRsp) {
                RepeatedFieldBuilder<MediaUserId, Builder, MediaUserIdOrBuilder> repeatedFieldBuilder = null;
                if (queryMuidRsp != QueryMuidRsp.getDefaultInstance()) {
                    if (queryMuidRsp.hasAppid()) {
                        setAppid(queryMuidRsp.getAppid());
                    }
                    if (queryMuidRsp.hasRet()) {
                        setRet(queryMuidRsp.getRet());
                    }
                    if (this.mediaIdsBuilder_ == null) {
                        if (!queryMuidRsp.mediaIds_.isEmpty()) {
                            if (this.mediaIds_.isEmpty()) {
                                this.mediaIds_ = queryMuidRsp.mediaIds_;
                                this.bitField0_ &= -5;
                            } else {
                                ensureMediaIdsIsMutable();
                                this.mediaIds_.addAll(queryMuidRsp.mediaIds_);
                            }
                            onChanged();
                        }
                    } else if (!queryMuidRsp.mediaIds_.isEmpty()) {
                        if (this.mediaIdsBuilder_.isEmpty()) {
                            this.mediaIdsBuilder_.dispose();
                            this.mediaIdsBuilder_ = null;
                            this.mediaIds_ = queryMuidRsp.mediaIds_;
                            this.bitField0_ &= -5;
                            if (QueryMuidRsp.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getMediaIdsFieldBuilder();
                            }
                            this.mediaIdsBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.mediaIdsBuilder_.addAllMessages(queryMuidRsp.mediaIds_);
                        }
                    }
                    if (queryMuidRsp.hasErrorMsg()) {
                        this.bitField0_ |= 8;
                        this.errorMsg_ = queryMuidRsp.errorMsg_;
                        onChanged();
                    }
                    mergeUnknownFields(queryMuidRsp.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasAppid() || !hasRet()) {
                    return false;
                }
                for (int i = 0; i < getMediaIdsCount(); i++) {
                    if (!getMediaIds(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                QueryMuidRsp queryMuidRsp;
                QueryMuidRsp queryMuidRsp2;
                try {
                    QueryMuidRsp queryMuidRsp3 = (QueryMuidRsp) QueryMuidRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (queryMuidRsp3 != null) {
                        mergeFrom(queryMuidRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    queryMuidRsp2 = (QueryMuidRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    queryMuidRsp = queryMuidRsp2;
                    th = th2;
                }
                if (queryMuidRsp != null) {
                    mergeFrom(queryMuidRsp);
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

            private void ensureMediaIdsIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.mediaIds_ = new ArrayList(this.mediaIds_);
                    this.bitField0_ |= 4;
                }
            }

            public List<MediaUserId> getMediaIdsList() {
                if (this.mediaIdsBuilder_ == null) {
                    return Collections.unmodifiableList(this.mediaIds_);
                }
                return this.mediaIdsBuilder_.getMessageList();
            }

            public int getMediaIdsCount() {
                if (this.mediaIdsBuilder_ == null) {
                    return this.mediaIds_.size();
                }
                return this.mediaIdsBuilder_.getCount();
            }

            public MediaUserId getMediaIds(int i) {
                if (this.mediaIdsBuilder_ == null) {
                    return (MediaUserId) this.mediaIds_.get(i);
                }
                return (MediaUserId) this.mediaIdsBuilder_.getMessage(i);
            }

            public Builder setMediaIds(int i, MediaUserId mediaUserId) {
                if (this.mediaIdsBuilder_ != null) {
                    this.mediaIdsBuilder_.setMessage(i, mediaUserId);
                } else if (mediaUserId == null) {
                    throw new NullPointerException();
                } else {
                    ensureMediaIdsIsMutable();
                    this.mediaIds_.set(i, mediaUserId);
                    onChanged();
                }
                return this;
            }

            public Builder setMediaIds(int i, Builder builder) {
                if (this.mediaIdsBuilder_ == null) {
                    ensureMediaIdsIsMutable();
                    this.mediaIds_.set(i, builder.build());
                    onChanged();
                } else {
                    this.mediaIdsBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addMediaIds(MediaUserId mediaUserId) {
                if (this.mediaIdsBuilder_ != null) {
                    this.mediaIdsBuilder_.addMessage(mediaUserId);
                } else if (mediaUserId == null) {
                    throw new NullPointerException();
                } else {
                    ensureMediaIdsIsMutable();
                    this.mediaIds_.add(mediaUserId);
                    onChanged();
                }
                return this;
            }

            public Builder addMediaIds(int i, MediaUserId mediaUserId) {
                if (this.mediaIdsBuilder_ != null) {
                    this.mediaIdsBuilder_.addMessage(i, mediaUserId);
                } else if (mediaUserId == null) {
                    throw new NullPointerException();
                } else {
                    ensureMediaIdsIsMutable();
                    this.mediaIds_.add(i, mediaUserId);
                    onChanged();
                }
                return this;
            }

            public Builder addMediaIds(Builder builder) {
                if (this.mediaIdsBuilder_ == null) {
                    ensureMediaIdsIsMutable();
                    this.mediaIds_.add(builder.build());
                    onChanged();
                } else {
                    this.mediaIdsBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addMediaIds(int i, Builder builder) {
                if (this.mediaIdsBuilder_ == null) {
                    ensureMediaIdsIsMutable();
                    this.mediaIds_.add(i, builder.build());
                    onChanged();
                } else {
                    this.mediaIdsBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllMediaIds(Iterable<? extends MediaUserId> iterable) {
                if (this.mediaIdsBuilder_ == null) {
                    ensureMediaIdsIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.mediaIds_);
                    onChanged();
                } else {
                    this.mediaIdsBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearMediaIds() {
                if (this.mediaIdsBuilder_ == null) {
                    this.mediaIds_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    this.mediaIdsBuilder_.clear();
                }
                return this;
            }

            public Builder removeMediaIds(int i) {
                if (this.mediaIdsBuilder_ == null) {
                    ensureMediaIdsIsMutable();
                    this.mediaIds_.remove(i);
                    onChanged();
                } else {
                    this.mediaIdsBuilder_.remove(i);
                }
                return this;
            }

            public Builder getMediaIdsBuilder(int i) {
                return (Builder) getMediaIdsFieldBuilder().getBuilder(i);
            }

            public MediaUserIdOrBuilder getMediaIdsOrBuilder(int i) {
                if (this.mediaIdsBuilder_ == null) {
                    return (MediaUserIdOrBuilder) this.mediaIds_.get(i);
                }
                return (MediaUserIdOrBuilder) this.mediaIdsBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends MediaUserIdOrBuilder> getMediaIdsOrBuilderList() {
                if (this.mediaIdsBuilder_ != null) {
                    return this.mediaIdsBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.mediaIds_);
            }

            public Builder addMediaIdsBuilder() {
                return (Builder) getMediaIdsFieldBuilder().addBuilder(MediaUserId.getDefaultInstance());
            }

            public Builder addMediaIdsBuilder(int i) {
                return (Builder) getMediaIdsFieldBuilder().addBuilder(i, MediaUserId.getDefaultInstance());
            }

            public List<Builder> getMediaIdsBuilderList() {
                return getMediaIdsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<MediaUserId, Builder, MediaUserIdOrBuilder> getMediaIdsFieldBuilder() {
                if (this.mediaIdsBuilder_ == null) {
                    this.mediaIdsBuilder_ = new RepeatedFieldBuilder<>(this.mediaIds_, (this.bitField0_ & 4) == 4, getParentForChildren(), isClean());
                    this.mediaIds_ = null;
                }
                return this.mediaIdsBuilder_;
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
                this.errorMsg_ = QueryMuidRsp.getDefaultInstance().getErrorMsg();
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
        }

        private QueryMuidRsp(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private QueryMuidRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static QueryMuidRsp getDefaultInstance() {
            return defaultInstance;
        }

        public QueryMuidRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private QueryMuidRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 16:
                            this.bitField0_ |= 2;
                            this.ret_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            if (!(z2 & true)) {
                                this.mediaIds_ = new ArrayList();
                                z2 |= true;
                            }
                            this.mediaIds_.add(codedInputStream.readMessage(MediaUserId.PARSER, extensionRegistryLite));
                            break;
                        case 34:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.errorMsg_ = readBytes;
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
                        this.mediaIds_ = Collections.unmodifiableList(this.mediaIds_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.mediaIds_ = Collections.unmodifiableList(this.mediaIds_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SDKUserC2S.internal_static_com_mi_mimsgsdk_proto_QueryMuidRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryMuidRsp.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<QueryMuidRsp> getParserForType() {
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

        public List<MediaUserId> getMediaIdsList() {
            return this.mediaIds_;
        }

        public List<? extends MediaUserIdOrBuilder> getMediaIdsOrBuilderList() {
            return this.mediaIds_;
        }

        public int getMediaIdsCount() {
            return this.mediaIds_.size();
        }

        public MediaUserId getMediaIds(int i) {
            return (MediaUserId) this.mediaIds_.get(i);
        }

        public MediaUserIdOrBuilder getMediaIdsOrBuilder(int i) {
            return (MediaUserIdOrBuilder) this.mediaIds_.get(i);
        }

        public boolean hasErrorMsg() {
            return (this.bitField0_ & 4) == 4;
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

        private void initFields() {
            this.appid_ = 0;
            this.ret_ = 0;
            this.mediaIds_ = Collections.emptyList();
            this.errorMsg_ = "";
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
                for (int i = 0; i < getMediaIdsCount(); i++) {
                    if (!getMediaIds(i).isInitialized()) {
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
                codedOutputStream.writeUInt32(1, this.appid_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.ret_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.mediaIds_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(3, (MessageLite) this.mediaIds_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(4, getErrorMsgBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
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
                i = CodedOutputStream.computeUInt32Size(1, this.appid_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeUInt32Size(2, this.ret_);
            }
            while (true) {
                i2 = i;
                if (i3 >= this.mediaIds_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(3, (MessageLite) this.mediaIds_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(4, getErrorMsgBytes());
            }
            int serializedSize = getUnknownFields().getSerializedSize() + i2;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static QueryMuidRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (QueryMuidRsp) PARSER.parseFrom(byteString);
        }

        public static QueryMuidRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (QueryMuidRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static QueryMuidRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (QueryMuidRsp) PARSER.parseFrom(bArr);
        }

        public static QueryMuidRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (QueryMuidRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static QueryMuidRsp parseFrom(InputStream inputStream) throws IOException {
            return (QueryMuidRsp) PARSER.parseFrom(inputStream);
        }

        public static QueryMuidRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryMuidRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static QueryMuidRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (QueryMuidRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static QueryMuidRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryMuidRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static QueryMuidRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (QueryMuidRsp) PARSER.parseFrom(codedInputStream);
        }

        public static QueryMuidRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (QueryMuidRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(QueryMuidRsp queryMuidRsp) {
            return newBuilder().mergeFrom(queryMuidRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface QueryMuidRspOrBuilder extends MessageOrBuilder {
        int getAppid();

        String getErrorMsg();

        ByteString getErrorMsgBytes();

        MediaUserId getMediaIds(int i);

        int getMediaIdsCount();

        List<MediaUserId> getMediaIdsList();

        MediaUserIdOrBuilder getMediaIdsOrBuilder(int i);

        List<? extends MediaUserIdOrBuilder> getMediaIdsOrBuilderList();

        int getRet();

        boolean hasAppid();

        boolean hasErrorMsg();

        boolean hasRet();
    }

    private SDKUserC2S() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0010SDKUserC2S.proto\u0012\u0015com.mi.mimsgsdk.proto\"<\n\u000bMediaUserId\u0012\f\n\u0004guid\u0018\u0001 \u0002(\t\u0012\f\n\u0004muid\u0018\u0002 \u0002(\u0004\u0012\u0011\n\tmediaMuid\u0018\u0003 \u0002(\r\"0\n\fQueryMuidReq\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u0011\n\tmediaMuid\u0018\u0002 \u0003(\r\"r\n\fQueryMuidRsp\u0012\r\n\u0005appid\u0018\u0001 \u0002(\r\u0012\u000b\n\u0003ret\u0018\u0002 \u0002(\r\u00124\n\bmediaIds\u0018\u0003 \u0003(\u000b2\".com.mi.mimsgsdk.proto.MediaUserId\u0012\u0010\n\berrorMsg\u0018\u0004 \u0001(\t"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                SDKUserC2S.descriptor = fileDescriptor;
                return null;
            }
        });
    }
}
