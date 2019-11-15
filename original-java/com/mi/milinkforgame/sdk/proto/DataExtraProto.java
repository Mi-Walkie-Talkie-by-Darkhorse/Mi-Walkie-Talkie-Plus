package com.mi.milinkforgame.sdk.proto;

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

public final class DataExtraProto {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_descriptor, new String[]{"Engineratio"});

    public static final class DataExtra extends GeneratedMessage implements DataExtraOrBuilder {
        public static final int ENGINERATIO_FIELD_NUMBER = 1;
        public static Parser<DataExtra> PARSER = new AbstractParser<DataExtra>() {
            public DataExtra parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new DataExtra(codedInputStream, extensionRegistryLite);
            }
        };
        private static final DataExtra defaultInstance = new DataExtra(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public float engineratio_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements DataExtraOrBuilder {
            private int bitField0_;
            private float engineratio_;

            public static final Descriptor getDescriptor() {
                return DataExtraProto.internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DataExtraProto.internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_fieldAccessorTable.ensureFieldAccessorsInitialized(DataExtra.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (DataExtra.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.engineratio_ = 0.0f;
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DataExtraProto.internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_descriptor;
            }

            public DataExtra getDefaultInstanceForType() {
                return DataExtra.getDefaultInstance();
            }

            public DataExtra build() {
                DataExtra buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public DataExtra buildPartial() {
                int i = 1;
                DataExtra dataExtra = new DataExtra((com.google.protobuf.GeneratedMessage.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                dataExtra.engineratio_ = this.engineratio_;
                dataExtra.bitField0_ = i;
                onBuilt();
                return dataExtra;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof DataExtra) {
                    return mergeFrom((DataExtra) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(DataExtra dataExtra) {
                if (dataExtra != DataExtra.getDefaultInstance()) {
                    if (dataExtra.hasEngineratio()) {
                        setEngineratio(dataExtra.getEngineratio());
                    }
                    mergeUnknownFields(dataExtra.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                DataExtra dataExtra;
                DataExtra dataExtra2;
                try {
                    DataExtra dataExtra3 = (DataExtra) DataExtra.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (dataExtra3 != null) {
                        mergeFrom(dataExtra3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    dataExtra2 = (DataExtra) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    dataExtra = dataExtra2;
                    th = th2;
                }
                if (dataExtra != null) {
                    mergeFrom(dataExtra);
                }
                throw th;
            }

            public boolean hasEngineratio() {
                return (this.bitField0_ & 1) == 1;
            }

            public float getEngineratio() {
                return this.engineratio_;
            }

            public Builder setEngineratio(float f) {
                this.bitField0_ |= 1;
                this.engineratio_ = f;
                onChanged();
                return this;
            }

            public Builder clearEngineratio() {
                this.bitField0_ &= -2;
                this.engineratio_ = 0.0f;
                onChanged();
                return this;
            }
        }

        private DataExtra(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private DataExtra(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static DataExtra getDefaultInstance() {
            return defaultInstance;
        }

        public DataExtra getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private DataExtra(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 13:
                            this.bitField0_ |= 1;
                            this.engineratio_ = codedInputStream.readFloat();
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
            return DataExtraProto.internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DataExtraProto.internal_static_com_mi_milinkforgame_sdk_proto_DataExtra_fieldAccessorTable.ensureFieldAccessorsInitialized(DataExtra.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<DataExtra> getParserForType() {
            return PARSER;
        }

        public boolean hasEngineratio() {
            return (this.bitField0_ & 1) == 1;
        }

        public float getEngineratio() {
            return this.engineratio_;
        }

        private void initFields() {
            this.engineratio_ = 0.0f;
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
                codedOutputStream.writeFloat(1, this.engineratio_);
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
                i2 = 0 + CodedOutputStream.computeFloatSize(1, this.engineratio_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static DataExtra parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (DataExtra) PARSER.parseFrom(byteString);
        }

        public static DataExtra parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DataExtra) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DataExtra parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (DataExtra) PARSER.parseFrom(bArr);
        }

        public static DataExtra parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DataExtra) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static DataExtra parseFrom(InputStream inputStream) throws IOException {
            return (DataExtra) PARSER.parseFrom(inputStream);
        }

        public static DataExtra parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DataExtra) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static DataExtra parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DataExtra) PARSER.parseDelimitedFrom(inputStream);
        }

        public static DataExtra parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DataExtra) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static DataExtra parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DataExtra) PARSER.parseFrom(codedInputStream);
        }

        public static DataExtra parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DataExtra) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(DataExtra dataExtra) {
            return newBuilder().mergeFrom(dataExtra);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface DataExtraOrBuilder extends MessageOrBuilder {
        float getEngineratio();

        boolean hasEngineratio();
    }

    private DataExtraProto() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0013mns_dataextra.proto\u0012\u001ecom.mi.milinkforgame.sdk.proto\" \n\tDataExtra\u0012\u0013\n\u000bengineratio\u0018\u0001 \u0001(\u0002B0\n\u001ecom.mi.milinkforgame.sdk.protoB\u000eDataExtraProto"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                DataExtraProto.descriptor = fileDescriptor;
                return null;
            }
        });
    }
}
