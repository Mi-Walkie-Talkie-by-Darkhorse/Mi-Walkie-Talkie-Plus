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
import java.util.Objects;

/* loaded from: classes2.dex */
public final class Mi3Protos {

    /* renamed from: A */
    private static final Descriptors.Descriptor f14551A;

    /* renamed from: B */
    private static GeneratedMessage.FieldAccessorTable f14552B;

    /* renamed from: C */
    private static final Descriptors.Descriptor f14553C;

    /* renamed from: D */
    private static GeneratedMessage.FieldAccessorTable f14554D;

    /* renamed from: E */
    private static final Descriptors.Descriptor f14555E;

    /* renamed from: F */
    private static GeneratedMessage.FieldAccessorTable f14556F;

    /* renamed from: G */
    private static final Descriptors.Descriptor f14557G;

    /* renamed from: H */
    private static GeneratedMessage.FieldAccessorTable f14558H;

    /* renamed from: I */
    private static Descriptors.FileDescriptor f14559I;

    /* renamed from: a */
    private static final Descriptors.Descriptor f14560a;

    /* renamed from: b */
    private static GeneratedMessage.FieldAccessorTable f14561b;

    /* renamed from: c */
    private static final Descriptors.Descriptor f14562c;

    /* renamed from: d */
    private static GeneratedMessage.FieldAccessorTable f14563d;

    /* renamed from: e */
    private static final Descriptors.Descriptor f14564e;

    /* renamed from: f */
    private static GeneratedMessage.FieldAccessorTable f14565f;

    /* renamed from: g */
    private static final Descriptors.Descriptor f14566g;

    /* renamed from: h */
    private static GeneratedMessage.FieldAccessorTable f14567h;

    /* renamed from: i */
    private static final Descriptors.Descriptor f14568i;

    /* renamed from: j */
    private static GeneratedMessage.FieldAccessorTable f14569j;

    /* renamed from: k */
    private static final Descriptors.Descriptor f14570k;

    /* renamed from: l */
    private static GeneratedMessage.FieldAccessorTable f14571l;

    /* renamed from: m */
    private static final Descriptors.Descriptor f14572m;

    /* renamed from: n */
    private static GeneratedMessage.FieldAccessorTable f14573n;

    /* renamed from: o */
    private static final Descriptors.Descriptor f14574o;

    /* renamed from: p */
    private static GeneratedMessage.FieldAccessorTable f14575p;

    /* renamed from: q */
    private static final Descriptors.Descriptor f14576q;

    /* renamed from: r */
    private static GeneratedMessage.FieldAccessorTable f14577r;

    /* renamed from: s */
    private static final Descriptors.Descriptor f14578s;

    /* renamed from: t */
    private static GeneratedMessage.FieldAccessorTable f14579t;

    /* renamed from: u */
    private static final Descriptors.Descriptor f14580u;

    /* renamed from: v */
    private static GeneratedMessage.FieldAccessorTable f14581v;

    /* renamed from: w */
    private static final Descriptors.Descriptor f14582w;

    /* renamed from: x */
    private static GeneratedMessage.FieldAccessorTable f14583x;

    /* renamed from: y */
    private static final Descriptors.Descriptor f14584y;

    /* renamed from: z */
    private static GeneratedMessage.FieldAccessorTable f14585z;

    /* loaded from: classes2.dex */
    public enum APP_TYPE implements ProtocolMessageEnum {
        FY_APP(0, 0),
        MIJIA_APP(1, 1);
        
        public static final int FY_APP_VALUE = 0;
        public static final int MIJIA_APP_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<APP_TYPE> internalValueMap = new C4212a();
        private static final APP_TYPE[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$APP_TYPE$a */
        /* loaded from: classes2.dex */
        class C4212a implements Internal.EnumLiteMap<APP_TYPE> {
            C4212a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public APP_TYPE findValueByNumber(int i) {
                return APP_TYPE.valueOf(i);
            }
        }

        APP_TYPE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Mi3Protos.m10922J().getEnumTypes().get(1);
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
            if (i != 0) {
                if (i != 1) {
                    return null;
                }
                return MIJIA_APP;
            }
            return FY_APP;
        }

        public static APP_TYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class BatchBrodFskResponse extends GeneratedMessage implements BatchBrodFskResponseOrBuilder {
        public static Parser<BatchBrodFskResponse> PARSER = new C4213a();
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

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14584y;
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
                return Mi3Protos.f14584y;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.BatchBrodFskResponseOrBuilder
            public SWITCH getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.BatchBrodFskResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.BatchBrodFskResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.BatchBrodFskResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14585z.ensureFieldAccessorsInitialized(BatchBrodFskResponse.class, Builder.class);
            }

            public Builder setResult(SWITCH r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 2;
                this.result_ = r2;
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
                int i2 = (i & 1) != 1 ? 0 : 1;
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

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$BatchBrodFskResponse$a */
        /* loaded from: classes2.dex */
        class C4213a extends AbstractParser<BatchBrodFskResponse> {
            C4213a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
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

        /* synthetic */ BatchBrodFskResponse(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static BatchBrodFskResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14584y;
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.BatchBrodFskResponseOrBuilder
        public SWITCH getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.BatchBrodFskResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.BatchBrodFskResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.BatchBrodFskResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14585z.ensureFieldAccessorsInitialized(BatchBrodFskResponse.class, Builder.class);
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
    public enum CHOPTION implements ProtocolMessageEnum {
        CH_INSERT(0, 0),
        CH_DELETE(1, 1),
        CH_MODIFY(2, 2),
        CH_QUERY(3, 3);
        
        public static final int CH_DELETE_VALUE = 1;
        public static final int CH_INSERT_VALUE = 0;
        public static final int CH_MODIFY_VALUE = 2;
        public static final int CH_QUERY_VALUE = 3;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<CHOPTION> internalValueMap = new C4214a();
        private static final CHOPTION[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$CHOPTION$a */
        /* loaded from: classes2.dex */
        class C4214a implements Internal.EnumLiteMap<CHOPTION> {
            C4214a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public CHOPTION findValueByNumber(int i) {
                return CHOPTION.valueOf(i);
            }
        }

        CHOPTION(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Mi3Protos.m10922J().getEnumTypes().get(7);
        }

        public static Internal.EnumLiteMap<CHOPTION> internalGetValueMap() {
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

        public static CHOPTION valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return null;
                        }
                        return CH_QUERY;
                    }
                    return CH_MODIFY;
                }
                return CH_DELETE;
            }
            return CH_INSERT;
        }

        public static CHOPTION valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum CH_UERR implements ProtocolMessageEnum {
        CH_OK(0, 0),
        CH_ERROR(1, 1),
        CH_EMPTY(2, 2),
        CH_FORBIDE(3, 3),
        CH_QUERY_CONTINUE(4, 4),
        CH_QUERY_FINISH(5, 5);
        
        public static final int CH_EMPTY_VALUE = 2;
        public static final int CH_ERROR_VALUE = 1;
        public static final int CH_FORBIDE_VALUE = 3;
        public static final int CH_OK_VALUE = 0;
        public static final int CH_QUERY_CONTINUE_VALUE = 4;
        public static final int CH_QUERY_FINISH_VALUE = 5;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<CH_UERR> internalValueMap = new C4215a();
        private static final CH_UERR[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$CH_UERR$a */
        /* loaded from: classes2.dex */
        class C4215a implements Internal.EnumLiteMap<CH_UERR> {
            C4215a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public CH_UERR findValueByNumber(int i) {
                return CH_UERR.valueOf(i);
            }
        }

        CH_UERR(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Mi3Protos.m10922J().getEnumTypes().get(8);
        }

        public static Internal.EnumLiteMap<CH_UERR> internalGetValueMap() {
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

        public static CH_UERR valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                if (i != 5) {
                                    return null;
                                }
                                return CH_QUERY_FINISH;
                            }
                            return CH_QUERY_CONTINUE;
                        }
                        return CH_FORBIDE;
                    }
                    return CH_EMPTY;
                }
                return CH_ERROR;
            }
            return CH_OK;
        }

        public static CH_UERR valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
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
        private static Internal.EnumLiteMap<CONNECT_CODE> internalValueMap = new C4216a();
        private static final CONNECT_CODE[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$CONNECT_CODE$a */
        /* loaded from: classes2.dex */
        class C4216a implements Internal.EnumLiteMap<CONNECT_CODE> {
            C4216a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public CONNECT_CODE findValueByNumber(int i) {
                return CONNECT_CODE.valueOf(i);
            }
        }

        CONNECT_CODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Mi3Protos.m10922J().getEnumTypes().get(0);
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
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                return null;
                            }
                            return BUSY;
                        }
                        return LOWPOWER;
                    }
                    return WAIT;
                }
                return REFUSE;
            }
            return ALLOW;
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
        public static final int CHTYPE_FIELD_NUMBER = 6;
        public static final int NAME_FIELD_NUMBER = 7;
        public static Parser<ChannelInfo> PARSER = new C4217a();
        public static final int RXCSS_FIELD_NUMBER = 4;
        public static final int RXFREQ_FIELD_NUMBER = 2;
        public static final int SEQ_FIELD_NUMBER = 1;
        public static final int TXCSS_FIELD_NUMBER = 5;
        public static final int TXFREQ_FIELD_NUMBER = 3;
        private static final ChannelInfo defaultInstance;
        private int bitField0_;
        private int chType_;
        private ByteString name_;
        private int rxCss_;
        private int rxFreq_;
        private int seq_;
        private int txCss_;
        private int txFreq_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ChannelInfoOrBuilder {
            private int bitField0_;
            private int chType_;
            private ByteString name_;
            private int rxCss_;
            private int rxFreq_;
            private int seq_;
            private int txCss_;
            private int txFreq_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14574o;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearChType() {
                this.bitField0_ &= -33;
                this.chType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -65;
                this.name_ = ChannelInfo.getDefaultInstance().getName();
                onChanged();
                return this;
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

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public int getChType() {
                return this.chType_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Mi3Protos.f14574o;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public ByteString getName() {
                return this.name_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public int getRxCss() {
                return this.rxCss_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public int getRxFreq() {
                return this.rxFreq_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public int getSeq() {
                return this.seq_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public int getTxCss() {
                return this.txCss_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public int getTxFreq() {
                return this.txFreq_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public boolean hasChType() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public boolean hasName() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public boolean hasRxCss() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public boolean hasRxFreq() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public boolean hasSeq() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public boolean hasTxCss() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
            public boolean hasTxFreq() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14575p.ensureFieldAccessorsInitialized(ChannelInfo.class, Builder.class);
            }

            public Builder setChType(int i) {
                this.bitField0_ |= 32;
                this.chType_ = i;
                onChanged();
                return this;
            }

            public Builder setName(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 64;
                this.name_ = byteString;
                onChanged();
                return this;
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
                this.name_ = ByteString.EMPTY;
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
                int i2 = (i & 1) != 1 ? 0 : 1;
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
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                channelInfo.chType_ = this.chType_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                channelInfo.name_ = this.name_;
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
                this.name_ = ByteString.EMPTY;
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
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.chType_ = 0;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.name_ = ByteString.EMPTY;
                this.bitField0_ = i6 & (-65);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$ChannelInfo$a */
        /* loaded from: classes2.dex */
        class C4217a extends AbstractParser<ChannelInfo> {
            C4217a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
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

        /* synthetic */ ChannelInfo(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static ChannelInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14574o;
        }

        private void initFields() {
            this.seq_ = 0;
            this.rxFreq_ = 0;
            this.txFreq_ = 0;
            this.rxCss_ = 0;
            this.txCss_ = 0;
            this.chType_ = 0;
            this.name_ = ByteString.EMPTY;
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public int getChType() {
            return this.chType_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public ByteString getName() {
            return this.name_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChannelInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public int getRxCss() {
            return this.rxCss_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public int getRxFreq() {
            return this.rxFreq_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public int getSeq() {
            return this.seq_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public int getTxCss() {
            return this.txCss_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public int getTxFreq() {
            return this.txFreq_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public boolean hasChType() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public boolean hasName() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public boolean hasRxCss() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public boolean hasRxFreq() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public boolean hasSeq() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public boolean hasTxCss() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoOrBuilder
        public boolean hasTxFreq() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14575p.ensureFieldAccessorsInitialized(ChannelInfo.class, Builder.class);
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
        int getChType();

        ByteString getName();

        int getRxCss();

        int getRxFreq();

        int getSeq();

        int getTxCss();

        int getTxFreq();

        boolean hasChType();

        boolean hasName();

        boolean hasRxCss();

        boolean hasRxFreq();

        boolean hasSeq();

        boolean hasTxCss();

        boolean hasTxFreq();
    }

    /* loaded from: classes2.dex */
    public static final class ChannelInfoRequest extends GeneratedMessage implements ChannelInfoRequestOrBuilder {
        public static final int CHANNELINFO_FIELD_NUMBER = 2;
        public static final int CHOPTION_FIELD_NUMBER = 3;
        public static Parser<ChannelInfoRequest> PARSER = new C4218a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final ChannelInfoRequest defaultInstance;
        private int bitField0_;
        private CHOPTION chOption_;
        private ChannelInfo channelInfo_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ChannelInfoRequestOrBuilder {
            private int bitField0_;
            private CHOPTION chOption_;
            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> channelInfoBuilder_;
            private ChannelInfo channelInfo_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
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
                return Mi3Protos.f14580u;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getChannelInfoFieldBuilder();
                }
            }

            public Builder clearChOption() {
                this.bitField0_ &= -5;
                this.chOption_ = CHOPTION.CH_INSERT;
                onChanged();
                return this;
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

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
            public CHOPTION getChOption() {
                return this.chOption_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
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

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
            public ChannelInfoOrBuilder getChannelInfoOrBuilder() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.channelInfo_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Mi3Protos.f14580u;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
            public boolean hasChOption() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
            public boolean hasChannelInfo() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14581v.ensureFieldAccessorsInitialized(ChannelInfoRequest.class, Builder.class);
            }

            public Builder mergeChannelInfo(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) == 2 && this.channelInfo_ != ChannelInfo.getDefaultInstance()) {
                        this.channelInfo_ = ((ChannelInfo.Builder) ChannelInfo.newBuilder(this.channelInfo_).mergeFrom((Message) channelInfo)).buildPartial();
                    } else {
                        this.channelInfo_ = channelInfo;
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(channelInfo);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setChOption(CHOPTION choption) {
                Objects.requireNonNull(choption);
                this.bitField0_ |= 4;
                this.chOption_ = choption;
                onChanged();
                return this;
            }

            public Builder setChannelInfo(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    Objects.requireNonNull(channelInfo);
                    this.channelInfo_ = channelInfo;
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(channelInfo);
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
                this.chOption_ = CHOPTION.CH_INSERT;
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
                int i2 = (i & 1) != 1 ? 0 : 1;
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
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                channelInfoRequest.chOption_ = this.chOption_;
                channelInfoRequest.bitField0_ = i2;
                onBuilt();
                return channelInfoRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChannelInfoRequest getDefaultInstanceForType() {
                return ChannelInfoRequest.getDefaultInstance();
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
                int i = this.bitField0_ & (-3);
                this.bitField0_ = i;
                this.chOption_ = CHOPTION.CH_INSERT;
                this.bitField0_ = i & (-5);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.channelInfo_ = ChannelInfo.getDefaultInstance();
                this.chOption_ = CHOPTION.CH_INSERT;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
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

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$ChannelInfoRequest$a */
        /* loaded from: classes2.dex */
        class C4218a extends AbstractParser<ChannelInfoRequest> {
            C4218a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
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

        /* synthetic */ ChannelInfoRequest(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static ChannelInfoRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14580u;
        }

        private void initFields() {
            this.version_ = 0;
            this.channelInfo_ = ChannelInfo.getDefaultInstance();
            this.chOption_ = CHOPTION.CH_INSERT;
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
        public CHOPTION getChOption() {
            return this.chOption_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
        public ChannelInfo getChannelInfo() {
            return this.channelInfo_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
        public boolean hasChOption() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
        public boolean hasChannelInfo() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14581v.ensureFieldAccessorsInitialized(ChannelInfoRequest.class, Builder.class);
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
        CHOPTION getChOption();

        ChannelInfo getChannelInfo();

        ChannelInfoOrBuilder getChannelInfoOrBuilder();

        int getVersion();

        boolean hasChOption();

        boolean hasChannelInfo();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class ChannelInfoResponse extends GeneratedMessage implements ChannelInfoResponseOrBuilder {
        public static final int CHANNELINFO_FIELD_NUMBER = 3;
        public static final int CHOPTION_FIELD_NUMBER = 4;
        public static Parser<ChannelInfoResponse> PARSER = new C4219a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final ChannelInfoResponse defaultInstance;
        private int bitField0_;
        private CHOPTION chOption_;
        private ChannelInfo channelInfo_;
        private CH_UERR result_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ChannelInfoResponseOrBuilder {
            private int bitField0_;
            private CHOPTION chOption_;
            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> channelInfoBuilder_;
            private ChannelInfo channelInfo_;
            private CH_UERR result_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
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
                return Mi3Protos.f14582w;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getChannelInfoFieldBuilder();
                }
            }

            public Builder clearChOption() {
                this.bitField0_ &= -9;
                this.chOption_ = CHOPTION.CH_INSERT;
                onChanged();
                return this;
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
                this.result_ = CH_UERR.CH_OK;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
            public CHOPTION getChOption() {
                return this.chOption_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
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

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
            public ChannelInfoOrBuilder getChannelInfoOrBuilder() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.channelInfo_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Mi3Protos.f14582w;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
            public CH_UERR getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
            public boolean hasChOption() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
            public boolean hasChannelInfo() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14583x.ensureFieldAccessorsInitialized(ChannelInfoResponse.class, Builder.class);
            }

            public Builder mergeChannelInfo(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) == 4 && this.channelInfo_ != ChannelInfo.getDefaultInstance()) {
                        this.channelInfo_ = ((ChannelInfo.Builder) ChannelInfo.newBuilder(this.channelInfo_).mergeFrom((Message) channelInfo)).buildPartial();
                    } else {
                        this.channelInfo_ = channelInfo;
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(channelInfo);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setChOption(CHOPTION choption) {
                Objects.requireNonNull(choption);
                this.bitField0_ |= 8;
                this.chOption_ = choption;
                onChanged();
                return this;
            }

            public Builder setChannelInfo(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    Objects.requireNonNull(channelInfo);
                    this.channelInfo_ = channelInfo;
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(channelInfo);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setResult(CH_UERR ch_uerr) {
                Objects.requireNonNull(ch_uerr);
                this.bitField0_ |= 2;
                this.result_ = ch_uerr;
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
                this.result_ = CH_UERR.CH_OK;
                this.channelInfo_ = ChannelInfo.getDefaultInstance();
                this.chOption_ = CHOPTION.CH_INSERT;
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
                int i2 = (i & 1) != 1 ? 0 : 1;
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
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                channelInfoResponse.chOption_ = this.chOption_;
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
                this.result_ = CH_UERR.CH_OK;
                this.bitField0_ = i & (-3);
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.channelInfo_ = ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                int i2 = this.bitField0_ & (-5);
                this.bitField0_ = i2;
                this.chOption_ = CHOPTION.CH_INSERT;
                this.bitField0_ = i2 & (-9);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = CH_UERR.CH_OK;
                this.channelInfo_ = ChannelInfo.getDefaultInstance();
                this.chOption_ = CHOPTION.CH_INSERT;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
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

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$ChannelInfoResponse$a */
        /* loaded from: classes2.dex */
        class C4219a extends AbstractParser<ChannelInfoResponse> {
            C4219a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
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

        /* synthetic */ ChannelInfoResponse(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static ChannelInfoResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14582w;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = CH_UERR.CH_OK;
            this.channelInfo_ = ChannelInfo.getDefaultInstance();
            this.chOption_ = CHOPTION.CH_INSERT;
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
        public CHOPTION getChOption() {
            return this.chOption_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
        public ChannelInfo getChannelInfo() {
            return this.channelInfo_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
        public ChannelInfoOrBuilder getChannelInfoOrBuilder() {
            return this.channelInfo_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChannelInfoResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
        public CH_UERR getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
        public boolean hasChOption() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
        public boolean hasChannelInfo() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14583x.ensureFieldAccessorsInitialized(ChannelInfoResponse.class, Builder.class);
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
        CHOPTION getChOption();

        ChannelInfo getChannelInfo();

        ChannelInfoOrBuilder getChannelInfoOrBuilder();

        CH_UERR getResult();

        int getVersion();

        boolean hasChOption();

        boolean hasChannelInfo();

        boolean hasResult();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class ChannelInfoStateRequest extends GeneratedMessage implements ChannelInfoStateRequestOrBuilder {
        public static final int CHANNELINFO_FIELD_NUMBER = 2;
        public static final int CHINDEX_FIELD_NUMBER = 3;
        public static final int CHOPTION_FIELD_NUMBER = 4;
        public static Parser<ChannelInfoStateRequest> PARSER = new C4220a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final ChannelInfoStateRequest defaultInstance;
        private int bitField0_;
        private int chIndex_;
        private CHOPTION chOption_;
        private ChannelInfo channelInfo_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ChannelInfoStateRequestOrBuilder {
            private int bitField0_;
            private int chIndex_;
            private CHOPTION chOption_;
            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> channelInfoBuilder_;
            private ChannelInfo channelInfo_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
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
                return Mi3Protos.f14576q;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getChannelInfoFieldBuilder();
                }
            }

            public Builder clearChIndex() {
                this.bitField0_ &= -5;
                this.chIndex_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChOption() {
                this.bitField0_ &= -9;
                this.chOption_ = CHOPTION.CH_INSERT;
                onChanged();
                return this;
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

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
            public int getChIndex() {
                return this.chIndex_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
            public CHOPTION getChOption() {
                return this.chOption_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
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

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
            public ChannelInfoOrBuilder getChannelInfoOrBuilder() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.channelInfo_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Mi3Protos.f14576q;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
            public boolean hasChIndex() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
            public boolean hasChOption() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
            public boolean hasChannelInfo() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14577r.ensureFieldAccessorsInitialized(ChannelInfoStateRequest.class, Builder.class);
            }

            public Builder mergeChannelInfo(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) == 2 && this.channelInfo_ != ChannelInfo.getDefaultInstance()) {
                        this.channelInfo_ = ((ChannelInfo.Builder) ChannelInfo.newBuilder(this.channelInfo_).mergeFrom((Message) channelInfo)).buildPartial();
                    } else {
                        this.channelInfo_ = channelInfo;
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(channelInfo);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setChIndex(int i) {
                this.bitField0_ |= 4;
                this.chIndex_ = i;
                onChanged();
                return this;
            }

            public Builder setChOption(CHOPTION choption) {
                Objects.requireNonNull(choption);
                this.bitField0_ |= 8;
                this.chOption_ = choption;
                onChanged();
                return this;
            }

            public Builder setChannelInfo(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    Objects.requireNonNull(channelInfo);
                    this.channelInfo_ = channelInfo;
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(channelInfo);
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
                this.chOption_ = CHOPTION.CH_INSERT;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChannelInfoStateRequest build() {
                ChannelInfoStateRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChannelInfoStateRequest buildPartial() {
                ChannelInfoStateRequest channelInfoStateRequest = new ChannelInfoStateRequest(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                channelInfoStateRequest.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.channelInfoBuilder_;
                if (singleFieldBuilder == null) {
                    channelInfoStateRequest.channelInfo_ = this.channelInfo_;
                } else {
                    channelInfoStateRequest.channelInfo_ = singleFieldBuilder.build();
                }
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                channelInfoStateRequest.chIndex_ = this.chIndex_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                channelInfoStateRequest.chOption_ = this.chOption_;
                channelInfoStateRequest.bitField0_ = i2;
                onBuilt();
                return channelInfoStateRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChannelInfoStateRequest getDefaultInstanceForType() {
                return ChannelInfoStateRequest.getDefaultInstance();
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
                int i = this.bitField0_ & (-3);
                this.bitField0_ = i;
                this.chIndex_ = 0;
                int i2 = i & (-5);
                this.bitField0_ = i2;
                this.chOption_ = CHOPTION.CH_INSERT;
                this.bitField0_ = i2 & (-9);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.channelInfo_ = ChannelInfo.getDefaultInstance();
                this.chOption_ = CHOPTION.CH_INSERT;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
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

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$ChannelInfoStateRequest$a */
        /* loaded from: classes2.dex */
        class C4220a extends AbstractParser<ChannelInfoStateRequest> {
            C4220a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public ChannelInfoStateRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = ChannelInfoStateRequest.newBuilder();
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
            ChannelInfoStateRequest channelInfoStateRequest = new ChannelInfoStateRequest(true);
            defaultInstance = channelInfoStateRequest;
            channelInfoStateRequest.initFields();
        }

        /* synthetic */ ChannelInfoStateRequest(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static ChannelInfoStateRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14576q;
        }

        private void initFields() {
            this.version_ = 0;
            this.channelInfo_ = ChannelInfo.getDefaultInstance();
            this.chIndex_ = 0;
            this.chOption_ = CHOPTION.CH_INSERT;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static ChannelInfoStateRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ChannelInfoStateRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
        public int getChIndex() {
            return this.chIndex_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
        public CHOPTION getChOption() {
            return this.chOption_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
        public ChannelInfo getChannelInfo() {
            return this.channelInfo_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
        public ChannelInfoOrBuilder getChannelInfoOrBuilder() {
            return this.channelInfo_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChannelInfoStateRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
        public boolean hasChIndex() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
        public boolean hasChOption() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
        public boolean hasChannelInfo() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14577r.ensureFieldAccessorsInitialized(ChannelInfoStateRequest.class, Builder.class);
        }

        private ChannelInfoStateRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(ChannelInfoStateRequest channelInfoStateRequest) {
            return (Builder) newBuilder().mergeFrom((Message) channelInfoStateRequest);
        }

        public static ChannelInfoStateRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ChannelInfoStateRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ChannelInfoStateRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ChannelInfoStateRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private ChannelInfoStateRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ChannelInfoStateRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static ChannelInfoStateRequest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ChannelInfoStateRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ChannelInfoStateRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ChannelInfoStateRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ChannelInfoStateRequestOrBuilder extends MessageOrBuilder {
        int getChIndex();

        CHOPTION getChOption();

        ChannelInfo getChannelInfo();

        ChannelInfoOrBuilder getChannelInfoOrBuilder();

        int getVersion();

        boolean hasChIndex();

        boolean hasChOption();

        boolean hasChannelInfo();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class ChannelInfoStateResponse extends GeneratedMessage implements ChannelInfoStateResponseOrBuilder {
        public static final int CH1_FIELD_NUMBER = 3;
        public static final int CH2_FIELD_NUMBER = 4;
        public static final int CHINDEX_FIELD_NUMBER = 5;
        public static final int CHOPTION_FIELD_NUMBER = 6;
        public static Parser<ChannelInfoStateResponse> PARSER = new C4221a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final ChannelInfoStateResponse defaultInstance;
        private int bitField0_;
        private ChannelInfo ch1_;
        private ChannelInfo ch2_;
        private int chIndex_;
        private CHOPTION chOption_;
        private RESULT result_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ChannelInfoStateResponseOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> ch1Builder_;
            private ChannelInfo ch1_;
            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> ch2Builder_;
            private ChannelInfo ch2_;
            private int chIndex_;
            private CHOPTION chOption_;
            private RESULT result_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> getCh1FieldBuilder() {
                if (this.ch1Builder_ == null) {
                    this.ch1Builder_ = new SingleFieldBuilder<>(getCh1(), getParentForChildren(), isClean());
                    this.ch1_ = null;
                }
                return this.ch1Builder_;
            }

            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> getCh2FieldBuilder() {
                if (this.ch2Builder_ == null) {
                    this.ch2Builder_ = new SingleFieldBuilder<>(getCh2(), getParentForChildren(), isClean());
                    this.ch2_ = null;
                }
                return this.ch2Builder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14578s;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getCh1FieldBuilder();
                    getCh2FieldBuilder();
                }
            }

            public Builder clearCh1() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clearCh2() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    this.ch2_ = ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clearChIndex() {
                this.bitField0_ &= -17;
                this.chIndex_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChOption() {
                this.bitField0_ &= -33;
                this.chOption_ = CHOPTION.CH_INSERT;
                onChanged();
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

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public ChannelInfo getCh1() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    return this.ch1_;
                }
                return singleFieldBuilder.getMessage();
            }

            public ChannelInfo.Builder getCh1Builder() {
                this.bitField0_ |= 4;
                onChanged();
                return getCh1FieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public ChannelInfoOrBuilder getCh1OrBuilder() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch1_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public ChannelInfo getCh2() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    return this.ch2_;
                }
                return singleFieldBuilder.getMessage();
            }

            public ChannelInfo.Builder getCh2Builder() {
                this.bitField0_ |= 8;
                onChanged();
                return getCh2FieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public ChannelInfoOrBuilder getCh2OrBuilder() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch2_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public int getChIndex() {
                return this.chIndex_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public CHOPTION getChOption() {
                return this.chOption_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Mi3Protos.f14578s;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public RESULT getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public boolean hasCh1() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public boolean hasCh2() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public boolean hasChIndex() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public boolean hasChOption() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14579t.ensureFieldAccessorsInitialized(ChannelInfoStateResponse.class, Builder.class);
            }

            public Builder mergeCh1(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) == 4 && this.ch1_ != ChannelInfo.getDefaultInstance()) {
                        this.ch1_ = ((ChannelInfo.Builder) ChannelInfo.newBuilder(this.ch1_).mergeFrom((Message) channelInfo)).buildPartial();
                    } else {
                        this.ch1_ = channelInfo;
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(channelInfo);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder mergeCh2(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 8) == 8 && this.ch2_ != ChannelInfo.getDefaultInstance()) {
                        this.ch2_ = ((ChannelInfo.Builder) ChannelInfo.newBuilder(this.ch2_).mergeFrom((Message) channelInfo)).buildPartial();
                    } else {
                        this.ch2_ = channelInfo;
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(channelInfo);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setCh1(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    Objects.requireNonNull(channelInfo);
                    this.ch1_ = channelInfo;
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(channelInfo);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setCh2(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    Objects.requireNonNull(channelInfo);
                    this.ch2_ = channelInfo;
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(channelInfo);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setChIndex(int i) {
                this.bitField0_ |= 16;
                this.chIndex_ = i;
                onChanged();
                return this;
            }

            public Builder setChOption(CHOPTION choption) {
                Objects.requireNonNull(choption);
                this.bitField0_ |= 32;
                this.chOption_ = choption;
                onChanged();
                return this;
            }

            public Builder setResult(RESULT result) {
                Objects.requireNonNull(result);
                this.bitField0_ |= 2;
                this.result_ = result;
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
                this.result_ = RESULT.FAIL;
                this.ch1_ = ChannelInfo.getDefaultInstance();
                this.ch2_ = ChannelInfo.getDefaultInstance();
                this.chOption_ = CHOPTION.CH_INSERT;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChannelInfoStateResponse build() {
                ChannelInfoStateResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChannelInfoStateResponse buildPartial() {
                ChannelInfoStateResponse channelInfoStateResponse = new ChannelInfoStateResponse(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                channelInfoStateResponse.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                channelInfoStateResponse.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    channelInfoStateResponse.ch1_ = this.ch1_;
                } else {
                    channelInfoStateResponse.ch1_ = singleFieldBuilder.build();
                }
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder2 = this.ch2Builder_;
                if (singleFieldBuilder2 == null) {
                    channelInfoStateResponse.ch2_ = this.ch2_;
                } else {
                    channelInfoStateResponse.ch2_ = singleFieldBuilder2.build();
                }
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                channelInfoStateResponse.chIndex_ = this.chIndex_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                channelInfoStateResponse.chOption_ = this.chOption_;
                channelInfoStateResponse.bitField0_ = i2;
                onBuilt();
                return channelInfoStateResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChannelInfoStateResponse getDefaultInstanceForType() {
                return ChannelInfoStateResponse.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = RESULT.FAIL;
                this.bitField0_ = i & (-3);
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder2 = this.ch2Builder_;
                if (singleFieldBuilder2 == null) {
                    this.ch2_ = ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder2.clear();
                }
                int i2 = this.bitField0_ & (-9);
                this.bitField0_ = i2;
                this.chIndex_ = 0;
                int i3 = i2 & (-17);
                this.bitField0_ = i3;
                this.chOption_ = CHOPTION.CH_INSERT;
                this.bitField0_ = i3 & (-33);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setCh1(ChannelInfo.Builder builder) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setCh2(ChannelInfo.Builder builder) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    this.ch2_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = RESULT.FAIL;
                this.ch1_ = ChannelInfo.getDefaultInstance();
                this.ch2_ = ChannelInfo.getDefaultInstance();
                this.chOption_ = CHOPTION.CH_INSERT;
                maybeForceBuilderInitialization();
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$ChannelInfoStateResponse$a */
        /* loaded from: classes2.dex */
        class C4221a extends AbstractParser<ChannelInfoStateResponse> {
            C4221a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public ChannelInfoStateResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = ChannelInfoStateResponse.newBuilder();
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
            ChannelInfoStateResponse channelInfoStateResponse = new ChannelInfoStateResponse(true);
            defaultInstance = channelInfoStateResponse;
            channelInfoStateResponse.initFields();
        }

        /* synthetic */ ChannelInfoStateResponse(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static ChannelInfoStateResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14578s;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = RESULT.FAIL;
            this.ch1_ = ChannelInfo.getDefaultInstance();
            this.ch2_ = ChannelInfo.getDefaultInstance();
            this.chIndex_ = 0;
            this.chOption_ = CHOPTION.CH_INSERT;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static ChannelInfoStateResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ChannelInfoStateResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public ChannelInfo getCh1() {
            return this.ch1_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public ChannelInfoOrBuilder getCh1OrBuilder() {
            return this.ch1_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public ChannelInfo getCh2() {
            return this.ch2_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public ChannelInfoOrBuilder getCh2OrBuilder() {
            return this.ch2_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public int getChIndex() {
            return this.chIndex_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public CHOPTION getChOption() {
            return this.chOption_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChannelInfoStateResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public RESULT getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public boolean hasCh1() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public boolean hasCh2() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public boolean hasChIndex() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public boolean hasChOption() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ChannelInfoStateResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14579t.ensureFieldAccessorsInitialized(ChannelInfoStateResponse.class, Builder.class);
        }

        private ChannelInfoStateResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(ChannelInfoStateResponse channelInfoStateResponse) {
            return (Builder) newBuilder().mergeFrom((Message) channelInfoStateResponse);
        }

        public static ChannelInfoStateResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ChannelInfoStateResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ChannelInfoStateResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ChannelInfoStateResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private ChannelInfoStateResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ChannelInfoStateResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static ChannelInfoStateResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ChannelInfoStateResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ChannelInfoStateResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ChannelInfoStateResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ChannelInfoStateResponseOrBuilder extends MessageOrBuilder {
        ChannelInfo getCh1();

        ChannelInfoOrBuilder getCh1OrBuilder();

        ChannelInfo getCh2();

        ChannelInfoOrBuilder getCh2OrBuilder();

        int getChIndex();

        CHOPTION getChOption();

        RESULT getResult();

        int getVersion();

        boolean hasCh1();

        boolean hasCh2();

        boolean hasChIndex();

        boolean hasChOption();

        boolean hasResult();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class ConnectRequest extends GeneratedMessage implements ConnectRequestOrBuilder {
        public static Parser<ConnectRequest> PARSER = new C4222a();
        public static final int TOKEN_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final ConnectRequest defaultInstance;
        private int bitField0_;
        private ByteString token_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ConnectRequestOrBuilder {
            private int bitField0_;
            private ByteString token_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14564e;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearToken() {
                this.bitField0_ &= -3;
                this.token_ = ConnectRequest.getDefaultInstance().getToken();
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
                return Mi3Protos.f14564e;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectRequestOrBuilder
            public ByteString getToken() {
                return this.token_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectRequestOrBuilder
            public boolean hasToken() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14565f.ensureFieldAccessorsInitialized(ConnectRequest.class, Builder.class);
            }

            public Builder setToken(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 2;
                this.token_ = byteString;
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
                this.token_ = ByteString.EMPTY;
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
                int i2 = (i & 1) != 1 ? 0 : 1;
                connectRequest.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                connectRequest.token_ = this.token_;
                connectRequest.bitField0_ = i2;
                onBuilt();
                return connectRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ConnectRequest getDefaultInstanceForType() {
                return ConnectRequest.getDefaultInstance();
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

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$ConnectRequest$a */
        /* loaded from: classes2.dex */
        class C4222a extends AbstractParser<ConnectRequest> {
            C4222a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
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

        /* synthetic */ ConnectRequest(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static ConnectRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14564e;
        }

        private void initFields() {
            this.version_ = 0;
            this.token_ = ByteString.EMPTY;
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

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ConnectRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectRequestOrBuilder
        public ByteString getToken() {
            return this.token_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectRequestOrBuilder
        public boolean hasToken() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14565f.ensureFieldAccessorsInitialized(ConnectRequest.class, Builder.class);
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
        ByteString getToken();

        int getVersion();

        boolean hasToken();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class ConnectResponse extends GeneratedMessage implements ConnectResponseOrBuilder {
        public static final int CONNECTCODE_FIELD_NUMBER = 2;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static final int DEVICETYPE_FIELD_NUMBER = 4;
        public static final int IV_FIELD_NUMBER = 8;
        public static final int KEY_FIELD_NUMBER = 7;
        public static final int MAC_FIELD_NUMBER = 5;
        public static Parser<ConnectResponse> PARSER = new C4223a();
        public static final int TOKEN_FIELD_NUMBER = 6;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final ConnectResponse defaultInstance;
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
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ConnectResponseOrBuilder {
            private int bitField0_;
            private CONNECT_CODE connectCode_;
            private int deviceId_;
            private int deviceType_;
            private ByteString iv_;
            private ByteString key_;
            private ByteString mac_;
            private ByteString token_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14566g;
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
                this.iv_ = ConnectResponse.getDefaultInstance().getIv();
                onChanged();
                return this;
            }

            public Builder clearKey() {
                this.bitField0_ &= -65;
                this.key_ = ConnectResponse.getDefaultInstance().getKey();
                onChanged();
                return this;
            }

            public Builder clearMac() {
                this.bitField0_ &= -17;
                this.mac_ = ConnectResponse.getDefaultInstance().getMac();
                onChanged();
                return this;
            }

            public Builder clearToken() {
                this.bitField0_ &= -33;
                this.token_ = ConnectResponse.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public CONNECT_CODE getConnectCode() {
                return this.connectCode_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Mi3Protos.f14566g;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public int getDeviceId() {
                return this.deviceId_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public int getDeviceType() {
                return this.deviceType_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public ByteString getIv() {
                return this.iv_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public ByteString getKey() {
                return this.key_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public ByteString getMac() {
                return this.mac_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public ByteString getToken() {
                return this.token_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public boolean hasConnectCode() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public boolean hasDeviceType() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public boolean hasIv() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public boolean hasKey() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public boolean hasMac() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public boolean hasToken() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14567h.ensureFieldAccessorsInitialized(ConnectResponse.class, Builder.class);
            }

            public Builder setConnectCode(CONNECT_CODE connect_code) {
                Objects.requireNonNull(connect_code);
                this.bitField0_ |= 2;
                this.connectCode_ = connect_code;
                onChanged();
                return this;
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
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 128;
                this.iv_ = byteString;
                onChanged();
                return this;
            }

            public Builder setKey(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 64;
                this.key_ = byteString;
                onChanged();
                return this;
            }

            public Builder setMac(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 16;
                this.mac_ = byteString;
                onChanged();
                return this;
            }

            public Builder setToken(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 32;
                this.token_ = byteString;
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
                this.connectCode_ = CONNECT_CODE.ALLOW;
                ByteString byteString = ByteString.EMPTY;
                this.mac_ = byteString;
                this.token_ = byteString;
                this.key_ = byteString;
                this.iv_ = byteString;
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
                int i2 = (i & 1) != 1 ? 0 : 1;
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
                connectResponse.token_ = this.token_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                connectResponse.key_ = this.key_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                connectResponse.iv_ = this.iv_;
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

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
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

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$ConnectResponse$a */
        /* loaded from: classes2.dex */
        class C4223a extends AbstractParser<ConnectResponse> {
            C4223a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
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

        /* synthetic */ ConnectResponse(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static ConnectResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14566g;
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

        public static ConnectResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ConnectResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public CONNECT_CODE getConnectCode() {
            return this.connectCode_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public int getDeviceId() {
            return this.deviceId_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public int getDeviceType() {
            return this.deviceType_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public ByteString getIv() {
            return this.iv_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public ByteString getKey() {
            return this.key_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public ByteString getMac() {
            return this.mac_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ConnectResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public ByteString getToken() {
            return this.token_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public boolean hasConnectCode() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public boolean hasDeviceType() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public boolean hasIv() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public boolean hasKey() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public boolean hasMac() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public boolean hasToken() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.ConnectResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14567h.ensureFieldAccessorsInitialized(ConnectResponse.class, Builder.class);
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
    public enum DEVICEMODE implements ProtocolMessageEnum {
        NORMAL_CH(0, 0),
        SCAN_CH(1, 1),
        SCAN_FREQ(2, 2);
        
        public static final int NORMAL_CH_VALUE = 0;
        public static final int SCAN_CH_VALUE = 1;
        public static final int SCAN_FREQ_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<DEVICEMODE> internalValueMap = new C4224a();
        private static final DEVICEMODE[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$DEVICEMODE$a */
        /* loaded from: classes2.dex */
        class C4224a implements Internal.EnumLiteMap<DEVICEMODE> {
            C4224a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public DEVICEMODE findValueByNumber(int i) {
                return DEVICEMODE.valueOf(i);
            }
        }

        DEVICEMODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Mi3Protos.m10922J().getEnumTypes().get(6);
        }

        public static Internal.EnumLiteMap<DEVICEMODE> internalGetValueMap() {
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

        public static DEVICEMODE valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        return null;
                    }
                    return SCAN_FREQ;
                }
                return SCAN_CH;
            }
            return NORMAL_CH;
        }

        public static DEVICEMODE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class DevInfo extends GeneratedMessage implements DevInfoOrBuilder {
        public static final int BAND_FIELD_NUMBER = 3;
        public static final int BOOTVOICE_FIELD_NUMBER = 6;
        public static final int CALLVOICE_FIELD_NUMBER = 15;
        public static final int CURCHINDEX_FIELD_NUMBER = 16;
        public static final int DEVICECOLOR_FIELD_NUMBER = 12;
        public static final int DEVICEID_FIELD_NUMBER = 11;
        public static final int DEVICEMODE_FIELD_NUMBER = 14;
        public static final int KEYVOICE_FIELD_NUMBER = 7;
        public static final int LANGTYPE_FIELD_NUMBER = 5;
        public static final int NAME_FIELD_NUMBER = 8;
        public static Parser<DevInfo> PARSER = new C4225a();
        public static final int POLITE_FIELD_NUMBER = 4;
        public static final int SHARELOC_FIELD_NUMBER = 13;
        public static final int SQ_FIELD_NUMBER = 1;
        public static final int VERHW_FIELD_NUMBER = 9;
        public static final int VERSOFT_FIELD_NUMBER = 10;
        public static final int VOX_FIELD_NUMBER = 2;
        private static final DevInfo defaultInstance;
        private int band_;
        private int bitField0_;
        private SWITCH bootVoice_;
        private SWITCH callVoice_;
        private int curChIndex_;
        private int deviceColor_;
        private int deviceId_;
        private DEVICEMODE deviceMode_;
        private SWITCH keyVoice_;
        private LANGUAGE_TYPE langType_;
        private ByteString name_;
        private SWITCH polite_;
        private SWITCH shareLoc_;
        private int sq_;
        private final UnknownFieldSet unknownFields;
        private int verHw_;
        private int verSoft_;
        private VOX_TYPE vox_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements DevInfoOrBuilder {
            private int band_;
            private int bitField0_;
            private SWITCH bootVoice_;
            private SWITCH callVoice_;
            private int curChIndex_;
            private int deviceColor_;
            private int deviceId_;
            private DEVICEMODE deviceMode_;
            private SWITCH keyVoice_;
            private LANGUAGE_TYPE langType_;
            private ByteString name_;
            private SWITCH polite_;
            private SWITCH shareLoc_;
            private int sq_;
            private int verHw_;
            private int verSoft_;
            private VOX_TYPE vox_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14568i;
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

            public Builder clearCallVoice() {
                this.bitField0_ &= -16385;
                this.callVoice_ = SWITCH.OFF;
                onChanged();
                return this;
            }

            public Builder clearCurChIndex() {
                this.bitField0_ &= -32769;
                this.curChIndex_ = 0;
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

            public Builder clearDeviceMode() {
                this.bitField0_ &= -8193;
                this.deviceMode_ = DEVICEMODE.NORMAL_CH;
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

            public Builder clearShareLoc() {
                this.bitField0_ &= -4097;
                this.shareLoc_ = SWITCH.OFF;
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

            public Builder clearVox() {
                this.bitField0_ &= -3;
                this.vox_ = VOX_TYPE.VOX_OFF;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public int getBand() {
                return this.band_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public SWITCH getBootVoice() {
                return this.bootVoice_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public SWITCH getCallVoice() {
                return this.callVoice_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public int getCurChIndex() {
                return this.curChIndex_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Mi3Protos.f14568i;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public int getDeviceColor() {
                return this.deviceColor_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public int getDeviceId() {
                return this.deviceId_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public DEVICEMODE getDeviceMode() {
                return this.deviceMode_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public SWITCH getKeyVoice() {
                return this.keyVoice_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public LANGUAGE_TYPE getLangType() {
                return this.langType_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public ByteString getName() {
                return this.name_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public SWITCH getPolite() {
                return this.polite_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public SWITCH getShareLoc() {
                return this.shareLoc_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public int getSq() {
                return this.sq_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public int getVerHw() {
                return this.verHw_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public int getVerSoft() {
                return this.verSoft_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public VOX_TYPE getVox() {
                return this.vox_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasBand() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasBootVoice() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasCallVoice() {
                return (this.bitField0_ & 16384) == 16384;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasCurChIndex() {
                return (this.bitField0_ & 32768) == 32768;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasDeviceColor() {
                return (this.bitField0_ & 2048) == 2048;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasDeviceMode() {
                return (this.bitField0_ & 8192) == 8192;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasKeyVoice() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasLangType() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasName() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasPolite() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasShareLoc() {
                return (this.bitField0_ & 4096) == 4096;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasSq() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasVerHw() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasVerSoft() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
            public boolean hasVox() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14569j.ensureFieldAccessorsInitialized(DevInfo.class, Builder.class);
            }

            public Builder setBand(int i) {
                this.bitField0_ |= 4;
                this.band_ = i;
                onChanged();
                return this;
            }

            public Builder setBootVoice(SWITCH r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 32;
                this.bootVoice_ = r2;
                onChanged();
                return this;
            }

            public Builder setCallVoice(SWITCH r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 16384;
                this.callVoice_ = r2;
                onChanged();
                return this;
            }

            public Builder setCurChIndex(int i) {
                this.bitField0_ |= 32768;
                this.curChIndex_ = i;
                onChanged();
                return this;
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

            public Builder setDeviceMode(DEVICEMODE devicemode) {
                Objects.requireNonNull(devicemode);
                this.bitField0_ |= 8192;
                this.deviceMode_ = devicemode;
                onChanged();
                return this;
            }

            public Builder setKeyVoice(SWITCH r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 64;
                this.keyVoice_ = r2;
                onChanged();
                return this;
            }

            public Builder setLangType(LANGUAGE_TYPE language_type) {
                Objects.requireNonNull(language_type);
                this.bitField0_ |= 16;
                this.langType_ = language_type;
                onChanged();
                return this;
            }

            public Builder setName(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 128;
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public Builder setPolite(SWITCH r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 8;
                this.polite_ = r2;
                onChanged();
                return this;
            }

            public Builder setShareLoc(SWITCH r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 4096;
                this.shareLoc_ = r2;
                onChanged();
                return this;
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

            public Builder setVox(VOX_TYPE vox_type) {
                Objects.requireNonNull(vox_type);
                this.bitField0_ |= 2;
                this.vox_ = vox_type;
                onChanged();
                return this;
            }

            private Builder() {
                this.vox_ = VOX_TYPE.VOX_OFF;
                SWITCH r0 = SWITCH.OFF;
                this.polite_ = r0;
                this.langType_ = LANGUAGE_TYPE.CLOSE;
                this.bootVoice_ = r0;
                this.keyVoice_ = r0;
                this.name_ = ByteString.EMPTY;
                this.shareLoc_ = r0;
                this.deviceMode_ = DEVICEMODE.NORMAL_CH;
                this.callVoice_ = r0;
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
                int i2 = (i & 1) != 1 ? 0 : 1;
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
                devInfo.shareLoc_ = this.shareLoc_;
                if ((i & 8192) == 8192) {
                    i2 |= 8192;
                }
                devInfo.deviceMode_ = this.deviceMode_;
                if ((i & 16384) == 16384) {
                    i2 |= 16384;
                }
                devInfo.callVoice_ = this.callVoice_;
                if ((i & 32768) == 32768) {
                    i2 |= 32768;
                }
                devInfo.curChIndex_ = this.curChIndex_;
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
                this.vox_ = VOX_TYPE.VOX_OFF;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.band_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                SWITCH r2 = SWITCH.OFF;
                this.polite_ = r2;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.langType_ = LANGUAGE_TYPE.CLOSE;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.bootVoice_ = r2;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.keyVoice_ = r2;
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
                this.shareLoc_ = r2;
                int i13 = i12 & (-4097);
                this.bitField0_ = i13;
                this.deviceMode_ = DEVICEMODE.NORMAL_CH;
                int i14 = i13 & (-8193);
                this.bitField0_ = i14;
                this.callVoice_ = r2;
                int i15 = i14 & (-16385);
                this.bitField0_ = i15;
                this.curChIndex_ = 0;
                this.bitField0_ = (-32769) & i15;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.vox_ = VOX_TYPE.VOX_OFF;
                SWITCH r2 = SWITCH.OFF;
                this.polite_ = r2;
                this.langType_ = LANGUAGE_TYPE.CLOSE;
                this.bootVoice_ = r2;
                this.keyVoice_ = r2;
                this.name_ = ByteString.EMPTY;
                this.shareLoc_ = r2;
                this.deviceMode_ = DEVICEMODE.NORMAL_CH;
                this.callVoice_ = r2;
                maybeForceBuilderInitialization();
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$DevInfo$a */
        /* loaded from: classes2.dex */
        class C4225a extends AbstractParser<DevInfo> {
            C4225a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
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

        /* synthetic */ DevInfo(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static DevInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14568i;
        }

        private void initFields() {
            this.sq_ = 0;
            this.vox_ = VOX_TYPE.VOX_OFF;
            this.band_ = 0;
            SWITCH r1 = SWITCH.OFF;
            this.polite_ = r1;
            this.langType_ = LANGUAGE_TYPE.CLOSE;
            this.bootVoice_ = r1;
            this.keyVoice_ = r1;
            this.name_ = ByteString.EMPTY;
            this.verHw_ = 0;
            this.verSoft_ = 0;
            this.deviceId_ = 0;
            this.deviceColor_ = 0;
            this.shareLoc_ = r1;
            this.deviceMode_ = DEVICEMODE.NORMAL_CH;
            this.callVoice_ = r1;
            this.curChIndex_ = 0;
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public int getBand() {
            return this.band_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public SWITCH getBootVoice() {
            return this.bootVoice_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public SWITCH getCallVoice() {
            return this.callVoice_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public int getCurChIndex() {
            return this.curChIndex_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public int getDeviceColor() {
            return this.deviceColor_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public int getDeviceId() {
            return this.deviceId_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public DEVICEMODE getDeviceMode() {
            return this.deviceMode_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public SWITCH getKeyVoice() {
            return this.keyVoice_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public LANGUAGE_TYPE getLangType() {
            return this.langType_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public ByteString getName() {
            return this.name_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DevInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public SWITCH getPolite() {
            return this.polite_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public SWITCH getShareLoc() {
            return this.shareLoc_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public int getSq() {
            return this.sq_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public int getVerHw() {
            return this.verHw_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public int getVerSoft() {
            return this.verSoft_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public VOX_TYPE getVox() {
            return this.vox_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasBand() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasBootVoice() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasCallVoice() {
            return (this.bitField0_ & 16384) == 16384;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasCurChIndex() {
            return (this.bitField0_ & 32768) == 32768;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasDeviceColor() {
            return (this.bitField0_ & 2048) == 2048;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasDeviceMode() {
            return (this.bitField0_ & 8192) == 8192;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasKeyVoice() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasLangType() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasName() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasPolite() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasShareLoc() {
            return (this.bitField0_ & 4096) == 4096;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasSq() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasVerHw() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasVerSoft() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevInfoOrBuilder
        public boolean hasVox() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14569j.ensureFieldAccessorsInitialized(DevInfo.class, Builder.class);
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

        SWITCH getCallVoice();

        int getCurChIndex();

        int getDeviceColor();

        int getDeviceId();

        DEVICEMODE getDeviceMode();

        SWITCH getKeyVoice();

        LANGUAGE_TYPE getLangType();

        ByteString getName();

        SWITCH getPolite();

        SWITCH getShareLoc();

        int getSq();

        int getVerHw();

        int getVerSoft();

        VOX_TYPE getVox();

        boolean hasBand();

        boolean hasBootVoice();

        boolean hasCallVoice();

        boolean hasCurChIndex();

        boolean hasDeviceColor();

        boolean hasDeviceId();

        boolean hasDeviceMode();

        boolean hasKeyVoice();

        boolean hasLangType();

        boolean hasName();

        boolean hasPolite();

        boolean hasShareLoc();

        boolean hasSq();

        boolean hasVerHw();

        boolean hasVerSoft();

        boolean hasVox();
    }

    /* loaded from: classes2.dex */
    public static final class DevRequest extends GeneratedMessage implements DevRequestOrBuilder {
        public static final int DEVINFO_FIELD_NUMBER = 2;
        public static Parser<DevRequest> PARSER = new C4226a();
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

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14570k;
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
                return Mi3Protos.f14570k;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevRequestOrBuilder
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

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevRequestOrBuilder
            public DevInfoOrBuilder getDevInfoOrBuilder() {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.devInfo_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevRequestOrBuilder
            public boolean hasDevInfo() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14571l.ensureFieldAccessorsInitialized(DevRequest.class, Builder.class);
            }

            public Builder mergeDevInfo(DevInfo devInfo) {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) == 2 && this.devInfo_ != DevInfo.getDefaultInstance()) {
                        this.devInfo_ = ((DevInfo.Builder) DevInfo.newBuilder(this.devInfo_).mergeFrom((Message) devInfo)).buildPartial();
                    } else {
                        this.devInfo_ = devInfo;
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
                if (singleFieldBuilder == null) {
                    Objects.requireNonNull(devInfo);
                    this.devInfo_ = devInfo;
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(devInfo);
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
                int i2 = (i & 1) != 1 ? 0 : 1;
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

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
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

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$DevRequest$a */
        /* loaded from: classes2.dex */
        class C4226a extends AbstractParser<DevRequest> {
            C4226a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
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

        /* synthetic */ DevRequest(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static DevRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14570k;
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevRequestOrBuilder
        public DevInfo getDevInfo() {
            return this.devInfo_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevRequestOrBuilder
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevRequestOrBuilder
        public boolean hasDevInfo() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14571l.ensureFieldAccessorsInitialized(DevRequest.class, Builder.class);
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
        public static Parser<DevResponse> PARSER = new C4227a();
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

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14572m;
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
                return Mi3Protos.f14572m;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
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

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
            public DevInfoOrBuilder getDevInfoOrBuilder() {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.devInfo_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
            public RESULT getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
            public boolean hasDevInfo() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14573n.ensureFieldAccessorsInitialized(DevResponse.class, Builder.class);
            }

            public Builder mergeDevInfo(DevInfo devInfo) {
                SingleFieldBuilder<DevInfo, DevInfo.Builder, DevInfoOrBuilder> singleFieldBuilder = this.devInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) == 4 && this.devInfo_ != DevInfo.getDefaultInstance()) {
                        this.devInfo_ = ((DevInfo.Builder) DevInfo.newBuilder(this.devInfo_).mergeFrom((Message) devInfo)).buildPartial();
                    } else {
                        this.devInfo_ = devInfo;
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
                if (singleFieldBuilder == null) {
                    Objects.requireNonNull(devInfo);
                    this.devInfo_ = devInfo;
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(devInfo);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setResult(RESULT result) {
                Objects.requireNonNull(result);
                this.bitField0_ |= 2;
                this.result_ = result;
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
                int i2 = (i & 1) != 1 ? 0 : 1;
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

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
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

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$DevResponse$a */
        /* loaded from: classes2.dex */
        class C4227a extends AbstractParser<DevResponse> {
            C4227a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
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

        /* synthetic */ DevResponse(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static DevResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14572m;
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
        public DevInfo getDevInfo() {
            return this.devInfo_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
        public DevInfoOrBuilder getDevInfoOrBuilder() {
            return this.devInfo_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DevResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
        public RESULT getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
        public boolean hasDevInfo() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.DevResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14573n.ensureFieldAccessorsInitialized(DevResponse.class, Builder.class);
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
    public static final class KeyExchangeRequest extends GeneratedMessage implements KeyExchangeRequestOrBuilder {
        public static final int APPTYPE_FIELD_NUMBER = 2;
        public static Parser<KeyExchangeRequest> PARSER = new C4228a();
        public static final int PUBLICKEY_FIELD_NUMBER = 3;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final KeyExchangeRequest defaultInstance;
        private APP_TYPE appType_;
        private int bitField0_;
        private ByteString publicKey_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements KeyExchangeRequestOrBuilder {
            private APP_TYPE appType_;
            private int bitField0_;
            private ByteString publicKey_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14560a;
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

            public Builder clearPublicKey() {
                this.bitField0_ &= -5;
                this.publicKey_ = KeyExchangeRequest.getDefaultInstance().getPublicKey();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeRequestOrBuilder
            public APP_TYPE getAppType() {
                return this.appType_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Mi3Protos.f14560a;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeRequestOrBuilder
            public ByteString getPublicKey() {
                return this.publicKey_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeRequestOrBuilder
            public boolean hasAppType() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeRequestOrBuilder
            public boolean hasPublicKey() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14561b.ensureFieldAccessorsInitialized(KeyExchangeRequest.class, Builder.class);
            }

            public Builder setAppType(APP_TYPE app_type) {
                Objects.requireNonNull(app_type);
                this.bitField0_ |= 2;
                this.appType_ = app_type;
                onChanged();
                return this;
            }

            public Builder setPublicKey(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.publicKey_ = byteString;
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
                this.appType_ = APP_TYPE.FY_APP;
                this.publicKey_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public KeyExchangeRequest build() {
                KeyExchangeRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public KeyExchangeRequest buildPartial() {
                KeyExchangeRequest keyExchangeRequest = new KeyExchangeRequest(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                keyExchangeRequest.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                keyExchangeRequest.appType_ = this.appType_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                keyExchangeRequest.publicKey_ = this.publicKey_;
                keyExchangeRequest.bitField0_ = i2;
                onBuilt();
                return keyExchangeRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public KeyExchangeRequest getDefaultInstanceForType() {
                return KeyExchangeRequest.getDefaultInstance();
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
                this.publicKey_ = ByteString.EMPTY;
                this.bitField0_ = i2 & (-5);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.appType_ = APP_TYPE.FY_APP;
                this.publicKey_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$KeyExchangeRequest$a */
        /* loaded from: classes2.dex */
        class C4228a extends AbstractParser<KeyExchangeRequest> {
            C4228a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public KeyExchangeRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = KeyExchangeRequest.newBuilder();
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
            KeyExchangeRequest keyExchangeRequest = new KeyExchangeRequest(true);
            defaultInstance = keyExchangeRequest;
            keyExchangeRequest.initFields();
        }

        /* synthetic */ KeyExchangeRequest(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static KeyExchangeRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14560a;
        }

        private void initFields() {
            this.version_ = 0;
            this.appType_ = APP_TYPE.FY_APP;
            this.publicKey_ = ByteString.EMPTY;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static KeyExchangeRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static KeyExchangeRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeRequestOrBuilder
        public APP_TYPE getAppType() {
            return this.appType_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<KeyExchangeRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeRequestOrBuilder
        public ByteString getPublicKey() {
            return this.publicKey_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeRequestOrBuilder
        public boolean hasAppType() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeRequestOrBuilder
        public boolean hasPublicKey() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14561b.ensureFieldAccessorsInitialized(KeyExchangeRequest.class, Builder.class);
        }

        private KeyExchangeRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(KeyExchangeRequest keyExchangeRequest) {
            return (Builder) newBuilder().mergeFrom((Message) keyExchangeRequest);
        }

        public static KeyExchangeRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static KeyExchangeRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static KeyExchangeRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public KeyExchangeRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private KeyExchangeRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static KeyExchangeRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static KeyExchangeRequest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static KeyExchangeRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static KeyExchangeRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static KeyExchangeRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface KeyExchangeRequestOrBuilder extends MessageOrBuilder {
        APP_TYPE getAppType();

        ByteString getPublicKey();

        int getVersion();

        boolean hasAppType();

        boolean hasPublicKey();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class KeyExchangeResponse extends GeneratedMessage implements KeyExchangeResponseOrBuilder {
        public static final int CONNECTCODE_FIELD_NUMBER = 2;
        public static Parser<KeyExchangeResponse> PARSER = new C4229a();
        public static final int PUBLICKEY_FIELD_NUMBER = 3;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final KeyExchangeResponse defaultInstance;
        private int bitField0_;
        private CONNECT_CODE connectCode_;
        private ByteString publicKey_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements KeyExchangeResponseOrBuilder {
            private int bitField0_;
            private CONNECT_CODE connectCode_;
            private ByteString publicKey_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14562c;
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

            public Builder clearPublicKey() {
                this.bitField0_ &= -5;
                this.publicKey_ = KeyExchangeResponse.getDefaultInstance().getPublicKey();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeResponseOrBuilder
            public CONNECT_CODE getConnectCode() {
                return this.connectCode_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Mi3Protos.f14562c;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeResponseOrBuilder
            public ByteString getPublicKey() {
                return this.publicKey_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeResponseOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeResponseOrBuilder
            public boolean hasConnectCode() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeResponseOrBuilder
            public boolean hasPublicKey() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeResponseOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14563d.ensureFieldAccessorsInitialized(KeyExchangeResponse.class, Builder.class);
            }

            public Builder setConnectCode(CONNECT_CODE connect_code) {
                Objects.requireNonNull(connect_code);
                this.bitField0_ |= 2;
                this.connectCode_ = connect_code;
                onChanged();
                return this;
            }

            public Builder setPublicKey(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.publicKey_ = byteString;
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
                this.connectCode_ = CONNECT_CODE.ALLOW;
                this.publicKey_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public KeyExchangeResponse build() {
                KeyExchangeResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public KeyExchangeResponse buildPartial() {
                KeyExchangeResponse keyExchangeResponse = new KeyExchangeResponse(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                keyExchangeResponse.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                keyExchangeResponse.connectCode_ = this.connectCode_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                keyExchangeResponse.publicKey_ = this.publicKey_;
                keyExchangeResponse.bitField0_ = i2;
                onBuilt();
                return keyExchangeResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public KeyExchangeResponse getDefaultInstanceForType() {
                return KeyExchangeResponse.getDefaultInstance();
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
                this.publicKey_ = ByteString.EMPTY;
                this.bitField0_ = i2 & (-5);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.connectCode_ = CONNECT_CODE.ALLOW;
                this.publicKey_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$KeyExchangeResponse$a */
        /* loaded from: classes2.dex */
        class C4229a extends AbstractParser<KeyExchangeResponse> {
            C4229a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public KeyExchangeResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = KeyExchangeResponse.newBuilder();
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
            KeyExchangeResponse keyExchangeResponse = new KeyExchangeResponse(true);
            defaultInstance = keyExchangeResponse;
            keyExchangeResponse.initFields();
        }

        /* synthetic */ KeyExchangeResponse(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static KeyExchangeResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14562c;
        }

        private void initFields() {
            this.version_ = 0;
            this.connectCode_ = CONNECT_CODE.ALLOW;
            this.publicKey_ = ByteString.EMPTY;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static KeyExchangeResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static KeyExchangeResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeResponseOrBuilder
        public CONNECT_CODE getConnectCode() {
            return this.connectCode_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<KeyExchangeResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeResponseOrBuilder
        public ByteString getPublicKey() {
            return this.publicKey_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeResponseOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeResponseOrBuilder
        public boolean hasConnectCode() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeResponseOrBuilder
        public boolean hasPublicKey() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.KeyExchangeResponseOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14563d.ensureFieldAccessorsInitialized(KeyExchangeResponse.class, Builder.class);
        }

        private KeyExchangeResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(KeyExchangeResponse keyExchangeResponse) {
            return (Builder) newBuilder().mergeFrom((Message) keyExchangeResponse);
        }

        public static KeyExchangeResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static KeyExchangeResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static KeyExchangeResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public KeyExchangeResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private KeyExchangeResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static KeyExchangeResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static KeyExchangeResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static KeyExchangeResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static KeyExchangeResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static KeyExchangeResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface KeyExchangeResponseOrBuilder extends MessageOrBuilder {
        CONNECT_CODE getConnectCode();

        ByteString getPublicKey();

        int getVersion();

        boolean hasConnectCode();

        boolean hasPublicKey();

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
        private static Internal.EnumLiteMap<LANGUAGE_TYPE> internalValueMap = new C4230a();
        private static final LANGUAGE_TYPE[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$LANGUAGE_TYPE$a */
        /* loaded from: classes2.dex */
        class C4230a implements Internal.EnumLiteMap<LANGUAGE_TYPE> {
            C4230a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public LANGUAGE_TYPE findValueByNumber(int i) {
                return LANGUAGE_TYPE.valueOf(i);
            }
        }

        LANGUAGE_TYPE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Mi3Protos.m10922J().getEnumTypes().get(2);
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
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        return null;
                    }
                    return ENGLISH;
                }
                return CHINESE;
            }
            return CLOSE;
        }

        public static LANGUAGE_TYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class LocationUpdate extends GeneratedMessage implements LocationUpdateOrBuilder {
        public static final int ALTITUDE_FIELD_NUMBER = 8;
        public static final int CTLSYNC_FIELD_NUMBER = 2;
        public static final int LATITUDE_FIELD_NUMBER = 7;
        public static final int LONGITUDE_FIELD_NUMBER = 6;
        public static Parser<LocationUpdate> PARSER = new C4231a();
        public static final int RXCSS_FIELD_NUMBER = 10;
        public static final int TIMESYNC_FIELD_NUMBER = 9;
        public static final int USERFREQ_FIELD_NUMBER = 5;
        public static final int USERID_FIELD_NUMBER = 3;
        public static final int USERNAME_FIELD_NUMBER = 4;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final LocationUpdate defaultInstance;
        private int altitude_;
        private int bitField0_;
        private SWITCH ctlsync_;
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
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements LocationUpdateOrBuilder {
            private int altitude_;
            private int bitField0_;
            private SWITCH ctlsync_;
            private int latitude_;
            private int longitude_;
            private int rxCss_;
            private int timeSync_;
            private int userFreq_;
            private int userId_;
            private ByteString userName_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14551A;
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
                this.ctlsync_ = SWITCH.OFF;
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
                this.userName_ = LocationUpdate.getDefaultInstance().getUserName();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public int getAltitude() {
                return this.altitude_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public SWITCH getCtlsync() {
                return this.ctlsync_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Mi3Protos.f14551A;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public int getLatitude() {
                return this.latitude_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public int getLongitude() {
                return this.longitude_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public int getRxCss() {
                return this.rxCss_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public int getTimeSync() {
                return this.timeSync_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public int getUserFreq() {
                return this.userFreq_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public int getUserId() {
                return this.userId_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public ByteString getUserName() {
                return this.userName_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public boolean hasAltitude() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public boolean hasCtlsync() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public boolean hasLatitude() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public boolean hasLongitude() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public boolean hasRxCss() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public boolean hasTimeSync() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public boolean hasUserFreq() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public boolean hasUserId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public boolean hasUserName() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14552B.ensureFieldAccessorsInitialized(LocationUpdate.class, Builder.class);
            }

            public Builder setAltitude(int i) {
                this.bitField0_ |= 128;
                this.altitude_ = i;
                onChanged();
                return this;
            }

            public Builder setCtlsync(SWITCH r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 2;
                this.ctlsync_ = r2;
                onChanged();
                return this;
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
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 8;
                this.userName_ = byteString;
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
                this.ctlsync_ = SWITCH.OFF;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LocationUpdate build() {
                LocationUpdate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LocationUpdate buildPartial() {
                LocationUpdate locationUpdate = new LocationUpdate(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                locationUpdate.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                locationUpdate.ctlsync_ = this.ctlsync_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                locationUpdate.userId_ = this.userId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                locationUpdate.userName_ = this.userName_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                locationUpdate.userFreq_ = this.userFreq_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                locationUpdate.longitude_ = this.longitude_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                locationUpdate.latitude_ = this.latitude_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                locationUpdate.altitude_ = this.altitude_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                locationUpdate.timeSync_ = this.timeSync_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                locationUpdate.rxCss_ = this.rxCss_;
                locationUpdate.bitField0_ = i2;
                onBuilt();
                return locationUpdate;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LocationUpdate getDefaultInstanceForType() {
                return LocationUpdate.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.ctlsync_ = SWITCH.OFF;
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
                this.ctlsync_ = SWITCH.OFF;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$LocationUpdate$a */
        /* loaded from: classes2.dex */
        class C4231a extends AbstractParser<LocationUpdate> {
            C4231a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public LocationUpdate parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = LocationUpdate.newBuilder();
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
            LocationUpdate locationUpdate = new LocationUpdate(true);
            defaultInstance = locationUpdate;
            locationUpdate.initFields();
        }

        /* synthetic */ LocationUpdate(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static LocationUpdate getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14551A;
        }

        private void initFields() {
            this.version_ = 0;
            this.ctlsync_ = SWITCH.OFF;
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

        public static LocationUpdate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static LocationUpdate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public int getAltitude() {
            return this.altitude_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public SWITCH getCtlsync() {
            return this.ctlsync_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public int getLatitude() {
            return this.latitude_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public int getLongitude() {
            return this.longitude_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<LocationUpdate> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public int getRxCss() {
            return this.rxCss_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public int getTimeSync() {
            return this.timeSync_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public int getUserFreq() {
            return this.userFreq_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public int getUserId() {
            return this.userId_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public ByteString getUserName() {
            return this.userName_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public boolean hasAltitude() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public boolean hasCtlsync() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public boolean hasLatitude() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public boolean hasLongitude() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public boolean hasRxCss() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public boolean hasTimeSync() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public boolean hasUserFreq() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public boolean hasUserId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public boolean hasUserName() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.LocationUpdateOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14552B.ensureFieldAccessorsInitialized(LocationUpdate.class, Builder.class);
        }

        private LocationUpdate(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(LocationUpdate locationUpdate) {
            return (Builder) newBuilder().mergeFrom((Message) locationUpdate);
        }

        public static LocationUpdate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static LocationUpdate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static LocationUpdate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LocationUpdate getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private LocationUpdate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static LocationUpdate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static LocationUpdate parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static LocationUpdate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static LocationUpdate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static LocationUpdate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface LocationUpdateOrBuilder extends MessageOrBuilder {
        int getAltitude();

        SWITCH getCtlsync();

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
    public static final class OtaPacket extends GeneratedMessage implements OtaPacketOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int OFFSET_FIELD_NUMBER = 1;
        public static Parser<OtaPacket> PARSER = new C4232a();
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

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14557G;
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

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaPacketOrBuilder
            public ByteString getData() {
                return this.data_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Mi3Protos.f14557G;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaPacketOrBuilder
            public int getOffset() {
                return this.offset_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaPacketOrBuilder
            public boolean hasData() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaPacketOrBuilder
            public boolean hasOffset() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14558H.ensureFieldAccessorsInitialized(OtaPacket.class, Builder.class);
            }

            public Builder setData(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 2;
                this.data_ = byteString;
                onChanged();
                return this;
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
                int i2 = (i & 1) != 1 ? 0 : 1;
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

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$OtaPacket$a */
        /* loaded from: classes2.dex */
        class C4232a extends AbstractParser<OtaPacket> {
            C4232a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
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

        /* synthetic */ OtaPacket(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static OtaPacket getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14557G;
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaPacketOrBuilder
        public ByteString getData() {
            return this.data_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaPacketOrBuilder
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaPacketOrBuilder
        public boolean hasData() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaPacketOrBuilder
        public boolean hasOffset() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14558H.ensureFieldAccessorsInitialized(OtaPacket.class, Builder.class);
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
        public static Parser<OtaRequest> PARSER = new C4235a();
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

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14553C;
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
                return Mi3Protos.f14553C;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
            public FILE_CMD getFCmd() {
                return this.fCmd_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
            public int getFCrc32() {
                return this.fCrc32_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
            public int getFSize() {
                return this.fSize_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
            public FILE_TYPE getFType() {
                return this.fType_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
            public boolean hasFCmd() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
            public boolean hasFCrc32() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
            public boolean hasFSize() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
            public boolean hasFType() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14554D.ensureFieldAccessorsInitialized(OtaRequest.class, Builder.class);
            }

            public Builder setFCmd(FILE_CMD file_cmd) {
                Objects.requireNonNull(file_cmd);
                this.bitField0_ |= 2;
                this.fCmd_ = file_cmd;
                onChanged();
                return this;
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
                Objects.requireNonNull(file_type);
                this.bitField0_ |= 4;
                this.fType_ = file_type;
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
                int i2 = (i & 1) != 1 ? 0 : 1;
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

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
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
            private static Internal.EnumLiteMap<FILE_CMD> internalValueMap = new C4233a();
            private static final FILE_CMD[] VALUES = values();

            /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$OtaRequest$FILE_CMD$a */
            /* loaded from: classes2.dex */
            class C4233a implements Internal.EnumLiteMap<FILE_CMD> {
                C4233a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
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
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return null;
                        }
                        return REBOOT;
                    }
                    return COMPLETE;
                }
                return START;
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
            private static Internal.EnumLiteMap<FILE_TYPE> internalValueMap = new C4234a();
            private static final FILE_TYPE[] VALUES = values();

            /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$OtaRequest$FILE_TYPE$a */
            /* loaded from: classes2.dex */
            class C4234a implements Internal.EnumLiteMap<FILE_TYPE> {
                C4234a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
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
                if (i != 1) {
                    if (i != 2) {
                        return null;
                    }
                    return MCU_UPLOAD_FILE;
                }
                return APP_UPGRADE_FILE;
            }

            public static FILE_TYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$OtaRequest$a */
        /* loaded from: classes2.dex */
        class C4235a extends AbstractParser<OtaRequest> {
            C4235a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
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

        /* synthetic */ OtaRequest(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static OtaRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14553C;
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
        public FILE_CMD getFCmd() {
            return this.fCmd_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
        public int getFCrc32() {
            return this.fCrc32_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
        public int getFSize() {
            return this.fSize_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
        public boolean hasFCmd() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
        public boolean hasFCrc32() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
        public boolean hasFSize() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
        public boolean hasFType() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14554D.ensureFieldAccessorsInitialized(OtaRequest.class, Builder.class);
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
        public static Parser<OtaResponse> PARSER = new C4236a();
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

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4240a c4240a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Mi3Protos.f14555E;
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
                return Mi3Protos.f14555E;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaResponseOrBuilder
            public int getOffset() {
                return this.offset_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaResponseOrBuilder
            public RESULT getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaResponseOrBuilder
            public boolean hasOffset() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return Mi3Protos.f14556F.ensureFieldAccessorsInitialized(OtaResponse.class, Builder.class);
            }

            public Builder setOffset(int i) {
                this.bitField0_ |= 2;
                this.offset_ = i;
                onChanged();
                return this;
            }

            public Builder setResult(RESULT result) {
                Objects.requireNonNull(result);
                this.bitField0_ |= 1;
                this.result_ = result;
                onChanged();
                return this;
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
                int i2 = (i & 1) != 1 ? 0 : 1;
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

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$OtaResponse$a */
        /* loaded from: classes2.dex */
        class C4236a extends AbstractParser<OtaResponse> {
            C4236a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
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

        /* synthetic */ OtaResponse(GeneratedMessage.Builder builder, C4240a c4240a) {
            this(builder);
        }

        public static OtaResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Mi3Protos.f14555E;
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

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaResponseOrBuilder
        public int getOffset() {
            return this.offset_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<OtaResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaResponseOrBuilder
        public RESULT getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaResponseOrBuilder
        public boolean hasOffset() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.Mi3Protos.OtaResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return Mi3Protos.f14556F.ensureFieldAccessorsInitialized(OtaResponse.class, Builder.class);
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
        FORBIDDEN(3, 3),
        EMPTY(4, 4);
        
        public static final int EMPTY_VALUE = 4;
        public static final int FAIL_VALUE = 0;
        public static final int FORBIDDEN_VALUE = 3;
        public static final int LOW_POWER_VALUE = 2;
        public static final int SUCCESS_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<RESULT> internalValueMap = new C4237a();
        private static final RESULT[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$RESULT$a */
        /* loaded from: classes2.dex */
        class C4237a implements Internal.EnumLiteMap<RESULT> {
            C4237a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public RESULT findValueByNumber(int i) {
                return RESULT.valueOf(i);
            }
        }

        RESULT(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Mi3Protos.m10922J().getEnumTypes().get(4);
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
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                return null;
                            }
                            return EMPTY;
                        }
                        return FORBIDDEN;
                    }
                    return LOW_POWER;
                }
                return SUCCESS;
            }
            return FAIL;
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
        private static Internal.EnumLiteMap<SWITCH> internalValueMap = new C4238a();
        private static final SWITCH[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$SWITCH$a */
        /* loaded from: classes2.dex */
        class C4238a implements Internal.EnumLiteMap<SWITCH> {
            C4238a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public SWITCH findValueByNumber(int i) {
                return SWITCH.valueOf(i);
            }
        }

        SWITCH(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Mi3Protos.m10922J().getEnumTypes().get(3);
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
            if (i != 0) {
                if (i != 1) {
                    return null;
                }
                return ON;
            }
            return OFF;
        }

        public static SWITCH valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum VOX_TYPE implements ProtocolMessageEnum {
        VOX_OFF(0, 0),
        VOX_LOW(1, 1),
        VOX_MIDDLE(2, 2),
        VOX_HEIGHT(3, 3);
        
        public static final int VOX_HEIGHT_VALUE = 3;
        public static final int VOX_LOW_VALUE = 1;
        public static final int VOX_MIDDLE_VALUE = 2;
        public static final int VOX_OFF_VALUE = 0;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<VOX_TYPE> internalValueMap = new C4239a();
        private static final VOX_TYPE[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$VOX_TYPE$a */
        /* loaded from: classes2.dex */
        class C4239a implements Internal.EnumLiteMap<VOX_TYPE> {
            C4239a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public VOX_TYPE findValueByNumber(int i) {
                return VOX_TYPE.valueOf(i);
            }
        }

        VOX_TYPE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Mi3Protos.m10922J().getEnumTypes().get(5);
        }

        public static Internal.EnumLiteMap<VOX_TYPE> internalGetValueMap() {
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

        public static VOX_TYPE valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return null;
                        }
                        return VOX_HEIGHT;
                    }
                    return VOX_MIDDLE;
                }
                return VOX_LOW;
            }
            return VOX_OFF;
        }

        public static VOX_TYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.protos.Mi3Protos$a */
    /* loaded from: classes2.dex */
    public class C4240a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        C4240a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = Mi3Protos.f14559I = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\tmi3.proto\u0012\u0006protos\"[\n\u0012KeyExchangeRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012!\n\u0007appType\u0018\u0002 \u0002(\u000e2\u0010.protos.APP_TYPE\u0012\u0011\n\tpublicKey\u0018\u0003 \u0001(\f\"d\n\u0013KeyExchangeResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012)\n\u000bconnectCode\u0018\u0002 \u0002(\u000e2\u0014.protos.CONNECT_CODE\u0012\u0011\n\tpublicKey\u0018\u0003 \u0001(\f\"0\n\u000eConnectRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\r\n\u0005token\u0018\u0002 \u0001(\f\"¨\u0001\n\u000fConnectResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012)\n\u000bconnectCode\u0018\u0002 \u0002(\u000e2\u0014.protos.CONNECT_CODE\u0012\u0010\n\bdeviceId\u0018\u0003 \u0002(\r\u0012\u0012\n\ndeviceType\u0018\u0004 \u0002(\r\u0012\u000b\n\u0003mac\u0018\u0005 \u0002(\f\u0012\r\n\u0005t", "oken\u0018\u0006 \u0002(\f\u0012\u000b\n\u0003key\u0018\u0007 \u0002(\f\u0012\n\n\u0002iv\u0018\b \u0002(\f\"¦\u0003\n\u0007DevInfo\u0012\n\n\u0002sq\u0018\u0001 \u0001(\r\u0012\u001d\n\u0003vox\u0018\u0002 \u0001(\u000e2\u0010.protos.VOX_TYPE\u0012\f\n\u0004band\u0018\u0003 \u0001(\r\u0012\u001e\n\u0006polite\u0018\u0004 \u0001(\u000e2\u000e.protos.SWITCH\u0012'\n\blangType\u0018\u0005 \u0001(\u000e2\u0015.protos.LANGUAGE_TYPE\u0012!\n\tbootVoice\u0018\u0006 \u0001(\u000e2\u000e.protos.SWITCH\u0012 \n\bkeyVoice\u0018\u0007 \u0001(\u000e2\u000e.protos.SWITCH\u0012\f\n\u0004name\u0018\b \u0001(\f\u0012\r\n\u0005verHw\u0018\t \u0001(\r\u0012\u000f\n\u0007verSoft\u0018\n \u0001(\r\u0012\u0010\n\bdeviceId\u0018\u000b \u0001(\r\u0012\u0013\n\u000bdeviceColor\u0018\f \u0001(\r\u0012 \n\bshareLoc\u0018\r \u0001(\u000e2\u000e.protos.SWITCH\u0012&\n\ndeviceMode\u0018\u000e \u0001(\u000e2\u0012.protos.DEVIC", "EMODE\u0012!\n\tcallVoice\u0018\u000f \u0001(\u000e2\u000e.protos.SWITCH\u0012\u0012\n\ncurChIndex\u0018\u0010 \u0001(\r\"?\n\nDevRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012 \n\u0007devInfo\u0018\u0002 \u0001(\u000b2\u000f.protos.DevInfo\"`\n\u000bDevResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001e\n\u0006result\u0018\u0002 \u0002(\u000e2\u000e.protos.RESULT\u0012 \n\u0007devInfo\u0018\u0003 \u0001(\u000b2\u000f.protos.DevInfo\"v\n\u000bChannelInfo\u0012\u000b\n\u0003seq\u0018\u0001 \u0001(\r\u0012\u000e\n\u0006rxFreq\u0018\u0002 \u0001(\r\u0012\u000e\n\u0006txFreq\u0018\u0003 \u0001(\r\u0012\r\n\u0005rxCss\u0018\u0004 \u0001(\r\u0012\r\n\u0005txCss\u0018\u0005 \u0001(\r\u0012\u000e\n\u0006chType\u0018\u0006 \u0002(\r\u0012\f\n\u0004name\u0018\u0007 \u0001(\f\"\u0089\u0001\n\u0017ChannelInfoStateRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012(\n\u000bchannelI", "nfo\u0018\u0002 \u0001(\u000b2\u0013.protos.ChannelInfo\u0012\u000f\n\u0007chIndex\u0018\u0003 \u0001(\r\u0012\"\n\bchOption\u0018\u0004 \u0001(\u000e2\u0010.protos.CHOPTION\"Ä\u0001\n\u0018ChannelInfoStateResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001e\n\u0006result\u0018\u0002 \u0002(\u000e2\u000e.protos.RESULT\u0012 \n\u0003ch1\u0018\u0003 \u0001(\u000b2\u0013.protos.ChannelInfo\u0012 \n\u0003ch2\u0018\u0004 \u0001(\u000b2\u0013.protos.ChannelInfo\u0012\u000f\n\u0007chIndex\u0018\u0005 \u0001(\r\u0012\"\n\bchOption\u0018\u0006 \u0001(\u000e2\u0010.protos.CHOPTION\"s\n\u0012ChannelInfoRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012(\n\u000bchannelInfo\u0018\u0002 \u0001(\u000b2\u0013.protos.ChannelInfo\u0012\"\n\bchOption\u0018\u0003 \u0001(\u000e2\u0010.protos.CHOPTION\"", "\u0095\u0001\n\u0013ChannelInfoResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001f\n\u0006result\u0018\u0002 \u0002(\u000e2\u000f.protos.CH_UERR\u0012(\n\u000bchannelInfo\u0018\u0003 \u0001(\u000b2\u0013.protos.ChannelInfo\u0012\"\n\bchOption\u0018\u0004 \u0001(\u000e2\u0010.protos.CHOPTION\"G\n\u0014BatchBrodFskResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001e\n\u0006result\u0018\u0002 \u0002(\u000e2\u000e.protos.SWITCH\"Î\u0001\n\u000eLocationUpdate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001f\n\u0007ctlsync\u0018\u0002 \u0001(\u000e2\u000e.protos.SWITCH\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\r\u0012\u0010\n\buserName\u0018\u0004 \u0001(\f\u0012\u0010\n\buserFreq\u0018\u0005 \u0001(\r\u0012\u0011\n\tlongitude\u0018\u0006 \u0001(\u0011\u0012\u0010\n\blatitude\u0018\u0007 \u0001(\u0011\u0012\u0010\n\baltitude\u0018\b \u0001(\u0011", "\u0012\u0010\n\btimeSync\u0018\t \u0001(\r\u0012\r\n\u0005rxCss\u0018\n \u0001(\r\"ý\u0001\n\nOtaRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012)\n\u0004fCmd\u0018\u0002 \u0002(\u000e2\u001b.protos.OtaRequest.FILE_CMD\u0012+\n\u0005fType\u0018\u0003 \u0002(\u000e2\u001c.protos.OtaRequest.FILE_TYPE\u0012\r\n\u0005fSize\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006fCrc32\u0018\u0005 \u0001(\r\"/\n\bFILE_CMD\u0012\t\n\u0005START\u0010\u0001\u0012\f\n\bCOMPLETE\u0010\u0002\u0012\n\n\u0006REBOOT\u0010\u0003\"6\n\tFILE_TYPE\u0012\u0014\n\u0010APP_UPGRADE_FILE\u0010\u0001\u0012\u0013\n\u000fMCU_UPLOAD_FILE\u0010\u0002\"=\n\u000bOtaResponse\u0012\u001e\n\u0006result\u0018\u0001 \u0002(\u000e2\u000e.protos.RESULT\u0012\u000e\n\u0006offset\u0018\u0002 \u0001(\r\")\n\tOtaPacket\u0012\u000e\n\u0006offset\u0018\u0001 \u0002(\r\u0012\f\n\u0004data\u0018\u0002 \u0002(\f*G\n\fC", "ONNECT_CODE\u0012\t\n\u0005ALLOW\u0010\u0000\u0012\n\n\u0006REFUSE\u0010\u0001\u0012\b\n\u0004WAIT\u0010\u0002\u0012\f\n\bLOWPOWER\u0010\u0003\u0012\b\n\u0004BUSY\u0010\u0004*%\n\bAPP_TYPE\u0012\n\n\u0006FY_APP\u0010\u0000\u0012\r\n\tMIJIA_APP\u0010\u0001*4\n\rLANGUAGE_TYPE\u0012\t\n\u0005CLOSE\u0010\u0000\u0012\u000b\n\u0007CHINESE\u0010\u0001\u0012\u000b\n\u0007ENGLISH\u0010\u0002*\u0019\n\u0006SWITCH\u0012\u0007\n\u0003OFF\u0010\u0000\u0012\u0006\n\u0002ON\u0010\u0001*H\n\u0006RESULT\u0012\b\n\u0004FAIL\u0010\u0000\u0012\u000b\n\u0007SUCCESS\u0010\u0001\u0012\r\n\tLOW_POWER\u0010\u0002\u0012\r\n\tFORBIDDEN\u0010\u0003\u0012\t\n\u0005EMPTY\u0010\u0004*D\n\bVOX_TYPE\u0012\u000b\n\u0007VOX_OFF\u0010\u0000\u0012\u000b\n\u0007VOX_LOW\u0010\u0001\u0012\u000e\n\nVOX_MIDDLE\u0010\u0002\u0012\u000e\n\nVOX_HEIGHT\u0010\u0003*7\n\nDEVICEMODE\u0012\r\n\tNORMAL_CH\u0010\u0000\u0012\u000b\n\u0007SCAN_CH\u0010\u0001\u0012\r\n\tSCAN_FREQ\u0010\u0002*E\n\bCHOPTIO", "N\u0012\r\n\tCH_INSERT\u0010\u0000\u0012\r\n\tCH_DELETE\u0010\u0001\u0012\r\n\tCH_MODIFY\u0010\u0002\u0012\f\n\bCH_QUERY\u0010\u0003*l\n\u0007CH_UERR\u0012\t\n\u0005CH_OK\u0010\u0000\u0012\f\n\bCH_ERROR\u0010\u0001\u0012\f\n\bCH_EMPTY\u0010\u0002\u0012\u000e\n\nCH_FORBIDE\u0010\u0003\u0012\u0015\n\u0011CH_QUERY_CONTINUE\u0010\u0004\u0012\u0013\n\u000fCH_QUERY_FINISH\u0010\u0005B*\n\u001bcom.ifengyu.intercom.protosB\tMi3ProtosH\u0002"}, new Descriptors.FileDescriptor[0], new C4240a());
        Descriptors.Descriptor descriptor = m10922J().getMessageTypes().get(0);
        f14560a = descriptor;
        f14561b = new GeneratedMessage.FieldAccessorTable(descriptor, new String[]{"Version", "AppType", "PublicKey"});
        Descriptors.Descriptor descriptor2 = m10922J().getMessageTypes().get(1);
        f14562c = descriptor2;
        f14563d = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Version", "ConnectCode", "PublicKey"});
        Descriptors.Descriptor descriptor3 = m10922J().getMessageTypes().get(2);
        f14564e = descriptor3;
        f14565f = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Version", "Token"});
        Descriptors.Descriptor descriptor4 = m10922J().getMessageTypes().get(3);
        f14566g = descriptor4;
        f14567h = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Version", "ConnectCode", "DeviceId", "DeviceType", "Mac", "Token", "Key", "Iv"});
        Descriptors.Descriptor descriptor5 = m10922J().getMessageTypes().get(4);
        f14568i = descriptor5;
        f14569j = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Sq", "Vox", "Band", "Polite", "LangType", "BootVoice", "KeyVoice", "Name", "VerHw", "VerSoft", "DeviceId", "DeviceColor", "ShareLoc", "DeviceMode", "CallVoice", "CurChIndex"});
        Descriptors.Descriptor descriptor6 = m10922J().getMessageTypes().get(5);
        f14570k = descriptor6;
        f14571l = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Version", "DevInfo"});
        Descriptors.Descriptor descriptor7 = m10922J().getMessageTypes().get(6);
        f14572m = descriptor7;
        f14573n = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Version", "Result", "DevInfo"});
        Descriptors.Descriptor descriptor8 = m10922J().getMessageTypes().get(7);
        f14574o = descriptor8;
        f14575p = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Seq", "RxFreq", "TxFreq", "RxCss", "TxCss", "ChType", "Name"});
        Descriptors.Descriptor descriptor9 = m10922J().getMessageTypes().get(8);
        f14576q = descriptor9;
        f14577r = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Version", "ChannelInfo", "ChIndex", "ChOption"});
        Descriptors.Descriptor descriptor10 = m10922J().getMessageTypes().get(9);
        f14578s = descriptor10;
        f14579t = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Version", "Result", "Ch1", "Ch2", "ChIndex", "ChOption"});
        Descriptors.Descriptor descriptor11 = m10922J().getMessageTypes().get(10);
        f14580u = descriptor11;
        f14581v = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Version", "ChannelInfo", "ChOption"});
        Descriptors.Descriptor descriptor12 = m10922J().getMessageTypes().get(11);
        f14582w = descriptor12;
        f14583x = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Version", "Result", "ChannelInfo", "ChOption"});
        Descriptors.Descriptor descriptor13 = m10922J().getMessageTypes().get(12);
        f14584y = descriptor13;
        f14585z = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"Version", "Result"});
        Descriptors.Descriptor descriptor14 = m10922J().getMessageTypes().get(13);
        f14551A = descriptor14;
        f14552B = new GeneratedMessage.FieldAccessorTable(descriptor14, new String[]{"Version", "Ctlsync", "UserId", "UserName", "UserFreq", "Longitude", "Latitude", "Altitude", "TimeSync", "RxCss"});
        Descriptors.Descriptor descriptor15 = m10922J().getMessageTypes().get(14);
        f14553C = descriptor15;
        f14554D = new GeneratedMessage.FieldAccessorTable(descriptor15, new String[]{"Version", "FCmd", "FType", "FSize", "FCrc32"});
        Descriptors.Descriptor descriptor16 = m10922J().getMessageTypes().get(15);
        f14555E = descriptor16;
        f14556F = new GeneratedMessage.FieldAccessorTable(descriptor16, new String[]{"Result", "Offset"});
        Descriptors.Descriptor descriptor17 = m10922J().getMessageTypes().get(16);
        f14557G = descriptor17;
        f14558H = new GeneratedMessage.FieldAccessorTable(descriptor17, new String[]{"Offset", "Data"});
    }

    /* renamed from: J */
    public static Descriptors.FileDescriptor m10922J() {
        return f14559I;
    }
}
