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
public final class SealProtos {
    private static final Descriptors.Descriptor A;
    private static GeneratedMessage.FieldAccessorTable B;
    private static Descriptors.FileDescriptor C;

    /* renamed from: a  reason: collision with root package name */
    private static final Descriptors.Descriptor f5979a;

    /* renamed from: b  reason: collision with root package name */
    private static GeneratedMessage.FieldAccessorTable f5980b;

    /* renamed from: c  reason: collision with root package name */
    private static final Descriptors.Descriptor f5981c;
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
    public static final class SEAL_BtEarConnectState extends GeneratedMessage implements SEAL_BtEarConnectStateOrBuilder {
        public static final int BTEAR_FIELD_NUMBER = 4;
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<SEAL_BtEarConnectState> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_BtEarConnectState defaultInstance;
        private int bitField0_;
        private SEAL_BtEarInfo btEar_;
        private SEAL_BTEAR_OPTION option_;
        private SEAL_BTEAR_CONN_RESULT result_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_BtEarConnectStateOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> btEarBuilder_;
            private SEAL_BtEarInfo btEar_;
            private SEAL_BTEAR_OPTION option_;
            private SEAL_BTEAR_CONN_RESULT result_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> getBtEarFieldBuilder() {
                if (this.btEarBuilder_ == null) {
                    this.btEarBuilder_ = new SingleFieldBuilder<>(getBtEar(), getParentForChildren(), isClean());
                    this.btEar_ = null;
                }
                return this.btEarBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.u;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getBtEarFieldBuilder();
                }
            }

            public Builder clearBtEar() {
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder == null) {
                    this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
            public SEAL_BtEarInfo getBtEar() {
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder == null) {
                    return this.btEar_;
                }
                return singleFieldBuilder.getMessage();
            }

            public SEAL_BtEarInfo.Builder getBtEarBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return getBtEarFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
            public SEAL_BtEarInfoOrBuilder getBtEarOrBuilder() {
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.btEar_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SealProtos.u;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
            public SEAL_BTEAR_OPTION getOption() {
                return this.option_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
            public SEAL_BTEAR_CONN_RESULT getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
            public boolean hasBtEar() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.v.ensureFieldAccessorsInitialized(SEAL_BtEarConnectState.class, Builder.class);
            }

            public Builder mergeBtEar(SEAL_BtEarInfo sEAL_BtEarInfo) {
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 8 || this.btEar_ == SEAL_BtEarInfo.getDefaultInstance()) {
                        this.btEar_ = sEAL_BtEarInfo;
                    } else {
                        this.btEar_ = ((SEAL_BtEarInfo.Builder) SEAL_BtEarInfo.newBuilder(this.btEar_).mergeFrom((Message) sEAL_BtEarInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(sEAL_BtEarInfo);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setBtEar(SEAL_BtEarInfo sEAL_BtEarInfo) {
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(sEAL_BtEarInfo);
                } else if (sEAL_BtEarInfo != null) {
                    this.btEar_ = sEAL_BtEarInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setOption(SEAL_BTEAR_OPTION seal_btear_option) {
                if (seal_btear_option != null) {
                    this.bitField0_ |= 4;
                    this.option_ = seal_btear_option;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setResult(SEAL_BTEAR_CONN_RESULT seal_btear_conn_result) {
                if (seal_btear_conn_result != null) {
                    this.bitField0_ |= 2;
                    this.result_ = seal_btear_conn_result;
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
                this.result_ = SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK;
                this.option_ = SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY;
                this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_BtEarConnectState build() {
                SEAL_BtEarConnectState buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_BtEarConnectState buildPartial() {
                SEAL_BtEarConnectState sEAL_BtEarConnectState = new SEAL_BtEarConnectState(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_BtEarConnectState.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_BtEarConnectState.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_BtEarConnectState.option_ = this.option_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder == null) {
                    sEAL_BtEarConnectState.btEar_ = this.btEar_;
                } else {
                    sEAL_BtEarConnectState.btEar_ = singleFieldBuilder.build();
                }
                sEAL_BtEarConnectState.bitField0_ = i2;
                onBuilt();
                return sEAL_BtEarConnectState;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_BtEarConnectState getDefaultInstanceForType() {
                return SEAL_BtEarConnectState.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.option_ = SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY;
                this.bitField0_ = i2 & (-5);
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder == null) {
                    this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK;
                this.option_ = SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY;
                this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setBtEar(SEAL_BtEarInfo.Builder builder) {
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder == null) {
                    this.btEar_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                return this;
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_BTEAR_CONN_RESULT implements ProtocolMessageEnum {
            SEAL_BTEAR_CONN_OK(0, 0),
            SEAL_BTEAR_CONN_ERROR(1, 1),
            SEAL_BTEAR_CONN_TIMEOUT(2, 2);
            
            public static final int SEAL_BTEAR_CONN_ERROR_VALUE = 1;
            public static final int SEAL_BTEAR_CONN_OK_VALUE = 0;
            public static final int SEAL_BTEAR_CONN_TIMEOUT_VALUE = 2;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_BTEAR_CONN_RESULT> internalValueMap = new a();
            private static final SEAL_BTEAR_CONN_RESULT[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_BTEAR_CONN_RESULT> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_BTEAR_CONN_RESULT findValueByNumber(int i) {
                    return SEAL_BTEAR_CONN_RESULT.valueOf(i);
                }
            }

            SEAL_BTEAR_CONN_RESULT(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_BtEarConnectState.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SEAL_BTEAR_CONN_RESULT> internalGetValueMap() {
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

            public static SEAL_BTEAR_CONN_RESULT valueOf(int i) {
                if (i == 0) {
                    return SEAL_BTEAR_CONN_OK;
                }
                if (i == 1) {
                    return SEAL_BTEAR_CONN_ERROR;
                }
                if (i != 2) {
                    return null;
                }
                return SEAL_BTEAR_CONN_TIMEOUT;
            }

            public static SEAL_BTEAR_CONN_RESULT valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_BTEAR_OPTION implements ProtocolMessageEnum {
            SEAL_BTEAR_QUERY(0, 0),
            SEAL_BTEAR_CONNECT(1, 1),
            SEAL_BTEAR_DISCONNECT(2, 2);
            
            public static final int SEAL_BTEAR_CONNECT_VALUE = 1;
            public static final int SEAL_BTEAR_DISCONNECT_VALUE = 2;
            public static final int SEAL_BTEAR_QUERY_VALUE = 0;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_BTEAR_OPTION> internalValueMap = new a();
            private static final SEAL_BTEAR_OPTION[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_BTEAR_OPTION> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_BTEAR_OPTION findValueByNumber(int i) {
                    return SEAL_BTEAR_OPTION.valueOf(i);
                }
            }

            SEAL_BTEAR_OPTION(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_BtEarConnectState.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<SEAL_BTEAR_OPTION> internalGetValueMap() {
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

            public static SEAL_BTEAR_OPTION valueOf(int i) {
                if (i == 0) {
                    return SEAL_BTEAR_QUERY;
                }
                if (i == 1) {
                    return SEAL_BTEAR_CONNECT;
                }
                if (i != 2) {
                    return null;
                }
                return SEAL_BTEAR_DISCONNECT;
            }

            public static SEAL_BTEAR_OPTION valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_BtEarConnectState> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_BtEarConnectState parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_BtEarConnectState.newBuilder();
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
            SEAL_BtEarConnectState sEAL_BtEarConnectState = new SEAL_BtEarConnectState(true);
            defaultInstance = sEAL_BtEarConnectState;
            sEAL_BtEarConnectState.initFields();
        }

        /* synthetic */ SEAL_BtEarConnectState(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_BtEarConnectState getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.u;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK;
            this.option_ = SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY;
            this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_BtEarConnectState parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_BtEarConnectState parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
        public SEAL_BtEarInfo getBtEar() {
            return this.btEar_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
        public SEAL_BtEarInfoOrBuilder getBtEarOrBuilder() {
            return this.btEar_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
        public SEAL_BTEAR_OPTION getOption() {
            return this.option_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_BtEarConnectState> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
        public SEAL_BTEAR_CONN_RESULT getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
        public boolean hasBtEar() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectStateOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.v.ensureFieldAccessorsInitialized(SEAL_BtEarConnectState.class, Builder.class);
        }

        private SEAL_BtEarConnectState(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_BtEarConnectState sEAL_BtEarConnectState) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_BtEarConnectState);
        }

        public static SEAL_BtEarConnectState parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarConnectState parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_BtEarConnectState parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_BtEarConnectState getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_BtEarConnectState(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_BtEarConnectState parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_BtEarConnectState parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_BtEarConnectState parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarConnectState parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_BtEarConnectState parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_BtEarConnectStateOrBuilder extends MessageOrBuilder {
        SEAL_BtEarInfo getBtEar();

        SEAL_BtEarInfoOrBuilder getBtEarOrBuilder();

        SEAL_BtEarConnectState.SEAL_BTEAR_OPTION getOption();

        SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT getResult();

        int getVersion();

        boolean hasBtEar();

        boolean hasOption();

        boolean hasResult();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_BtEarInfo extends GeneratedMessage implements SEAL_BtEarInfoOrBuilder {
        public static final int MAC_FIELD_NUMBER = 1;
        public static final int NAME_FIELD_NUMBER = 2;
        public static Parser<SEAL_BtEarInfo> PARSER = new a();
        public static final int RSSI_FIELD_NUMBER = 3;
        public static final int TYPE_FIELD_NUMBER = 4;
        private static final SEAL_BtEarInfo defaultInstance;
        private int bitField0_;
        private ByteString mac_;
        private ByteString name_;
        private int rssi_;
        private SEAL_BTEARTYPE type_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_BtEarInfoOrBuilder {
            private int bitField0_;
            private ByteString mac_;
            private ByteString name_;
            private int rssi_;
            private SEAL_BTEARTYPE type_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.s;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearMac() {
                this.bitField0_ &= -2;
                this.mac_ = SEAL_BtEarInfo.getDefaultInstance().getMac();
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -3;
                this.name_ = SEAL_BtEarInfo.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder clearRssi() {
                this.bitField0_ &= -5;
                this.rssi_ = 0;
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.bitField0_ &= -9;
                this.type_ = SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SealProtos.s;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
            public ByteString getMac() {
                return this.mac_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
            public ByteString getName() {
                return this.name_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
            public int getRssi() {
                return this.rssi_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
            public SEAL_BTEARTYPE getType() {
                return this.type_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
            public boolean hasMac() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
            public boolean hasName() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
            public boolean hasRssi() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
            public boolean hasType() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.t.ensureFieldAccessorsInitialized(SEAL_BtEarInfo.class, Builder.class);
            }

            public Builder setMac(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 1;
                    this.mac_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setName(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 2;
                    this.name_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setRssi(int i) {
                this.bitField0_ |= 4;
                this.rssi_ = i;
                onChanged();
                return this;
            }

            public Builder setType(SEAL_BTEARTYPE seal_bteartype) {
                if (seal_bteartype != null) {
                    this.bitField0_ |= 8;
                    this.type_ = seal_bteartype;
                    onChanged();
                    return this;
                }
                throw null;
            }

            private Builder() {
                ByteString byteString = ByteString.EMPTY;
                this.mac_ = byteString;
                this.name_ = byteString;
                this.type_ = SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_BtEarInfo build() {
                SEAL_BtEarInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_BtEarInfo buildPartial() {
                SEAL_BtEarInfo sEAL_BtEarInfo = new SEAL_BtEarInfo(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_BtEarInfo.mac_ = this.mac_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_BtEarInfo.name_ = this.name_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_BtEarInfo.rssi_ = this.rssi_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sEAL_BtEarInfo.type_ = this.type_;
                sEAL_BtEarInfo.bitField0_ = i2;
                onBuilt();
                return sEAL_BtEarInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_BtEarInfo getDefaultInstanceForType() {
                return SEAL_BtEarInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                ByteString byteString = ByteString.EMPTY;
                this.mac_ = byteString;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.name_ = byteString;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.rssi_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.type_ = SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL;
                this.bitField0_ = i3 & (-9);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                ByteString byteString = ByteString.EMPTY;
                this.mac_ = byteString;
                this.name_ = byteString;
                this.type_ = SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_BTEARTYPE implements ProtocolMessageEnum {
            SEAL_BTEAR_NORMAL(0, 0),
            SEAL_BTEAR_CONE(1, 1);
            
            public static final int SEAL_BTEAR_CONE_VALUE = 1;
            public static final int SEAL_BTEAR_NORMAL_VALUE = 0;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_BTEARTYPE> internalValueMap = new a();
            private static final SEAL_BTEARTYPE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_BTEARTYPE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_BTEARTYPE findValueByNumber(int i) {
                    return SEAL_BTEARTYPE.valueOf(i);
                }
            }

            SEAL_BTEARTYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_BtEarInfo.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SEAL_BTEARTYPE> internalGetValueMap() {
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

            public static SEAL_BTEARTYPE valueOf(int i) {
                if (i == 0) {
                    return SEAL_BTEAR_NORMAL;
                }
                if (i != 1) {
                    return null;
                }
                return SEAL_BTEAR_CONE;
            }

            public static SEAL_BTEARTYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_BtEarInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_BtEarInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_BtEarInfo.newBuilder();
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
            SEAL_BtEarInfo sEAL_BtEarInfo = new SEAL_BtEarInfo(true);
            defaultInstance = sEAL_BtEarInfo;
            sEAL_BtEarInfo.initFields();
        }

        /* synthetic */ SEAL_BtEarInfo(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_BtEarInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.s;
        }

        private void initFields() {
            ByteString byteString = ByteString.EMPTY;
            this.mac_ = byteString;
            this.name_ = byteString;
            this.rssi_ = 0;
            this.type_ = SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_BtEarInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_BtEarInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
        public ByteString getMac() {
            return this.mac_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
        public ByteString getName() {
            return this.name_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_BtEarInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
        public int getRssi() {
            return this.rssi_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
        public SEAL_BTEARTYPE getType() {
            return this.type_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
        public boolean hasMac() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
        public boolean hasName() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
        public boolean hasRssi() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfoOrBuilder
        public boolean hasType() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.t.ensureFieldAccessorsInitialized(SEAL_BtEarInfo.class, Builder.class);
        }

        private SEAL_BtEarInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_BtEarInfo sEAL_BtEarInfo) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_BtEarInfo);
        }

        public static SEAL_BtEarInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_BtEarInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_BtEarInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_BtEarInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_BtEarInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_BtEarInfo parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_BtEarInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_BtEarInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_BtEarInfoOrBuilder extends MessageOrBuilder {
        ByteString getMac();

        ByteString getName();

        int getRssi();

        SEAL_BtEarInfo.SEAL_BTEARTYPE getType();

        boolean hasMac();

        boolean hasName();

        boolean hasRssi();

        boolean hasType();
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_BtEarScanControl extends GeneratedMessage implements SEAL_BtEarScanControlOrBuilder {
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<SEAL_BtEarScanControl> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_BtEarScanControl defaultInstance;
        private int bitField0_;
        private SEAL_BTEAR_CONTROL option_;
        private SEAL_BTEAR_SCAN_RESULT result_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_BtEarScanControlOrBuilder {
            private int bitField0_;
            private SEAL_BTEAR_CONTROL option_;
            private SEAL_BTEAR_SCAN_RESULT result_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.w;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK;
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
                return SealProtos.w;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControlOrBuilder
            public SEAL_BTEAR_CONTROL getOption() {
                return this.option_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControlOrBuilder
            public SEAL_BTEAR_SCAN_RESULT getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControlOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControlOrBuilder
            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControlOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControlOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.x.ensureFieldAccessorsInitialized(SEAL_BtEarScanControl.class, Builder.class);
            }

            public Builder setOption(SEAL_BTEAR_CONTROL seal_btear_control) {
                if (seal_btear_control != null) {
                    this.bitField0_ |= 4;
                    this.option_ = seal_btear_control;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setResult(SEAL_BTEAR_SCAN_RESULT seal_btear_scan_result) {
                if (seal_btear_scan_result != null) {
                    this.bitField0_ |= 2;
                    this.result_ = seal_btear_scan_result;
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
                this.result_ = SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK;
                this.option_ = SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_BtEarScanControl build() {
                SEAL_BtEarScanControl buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_BtEarScanControl buildPartial() {
                SEAL_BtEarScanControl sEAL_BtEarScanControl = new SEAL_BtEarScanControl(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_BtEarScanControl.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_BtEarScanControl.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_BtEarScanControl.option_ = this.option_;
                sEAL_BtEarScanControl.bitField0_ = i2;
                onBuilt();
                return sEAL_BtEarScanControl;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_BtEarScanControl getDefaultInstanceForType() {
                return SEAL_BtEarScanControl.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.option_ = SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START;
                this.bitField0_ = i2 & (-5);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK;
                this.option_ = SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_BTEAR_CONTROL implements ProtocolMessageEnum {
            SEAL_BTEAR_SCAN_START(0, 0),
            SEAL_BTEAR_SCAN_PAUSE(1, 1),
            SEAL_BTEAR_SCAN_STOP(2, 2);
            
            public static final int SEAL_BTEAR_SCAN_PAUSE_VALUE = 1;
            public static final int SEAL_BTEAR_SCAN_START_VALUE = 0;
            public static final int SEAL_BTEAR_SCAN_STOP_VALUE = 2;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_BTEAR_CONTROL> internalValueMap = new a();
            private static final SEAL_BTEAR_CONTROL[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_BTEAR_CONTROL> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_BTEAR_CONTROL findValueByNumber(int i) {
                    return SEAL_BTEAR_CONTROL.valueOf(i);
                }
            }

            SEAL_BTEAR_CONTROL(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_BtEarScanControl.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<SEAL_BTEAR_CONTROL> internalGetValueMap() {
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

            public static SEAL_BTEAR_CONTROL valueOf(int i) {
                if (i == 0) {
                    return SEAL_BTEAR_SCAN_START;
                }
                if (i == 1) {
                    return SEAL_BTEAR_SCAN_PAUSE;
                }
                if (i != 2) {
                    return null;
                }
                return SEAL_BTEAR_SCAN_STOP;
            }

            public static SEAL_BTEAR_CONTROL valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_BTEAR_SCAN_RESULT implements ProtocolMessageEnum {
            SEAL_BTEAR_SCAN_OK(0, 0),
            SEAL_BTEAR_SCAN_ERROR(1, 1);
            
            public static final int SEAL_BTEAR_SCAN_ERROR_VALUE = 1;
            public static final int SEAL_BTEAR_SCAN_OK_VALUE = 0;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_BTEAR_SCAN_RESULT> internalValueMap = new a();
            private static final SEAL_BTEAR_SCAN_RESULT[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_BTEAR_SCAN_RESULT> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_BTEAR_SCAN_RESULT findValueByNumber(int i) {
                    return SEAL_BTEAR_SCAN_RESULT.valueOf(i);
                }
            }

            SEAL_BTEAR_SCAN_RESULT(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_BtEarScanControl.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SEAL_BTEAR_SCAN_RESULT> internalGetValueMap() {
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

            public static SEAL_BTEAR_SCAN_RESULT valueOf(int i) {
                if (i == 0) {
                    return SEAL_BTEAR_SCAN_OK;
                }
                if (i != 1) {
                    return null;
                }
                return SEAL_BTEAR_SCAN_ERROR;
            }

            public static SEAL_BTEAR_SCAN_RESULT valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_BtEarScanControl> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_BtEarScanControl parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_BtEarScanControl.newBuilder();
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
            SEAL_BtEarScanControl sEAL_BtEarScanControl = new SEAL_BtEarScanControl(true);
            defaultInstance = sEAL_BtEarScanControl;
            sEAL_BtEarScanControl.initFields();
        }

        /* synthetic */ SEAL_BtEarScanControl(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_BtEarScanControl getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.w;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK;
            this.option_ = SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_BtEarScanControl parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_BtEarScanControl parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControlOrBuilder
        public SEAL_BTEAR_CONTROL getOption() {
            return this.option_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_BtEarScanControl> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControlOrBuilder
        public SEAL_BTEAR_SCAN_RESULT getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControlOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControlOrBuilder
        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControlOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControlOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.x.ensureFieldAccessorsInitialized(SEAL_BtEarScanControl.class, Builder.class);
        }

        private SEAL_BtEarScanControl(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_BtEarScanControl sEAL_BtEarScanControl) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_BtEarScanControl);
        }

        public static SEAL_BtEarScanControl parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarScanControl parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_BtEarScanControl parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_BtEarScanControl getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_BtEarScanControl(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_BtEarScanControl parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_BtEarScanControl parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_BtEarScanControl parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarScanControl parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_BtEarScanControl parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_BtEarScanControlOrBuilder extends MessageOrBuilder {
        SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL getOption();

        SEAL_BtEarScanControl.SEAL_BTEAR_SCAN_RESULT getResult();

        int getVersion();

        boolean hasOption();

        boolean hasResult();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_BtEarScanItem extends GeneratedMessage implements SEAL_BtEarScanItemOrBuilder {
        public static final int BTEAR_FIELD_NUMBER = 3;
        public static Parser<SEAL_BtEarScanItem> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_BtEarScanItem defaultInstance;
        private int bitField0_;
        private SEAL_BtEarInfo btEar_;
        private SEAL_BTEAR_ITEM_RESULT result_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_BtEarScanItemOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> btEarBuilder_;
            private SEAL_BtEarInfo btEar_;
            private SEAL_BTEAR_ITEM_RESULT result_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> getBtEarFieldBuilder() {
                if (this.btEarBuilder_ == null) {
                    this.btEarBuilder_ = new SingleFieldBuilder<>(getBtEar(), getParentForChildren(), isClean());
                    this.btEar_ = null;
                }
                return this.btEarBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.y;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getBtEarFieldBuilder();
                }
            }

            public Builder clearBtEar() {
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder == null) {
                    this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SEAL_BTEAR_ITEM_RESULT.SEAL_BTEAR_ITEM_OK;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
            public SEAL_BtEarInfo getBtEar() {
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder == null) {
                    return this.btEar_;
                }
                return singleFieldBuilder.getMessage();
            }

            public SEAL_BtEarInfo.Builder getBtEarBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return getBtEarFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
            public SEAL_BtEarInfoOrBuilder getBtEarOrBuilder() {
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.btEar_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SealProtos.y;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
            public SEAL_BTEAR_ITEM_RESULT getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
            public boolean hasBtEar() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.z.ensureFieldAccessorsInitialized(SEAL_BtEarScanItem.class, Builder.class);
            }

            public Builder mergeBtEar(SEAL_BtEarInfo sEAL_BtEarInfo) {
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 4 || this.btEar_ == SEAL_BtEarInfo.getDefaultInstance()) {
                        this.btEar_ = sEAL_BtEarInfo;
                    } else {
                        this.btEar_ = ((SEAL_BtEarInfo.Builder) SEAL_BtEarInfo.newBuilder(this.btEar_).mergeFrom((Message) sEAL_BtEarInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(sEAL_BtEarInfo);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setBtEar(SEAL_BtEarInfo sEAL_BtEarInfo) {
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(sEAL_BtEarInfo);
                } else if (sEAL_BtEarInfo != null) {
                    this.btEar_ = sEAL_BtEarInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setResult(SEAL_BTEAR_ITEM_RESULT seal_btear_item_result) {
                if (seal_btear_item_result != null) {
                    this.bitField0_ |= 2;
                    this.result_ = seal_btear_item_result;
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
                this.result_ = SEAL_BTEAR_ITEM_RESULT.SEAL_BTEAR_ITEM_OK;
                this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_BtEarScanItem build() {
                SEAL_BtEarScanItem buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_BtEarScanItem buildPartial() {
                SEAL_BtEarScanItem sEAL_BtEarScanItem = new SEAL_BtEarScanItem(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_BtEarScanItem.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_BtEarScanItem.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder == null) {
                    sEAL_BtEarScanItem.btEar_ = this.btEar_;
                } else {
                    sEAL_BtEarScanItem.btEar_ = singleFieldBuilder.build();
                }
                sEAL_BtEarScanItem.bitField0_ = i2;
                onBuilt();
                return sEAL_BtEarScanItem;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_BtEarScanItem getDefaultInstanceForType() {
                return SEAL_BtEarScanItem.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = SEAL_BTEAR_ITEM_RESULT.SEAL_BTEAR_ITEM_OK;
                this.bitField0_ = i & (-3);
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder == null) {
                    this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_BTEAR_ITEM_RESULT.SEAL_BTEAR_ITEM_OK;
                this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setBtEar(SEAL_BtEarInfo.Builder builder) {
                SingleFieldBuilder<SEAL_BtEarInfo, SEAL_BtEarInfo.Builder, SEAL_BtEarInfoOrBuilder> singleFieldBuilder = this.btEarBuilder_;
                if (singleFieldBuilder == null) {
                    this.btEar_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_BTEAR_ITEM_RESULT implements ProtocolMessageEnum {
            SEAL_BTEAR_ITEM_OK(0, 0);
            
            public static final int SEAL_BTEAR_ITEM_OK_VALUE = 0;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_BTEAR_ITEM_RESULT> internalValueMap = new a();
            private static final SEAL_BTEAR_ITEM_RESULT[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_BTEAR_ITEM_RESULT> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_BTEAR_ITEM_RESULT findValueByNumber(int i) {
                    return SEAL_BTEAR_ITEM_RESULT.valueOf(i);
                }
            }

            SEAL_BTEAR_ITEM_RESULT(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_BtEarScanItem.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SEAL_BTEAR_ITEM_RESULT> internalGetValueMap() {
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

            public static SEAL_BTEAR_ITEM_RESULT valueOf(int i) {
                if (i != 0) {
                    return null;
                }
                return SEAL_BTEAR_ITEM_OK;
            }

            public static SEAL_BTEAR_ITEM_RESULT valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_BtEarScanItem> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_BtEarScanItem parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_BtEarScanItem.newBuilder();
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
            SEAL_BtEarScanItem sEAL_BtEarScanItem = new SEAL_BtEarScanItem(true);
            defaultInstance = sEAL_BtEarScanItem;
            sEAL_BtEarScanItem.initFields();
        }

        /* synthetic */ SEAL_BtEarScanItem(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_BtEarScanItem getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.y;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SEAL_BTEAR_ITEM_RESULT.SEAL_BTEAR_ITEM_OK;
            this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_BtEarScanItem parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_BtEarScanItem parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
        public SEAL_BtEarInfo getBtEar() {
            return this.btEar_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
        public SEAL_BtEarInfoOrBuilder getBtEarOrBuilder() {
            return this.btEar_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_BtEarScanItem> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
        public SEAL_BTEAR_ITEM_RESULT getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
        public boolean hasBtEar() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanItemOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.z.ensureFieldAccessorsInitialized(SEAL_BtEarScanItem.class, Builder.class);
        }

        private SEAL_BtEarScanItem(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_BtEarScanItem sEAL_BtEarScanItem) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_BtEarScanItem);
        }

        public static SEAL_BtEarScanItem parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarScanItem parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_BtEarScanItem parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_BtEarScanItem getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_BtEarScanItem(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_BtEarScanItem parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_BtEarScanItem parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_BtEarScanItem parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarScanItem parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_BtEarScanItem parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_BtEarScanItemOrBuilder extends MessageOrBuilder {
        SEAL_BtEarInfo getBtEar();

        SEAL_BtEarInfoOrBuilder getBtEarOrBuilder();

        SEAL_BtEarScanItem.SEAL_BTEAR_ITEM_RESULT getResult();

        int getVersion();

        boolean hasBtEar();

        boolean hasResult();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public enum SEAL_CONNCODE implements ProtocolMessageEnum {
        SEAL_DISCONNECT(0, 0),
        SEAL_CONNECT(1, 1),
        SEAL_ALLOW(2, 4),
        SEAL_REFUSE(3, 5),
        SEAL_WAIT(4, 6),
        SEAL_LOWPOWER(5, 7),
        SEAL_DIS_ALLOW(6, 8),
        SEAL_DIS_REFUSE(7, 9),
        SEAL_DIS_WAIT(8, 10),
        SEAL_DIS_LOWPOWER(9, 11),
        SEAL_BUSY(10, 12);
        
        public static final int SEAL_ALLOW_VALUE = 4;
        public static final int SEAL_BUSY_VALUE = 12;
        public static final int SEAL_CONNECT_VALUE = 1;
        public static final int SEAL_DISCONNECT_VALUE = 0;
        public static final int SEAL_DIS_ALLOW_VALUE = 8;
        public static final int SEAL_DIS_LOWPOWER_VALUE = 11;
        public static final int SEAL_DIS_REFUSE_VALUE = 9;
        public static final int SEAL_DIS_WAIT_VALUE = 10;
        public static final int SEAL_LOWPOWER_VALUE = 7;
        public static final int SEAL_REFUSE_VALUE = 5;
        public static final int SEAL_WAIT_VALUE = 6;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<SEAL_CONNCODE> internalValueMap = new a();
        private static final SEAL_CONNCODE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<SEAL_CONNCODE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public SEAL_CONNCODE findValueByNumber(int i) {
                return SEAL_CONNCODE.valueOf(i);
            }
        }

        SEAL_CONNCODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return SealProtos.C().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<SEAL_CONNCODE> internalGetValueMap() {
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

        public static SEAL_CONNCODE valueOf(int i) {
            if (i == 0) {
                return SEAL_DISCONNECT;
            }
            if (i == 1) {
                return SEAL_CONNECT;
            }
            switch (i) {
                case 4:
                    return SEAL_ALLOW;
                case 5:
                    return SEAL_REFUSE;
                case 6:
                    return SEAL_WAIT;
                case 7:
                    return SEAL_LOWPOWER;
                case 8:
                    return SEAL_DIS_ALLOW;
                case 9:
                    return SEAL_DIS_REFUSE;
                case 10:
                    return SEAL_DIS_WAIT;
                case 11:
                    return SEAL_DIS_LOWPOWER;
                case 12:
                    return SEAL_BUSY;
                default:
                    return null;
            }
        }

        public static SEAL_CONNCODE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_ChannelInfo extends GeneratedMessage implements SEAL_ChannelInfoOrBuilder {
        public static final int CH_BAND_FIELD_NUMBER = 12;
        public static final int CH_ELIM_FIELD_NUMBER = 11;
        public static final int CH_NAME_FIELD_NUMBER = 6;
        public static final int CH_NO_FIELD_NUMBER = 1;
        public static final int CH_POLITE_FIELD_NUMBER = 13;
        public static final int CH_RXCSS_FIELD_NUMBER = 9;
        public static final int CH_RXFREQ_FIELD_NUMBER = 4;
        public static final int CH_SQ_FIELD_NUMBER = 7;
        public static final int CH_TXCSS_FIELD_NUMBER = 10;
        public static final int CH_TXFREQ_FIELD_NUMBER = 5;
        public static final int CH_TXPOWER_FIELD_NUMBER = 3;
        public static final int CH_TYPE_FIELD_NUMBER = 2;
        public static final int CH_VOX_FIELD_NUMBER = 8;
        public static Parser<SEAL_ChannelInfo> PARSER = new a();
        private static final SEAL_ChannelInfo defaultInstance;
        private int bitField0_;
        private int chBand_;
        private SEAL_SWITCH chElim_;
        private ByteString chName_;
        private int chNo_;
        private SEAL_SWITCH chPolite_;
        private int chRxCss_;
        private int chRxFreq_;
        private int chSq_;
        private int chTxCss_;
        private int chTxFreq_;
        private int chTxPower_;
        private SEAL_CHTYPE chType_;
        private int chVox_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_ChannelInfoOrBuilder {
            private int bitField0_;
            private int chBand_;
            private SEAL_SWITCH chElim_;
            private ByteString chName_;
            private int chNo_;
            private SEAL_SWITCH chPolite_;
            private int chRxCss_;
            private int chRxFreq_;
            private int chSq_;
            private int chTxCss_;
            private int chTxFreq_;
            private int chTxPower_;
            private SEAL_CHTYPE chType_;
            private int chVox_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.f5981c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearChBand() {
                this.bitField0_ &= -2049;
                this.chBand_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChElim() {
                this.bitField0_ &= -1025;
                this.chElim_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }

            public Builder clearChName() {
                this.bitField0_ &= -33;
                this.chName_ = SEAL_ChannelInfo.getDefaultInstance().getChName();
                onChanged();
                return this;
            }

            public Builder clearChNo() {
                this.bitField0_ &= -2;
                this.chNo_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChPolite() {
                this.bitField0_ &= -4097;
                this.chPolite_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }

            public Builder clearChRxCss() {
                this.bitField0_ &= -257;
                this.chRxCss_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChRxFreq() {
                this.bitField0_ &= -9;
                this.chRxFreq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChSq() {
                this.bitField0_ &= -65;
                this.chSq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChTxCss() {
                this.bitField0_ &= -513;
                this.chTxCss_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChTxFreq() {
                this.bitField0_ &= -17;
                this.chTxFreq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChTxPower() {
                this.bitField0_ &= -5;
                this.chTxPower_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChType() {
                this.bitField0_ &= -3;
                this.chType_ = SEAL_CHTYPE.SEAL_PUBLIC;
                onChanged();
                return this;
            }

            public Builder clearChVox() {
                this.bitField0_ &= -129;
                this.chVox_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public int getChBand() {
                return this.chBand_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public SEAL_SWITCH getChElim() {
                return this.chElim_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public ByteString getChName() {
                return this.chName_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public int getChNo() {
                return this.chNo_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public SEAL_SWITCH getChPolite() {
                return this.chPolite_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public int getChRxCss() {
                return this.chRxCss_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public int getChRxFreq() {
                return this.chRxFreq_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public int getChSq() {
                return this.chSq_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public int getChTxCss() {
                return this.chTxCss_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public int getChTxFreq() {
                return this.chTxFreq_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public int getChTxPower() {
                return this.chTxPower_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public SEAL_CHTYPE getChType() {
                return this.chType_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public int getChVox() {
                return this.chVox_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SealProtos.f5981c;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChBand() {
                return (this.bitField0_ & 2048) == 2048;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChElim() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChName() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChNo() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChPolite() {
                return (this.bitField0_ & 4096) == 4096;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChRxCss() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChRxFreq() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChSq() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChTxCss() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChTxFreq() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChTxPower() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChType() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
            public boolean hasChVox() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.d.ensureFieldAccessorsInitialized(SEAL_ChannelInfo.class, Builder.class);
            }

            public Builder setChBand(int i) {
                this.bitField0_ |= 2048;
                this.chBand_ = i;
                onChanged();
                return this;
            }

            public Builder setChElim(SEAL_SWITCH seal_switch) {
                if (seal_switch != null) {
                    this.bitField0_ |= 1024;
                    this.chElim_ = seal_switch;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setChName(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 32;
                    this.chName_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setChNo(int i) {
                this.bitField0_ |= 1;
                this.chNo_ = i;
                onChanged();
                return this;
            }

            public Builder setChPolite(SEAL_SWITCH seal_switch) {
                if (seal_switch != null) {
                    this.bitField0_ |= 4096;
                    this.chPolite_ = seal_switch;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setChRxCss(int i) {
                this.bitField0_ |= 256;
                this.chRxCss_ = i;
                onChanged();
                return this;
            }

            public Builder setChRxFreq(int i) {
                this.bitField0_ |= 8;
                this.chRxFreq_ = i;
                onChanged();
                return this;
            }

            public Builder setChSq(int i) {
                this.bitField0_ |= 64;
                this.chSq_ = i;
                onChanged();
                return this;
            }

            public Builder setChTxCss(int i) {
                this.bitField0_ |= 512;
                this.chTxCss_ = i;
                onChanged();
                return this;
            }

            public Builder setChTxFreq(int i) {
                this.bitField0_ |= 16;
                this.chTxFreq_ = i;
                onChanged();
                return this;
            }

            public Builder setChTxPower(int i) {
                this.bitField0_ |= 4;
                this.chTxPower_ = i;
                onChanged();
                return this;
            }

            public Builder setChType(SEAL_CHTYPE seal_chtype) {
                if (seal_chtype != null) {
                    this.bitField0_ |= 2;
                    this.chType_ = seal_chtype;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setChVox(int i) {
                this.bitField0_ |= 128;
                this.chVox_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.chType_ = SEAL_CHTYPE.SEAL_PUBLIC;
                this.chName_ = ByteString.EMPTY;
                SEAL_SWITCH seal_switch = SEAL_SWITCH.SEAL_OFF;
                this.chElim_ = seal_switch;
                this.chPolite_ = seal_switch;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_ChannelInfo build() {
                SEAL_ChannelInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_ChannelInfo buildPartial() {
                SEAL_ChannelInfo sEAL_ChannelInfo = new SEAL_ChannelInfo(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_ChannelInfo.chNo_ = this.chNo_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_ChannelInfo.chType_ = this.chType_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_ChannelInfo.chTxPower_ = this.chTxPower_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sEAL_ChannelInfo.chRxFreq_ = this.chRxFreq_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sEAL_ChannelInfo.chTxFreq_ = this.chTxFreq_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                sEAL_ChannelInfo.chName_ = this.chName_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                sEAL_ChannelInfo.chSq_ = this.chSq_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                sEAL_ChannelInfo.chVox_ = this.chVox_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                sEAL_ChannelInfo.chRxCss_ = this.chRxCss_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                sEAL_ChannelInfo.chTxCss_ = this.chTxCss_;
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                sEAL_ChannelInfo.chElim_ = this.chElim_;
                if ((i & 2048) == 2048) {
                    i2 |= 2048;
                }
                sEAL_ChannelInfo.chBand_ = this.chBand_;
                if ((i & 4096) == 4096) {
                    i2 |= 4096;
                }
                sEAL_ChannelInfo.chPolite_ = this.chPolite_;
                sEAL_ChannelInfo.bitField0_ = i2;
                onBuilt();
                return sEAL_ChannelInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_ChannelInfo getDefaultInstanceForType() {
                return SEAL_ChannelInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.chNo_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.chType_ = SEAL_CHTYPE.SEAL_PUBLIC;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.chTxPower_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.chRxFreq_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.chTxFreq_ = 0;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.chName_ = ByteString.EMPTY;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.chSq_ = 0;
                int i7 = i6 & (-65);
                this.bitField0_ = i7;
                this.chVox_ = 0;
                int i8 = i7 & (-129);
                this.bitField0_ = i8;
                this.chRxCss_ = 0;
                int i9 = i8 & (-257);
                this.bitField0_ = i9;
                this.chTxCss_ = 0;
                int i10 = i9 & (-513);
                this.bitField0_ = i10;
                SEAL_SWITCH seal_switch = SEAL_SWITCH.SEAL_OFF;
                this.chElim_ = seal_switch;
                int i11 = i10 & (-1025);
                this.bitField0_ = i11;
                this.chBand_ = 0;
                int i12 = i11 & (-2049);
                this.bitField0_ = i12;
                this.chPolite_ = seal_switch;
                this.bitField0_ = i12 & (-4097);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.chType_ = SEAL_CHTYPE.SEAL_PUBLIC;
                this.chName_ = ByteString.EMPTY;
                SEAL_SWITCH seal_switch = SEAL_SWITCH.SEAL_OFF;
                this.chElim_ = seal_switch;
                this.chPolite_ = seal_switch;
                maybeForceBuilderInitialization();
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_CHTYPE implements ProtocolMessageEnum {
            SEAL_PUBLIC(0, 0),
            SEAL_REMOTE(1, 1),
            SEAL_USERDEF(2, 2);
            
            public static final int SEAL_PUBLIC_VALUE = 0;
            public static final int SEAL_REMOTE_VALUE = 1;
            public static final int SEAL_USERDEF_VALUE = 2;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_CHTYPE> internalValueMap = new a();
            private static final SEAL_CHTYPE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_CHTYPE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_CHTYPE findValueByNumber(int i) {
                    return SEAL_CHTYPE.valueOf(i);
                }
            }

            SEAL_CHTYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_ChannelInfo.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SEAL_CHTYPE> internalGetValueMap() {
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

            public static SEAL_CHTYPE valueOf(int i) {
                if (i == 0) {
                    return SEAL_PUBLIC;
                }
                if (i == 1) {
                    return SEAL_REMOTE;
                }
                if (i != 2) {
                    return null;
                }
                return SEAL_USERDEF;
            }

            public static SEAL_CHTYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_ChannelInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_ChannelInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_ChannelInfo.newBuilder();
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
            SEAL_ChannelInfo sEAL_ChannelInfo = new SEAL_ChannelInfo(true);
            defaultInstance = sEAL_ChannelInfo;
            sEAL_ChannelInfo.initFields();
        }

        /* synthetic */ SEAL_ChannelInfo(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_ChannelInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.f5981c;
        }

        private void initFields() {
            this.chNo_ = 0;
            this.chType_ = SEAL_CHTYPE.SEAL_PUBLIC;
            this.chTxPower_ = 0;
            this.chRxFreq_ = 0;
            this.chTxFreq_ = 0;
            this.chName_ = ByteString.EMPTY;
            this.chSq_ = 0;
            this.chVox_ = 0;
            this.chRxCss_ = 0;
            this.chTxCss_ = 0;
            SEAL_SWITCH seal_switch = SEAL_SWITCH.SEAL_OFF;
            this.chElim_ = seal_switch;
            this.chBand_ = 0;
            this.chPolite_ = seal_switch;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_ChannelInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_ChannelInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public int getChBand() {
            return this.chBand_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public SEAL_SWITCH getChElim() {
            return this.chElim_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public ByteString getChName() {
            return this.chName_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public int getChNo() {
            return this.chNo_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public SEAL_SWITCH getChPolite() {
            return this.chPolite_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public int getChRxCss() {
            return this.chRxCss_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public int getChRxFreq() {
            return this.chRxFreq_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public int getChSq() {
            return this.chSq_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public int getChTxCss() {
            return this.chTxCss_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public int getChTxFreq() {
            return this.chTxFreq_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public int getChTxPower() {
            return this.chTxPower_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public SEAL_CHTYPE getChType() {
            return this.chType_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public int getChVox() {
            return this.chVox_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_ChannelInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChBand() {
            return (this.bitField0_ & 2048) == 2048;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChElim() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChName() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChNo() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChPolite() {
            return (this.bitField0_ & 4096) == 4096;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChRxCss() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChRxFreq() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChSq() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChTxCss() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChTxFreq() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChTxPower() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChType() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOrBuilder
        public boolean hasChVox() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.d.ensureFieldAccessorsInitialized(SEAL_ChannelInfo.class, Builder.class);
        }

        private SEAL_ChannelInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_ChannelInfo sEAL_ChannelInfo) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_ChannelInfo);
        }

        public static SEAL_ChannelInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_ChannelInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_ChannelInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_ChannelInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_ChannelInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_ChannelInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_ChannelInfo parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_ChannelInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_ChannelInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_ChannelInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_ChannelInfoOperate extends GeneratedMessage implements SEAL_ChannelInfoOperateOrBuilder {
        public static final int CH_FIELD_NUMBER = 4;
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<SEAL_ChannelInfoOperate> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_ChannelInfoOperate defaultInstance;
        private int bitField0_;
        private SEAL_ChannelInfo ch_;
        private SEAL_CHOPTION option_;
        private SEAL_CH_UERR result_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_ChannelInfoOperateOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> chBuilder_;
            private SEAL_ChannelInfo ch_;
            private SEAL_CHOPTION option_;
            private SEAL_CH_UERR result_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> getChFieldBuilder() {
                if (this.chBuilder_ == null) {
                    this.chBuilder_ = new SingleFieldBuilder<>(getCh(), getParentForChildren(), isClean());
                    this.ch_ = null;
                }
                return this.chBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.i;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getChFieldBuilder();
                }
            }

            public Builder clearCh() {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = SEAL_CHOPTION.SEAL_CH_INSERT;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SEAL_CH_UERR.SEAL_CH_OK;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
            public SEAL_ChannelInfo getCh() {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    return this.ch_;
                }
                return singleFieldBuilder.getMessage();
            }

            public SEAL_ChannelInfo.Builder getChBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return getChFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
            public SEAL_ChannelInfoOrBuilder getChOrBuilder() {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SealProtos.i;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
            public SEAL_CHOPTION getOption() {
                return this.option_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
            public SEAL_CH_UERR getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
            public boolean hasCh() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.j.ensureFieldAccessorsInitialized(SEAL_ChannelInfoOperate.class, Builder.class);
            }

            public Builder mergeCh(SEAL_ChannelInfo sEAL_ChannelInfo) {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 8 || this.ch_ == SEAL_ChannelInfo.getDefaultInstance()) {
                        this.ch_ = sEAL_ChannelInfo;
                    } else {
                        this.ch_ = ((SEAL_ChannelInfo.Builder) SEAL_ChannelInfo.newBuilder(this.ch_).mergeFrom((Message) sEAL_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(sEAL_ChannelInfo);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setCh(SEAL_ChannelInfo sEAL_ChannelInfo) {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(sEAL_ChannelInfo);
                } else if (sEAL_ChannelInfo != null) {
                    this.ch_ = sEAL_ChannelInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setOption(SEAL_CHOPTION seal_choption) {
                if (seal_choption != null) {
                    this.bitField0_ |= 4;
                    this.option_ = seal_choption;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setResult(SEAL_CH_UERR seal_ch_uerr) {
                if (seal_ch_uerr != null) {
                    this.bitField0_ |= 2;
                    this.result_ = seal_ch_uerr;
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
                this.result_ = SEAL_CH_UERR.SEAL_CH_OK;
                this.option_ = SEAL_CHOPTION.SEAL_CH_INSERT;
                this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_ChannelInfoOperate build() {
                SEAL_ChannelInfoOperate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_ChannelInfoOperate buildPartial() {
                SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate = new SEAL_ChannelInfoOperate(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_ChannelInfoOperate.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_ChannelInfoOperate.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_ChannelInfoOperate.option_ = this.option_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    sEAL_ChannelInfoOperate.ch_ = this.ch_;
                } else {
                    sEAL_ChannelInfoOperate.ch_ = singleFieldBuilder.build();
                }
                sEAL_ChannelInfoOperate.bitField0_ = i2;
                onBuilt();
                return sEAL_ChannelInfoOperate;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_ChannelInfoOperate getDefaultInstanceForType() {
                return SEAL_ChannelInfoOperate.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = SEAL_CH_UERR.SEAL_CH_OK;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.option_ = SEAL_CHOPTION.SEAL_CH_INSERT;
                this.bitField0_ = i2 & (-5);
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_CH_UERR.SEAL_CH_OK;
                this.option_ = SEAL_CHOPTION.SEAL_CH_INSERT;
                this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setCh(SEAL_ChannelInfo.Builder builder) {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    this.ch_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                return this;
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_CHOPTION implements ProtocolMessageEnum {
            SEAL_CH_INSERT(0, 0),
            SEAL_CH_DELETE(1, 1),
            SEAL_CH_MODIFY(2, 2),
            SEAL_CH_QUERY(3, 3);
            
            public static final int SEAL_CH_DELETE_VALUE = 1;
            public static final int SEAL_CH_INSERT_VALUE = 0;
            public static final int SEAL_CH_MODIFY_VALUE = 2;
            public static final int SEAL_CH_QUERY_VALUE = 3;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_CHOPTION> internalValueMap = new a();
            private static final SEAL_CHOPTION[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_CHOPTION> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_CHOPTION findValueByNumber(int i) {
                    return SEAL_CHOPTION.valueOf(i);
                }
            }

            SEAL_CHOPTION(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_ChannelInfoOperate.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<SEAL_CHOPTION> internalGetValueMap() {
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

            public static SEAL_CHOPTION valueOf(int i) {
                if (i == 0) {
                    return SEAL_CH_INSERT;
                }
                if (i == 1) {
                    return SEAL_CH_DELETE;
                }
                if (i == 2) {
                    return SEAL_CH_MODIFY;
                }
                if (i != 3) {
                    return null;
                }
                return SEAL_CH_QUERY;
            }

            public static SEAL_CHOPTION valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_CH_UERR implements ProtocolMessageEnum {
            SEAL_CH_OK(0, 0),
            SEAL_CH_ERROR(1, 1),
            SEAL_CH_EMPTY(2, 2),
            SEAL_CH_FORBIDE(3, 3),
            SEAL_CH_QUERY_CONTINUE(4, 4),
            SEAL_CH_QUERY_FINISH(5, 5);
            
            public static final int SEAL_CH_EMPTY_VALUE = 2;
            public static final int SEAL_CH_ERROR_VALUE = 1;
            public static final int SEAL_CH_FORBIDE_VALUE = 3;
            public static final int SEAL_CH_OK_VALUE = 0;
            public static final int SEAL_CH_QUERY_CONTINUE_VALUE = 4;
            public static final int SEAL_CH_QUERY_FINISH_VALUE = 5;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_CH_UERR> internalValueMap = new a();
            private static final SEAL_CH_UERR[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_CH_UERR> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_CH_UERR findValueByNumber(int i) {
                    return SEAL_CH_UERR.valueOf(i);
                }
            }

            SEAL_CH_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_ChannelInfoOperate.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SEAL_CH_UERR> internalGetValueMap() {
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

            public static SEAL_CH_UERR valueOf(int i) {
                if (i == 0) {
                    return SEAL_CH_OK;
                }
                if (i == 1) {
                    return SEAL_CH_ERROR;
                }
                if (i == 2) {
                    return SEAL_CH_EMPTY;
                }
                if (i == 3) {
                    return SEAL_CH_FORBIDE;
                }
                if (i == 4) {
                    return SEAL_CH_QUERY_CONTINUE;
                }
                if (i != 5) {
                    return null;
                }
                return SEAL_CH_QUERY_FINISH;
            }

            public static SEAL_CH_UERR valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_ChannelInfoOperate> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_ChannelInfoOperate parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_ChannelInfoOperate.newBuilder();
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
            SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate = new SEAL_ChannelInfoOperate(true);
            defaultInstance = sEAL_ChannelInfoOperate;
            sEAL_ChannelInfoOperate.initFields();
        }

        /* synthetic */ SEAL_ChannelInfoOperate(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_ChannelInfoOperate getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.i;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SEAL_CH_UERR.SEAL_CH_OK;
            this.option_ = SEAL_CHOPTION.SEAL_CH_INSERT;
            this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_ChannelInfoOperate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_ChannelInfoOperate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
        public SEAL_ChannelInfo getCh() {
            return this.ch_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
        public SEAL_ChannelInfoOrBuilder getChOrBuilder() {
            return this.ch_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
        public SEAL_CHOPTION getOption() {
            return this.option_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_ChannelInfoOperate> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
        public SEAL_CH_UERR getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
        public boolean hasCh() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperateOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.j.ensureFieldAccessorsInitialized(SEAL_ChannelInfoOperate.class, Builder.class);
        }

        private SEAL_ChannelInfoOperate(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_ChannelInfoOperate);
        }

        public static SEAL_ChannelInfoOperate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_ChannelInfoOperate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_ChannelInfoOperate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_ChannelInfoOperate getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_ChannelInfoOperate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_ChannelInfoOperate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_ChannelInfoOperate parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_ChannelInfoOperate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_ChannelInfoOperate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_ChannelInfoOperate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_ChannelInfoOperateOrBuilder extends MessageOrBuilder {
        SEAL_ChannelInfo getCh();

        SEAL_ChannelInfoOrBuilder getChOrBuilder();

        SEAL_ChannelInfoOperate.SEAL_CHOPTION getOption();

        SEAL_ChannelInfoOperate.SEAL_CH_UERR getResult();

        int getVersion();

        boolean hasCh();

        boolean hasOption();

        boolean hasResult();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public interface SEAL_ChannelInfoOrBuilder extends MessageOrBuilder {
        int getChBand();

        SEAL_SWITCH getChElim();

        ByteString getChName();

        int getChNo();

        SEAL_SWITCH getChPolite();

        int getChRxCss();

        int getChRxFreq();

        int getChSq();

        int getChTxCss();

        int getChTxFreq();

        int getChTxPower();

        SEAL_ChannelInfo.SEAL_CHTYPE getChType();

        int getChVox();

        boolean hasChBand();

        boolean hasChElim();

        boolean hasChName();

        boolean hasChNo();

        boolean hasChPolite();

        boolean hasChRxCss();

        boolean hasChRxFreq();

        boolean hasChSq();

        boolean hasChTxCss();

        boolean hasChTxFreq();

        boolean hasChTxPower();

        boolean hasChType();

        boolean hasChVox();
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_ChannelStateOperate extends GeneratedMessage implements SEAL_ChannelStateOperateOrBuilder {
        public static final int CH1_FIELD_NUMBER = 6;
        public static final int DEVICEMODE_FIELD_NUMBER = 4;
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<SEAL_ChannelStateOperate> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int STATEMODE_FIELD_NUMBER = 5;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_ChannelStateOperate defaultInstance;
        private int bitField0_;
        private SEAL_ChannelInfo ch1_;
        private SEAL_MODE deviceMode_;
        private SEAL_STOPTION option_;
        private SEAL_ST_UERR result_;
        private int stateMode_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_ChannelStateOperateOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> ch1Builder_;
            private SEAL_ChannelInfo ch1_;
            private SEAL_MODE deviceMode_;
            private SEAL_STOPTION option_;
            private SEAL_ST_UERR result_;
            private int stateMode_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> getCh1FieldBuilder() {
                if (this.ch1Builder_ == null) {
                    this.ch1Builder_ = new SingleFieldBuilder<>(getCh1(), getParentForChildren(), isClean());
                    this.ch1_ = null;
                }
                return this.ch1Builder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.g;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getCh1FieldBuilder();
                }
            }

            public Builder clearCh1() {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = SEAL_ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            public Builder clearDeviceMode() {
                this.bitField0_ &= -9;
                this.deviceMode_ = SEAL_MODE.SEAL_MODE_NORMAL;
                onChanged();
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = SEAL_STOPTION.SEAL_ST_UPDATE;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SEAL_ST_UERR.SEAL_ST_OK;
                onChanged();
                return this;
            }

            public Builder clearStateMode() {
                this.bitField0_ &= -17;
                this.stateMode_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public SEAL_ChannelInfo getCh1() {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    return this.ch1_;
                }
                return singleFieldBuilder.getMessage();
            }

            public SEAL_ChannelInfo.Builder getCh1Builder() {
                this.bitField0_ |= 32;
                onChanged();
                return getCh1FieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public SEAL_ChannelInfoOrBuilder getCh1OrBuilder() {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch1_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SealProtos.g;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public SEAL_MODE getDeviceMode() {
                return this.deviceMode_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public SEAL_STOPTION getOption() {
                return this.option_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public SEAL_ST_UERR getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public int getStateMode() {
                return this.stateMode_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public boolean hasCh1() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public boolean hasDeviceMode() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public boolean hasStateMode() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.h.ensureFieldAccessorsInitialized(SEAL_ChannelStateOperate.class, Builder.class);
            }

            public Builder mergeCh1(SEAL_ChannelInfo sEAL_ChannelInfo) {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 32) != 32 || this.ch1_ == SEAL_ChannelInfo.getDefaultInstance()) {
                        this.ch1_ = sEAL_ChannelInfo;
                    } else {
                        this.ch1_ = ((SEAL_ChannelInfo.Builder) SEAL_ChannelInfo.newBuilder(this.ch1_).mergeFrom((Message) sEAL_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(sEAL_ChannelInfo);
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder setCh1(SEAL_ChannelInfo sEAL_ChannelInfo) {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(sEAL_ChannelInfo);
                } else if (sEAL_ChannelInfo != null) {
                    this.ch1_ = sEAL_ChannelInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder setDeviceMode(SEAL_MODE seal_mode) {
                if (seal_mode != null) {
                    this.bitField0_ |= 8;
                    this.deviceMode_ = seal_mode;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setOption(SEAL_STOPTION seal_stoption) {
                if (seal_stoption != null) {
                    this.bitField0_ |= 4;
                    this.option_ = seal_stoption;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setResult(SEAL_ST_UERR seal_st_uerr) {
                if (seal_st_uerr != null) {
                    this.bitField0_ |= 2;
                    this.result_ = seal_st_uerr;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setStateMode(int i) {
                this.bitField0_ |= 16;
                this.stateMode_ = i;
                onChanged();
                return this;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.result_ = SEAL_ST_UERR.SEAL_ST_OK;
                this.option_ = SEAL_STOPTION.SEAL_ST_UPDATE;
                this.deviceMode_ = SEAL_MODE.SEAL_MODE_NORMAL;
                this.ch1_ = SEAL_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_ChannelStateOperate build() {
                SEAL_ChannelStateOperate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_ChannelStateOperate buildPartial() {
                SEAL_ChannelStateOperate sEAL_ChannelStateOperate = new SEAL_ChannelStateOperate(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_ChannelStateOperate.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_ChannelStateOperate.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_ChannelStateOperate.option_ = this.option_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sEAL_ChannelStateOperate.deviceMode_ = this.deviceMode_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sEAL_ChannelStateOperate.stateMode_ = this.stateMode_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    sEAL_ChannelStateOperate.ch1_ = this.ch1_;
                } else {
                    sEAL_ChannelStateOperate.ch1_ = singleFieldBuilder.build();
                }
                sEAL_ChannelStateOperate.bitField0_ = i2;
                onBuilt();
                return sEAL_ChannelStateOperate;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_ChannelStateOperate getDefaultInstanceForType() {
                return SEAL_ChannelStateOperate.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = SEAL_ST_UERR.SEAL_ST_OK;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.option_ = SEAL_STOPTION.SEAL_ST_UPDATE;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.deviceMode_ = SEAL_MODE.SEAL_MODE_NORMAL;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.stateMode_ = 0;
                this.bitField0_ = i4 & (-17);
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = SEAL_ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setCh1(SEAL_ChannelInfo.Builder builder) {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 32;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_ST_UERR.SEAL_ST_OK;
                this.option_ = SEAL_STOPTION.SEAL_ST_UPDATE;
                this.deviceMode_ = SEAL_MODE.SEAL_MODE_NORMAL;
                this.ch1_ = SEAL_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_MODE implements ProtocolMessageEnum {
            SEAL_MODE_NORMAL(0, 0),
            SEAL_SOS_T(1, 1),
            SEAL_SOS_R(2, 2),
            SEAL_SCAN_CH(3, 3),
            SEAL_SCAN_FREQ(4, 4),
            SEAL_TEAM_M(5, 5),
            SEAL_TEAM_S(6, 6);
            
            public static final int SEAL_MODE_NORMAL_VALUE = 0;
            public static final int SEAL_SCAN_CH_VALUE = 3;
            public static final int SEAL_SCAN_FREQ_VALUE = 4;
            public static final int SEAL_SOS_R_VALUE = 2;
            public static final int SEAL_SOS_T_VALUE = 1;
            public static final int SEAL_TEAM_M_VALUE = 5;
            public static final int SEAL_TEAM_S_VALUE = 6;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_MODE> internalValueMap = new a();
            private static final SEAL_MODE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_MODE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_MODE findValueByNumber(int i) {
                    return SEAL_MODE.valueOf(i);
                }
            }

            SEAL_MODE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_ChannelStateOperate.getDescriptor().getEnumTypes().get(2);
            }

            public static Internal.EnumLiteMap<SEAL_MODE> internalGetValueMap() {
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

            public static SEAL_MODE valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_MODE_NORMAL;
                    case 1:
                        return SEAL_SOS_T;
                    case 2:
                        return SEAL_SOS_R;
                    case 3:
                        return SEAL_SCAN_CH;
                    case 4:
                        return SEAL_SCAN_FREQ;
                    case 5:
                        return SEAL_TEAM_M;
                    case 6:
                        return SEAL_TEAM_S;
                    default:
                        return null;
                }
            }

            public static SEAL_MODE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_STOPTION implements ProtocolMessageEnum {
            SEAL_ST_UPDATE(0, 0),
            SEAL_ST_QUERY(1, 1);
            
            public static final int SEAL_ST_QUERY_VALUE = 1;
            public static final int SEAL_ST_UPDATE_VALUE = 0;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_STOPTION> internalValueMap = new a();
            private static final SEAL_STOPTION[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_STOPTION> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_STOPTION findValueByNumber(int i) {
                    return SEAL_STOPTION.valueOf(i);
                }
            }

            SEAL_STOPTION(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_ChannelStateOperate.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<SEAL_STOPTION> internalGetValueMap() {
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

            public static SEAL_STOPTION valueOf(int i) {
                if (i == 0) {
                    return SEAL_ST_UPDATE;
                }
                if (i != 1) {
                    return null;
                }
                return SEAL_ST_QUERY;
            }

            public static SEAL_STOPTION valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_ST_UERR implements ProtocolMessageEnum {
            SEAL_ST_OK(0, 0),
            SEAL_ST_ERROR(1, 1),
            SEAL_ST_EMPTY(2, 2),
            SEAL_ST_FORBIDE(3, 3);
            
            public static final int SEAL_ST_EMPTY_VALUE = 2;
            public static final int SEAL_ST_ERROR_VALUE = 1;
            public static final int SEAL_ST_FORBIDE_VALUE = 3;
            public static final int SEAL_ST_OK_VALUE = 0;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_ST_UERR> internalValueMap = new a();
            private static final SEAL_ST_UERR[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_ST_UERR> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_ST_UERR findValueByNumber(int i) {
                    return SEAL_ST_UERR.valueOf(i);
                }
            }

            SEAL_ST_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_ChannelStateOperate.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SEAL_ST_UERR> internalGetValueMap() {
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

            public static SEAL_ST_UERR valueOf(int i) {
                if (i == 0) {
                    return SEAL_ST_OK;
                }
                if (i == 1) {
                    return SEAL_ST_ERROR;
                }
                if (i == 2) {
                    return SEAL_ST_EMPTY;
                }
                if (i != 3) {
                    return null;
                }
                return SEAL_ST_FORBIDE;
            }

            public static SEAL_ST_UERR valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_ChannelStateOperate> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_ChannelStateOperate parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_ChannelStateOperate.newBuilder();
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
            SEAL_ChannelStateOperate sEAL_ChannelStateOperate = new SEAL_ChannelStateOperate(true);
            defaultInstance = sEAL_ChannelStateOperate;
            sEAL_ChannelStateOperate.initFields();
        }

        /* synthetic */ SEAL_ChannelStateOperate(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_ChannelStateOperate getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.g;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SEAL_ST_UERR.SEAL_ST_OK;
            this.option_ = SEAL_STOPTION.SEAL_ST_UPDATE;
            this.deviceMode_ = SEAL_MODE.SEAL_MODE_NORMAL;
            this.stateMode_ = 0;
            this.ch1_ = SEAL_ChannelInfo.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_ChannelStateOperate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_ChannelStateOperate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public SEAL_ChannelInfo getCh1() {
            return this.ch1_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public SEAL_ChannelInfoOrBuilder getCh1OrBuilder() {
            return this.ch1_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public SEAL_MODE getDeviceMode() {
            return this.deviceMode_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public SEAL_STOPTION getOption() {
            return this.option_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_ChannelStateOperate> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public SEAL_ST_UERR getResult() {
            return this.result_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public int getStateMode() {
            return this.stateMode_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public boolean hasCh1() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public boolean hasDeviceMode() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public boolean hasStateMode() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperateOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.h.ensureFieldAccessorsInitialized(SEAL_ChannelStateOperate.class, Builder.class);
        }

        private SEAL_ChannelStateOperate(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_ChannelStateOperate);
        }

        public static SEAL_ChannelStateOperate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_ChannelStateOperate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_ChannelStateOperate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_ChannelStateOperate getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_ChannelStateOperate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_ChannelStateOperate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_ChannelStateOperate parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_ChannelStateOperate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_ChannelStateOperate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_ChannelStateOperate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_ChannelStateOperateOrBuilder extends MessageOrBuilder {
        SEAL_ChannelInfo getCh1();

        SEAL_ChannelInfoOrBuilder getCh1OrBuilder();

        SEAL_ChannelStateOperate.SEAL_MODE getDeviceMode();

        SEAL_ChannelStateOperate.SEAL_STOPTION getOption();

        SEAL_ChannelStateOperate.SEAL_ST_UERR getResult();

        int getStateMode();

        int getVersion();

        boolean hasCh1();

        boolean hasDeviceMode();

        boolean hasOption();

        boolean hasResult();

        boolean hasStateMode();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_Connect extends GeneratedMessage implements SEAL_ConnectOrBuilder {
        public static final int APPMODE_FIELD_NUMBER = 5;
        public static final int COLOR_FIELD_NUMBER = 7;
        public static final int CONNCODE_FIELD_NUMBER = 2;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static final int DEVICETYPE_FIELD_NUMBER = 4;
        public static final int LANGUAGE_FIELD_NUMBER = 6;
        public static Parser<SEAL_Connect> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_Connect defaultInstance;
        private SEAL_APPTYPE appMode_;
        private int bitField0_;
        private int color_;
        private SEAL_CONNCODE connCode_;
        private int deviceId_;
        private int deviceType_;
        private SEAL_LANGUAGETYPE language_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_ConnectOrBuilder {
            private SEAL_APPTYPE appMode_;
            private int bitField0_;
            private int color_;
            private SEAL_CONNCODE connCode_;
            private int deviceId_;
            private int deviceType_;
            private SEAL_LANGUAGETYPE language_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.f5979a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearAppMode() {
                this.bitField0_ &= -17;
                this.appMode_ = SEAL_APPTYPE.SEAL_OWN_APP;
                onChanged();
                return this;
            }

            public Builder clearColor() {
                this.bitField0_ &= -65;
                this.color_ = 0;
                onChanged();
                return this;
            }

            public Builder clearConnCode() {
                this.bitField0_ &= -3;
                this.connCode_ = SEAL_CONNCODE.SEAL_DISCONNECT;
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

            public Builder clearLanguage() {
                this.bitField0_ &= -33;
                this.language_ = SEAL_LANGUAGETYPE.SEAL_CHINESE;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public SEAL_APPTYPE getAppMode() {
                return this.appMode_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public int getColor() {
                return this.color_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public SEAL_CONNCODE getConnCode() {
                return this.connCode_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SealProtos.f5979a;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public int getDeviceId() {
                return this.deviceId_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public int getDeviceType() {
                return this.deviceType_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public SEAL_LANGUAGETYPE getLanguage() {
                return this.language_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public boolean hasAppMode() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public boolean hasColor() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public boolean hasConnCode() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public boolean hasDeviceType() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public boolean hasLanguage() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.f5980b.ensureFieldAccessorsInitialized(SEAL_Connect.class, Builder.class);
            }

            public Builder setAppMode(SEAL_APPTYPE seal_apptype) {
                if (seal_apptype != null) {
                    this.bitField0_ |= 16;
                    this.appMode_ = seal_apptype;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setColor(int i) {
                this.bitField0_ |= 64;
                this.color_ = i;
                onChanged();
                return this;
            }

            public Builder setConnCode(SEAL_CONNCODE seal_conncode) {
                if (seal_conncode != null) {
                    this.bitField0_ |= 2;
                    this.connCode_ = seal_conncode;
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

            public Builder setLanguage(SEAL_LANGUAGETYPE seal_languagetype) {
                if (seal_languagetype != null) {
                    this.bitField0_ |= 32;
                    this.language_ = seal_languagetype;
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
                this.connCode_ = SEAL_CONNCODE.SEAL_DISCONNECT;
                this.appMode_ = SEAL_APPTYPE.SEAL_OWN_APP;
                this.language_ = SEAL_LANGUAGETYPE.SEAL_CHINESE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_Connect build() {
                SEAL_Connect buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_Connect buildPartial() {
                SEAL_Connect sEAL_Connect = new SEAL_Connect(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_Connect.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_Connect.connCode_ = this.connCode_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_Connect.deviceId_ = this.deviceId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sEAL_Connect.deviceType_ = this.deviceType_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sEAL_Connect.appMode_ = this.appMode_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                sEAL_Connect.language_ = this.language_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                sEAL_Connect.color_ = this.color_;
                sEAL_Connect.bitField0_ = i2;
                onBuilt();
                return sEAL_Connect;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_Connect getDefaultInstanceForType() {
                return SEAL_Connect.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.connCode_ = SEAL_CONNCODE.SEAL_DISCONNECT;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.deviceId_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.deviceType_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.appMode_ = SEAL_APPTYPE.SEAL_OWN_APP;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.language_ = SEAL_LANGUAGETYPE.SEAL_CHINESE;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.color_ = 0;
                this.bitField0_ = i6 & (-65);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.connCode_ = SEAL_CONNCODE.SEAL_DISCONNECT;
                this.appMode_ = SEAL_APPTYPE.SEAL_OWN_APP;
                this.language_ = SEAL_LANGUAGETYPE.SEAL_CHINESE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_APPTYPE implements ProtocolMessageEnum {
            SEAL_OWN_APP(0, 0),
            SEAL_MIJIA_APP(1, 1);
            
            public static final int SEAL_MIJIA_APP_VALUE = 1;
            public static final int SEAL_OWN_APP_VALUE = 0;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_APPTYPE> internalValueMap = new a();
            private static final SEAL_APPTYPE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_APPTYPE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_APPTYPE findValueByNumber(int i) {
                    return SEAL_APPTYPE.valueOf(i);
                }
            }

            SEAL_APPTYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_Connect.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SEAL_APPTYPE> internalGetValueMap() {
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

            public static SEAL_APPTYPE valueOf(int i) {
                if (i == 0) {
                    return SEAL_OWN_APP;
                }
                if (i != 1) {
                    return null;
                }
                return SEAL_MIJIA_APP;
            }

            public static SEAL_APPTYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_LANGUAGETYPE implements ProtocolMessageEnum {
            SEAL_CHINESE(0, 0),
            SEAL_ENGLISH(1, 1);
            
            public static final int SEAL_CHINESE_VALUE = 0;
            public static final int SEAL_ENGLISH_VALUE = 1;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_LANGUAGETYPE> internalValueMap = new a();
            private static final SEAL_LANGUAGETYPE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_LANGUAGETYPE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_LANGUAGETYPE findValueByNumber(int i) {
                    return SEAL_LANGUAGETYPE.valueOf(i);
                }
            }

            SEAL_LANGUAGETYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_Connect.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<SEAL_LANGUAGETYPE> internalGetValueMap() {
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

            public static SEAL_LANGUAGETYPE valueOf(int i) {
                if (i == 0) {
                    return SEAL_CHINESE;
                }
                if (i != 1) {
                    return null;
                }
                return SEAL_ENGLISH;
            }

            public static SEAL_LANGUAGETYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_Connect> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_Connect parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_Connect.newBuilder();
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
            SEAL_Connect sEAL_Connect = new SEAL_Connect(true);
            defaultInstance = sEAL_Connect;
            sEAL_Connect.initFields();
        }

        /* synthetic */ SEAL_Connect(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_Connect getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.f5979a;
        }

        private void initFields() {
            this.version_ = 0;
            this.connCode_ = SEAL_CONNCODE.SEAL_DISCONNECT;
            this.deviceId_ = 0;
            this.deviceType_ = 0;
            this.appMode_ = SEAL_APPTYPE.SEAL_OWN_APP;
            this.language_ = SEAL_LANGUAGETYPE.SEAL_CHINESE;
            this.color_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_Connect parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_Connect parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public SEAL_APPTYPE getAppMode() {
            return this.appMode_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public int getColor() {
            return this.color_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public SEAL_CONNCODE getConnCode() {
            return this.connCode_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public int getDeviceId() {
            return this.deviceId_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public int getDeviceType() {
            return this.deviceType_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public SEAL_LANGUAGETYPE getLanguage() {
            return this.language_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_Connect> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public boolean hasAppMode() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public boolean hasColor() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public boolean hasConnCode() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public boolean hasDeviceType() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public boolean hasLanguage() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_ConnectOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.f5980b.ensureFieldAccessorsInitialized(SEAL_Connect.class, Builder.class);
        }

        private SEAL_Connect(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_Connect sEAL_Connect) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_Connect);
        }

        public static SEAL_Connect parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_Connect parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_Connect parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_Connect getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_Connect(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_Connect parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_Connect parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_Connect parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_Connect parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_Connect parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_ConnectOrBuilder extends MessageOrBuilder {
        SEAL_Connect.SEAL_APPTYPE getAppMode();

        int getColor();

        SEAL_CONNCODE getConnCode();

        int getDeviceId();

        int getDeviceType();

        SEAL_Connect.SEAL_LANGUAGETYPE getLanguage();

        int getVersion();

        boolean hasAppMode();

        boolean hasColor();

        boolean hasConnCode();

        boolean hasDeviceId();

        boolean hasDeviceType();

        boolean hasLanguage();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_DeviceParam extends GeneratedMessage implements SEAL_DeviceParamOrBuilder {
        public static final int ACTIVATE_FIELD_NUMBER = 9;
        public static final int BLENAME_FIELD_NUMBER = 7;
        public static final int BTAUDIO_FIELD_NUMBER = 11;
        public static final int CHARGE_FIELD_NUMBER = 8;
        public static final int CH_FIELD_NUMBER = 12;
        public static final int DEVICENAME_FIELD_NUMBER = 6;
        public static final int FULLINQUIRY_FIELD_NUMBER = 3;
        public static final int ISALLPUBLIC_FIELD_NUMBER = 14;
        public static Parser<SEAL_DeviceParam> PARSER = new a();
        public static final int PWSAVEMODE_FIELD_NUMBER = 15;
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int SHARELOC_FIELD_NUMBER = 10;
        public static final int VERHW_FIELD_NUMBER = 4;
        public static final int VERSION_FIELD_NUMBER = 1;
        public static final int VERSOFT_FIELD_NUMBER = 5;
        public static final int VOICEALERT_FIELD_NUMBER = 13;
        public static final int VOICETYPE_FIELD_NUMBER = 16;
        private static final SEAL_DeviceParam defaultInstance;
        private int activate_;
        private int bitField0_;
        private ByteString bleName_;
        private int btAudio_;
        private SEAL_ChannelInfo ch_;
        private int charge_;
        private ByteString deviceName_;
        private SEAL_SWITCH fullInquiry_;
        private SEAL_SWITCH isAllPublic_;
        private int pwsaveMode_;
        private SEAL_DEV_UERR result_;
        private SEAL_SWITCH shareLoc_;
        private final UnknownFieldSet unknownFields;
        private int verHw_;
        private int verSoft_;
        private int version_;
        private SEAL_SWITCH voiceAlert_;
        private SEAL_VOICETYPE voiceType_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_DeviceParamOrBuilder {
            private int activate_;
            private int bitField0_;
            private ByteString bleName_;
            private int btAudio_;
            private SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> chBuilder_;
            private SEAL_ChannelInfo ch_;
            private int charge_;
            private ByteString deviceName_;
            private SEAL_SWITCH fullInquiry_;
            private SEAL_SWITCH isAllPublic_;
            private int pwsaveMode_;
            private SEAL_DEV_UERR result_;
            private SEAL_SWITCH shareLoc_;
            private int verHw_;
            private int verSoft_;
            private int version_;
            private SEAL_SWITCH voiceAlert_;
            private SEAL_VOICETYPE voiceType_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> getChFieldBuilder() {
                if (this.chBuilder_ == null) {
                    this.chBuilder_ = new SingleFieldBuilder<>(getCh(), getParentForChildren(), isClean());
                    this.ch_ = null;
                }
                return this.chBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.e;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getChFieldBuilder();
                }
            }

            public Builder clearActivate() {
                this.bitField0_ &= -257;
                this.activate_ = 0;
                onChanged();
                return this;
            }

            public Builder clearBleName() {
                this.bitField0_ &= -65;
                this.bleName_ = SEAL_DeviceParam.getDefaultInstance().getBleName();
                onChanged();
                return this;
            }

            public Builder clearBtAudio() {
                this.bitField0_ &= -1025;
                this.btAudio_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCh() {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -2049;
                return this;
            }

            public Builder clearCharge() {
                this.bitField0_ &= -129;
                this.charge_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDeviceName() {
                this.bitField0_ &= -33;
                this.deviceName_ = SEAL_DeviceParam.getDefaultInstance().getDeviceName();
                onChanged();
                return this;
            }

            public Builder clearFullInquiry() {
                this.bitField0_ &= -5;
                this.fullInquiry_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }

            public Builder clearIsAllPublic() {
                this.bitField0_ &= -8193;
                this.isAllPublic_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }

            public Builder clearPwsaveMode() {
                this.bitField0_ &= -16385;
                this.pwsaveMode_ = 0;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK;
                onChanged();
                return this;
            }

            public Builder clearShareLoc() {
                this.bitField0_ &= -513;
                this.shareLoc_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }

            public Builder clearVerHw() {
                this.bitField0_ &= -9;
                this.verHw_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVerSoft() {
                this.bitField0_ &= -17;
                this.verSoft_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVoiceAlert() {
                this.bitField0_ &= -4097;
                this.voiceAlert_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }

            public Builder clearVoiceType() {
                this.bitField0_ &= -32769;
                this.voiceType_ = SEAL_VOICETYPE.SEAL_VOICETYPE_CLOSE;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public int getActivate() {
                return this.activate_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public ByteString getBleName() {
                return this.bleName_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public int getBtAudio() {
                return this.btAudio_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public SEAL_ChannelInfo getCh() {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    return this.ch_;
                }
                return singleFieldBuilder.getMessage();
            }

            public SEAL_ChannelInfo.Builder getChBuilder() {
                this.bitField0_ |= 2048;
                onChanged();
                return getChFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public SEAL_ChannelInfoOrBuilder getChOrBuilder() {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public int getCharge() {
                return this.charge_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SealProtos.e;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public ByteString getDeviceName() {
                return this.deviceName_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public SEAL_SWITCH getFullInquiry() {
                return this.fullInquiry_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public SEAL_SWITCH getIsAllPublic() {
                return this.isAllPublic_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public int getPwsaveMode() {
                return this.pwsaveMode_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public SEAL_DEV_UERR getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public SEAL_SWITCH getShareLoc() {
                return this.shareLoc_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public int getVerHw() {
                return this.verHw_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public int getVerSoft() {
                return this.verSoft_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public SEAL_SWITCH getVoiceAlert() {
                return this.voiceAlert_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public SEAL_VOICETYPE getVoiceType() {
                return this.voiceType_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasActivate() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasBleName() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasBtAudio() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasCh() {
                return (this.bitField0_ & 2048) == 2048;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasCharge() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasDeviceName() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasFullInquiry() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasIsAllPublic() {
                return (this.bitField0_ & 8192) == 8192;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasPwsaveMode() {
                return (this.bitField0_ & 16384) == 16384;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasShareLoc() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasVerHw() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasVerSoft() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasVoiceAlert() {
                return (this.bitField0_ & 4096) == 4096;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
            public boolean hasVoiceType() {
                return (this.bitField0_ & 32768) == 32768;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.f.ensureFieldAccessorsInitialized(SEAL_DeviceParam.class, Builder.class);
            }

            public Builder mergeCh(SEAL_ChannelInfo sEAL_ChannelInfo) {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2048) != 2048 || this.ch_ == SEAL_ChannelInfo.getDefaultInstance()) {
                        this.ch_ = sEAL_ChannelInfo;
                    } else {
                        this.ch_ = ((SEAL_ChannelInfo.Builder) SEAL_ChannelInfo.newBuilder(this.ch_).mergeFrom((Message) sEAL_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(sEAL_ChannelInfo);
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder setActivate(int i) {
                this.bitField0_ |= 256;
                this.activate_ = i;
                onChanged();
                return this;
            }

            public Builder setBleName(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 64;
                    this.bleName_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setBtAudio(int i) {
                this.bitField0_ |= 1024;
                this.btAudio_ = i;
                onChanged();
                return this;
            }

            public Builder setCh(SEAL_ChannelInfo sEAL_ChannelInfo) {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(sEAL_ChannelInfo);
                } else if (sEAL_ChannelInfo != null) {
                    this.ch_ = sEAL_ChannelInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder setCharge(int i) {
                this.bitField0_ |= 128;
                this.charge_ = i;
                onChanged();
                return this;
            }

            public Builder setDeviceName(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 32;
                    this.deviceName_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setFullInquiry(SEAL_SWITCH seal_switch) {
                if (seal_switch != null) {
                    this.bitField0_ |= 4;
                    this.fullInquiry_ = seal_switch;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setIsAllPublic(SEAL_SWITCH seal_switch) {
                if (seal_switch != null) {
                    this.bitField0_ |= 8192;
                    this.isAllPublic_ = seal_switch;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setPwsaveMode(int i) {
                this.bitField0_ |= 16384;
                this.pwsaveMode_ = i;
                onChanged();
                return this;
            }

            public Builder setResult(SEAL_DEV_UERR seal_dev_uerr) {
                if (seal_dev_uerr != null) {
                    this.bitField0_ |= 2;
                    this.result_ = seal_dev_uerr;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setShareLoc(SEAL_SWITCH seal_switch) {
                if (seal_switch != null) {
                    this.bitField0_ |= 512;
                    this.shareLoc_ = seal_switch;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setVerHw(int i) {
                this.bitField0_ |= 8;
                this.verHw_ = i;
                onChanged();
                return this;
            }

            public Builder setVerSoft(int i) {
                this.bitField0_ |= 16;
                this.verSoft_ = i;
                onChanged();
                return this;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            public Builder setVoiceAlert(SEAL_SWITCH seal_switch) {
                if (seal_switch != null) {
                    this.bitField0_ |= 4096;
                    this.voiceAlert_ = seal_switch;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setVoiceType(SEAL_VOICETYPE seal_voicetype) {
                if (seal_voicetype != null) {
                    this.bitField0_ |= 32768;
                    this.voiceType_ = seal_voicetype;
                    onChanged();
                    return this;
                }
                throw null;
            }

            private Builder() {
                this.result_ = SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK;
                this.fullInquiry_ = SEAL_SWITCH.SEAL_OFF;
                ByteString byteString = ByteString.EMPTY;
                this.deviceName_ = byteString;
                this.bleName_ = byteString;
                this.shareLoc_ = SEAL_SWITCH.SEAL_OFF;
                this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                SEAL_SWITCH seal_switch = SEAL_SWITCH.SEAL_OFF;
                this.voiceAlert_ = seal_switch;
                this.isAllPublic_ = seal_switch;
                this.voiceType_ = SEAL_VOICETYPE.SEAL_VOICETYPE_CLOSE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_DeviceParam build() {
                SEAL_DeviceParam buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_DeviceParam buildPartial() {
                SEAL_DeviceParam sEAL_DeviceParam = new SEAL_DeviceParam(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_DeviceParam.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_DeviceParam.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_DeviceParam.fullInquiry_ = this.fullInquiry_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sEAL_DeviceParam.verHw_ = this.verHw_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sEAL_DeviceParam.verSoft_ = this.verSoft_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                sEAL_DeviceParam.deviceName_ = this.deviceName_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                sEAL_DeviceParam.bleName_ = this.bleName_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                sEAL_DeviceParam.charge_ = this.charge_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                sEAL_DeviceParam.activate_ = this.activate_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                sEAL_DeviceParam.shareLoc_ = this.shareLoc_;
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                sEAL_DeviceParam.btAudio_ = this.btAudio_;
                if ((i & 2048) == 2048) {
                    i2 |= 2048;
                }
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    sEAL_DeviceParam.ch_ = this.ch_;
                } else {
                    sEAL_DeviceParam.ch_ = singleFieldBuilder.build();
                }
                if ((i & 4096) == 4096) {
                    i2 |= 4096;
                }
                sEAL_DeviceParam.voiceAlert_ = this.voiceAlert_;
                if ((i & 8192) == 8192) {
                    i2 |= 8192;
                }
                sEAL_DeviceParam.isAllPublic_ = this.isAllPublic_;
                if ((i & 16384) == 16384) {
                    i2 |= 16384;
                }
                sEAL_DeviceParam.pwsaveMode_ = this.pwsaveMode_;
                if ((i & 32768) == 32768) {
                    i2 |= 32768;
                }
                sEAL_DeviceParam.voiceType_ = this.voiceType_;
                sEAL_DeviceParam.bitField0_ = i2;
                onBuilt();
                return sEAL_DeviceParam;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_DeviceParam getDefaultInstanceForType() {
                return SEAL_DeviceParam.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.fullInquiry_ = SEAL_SWITCH.SEAL_OFF;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.verHw_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.verSoft_ = 0;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                ByteString byteString = ByteString.EMPTY;
                this.deviceName_ = byteString;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.bleName_ = byteString;
                int i7 = i6 & (-65);
                this.bitField0_ = i7;
                this.charge_ = 0;
                int i8 = i7 & (-129);
                this.bitField0_ = i8;
                this.activate_ = 0;
                int i9 = i8 & (-257);
                this.bitField0_ = i9;
                this.shareLoc_ = SEAL_SWITCH.SEAL_OFF;
                int i10 = i9 & (-513);
                this.bitField0_ = i10;
                this.btAudio_ = 0;
                this.bitField0_ = i10 & (-1025);
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                int i11 = this.bitField0_ & (-2049);
                this.bitField0_ = i11;
                SEAL_SWITCH seal_switch = SEAL_SWITCH.SEAL_OFF;
                this.voiceAlert_ = seal_switch;
                int i12 = i11 & (-4097);
                this.bitField0_ = i12;
                this.isAllPublic_ = seal_switch;
                int i13 = i12 & (-8193);
                this.bitField0_ = i13;
                this.pwsaveMode_ = 0;
                int i14 = i13 & (-16385);
                this.bitField0_ = i14;
                this.voiceType_ = SEAL_VOICETYPE.SEAL_VOICETYPE_CLOSE;
                this.bitField0_ = i14 & (-32769);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setCh(SEAL_ChannelInfo.Builder builder) {
                SingleFieldBuilder<SEAL_ChannelInfo, SEAL_ChannelInfo.Builder, SEAL_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    this.ch_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2048;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK;
                this.fullInquiry_ = SEAL_SWITCH.SEAL_OFF;
                ByteString byteString = ByteString.EMPTY;
                this.deviceName_ = byteString;
                this.bleName_ = byteString;
                this.shareLoc_ = SEAL_SWITCH.SEAL_OFF;
                this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                SEAL_SWITCH seal_switch = SEAL_SWITCH.SEAL_OFF;
                this.voiceAlert_ = seal_switch;
                this.isAllPublic_ = seal_switch;
                this.voiceType_ = SEAL_VOICETYPE.SEAL_VOICETYPE_CLOSE;
                maybeForceBuilderInitialization();
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_DEV_UERR implements ProtocolMessageEnum {
            SEAL_PARAM_QUERY_OK(0, 1),
            SEAL_PARAM_QUERY_ERROR(1, 2),
            SEAL_PARAM_UPDATE_OK(2, 3),
            SEAL_PARAM_UPDATE_ERROR(3, 4);
            
            public static final int SEAL_PARAM_QUERY_ERROR_VALUE = 2;
            public static final int SEAL_PARAM_QUERY_OK_VALUE = 1;
            public static final int SEAL_PARAM_UPDATE_ERROR_VALUE = 4;
            public static final int SEAL_PARAM_UPDATE_OK_VALUE = 3;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_DEV_UERR> internalValueMap = new a();
            private static final SEAL_DEV_UERR[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_DEV_UERR> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_DEV_UERR findValueByNumber(int i) {
                    return SEAL_DEV_UERR.valueOf(i);
                }
            }

            SEAL_DEV_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_DeviceParam.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SEAL_DEV_UERR> internalGetValueMap() {
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

            public static SEAL_DEV_UERR valueOf(int i) {
                if (i == 1) {
                    return SEAL_PARAM_QUERY_OK;
                }
                if (i == 2) {
                    return SEAL_PARAM_QUERY_ERROR;
                }
                if (i == 3) {
                    return SEAL_PARAM_UPDATE_OK;
                }
                if (i != 4) {
                    return null;
                }
                return SEAL_PARAM_UPDATE_ERROR;
            }

            public static SEAL_DEV_UERR valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_VOICETYPE implements ProtocolMessageEnum {
            SEAL_VOICETYPE_CLOSE(0, 1),
            SEAL_VOICETYPE_CHINESE(1, 2),
            SEAL_VOICETYPE_ENGLISH(2, 3);
            
            public static final int SEAL_VOICETYPE_CHINESE_VALUE = 2;
            public static final int SEAL_VOICETYPE_CLOSE_VALUE = 1;
            public static final int SEAL_VOICETYPE_ENGLISH_VALUE = 3;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_VOICETYPE> internalValueMap = new a();
            private static final SEAL_VOICETYPE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_VOICETYPE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_VOICETYPE findValueByNumber(int i) {
                    return SEAL_VOICETYPE.valueOf(i);
                }
            }

            SEAL_VOICETYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_DeviceParam.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<SEAL_VOICETYPE> internalGetValueMap() {
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

            public static SEAL_VOICETYPE valueOf(int i) {
                if (i == 1) {
                    return SEAL_VOICETYPE_CLOSE;
                }
                if (i == 2) {
                    return SEAL_VOICETYPE_CHINESE;
                }
                if (i != 3) {
                    return null;
                }
                return SEAL_VOICETYPE_ENGLISH;
            }

            public static SEAL_VOICETYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_DeviceParam> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_DeviceParam parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_DeviceParam.newBuilder();
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
            SEAL_DeviceParam sEAL_DeviceParam = new SEAL_DeviceParam(true);
            defaultInstance = sEAL_DeviceParam;
            sEAL_DeviceParam.initFields();
        }

        /* synthetic */ SEAL_DeviceParam(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_DeviceParam getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.e;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK;
            this.fullInquiry_ = SEAL_SWITCH.SEAL_OFF;
            this.verHw_ = 0;
            this.verSoft_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.deviceName_ = byteString;
            this.bleName_ = byteString;
            this.charge_ = 0;
            this.activate_ = 0;
            this.shareLoc_ = SEAL_SWITCH.SEAL_OFF;
            this.btAudio_ = 0;
            this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
            SEAL_SWITCH seal_switch = SEAL_SWITCH.SEAL_OFF;
            this.voiceAlert_ = seal_switch;
            this.isAllPublic_ = seal_switch;
            this.pwsaveMode_ = 0;
            this.voiceType_ = SEAL_VOICETYPE.SEAL_VOICETYPE_CLOSE;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_DeviceParam parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_DeviceParam parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public int getActivate() {
            return this.activate_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public ByteString getBleName() {
            return this.bleName_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public int getBtAudio() {
            return this.btAudio_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public SEAL_ChannelInfo getCh() {
            return this.ch_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public SEAL_ChannelInfoOrBuilder getChOrBuilder() {
            return this.ch_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public int getCharge() {
            return this.charge_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public ByteString getDeviceName() {
            return this.deviceName_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public SEAL_SWITCH getFullInquiry() {
            return this.fullInquiry_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public SEAL_SWITCH getIsAllPublic() {
            return this.isAllPublic_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_DeviceParam> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public int getPwsaveMode() {
            return this.pwsaveMode_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public SEAL_DEV_UERR getResult() {
            return this.result_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public SEAL_SWITCH getShareLoc() {
            return this.shareLoc_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public int getVerHw() {
            return this.verHw_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public int getVerSoft() {
            return this.verSoft_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public SEAL_SWITCH getVoiceAlert() {
            return this.voiceAlert_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public SEAL_VOICETYPE getVoiceType() {
            return this.voiceType_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasActivate() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasBleName() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasBtAudio() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasCh() {
            return (this.bitField0_ & 2048) == 2048;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasCharge() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasDeviceName() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasFullInquiry() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasIsAllPublic() {
            return (this.bitField0_ & 8192) == 8192;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasPwsaveMode() {
            return (this.bitField0_ & 16384) == 16384;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasShareLoc() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasVerHw() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasVerSoft() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasVoiceAlert() {
            return (this.bitField0_ & 4096) == 4096;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParamOrBuilder
        public boolean hasVoiceType() {
            return (this.bitField0_ & 32768) == 32768;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.f.ensureFieldAccessorsInitialized(SEAL_DeviceParam.class, Builder.class);
        }

        private SEAL_DeviceParam(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_DeviceParam sEAL_DeviceParam) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_DeviceParam);
        }

        public static SEAL_DeviceParam parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_DeviceParam parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_DeviceParam parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_DeviceParam getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_DeviceParam(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_DeviceParam parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_DeviceParam parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_DeviceParam parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_DeviceParam parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_DeviceParam parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_DeviceParamOrBuilder extends MessageOrBuilder {
        int getActivate();

        ByteString getBleName();

        int getBtAudio();

        SEAL_ChannelInfo getCh();

        SEAL_ChannelInfoOrBuilder getChOrBuilder();

        int getCharge();

        ByteString getDeviceName();

        SEAL_SWITCH getFullInquiry();

        SEAL_SWITCH getIsAllPublic();

        int getPwsaveMode();

        SEAL_DeviceParam.SEAL_DEV_UERR getResult();

        SEAL_SWITCH getShareLoc();

        int getVerHw();

        int getVerSoft();

        int getVersion();

        SEAL_SWITCH getVoiceAlert();

        SEAL_DeviceParam.SEAL_VOICETYPE getVoiceType();

        boolean hasActivate();

        boolean hasBleName();

        boolean hasBtAudio();

        boolean hasCh();

        boolean hasCharge();

        boolean hasDeviceName();

        boolean hasFullInquiry();

        boolean hasIsAllPublic();

        boolean hasPwsaveMode();

        boolean hasResult();

        boolean hasShareLoc();

        boolean hasVerHw();

        boolean hasVerSoft();

        boolean hasVersion();

        boolean hasVoiceAlert();

        boolean hasVoiceType();
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_LocationInfo extends GeneratedMessage implements SEAL_LocationInfoOrBuilder {
        public static final int ALTITUDE_FIELD_NUMBER = 8;
        public static final int CTLSYNC_FIELD_NUMBER = 2;
        public static final int LATITUDE_FIELD_NUMBER = 7;
        public static final int LONGITUDE_FIELD_NUMBER = 6;
        public static Parser<SEAL_LocationInfo> PARSER = new a();
        public static final int RXCSS_FIELD_NUMBER = 10;
        public static final int TIMESYNC_FIELD_NUMBER = 9;
        public static final int USERFREQ_FIELD_NUMBER = 5;
        public static final int USERID_FIELD_NUMBER = 3;
        public static final int USERNAME_FIELD_NUMBER = 4;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_LocationInfo defaultInstance;
        private int altitude_;
        private int bitField0_;
        private SEAL_SWITCH ctlsync_;
        private int latitude_;
        private int longitude_;
        private int rxCss_;
        private int timeSync_;
        private final UnknownFieldSet unknownFields;
        private int userFreq_;
        private int userId_;
        private ByteString userName_;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_LocationInfoOrBuilder {
            private int altitude_;
            private int bitField0_;
            private SEAL_SWITCH ctlsync_;
            private int latitude_;
            private int longitude_;
            private int rxCss_;
            private int timeSync_;
            private int userFreq_;
            private int userId_;
            private ByteString userName_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.k;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearAltitude() {
                this.bitField0_ &= -129;
                this.altitude_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCtlsync() {
                this.bitField0_ &= -3;
                this.ctlsync_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }

            public Builder clearLatitude() {
                this.bitField0_ &= -65;
                this.latitude_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLongitude() {
                this.bitField0_ &= -33;
                this.longitude_ = 0;
                onChanged();
                return this;
            }

            public Builder clearRxCss() {
                this.bitField0_ &= -513;
                this.rxCss_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTimeSync() {
                this.bitField0_ &= -257;
                this.timeSync_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUserFreq() {
                this.bitField0_ &= -17;
                this.userFreq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -5;
                this.userId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUserName() {
                this.bitField0_ &= -9;
                this.userName_ = SEAL_LocationInfo.getDefaultInstance().getUserName();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public int getAltitude() {
                return this.altitude_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public SEAL_SWITCH getCtlsync() {
                return this.ctlsync_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SealProtos.k;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public int getLatitude() {
                return this.latitude_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public int getLongitude() {
                return this.longitude_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public int getRxCss() {
                return this.rxCss_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public int getTimeSync() {
                return this.timeSync_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public int getUserFreq() {
                return this.userFreq_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public int getUserId() {
                return this.userId_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public ByteString getUserName() {
                return this.userName_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public boolean hasAltitude() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public boolean hasCtlsync() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public boolean hasLatitude() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public boolean hasLongitude() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public boolean hasRxCss() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public boolean hasTimeSync() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public boolean hasUserFreq() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public boolean hasUserId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public boolean hasUserName() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.l.ensureFieldAccessorsInitialized(SEAL_LocationInfo.class, Builder.class);
            }

            public Builder setAltitude(int i) {
                this.bitField0_ |= 128;
                this.altitude_ = i;
                onChanged();
                return this;
            }

            public Builder setCtlsync(SEAL_SWITCH seal_switch) {
                if (seal_switch != null) {
                    this.bitField0_ |= 2;
                    this.ctlsync_ = seal_switch;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setLatitude(int i) {
                this.bitField0_ |= 64;
                this.latitude_ = i;
                onChanged();
                return this;
            }

            public Builder setLongitude(int i) {
                this.bitField0_ |= 32;
                this.longitude_ = i;
                onChanged();
                return this;
            }

            public Builder setRxCss(int i) {
                this.bitField0_ |= 512;
                this.rxCss_ = i;
                onChanged();
                return this;
            }

            public Builder setTimeSync(int i) {
                this.bitField0_ |= 256;
                this.timeSync_ = i;
                onChanged();
                return this;
            }

            public Builder setUserFreq(int i) {
                this.bitField0_ |= 16;
                this.userFreq_ = i;
                onChanged();
                return this;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 4;
                this.userId_ = i;
                onChanged();
                return this;
            }

            public Builder setUserName(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 8;
                    this.userName_ = byteString;
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
                this.ctlsync_ = SEAL_SWITCH.SEAL_OFF;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_LocationInfo build() {
                SEAL_LocationInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_LocationInfo buildPartial() {
                SEAL_LocationInfo sEAL_LocationInfo = new SEAL_LocationInfo(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_LocationInfo.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_LocationInfo.ctlsync_ = this.ctlsync_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_LocationInfo.userId_ = this.userId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sEAL_LocationInfo.userName_ = this.userName_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sEAL_LocationInfo.userFreq_ = this.userFreq_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                sEAL_LocationInfo.longitude_ = this.longitude_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                sEAL_LocationInfo.latitude_ = this.latitude_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                sEAL_LocationInfo.altitude_ = this.altitude_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                sEAL_LocationInfo.timeSync_ = this.timeSync_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                sEAL_LocationInfo.rxCss_ = this.rxCss_;
                sEAL_LocationInfo.bitField0_ = i2;
                onBuilt();
                return sEAL_LocationInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_LocationInfo getDefaultInstanceForType() {
                return SEAL_LocationInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.ctlsync_ = SEAL_SWITCH.SEAL_OFF;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.userId_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.userName_ = ByteString.EMPTY;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.userFreq_ = 0;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.longitude_ = 0;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.latitude_ = 0;
                int i7 = i6 & (-65);
                this.bitField0_ = i7;
                this.altitude_ = 0;
                int i8 = i7 & (-129);
                this.bitField0_ = i8;
                this.timeSync_ = 0;
                int i9 = i8 & (-257);
                this.bitField0_ = i9;
                this.rxCss_ = 0;
                this.bitField0_ = i9 & (-513);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.ctlsync_ = SEAL_SWITCH.SEAL_OFF;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_LocationInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_LocationInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_LocationInfo.newBuilder();
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
            SEAL_LocationInfo sEAL_LocationInfo = new SEAL_LocationInfo(true);
            defaultInstance = sEAL_LocationInfo;
            sEAL_LocationInfo.initFields();
        }

        /* synthetic */ SEAL_LocationInfo(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_LocationInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.k;
        }

        private void initFields() {
            this.version_ = 0;
            this.ctlsync_ = SEAL_SWITCH.SEAL_OFF;
            this.userId_ = 0;
            this.userName_ = ByteString.EMPTY;
            this.userFreq_ = 0;
            this.longitude_ = 0;
            this.latitude_ = 0;
            this.altitude_ = 0;
            this.timeSync_ = 0;
            this.rxCss_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_LocationInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_LocationInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public int getAltitude() {
            return this.altitude_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public SEAL_SWITCH getCtlsync() {
            return this.ctlsync_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public int getLatitude() {
            return this.latitude_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public int getLongitude() {
            return this.longitude_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_LocationInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public int getRxCss() {
            return this.rxCss_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public int getTimeSync() {
            return this.timeSync_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public int getUserFreq() {
            return this.userFreq_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public int getUserId() {
            return this.userId_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public ByteString getUserName() {
            return this.userName_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public boolean hasAltitude() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public boolean hasCtlsync() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public boolean hasLatitude() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public boolean hasLongitude() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public boolean hasRxCss() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public boolean hasTimeSync() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public boolean hasUserFreq() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public boolean hasUserId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public boolean hasUserName() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfoOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.l.ensureFieldAccessorsInitialized(SEAL_LocationInfo.class, Builder.class);
        }

        private SEAL_LocationInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_LocationInfo sEAL_LocationInfo) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_LocationInfo);
        }

        public static SEAL_LocationInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_LocationInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_LocationInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_LocationInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_LocationInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_LocationInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_LocationInfo parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_LocationInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_LocationInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_LocationInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_LocationInfoOrBuilder extends MessageOrBuilder {
        int getAltitude();

        SEAL_SWITCH getCtlsync();

        int getLatitude();

        int getLongitude();

        int getRxCss();

        int getTimeSync();

        int getUserFreq();

        int getUserId();

        ByteString getUserName();

        int getVersion();

        boolean hasAltitude();

        boolean hasCtlsync();

        boolean hasLatitude();

        boolean hasLongitude();

        boolean hasRxCss();

        boolean hasTimeSync();

        boolean hasUserFreq();

        boolean hasUserId();

        boolean hasUserName();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public enum SEAL_SWITCH implements ProtocolMessageEnum {
        SEAL_OFF(0, 1),
        SEAL_ON(1, 2);
        
        public static final int SEAL_OFF_VALUE = 1;
        public static final int SEAL_ON_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<SEAL_SWITCH> internalValueMap = new a();
        private static final SEAL_SWITCH[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<SEAL_SWITCH> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public SEAL_SWITCH findValueByNumber(int i) {
                return SEAL_SWITCH.valueOf(i);
            }
        }

        SEAL_SWITCH(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return SealProtos.C().getEnumTypes().get(1);
        }

        public static Internal.EnumLiteMap<SEAL_SWITCH> internalGetValueMap() {
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

        public static SEAL_SWITCH valueOf(int i) {
            if (i == 1) {
                return SEAL_OFF;
            }
            if (i != 2) {
                return null;
            }
            return SEAL_ON;
        }

        public static SEAL_SWITCH valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_UpGradeFilePack extends GeneratedMessage implements SEAL_UpGradeFilePackOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int OFFSET_FIELD_NUMBER = 1;
        public static Parser<SEAL_UpGradeFilePack> PARSER = new a();
        public static final int XOR_FIELD_NUMBER = 3;
        private static final SEAL_UpGradeFilePack defaultInstance;
        private int bitField0_;
        private ByteString data_;
        private int offset_;
        private final UnknownFieldSet unknownFields;
        private int xor_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_UpGradeFilePackOrBuilder {
            private int bitField0_;
            private ByteString data_;
            private int offset_;
            private int xor_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.q;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearData() {
                this.bitField0_ &= -3;
                this.data_ = SEAL_UpGradeFilePack.getDefaultInstance().getData();
                onChanged();
                return this;
            }

            public Builder clearOffset() {
                this.bitField0_ &= -2;
                this.offset_ = 0;
                onChanged();
                return this;
            }

            public Builder clearXor() {
                this.bitField0_ &= -5;
                this.xor_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePackOrBuilder
            public ByteString getData() {
                return this.data_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SealProtos.q;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePackOrBuilder
            public int getOffset() {
                return this.offset_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePackOrBuilder
            public int getXor() {
                return this.xor_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePackOrBuilder
            public boolean hasData() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePackOrBuilder
            public boolean hasOffset() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePackOrBuilder
            public boolean hasXor() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.r.ensureFieldAccessorsInitialized(SEAL_UpGradeFilePack.class, Builder.class);
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

            public Builder setXor(int i) {
                this.bitField0_ |= 4;
                this.xor_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_UpGradeFilePack build() {
                SEAL_UpGradeFilePack buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_UpGradeFilePack buildPartial() {
                SEAL_UpGradeFilePack sEAL_UpGradeFilePack = new SEAL_UpGradeFilePack(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_UpGradeFilePack.offset_ = this.offset_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_UpGradeFilePack.data_ = this.data_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_UpGradeFilePack.xor_ = this.xor_;
                sEAL_UpGradeFilePack.bitField0_ = i2;
                onBuilt();
                return sEAL_UpGradeFilePack;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_UpGradeFilePack getDefaultInstanceForType() {
                return SEAL_UpGradeFilePack.getDefaultInstance();
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
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.xor_ = 0;
                this.bitField0_ = i2 & (-5);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_UpGradeFilePack> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_UpGradeFilePack parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_UpGradeFilePack.newBuilder();
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
            SEAL_UpGradeFilePack sEAL_UpGradeFilePack = new SEAL_UpGradeFilePack(true);
            defaultInstance = sEAL_UpGradeFilePack;
            sEAL_UpGradeFilePack.initFields();
        }

        /* synthetic */ SEAL_UpGradeFilePack(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_UpGradeFilePack getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.q;
        }

        private void initFields() {
            this.offset_ = 0;
            this.data_ = ByteString.EMPTY;
            this.xor_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_UpGradeFilePack parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_UpGradeFilePack parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePackOrBuilder
        public ByteString getData() {
            return this.data_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePackOrBuilder
        public int getOffset() {
            return this.offset_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_UpGradeFilePack> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePackOrBuilder
        public int getXor() {
            return this.xor_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePackOrBuilder
        public boolean hasData() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePackOrBuilder
        public boolean hasOffset() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePackOrBuilder
        public boolean hasXor() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.r.ensureFieldAccessorsInitialized(SEAL_UpGradeFilePack.class, Builder.class);
        }

        private SEAL_UpGradeFilePack(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_UpGradeFilePack sEAL_UpGradeFilePack) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_UpGradeFilePack);
        }

        public static SEAL_UpGradeFilePack parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UpGradeFilePack parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_UpGradeFilePack parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_UpGradeFilePack getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_UpGradeFilePack(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_UpGradeFilePack parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_UpGradeFilePack parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_UpGradeFilePack parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UpGradeFilePack parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_UpGradeFilePack parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_UpGradeFilePackOrBuilder extends MessageOrBuilder {
        ByteString getData();

        int getOffset();

        int getXor();

        boolean hasData();

        boolean hasOffset();

        boolean hasXor();
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_UpGradeFileRequest extends GeneratedMessage implements SEAL_UpGradeFileRequestOrBuilder {
        public static final int FCMD_FIELD_NUMBER = 2;
        public static final int FCRC32_FIELD_NUMBER = 5;
        public static final int FSIZE_FIELD_NUMBER = 4;
        public static final int FTYPE_FIELD_NUMBER = 3;
        public static Parser<SEAL_UpGradeFileRequest> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_UpGradeFileRequest defaultInstance;
        private int bitField0_;
        private SEAL_FILECMD fCmd_;
        private int fCrc32_;
        private int fSize_;
        private SEAL_FILETYPE fType_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_UpGradeFileRequestOrBuilder {
            private int bitField0_;
            private SEAL_FILECMD fCmd_;
            private int fCrc32_;
            private int fSize_;
            private SEAL_FILETYPE fType_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.m;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearFCmd() {
                this.bitField0_ &= -3;
                this.fCmd_ = SEAL_FILECMD.SEAL_UP_START;
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
                this.fType_ = SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE;
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
                return SealProtos.m;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
            public SEAL_FILECMD getFCmd() {
                return this.fCmd_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
            public int getFCrc32() {
                return this.fCrc32_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
            public int getFSize() {
                return this.fSize_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
            public SEAL_FILETYPE getFType() {
                return this.fType_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
            public boolean hasFCmd() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
            public boolean hasFCrc32() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
            public boolean hasFSize() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
            public boolean hasFType() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.n.ensureFieldAccessorsInitialized(SEAL_UpGradeFileRequest.class, Builder.class);
            }

            public Builder setFCmd(SEAL_FILECMD seal_filecmd) {
                if (seal_filecmd != null) {
                    this.bitField0_ |= 2;
                    this.fCmd_ = seal_filecmd;
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

            public Builder setFType(SEAL_FILETYPE seal_filetype) {
                if (seal_filetype != null) {
                    this.bitField0_ |= 4;
                    this.fType_ = seal_filetype;
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
                this.fCmd_ = SEAL_FILECMD.SEAL_UP_START;
                this.fType_ = SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_UpGradeFileRequest build() {
                SEAL_UpGradeFileRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_UpGradeFileRequest buildPartial() {
                SEAL_UpGradeFileRequest sEAL_UpGradeFileRequest = new SEAL_UpGradeFileRequest(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_UpGradeFileRequest.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_UpGradeFileRequest.fCmd_ = this.fCmd_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_UpGradeFileRequest.fType_ = this.fType_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sEAL_UpGradeFileRequest.fSize_ = this.fSize_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sEAL_UpGradeFileRequest.fCrc32_ = this.fCrc32_;
                sEAL_UpGradeFileRequest.bitField0_ = i2;
                onBuilt();
                return sEAL_UpGradeFileRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_UpGradeFileRequest getDefaultInstanceForType() {
                return SEAL_UpGradeFileRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.fCmd_ = SEAL_FILECMD.SEAL_UP_START;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.fType_ = SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE;
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
                this.fCmd_ = SEAL_FILECMD.SEAL_UP_START;
                this.fType_ = SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_FILECMD implements ProtocolMessageEnum {
            SEAL_UP_START(0, 1),
            SEAL_UP_COMPLE(1, 2),
            SEAL_UP_REBOOT(2, 3);
            
            public static final int SEAL_UP_COMPLE_VALUE = 2;
            public static final int SEAL_UP_REBOOT_VALUE = 3;
            public static final int SEAL_UP_START_VALUE = 1;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_FILECMD> internalValueMap = new a();
            private static final SEAL_FILECMD[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_FILECMD> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_FILECMD findValueByNumber(int i) {
                    return SEAL_FILECMD.valueOf(i);
                }
            }

            SEAL_FILECMD(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_UpGradeFileRequest.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SEAL_FILECMD> internalGetValueMap() {
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

            public static SEAL_FILECMD valueOf(int i) {
                if (i == 1) {
                    return SEAL_UP_START;
                }
                if (i == 2) {
                    return SEAL_UP_COMPLE;
                }
                if (i != 3) {
                    return null;
                }
                return SEAL_UP_REBOOT;
            }

            public static SEAL_FILECMD valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SEAL_FILETYPE implements ProtocolMessageEnum {
            SEAL_APP_UPGRADE_FILE(0, 1),
            SEAL_MCU_UPLOAD_FILE(1, 2);
            
            public static final int SEAL_APP_UPGRADE_FILE_VALUE = 1;
            public static final int SEAL_MCU_UPLOAD_FILE_VALUE = 2;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_FILETYPE> internalValueMap = new a();
            private static final SEAL_FILETYPE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_FILETYPE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_FILETYPE findValueByNumber(int i) {
                    return SEAL_FILETYPE.valueOf(i);
                }
            }

            SEAL_FILETYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_UpGradeFileRequest.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<SEAL_FILETYPE> internalGetValueMap() {
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

            public static SEAL_FILETYPE valueOf(int i) {
                if (i == 1) {
                    return SEAL_APP_UPGRADE_FILE;
                }
                if (i != 2) {
                    return null;
                }
                return SEAL_MCU_UPLOAD_FILE;
            }

            public static SEAL_FILETYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_UpGradeFileRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_UpGradeFileRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_UpGradeFileRequest.newBuilder();
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
            SEAL_UpGradeFileRequest sEAL_UpGradeFileRequest = new SEAL_UpGradeFileRequest(true);
            defaultInstance = sEAL_UpGradeFileRequest;
            sEAL_UpGradeFileRequest.initFields();
        }

        /* synthetic */ SEAL_UpGradeFileRequest(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_UpGradeFileRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.m;
        }

        private void initFields() {
            this.version_ = 0;
            this.fCmd_ = SEAL_FILECMD.SEAL_UP_START;
            this.fType_ = SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE;
            this.fSize_ = 0;
            this.fCrc32_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_UpGradeFileRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_UpGradeFileRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
        public SEAL_FILECMD getFCmd() {
            return this.fCmd_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
        public int getFCrc32() {
            return this.fCrc32_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
        public int getFSize() {
            return this.fSize_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
        public SEAL_FILETYPE getFType() {
            return this.fType_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_UpGradeFileRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
        public boolean hasFCmd() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
        public boolean hasFCrc32() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
        public boolean hasFSize() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
        public boolean hasFType() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.n.ensureFieldAccessorsInitialized(SEAL_UpGradeFileRequest.class, Builder.class);
        }

        private SEAL_UpGradeFileRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_UpGradeFileRequest sEAL_UpGradeFileRequest) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_UpGradeFileRequest);
        }

        public static SEAL_UpGradeFileRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_UpGradeFileRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_UpGradeFileRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_UpGradeFileRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_UpGradeFileRequest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_UpGradeFileRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_UpGradeFileRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_UpGradeFileRequestOrBuilder extends MessageOrBuilder {
        SEAL_UpGradeFileRequest.SEAL_FILECMD getFCmd();

        int getFCrc32();

        int getFSize();

        SEAL_UpGradeFileRequest.SEAL_FILETYPE getFType();

        int getVersion();

        boolean hasFCmd();

        boolean hasFCrc32();

        boolean hasFSize();

        boolean hasFType();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_UpGradeFileResponse extends GeneratedMessage implements SEAL_UpGradeFileResponseOrBuilder {
        public static final int OFFSET_FIELD_NUMBER = 2;
        public static Parser<SEAL_UpGradeFileResponse> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 1;
        private static final SEAL_UpGradeFileResponse defaultInstance;
        private int bitField0_;
        private int offset_;
        private SEAL_UP_UERR result_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_UpGradeFileResponseOrBuilder {
            private int bitField0_;
            private int offset_;
            private SEAL_UP_UERR result_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.o;
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
                this.result_ = SEAL_UP_UERR.SEAL_UP_RESULT_OK;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SealProtos.o;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileResponseOrBuilder
            public int getOffset() {
                return this.offset_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileResponseOrBuilder
            public SEAL_UP_UERR getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileResponseOrBuilder
            public boolean hasOffset() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.p.ensureFieldAccessorsInitialized(SEAL_UpGradeFileResponse.class, Builder.class);
            }

            public Builder setOffset(int i) {
                this.bitField0_ |= 2;
                this.offset_ = i;
                onChanged();
                return this;
            }

            public Builder setResult(SEAL_UP_UERR seal_up_uerr) {
                if (seal_up_uerr != null) {
                    this.bitField0_ |= 1;
                    this.result_ = seal_up_uerr;
                    onChanged();
                    return this;
                }
                throw null;
            }

            private Builder() {
                this.result_ = SEAL_UP_UERR.SEAL_UP_RESULT_OK;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_UpGradeFileResponse build() {
                SEAL_UpGradeFileResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_UpGradeFileResponse buildPartial() {
                SEAL_UpGradeFileResponse sEAL_UpGradeFileResponse = new SEAL_UpGradeFileResponse(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_UpGradeFileResponse.result_ = this.result_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_UpGradeFileResponse.offset_ = this.offset_;
                sEAL_UpGradeFileResponse.bitField0_ = i2;
                onBuilt();
                return sEAL_UpGradeFileResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_UpGradeFileResponse getDefaultInstanceForType() {
                return SEAL_UpGradeFileResponse.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_UP_UERR.SEAL_UP_RESULT_OK;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.result_ = SEAL_UP_UERR.SEAL_UP_RESULT_OK;
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
        public enum SEAL_UP_UERR implements ProtocolMessageEnum {
            SEAL_UP_RESULT_OK(0, 1),
            SEAL_UP_RESULT_ERROR(1, 2),
            SEAL_UP_RESULT_LOW_POWER(2, 3);
            
            public static final int SEAL_UP_RESULT_ERROR_VALUE = 2;
            public static final int SEAL_UP_RESULT_LOW_POWER_VALUE = 3;
            public static final int SEAL_UP_RESULT_OK_VALUE = 1;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SEAL_UP_UERR> internalValueMap = new a();
            private static final SEAL_UP_UERR[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SEAL_UP_UERR> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SEAL_UP_UERR findValueByNumber(int i) {
                    return SEAL_UP_UERR.valueOf(i);
                }
            }

            SEAL_UP_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SEAL_UpGradeFileResponse.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SEAL_UP_UERR> internalGetValueMap() {
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

            public static SEAL_UP_UERR valueOf(int i) {
                if (i == 1) {
                    return SEAL_UP_RESULT_OK;
                }
                if (i == 2) {
                    return SEAL_UP_RESULT_ERROR;
                }
                if (i != 3) {
                    return null;
                }
                return SEAL_UP_RESULT_LOW_POWER;
            }

            public static SEAL_UP_UERR valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_UpGradeFileResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_UpGradeFileResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_UpGradeFileResponse.newBuilder();
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
            SEAL_UpGradeFileResponse sEAL_UpGradeFileResponse = new SEAL_UpGradeFileResponse(true);
            defaultInstance = sEAL_UpGradeFileResponse;
            sEAL_UpGradeFileResponse.initFields();
        }

        /* synthetic */ SEAL_UpGradeFileResponse(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_UpGradeFileResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.o;
        }

        private void initFields() {
            this.result_ = SEAL_UP_UERR.SEAL_UP_RESULT_OK;
            this.offset_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_UpGradeFileResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_UpGradeFileResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileResponseOrBuilder
        public int getOffset() {
            return this.offset_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_UpGradeFileResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileResponseOrBuilder
        public SEAL_UP_UERR getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileResponseOrBuilder
        public boolean hasOffset() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.p.ensureFieldAccessorsInitialized(SEAL_UpGradeFileResponse.class, Builder.class);
        }

        private SEAL_UpGradeFileResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_UpGradeFileResponse sEAL_UpGradeFileResponse) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_UpGradeFileResponse);
        }

        public static SEAL_UpGradeFileResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_UpGradeFileResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_UpGradeFileResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_UpGradeFileResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_UpGradeFileResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_UpGradeFileResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_UpGradeFileResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_UpGradeFileResponseOrBuilder extends MessageOrBuilder {
        int getOffset();

        SEAL_UpGradeFileResponse.SEAL_UP_UERR getResult();

        boolean hasOffset();

        boolean hasResult();
    }

    /* loaded from: classes2.dex */
    public static final class SEAL_UserActionStatistics extends GeneratedMessage implements SEAL_UserActionStatisticsOrBuilder {
        public static final int CONNBTEAR_FIELD_NUMBER = 7;
        public static final int DEVICEIDQUERY_FIELD_NUMBER = 3;
        public static final int FACTORYRESET_FIELD_NUMBER = 2;
        public static final int FMOPEN_FIELD_NUMBER = 6;
        public static final int KEYLOCK_FIELD_NUMBER = 4;
        public static Parser<SEAL_UserActionStatistics> PARSER = new a();
        public static final int POWERLEVELQUERY_FIELD_NUMBER = 5;
        public static final int POWERON_FIELD_NUMBER = 1;
        private static final SEAL_UserActionStatistics defaultInstance;
        private int bitField0_;
        private int connBtEar_;
        private int deviceIdQuery_;
        private int factoryReset_;
        private int fmOpen_;
        private int keyLock_;
        private int powerLevelQuery_;
        private int powerOn_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SEAL_UserActionStatisticsOrBuilder {
            private int bitField0_;
            private int connBtEar_;
            private int deviceIdQuery_;
            private int factoryReset_;
            private int fmOpen_;
            private int keyLock_;
            private int powerLevelQuery_;
            private int powerOn_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SealProtos.A;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearConnBtEar() {
                this.bitField0_ &= -65;
                this.connBtEar_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDeviceIdQuery() {
                this.bitField0_ &= -5;
                this.deviceIdQuery_ = 0;
                onChanged();
                return this;
            }

            public Builder clearFactoryReset() {
                this.bitField0_ &= -3;
                this.factoryReset_ = 0;
                onChanged();
                return this;
            }

            public Builder clearFmOpen() {
                this.bitField0_ &= -33;
                this.fmOpen_ = 0;
                onChanged();
                return this;
            }

            public Builder clearKeyLock() {
                this.bitField0_ &= -9;
                this.keyLock_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPowerLevelQuery() {
                this.bitField0_ &= -17;
                this.powerLevelQuery_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPowerOn() {
                this.bitField0_ &= -2;
                this.powerOn_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public int getConnBtEar() {
                return this.connBtEar_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SealProtos.A;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public int getDeviceIdQuery() {
                return this.deviceIdQuery_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public int getFactoryReset() {
                return this.factoryReset_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public int getFmOpen() {
                return this.fmOpen_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public int getKeyLock() {
                return this.keyLock_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public int getPowerLevelQuery() {
                return this.powerLevelQuery_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public int getPowerOn() {
                return this.powerOn_;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public boolean hasConnBtEar() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public boolean hasDeviceIdQuery() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public boolean hasFactoryReset() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public boolean hasFmOpen() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public boolean hasKeyLock() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public boolean hasPowerLevelQuery() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
            public boolean hasPowerOn() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.B.ensureFieldAccessorsInitialized(SEAL_UserActionStatistics.class, Builder.class);
            }

            public Builder setConnBtEar(int i) {
                this.bitField0_ |= 64;
                this.connBtEar_ = i;
                onChanged();
                return this;
            }

            public Builder setDeviceIdQuery(int i) {
                this.bitField0_ |= 4;
                this.deviceIdQuery_ = i;
                onChanged();
                return this;
            }

            public Builder setFactoryReset(int i) {
                this.bitField0_ |= 2;
                this.factoryReset_ = i;
                onChanged();
                return this;
            }

            public Builder setFmOpen(int i) {
                this.bitField0_ |= 32;
                this.fmOpen_ = i;
                onChanged();
                return this;
            }

            public Builder setKeyLock(int i) {
                this.bitField0_ |= 8;
                this.keyLock_ = i;
                onChanged();
                return this;
            }

            public Builder setPowerLevelQuery(int i) {
                this.bitField0_ |= 16;
                this.powerLevelQuery_ = i;
                onChanged();
                return this;
            }

            public Builder setPowerOn(int i) {
                this.bitField0_ |= 1;
                this.powerOn_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_UserActionStatistics build() {
                SEAL_UserActionStatistics buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SEAL_UserActionStatistics buildPartial() {
                SEAL_UserActionStatistics sEAL_UserActionStatistics = new SEAL_UserActionStatistics(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sEAL_UserActionStatistics.powerOn_ = this.powerOn_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_UserActionStatistics.factoryReset_ = this.factoryReset_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_UserActionStatistics.deviceIdQuery_ = this.deviceIdQuery_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sEAL_UserActionStatistics.keyLock_ = this.keyLock_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sEAL_UserActionStatistics.powerLevelQuery_ = this.powerLevelQuery_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                sEAL_UserActionStatistics.fmOpen_ = this.fmOpen_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                sEAL_UserActionStatistics.connBtEar_ = this.connBtEar_;
                sEAL_UserActionStatistics.bitField0_ = i2;
                onBuilt();
                return sEAL_UserActionStatistics;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SEAL_UserActionStatistics getDefaultInstanceForType() {
                return SEAL_UserActionStatistics.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.powerOn_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.factoryReset_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.deviceIdQuery_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.keyLock_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.powerLevelQuery_ = 0;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.fmOpen_ = 0;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.connBtEar_ = 0;
                this.bitField0_ = i6 & (-65);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SEAL_UserActionStatistics> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SEAL_UserActionStatistics parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SEAL_UserActionStatistics.newBuilder();
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
            SEAL_UserActionStatistics sEAL_UserActionStatistics = new SEAL_UserActionStatistics(true);
            defaultInstance = sEAL_UserActionStatistics;
            sEAL_UserActionStatistics.initFields();
        }

        /* synthetic */ SEAL_UserActionStatistics(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SEAL_UserActionStatistics getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SealProtos.A;
        }

        private void initFields() {
            this.powerOn_ = 0;
            this.factoryReset_ = 0;
            this.deviceIdQuery_ = 0;
            this.keyLock_ = 0;
            this.powerLevelQuery_ = 0;
            this.fmOpen_ = 0;
            this.connBtEar_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SEAL_UserActionStatistics parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_UserActionStatistics parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public int getConnBtEar() {
            return this.connBtEar_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public int getDeviceIdQuery() {
            return this.deviceIdQuery_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public int getFactoryReset() {
            return this.factoryReset_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public int getFmOpen() {
            return this.fmOpen_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public int getKeyLock() {
            return this.keyLock_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SEAL_UserActionStatistics> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public int getPowerLevelQuery() {
            return this.powerLevelQuery_;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public int getPowerOn() {
            return this.powerOn_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public boolean hasConnBtEar() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public boolean hasDeviceIdQuery() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public boolean hasFactoryReset() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public boolean hasFmOpen() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public boolean hasKeyLock() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public boolean hasPowerLevelQuery() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SealProtos.SEAL_UserActionStatisticsOrBuilder
        public boolean hasPowerOn() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.B.ensureFieldAccessorsInitialized(SEAL_UserActionStatistics.class, Builder.class);
        }

        private SEAL_UserActionStatistics(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SEAL_UserActionStatistics sEAL_UserActionStatistics) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_UserActionStatistics);
        }

        public static SEAL_UserActionStatistics parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UserActionStatistics parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_UserActionStatistics parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SEAL_UserActionStatistics getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SEAL_UserActionStatistics(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_UserActionStatistics parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SEAL_UserActionStatistics parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SEAL_UserActionStatistics parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UserActionStatistics parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_UserActionStatistics parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SEAL_UserActionStatisticsOrBuilder extends MessageOrBuilder {
        int getConnBtEar();

        int getDeviceIdQuery();

        int getFactoryReset();

        int getFmOpen();

        int getKeyLock();

        int getPowerLevelQuery();

        int getPowerOn();

        boolean hasConnBtEar();

        boolean hasDeviceIdQuery();

        boolean hasFactoryReset();

        boolean hasFmOpen();

        boolean hasKeyLock();

        boolean hasPowerLevelQuery();

        boolean hasPowerOn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = SealProtos.C = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\nseal.proto\u0012\u0006protos\"Ú\u0002\n\fSEAL_Connect\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012'\n\bconnCode\u0018\u0002 \u0002(\u000e2\u0015.protos.SEAL_CONNCODE\u0012\u0010\n\bdeviceId\u0018\u0003 \u0001(\r\u0012\u0012\n\ndeviceType\u0018\u0004 \u0001(\r\u00122\n\u0007appMode\u0018\u0005 \u0001(\u000e2!.protos.SEAL_Connect.SEAL_APPTYPE\u00128\n\blanguage\u0018\u0006 \u0001(\u000e2&.protos.SEAL_Connect.SEAL_LANGUAGETYPE\u0012\r\n\u0005color\u0018\u0007 \u0001(\r\"4\n\fSEAL_APPTYPE\u0012\u0010\n\fSEAL_OWN_APP\u0010\u0000\u0012\u0012\n\u000eSEAL_MIJIA_APP\u0010\u0001\"7\n\u0011SEAL_LANGUAGETYPE\u0012\u0010\n\fSEAL_CHINESE\u0010\u0000\u0012\u0010\n\fSEAL_ENGLISH\u0010\u0001\"\u0088\u0003\n\u0010SEAL_ChannelInfo\u0012\r\n\u0005ch_no\u0018", "\u0001 \u0001(\r\u00125\n\u0007ch_type\u0018\u0002 \u0001(\u000e2$.protos.SEAL_ChannelInfo.SEAL_CHTYPE\u0012\u0012\n\nch_txPower\u0018\u0003 \u0001(\r\u0012\u0011\n\tch_rxFreq\u0018\u0004 \u0001(\r\u0012\u0011\n\tch_txFreq\u0018\u0005 \u0001(\r\u0012\u000f\n\u0007ch_name\u0018\u0006 \u0001(\f\u0012\r\n\u0005ch_sq\u0018\u0007 \u0001(\r\u0012\u000e\n\u0006ch_vox\u0018\b \u0001(\r\u0012\u0010\n\bch_rxCss\u0018\t \u0001(\r\u0012\u0010\n\bch_txCss\u0018\n \u0001(\r\u0012$\n\u0007ch_elim\u0018\u000b \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\u000f\n\u0007ch_band\u0018\f \u0001(\r\u0012&\n\tch_polite\u0018\r \u0001(\u000e2\u0013.protos.SEAL_SWITCH\"A\n\u000bSEAL_CHTYPE\u0012\u000f\n\u000bSEAL_PUBLIC\u0010\u0000\u0012\u000f\n\u000bSEAL_REMOTE\u0010\u0001\u0012\u0010\n\fSEAL_USERDEF\u0010\u0002\"Î\u0005\n\u0010SEAL_DeviceParam\u0012\u000f\n\u0007version\u0018\u0001 \u0002", "(\r\u00126\n\u0006result\u0018\u0002 \u0001(\u000e2&.protos.SEAL_DeviceParam.SEAL_DEV_UERR\u0012(\n\u000bfullInquiry\u0018\u0003 \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\r\n\u0005verHw\u0018\u0004 \u0001(\r\u0012\u000f\n\u0007verSoft\u0018\u0005 \u0001(\r\u0012\u0012\n\ndeviceName\u0018\u0006 \u0001(\f\u0012\u000f\n\u0007bleName\u0018\u0007 \u0001(\f\u0012\u000e\n\u0006charge\u0018\b \u0001(\r\u0012\u0010\n\bactivate\u0018\t \u0001(\r\u0012%\n\bshareLoc\u0018\n \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\u000f\n\u0007btAudio\u0018\u000b \u0001(\r\u0012$\n\u0002ch\u0018\f \u0001(\u000b2\u0018.protos.SEAL_ChannelInfo\u0012'\n\nvoiceAlert\u0018\r \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012(\n\u000bisAllPublic\u0018\u000e \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\u0012\n\npwsaveMode\u0018\u000f \u0001(\r", "\u0012:\n\tvoiceType\u0018\u0010 \u0001(\u000e2'.protos.SEAL_DeviceParam.SEAL_VOICETYPE\"{\n\rSEAL_DEV_UERR\u0012\u0017\n\u0013SEAL_PARAM_QUERY_OK\u0010\u0001\u0012\u001a\n\u0016SEAL_PARAM_QUERY_ERROR\u0010\u0002\u0012\u0018\n\u0014SEAL_PARAM_UPDATE_OK\u0010\u0003\u0012\u001b\n\u0017SEAL_PARAM_UPDATE_ERROR\u0010\u0004\"b\n\u000eSEAL_VOICETYPE\u0012\u0018\n\u0014SEAL_VOICETYPE_CLOSE\u0010\u0001\u0012\u001a\n\u0016SEAL_VOICETYPE_CHINESE\u0010\u0002\u0012\u001a\n\u0016SEAL_VOICETYPE_ENGLISH\u0010\u0003\"Ã\u0004\n\u0018SEAL_ChannelStateOperate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012=\n\u0006result\u0018\u0002 \u0001(\u000e2-.protos.SEAL_ChannelStateOperate.SEAL_ST_UERR\u0012>\n\u0006op", "tion\u0018\u0003 \u0001(\u000e2..protos.SEAL_ChannelStateOperate.SEAL_STOPTION\u0012>\n\ndeviceMode\u0018\u0004 \u0001(\u000e2*.protos.SEAL_ChannelStateOperate.SEAL_MODE\u0012\u0011\n\tstateMode\u0018\u0005 \u0001(\r\u0012%\n\u0003ch1\u0018\u0006 \u0001(\u000b2\u0018.protos.SEAL_ChannelInfo\"Y\n\fSEAL_ST_UERR\u0012\u000e\n\nSEAL_ST_OK\u0010\u0000\u0012\u0011\n\rSEAL_ST_ERROR\u0010\u0001\u0012\u0011\n\rSEAL_ST_EMPTY\u0010\u0002\u0012\u0013\n\u000fSEAL_ST_FORBIDE\u0010\u0003\"6\n\rSEAL_STOPTION\u0012\u0012\n\u000eSEAL_ST_UPDATE\u0010\u0000\u0012\u0011\n\rSEAL_ST_QUERY\u0010\u0001\"\u0089\u0001\n\tSEAL_MODE\u0012\u0014\n\u0010SEAL_MODE_NORMAL\u0010\u0000\u0012\u000e\n\nSEAL_SOS_T\u0010\u0001\u0012\u000e\n\nSEAL_SOS_R\u0010\u0002\u0012\u0010\n\fS", "EAL_SCAN_CH\u0010\u0003\u0012\u0012\n\u000eSEAL_SCAN_FREQ\u0010\u0004\u0012\u000f\n\u000bSEAL_TEAM_M\u0010\u0005\u0012\u000f\n\u000bSEAL_TEAM_S\u0010\u0006\"¿\u0003\n\u0017SEAL_ChannelInfoOperate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012<\n\u0006result\u0018\u0002 \u0001(\u000e2,.protos.SEAL_ChannelInfoOperate.SEAL_CH_UERR\u0012=\n\u0006option\u0018\u0003 \u0001(\u000e2-.protos.SEAL_ChannelInfoOperate.SEAL_CHOPTION\u0012$\n\u0002ch\u0018\u0004 \u0001(\u000b2\u0018.protos.SEAL_ChannelInfo\"\u008f\u0001\n\fSEAL_CH_UERR\u0012\u000e\n\nSEAL_CH_OK\u0010\u0000\u0012\u0011\n\rSEAL_CH_ERROR\u0010\u0001\u0012\u0011\n\rSEAL_CH_EMPTY\u0010\u0002\u0012\u0013\n\u000fSEAL_CH_FORBIDE\u0010\u0003\u0012\u001a\n\u0016SEAL_CH_QUERY_CONTINUE\u0010\u0004\u0012\u0018\n\u0014S", "EAL_CH_QUERY_FINISH\u0010\u0005\"^\n\rSEAL_CHOPTION\u0012\u0012\n\u000eSEAL_CH_INSERT\u0010\u0000\u0012\u0012\n\u000eSEAL_CH_DELETE\u0010\u0001\u0012\u0012\n\u000eSEAL_CH_MODIFY\u0010\u0002\u0012\u0011\n\rSEAL_CH_QUERY\u0010\u0003\"Ö\u0001\n\u0011SEAL_LocationInfo\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012$\n\u0007ctlsync\u0018\u0002 \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\r\u0012\u0010\n\buserName\u0018\u0004 \u0001(\f\u0012\u0010\n\buserFreq\u0018\u0005 \u0001(\r\u0012\u0011\n\tlongitude\u0018\u0006 \u0001(\u0011\u0012\u0010\n\blatitude\u0018\u0007 \u0001(\u0011\u0012\u0010\n\baltitude\u0018\b \u0001(\u0011\u0012\u0010\n\btimeSync\u0018\t \u0001(\r\u0012\r\n\u0005rxCss\u0018\n \u0001(\r\"Ô\u0002\n\u0017SEAL_UpGradeFileRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012:\n\u0004fCmd\u0018\u0002 \u0002(\u000e2,.prot", "os.SEAL_UpGradeFileRequest.SEAL_FILECMD\u0012<\n\u0005fType\u0018\u0003 \u0002(\u000e2-.protos.SEAL_UpGradeFileRequest.SEAL_FILETYPE\u0012\r\n\u0005fSize\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006fCrc32\u0018\u0005 \u0001(\r\"I\n\fSEAL_FILECMD\u0012\u0011\n\rSEAL_UP_START\u0010\u0001\u0012\u0012\n\u000eSEAL_UP_COMPLE\u0010\u0002\u0012\u0012\n\u000eSEAL_UP_REBOOT\u0010\u0003\"D\n\rSEAL_FILETYPE\u0012\u0019\n\u0015SEAL_APP_UPGRADE_FILE\u0010\u0001\u0012\u0018\n\u0014SEAL_MCU_UPLOAD_FILE\u0010\u0002\"È\u0001\n\u0018SEAL_UpGradeFileResponse\u0012=\n\u0006result\u0018\u0001 \u0002(\u000e2-.protos.SEAL_UpGradeFileResponse.SEAL_UP_UERR\u0012\u000e\n\u0006offset\u0018\u0002 \u0001(\r\"]\n\fSEAL_UP_UER", "R\u0012\u0015\n\u0011SEAL_UP_RESULT_OK\u0010\u0001\u0012\u0018\n\u0014SEAL_UP_RESULT_ERROR\u0010\u0002\u0012\u001c\n\u0018SEAL_UP_RESULT_LOW_POWER\u0010\u0003\"A\n\u0014SEAL_UpGradeFilePack\u0012\u000e\n\u0006offset\u0018\u0001 \u0002(\r\u0012\f\n\u0004data\u0018\u0002 \u0002(\f\u0012\u000b\n\u0003xor\u0018\u0003 \u0002(\r\"¬\u0001\n\u000eSEAL_BtEarInfo\u0012\u000b\n\u0003mac\u0018\u0001 \u0002(\f\u0012\f\n\u0004name\u0018\u0002 \u0002(\f\u0012\f\n\u0004rssi\u0018\u0003 \u0002(\u0011\u00123\n\u0004type\u0018\u0004 \u0002(\u000e2%.protos.SEAL_BtEarInfo.SEAL_BTEARTYPE\"<\n\u000eSEAL_BTEARTYPE\u0012\u0015\n\u0011SEAL_BTEAR_NORMAL\u0010\u0000\u0012\u0013\n\u000fSEAL_BTEAR_CONE\u0010\u0001\"¡\u0003\n\u0016SEAL_BtEarConnectState\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012E\n\u0006result\u0018\u0002 \u0001(\u000e25.protos.SEAL_BtE", "arConnectState.SEAL_BTEAR_CONN_RESULT\u0012@\n\u0006option\u0018\u0003 \u0001(\u000e20.protos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION\u0012%\n\u0005btEar\u0018\u0004 \u0001(\u000b2\u0016.protos.SEAL_BtEarInfo\"h\n\u0016SEAL_BTEAR_CONN_RESULT\u0012\u0016\n\u0012SEAL_BTEAR_CONN_OK\u0010\u0000\u0012\u0019\n\u0015SEAL_BTEAR_CONN_ERROR\u0010\u0001\u0012\u001b\n\u0017SEAL_BTEAR_CONN_TIMEOUT\u0010\u0002\"\\\n\u0011SEAL_BTEAR_OPTION\u0012\u0014\n\u0010SEAL_BTEAR_QUERY\u0010\u0000\u0012\u0016\n\u0012SEAL_BTEAR_CONNECT\u0010\u0001\u0012\u0019\n\u0015SEAL_BTEAR_DISCONNECT\u0010\u0002\"ã\u0002\n\u0015SEAL_BtEarScanControl\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012D\n\u0006result\u0018\u0002 \u0001(", "\u000e24.protos.SEAL_BtEarScanControl.SEAL_BTEAR_SCAN_RESULT\u0012@\n\u0006option\u0018\u0003 \u0002(\u000e20.protos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL\"K\n\u0016SEAL_BTEAR_SCAN_RESULT\u0012\u0016\n\u0012SEAL_BTEAR_SCAN_OK\u0010\u0000\u0012\u0019\n\u0015SEAL_BTEAR_SCAN_ERROR\u0010\u0001\"d\n\u0012SEAL_BTEAR_CONTROL\u0012\u0019\n\u0015SEAL_BTEAR_SCAN_START\u0010\u0000\u0012\u0019\n\u0015SEAL_BTEAR_SCAN_PAUSE\u0010\u0001\u0012\u0018\n\u0014SEAL_BTEAR_SCAN_STOP\u0010\u0002\"Á\u0001\n\u0012SEAL_BtEarScanItem\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012A\n\u0006result\u0018\u0002 \u0001(\u000e21.protos.SEAL_BtEarScanItem.SEAL_BTEAR_ITEM", "_RESULT\u0012%\n\u0005btEar\u0018\u0003 \u0001(\u000b2\u0016.protos.SEAL_BtEarInfo\"0\n\u0016SEAL_BTEAR_ITEM_RESULT\u0012\u0016\n\u0012SEAL_BTEAR_ITEM_OK\u0010\u0000\"¦\u0001\n\u0019SEAL_UserActionStatistics\u0012\u000f\n\u0007powerOn\u0018\u0001 \u0001(\r\u0012\u0014\n\ffactoryReset\u0018\u0002 \u0001(\r\u0012\u0015\n\rdeviceIdQuery\u0018\u0003 \u0001(\r\u0012\u000f\n\u0007keyLock\u0018\u0004 \u0001(\r\u0012\u0017\n\u000fpowerLevelQuery\u0018\u0005 \u0001(\r\u0012\u000e\n\u0006fmOpen\u0018\u0006 \u0001(\r\u0012\u0011\n\tconnBtEar\u0018\u0007 \u0001(\r*Û\u0001\n\rSEAL_CONNCODE\u0012\u0013\n\u000fSEAL_DISCONNECT\u0010\u0000\u0012\u0010\n\fSEAL_CONNECT\u0010\u0001\u0012\u000e\n\nSEAL_ALLOW\u0010\u0004\u0012\u000f\n\u000bSEAL_REFUSE\u0010\u0005\u0012\r\n\tSEAL_WAIT\u0010\u0006\u0012\u0011\n\rSEAL_LOWPOWER\u0010\u0007\u0012\u0012\n\u000eSEAL_DI", "S_ALLOW\u0010\b\u0012\u0013\n\u000fSEAL_DIS_REFUSE\u0010\t\u0012\u0011\n\rSEAL_DIS_WAIT\u0010\n\u0012\u0015\n\u0011SEAL_DIS_LOWPOWER\u0010\u000b\u0012\r\n\tSEAL_BUSY\u0010\f*(\n\u000bSEAL_SWITCH\u0012\f\n\bSEAL_OFF\u0010\u0001\u0012\u000b\n\u0007SEAL_ON\u0010\u0002B+\n\u001bcom.ifengyu.intercom.protosB\nSealProtosH\u0002"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = C().getMessageTypes().get(0);
        f5979a = descriptor;
        f5980b = new GeneratedMessage.FieldAccessorTable(descriptor, new String[]{"Version", "ConnCode", "DeviceId", "DeviceType", "AppMode", "Language", "Color"});
        Descriptors.Descriptor descriptor2 = C().getMessageTypes().get(1);
        f5981c = descriptor2;
        d = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"ChNo", "ChType", "ChTxPower", "ChRxFreq", "ChTxFreq", "ChName", "ChSq", "ChVox", "ChRxCss", "ChTxCss", "ChElim", "ChBand", "ChPolite"});
        Descriptors.Descriptor descriptor3 = C().getMessageTypes().get(2);
        e = descriptor3;
        f = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Version", "Result", "FullInquiry", "VerHw", "VerSoft", "DeviceName", "BleName", "Charge", "Activate", "ShareLoc", "BtAudio", "Ch", "VoiceAlert", "IsAllPublic", "PwsaveMode", "VoiceType"});
        Descriptors.Descriptor descriptor4 = C().getMessageTypes().get(3);
        g = descriptor4;
        h = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Version", "Result", "Option", "DeviceMode", "StateMode", "Ch1"});
        Descriptors.Descriptor descriptor5 = C().getMessageTypes().get(4);
        i = descriptor5;
        j = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Version", "Result", "Option", "Ch"});
        Descriptors.Descriptor descriptor6 = C().getMessageTypes().get(5);
        k = descriptor6;
        l = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Version", "Ctlsync", "UserId", "UserName", "UserFreq", "Longitude", "Latitude", "Altitude", "TimeSync", "RxCss"});
        Descriptors.Descriptor descriptor7 = C().getMessageTypes().get(6);
        m = descriptor7;
        n = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Version", "FCmd", "FType", "FSize", "FCrc32"});
        Descriptors.Descriptor descriptor8 = C().getMessageTypes().get(7);
        o = descriptor8;
        p = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Result", "Offset"});
        Descriptors.Descriptor descriptor9 = C().getMessageTypes().get(8);
        q = descriptor9;
        r = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Offset", "Data", "Xor"});
        Descriptors.Descriptor descriptor10 = C().getMessageTypes().get(9);
        s = descriptor10;
        t = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Mac", "Name", "Rssi", "Type"});
        Descriptors.Descriptor descriptor11 = C().getMessageTypes().get(10);
        u = descriptor11;
        v = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Version", "Result", "Option", "BtEar"});
        Descriptors.Descriptor descriptor12 = C().getMessageTypes().get(11);
        w = descriptor12;
        x = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Version", "Result", "Option"});
        Descriptors.Descriptor descriptor13 = C().getMessageTypes().get(12);
        y = descriptor13;
        z = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"Version", "Result", "BtEar"});
        Descriptors.Descriptor descriptor14 = C().getMessageTypes().get(13);
        A = descriptor14;
        B = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"PowerOn", "FactoryReset", "DeviceIdQuery", "KeyLock", "PowerLevelQuery", "FmOpen", "ConnBtEar"});
    }

    public static Descriptors.FileDescriptor C() {
        return C;
    }
}
