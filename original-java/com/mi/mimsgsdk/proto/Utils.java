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
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;

public final class Utils {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_UploadLogPush_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_UploadLogPush_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_UploadLogPush_descriptor, new String[]{"StillUploadWithoutWifi", "SbuPath", "MaxLength", "MaxSubDirCount"});

    public static final class UploadLogPush extends GeneratedMessage implements UploadLogPushOrBuilder {
        public static final int MAXLENGTH_FIELD_NUMBER = 3;
        public static final int MAXSUBDIRCOUNT_FIELD_NUMBER = 4;
        public static Parser<UploadLogPush> PARSER = new AbstractParser<UploadLogPush>() {
            public UploadLogPush parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new UploadLogPush(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SBUPATH_FIELD_NUMBER = 2;
        public static final int STILLUPLOADWITHOUTWIFI_FIELD_NUMBER = 1;
        private static final UploadLogPush defaultInstance = new UploadLogPush(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public long maxLength_;
        /* access modifiers changed from: private */
        public int maxSubDirCount_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object sbuPath_;
        /* access modifiers changed from: private */
        public boolean stillUploadWithoutWifi_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements UploadLogPushOrBuilder {
            private int bitField0_;
            private long maxLength_;
            private int maxSubDirCount_;
            private Object sbuPath_;
            private boolean stillUploadWithoutWifi_;

            public static final Descriptor getDescriptor() {
                return Utils.internal_static_com_mi_mimsgsdk_proto_UploadLogPush_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return Utils.internal_static_com_mi_mimsgsdk_proto_UploadLogPush_fieldAccessorTable.ensureFieldAccessorsInitialized(UploadLogPush.class, Builder.class);
            }

            private Builder() {
                this.sbuPath_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.sbuPath_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (UploadLogPush.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.stillUploadWithoutWifi_ = false;
                this.bitField0_ &= -2;
                this.sbuPath_ = "";
                this.bitField0_ &= -3;
                this.maxLength_ = 0;
                this.bitField0_ &= -5;
                this.maxSubDirCount_ = 0;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return Utils.internal_static_com_mi_mimsgsdk_proto_UploadLogPush_descriptor;
            }

            public UploadLogPush getDefaultInstanceForType() {
                return UploadLogPush.getDefaultInstance();
            }

            public UploadLogPush build() {
                UploadLogPush buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public UploadLogPush buildPartial() {
                int i = 1;
                UploadLogPush uploadLogPush = new UploadLogPush((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                uploadLogPush.stillUploadWithoutWifi_ = this.stillUploadWithoutWifi_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                uploadLogPush.sbuPath_ = this.sbuPath_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                uploadLogPush.maxLength_ = this.maxLength_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                uploadLogPush.maxSubDirCount_ = this.maxSubDirCount_;
                uploadLogPush.bitField0_ = i;
                onBuilt();
                return uploadLogPush;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof UploadLogPush) {
                    return mergeFrom((UploadLogPush) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(UploadLogPush uploadLogPush) {
                if (uploadLogPush != UploadLogPush.getDefaultInstance()) {
                    if (uploadLogPush.hasStillUploadWithoutWifi()) {
                        setStillUploadWithoutWifi(uploadLogPush.getStillUploadWithoutWifi());
                    }
                    if (uploadLogPush.hasSbuPath()) {
                        this.bitField0_ |= 2;
                        this.sbuPath_ = uploadLogPush.sbuPath_;
                        onChanged();
                    }
                    if (uploadLogPush.hasMaxLength()) {
                        setMaxLength(uploadLogPush.getMaxLength());
                    }
                    if (uploadLogPush.hasMaxSubDirCount()) {
                        setMaxSubDirCount(uploadLogPush.getMaxSubDirCount());
                    }
                    mergeUnknownFields(uploadLogPush.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UploadLogPush uploadLogPush;
                UploadLogPush uploadLogPush2;
                try {
                    UploadLogPush uploadLogPush3 = (UploadLogPush) UploadLogPush.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (uploadLogPush3 != null) {
                        mergeFrom(uploadLogPush3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    uploadLogPush2 = (UploadLogPush) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    uploadLogPush = uploadLogPush2;
                    th = th2;
                }
                if (uploadLogPush != null) {
                    mergeFrom(uploadLogPush);
                }
                throw th;
            }

            public boolean hasStillUploadWithoutWifi() {
                return (this.bitField0_ & 1) == 1;
            }

            public boolean getStillUploadWithoutWifi() {
                return this.stillUploadWithoutWifi_;
            }

            public Builder setStillUploadWithoutWifi(boolean z) {
                this.bitField0_ |= 1;
                this.stillUploadWithoutWifi_ = z;
                onChanged();
                return this;
            }

            public Builder clearStillUploadWithoutWifi() {
                this.bitField0_ &= -2;
                this.stillUploadWithoutWifi_ = false;
                onChanged();
                return this;
            }

            public boolean hasSbuPath() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getSbuPath() {
                Object obj = this.sbuPath_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.sbuPath_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getSbuPathBytes() {
                Object obj = this.sbuPath_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sbuPath_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setSbuPath(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.sbuPath_ = str;
                onChanged();
                return this;
            }

            public Builder clearSbuPath() {
                this.bitField0_ &= -3;
                this.sbuPath_ = UploadLogPush.getDefaultInstance().getSbuPath();
                onChanged();
                return this;
            }

            public Builder setSbuPathBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.sbuPath_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasMaxLength() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getMaxLength() {
                return this.maxLength_;
            }

            public Builder setMaxLength(long j) {
                this.bitField0_ |= 4;
                this.maxLength_ = j;
                onChanged();
                return this;
            }

            public Builder clearMaxLength() {
                this.bitField0_ &= -5;
                this.maxLength_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMaxSubDirCount() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getMaxSubDirCount() {
                return this.maxSubDirCount_;
            }

            public Builder setMaxSubDirCount(int i) {
                this.bitField0_ |= 8;
                this.maxSubDirCount_ = i;
                onChanged();
                return this;
            }

            public Builder clearMaxSubDirCount() {
                this.bitField0_ &= -9;
                this.maxSubDirCount_ = 0;
                onChanged();
                return this;
            }
        }

        private UploadLogPush(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private UploadLogPush(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static UploadLogPush getDefaultInstance() {
            return defaultInstance;
        }

        public UploadLogPush getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private UploadLogPush(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.stillUploadWithoutWifi_ = codedInputStream.readBool();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.sbuPath_ = readBytes;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.maxLength_ = codedInputStream.readUInt64();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.maxSubDirCount_ = codedInputStream.readUInt32();
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
            return Utils.internal_static_com_mi_mimsgsdk_proto_UploadLogPush_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return Utils.internal_static_com_mi_mimsgsdk_proto_UploadLogPush_fieldAccessorTable.ensureFieldAccessorsInitialized(UploadLogPush.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<UploadLogPush> getParserForType() {
            return PARSER;
        }

        public boolean hasStillUploadWithoutWifi() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean getStillUploadWithoutWifi() {
            return this.stillUploadWithoutWifi_;
        }

        public boolean hasSbuPath() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getSbuPath() {
            Object obj = this.sbuPath_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sbuPath_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSbuPathBytes() {
            Object obj = this.sbuPath_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sbuPath_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasMaxLength() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getMaxLength() {
            return this.maxLength_;
        }

        public boolean hasMaxSubDirCount() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getMaxSubDirCount() {
            return this.maxSubDirCount_;
        }

        private void initFields() {
            this.stillUploadWithoutWifi_ = false;
            this.sbuPath_ = "";
            this.maxLength_ = 0;
            this.maxSubDirCount_ = 0;
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
                codedOutputStream.writeBool(1, this.stillUploadWithoutWifi_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getSbuPathBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.maxLength_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeUInt32(4, this.maxSubDirCount_);
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
                i2 = 0 + CodedOutputStream.computeBoolSize(1, this.stillUploadWithoutWifi_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getSbuPathBytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt64Size(3, this.maxLength_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeUInt32Size(4, this.maxSubDirCount_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static UploadLogPush parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (UploadLogPush) PARSER.parseFrom(byteString);
        }

        public static UploadLogPush parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UploadLogPush) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UploadLogPush parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (UploadLogPush) PARSER.parseFrom(bArr);
        }

        public static UploadLogPush parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UploadLogPush) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static UploadLogPush parseFrom(InputStream inputStream) throws IOException {
            return (UploadLogPush) PARSER.parseFrom(inputStream);
        }

        public static UploadLogPush parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UploadLogPush) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static UploadLogPush parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UploadLogPush) PARSER.parseDelimitedFrom(inputStream);
        }

        public static UploadLogPush parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UploadLogPush) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static UploadLogPush parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (UploadLogPush) PARSER.parseFrom(codedInputStream);
        }

        public static UploadLogPush parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UploadLogPush) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(UploadLogPush uploadLogPush) {
            return newBuilder().mergeFrom(uploadLogPush);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface UploadLogPushOrBuilder extends MessageOrBuilder {
        long getMaxLength();

        int getMaxSubDirCount();

        String getSbuPath();

        ByteString getSbuPathBytes();

        boolean getStillUploadWithoutWifi();

        boolean hasMaxLength();

        boolean hasMaxSubDirCount();

        boolean hasSbuPath();

        boolean hasStillUploadWithoutWifi();
    }

    private Utils() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u000bUtils.proto\u0012\u0015com.mi.mimsgsdk.proto\"k\n\rUploadLogPush\u0012\u001e\n\u0016stillUploadWithoutWifi\u0018\u0001 \u0001(\b\u0012\u000f\n\u0007sbuPath\u0018\u0002 \u0001(\t\u0012\u0011\n\tmaxLength\u0018\u0003 \u0001(\u0004\u0012\u0016\n\u000emaxSubDirCount\u0018\u0004 \u0001(\r"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                Utils.descriptor = fileDescriptor;
                return null;
            }
        });
    }
}
