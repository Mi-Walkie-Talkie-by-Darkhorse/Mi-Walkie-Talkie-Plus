package com.ifengyu.intercom.protos;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class LiteProtos {
    private static final Descriptors.Descriptor A;
    private static GeneratedMessage.FieldAccessorTable B;
    private static final Descriptors.Descriptor C;
    private static GeneratedMessage.FieldAccessorTable D;
    private static final Descriptors.Descriptor E;
    private static GeneratedMessage.FieldAccessorTable F;
    private static Descriptors.FileDescriptor G;

    /* renamed from: a  reason: collision with root package name */
    private static final Descriptors.Descriptor f5973a;

    /* renamed from: b  reason: collision with root package name */
    private static GeneratedMessage.FieldAccessorTable f5974b;

    /* renamed from: c  reason: collision with root package name */
    private static final Descriptors.Descriptor f5975c;
    private static GeneratedMessage.FieldAccessorTable d;
    private static final Descriptors.Descriptor e;
    private static GeneratedMessage.FieldAccessorTable f;
    private static final Descriptors.Descriptor g;
    private static GeneratedMessage.FieldAccessorTable h;
    private static final Descriptors.Descriptor i;
    private static GeneratedMessage.FieldAccessorTable j;
    private static final Descriptors.Descriptor k;
    private static GeneratedMessage.FieldAccessorTable l;
    private static final Descriptors.Descriptor m;
    private static GeneratedMessage.FieldAccessorTable n;
    private static final Descriptors.Descriptor o;
    private static GeneratedMessage.FieldAccessorTable p;
    private static final Descriptors.Descriptor q;
    private static GeneratedMessage.FieldAccessorTable r;
    private static final Descriptors.Descriptor s;
    private static GeneratedMessage.FieldAccessorTable t;
    private static final Descriptors.Descriptor u;
    private static GeneratedMessage.FieldAccessorTable v;
    private static final Descriptors.Descriptor w;
    private static GeneratedMessage.FieldAccessorTable x;
    private static final Descriptors.Descriptor y;
    private static GeneratedMessage.FieldAccessorTable z;

    /* loaded from: classes2.dex */
    public enum APP_TYPE implements ProtocolMessageEnum {
        FY_APP(0, 0),
        MIJIA_APP(1, 1);
        
        public static final int FY_APP_VALUE = 0;
        public static final int MIJIA_APP_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<APP_TYPE> internalValueMap = new a();
        private static final APP_TYPE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<APP_TYPE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public APP_TYPE findValueByNumber(int i) {
                return APP_TYPE.valueOf(i);
            }
        }

        APP_TYPE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return LiteProtos.G().getEnumTypes().get(1);
        }

        public static Internal.EnumLiteMap<APP_TYPE> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(this.index);
        }

        public static APP_TYPE valueOf(int i) {
            if (i == 0) {
                return FY_APP;
            }
            if (i != 1) {
                return null;
            }
            return MIJIA_APP;
        }

        public static APP_TYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class BatchBrodCfgRequest extends GeneratedMessage implements BatchBrodCfgRequestOrBuilder {
        public static Parser<BatchBrodCfgRequest> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final BatchBrodCfgRequest defaultInstance;
        private int bitField0_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements BatchBrodCfgRequestOrBuilder {
            private int bitField0_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.u;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.u;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodCfgRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodCfgRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.v.ensureFieldAccessorsInitialized(BatchBrodCfgRequest.class, Builder.class);
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BatchBrodCfgRequest build() {
                BatchBrodCfgRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BatchBrodCfgRequest buildPartial() {
                BatchBrodCfgRequest batchBrodCfgRequest = new BatchBrodCfgRequest(this, null);
                int i = 1;
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                batchBrodCfgRequest.version_ = this.version_;
                batchBrodCfgRequest.bitField0_ = i;
                onBuilt();
                return batchBrodCfgRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public BatchBrodCfgRequest getDefaultInstanceForType() {
                return BatchBrodCfgRequest.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<BatchBrodCfgRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public BatchBrodCfgRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = BatchBrodCfgRequest.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            BatchBrodCfgRequest batchBrodCfgRequest = new BatchBrodCfgRequest(true);
            defaultInstance = batchBrodCfgRequest;
            batchBrodCfgRequest.initFields();
        }

        /* synthetic */ BatchBrodCfgRequest(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static BatchBrodCfgRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.u;
        }

        private void initFields() {
            this.version_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static BatchBrodCfgRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static BatchBrodCfgRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<BatchBrodCfgRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodCfgRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodCfgRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.v.ensureFieldAccessorsInitialized(BatchBrodCfgRequest.class, Builder.class);
        }

        private BatchBrodCfgRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(BatchBrodCfgRequest batchBrodCfgRequest) {
            return (Builder) newBuilder().mergeFrom((Message) batchBrodCfgRequest);
        }

        public static BatchBrodCfgRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static BatchBrodCfgRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static BatchBrodCfgRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public BatchBrodCfgRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private BatchBrodCfgRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static BatchBrodCfgRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static BatchBrodCfgRequest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static BatchBrodCfgRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static BatchBrodCfgRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static BatchBrodCfgRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface BatchBrodCfgRequestOrBuilder extends MessageOrBuilder {
        int getVersion();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class BatchBrodCfgResponse extends GeneratedMessage implements BatchBrodCfgResponseOrBuilder {
        public static Parser<BatchBrodCfgResponse> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final BatchBrodCfgResponse defaultInstance;
        private int bitField0_;
        private RESULT result_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements BatchBrodCfgResponseOrBuilder {
            private int bitField0_;
            private RESULT result_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.w;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = RESULT.FAIL;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.w;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodCfgResponseOrBuilder
            public RESULT getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodCfgResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodCfgResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodCfgResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.x.ensureFieldAccessorsInitialized(BatchBrodCfgResponse.class, Builder.class);
            }

            public Builder setResult(RESULT result) {
                if (result != null) {
                    this.bitField0_ |= 2;
                    this.result_ = result;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.result_ = RESULT.FAIL;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BatchBrodCfgResponse build() {
                BatchBrodCfgResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BatchBrodCfgResponse buildPartial() {
                BatchBrodCfgResponse batchBrodCfgResponse = new BatchBrodCfgResponse(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                batchBrodCfgResponse.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                batchBrodCfgResponse.result_ = this.result_;
                batchBrodCfgResponse.bitField0_ = i2;
                onBuilt();
                return batchBrodCfgResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public BatchBrodCfgResponse getDefaultInstanceForType() {
                return BatchBrodCfgResponse.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = RESULT.FAIL;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = RESULT.FAIL;
                this.bitField0_ = i & (-3);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<BatchBrodCfgResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public BatchBrodCfgResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = BatchBrodCfgResponse.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            BatchBrodCfgResponse batchBrodCfgResponse = new BatchBrodCfgResponse(true);
            defaultInstance = batchBrodCfgResponse;
            batchBrodCfgResponse.initFields();
        }

        /* synthetic */ BatchBrodCfgResponse(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static BatchBrodCfgResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.w;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = RESULT.FAIL;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static BatchBrodCfgResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static BatchBrodCfgResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<BatchBrodCfgResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodCfgResponseOrBuilder
        public RESULT getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodCfgResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodCfgResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodCfgResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.x.ensureFieldAccessorsInitialized(BatchBrodCfgResponse.class, Builder.class);
        }

        private BatchBrodCfgResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(BatchBrodCfgResponse batchBrodCfgResponse) {
            return (Builder) newBuilder().mergeFrom((Message) batchBrodCfgResponse);
        }

        public static BatchBrodCfgResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static BatchBrodCfgResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static BatchBrodCfgResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public BatchBrodCfgResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private BatchBrodCfgResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static BatchBrodCfgResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static BatchBrodCfgResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static BatchBrodCfgResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static BatchBrodCfgResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static BatchBrodCfgResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface BatchBrodCfgResponseOrBuilder extends MessageOrBuilder {
        RESULT getResult();

        int getVersion();

        boolean hasResult();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class BatchBrodFskResponse extends GeneratedMessage implements BatchBrodFskResponseOrBuilder {
        public static Parser<BatchBrodFskResponse> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final BatchBrodFskResponse defaultInstance;
        private int bitField0_;
        private SWITCH result_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements BatchBrodFskResponseOrBuilder {
            private int bitField0_;
            private SWITCH result_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.y;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SWITCH.OFF;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.y;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodFskResponseOrBuilder
            public SWITCH getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodFskResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodFskResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodFskResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.z.ensureFieldAccessorsInitialized(BatchBrodFskResponse.class, Builder.class);
            }

            public Builder setResult(SWITCH r2) {
                if (r2 != null) {
                    this.bitField0_ |= 2;
                    this.result_ = r2;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.result_ = SWITCH.OFF;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BatchBrodFskResponse build() {
                BatchBrodFskResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BatchBrodFskResponse buildPartial() {
                BatchBrodFskResponse batchBrodFskResponse = new BatchBrodFskResponse(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                batchBrodFskResponse.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                batchBrodFskResponse.result_ = this.result_;
                batchBrodFskResponse.bitField0_ = i2;
                onBuilt();
                return batchBrodFskResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public BatchBrodFskResponse getDefaultInstanceForType() {
                return BatchBrodFskResponse.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SWITCH.OFF;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = SWITCH.OFF;
                this.bitField0_ = i & (-3);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<BatchBrodFskResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public BatchBrodFskResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = BatchBrodFskResponse.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            BatchBrodFskResponse batchBrodFskResponse = new BatchBrodFskResponse(true);
            defaultInstance = batchBrodFskResponse;
            batchBrodFskResponse.initFields();
        }

        /* synthetic */ BatchBrodFskResponse(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static BatchBrodFskResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.y;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SWITCH.OFF;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static BatchBrodFskResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static BatchBrodFskResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<BatchBrodFskResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodFskResponseOrBuilder
        public SWITCH getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodFskResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodFskResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.BatchBrodFskResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.z.ensureFieldAccessorsInitialized(BatchBrodFskResponse.class, Builder.class);
        }

        private BatchBrodFskResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(BatchBrodFskResponse batchBrodFskResponse) {
            return (Builder) newBuilder().mergeFrom((Message) batchBrodFskResponse);
        }

        public static BatchBrodFskResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static BatchBrodFskResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static BatchBrodFskResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public BatchBrodFskResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private BatchBrodFskResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static BatchBrodFskResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static BatchBrodFskResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static BatchBrodFskResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static BatchBrodFskResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static BatchBrodFskResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface BatchBrodFskResponseOrBuilder extends MessageOrBuilder {
        SWITCH getResult();

        int getVersion();

        boolean hasResult();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public enum CONNECT_CODE implements ProtocolMessageEnum {
        ALLOW(0, 0),
        REFUSE(1, 1),
        WAIT(2, 2),
        LOWPOWER(3, 3),
        BUSY(4, 4);
        
        public static final int ALLOW_VALUE = 0;
        public static final int BUSY_VALUE = 4;
        public static final int LOWPOWER_VALUE = 3;
        public static final int REFUSE_VALUE = 1;
        public static final int WAIT_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<CONNECT_CODE> internalValueMap = new a();
        private static final CONNECT_CODE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<CONNECT_CODE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public CONNECT_CODE findValueByNumber(int i) {
                return CONNECT_CODE.valueOf(i);
            }
        }

        CONNECT_CODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return LiteProtos.G().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<CONNECT_CODE> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(this.index);
        }

        public static CONNECT_CODE valueOf(int i) {
            if (i == 0) {
                return ALLOW;
            }
            if (i == 1) {
                return REFUSE;
            }
            if (i == 2) {
                return WAIT;
            }
            if (i == 3) {
                return LOWPOWER;
            }
            if (i != 4) {
                return null;
            }
            return BUSY;
        }

        public static CONNECT_CODE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class ChannelInfo extends GeneratedMessage implements ChannelInfoOrBuilder {
        public static Parser<ChannelInfo> PARSER = new a();
        public static final int RXCSS_FIELD_NUMBER = 4;
        public static final int RXFREQ_FIELD_NUMBER = 2;
        public static final int SEQ_FIELD_NUMBER = 1;
        public static final int TXCSS_FIELD_NUMBER = 5;
        public static final int TXFREQ_FIELD_NUMBER = 3;
        private static final ChannelInfo defaultInstance;
        private int bitField0_;
        private int rxCss_;
        private int rxFreq_;
        private int seq_;
        private int txCss_;
        private int txFreq_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ChannelInfoOrBuilder {
            private int bitField0_;
            private int rxCss_;
            private int rxFreq_;
            private int seq_;
            private int txCss_;
            private int txFreq_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.o;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearRxCss() {
                this.bitField0_ &= -9;
                this.rxCss_ = 0;
                onChanged();
                return this;
            }

            public Builder clearRxFreq() {
                this.bitField0_ &= -3;
                this.rxFreq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSeq() {
                this.bitField0_ &= -2;
                this.seq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTxCss() {
                this.bitField0_ &= -17;
                this.txCss_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTxFreq() {
                this.bitField0_ &= -5;
                this.txFreq_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.o;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
            public int getRxCss() {
                return this.rxCss_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
            public int getRxFreq() {
                return this.rxFreq_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
            public int getSeq() {
                return this.seq_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
            public int getTxCss() {
                return this.txCss_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
            public int getTxFreq() {
                return this.txFreq_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
            public boolean hasRxCss() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
            public boolean hasRxFreq() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
            public boolean hasSeq() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
            public boolean hasTxCss() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
            public boolean hasTxFreq() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.p.ensureFieldAccessorsInitialized(ChannelInfo.class, Builder.class);
            }

            public Builder setRxCss(int i) {
                this.bitField0_ |= 8;
                this.rxCss_ = i;
                onChanged();
                return this;
            }

            public Builder setRxFreq(int i) {
                this.bitField0_ |= 2;
                this.rxFreq_ = i;
                onChanged();
                return this;
            }

            public Builder setSeq(int i) {
                this.bitField0_ |= 1;
                this.seq_ = i;
                onChanged();
                return this;
            }

            public Builder setTxCss(int i) {
                this.bitField0_ |= 16;
                this.txCss_ = i;
                onChanged();
                return this;
            }

            public Builder setTxFreq(int i) {
                this.bitField0_ |= 4;
                this.txFreq_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChannelInfo build() {
                ChannelInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChannelInfo buildPartial() {
                ChannelInfo channelInfo = new ChannelInfo(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                channelInfo.seq_ = this.seq_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                channelInfo.rxFreq_ = this.rxFreq_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                channelInfo.txFreq_ = this.txFreq_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                channelInfo.rxCss_ = this.rxCss_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                channelInfo.txCss_ = this.txCss_;
                channelInfo.bitField0_ = i2;
                onBuilt();
                return channelInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChannelInfo getDefaultInstanceForType() {
                return ChannelInfo.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.seq_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.rxFreq_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.txFreq_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.rxCss_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.txCss_ = 0;
                this.bitField0_ = i4 & (-17);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<ChannelInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public ChannelInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = ChannelInfo.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            ChannelInfo channelInfo = new ChannelInfo(true);
            defaultInstance = channelInfo;
            channelInfo.initFields();
        }

        /* synthetic */ ChannelInfo(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static ChannelInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.o;
        }

        private void initFields() {
            this.seq_ = 0;
            this.rxFreq_ = 0;
            this.txFreq_ = 0;
            this.rxCss_ = 0;
            this.txCss_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static ChannelInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ChannelInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChannelInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
        public int getRxCss() {
            return this.rxCss_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
        public int getRxFreq() {
            return this.rxFreq_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
        public int getSeq() {
            return this.seq_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
        public int getTxCss() {
            return this.txCss_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
        public int getTxFreq() {
            return this.txFreq_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
        public boolean hasRxCss() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
        public boolean hasRxFreq() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
        public boolean hasSeq() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
        public boolean hasTxCss() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoOrBuilder
        public boolean hasTxFreq() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.p.ensureFieldAccessorsInitialized(ChannelInfo.class, Builder.class);
        }

        private ChannelInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(ChannelInfo channelInfo) {
            return (Builder) newBuilder().mergeFrom((Message) channelInfo);
        }

        public static ChannelInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ChannelInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ChannelInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ChannelInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private ChannelInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ChannelInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static ChannelInfo parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ChannelInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ChannelInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ChannelInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ChannelInfoOrBuilder extends MessageOrBuilder {
        int getRxCss();

        int getRxFreq();

        int getSeq();

        int getTxCss();

        int getTxFreq();

        boolean hasRxCss();

        boolean hasRxFreq();

        boolean hasSeq();

        boolean hasTxCss();

        boolean hasTxFreq();
    }

    /* loaded from: classes2.dex */
    public static final class ChannelInfoRequest extends GeneratedMessage implements ChannelInfoRequestOrBuilder {
        public static final int CHANNELINFO_FIELD_NUMBER = 2;
        public static Parser<ChannelInfoRequest> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final ChannelInfoRequest defaultInstance;
        private int bitField0_;
        private ChannelInfo channelInfo_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ChannelInfoRequestOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> channelInfoBuilder_;
            private ChannelInfo channelInfo_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> getChannelInfoFieldBuilder() {
                if (this.channelInfoBuilder_ == null) {
                    this.channelInfoBuilder_ = new SingleFieldBuilder<>(getChannelInfo(), getParentForChildren(), isClean());
                    this.channelInfo_ = null;
                }
                return this.channelInfoBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.q;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getChannelInfoFieldBuilder();
                }
            }

            public Builder clearChannelInfo() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.channelInfo_ = ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoRequestOrBuilder
            public ChannelInfo getChannelInfo() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    return this.channelInfo_;
                }
                return singleFieldBuilder.getMessage();
            }

            public ChannelInfo.Builder getChannelInfoBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return getChannelInfoFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoRequestOrBuilder
            public ChannelInfoOrBuilder getChannelInfoOrBuilder() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.channelInfo_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.q;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoRequestOrBuilder
            public boolean hasChannelInfo() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.r.ensureFieldAccessorsInitialized(ChannelInfoRequest.class, Builder.class);
            }

            public Builder mergeChannelInfo(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 2 || this.channelInfo_ == ChannelInfo.getDefaultInstance()) {
                        this.channelInfo_ = channelInfo;
                    } else {
                        this.channelInfo_ = ((ChannelInfo.Builder) ChannelInfo.newBuilder(this.channelInfo_).mergeFrom((Message) channelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(channelInfo);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setChannelInfo(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(channelInfo);
                } else if (channelInfo != null) {
                    this.channelInfo_ = channelInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.channelInfo_ = ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChannelInfoRequest build() {
                ChannelInfoRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChannelInfoRequest buildPartial() {
                ChannelInfoRequest channelInfoRequest = new ChannelInfoRequest(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                channelInfoRequest.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    channelInfoRequest.channelInfo_ = this.channelInfo_;
                } else {
                    channelInfoRequest.channelInfo_ = singleFieldBuilder.build();
                }
                channelInfoRequest.bitField0_ = i2;
                onBuilt();
                return channelInfoRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChannelInfoRequest getDefaultInstanceForType() {
                return ChannelInfoRequest.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.channelInfo_ = ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                this.bitField0_ &= -2;
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.channelInfo_ = ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setChannelInfo(ChannelInfo.Builder builder) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.channelInfo_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                return this;
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<ChannelInfoRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public ChannelInfoRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = ChannelInfoRequest.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            ChannelInfoRequest channelInfoRequest = new ChannelInfoRequest(true);
            defaultInstance = channelInfoRequest;
            channelInfoRequest.initFields();
        }

        /* synthetic */ ChannelInfoRequest(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static ChannelInfoRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.q;
        }

        private void initFields() {
            this.version_ = 0;
            this.channelInfo_ = ChannelInfo.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static ChannelInfoRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ChannelInfoRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoRequestOrBuilder
        public ChannelInfo getChannelInfo() {
            return this.channelInfo_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoRequestOrBuilder
        public ChannelInfoOrBuilder getChannelInfoOrBuilder() {
            return this.channelInfo_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChannelInfoRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoRequestOrBuilder
        public boolean hasChannelInfo() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.r.ensureFieldAccessorsInitialized(ChannelInfoRequest.class, Builder.class);
        }

        private ChannelInfoRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(ChannelInfoRequest channelInfoRequest) {
            return (Builder) newBuilder().mergeFrom((Message) channelInfoRequest);
        }

        public static ChannelInfoRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ChannelInfoRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ChannelInfoRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ChannelInfoRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private ChannelInfoRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ChannelInfoRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static ChannelInfoRequest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ChannelInfoRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ChannelInfoRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ChannelInfoRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ChannelInfoRequestOrBuilder extends MessageOrBuilder {
        ChannelInfo getChannelInfo();

        ChannelInfoOrBuilder getChannelInfoOrBuilder();

        int getVersion();

        boolean hasChannelInfo();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class ChannelInfoResponse extends GeneratedMessage implements ChannelInfoResponseOrBuilder {
        public static final int CHANNELINFO_FIELD_NUMBER = 3;
        public static Parser<ChannelInfoResponse> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final ChannelInfoResponse defaultInstance;
        private int bitField0_;
        private ChannelInfo channelInfo_;
        private RESULT result_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ChannelInfoResponseOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> channelInfoBuilder_;
            private ChannelInfo channelInfo_;
            private RESULT result_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> getChannelInfoFieldBuilder() {
                if (this.channelInfoBuilder_ == null) {
                    this.channelInfoBuilder_ = new SingleFieldBuilder<>(getChannelInfo(), getParentForChildren(), isClean());
                    this.channelInfo_ = null;
                }
                return this.channelInfoBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.s;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getChannelInfoFieldBuilder();
                }
            }

            public Builder clearChannelInfo() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.channelInfo_ = ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = RESULT.FAIL;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
            public ChannelInfo getChannelInfo() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    return this.channelInfo_;
                }
                return singleFieldBuilder.getMessage();
            }

            public ChannelInfo.Builder getChannelInfoBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return getChannelInfoFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
            public ChannelInfoOrBuilder getChannelInfoOrBuilder() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.channelInfo_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.s;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
            public RESULT getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
            public boolean hasChannelInfo() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.t.ensureFieldAccessorsInitialized(ChannelInfoResponse.class, Builder.class);
            }

            public Builder mergeChannelInfo(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 4 || this.channelInfo_ == ChannelInfo.getDefaultInstance()) {
                        this.channelInfo_ = channelInfo;
                    } else {
                        this.channelInfo_ = ((ChannelInfo.Builder) ChannelInfo.newBuilder(this.channelInfo_).mergeFrom((Message) channelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(channelInfo);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setChannelInfo(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(channelInfo);
                } else if (channelInfo != null) {
                    this.channelInfo_ = channelInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setResult(RESULT result) {
                if (result != null) {
                    this.bitField0_ |= 2;
                    this.result_ = result;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.result_ = RESULT.FAIL;
                this.channelInfo_ = ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChannelInfoResponse build() {
                ChannelInfoResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChannelInfoResponse buildPartial() {
                ChannelInfoResponse channelInfoResponse = new ChannelInfoResponse(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                channelInfoResponse.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                channelInfoResponse.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    channelInfoResponse.channelInfo_ = this.channelInfo_;
                } else {
                    channelInfoResponse.channelInfo_ = singleFieldBuilder.build();
                }
                channelInfoResponse.bitField0_ = i2;
                onBuilt();
                return channelInfoResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChannelInfoResponse getDefaultInstanceForType() {
                return ChannelInfoResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = RESULT.FAIL;
                this.bitField0_ = i & (-3);
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.channelInfo_ = ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = RESULT.FAIL;
                this.channelInfo_ = ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setChannelInfo(ChannelInfo.Builder builder) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.channelInfo_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<ChannelInfoResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public ChannelInfoResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = ChannelInfoResponse.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            ChannelInfoResponse channelInfoResponse = new ChannelInfoResponse(true);
            defaultInstance = channelInfoResponse;
            channelInfoResponse.initFields();
        }

        /* synthetic */ ChannelInfoResponse(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static ChannelInfoResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.s;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = RESULT.FAIL;
            this.channelInfo_ = ChannelInfo.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static ChannelInfoResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ChannelInfoResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
        public ChannelInfo getChannelInfo() {
            return this.channelInfo_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
        public ChannelInfoOrBuilder getChannelInfoOrBuilder() {
            return this.channelInfo_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChannelInfoResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
        public RESULT getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
        public boolean hasChannelInfo() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ChannelInfoResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.t.ensureFieldAccessorsInitialized(ChannelInfoResponse.class, Builder.class);
        }

        private ChannelInfoResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(ChannelInfoResponse channelInfoResponse) {
            return (Builder) newBuilder().mergeFrom((Message) channelInfoResponse);
        }

        public static ChannelInfoResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ChannelInfoResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ChannelInfoResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ChannelInfoResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private ChannelInfoResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ChannelInfoResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static ChannelInfoResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ChannelInfoResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ChannelInfoResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ChannelInfoResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ChannelInfoResponseOrBuilder extends MessageOrBuilder {
        ChannelInfo getChannelInfo();

        ChannelInfoOrBuilder getChannelInfoOrBuilder();

        RESULT getResult();

        int getVersion();

        boolean hasChannelInfo();

        boolean hasResult();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class ConnectRequest extends GeneratedMessage implements ConnectRequestOrBuilder {
        public static final int APPTYPE_FIELD_NUMBER = 2;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static Parser<ConnectRequest> PARSER = new a();
        public static final int PUBLICKEY_FIELD_NUMBER = 5;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final ConnectRequest defaultInstance;
        private APP_TYPE appType_;
        private int bitField0_;
        private int deviceId_;
        private ByteString publicKey_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ConnectRequestOrBuilder {
            private APP_TYPE appType_;
            private int bitField0_;
            private int deviceId_;
            private ByteString publicKey_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.f5973a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearAppType() {
                this.bitField0_ &= -3;
                this.appType_ = APP_TYPE.FY_APP;
                onChanged();
                return this;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -5;
                this.deviceId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPublicKey() {
                this.bitField0_ &= -9;
                this.publicKey_ = ConnectRequest.getDefaultInstance().getPublicKey();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
            public APP_TYPE getAppType() {
                return this.appType_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.f5973a;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
            public int getDeviceId() {
                return this.deviceId_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
            public ByteString getPublicKey() {
                return this.publicKey_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
            public boolean hasAppType() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
            public boolean hasPublicKey() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.f5974b.ensureFieldAccessorsInitialized(ConnectRequest.class, Builder.class);
            }

            public Builder setAppType(APP_TYPE app_type) {
                if (app_type != null) {
                    this.bitField0_ |= 2;
                    this.appType_ = app_type;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setDeviceId(int i) {
                this.bitField0_ |= 4;
                this.deviceId_ = i;
                onChanged();
                return this;
            }

            public Builder setPublicKey(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 8;
                    this.publicKey_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.appType_ = APP_TYPE.FY_APP;
                this.publicKey_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ConnectRequest build() {
                ConnectRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ConnectRequest buildPartial() {
                ConnectRequest connectRequest = new ConnectRequest(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                connectRequest.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                connectRequest.appType_ = this.appType_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                connectRequest.deviceId_ = this.deviceId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                connectRequest.publicKey_ = this.publicKey_;
                connectRequest.bitField0_ = i2;
                onBuilt();
                return connectRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ConnectRequest getDefaultInstanceForType() {
                return ConnectRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.appType_ = APP_TYPE.FY_APP;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.deviceId_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.publicKey_ = ByteString.EMPTY;
                this.bitField0_ = i3 & (-9);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.appType_ = APP_TYPE.FY_APP;
                this.publicKey_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<ConnectRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public ConnectRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = ConnectRequest.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            ConnectRequest connectRequest = new ConnectRequest(true);
            defaultInstance = connectRequest;
            connectRequest.initFields();
        }

        /* synthetic */ ConnectRequest(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static ConnectRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.f5973a;
        }

        private void initFields() {
            this.version_ = 0;
            this.appType_ = APP_TYPE.FY_APP;
            this.deviceId_ = 0;
            this.publicKey_ = ByteString.EMPTY;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static ConnectRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ConnectRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
        public APP_TYPE getAppType() {
            return this.appType_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
        public int getDeviceId() {
            return this.deviceId_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ConnectRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
        public ByteString getPublicKey() {
            return this.publicKey_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
        public boolean hasAppType() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
        public boolean hasPublicKey() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.f5974b.ensureFieldAccessorsInitialized(ConnectRequest.class, Builder.class);
        }

        private ConnectRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(ConnectRequest connectRequest) {
            return (Builder) newBuilder().mergeFrom((Message) connectRequest);
        }

        public static ConnectRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ConnectRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ConnectRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ConnectRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private ConnectRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ConnectRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static ConnectRequest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ConnectRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ConnectRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ConnectRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ConnectRequestOrBuilder extends MessageOrBuilder {
        APP_TYPE getAppType();

        int getDeviceId();

        ByteString getPublicKey();

        int getVersion();

        boolean hasAppType();

        boolean hasDeviceId();

        boolean hasPublicKey();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class ConnectResponse extends GeneratedMessage implements ConnectResponseOrBuilder {
        public static final int CONNECTCODE_FIELD_NUMBER = 2;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static final int DEVICETYPE_FIELD_NUMBER = 4;
        public static final int MAC_FIELD_NUMBER = 5;
        public static Parser<ConnectResponse> PARSER = new a();
        public static final int PUBLICKEY_FIELD_NUMBER = 6;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final ConnectResponse defaultInstance;
        private int bitField0_;
        private CONNECT_CODE connectCode_;
        private int deviceId_;
        private int deviceType_;
        private ByteString mac_;
        private ByteString publicKey_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ConnectResponseOrBuilder {
            private int bitField0_;
            private CONNECT_CODE connectCode_;
            private int deviceId_;
            private int deviceType_;
            private ByteString mac_;
            private ByteString publicKey_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.f5975c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearConnectCode() {
                this.bitField0_ &= -3;
                this.connectCode_ = CONNECT_CODE.ALLOW;
                onChanged();
                return this;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -5;
                this.deviceId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDeviceType() {
                this.bitField0_ &= -9;
                this.deviceType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMac() {
                this.bitField0_ &= -17;
                this.mac_ = ConnectResponse.getDefaultInstance().getMac();
                onChanged();
                return this;
            }

            public Builder clearPublicKey() {
                this.bitField0_ &= -33;
                this.publicKey_ = ConnectResponse.getDefaultInstance().getPublicKey();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
            public CONNECT_CODE getConnectCode() {
                return this.connectCode_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.f5975c;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
            public int getDeviceId() {
                return this.deviceId_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
            public int getDeviceType() {
                return this.deviceType_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
            public ByteString getMac() {
                return this.mac_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
            public ByteString getPublicKey() {
                return this.publicKey_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
            public boolean hasConnectCode() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
            public boolean hasDeviceType() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
            public boolean hasMac() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
            public boolean hasPublicKey() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.d.ensureFieldAccessorsInitialized(ConnectResponse.class, Builder.class);
            }

            public Builder setConnectCode(CONNECT_CODE connect_code) {
                if (connect_code != null) {
                    this.bitField0_ |= 2;
                    this.connectCode_ = connect_code;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setDeviceId(int i) {
                this.bitField0_ |= 4;
                this.deviceId_ = i;
                onChanged();
                return this;
            }

            public Builder setDeviceType(int i) {
                this.bitField0_ |= 8;
                this.deviceType_ = i;
                onChanged();
                return this;
            }

            public Builder setMac(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 16;
                    this.mac_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setPublicKey(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 32;
                    this.publicKey_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.connectCode_ = CONNECT_CODE.ALLOW;
                ByteString byteString = ByteString.EMPTY;
                this.mac_ = byteString;
                this.publicKey_ = byteString;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ConnectResponse build() {
                ConnectResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ConnectResponse buildPartial() {
                ConnectResponse connectResponse = new ConnectResponse(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                connectResponse.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                connectResponse.connectCode_ = this.connectCode_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                connectResponse.deviceId_ = this.deviceId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                connectResponse.deviceType_ = this.deviceType_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                connectResponse.mac_ = this.mac_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                connectResponse.publicKey_ = this.publicKey_;
                connectResponse.bitField0_ = i2;
                onBuilt();
                return connectResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ConnectResponse getDefaultInstanceForType() {
                return ConnectResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.connectCode_ = CONNECT_CODE.ALLOW;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.deviceId_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.deviceType_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                ByteString byteString = ByteString.EMPTY;
                this.mac_ = byteString;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.publicKey_ = byteString;
                this.bitField0_ = i5 & (-33);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.connectCode_ = CONNECT_CODE.ALLOW;
                ByteString byteString = ByteString.EMPTY;
                this.mac_ = byteString;
                this.publicKey_ = byteString;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<ConnectResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public ConnectResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = ConnectResponse.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            ConnectResponse connectResponse = new ConnectResponse(true);
            defaultInstance = connectResponse;
            connectResponse.initFields();
        }

        /* synthetic */ ConnectResponse(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static ConnectResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.f5975c;
        }

        private void initFields() {
            this.version_ = 0;
            this.connectCode_ = CONNECT_CODE.ALLOW;
            this.deviceId_ = 0;
            this.deviceType_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.mac_ = byteString;
            this.publicKey_ = byteString;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static ConnectResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ConnectResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
        public CONNECT_CODE getConnectCode() {
            return this.connectCode_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
        public int getDeviceId() {
            return this.deviceId_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
        public int getDeviceType() {
            return this.deviceType_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
        public ByteString getMac() {
            return this.mac_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ConnectResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
        public ByteString getPublicKey() {
            return this.publicKey_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
        public boolean hasConnectCode() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
        public boolean hasDeviceType() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
        public boolean hasMac() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
        public boolean hasPublicKey() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.ConnectResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.d.ensureFieldAccessorsInitialized(ConnectResponse.class, Builder.class);
        }

        private ConnectResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(ConnectResponse connectResponse) {
            return (Builder) newBuilder().mergeFrom((Message) connectResponse);
        }

        public static ConnectResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ConnectResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ConnectResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ConnectResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private ConnectResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ConnectResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static ConnectResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ConnectResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ConnectResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ConnectResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ConnectResponseOrBuilder extends MessageOrBuilder {
        CONNECT_CODE getConnectCode();

        int getDeviceId();

        int getDeviceType();

        ByteString getMac();

        ByteString getPublicKey();

        int getVersion();

        boolean hasConnectCode();

        boolean hasDeviceId();

        boolean hasDeviceType();

        boolean hasMac();

        boolean hasPublicKey();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class DevInfo extends GeneratedMessage implements DevInfoOrBuilder {
        public static final int BAND_FIELD_NUMBER = 3;
        public static final int BOOTVOICE_FIELD_NUMBER = 6;
        public static final int DEVICECOLOR_FIELD_NUMBER = 12;
        public static final int DEVICEID_FIELD_NUMBER = 11;
        public static final int KEYVOICE_FIELD_NUMBER = 7;
        public static final int LANGTYPE_FIELD_NUMBER = 5;
        public static final int NAME_FIELD_NUMBER = 8;
        public static Parser<DevInfo> PARSER = new a();
        public static final int POLITE_FIELD_NUMBER = 4;
        public static final int SQ_FIELD_NUMBER = 1;
        public static final int VERHW_FIELD_NUMBER = 9;
        public static final int VERSOFT_FIELD_NUMBER = 10;
        public static final int VERVOICE_FIELD_NUMBER = 13;
        public static final int VOX_FIELD_NUMBER = 2;
        private static final DevInfo defaultInstance;
        private int band_;
        private int bitField0_;
        private SWITCH bootVoice_;
        private int deviceColor_;
        private int deviceId_;
        private SWITCH keyVoice_;
        private LANGUAGE_TYPE langType_;
        private ByteString name_;
        private SWITCH polite_;
        private int sq_;
        private final UnknownFieldSet unknownFields;
        private int verHw_;
        private int verSoft_;
        private int verVoice_;
        private SWITCH vox_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements DevInfoOrBuilder {
            private int band_;
            private int bitField0_;
            private SWITCH bootVoice_;
            private int deviceColor_;
            private int deviceId_;
            private SWITCH keyVoice_;
            private LANGUAGE_TYPE langType_;
            private ByteString name_;
            private SWITCH polite_;
            private int sq_;
            private int verHw_;
            private int verSoft_;
            private int verVoice_;
            private SWITCH vox_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.i;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearBand() {
                this.bitField0_ &= -5;
                this.band_ = 0;
                onChanged();
                return this;
            }

            public Builder clearBootVoice() {
                this.bitField0_ &= -33;
                this.bootVoice_ = SWITCH.OFF;
                onChanged();
                return this;
            }

            public Builder clearDeviceColor() {
                this.bitField0_ &= -2049;
                this.deviceColor_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -1025;
                this.deviceId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearKeyVoice() {
                this.bitField0_ &= -65;
                this.keyVoice_ = SWITCH.OFF;
                onChanged();
                return this;
            }

            public Builder clearLangType() {
                this.bitField0_ &= -17;
                this.langType_ = LANGUAGE_TYPE.CLOSE;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -129;
                this.name_ = DevInfo.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder clearPolite() {
                this.bitField0_ &= -9;
                this.polite_ = SWITCH.OFF;
                onChanged();
                return this;
            }

            public Builder clearSq() {
                this.bitField0_ &= -2;
                this.sq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVerHw() {
                this.bitField0_ &= -257;
                this.verHw_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVerSoft() {
                this.bitField0_ &= -513;
                this.verSoft_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVerVoice() {
                this.bitField0_ &= -4097;
                this.verVoice_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVox() {
                this.bitField0_ &= -3;
                this.vox_ = SWITCH.OFF;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public int getBand() {
                return this.band_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public SWITCH getBootVoice() {
                return this.bootVoice_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.i;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public int getDeviceColor() {
                return this.deviceColor_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public int getDeviceId() {
                return this.deviceId_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public SWITCH getKeyVoice() {
                return this.keyVoice_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public LANGUAGE_TYPE getLangType() {
                return this.langType_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public ByteString getName() {
                return this.name_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public SWITCH getPolite() {
                return this.polite_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public int getSq() {
                return this.sq_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public int getVerHw() {
                return this.verHw_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public int getVerSoft() {
                return this.verSoft_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public int getVerVoice() {
                return this.verVoice_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public SWITCH getVox() {
                return this.vox_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasBand() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasBootVoice() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasDeviceColor() {
                return (this.bitField0_ & 2048) == 2048;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasKeyVoice() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasLangType() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasName() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasPolite() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasSq() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasVerHw() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasVerSoft() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasVerVoice() {
                return (this.bitField0_ & 4096) == 4096;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
            public boolean hasVox() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.j.ensureFieldAccessorsInitialized(DevInfo.class, Builder.class);
            }

            public Builder setBand(int i) {
                this.bitField0_ |= 4;
                this.band_ = i;
                onChanged();
                return this;
            }

            public Builder setBootVoice(SWITCH r2) {
                if (r2 != null) {
                    this.bitField0_ |= 32;
                    this.bootVoice_ = r2;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setDeviceColor(int i) {
                this.bitField0_ |= 2048;
                this.deviceColor_ = i;
                onChanged();
                return this;
            }

            public Builder setDeviceId(int i) {
                this.bitField0_ |= 1024;
                this.deviceId_ = i;
                onChanged();
                return this;
            }

            public Builder setKeyVoice(SWITCH r2) {
                if (r2 != null) {
                    this.bitField0_ |= 64;
                    this.keyVoice_ = r2;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setLangType(LANGUAGE_TYPE language_type) {
                if (language_type != null) {
                    this.bitField0_ |= 16;
                    this.langType_ = language_type;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setName(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 128;
                    this.name_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setPolite(SWITCH r2) {
                if (r2 != null) {
                    this.bitField0_ |= 8;
                    this.polite_ = r2;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setSq(int i) {
                this.bitField0_ |= 1;
                this.sq_ = i;
                onChanged();
                return this;
            }

            public Builder setVerHw(int i) {
                this.bitField0_ |= 256;
                this.verHw_ = i;
                onChanged();
                return this;
            }

            public Builder setVerSoft(int i) {
                this.bitField0_ |= 512;
                this.verSoft_ = i;
                onChanged();
                return this;
            }

            public Builder setVerVoice(int i) {
                this.bitField0_ |= 4096;
                this.verVoice_ = i;
                onChanged();
                return this;
            }

            public Builder setVox(SWITCH r2) {
                if (r2 != null) {
                    this.bitField0_ |= 2;
                    this.vox_ = r2;
                    onChanged();
                    return this;
                }
                throw null;
            }

            private Builder() {
                SWITCH r0 = SWITCH.OFF;
                this.vox_ = r0;
                this.polite_ = r0;
                this.langType_ = LANGUAGE_TYPE.CLOSE;
                SWITCH r02 = SWITCH.OFF;
                this.bootVoice_ = r02;
                this.keyVoice_ = r02;
                this.name_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DevInfo build() {
                DevInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DevInfo buildPartial() {
                DevInfo devInfo = new DevInfo(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                devInfo.sq_ = this.sq_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                devInfo.vox_ = this.vox_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                devInfo.band_ = this.band_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                devInfo.polite_ = this.polite_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                devInfo.langType_ = this.langType_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                devInfo.bootVoice_ = this.bootVoice_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                devInfo.keyVoice_ = this.keyVoice_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                devInfo.name_ = this.name_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                devInfo.verHw_ = this.verHw_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                devInfo.verSoft_ = this.verSoft_;
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                devInfo.deviceId_ = this.deviceId_;
                if ((i & 2048) == 2048) {
                    i2 |= 2048;
                }
                devInfo.deviceColor_ = this.deviceColor_;
                if ((i & 4096) == 4096) {
                    i2 |= 4096;
                }
                devInfo.verVoice_ = this.verVoice_;
                devInfo.bitField0_ = i2;
                onBuilt();
                return devInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public DevInfo getDefaultInstanceForType() {
                return DevInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.sq_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                SWITCH r2 = SWITCH.OFF;
                this.vox_ = r2;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.band_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.polite_ = r2;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.langType_ = LANGUAGE_TYPE.CLOSE;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                SWITCH r22 = SWITCH.OFF;
                this.bootVoice_ = r22;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.keyVoice_ = r22;
                int i7 = i6 & (-65);
                this.bitField0_ = i7;
                this.name_ = ByteString.EMPTY;
                int i8 = i7 & (-129);
                this.bitField0_ = i8;
                this.verHw_ = 0;
                int i9 = i8 & (-257);
                this.bitField0_ = i9;
                this.verSoft_ = 0;
                int i10 = i9 & (-513);
                this.bitField0_ = i10;
                this.deviceId_ = 0;
                int i11 = i10 & (-1025);
                this.bitField0_ = i11;
                this.deviceColor_ = 0;
                int i12 = i11 & (-2049);
                this.bitField0_ = i12;
                this.verVoice_ = 0;
                this.bitField0_ = i12 & (-4097);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                SWITCH r1 = SWITCH.OFF;
                this.vox_ = r1;
                this.polite_ = r1;
                this.langType_ = LANGUAGE_TYPE.CLOSE;
                SWITCH r12 = SWITCH.OFF;
                this.bootVoice_ = r12;
                this.keyVoice_ = r12;
                this.name_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<DevInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public DevInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = DevInfo.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            DevInfo devInfo = new DevInfo(true);
            defaultInstance = devInfo;
            devInfo.initFields();
        }

        /* synthetic */ DevInfo(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static DevInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.i;
        }

        private void initFields() {
            this.sq_ = 0;
            SWITCH r1 = SWITCH.OFF;
            this.vox_ = r1;
            this.band_ = 0;
            this.polite_ = r1;
            this.langType_ = LANGUAGE_TYPE.CLOSE;
            SWITCH r12 = SWITCH.OFF;
            this.bootVoice_ = r12;
            this.keyVoice_ = r12;
            this.name_ = ByteString.EMPTY;
            this.verHw_ = 0;
            this.verSoft_ = 0;
            this.deviceId_ = 0;
            this.deviceColor_ = 0;
            this.verVoice_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static DevInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static DevInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public int getBand() {
            return this.band_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public SWITCH getBootVoice() {
            return this.bootVoice_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public int getDeviceColor() {
            return this.deviceColor_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public int getDeviceId() {
            return this.deviceId_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public SWITCH getKeyVoice() {
            return this.keyVoice_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public LANGUAGE_TYPE getLangType() {
            return this.langType_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public ByteString getName() {
            return this.name_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DevInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public SWITCH getPolite() {
            return this.polite_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public int getSq() {
            return this.sq_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public int getVerHw() {
            return this.verHw_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public int getVerSoft() {
            return this.verSoft_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public int getVerVoice() {
            return this.verVoice_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public SWITCH getVox() {
            return this.vox_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasBand() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasBootVoice() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasDeviceColor() {
            return (this.bitField0_ & 2048) == 2048;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasKeyVoice() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasLangType() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasName() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasPolite() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasSq() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasVerHw() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasVerSoft() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasVerVoice() {
            return (this.bitField0_ & 4096) == 4096;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevInfoOrBuilder
        public boolean hasVox() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.j.ensureFieldAccessorsInitialized(DevInfo.class, Builder.class);
        }

        private DevInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(DevInfo devInfo) {
            return (Builder) newBuilder().mergeFrom((Message) devInfo);
        }

        public static DevInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static DevInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DevInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DevInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private DevInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static DevInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static DevInfo parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static DevInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static DevInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static DevInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface DevInfoOrBuilder extends MessageOrBuilder {
        int getBand();

        SWITCH getBootVoice();

        int getDeviceColor();

        int getDeviceId();

        SWITCH getKeyVoice();

        LANGUAGE_TYPE getLangType();

        ByteString getName();

        SWITCH getPolite();

        int getSq();

        int getVerHw();

        int getVerSoft();

        int getVerVoice();

        SWITCH getVox();

        boolean hasBand();

        boolean hasBootVoice();

        boolean hasDeviceColor();

        boolean hasDeviceId();

        boolean hasKeyVoice();

        boolean hasLangType();

        boolean hasName();

        boolean hasPolite();

        boolean hasSq();

        boolean hasVerHw();

        boolean hasVerSoft();

        boolean hasVerVoice();

        boolean hasVox();
    }

    /* loaded from: classes2.dex */
    public static final class DevRequest extends GeneratedMessage implements DevRequestOrBuilder {
        public static final int DEVINFO_FIELD_NUMBER = 2;
        public static Parser<DevRequest> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final DevRequest defaultInstance;
        private int bitField0_;
        private DevInfo devInfo_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements DevRequestOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> devInfoBuilder_;
            private DevInfo devInfo_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.k;
            }

            private SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> getDevInfoFieldBuilder() {
                if (this.devInfoBuilder_ == null) {
                    this.devInfoBuilder_ = new SingleFieldBuilder<>(getDevInfo(), getParentForChildren(), isClean());
                    this.devInfo_ = null;
                }
                return this.devInfoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getDevInfoFieldBuilder();
                }
            }

            public Builder clearDevInfo() {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.devInfo_ = DevInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.k;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevRequestOrBuilder
            public DevInfo getDevInfo() {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    return this.devInfo_;
                }
                return singleFieldBuilder.getMessage();
            }

            public DevInfo.Builder getDevInfoBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return getDevInfoFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevRequestOrBuilder
            public DevInfoOrBuilder getDevInfoOrBuilder() {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.devInfo_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevRequestOrBuilder
            public boolean hasDevInfo() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.l.ensureFieldAccessorsInitialized(DevRequest.class, Builder.class);
            }

            public Builder mergeDevInfo(DevInfo devInfo) {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 2 || this.devInfo_ == DevInfo.getDefaultInstance()) {
                        this.devInfo_ = devInfo;
                    } else {
                        this.devInfo_ = ((DevInfo.Builder) DevInfo.newBuilder(this.devInfo_).mergeFrom((Message) devInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(devInfo);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setDevInfo(DevInfo devInfo) {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(devInfo);
                } else if (devInfo != null) {
                    this.devInfo_ = devInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.devInfo_ = DevInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DevRequest build() {
                DevRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DevRequest buildPartial() {
                DevRequest devRequest = new DevRequest(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                devRequest.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    devRequest.devInfo_ = this.devInfo_;
                } else {
                    devRequest.devInfo_ = singleFieldBuilder.build();
                }
                devRequest.bitField0_ = i2;
                onBuilt();
                return devRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public DevRequest getDefaultInstanceForType() {
                return DevRequest.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.devInfo_ = DevInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                this.bitField0_ &= -2;
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.devInfo_ = DevInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setDevInfo(DevInfo.Builder builder) {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.devInfo_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                return this;
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<DevRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public DevRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = DevRequest.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            DevRequest devRequest = new DevRequest(true);
            defaultInstance = devRequest;
            devRequest.initFields();
        }

        /* synthetic */ DevRequest(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static DevRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.k;
        }

        private void initFields() {
            this.version_ = 0;
            this.devInfo_ = DevInfo.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static DevRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static DevRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevRequestOrBuilder
        public DevInfo getDevInfo() {
            return this.devInfo_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevRequestOrBuilder
        public DevInfoOrBuilder getDevInfoOrBuilder() {
            return this.devInfo_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DevRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevRequestOrBuilder
        public boolean hasDevInfo() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.l.ensureFieldAccessorsInitialized(DevRequest.class, Builder.class);
        }

        private DevRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(DevRequest devRequest) {
            return (Builder) newBuilder().mergeFrom((Message) devRequest);
        }

        public static DevRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static DevRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DevRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DevRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private DevRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static DevRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static DevRequest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static DevRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static DevRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static DevRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface DevRequestOrBuilder extends MessageOrBuilder {
        DevInfo getDevInfo();

        DevInfoOrBuilder getDevInfoOrBuilder();

        int getVersion();

        boolean hasDevInfo();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class DevResponse extends GeneratedMessage implements DevResponseOrBuilder {
        public static final int DEVINFO_FIELD_NUMBER = 3;
        public static Parser<DevResponse> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final DevResponse defaultInstance;
        private int bitField0_;
        private DevInfo devInfo_;
        private RESULT result_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements DevResponseOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> devInfoBuilder_;
            private DevInfo devInfo_;
            private RESULT result_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.m;
            }

            private SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> getDevInfoFieldBuilder() {
                if (this.devInfoBuilder_ == null) {
                    this.devInfoBuilder_ = new SingleFieldBuilder<>(getDevInfo(), getParentForChildren(), isClean());
                    this.devInfo_ = null;
                }
                return this.devInfoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getDevInfoFieldBuilder();
                }
            }

            public Builder clearDevInfo() {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.devInfo_ = DevInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = RESULT.FAIL;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.m;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
            public DevInfo getDevInfo() {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    return this.devInfo_;
                }
                return singleFieldBuilder.getMessage();
            }

            public DevInfo.Builder getDevInfoBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return getDevInfoFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
            public DevInfoOrBuilder getDevInfoOrBuilder() {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.devInfo_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
            public RESULT getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
            public boolean hasDevInfo() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.n.ensureFieldAccessorsInitialized(DevResponse.class, Builder.class);
            }

            public Builder mergeDevInfo(DevInfo devInfo) {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 4 || this.devInfo_ == DevInfo.getDefaultInstance()) {
                        this.devInfo_ = devInfo;
                    } else {
                        this.devInfo_ = ((DevInfo.Builder) DevInfo.newBuilder(this.devInfo_).mergeFrom((Message) devInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(devInfo);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setDevInfo(DevInfo devInfo) {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(devInfo);
                } else if (devInfo != null) {
                    this.devInfo_ = devInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setResult(RESULT result) {
                if (result != null) {
                    this.bitField0_ |= 2;
                    this.result_ = result;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.result_ = RESULT.FAIL;
                this.devInfo_ = DevInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DevResponse build() {
                DevResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DevResponse buildPartial() {
                DevResponse devResponse = new DevResponse(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                devResponse.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                devResponse.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    devResponse.devInfo_ = this.devInfo_;
                } else {
                    devResponse.devInfo_ = singleFieldBuilder.build();
                }
                devResponse.bitField0_ = i2;
                onBuilt();
                return devResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public DevResponse getDefaultInstanceForType() {
                return DevResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = RESULT.FAIL;
                this.bitField0_ = i & (-3);
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.devInfo_ = DevInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = RESULT.FAIL;
                this.devInfo_ = DevInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setDevInfo(DevInfo.Builder builder) {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.devInfo_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<DevResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public DevResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = DevResponse.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            DevResponse devResponse = new DevResponse(true);
            defaultInstance = devResponse;
            devResponse.initFields();
        }

        /* synthetic */ DevResponse(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static DevResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.m;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = RESULT.FAIL;
            this.devInfo_ = DevInfo.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static DevResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static DevResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
        public DevInfo getDevInfo() {
            return this.devInfo_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
        public DevInfoOrBuilder getDevInfoOrBuilder() {
            return this.devInfo_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DevResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
        public RESULT getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
        public boolean hasDevInfo() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.DevResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.n.ensureFieldAccessorsInitialized(DevResponse.class, Builder.class);
        }

        private DevResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(DevResponse devResponse) {
            return (Builder) newBuilder().mergeFrom((Message) devResponse);
        }

        public static DevResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static DevResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DevResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DevResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private DevResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static DevResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static DevResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static DevResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static DevResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static DevResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface DevResponseOrBuilder extends MessageOrBuilder {
        DevInfo getDevInfo();

        DevInfoOrBuilder getDevInfoOrBuilder();

        RESULT getResult();

        int getVersion();

        boolean hasDevInfo();

        boolean hasResult();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public enum LANGUAGE_TYPE implements ProtocolMessageEnum {
        CLOSE(0, 0),
        CHINESE(1, 1),
        ENGLISH(2, 2);
        
        public static final int CHINESE_VALUE = 1;
        public static final int CLOSE_VALUE = 0;
        public static final int ENGLISH_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<LANGUAGE_TYPE> internalValueMap = new a();
        private static final LANGUAGE_TYPE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<LANGUAGE_TYPE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public LANGUAGE_TYPE findValueByNumber(int i) {
                return LANGUAGE_TYPE.valueOf(i);
            }
        }

        LANGUAGE_TYPE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return LiteProtos.G().getEnumTypes().get(2);
        }

        public static Internal.EnumLiteMap<LANGUAGE_TYPE> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(this.index);
        }

        public static LANGUAGE_TYPE valueOf(int i) {
            if (i == 0) {
                return CLOSE;
            }
            if (i == 1) {
                return CHINESE;
            }
            if (i != 2) {
                return null;
            }
            return ENGLISH;
        }

        public static LANGUAGE_TYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class LoginRequest extends GeneratedMessage implements LoginRequestOrBuilder {
        public static Parser<LoginRequest> PARSER = new a();
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final LoginRequest defaultInstance;
        private int bitField0_;
        private ByteString token_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements LoginRequestOrBuilder {
            private int bitField0_;
            private ByteString token_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.e;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearToken() {
                this.bitField0_ &= -3;
                this.token_ = LoginRequest.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.e;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginRequestOrBuilder
            public ByteString getToken() {
                return this.token_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginRequestOrBuilder
            public boolean hasToken() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.f.ensureFieldAccessorsInitialized(LoginRequest.class, Builder.class);
            }

            public Builder setToken(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 2;
                    this.token_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.token_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LoginRequest build() {
                LoginRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LoginRequest buildPartial() {
                LoginRequest loginRequest = new LoginRequest(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                loginRequest.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                loginRequest.token_ = this.token_;
                loginRequest.bitField0_ = i2;
                onBuilt();
                return loginRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LoginRequest getDefaultInstanceForType() {
                return LoginRequest.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.token_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.token_ = ByteString.EMPTY;
                this.bitField0_ = i & (-3);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<LoginRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public LoginRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = LoginRequest.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            LoginRequest loginRequest = new LoginRequest(true);
            defaultInstance = loginRequest;
            loginRequest.initFields();
        }

        /* synthetic */ LoginRequest(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static LoginRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.e;
        }

        private void initFields() {
            this.version_ = 0;
            this.token_ = ByteString.EMPTY;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static LoginRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static LoginRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<LoginRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginRequestOrBuilder
        public ByteString getToken() {
            return this.token_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginRequestOrBuilder
        public boolean hasToken() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.f.ensureFieldAccessorsInitialized(LoginRequest.class, Builder.class);
        }

        private LoginRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(LoginRequest loginRequest) {
            return (Builder) newBuilder().mergeFrom((Message) loginRequest);
        }

        public static LoginRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static LoginRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static LoginRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LoginRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private LoginRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static LoginRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static LoginRequest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static LoginRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static LoginRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static LoginRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface LoginRequestOrBuilder extends MessageOrBuilder {
        ByteString getToken();

        int getVersion();

        boolean hasToken();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class LoginResponse extends GeneratedMessage implements LoginResponseOrBuilder {
        public static final int CONNECTCODE_FIELD_NUMBER = 2;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static final int DEVICETYPE_FIELD_NUMBER = 4;
        public static final int IV_FIELD_NUMBER = 8;
        public static final int KEY_FIELD_NUMBER = 7;
        public static final int MAC_FIELD_NUMBER = 5;
        public static Parser<LoginResponse> PARSER = new a();
        public static final int TOKEN_FIELD_NUMBER = 6;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final LoginResponse defaultInstance;
        private int bitField0_;
        private CONNECT_CODE connectCode_;
        private int deviceId_;
        private int deviceType_;
        private ByteString iv_;
        private ByteString key_;
        private ByteString mac_;
        private ByteString token_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements LoginResponseOrBuilder {
            private int bitField0_;
            private CONNECT_CODE connectCode_;
            private int deviceId_;
            private int deviceType_;
            private ByteString iv_;
            private ByteString key_;
            private ByteString mac_;
            private ByteString token_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.g;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearConnectCode() {
                this.bitField0_ &= -3;
                this.connectCode_ = CONNECT_CODE.ALLOW;
                onChanged();
                return this;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -5;
                this.deviceId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDeviceType() {
                this.bitField0_ &= -9;
                this.deviceType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearIv() {
                this.bitField0_ &= -129;
                this.iv_ = LoginResponse.getDefaultInstance().getIv();
                onChanged();
                return this;
            }

            public Builder clearKey() {
                this.bitField0_ &= -65;
                this.key_ = LoginResponse.getDefaultInstance().getKey();
                onChanged();
                return this;
            }

            public Builder clearMac() {
                this.bitField0_ &= -17;
                this.mac_ = LoginResponse.getDefaultInstance().getMac();
                onChanged();
                return this;
            }

            public Builder clearToken() {
                this.bitField0_ &= -33;
                this.token_ = LoginResponse.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public CONNECT_CODE getConnectCode() {
                return this.connectCode_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.g;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public int getDeviceId() {
                return this.deviceId_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public int getDeviceType() {
                return this.deviceType_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public ByteString getIv() {
                return this.iv_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public ByteString getKey() {
                return this.key_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public ByteString getMac() {
                return this.mac_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public ByteString getToken() {
                return this.token_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public boolean hasConnectCode() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public boolean hasDeviceType() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public boolean hasIv() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public boolean hasKey() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public boolean hasMac() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public boolean hasToken() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.h.ensureFieldAccessorsInitialized(LoginResponse.class, Builder.class);
            }

            public Builder setConnectCode(CONNECT_CODE connect_code) {
                if (connect_code != null) {
                    this.bitField0_ |= 2;
                    this.connectCode_ = connect_code;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setDeviceId(int i) {
                this.bitField0_ |= 4;
                this.deviceId_ = i;
                onChanged();
                return this;
            }

            public Builder setDeviceType(int i) {
                this.bitField0_ |= 8;
                this.deviceType_ = i;
                onChanged();
                return this;
            }

            public Builder setIv(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 128;
                    this.iv_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setKey(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 64;
                    this.key_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setMac(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 16;
                    this.mac_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setToken(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 32;
                    this.token_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.connectCode_ = CONNECT_CODE.ALLOW;
                ByteString byteString = ByteString.EMPTY;
                this.mac_ = byteString;
                this.token_ = byteString;
                this.key_ = byteString;
                this.iv_ = byteString;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LoginResponse build() {
                LoginResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LoginResponse buildPartial() {
                LoginResponse loginResponse = new LoginResponse(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                loginResponse.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                loginResponse.connectCode_ = this.connectCode_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                loginResponse.deviceId_ = this.deviceId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                loginResponse.deviceType_ = this.deviceType_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                loginResponse.mac_ = this.mac_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                loginResponse.token_ = this.token_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                loginResponse.key_ = this.key_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                loginResponse.iv_ = this.iv_;
                loginResponse.bitField0_ = i2;
                onBuilt();
                return loginResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LoginResponse getDefaultInstanceForType() {
                return LoginResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.connectCode_ = CONNECT_CODE.ALLOW;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.deviceId_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.deviceType_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                ByteString byteString = ByteString.EMPTY;
                this.mac_ = byteString;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.token_ = byteString;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.key_ = byteString;
                int i7 = i6 & (-65);
                this.bitField0_ = i7;
                this.iv_ = byteString;
                this.bitField0_ = i7 & (-129);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.connectCode_ = CONNECT_CODE.ALLOW;
                ByteString byteString = ByteString.EMPTY;
                this.mac_ = byteString;
                this.token_ = byteString;
                this.key_ = byteString;
                this.iv_ = byteString;
                maybeForceBuilderInitialization();
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<LoginResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public LoginResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = LoginResponse.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            LoginResponse loginResponse = new LoginResponse(true);
            defaultInstance = loginResponse;
            loginResponse.initFields();
        }

        /* synthetic */ LoginResponse(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static LoginResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.g;
        }

        private void initFields() {
            this.version_ = 0;
            this.connectCode_ = CONNECT_CODE.ALLOW;
            this.deviceId_ = 0;
            this.deviceType_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.mac_ = byteString;
            this.token_ = byteString;
            this.key_ = byteString;
            this.iv_ = byteString;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static LoginResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static LoginResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public CONNECT_CODE getConnectCode() {
            return this.connectCode_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public int getDeviceId() {
            return this.deviceId_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public int getDeviceType() {
            return this.deviceType_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public ByteString getIv() {
            return this.iv_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public ByteString getKey() {
            return this.key_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public ByteString getMac() {
            return this.mac_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<LoginResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public ByteString getToken() {
            return this.token_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public boolean hasConnectCode() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public boolean hasDeviceType() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public boolean hasIv() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public boolean hasKey() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public boolean hasMac() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public boolean hasToken() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.LoginResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.h.ensureFieldAccessorsInitialized(LoginResponse.class, Builder.class);
        }

        private LoginResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(LoginResponse loginResponse) {
            return (Builder) newBuilder().mergeFrom((Message) loginResponse);
        }

        public static LoginResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static LoginResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static LoginResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LoginResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private LoginResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static LoginResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static LoginResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static LoginResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static LoginResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static LoginResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface LoginResponseOrBuilder extends MessageOrBuilder {
        CONNECT_CODE getConnectCode();

        int getDeviceId();

        int getDeviceType();

        ByteString getIv();

        ByteString getKey();

        ByteString getMac();

        ByteString getToken();

        int getVersion();

        boolean hasConnectCode();

        boolean hasDeviceId();

        boolean hasDeviceType();

        boolean hasIv();

        boolean hasKey();

        boolean hasMac();

        boolean hasToken();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class OtaPacket extends GeneratedMessage implements OtaPacketOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int OFFSET_FIELD_NUMBER = 1;
        public static Parser<OtaPacket> PARSER = new a();
        private static final OtaPacket defaultInstance;
        private int bitField0_;
        private ByteString data_;
        private int offset_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements OtaPacketOrBuilder {
            private int bitField0_;
            private ByteString data_;
            private int offset_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.E;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearData() {
                this.bitField0_ &= -3;
                this.data_ = OtaPacket.getDefaultInstance().getData();
                onChanged();
                return this;
            }

            public Builder clearOffset() {
                this.bitField0_ &= -2;
                this.offset_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaPacketOrBuilder
            public ByteString getData() {
                return this.data_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.E;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaPacketOrBuilder
            public int getOffset() {
                return this.offset_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaPacketOrBuilder
            public boolean hasData() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaPacketOrBuilder
            public boolean hasOffset() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.F.ensureFieldAccessorsInitialized(OtaPacket.class, Builder.class);
            }

            public Builder setData(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 2;
                    this.data_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setOffset(int i) {
                this.bitField0_ |= 1;
                this.offset_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public OtaPacket build() {
                OtaPacket buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public OtaPacket buildPartial() {
                OtaPacket otaPacket = new OtaPacket(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                otaPacket.offset_ = this.offset_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                otaPacket.data_ = this.data_;
                otaPacket.bitField0_ = i2;
                onBuilt();
                return otaPacket;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public OtaPacket getDefaultInstanceForType() {
                return OtaPacket.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.offset_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.data_ = ByteString.EMPTY;
                this.bitField0_ = i & (-3);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<OtaPacket> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public OtaPacket parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = OtaPacket.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            OtaPacket otaPacket = new OtaPacket(true);
            defaultInstance = otaPacket;
            otaPacket.initFields();
        }

        /* synthetic */ OtaPacket(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static OtaPacket getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.E;
        }

        private void initFields() {
            this.offset_ = 0;
            this.data_ = ByteString.EMPTY;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static OtaPacket parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static OtaPacket parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaPacketOrBuilder
        public ByteString getData() {
            return this.data_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaPacketOrBuilder
        public int getOffset() {
            return this.offset_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<OtaPacket> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaPacketOrBuilder
        public boolean hasData() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaPacketOrBuilder
        public boolean hasOffset() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.F.ensureFieldAccessorsInitialized(OtaPacket.class, Builder.class);
        }

        private OtaPacket(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(OtaPacket otaPacket) {
            return (Builder) newBuilder().mergeFrom((Message) otaPacket);
        }

        public static OtaPacket parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static OtaPacket parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static OtaPacket parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public OtaPacket getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private OtaPacket(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static OtaPacket parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static OtaPacket parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static OtaPacket parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static OtaPacket parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static OtaPacket parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface OtaPacketOrBuilder extends MessageOrBuilder {
        ByteString getData();

        int getOffset();

        boolean hasData();

        boolean hasOffset();
    }

    /* loaded from: classes2.dex */
    public static final class OtaRequest extends GeneratedMessage implements OtaRequestOrBuilder {
        public static final int FCMD_FIELD_NUMBER = 2;
        public static final int FCRC32_FIELD_NUMBER = 5;
        public static final int FSIZE_FIELD_NUMBER = 4;
        public static final int FTYPE_FIELD_NUMBER = 3;
        public static Parser<OtaRequest> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final OtaRequest defaultInstance;
        private int bitField0_;
        private FILE_CMD fCmd_;
        private int fCrc32_;
        private int fSize_;
        private FILE_TYPE fType_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements OtaRequestOrBuilder {
            private int bitField0_;
            private FILE_CMD fCmd_;
            private int fCrc32_;
            private int fSize_;
            private FILE_TYPE fType_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.A;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearFCmd() {
                this.bitField0_ &= -3;
                this.fCmd_ = FILE_CMD.START;
                onChanged();
                return this;
            }

            public Builder clearFCrc32() {
                this.bitField0_ &= -17;
                this.fCrc32_ = 0;
                onChanged();
                return this;
            }

            public Builder clearFSize() {
                this.bitField0_ &= -9;
                this.fSize_ = 0;
                onChanged();
                return this;
            }

            public Builder clearFType() {
                this.bitField0_ &= -5;
                this.fType_ = FILE_TYPE.APP_UPGRADE_FILE;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.A;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
            public FILE_CMD getFCmd() {
                return this.fCmd_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
            public int getFCrc32() {
                return this.fCrc32_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
            public int getFSize() {
                return this.fSize_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
            public FILE_TYPE getFType() {
                return this.fType_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
            public boolean hasFCmd() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
            public boolean hasFCrc32() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
            public boolean hasFSize() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
            public boolean hasFType() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.B.ensureFieldAccessorsInitialized(OtaRequest.class, Builder.class);
            }

            public Builder setFCmd(FILE_CMD file_cmd) {
                if (file_cmd != null) {
                    this.bitField0_ |= 2;
                    this.fCmd_ = file_cmd;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setFCrc32(int i) {
                this.bitField0_ |= 16;
                this.fCrc32_ = i;
                onChanged();
                return this;
            }

            public Builder setFSize(int i) {
                this.bitField0_ |= 8;
                this.fSize_ = i;
                onChanged();
                return this;
            }

            public Builder setFType(FILE_TYPE file_type) {
                if (file_type != null) {
                    this.bitField0_ |= 4;
                    this.fType_ = file_type;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.fCmd_ = FILE_CMD.START;
                this.fType_ = FILE_TYPE.APP_UPGRADE_FILE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public OtaRequest build() {
                OtaRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public OtaRequest buildPartial() {
                OtaRequest otaRequest = new OtaRequest(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                otaRequest.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                otaRequest.fCmd_ = this.fCmd_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                otaRequest.fType_ = this.fType_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                otaRequest.fSize_ = this.fSize_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                otaRequest.fCrc32_ = this.fCrc32_;
                otaRequest.bitField0_ = i2;
                onBuilt();
                return otaRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public OtaRequest getDefaultInstanceForType() {
                return OtaRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.fCmd_ = FILE_CMD.START;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.fType_ = FILE_TYPE.APP_UPGRADE_FILE;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.fSize_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.fCrc32_ = 0;
                this.bitField0_ = i4 & (-17);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.fCmd_ = FILE_CMD.START;
                this.fType_ = FILE_TYPE.APP_UPGRADE_FILE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        public enum FILE_CMD implements ProtocolMessageEnum {
            START(0, 1),
            COMPLETE(1, 2),
            REBOOT(2, 3);
            
            public static final int COMPLETE_VALUE = 2;
            public static final int REBOOT_VALUE = 3;
            public static final int START_VALUE = 1;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<FILE_CMD> internalValueMap = new a();
            private static final FILE_CMD[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<FILE_CMD> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public FILE_CMD findValueByNumber(int i) {
                    return FILE_CMD.valueOf(i);
                }
            }

            FILE_CMD(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return OtaRequest.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<FILE_CMD> internalGetValueMap() {
                return internalValueMap;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(this.index);
            }

            public static FILE_CMD valueOf(int i) {
                if (i == 1) {
                    return START;
                }
                if (i == 2) {
                    return COMPLETE;
                }
                if (i != 3) {
                    return null;
                }
                return REBOOT;
            }

            public static FILE_CMD valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum FILE_TYPE implements ProtocolMessageEnum {
            APP_UPGRADE_FILE(0, 1),
            MCU_UPLOAD_FILE(1, 2);
            
            public static final int APP_UPGRADE_FILE_VALUE = 1;
            public static final int MCU_UPLOAD_FILE_VALUE = 2;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<FILE_TYPE> internalValueMap = new a();
            private static final FILE_TYPE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<FILE_TYPE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public FILE_TYPE findValueByNumber(int i) {
                    return FILE_TYPE.valueOf(i);
                }
            }

            FILE_TYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return OtaRequest.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<FILE_TYPE> internalGetValueMap() {
                return internalValueMap;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(this.index);
            }

            public static FILE_TYPE valueOf(int i) {
                if (i == 1) {
                    return APP_UPGRADE_FILE;
                }
                if (i != 2) {
                    return null;
                }
                return MCU_UPLOAD_FILE;
            }

            public static FILE_TYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<OtaRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public OtaRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = OtaRequest.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            OtaRequest otaRequest = new OtaRequest(true);
            defaultInstance = otaRequest;
            otaRequest.initFields();
        }

        /* synthetic */ OtaRequest(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static OtaRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.A;
        }

        private void initFields() {
            this.version_ = 0;
            this.fCmd_ = FILE_CMD.START;
            this.fType_ = FILE_TYPE.APP_UPGRADE_FILE;
            this.fSize_ = 0;
            this.fCrc32_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static OtaRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static OtaRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
        public FILE_CMD getFCmd() {
            return this.fCmd_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
        public int getFCrc32() {
            return this.fCrc32_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
        public int getFSize() {
            return this.fSize_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
        public FILE_TYPE getFType() {
            return this.fType_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<OtaRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
        public boolean hasFCmd() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
        public boolean hasFCrc32() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
        public boolean hasFSize() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
        public boolean hasFType() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.B.ensureFieldAccessorsInitialized(OtaRequest.class, Builder.class);
        }

        private OtaRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(OtaRequest otaRequest) {
            return (Builder) newBuilder().mergeFrom((Message) otaRequest);
        }

        public static OtaRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static OtaRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static OtaRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public OtaRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private OtaRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static OtaRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static OtaRequest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static OtaRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static OtaRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static OtaRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface OtaRequestOrBuilder extends MessageOrBuilder {
        OtaRequest.FILE_CMD getFCmd();

        int getFCrc32();

        int getFSize();

        OtaRequest.FILE_TYPE getFType();

        int getVersion();

        boolean hasFCmd();

        boolean hasFCrc32();

        boolean hasFSize();

        boolean hasFType();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class OtaResponse extends GeneratedMessage implements OtaResponseOrBuilder {
        public static final int OFFSET_FIELD_NUMBER = 2;
        public static Parser<OtaResponse> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 1;
        private static final OtaResponse defaultInstance;
        private int bitField0_;
        private int offset_;
        private RESULT result_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements OtaResponseOrBuilder {
            private int bitField0_;
            private int offset_;
            private RESULT result_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return LiteProtos.C;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearOffset() {
                this.bitField0_ &= -3;
                this.offset_ = 0;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -2;
                this.result_ = RESULT.FAIL;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return LiteProtos.C;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaResponseOrBuilder
            public int getOffset() {
                return this.offset_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaResponseOrBuilder
            public RESULT getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaResponseOrBuilder
            public boolean hasOffset() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.LiteProtos.OtaResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return LiteProtos.D.ensureFieldAccessorsInitialized(OtaResponse.class, Builder.class);
            }

            public Builder setOffset(int i) {
                this.bitField0_ |= 2;
                this.offset_ = i;
                onChanged();
                return this;
            }

            public Builder setResult(RESULT result) {
                if (result != null) {
                    this.bitField0_ |= 1;
                    this.result_ = result;
                    onChanged();
                    return this;
                }
                throw null;
            }

            private Builder() {
                this.result_ = RESULT.FAIL;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public OtaResponse build() {
                OtaResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public OtaResponse buildPartial() {
                OtaResponse otaResponse = new OtaResponse(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                otaResponse.result_ = this.result_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                otaResponse.offset_ = this.offset_;
                otaResponse.bitField0_ = i2;
                onBuilt();
                return otaResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public OtaResponse getDefaultInstanceForType() {
                return OtaResponse.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = RESULT.FAIL;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.result_ = RESULT.FAIL;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.offset_ = 0;
                this.bitField0_ = i & (-3);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<OtaResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public OtaResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = OtaResponse.newBuilder();
                try {
                    newBuilder.mergeFrom(codedInputStream, extensionRegistryLite);
                    return newBuilder.buildPartial();
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(newBuilder.buildPartial());
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(newBuilder.buildPartial());
                }
            }
        }

        static {
            OtaResponse otaResponse = new OtaResponse(true);
            defaultInstance = otaResponse;
            otaResponse.initFields();
        }

        /* synthetic */ OtaResponse(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static OtaResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return LiteProtos.C;
        }

        private void initFields() {
            this.result_ = RESULT.FAIL;
            this.offset_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static OtaResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static OtaResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaResponseOrBuilder
        public int getOffset() {
            return this.offset_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<OtaResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaResponseOrBuilder
        public RESULT getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaResponseOrBuilder
        public boolean hasOffset() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.LiteProtos.OtaResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return LiteProtos.D.ensureFieldAccessorsInitialized(OtaResponse.class, Builder.class);
        }

        private OtaResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(OtaResponse otaResponse) {
            return (Builder) newBuilder().mergeFrom((Message) otaResponse);
        }

        public static OtaResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static OtaResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static OtaResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public OtaResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private OtaResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static OtaResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static OtaResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static OtaResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static OtaResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static OtaResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface OtaResponseOrBuilder extends MessageOrBuilder {
        int getOffset();

        RESULT getResult();

        boolean hasOffset();

        boolean hasResult();
    }

    /* loaded from: classes2.dex */
    public enum RESULT implements ProtocolMessageEnum {
        FAIL(0, 0),
        SUCCESS(1, 1),
        LOW_POWER(2, 2),
        FORBIDDEN(3, 3);
        
        public static final int FAIL_VALUE = 0;
        public static final int FORBIDDEN_VALUE = 3;
        public static final int LOW_POWER_VALUE = 2;
        public static final int SUCCESS_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<RESULT> internalValueMap = new a();
        private static final RESULT[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<RESULT> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public RESULT findValueByNumber(int i) {
                return RESULT.valueOf(i);
            }
        }

        RESULT(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return LiteProtos.G().getEnumTypes().get(4);
        }

        public static Internal.EnumLiteMap<RESULT> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(this.index);
        }

        public static RESULT valueOf(int i) {
            if (i == 0) {
                return FAIL;
            }
            if (i == 1) {
                return SUCCESS;
            }
            if (i == 2) {
                return LOW_POWER;
            }
            if (i != 3) {
                return null;
            }
            return FORBIDDEN;
        }

        public static RESULT valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum SWITCH implements ProtocolMessageEnum {
        OFF(0, 0),
        ON(1, 1);
        
        public static final int OFF_VALUE = 0;
        public static final int ON_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<SWITCH> internalValueMap = new a();
        private static final SWITCH[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<SWITCH> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public SWITCH findValueByNumber(int i) {
                return SWITCH.valueOf(i);
            }
        }

        SWITCH(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return LiteProtos.G().getEnumTypes().get(3);
        }

        public static Internal.EnumLiteMap<SWITCH> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return getDescriptor().getValues().get(this.index);
        }

        public static SWITCH valueOf(int i) {
            if (i == 0) {
                return OFF;
            }
            if (i != 1) {
                return null;
            }
            return ON;
        }

        public static SWITCH valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = LiteProtos.G = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\nlite.proto\u0012\u0006protos\"i\n\u000eConnectRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012!\n\u0007appType\u0018\u0002 \u0002(\u000e2\u0010.protos.APP_TYPE\u0012\u0010\n\bdeviceId\u0018\u0003 \u0001(\r\u0012\u0011\n\tpublicKey\u0018\u0005 \u0001(\f\"\u0093\u0001\n\u000fConnectResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012)\n\u000bconnectCode\u0018\u0002 \u0002(\u000e2\u0014.protos.CONNECT_CODE\u0012\u0010\n\bdeviceId\u0018\u0003 \u0002(\r\u0012\u0012\n\ndeviceType\u0018\u0004 \u0002(\r\u0012\u000b\n\u0003mac\u0018\u0005 \u0002(\f\u0012\u0011\n\tpublicKey\u0018\u0006 \u0001(\f\".\n\fLoginRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\r\n\u0005token\u0018\u0002 \u0001(\f\"¦\u0001\n\rLoginResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012)\n\u000bconnectCode\u0018\u0002 \u0002(\u000e2\u0014.protos.CONNECT_C", "ODE\u0012\u0010\n\bdeviceId\u0018\u0003 \u0001(\r\u0012\u0012\n\ndeviceType\u0018\u0004 \u0001(\r\u0012\u000b\n\u0003mac\u0018\u0005 \u0001(\f\u0012\r\n\u0005token\u0018\u0006 \u0001(\f\u0012\u000b\n\u0003key\u0018\u0007 \u0001(\f\u0012\n\n\u0002iv\u0018\b \u0001(\f\"µ\u0002\n\u0007DevInfo\u0012\n\n\u0002sq\u0018\u0001 \u0001(\r\u0012\u001b\n\u0003vox\u0018\u0002 \u0001(\u000e2\u000e.protos.SWITCH\u0012\f\n\u0004band\u0018\u0003 \u0001(\r\u0012\u001e\n\u0006polite\u0018\u0004 \u0001(\u000e2\u000e.protos.SWITCH\u0012'\n\blangType\u0018\u0005 \u0001(\u000e2\u0015.protos.LANGUAGE_TYPE\u0012!\n\tbootVoice\u0018\u0006 \u0001(\u000e2\u000e.protos.SWITCH\u0012 \n\bkeyVoice\u0018\u0007 \u0001(\u000e2\u000e.protos.SWITCH\u0012\f\n\u0004name\u0018\b \u0001(\f\u0012\r\n\u0005verHw\u0018\t \u0001(\r\u0012\u000f\n\u0007verSoft\u0018\n \u0001(\r\u0012\u0010\n\bdeviceId\u0018\u000b \u0001(\r\u0012\u0013\n\u000bdeviceColor\u0018\f \u0001(\r\u0012\u0010\n\bverVoice", "\u0018\r \u0001(\r\"?\n\nDevRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012 \n\u0007devInfo\u0018\u0002 \u0001(\u000b2\u000f.protos.DevInfo\"`\n\u000bDevResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001e\n\u0006result\u0018\u0002 \u0002(\u000e2\u000e.protos.RESULT\u0012 \n\u0007devInfo\u0018\u0003 \u0001(\u000b2\u000f.protos.DevInfo\"X\n\u000bChannelInfo\u0012\u000b\n\u0003seq\u0018\u0001 \u0002(\r\u0012\u000e\n\u0006rxFreq\u0018\u0002 \u0002(\r\u0012\u000e\n\u0006txFreq\u0018\u0003 \u0002(\r\u0012\r\n\u0005rxCss\u0018\u0004 \u0002(\r\u0012\r\n\u0005txCss\u0018\u0005 \u0002(\r\"O\n\u0012ChannelInfoRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012(\n\u000bchannelInfo\u0018\u0002 \u0001(\u000b2\u0013.protos.ChannelInfo\"p\n\u0013ChannelInfoResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001e\n\u0006result\u0018\u0002 \u0002(\u000e2\u000e.p", "rotos.RESULT\u0012(\n\u000bchannelInfo\u0018\u0003 \u0001(\u000b2\u0013.protos.ChannelInfo\"&\n\u0013BatchBrodCfgRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\"G\n\u0014BatchBrodCfgResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001e\n\u0006result\u0018\u0002 \u0002(\u000e2\u000e.protos.RESULT\"G\n\u0014BatchBrodFskResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001e\n\u0006result\u0018\u0002 \u0002(\u000e2\u000e.protos.SWITCH\"ý\u0001\n\nOtaRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012)\n\u0004fCmd\u0018\u0002 \u0002(\u000e2\u001b.protos.OtaRequest.FILE_CMD\u0012+\n\u0005fType\u0018\u0003 \u0002(\u000e2\u001c.protos.OtaRequest.FILE_TYPE\u0012\r\n\u0005fSize\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006fCrc32\u0018\u0005 \u0001(\r\"/\n\bFILE_", "CMD\u0012\t\n\u0005START\u0010\u0001\u0012\f\n\bCOMPLETE\u0010\u0002\u0012\n\n\u0006REBOOT\u0010\u0003\"6\n\tFILE_TYPE\u0012\u0014\n\u0010APP_UPGRADE_FILE\u0010\u0001\u0012\u0013\n\u000fMCU_UPLOAD_FILE\u0010\u0002\"=\n\u000bOtaResponse\u0012\u001e\n\u0006result\u0018\u0001 \u0002(\u000e2\u000e.protos.RESULT\u0012\u000e\n\u0006offset\u0018\u0002 \u0001(\r\")\n\tOtaPacket\u0012\u000e\n\u0006offset\u0018\u0001 \u0002(\r\u0012\f\n\u0004data\u0018\u0002 \u0002(\f*G\n\fCONNECT_CODE\u0012\t\n\u0005ALLOW\u0010\u0000\u0012\n\n\u0006REFUSE\u0010\u0001\u0012\b\n\u0004WAIT\u0010\u0002\u0012\f\n\bLOWPOWER\u0010\u0003\u0012\b\n\u0004BUSY\u0010\u0004*%\n\bAPP_TYPE\u0012\n\n\u0006FY_APP\u0010\u0000\u0012\r\n\tMIJIA_APP\u0010\u0001*4\n\rLANGUAGE_TYPE\u0012\t\n\u0005CLOSE\u0010\u0000\u0012\u000b\n\u0007CHINESE\u0010\u0001\u0012\u000b\n\u0007ENGLISH\u0010\u0002*\u0019\n\u0006SWITCH\u0012\u0007\n\u0003OFF\u0010\u0000\u0012\u0006\n\u0002ON\u0010\u0001*=\n\u0006R", "ESULT\u0012\b\n\u0004FAIL\u0010\u0000\u0012\u000b\n\u0007SUCCESS\u0010\u0001\u0012\r\n\tLOW_POWER\u0010\u0002\u0012\r\n\tFORBIDDEN\u0010\u0003B+\n\u001bcom.ifengyu.intercom.protosB\nLiteProtosH\u0002"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = G().getMessageTypes().get(0);
        f5973a = descriptor;
        f5974b = new GeneratedMessage.FieldAccessorTable(descriptor, new String[]{"Version", "AppType", "DeviceId", "PublicKey"});
        Descriptors.Descriptor descriptor2 = G().getMessageTypes().get(1);
        f5975c = descriptor2;
        d = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Version", "ConnectCode", "DeviceId", "DeviceType", "Mac", "PublicKey"});
        Descriptors.Descriptor descriptor3 = G().getMessageTypes().get(2);
        e = descriptor3;
        f = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Version", "Token"});
        Descriptors.Descriptor descriptor4 = G().getMessageTypes().get(3);
        g = descriptor4;
        h = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Version", "ConnectCode", "DeviceId", "DeviceType", "Mac", "Token", "Key", "Iv"});
        Descriptors.Descriptor descriptor5 = G().getMessageTypes().get(4);
        i = descriptor5;
        j = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Sq", "Vox", "Band", "Polite", "LangType", "BootVoice", "KeyVoice", "Name", "VerHw", "VerSoft", "DeviceId", "DeviceColor", "VerVoice"});
        Descriptors.Descriptor descriptor6 = G().getMessageTypes().get(5);
        k = descriptor6;
        l = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Version", "DevInfo"});
        Descriptors.Descriptor descriptor7 = G().getMessageTypes().get(6);
        m = descriptor7;
        n = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Version", "Result", "DevInfo"});
        Descriptors.Descriptor descriptor8 = G().getMessageTypes().get(7);
        o = descriptor8;
        p = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Seq", "RxFreq", "TxFreq", "RxCss", "TxCss"});
        Descriptors.Descriptor descriptor9 = G().getMessageTypes().get(8);
        q = descriptor9;
        r = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Version", "ChannelInfo"});
        Descriptors.Descriptor descriptor10 = G().getMessageTypes().get(9);
        s = descriptor10;
        t = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Version", "Result", "ChannelInfo"});
        Descriptors.Descriptor descriptor11 = G().getMessageTypes().get(10);
        u = descriptor11;
        v = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Version"});
        Descriptors.Descriptor descriptor12 = G().getMessageTypes().get(11);
        w = descriptor12;
        x = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Version", "Result"});
        Descriptors.Descriptor descriptor13 = G().getMessageTypes().get(12);
        y = descriptor13;
        z = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"Version", "Result"});
        Descriptors.Descriptor descriptor14 = G().getMessageTypes().get(13);
        A = descriptor14;
        B = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Version", "FCmd", "FType", "FSize", "FCrc32"});
        Descriptors.Descriptor descriptor15 = G().getMessageTypes().get(14);
        C = descriptor15;
        D = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"Result", "Offset"});
        Descriptors.Descriptor descriptor16 = G().getMessageTypes().get(15);
        E = descriptor16;
        F = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Offset", "Data"});
    }

    public static Descriptors.FileDescriptor G() {
        return G;
    }
}
