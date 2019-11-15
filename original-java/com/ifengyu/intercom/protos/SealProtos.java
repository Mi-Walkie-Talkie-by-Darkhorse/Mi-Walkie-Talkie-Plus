package com.ifengyu.intercom.protos;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.EnumDescriptor;
import com.google.protobuf.Descriptors.EnumValueDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import com.google.protobuf.Internal.EnumLiteMap;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;

public final class SealProtos {
    /* access modifiers changed from: private */
    public static final Descriptor A = ((Descriptor) a().getMessageTypes().get(13));
    /* access modifiers changed from: private */
    public static FieldAccessorTable B = new FieldAccessorTable(A, new String[]{"PowerOn", "FactoryReset", "DeviceIdQuery", "KeyLock", "PowerLevelQuery", "FmOpen", "ConnBtEar"});
    /* access modifiers changed from: private */
    public static FileDescriptor C;
    /* access modifiers changed from: private */
    public static final Descriptor a = ((Descriptor) a().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable b = new FieldAccessorTable(a, new String[]{"Version", "ConnCode", "DeviceId", "DeviceType", "AppMode", "Language", "Color"});
    /* access modifiers changed from: private */
    public static final Descriptor c = ((Descriptor) a().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable d = new FieldAccessorTable(c, new String[]{"ChNo", "ChType", "ChTxPower", "ChRxFreq", "ChTxFreq", "ChName", "ChSq", "ChVox", "ChRxCss", "ChTxCss", "ChElim", "ChBand", "ChPolite"});
    /* access modifiers changed from: private */
    public static final Descriptor e = ((Descriptor) a().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable f = new FieldAccessorTable(e, new String[]{"Version", "Result", "FullInquiry", "VerHw", "VerSoft", "DeviceName", "BleName", "Charge", "Activate", "ShareLoc", "BtAudio", "Ch", "VoiceAlert", "IsAllPublic", "PwsaveMode", "VoiceType"});
    /* access modifiers changed from: private */
    public static final Descriptor g = ((Descriptor) a().getMessageTypes().get(3));
    /* access modifiers changed from: private */
    public static FieldAccessorTable h = new FieldAccessorTable(g, new String[]{"Version", "Result", "Option", "DeviceMode", "StateMode", "Ch1"});
    /* access modifiers changed from: private */
    public static final Descriptor i = ((Descriptor) a().getMessageTypes().get(4));
    /* access modifiers changed from: private */
    public static FieldAccessorTable j = new FieldAccessorTable(i, new String[]{"Version", "Result", "Option", "Ch"});
    /* access modifiers changed from: private */
    public static final Descriptor k = ((Descriptor) a().getMessageTypes().get(5));
    /* access modifiers changed from: private */
    public static FieldAccessorTable l = new FieldAccessorTable(k, new String[]{"Version", "Ctlsync", "UserId", "UserName", "UserFreq", "Longitude", "Latitude", "Altitude", "TimeSync", "RxCss"});
    /* access modifiers changed from: private */
    public static final Descriptor m = ((Descriptor) a().getMessageTypes().get(6));
    /* access modifiers changed from: private */
    public static FieldAccessorTable n = new FieldAccessorTable(m, new String[]{"Version", "FCmd", "FType", "FSize", "FCrc32"});
    /* access modifiers changed from: private */
    public static final Descriptor o = ((Descriptor) a().getMessageTypes().get(7));
    /* access modifiers changed from: private */
    public static FieldAccessorTable p = new FieldAccessorTable(o, new String[]{"Result", "Offset"});
    /* access modifiers changed from: private */
    public static final Descriptor q = ((Descriptor) a().getMessageTypes().get(8));
    /* access modifiers changed from: private */
    public static FieldAccessorTable r = new FieldAccessorTable(q, new String[]{"Offset", "Data", "Xor"});
    /* access modifiers changed from: private */
    public static final Descriptor s = ((Descriptor) a().getMessageTypes().get(9));
    /* access modifiers changed from: private */
    public static FieldAccessorTable t = new FieldAccessorTable(s, new String[]{"Mac", "Name", "Rssi", "Type"});
    /* access modifiers changed from: private */
    public static final Descriptor u = ((Descriptor) a().getMessageTypes().get(10));
    /* access modifiers changed from: private */
    public static FieldAccessorTable v = new FieldAccessorTable(u, new String[]{"Version", "Result", "Option", "BtEar"});
    /* access modifiers changed from: private */
    public static final Descriptor w = ((Descriptor) a().getMessageTypes().get(11));
    /* access modifiers changed from: private */
    public static FieldAccessorTable x = new FieldAccessorTable(w, new String[]{"Version", "Result", "Option"});
    /* access modifiers changed from: private */
    public static final Descriptor y = ((Descriptor) a().getMessageTypes().get(12));
    /* access modifiers changed from: private */
    public static FieldAccessorTable z = new FieldAccessorTable(y, new String[]{"Version", "Result", "BtEar"});

    public static final class SEAL_BtEarConnectState extends GeneratedMessage implements SEAL_BtEarConnectStateOrBuilder {
        public static final int BTEAR_FIELD_NUMBER = 4;
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<SEAL_BtEarConnectState> PARSER = new AbstractParser<SEAL_BtEarConnectState>() {
            /* renamed from: a */
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
        };
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_BtEarConnectState defaultInstance = new SEAL_BtEarConnectState(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public SEAL_BtEarInfo btEar_;
        /* access modifiers changed from: private */
        public SEAL_BTEAR_OPTION option_;
        /* access modifiers changed from: private */
        public SEAL_BTEAR_CONN_RESULT result_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_BtEarConnectStateOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SEAL_BtEarInfo, Builder, SEAL_BtEarInfoOrBuilder> btEarBuilder_;
            private SEAL_BtEarInfo btEar_;
            private SEAL_BTEAR_OPTION option_;
            private SEAL_BTEAR_CONN_RESULT result_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return SealProtos.u;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.v.ensureFieldAccessorsInitialized(SEAL_BtEarConnectState.class, Builder.class);
            }

            private Builder() {
                this.result_ = SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK;
                this.option_ = SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY;
                this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK;
                this.option_ = SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY;
                this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_BtEarConnectState.alwaysUseFieldBuilders) {
                    getBtEarFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.version_ = 0;
                this.bitField0_ &= -2;
                this.result_ = SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK;
                this.bitField0_ &= -3;
                this.option_ = SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY;
                this.bitField0_ &= -5;
                if (this.btEarBuilder_ == null) {
                    this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                } else {
                    this.btEarBuilder_.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.u;
            }

            public SEAL_BtEarConnectState getDefaultInstanceForType() {
                return SEAL_BtEarConnectState.getDefaultInstance();
            }

            public SEAL_BtEarConnectState build() {
                SEAL_BtEarConnectState buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_BtEarConnectState buildPartial() {
                int i;
                int i2 = 1;
                SEAL_BtEarConnectState sEAL_BtEarConnectState = new SEAL_BtEarConnectState(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                sEAL_BtEarConnectState.version_ = this.version_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_BtEarConnectState.result_ = this.result_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_BtEarConnectState.option_ = this.option_;
                if ((i3 & 8) == 8) {
                    i = i2 | 8;
                } else {
                    i = i2;
                }
                if (this.btEarBuilder_ == null) {
                    sEAL_BtEarConnectState.btEar_ = this.btEar_;
                } else {
                    sEAL_BtEarConnectState.btEar_ = (SEAL_BtEarInfo) this.btEarBuilder_.build();
                }
                sEAL_BtEarConnectState.bitField0_ = i;
                onBuilt();
                return sEAL_BtEarConnectState;
            }

            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            public SEAL_BTEAR_CONN_RESULT getResult() {
                return this.result_;
            }

            public Builder setResult(SEAL_BTEAR_CONN_RESULT seal_btear_conn_result) {
                if (seal_btear_conn_result == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.result_ = seal_btear_conn_result;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK;
                onChanged();
                return this;
            }

            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            public SEAL_BTEAR_OPTION getOption() {
                return this.option_;
            }

            public Builder setOption(SEAL_BTEAR_OPTION seal_btear_option) {
                if (seal_btear_option == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.option_ = seal_btear_option;
                onChanged();
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY;
                onChanged();
                return this;
            }

            public boolean hasBtEar() {
                return (this.bitField0_ & 8) == 8;
            }

            public SEAL_BtEarInfo getBtEar() {
                if (this.btEarBuilder_ == null) {
                    return this.btEar_;
                }
                return (SEAL_BtEarInfo) this.btEarBuilder_.getMessage();
            }

            public Builder setBtEar(SEAL_BtEarInfo sEAL_BtEarInfo) {
                if (this.btEarBuilder_ != null) {
                    this.btEarBuilder_.setMessage(sEAL_BtEarInfo);
                } else if (sEAL_BtEarInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.btEar_ = sEAL_BtEarInfo;
                    onChanged();
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setBtEar(Builder builder) {
                if (this.btEarBuilder_ == null) {
                    this.btEar_ = builder.build();
                    onChanged();
                } else {
                    this.btEarBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder mergeBtEar(SEAL_BtEarInfo sEAL_BtEarInfo) {
                if (this.btEarBuilder_ == null) {
                    if ((this.bitField0_ & 8) != 8 || this.btEar_ == SEAL_BtEarInfo.getDefaultInstance()) {
                        this.btEar_ = sEAL_BtEarInfo;
                    } else {
                        this.btEar_ = ((Builder) SEAL_BtEarInfo.newBuilder(this.btEar_).mergeFrom((Message) sEAL_BtEarInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.btEarBuilder_.mergeFrom(sEAL_BtEarInfo);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder clearBtEar() {
                if (this.btEarBuilder_ == null) {
                    this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.btEarBuilder_.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder getBtEarBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return (Builder) getBtEarFieldBuilder().getBuilder();
            }

            public SEAL_BtEarInfoOrBuilder getBtEarOrBuilder() {
                if (this.btEarBuilder_ != null) {
                    return (SEAL_BtEarInfoOrBuilder) this.btEarBuilder_.getMessageOrBuilder();
                }
                return this.btEar_;
            }

            private SingleFieldBuilder<SEAL_BtEarInfo, Builder, SEAL_BtEarInfoOrBuilder> getBtEarFieldBuilder() {
                if (this.btEarBuilder_ == null) {
                    this.btEarBuilder_ = new SingleFieldBuilder<>(getBtEar(), getParentForChildren(), isClean());
                    this.btEar_ = null;
                }
                return this.btEarBuilder_;
            }
        }

        public enum SEAL_BTEAR_CONN_RESULT implements ProtocolMessageEnum {
            SEAL_BTEAR_CONN_OK(0, 0),
            SEAL_BTEAR_CONN_ERROR(1, 1),
            SEAL_BTEAR_CONN_TIMEOUT(2, 2);
            
            public static final int SEAL_BTEAR_CONN_ERROR_VALUE = 1;
            public static final int SEAL_BTEAR_CONN_OK_VALUE = 0;
            public static final int SEAL_BTEAR_CONN_TIMEOUT_VALUE = 2;
            private static final SEAL_BTEAR_CONN_RESULT[] VALUES = null;
            private static EnumLiteMap<SEAL_BTEAR_CONN_RESULT> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_BTEAR_CONN_RESULT>() {
                    /* renamed from: a */
                    public SEAL_BTEAR_CONN_RESULT findValueByNumber(int i) {
                        return SEAL_BTEAR_CONN_RESULT.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_BTEAR_CONN_RESULT valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_BTEAR_CONN_OK;
                    case 1:
                        return SEAL_BTEAR_CONN_ERROR;
                    case 2:
                        return SEAL_BTEAR_CONN_TIMEOUT;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_BTEAR_CONN_RESULT> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_BtEarConnectState.getDescriptor().getEnumTypes().get(0);
            }

            public static SEAL_BTEAR_CONN_RESULT valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_BTEAR_CONN_RESULT(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        public enum SEAL_BTEAR_OPTION implements ProtocolMessageEnum {
            SEAL_BTEAR_QUERY(0, 0),
            SEAL_BTEAR_CONNECT(1, 1),
            SEAL_BTEAR_DISCONNECT(2, 2);
            
            public static final int SEAL_BTEAR_CONNECT_VALUE = 1;
            public static final int SEAL_BTEAR_DISCONNECT_VALUE = 2;
            public static final int SEAL_BTEAR_QUERY_VALUE = 0;
            private static final SEAL_BTEAR_OPTION[] VALUES = null;
            private static EnumLiteMap<SEAL_BTEAR_OPTION> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_BTEAR_OPTION>() {
                    /* renamed from: a */
                    public SEAL_BTEAR_OPTION findValueByNumber(int i) {
                        return SEAL_BTEAR_OPTION.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_BTEAR_OPTION valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_BTEAR_QUERY;
                    case 1:
                        return SEAL_BTEAR_CONNECT;
                    case 2:
                        return SEAL_BTEAR_DISCONNECT;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_BTEAR_OPTION> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_BtEarConnectState.getDescriptor().getEnumTypes().get(1);
            }

            public static SEAL_BTEAR_OPTION valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_BTEAR_OPTION(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SEAL_BtEarConnectState(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_BtEarConnectState(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_BtEarConnectState getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_BtEarConnectState getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.u;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.v.ensureFieldAccessorsInitialized(SEAL_BtEarConnectState.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_BtEarConnectState> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        public SEAL_BTEAR_CONN_RESULT getResult() {
            return this.result_;
        }

        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        public SEAL_BTEAR_OPTION getOption() {
            return this.option_;
        }

        public boolean hasBtEar() {
            return (this.bitField0_ & 8) == 8;
        }

        public SEAL_BtEarInfo getBtEar() {
            return this.btEar_;
        }

        public SEAL_BtEarInfoOrBuilder getBtEarOrBuilder() {
            return this.btEar_;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK;
            this.option_ = SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY;
            this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
        }

        public static SEAL_BtEarConnectState parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_BtEarConnectState) PARSER.parseFrom(byteString);
        }

        public static SEAL_BtEarConnectState parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_BtEarConnectState) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_BtEarConnectState parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_BtEarConnectState) PARSER.parseFrom(bArr);
        }

        public static SEAL_BtEarConnectState parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_BtEarConnectState) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_BtEarConnectState parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_BtEarConnectState) PARSER.parseFrom(inputStream);
        }

        public static SEAL_BtEarConnectState parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_BtEarConnectState) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarConnectState parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_BtEarConnectState) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_BtEarConnectState parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_BtEarConnectState) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarConnectState parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_BtEarConnectState) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_BtEarConnectState parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_BtEarConnectState) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_BtEarConnectState sEAL_BtEarConnectState) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_BtEarConnectState);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SEAL_BtEarConnectStateOrBuilder extends MessageOrBuilder {
        SEAL_BtEarInfo getBtEar();

        SEAL_BtEarInfoOrBuilder getBtEarOrBuilder();

        SEAL_BTEAR_OPTION getOption();

        SEAL_BTEAR_CONN_RESULT getResult();

        int getVersion();

        boolean hasBtEar();

        boolean hasOption();

        boolean hasResult();

        boolean hasVersion();
    }

    public static final class SEAL_BtEarInfo extends GeneratedMessage implements SEAL_BtEarInfoOrBuilder {
        public static final int MAC_FIELD_NUMBER = 1;
        public static final int NAME_FIELD_NUMBER = 2;
        public static Parser<SEAL_BtEarInfo> PARSER = new AbstractParser<SEAL_BtEarInfo>() {
            /* renamed from: a */
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
        };
        public static final int RSSI_FIELD_NUMBER = 3;
        public static final int TYPE_FIELD_NUMBER = 4;
        private static final SEAL_BtEarInfo defaultInstance = new SEAL_BtEarInfo(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString mac_;
        /* access modifiers changed from: private */
        public ByteString name_;
        /* access modifiers changed from: private */
        public int rssi_;
        /* access modifiers changed from: private */
        public SEAL_BTEARTYPE type_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_BtEarInfoOrBuilder {
            private int bitField0_;
            private ByteString mac_;
            private ByteString name_;
            private int rssi_;
            private SEAL_BTEARTYPE type_;

            public static final Descriptor getDescriptor() {
                return SealProtos.s;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.t.ensureFieldAccessorsInitialized(SEAL_BtEarInfo.class, Builder.class);
            }

            private Builder() {
                this.mac_ = ByteString.EMPTY;
                this.name_ = ByteString.EMPTY;
                this.type_ = SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.mac_ = ByteString.EMPTY;
                this.name_ = ByteString.EMPTY;
                this.type_ = SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_BtEarInfo.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.mac_ = ByteString.EMPTY;
                this.bitField0_ &= -2;
                this.name_ = ByteString.EMPTY;
                this.bitField0_ &= -3;
                this.rssi_ = 0;
                this.bitField0_ &= -5;
                this.type_ = SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.s;
            }

            public SEAL_BtEarInfo getDefaultInstanceForType() {
                return SEAL_BtEarInfo.getDefaultInstance();
            }

            public SEAL_BtEarInfo build() {
                SEAL_BtEarInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_BtEarInfo buildPartial() {
                int i = 1;
                SEAL_BtEarInfo sEAL_BtEarInfo = new SEAL_BtEarInfo(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sEAL_BtEarInfo.mac_ = this.mac_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sEAL_BtEarInfo.name_ = this.name_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sEAL_BtEarInfo.rssi_ = this.rssi_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sEAL_BtEarInfo.type_ = this.type_;
                sEAL_BtEarInfo.bitField0_ = i;
                onBuilt();
                return sEAL_BtEarInfo;
            }

            public boolean hasMac() {
                return (this.bitField0_ & 1) == 1;
            }

            public ByteString getMac() {
                return this.mac_;
            }

            public Builder setMac(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.mac_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearMac() {
                this.bitField0_ &= -2;
                this.mac_ = SEAL_BtEarInfo.getDefaultInstance().getMac();
                onChanged();
                return this;
            }

            public boolean hasName() {
                return (this.bitField0_ & 2) == 2;
            }

            public ByteString getName() {
                return this.name_;
            }

            public Builder setName(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -3;
                this.name_ = SEAL_BtEarInfo.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public boolean hasRssi() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getRssi() {
                return this.rssi_;
            }

            public Builder setRssi(int i) {
                this.bitField0_ |= 4;
                this.rssi_ = i;
                onChanged();
                return this;
            }

            public Builder clearRssi() {
                this.bitField0_ &= -5;
                this.rssi_ = 0;
                onChanged();
                return this;
            }

            public boolean hasType() {
                return (this.bitField0_ & 8) == 8;
            }

            public SEAL_BTEARTYPE getType() {
                return this.type_;
            }

            public Builder setType(SEAL_BTEARTYPE seal_bteartype) {
                if (seal_bteartype == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.type_ = seal_bteartype;
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.bitField0_ &= -9;
                this.type_ = SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL;
                onChanged();
                return this;
            }
        }

        public enum SEAL_BTEARTYPE implements ProtocolMessageEnum {
            SEAL_BTEAR_NORMAL(0, 0),
            SEAL_BTEAR_CONE(1, 1);
            
            public static final int SEAL_BTEAR_CONE_VALUE = 1;
            public static final int SEAL_BTEAR_NORMAL_VALUE = 0;
            private static final SEAL_BTEARTYPE[] VALUES = null;
            private static EnumLiteMap<SEAL_BTEARTYPE> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_BTEARTYPE>() {
                    /* renamed from: a */
                    public SEAL_BTEARTYPE findValueByNumber(int i) {
                        return SEAL_BTEARTYPE.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_BTEARTYPE valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_BTEAR_NORMAL;
                    case 1:
                        return SEAL_BTEAR_CONE;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_BTEARTYPE> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_BtEarInfo.getDescriptor().getEnumTypes().get(0);
            }

            public static SEAL_BTEARTYPE valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_BTEARTYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SEAL_BtEarInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_BtEarInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_BtEarInfo getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_BtEarInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.s;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.t.ensureFieldAccessorsInitialized(SEAL_BtEarInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_BtEarInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasMac() {
            return (this.bitField0_ & 1) == 1;
        }

        public ByteString getMac() {
            return this.mac_;
        }

        public boolean hasName() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getName() {
            return this.name_;
        }

        public boolean hasRssi() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getRssi() {
            return this.rssi_;
        }

        public boolean hasType() {
            return (this.bitField0_ & 8) == 8;
        }

        public SEAL_BTEARTYPE getType() {
            return this.type_;
        }

        private void initFields() {
            this.mac_ = ByteString.EMPTY;
            this.name_ = ByteString.EMPTY;
            this.rssi_ = 0;
            this.type_ = SEAL_BTEARTYPE.SEAL_BTEAR_NORMAL;
        }

        public static SEAL_BtEarInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_BtEarInfo) PARSER.parseFrom(byteString);
        }

        public static SEAL_BtEarInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_BtEarInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_BtEarInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_BtEarInfo) PARSER.parseFrom(bArr);
        }

        public static SEAL_BtEarInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_BtEarInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_BtEarInfo parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_BtEarInfo) PARSER.parseFrom(inputStream);
        }

        public static SEAL_BtEarInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_BtEarInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_BtEarInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_BtEarInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_BtEarInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_BtEarInfo) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_BtEarInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_BtEarInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_BtEarInfo sEAL_BtEarInfo) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_BtEarInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SEAL_BtEarInfoOrBuilder extends MessageOrBuilder {
        ByteString getMac();

        ByteString getName();

        int getRssi();

        SEAL_BTEARTYPE getType();

        boolean hasMac();

        boolean hasName();

        boolean hasRssi();

        boolean hasType();
    }

    public static final class SEAL_BtEarScanControl extends GeneratedMessage implements SEAL_BtEarScanControlOrBuilder {
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<SEAL_BtEarScanControl> PARSER = new AbstractParser<SEAL_BtEarScanControl>() {
            /* renamed from: a */
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
        };
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_BtEarScanControl defaultInstance = new SEAL_BtEarScanControl(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public SEAL_BTEAR_CONTROL option_;
        /* access modifiers changed from: private */
        public SEAL_BTEAR_SCAN_RESULT result_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_BtEarScanControlOrBuilder {
            private int bitField0_;
            private SEAL_BTEAR_CONTROL option_;
            private SEAL_BTEAR_SCAN_RESULT result_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return SealProtos.w;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.x.ensureFieldAccessorsInitialized(SEAL_BtEarScanControl.class, Builder.class);
            }

            private Builder() {
                this.result_ = SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK;
                this.option_ = SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK;
                this.option_ = SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_BtEarScanControl.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.version_ = 0;
                this.bitField0_ &= -2;
                this.result_ = SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK;
                this.bitField0_ &= -3;
                this.option_ = SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.w;
            }

            public SEAL_BtEarScanControl getDefaultInstanceForType() {
                return SEAL_BtEarScanControl.getDefaultInstance();
            }

            public SEAL_BtEarScanControl build() {
                SEAL_BtEarScanControl buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_BtEarScanControl buildPartial() {
                int i = 1;
                SEAL_BtEarScanControl sEAL_BtEarScanControl = new SEAL_BtEarScanControl(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sEAL_BtEarScanControl.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sEAL_BtEarScanControl.result_ = this.result_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sEAL_BtEarScanControl.option_ = this.option_;
                sEAL_BtEarScanControl.bitField0_ = i;
                onBuilt();
                return sEAL_BtEarScanControl;
            }

            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            public SEAL_BTEAR_SCAN_RESULT getResult() {
                return this.result_;
            }

            public Builder setResult(SEAL_BTEAR_SCAN_RESULT seal_btear_scan_result) {
                if (seal_btear_scan_result == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.result_ = seal_btear_scan_result;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK;
                onChanged();
                return this;
            }

            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            public SEAL_BTEAR_CONTROL getOption() {
                return this.option_;
            }

            public Builder setOption(SEAL_BTEAR_CONTROL seal_btear_control) {
                if (seal_btear_control == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.option_ = seal_btear_control;
                onChanged();
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START;
                onChanged();
                return this;
            }
        }

        public enum SEAL_BTEAR_CONTROL implements ProtocolMessageEnum {
            SEAL_BTEAR_SCAN_START(0, 0),
            SEAL_BTEAR_SCAN_PAUSE(1, 1),
            SEAL_BTEAR_SCAN_STOP(2, 2);
            
            public static final int SEAL_BTEAR_SCAN_PAUSE_VALUE = 1;
            public static final int SEAL_BTEAR_SCAN_START_VALUE = 0;
            public static final int SEAL_BTEAR_SCAN_STOP_VALUE = 2;
            private static final SEAL_BTEAR_CONTROL[] VALUES = null;
            private static EnumLiteMap<SEAL_BTEAR_CONTROL> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_BTEAR_CONTROL>() {
                    /* renamed from: a */
                    public SEAL_BTEAR_CONTROL findValueByNumber(int i) {
                        return SEAL_BTEAR_CONTROL.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_BTEAR_CONTROL valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_BTEAR_SCAN_START;
                    case 1:
                        return SEAL_BTEAR_SCAN_PAUSE;
                    case 2:
                        return SEAL_BTEAR_SCAN_STOP;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_BTEAR_CONTROL> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_BtEarScanControl.getDescriptor().getEnumTypes().get(1);
            }

            public static SEAL_BTEAR_CONTROL valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_BTEAR_CONTROL(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        public enum SEAL_BTEAR_SCAN_RESULT implements ProtocolMessageEnum {
            SEAL_BTEAR_SCAN_OK(0, 0),
            SEAL_BTEAR_SCAN_ERROR(1, 1);
            
            public static final int SEAL_BTEAR_SCAN_ERROR_VALUE = 1;
            public static final int SEAL_BTEAR_SCAN_OK_VALUE = 0;
            private static final SEAL_BTEAR_SCAN_RESULT[] VALUES = null;
            private static EnumLiteMap<SEAL_BTEAR_SCAN_RESULT> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_BTEAR_SCAN_RESULT>() {
                    /* renamed from: a */
                    public SEAL_BTEAR_SCAN_RESULT findValueByNumber(int i) {
                        return SEAL_BTEAR_SCAN_RESULT.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_BTEAR_SCAN_RESULT valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_BTEAR_SCAN_OK;
                    case 1:
                        return SEAL_BTEAR_SCAN_ERROR;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_BTEAR_SCAN_RESULT> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_BtEarScanControl.getDescriptor().getEnumTypes().get(0);
            }

            public static SEAL_BTEAR_SCAN_RESULT valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_BTEAR_SCAN_RESULT(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SEAL_BtEarScanControl(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_BtEarScanControl(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_BtEarScanControl getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_BtEarScanControl getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.w;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.x.ensureFieldAccessorsInitialized(SEAL_BtEarScanControl.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_BtEarScanControl> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        public SEAL_BTEAR_SCAN_RESULT getResult() {
            return this.result_;
        }

        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        public SEAL_BTEAR_CONTROL getOption() {
            return this.option_;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK;
            this.option_ = SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START;
        }

        public static SEAL_BtEarScanControl parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_BtEarScanControl) PARSER.parseFrom(byteString);
        }

        public static SEAL_BtEarScanControl parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_BtEarScanControl) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_BtEarScanControl parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_BtEarScanControl) PARSER.parseFrom(bArr);
        }

        public static SEAL_BtEarScanControl parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_BtEarScanControl) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_BtEarScanControl parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_BtEarScanControl) PARSER.parseFrom(inputStream);
        }

        public static SEAL_BtEarScanControl parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_BtEarScanControl) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarScanControl parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_BtEarScanControl) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_BtEarScanControl parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_BtEarScanControl) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarScanControl parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_BtEarScanControl) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_BtEarScanControl parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_BtEarScanControl) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_BtEarScanControl sEAL_BtEarScanControl) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_BtEarScanControl);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SEAL_BtEarScanControlOrBuilder extends MessageOrBuilder {
        SEAL_BTEAR_CONTROL getOption();

        SEAL_BTEAR_SCAN_RESULT getResult();

        int getVersion();

        boolean hasOption();

        boolean hasResult();

        boolean hasVersion();
    }

    public static final class SEAL_BtEarScanItem extends GeneratedMessage implements SEAL_BtEarScanItemOrBuilder {
        public static final int BTEAR_FIELD_NUMBER = 3;
        public static Parser<SEAL_BtEarScanItem> PARSER = new AbstractParser<SEAL_BtEarScanItem>() {
            /* renamed from: a */
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
        };
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_BtEarScanItem defaultInstance = new SEAL_BtEarScanItem(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public SEAL_BtEarInfo btEar_;
        /* access modifiers changed from: private */
        public SEAL_BTEAR_ITEM_RESULT result_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_BtEarScanItemOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SEAL_BtEarInfo, Builder, SEAL_BtEarInfoOrBuilder> btEarBuilder_;
            private SEAL_BtEarInfo btEar_;
            private SEAL_BTEAR_ITEM_RESULT result_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return SealProtos.y;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.z.ensureFieldAccessorsInitialized(SEAL_BtEarScanItem.class, Builder.class);
            }

            private Builder() {
                this.result_ = SEAL_BTEAR_ITEM_RESULT.SEAL_BTEAR_ITEM_OK;
                this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_BTEAR_ITEM_RESULT.SEAL_BTEAR_ITEM_OK;
                this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_BtEarScanItem.alwaysUseFieldBuilders) {
                    getBtEarFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.version_ = 0;
                this.bitField0_ &= -2;
                this.result_ = SEAL_BTEAR_ITEM_RESULT.SEAL_BTEAR_ITEM_OK;
                this.bitField0_ &= -3;
                if (this.btEarBuilder_ == null) {
                    this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                } else {
                    this.btEarBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.y;
            }

            public SEAL_BtEarScanItem getDefaultInstanceForType() {
                return SEAL_BtEarScanItem.getDefaultInstance();
            }

            public SEAL_BtEarScanItem build() {
                SEAL_BtEarScanItem buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_BtEarScanItem buildPartial() {
                int i;
                int i2 = 1;
                SEAL_BtEarScanItem sEAL_BtEarScanItem = new SEAL_BtEarScanItem(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                sEAL_BtEarScanItem.version_ = this.version_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_BtEarScanItem.result_ = this.result_;
                if ((i3 & 4) == 4) {
                    i = i2 | 4;
                } else {
                    i = i2;
                }
                if (this.btEarBuilder_ == null) {
                    sEAL_BtEarScanItem.btEar_ = this.btEar_;
                } else {
                    sEAL_BtEarScanItem.btEar_ = (SEAL_BtEarInfo) this.btEarBuilder_.build();
                }
                sEAL_BtEarScanItem.bitField0_ = i;
                onBuilt();
                return sEAL_BtEarScanItem;
            }

            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            public SEAL_BTEAR_ITEM_RESULT getResult() {
                return this.result_;
            }

            public Builder setResult(SEAL_BTEAR_ITEM_RESULT seal_btear_item_result) {
                if (seal_btear_item_result == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.result_ = seal_btear_item_result;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SEAL_BTEAR_ITEM_RESULT.SEAL_BTEAR_ITEM_OK;
                onChanged();
                return this;
            }

            public boolean hasBtEar() {
                return (this.bitField0_ & 4) == 4;
            }

            public SEAL_BtEarInfo getBtEar() {
                if (this.btEarBuilder_ == null) {
                    return this.btEar_;
                }
                return (SEAL_BtEarInfo) this.btEarBuilder_.getMessage();
            }

            public Builder setBtEar(SEAL_BtEarInfo sEAL_BtEarInfo) {
                if (this.btEarBuilder_ != null) {
                    this.btEarBuilder_.setMessage(sEAL_BtEarInfo);
                } else if (sEAL_BtEarInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.btEar_ = sEAL_BtEarInfo;
                    onChanged();
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setBtEar(Builder builder) {
                if (this.btEarBuilder_ == null) {
                    this.btEar_ = builder.build();
                    onChanged();
                } else {
                    this.btEarBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder mergeBtEar(SEAL_BtEarInfo sEAL_BtEarInfo) {
                if (this.btEarBuilder_ == null) {
                    if ((this.bitField0_ & 4) != 4 || this.btEar_ == SEAL_BtEarInfo.getDefaultInstance()) {
                        this.btEar_ = sEAL_BtEarInfo;
                    } else {
                        this.btEar_ = ((Builder) SEAL_BtEarInfo.newBuilder(this.btEar_).mergeFrom((Message) sEAL_BtEarInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.btEarBuilder_.mergeFrom(sEAL_BtEarInfo);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder clearBtEar() {
                if (this.btEarBuilder_ == null) {
                    this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.btEarBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder getBtEarBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (Builder) getBtEarFieldBuilder().getBuilder();
            }

            public SEAL_BtEarInfoOrBuilder getBtEarOrBuilder() {
                if (this.btEarBuilder_ != null) {
                    return (SEAL_BtEarInfoOrBuilder) this.btEarBuilder_.getMessageOrBuilder();
                }
                return this.btEar_;
            }

            private SingleFieldBuilder<SEAL_BtEarInfo, Builder, SEAL_BtEarInfoOrBuilder> getBtEarFieldBuilder() {
                if (this.btEarBuilder_ == null) {
                    this.btEarBuilder_ = new SingleFieldBuilder<>(getBtEar(), getParentForChildren(), isClean());
                    this.btEar_ = null;
                }
                return this.btEarBuilder_;
            }
        }

        public enum SEAL_BTEAR_ITEM_RESULT implements ProtocolMessageEnum {
            SEAL_BTEAR_ITEM_OK(0, 0);
            
            public static final int SEAL_BTEAR_ITEM_OK_VALUE = 0;
            private static final SEAL_BTEAR_ITEM_RESULT[] VALUES = null;
            private static EnumLiteMap<SEAL_BTEAR_ITEM_RESULT> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_BTEAR_ITEM_RESULT>() {
                    /* renamed from: a */
                    public SEAL_BTEAR_ITEM_RESULT findValueByNumber(int i) {
                        return SEAL_BTEAR_ITEM_RESULT.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_BTEAR_ITEM_RESULT valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_BTEAR_ITEM_OK;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_BTEAR_ITEM_RESULT> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_BtEarScanItem.getDescriptor().getEnumTypes().get(0);
            }

            public static SEAL_BTEAR_ITEM_RESULT valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_BTEAR_ITEM_RESULT(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SEAL_BtEarScanItem(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_BtEarScanItem(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_BtEarScanItem getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_BtEarScanItem getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.y;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.z.ensureFieldAccessorsInitialized(SEAL_BtEarScanItem.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_BtEarScanItem> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        public SEAL_BTEAR_ITEM_RESULT getResult() {
            return this.result_;
        }

        public boolean hasBtEar() {
            return (this.bitField0_ & 4) == 4;
        }

        public SEAL_BtEarInfo getBtEar() {
            return this.btEar_;
        }

        public SEAL_BtEarInfoOrBuilder getBtEarOrBuilder() {
            return this.btEar_;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SEAL_BTEAR_ITEM_RESULT.SEAL_BTEAR_ITEM_OK;
            this.btEar_ = SEAL_BtEarInfo.getDefaultInstance();
        }

        public static SEAL_BtEarScanItem parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_BtEarScanItem) PARSER.parseFrom(byteString);
        }

        public static SEAL_BtEarScanItem parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_BtEarScanItem) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_BtEarScanItem parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_BtEarScanItem) PARSER.parseFrom(bArr);
        }

        public static SEAL_BtEarScanItem parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_BtEarScanItem) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_BtEarScanItem parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_BtEarScanItem) PARSER.parseFrom(inputStream);
        }

        public static SEAL_BtEarScanItem parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_BtEarScanItem) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarScanItem parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_BtEarScanItem) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_BtEarScanItem parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_BtEarScanItem) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_BtEarScanItem parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_BtEarScanItem) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_BtEarScanItem parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_BtEarScanItem) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_BtEarScanItem sEAL_BtEarScanItem) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_BtEarScanItem);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SEAL_BtEarScanItemOrBuilder extends MessageOrBuilder {
        SEAL_BtEarInfo getBtEar();

        SEAL_BtEarInfoOrBuilder getBtEarOrBuilder();

        SEAL_BTEAR_ITEM_RESULT getResult();

        int getVersion();

        boolean hasBtEar();

        boolean hasResult();

        boolean hasVersion();
    }

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
        private static final SEAL_CONNCODE[] VALUES = null;
        private static EnumLiteMap<SEAL_CONNCODE> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<SEAL_CONNCODE>() {
                /* renamed from: a */
                public SEAL_CONNCODE findValueByNumber(int i) {
                    return SEAL_CONNCODE.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static SEAL_CONNCODE valueOf(int i) {
            switch (i) {
                case 0:
                    return SEAL_DISCONNECT;
                case 1:
                    return SEAL_CONNECT;
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

        public static EnumLiteMap<SEAL_CONNCODE> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) SealProtos.a().getEnumTypes().get(0);
        }

        public static SEAL_CONNCODE valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private SEAL_CONNCODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

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
        public static Parser<SEAL_ChannelInfo> PARSER = new AbstractParser<SEAL_ChannelInfo>() {
            /* renamed from: a */
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
        };
        private static final SEAL_ChannelInfo defaultInstance = new SEAL_ChannelInfo(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int chBand_;
        /* access modifiers changed from: private */
        public SEAL_SWITCH chElim_;
        /* access modifiers changed from: private */
        public ByteString chName_;
        /* access modifiers changed from: private */
        public int chNo_;
        /* access modifiers changed from: private */
        public SEAL_SWITCH chPolite_;
        /* access modifiers changed from: private */
        public int chRxCss_;
        /* access modifiers changed from: private */
        public int chRxFreq_;
        /* access modifiers changed from: private */
        public int chSq_;
        /* access modifiers changed from: private */
        public int chTxCss_;
        /* access modifiers changed from: private */
        public int chTxFreq_;
        /* access modifiers changed from: private */
        public int chTxPower_;
        /* access modifiers changed from: private */
        public SEAL_CHTYPE chType_;
        /* access modifiers changed from: private */
        public int chVox_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_ChannelInfoOrBuilder {
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

            public static final Descriptor getDescriptor() {
                return SealProtos.c;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.d.ensureFieldAccessorsInitialized(SEAL_ChannelInfo.class, Builder.class);
            }

            private Builder() {
                this.chType_ = SEAL_CHTYPE.SEAL_PUBLIC;
                this.chName_ = ByteString.EMPTY;
                this.chElim_ = SEAL_SWITCH.SEAL_OFF;
                this.chPolite_ = SEAL_SWITCH.SEAL_OFF;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.chType_ = SEAL_CHTYPE.SEAL_PUBLIC;
                this.chName_ = ByteString.EMPTY;
                this.chElim_ = SEAL_SWITCH.SEAL_OFF;
                this.chPolite_ = SEAL_SWITCH.SEAL_OFF;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_ChannelInfo.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.chNo_ = 0;
                this.bitField0_ &= -2;
                this.chType_ = SEAL_CHTYPE.SEAL_PUBLIC;
                this.bitField0_ &= -3;
                this.chTxPower_ = 0;
                this.bitField0_ &= -5;
                this.chRxFreq_ = 0;
                this.bitField0_ &= -9;
                this.chTxFreq_ = 0;
                this.bitField0_ &= -17;
                this.chName_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                this.chSq_ = 0;
                this.bitField0_ &= -65;
                this.chVox_ = 0;
                this.bitField0_ &= -129;
                this.chRxCss_ = 0;
                this.bitField0_ &= -257;
                this.chTxCss_ = 0;
                this.bitField0_ &= -513;
                this.chElim_ = SEAL_SWITCH.SEAL_OFF;
                this.bitField0_ &= -1025;
                this.chBand_ = 0;
                this.bitField0_ &= -2049;
                this.chPolite_ = SEAL_SWITCH.SEAL_OFF;
                this.bitField0_ &= -4097;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.c;
            }

            public SEAL_ChannelInfo getDefaultInstanceForType() {
                return SEAL_ChannelInfo.getDefaultInstance();
            }

            public SEAL_ChannelInfo build() {
                SEAL_ChannelInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_ChannelInfo buildPartial() {
                int i = 1;
                SEAL_ChannelInfo sEAL_ChannelInfo = new SEAL_ChannelInfo(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sEAL_ChannelInfo.chNo_ = this.chNo_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sEAL_ChannelInfo.chType_ = this.chType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sEAL_ChannelInfo.chTxPower_ = this.chTxPower_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sEAL_ChannelInfo.chRxFreq_ = this.chRxFreq_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sEAL_ChannelInfo.chTxFreq_ = this.chTxFreq_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sEAL_ChannelInfo.chName_ = this.chName_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sEAL_ChannelInfo.chSq_ = this.chSq_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                sEAL_ChannelInfo.chVox_ = this.chVox_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                sEAL_ChannelInfo.chRxCss_ = this.chRxCss_;
                if ((i2 & 512) == 512) {
                    i |= 512;
                }
                sEAL_ChannelInfo.chTxCss_ = this.chTxCss_;
                if ((i2 & 1024) == 1024) {
                    i |= 1024;
                }
                sEAL_ChannelInfo.chElim_ = this.chElim_;
                if ((i2 & 2048) == 2048) {
                    i |= 2048;
                }
                sEAL_ChannelInfo.chBand_ = this.chBand_;
                if ((i2 & 4096) == 4096) {
                    i |= 4096;
                }
                sEAL_ChannelInfo.chPolite_ = this.chPolite_;
                sEAL_ChannelInfo.bitField0_ = i;
                onBuilt();
                return sEAL_ChannelInfo;
            }

            public boolean hasChNo() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getChNo() {
                return this.chNo_;
            }

            public Builder setChNo(int i) {
                this.bitField0_ |= 1;
                this.chNo_ = i;
                onChanged();
                return this;
            }

            public Builder clearChNo() {
                this.bitField0_ &= -2;
                this.chNo_ = 0;
                onChanged();
                return this;
            }

            public boolean hasChType() {
                return (this.bitField0_ & 2) == 2;
            }

            public SEAL_CHTYPE getChType() {
                return this.chType_;
            }

            public Builder setChType(SEAL_CHTYPE seal_chtype) {
                if (seal_chtype == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.chType_ = seal_chtype;
                onChanged();
                return this;
            }

            public Builder clearChType() {
                this.bitField0_ &= -3;
                this.chType_ = SEAL_CHTYPE.SEAL_PUBLIC;
                onChanged();
                return this;
            }

            public boolean hasChTxPower() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getChTxPower() {
                return this.chTxPower_;
            }

            public Builder setChTxPower(int i) {
                this.bitField0_ |= 4;
                this.chTxPower_ = i;
                onChanged();
                return this;
            }

            public Builder clearChTxPower() {
                this.bitField0_ &= -5;
                this.chTxPower_ = 0;
                onChanged();
                return this;
            }

            public boolean hasChRxFreq() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getChRxFreq() {
                return this.chRxFreq_;
            }

            public Builder setChRxFreq(int i) {
                this.bitField0_ |= 8;
                this.chRxFreq_ = i;
                onChanged();
                return this;
            }

            public Builder clearChRxFreq() {
                this.bitField0_ &= -9;
                this.chRxFreq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasChTxFreq() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getChTxFreq() {
                return this.chTxFreq_;
            }

            public Builder setChTxFreq(int i) {
                this.bitField0_ |= 16;
                this.chTxFreq_ = i;
                onChanged();
                return this;
            }

            public Builder clearChTxFreq() {
                this.bitField0_ &= -17;
                this.chTxFreq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasChName() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getChName() {
                return this.chName_;
            }

            public Builder setChName(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.chName_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearChName() {
                this.bitField0_ &= -33;
                this.chName_ = SEAL_ChannelInfo.getDefaultInstance().getChName();
                onChanged();
                return this;
            }

            public boolean hasChSq() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getChSq() {
                return this.chSq_;
            }

            public Builder setChSq(int i) {
                this.bitField0_ |= 64;
                this.chSq_ = i;
                onChanged();
                return this;
            }

            public Builder clearChSq() {
                this.bitField0_ &= -65;
                this.chSq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasChVox() {
                return (this.bitField0_ & 128) == 128;
            }

            public int getChVox() {
                return this.chVox_;
            }

            public Builder setChVox(int i) {
                this.bitField0_ |= 128;
                this.chVox_ = i;
                onChanged();
                return this;
            }

            public Builder clearChVox() {
                this.bitField0_ &= -129;
                this.chVox_ = 0;
                onChanged();
                return this;
            }

            public boolean hasChRxCss() {
                return (this.bitField0_ & 256) == 256;
            }

            public int getChRxCss() {
                return this.chRxCss_;
            }

            public Builder setChRxCss(int i) {
                this.bitField0_ |= 256;
                this.chRxCss_ = i;
                onChanged();
                return this;
            }

            public Builder clearChRxCss() {
                this.bitField0_ &= -257;
                this.chRxCss_ = 0;
                onChanged();
                return this;
            }

            public boolean hasChTxCss() {
                return (this.bitField0_ & 512) == 512;
            }

            public int getChTxCss() {
                return this.chTxCss_;
            }

            public Builder setChTxCss(int i) {
                this.bitField0_ |= 512;
                this.chTxCss_ = i;
                onChanged();
                return this;
            }

            public Builder clearChTxCss() {
                this.bitField0_ &= -513;
                this.chTxCss_ = 0;
                onChanged();
                return this;
            }

            public boolean hasChElim() {
                return (this.bitField0_ & 1024) == 1024;
            }

            public SEAL_SWITCH getChElim() {
                return this.chElim_;
            }

            public Builder setChElim(SEAL_SWITCH seal_switch) {
                if (seal_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1024;
                this.chElim_ = seal_switch;
                onChanged();
                return this;
            }

            public Builder clearChElim() {
                this.bitField0_ &= -1025;
                this.chElim_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }

            public boolean hasChBand() {
                return (this.bitField0_ & 2048) == 2048;
            }

            public int getChBand() {
                return this.chBand_;
            }

            public Builder setChBand(int i) {
                this.bitField0_ |= 2048;
                this.chBand_ = i;
                onChanged();
                return this;
            }

            public Builder clearChBand() {
                this.bitField0_ &= -2049;
                this.chBand_ = 0;
                onChanged();
                return this;
            }

            public boolean hasChPolite() {
                return (this.bitField0_ & 4096) == 4096;
            }

            public SEAL_SWITCH getChPolite() {
                return this.chPolite_;
            }

            public Builder setChPolite(SEAL_SWITCH seal_switch) {
                if (seal_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4096;
                this.chPolite_ = seal_switch;
                onChanged();
                return this;
            }

            public Builder clearChPolite() {
                this.bitField0_ &= -4097;
                this.chPolite_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }
        }

        public enum SEAL_CHTYPE implements ProtocolMessageEnum {
            SEAL_PUBLIC(0, 0),
            SEAL_REMOTE(1, 1),
            SEAL_USERDEF(2, 2);
            
            public static final int SEAL_PUBLIC_VALUE = 0;
            public static final int SEAL_REMOTE_VALUE = 1;
            public static final int SEAL_USERDEF_VALUE = 2;
            private static final SEAL_CHTYPE[] VALUES = null;
            private static EnumLiteMap<SEAL_CHTYPE> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_CHTYPE>() {
                    /* renamed from: a */
                    public SEAL_CHTYPE findValueByNumber(int i) {
                        return SEAL_CHTYPE.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_CHTYPE valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_PUBLIC;
                    case 1:
                        return SEAL_REMOTE;
                    case 2:
                        return SEAL_USERDEF;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_CHTYPE> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_ChannelInfo.getDescriptor().getEnumTypes().get(0);
            }

            public static SEAL_CHTYPE valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_CHTYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SEAL_ChannelInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_ChannelInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_ChannelInfo getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_ChannelInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.c;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.d.ensureFieldAccessorsInitialized(SEAL_ChannelInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_ChannelInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasChNo() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getChNo() {
            return this.chNo_;
        }

        public boolean hasChType() {
            return (this.bitField0_ & 2) == 2;
        }

        public SEAL_CHTYPE getChType() {
            return this.chType_;
        }

        public boolean hasChTxPower() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getChTxPower() {
            return this.chTxPower_;
        }

        public boolean hasChRxFreq() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getChRxFreq() {
            return this.chRxFreq_;
        }

        public boolean hasChTxFreq() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getChTxFreq() {
            return this.chTxFreq_;
        }

        public boolean hasChName() {
            return (this.bitField0_ & 32) == 32;
        }

        public ByteString getChName() {
            return this.chName_;
        }

        public boolean hasChSq() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getChSq() {
            return this.chSq_;
        }

        public boolean hasChVox() {
            return (this.bitField0_ & 128) == 128;
        }

        public int getChVox() {
            return this.chVox_;
        }

        public boolean hasChRxCss() {
            return (this.bitField0_ & 256) == 256;
        }

        public int getChRxCss() {
            return this.chRxCss_;
        }

        public boolean hasChTxCss() {
            return (this.bitField0_ & 512) == 512;
        }

        public int getChTxCss() {
            return this.chTxCss_;
        }

        public boolean hasChElim() {
            return (this.bitField0_ & 1024) == 1024;
        }

        public SEAL_SWITCH getChElim() {
            return this.chElim_;
        }

        public boolean hasChBand() {
            return (this.bitField0_ & 2048) == 2048;
        }

        public int getChBand() {
            return this.chBand_;
        }

        public boolean hasChPolite() {
            return (this.bitField0_ & 4096) == 4096;
        }

        public SEAL_SWITCH getChPolite() {
            return this.chPolite_;
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
            this.chElim_ = SEAL_SWITCH.SEAL_OFF;
            this.chBand_ = 0;
            this.chPolite_ = SEAL_SWITCH.SEAL_OFF;
        }

        public static SEAL_ChannelInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_ChannelInfo) PARSER.parseFrom(byteString);
        }

        public static SEAL_ChannelInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_ChannelInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_ChannelInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_ChannelInfo) PARSER.parseFrom(bArr);
        }

        public static SEAL_ChannelInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_ChannelInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_ChannelInfo parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_ChannelInfo) PARSER.parseFrom(inputStream);
        }

        public static SEAL_ChannelInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_ChannelInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_ChannelInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_ChannelInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_ChannelInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_ChannelInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_ChannelInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_ChannelInfo) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_ChannelInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_ChannelInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_ChannelInfo sEAL_ChannelInfo) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_ChannelInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public static final class SEAL_ChannelInfoOperate extends GeneratedMessage implements SEAL_ChannelInfoOperateOrBuilder {
        public static final int CH_FIELD_NUMBER = 4;
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<SEAL_ChannelInfoOperate> PARSER = new AbstractParser<SEAL_ChannelInfoOperate>() {
            /* renamed from: a */
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
        };
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_ChannelInfoOperate defaultInstance = new SEAL_ChannelInfoOperate(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public SEAL_ChannelInfo ch_;
        /* access modifiers changed from: private */
        public SEAL_CHOPTION option_;
        /* access modifiers changed from: private */
        public SEAL_CH_UERR result_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_ChannelInfoOperateOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SEAL_ChannelInfo, Builder, SEAL_ChannelInfoOrBuilder> chBuilder_;
            private SEAL_ChannelInfo ch_;
            private SEAL_CHOPTION option_;
            private SEAL_CH_UERR result_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return SealProtos.i;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.j.ensureFieldAccessorsInitialized(SEAL_ChannelInfoOperate.class, Builder.class);
            }

            private Builder() {
                this.result_ = SEAL_CH_UERR.SEAL_CH_OK;
                this.option_ = SEAL_CHOPTION.SEAL_CH_INSERT;
                this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_CH_UERR.SEAL_CH_OK;
                this.option_ = SEAL_CHOPTION.SEAL_CH_INSERT;
                this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_ChannelInfoOperate.alwaysUseFieldBuilders) {
                    getChFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.version_ = 0;
                this.bitField0_ &= -2;
                this.result_ = SEAL_CH_UERR.SEAL_CH_OK;
                this.bitField0_ &= -3;
                this.option_ = SEAL_CHOPTION.SEAL_CH_INSERT;
                this.bitField0_ &= -5;
                if (this.chBuilder_ == null) {
                    this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                } else {
                    this.chBuilder_.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.i;
            }

            public SEAL_ChannelInfoOperate getDefaultInstanceForType() {
                return SEAL_ChannelInfoOperate.getDefaultInstance();
            }

            public SEAL_ChannelInfoOperate build() {
                SEAL_ChannelInfoOperate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_ChannelInfoOperate buildPartial() {
                int i;
                int i2 = 1;
                SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate = new SEAL_ChannelInfoOperate(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                sEAL_ChannelInfoOperate.version_ = this.version_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_ChannelInfoOperate.result_ = this.result_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_ChannelInfoOperate.option_ = this.option_;
                if ((i3 & 8) == 8) {
                    i = i2 | 8;
                } else {
                    i = i2;
                }
                if (this.chBuilder_ == null) {
                    sEAL_ChannelInfoOperate.ch_ = this.ch_;
                } else {
                    sEAL_ChannelInfoOperate.ch_ = (SEAL_ChannelInfo) this.chBuilder_.build();
                }
                sEAL_ChannelInfoOperate.bitField0_ = i;
                onBuilt();
                return sEAL_ChannelInfoOperate;
            }

            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            public SEAL_CH_UERR getResult() {
                return this.result_;
            }

            public Builder setResult(SEAL_CH_UERR seal_ch_uerr) {
                if (seal_ch_uerr == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.result_ = seal_ch_uerr;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SEAL_CH_UERR.SEAL_CH_OK;
                onChanged();
                return this;
            }

            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            public SEAL_CHOPTION getOption() {
                return this.option_;
            }

            public Builder setOption(SEAL_CHOPTION seal_choption) {
                if (seal_choption == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.option_ = seal_choption;
                onChanged();
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = SEAL_CHOPTION.SEAL_CH_INSERT;
                onChanged();
                return this;
            }

            public boolean hasCh() {
                return (this.bitField0_ & 8) == 8;
            }

            public SEAL_ChannelInfo getCh() {
                if (this.chBuilder_ == null) {
                    return this.ch_;
                }
                return (SEAL_ChannelInfo) this.chBuilder_.getMessage();
            }

            public Builder setCh(SEAL_ChannelInfo sEAL_ChannelInfo) {
                if (this.chBuilder_ != null) {
                    this.chBuilder_.setMessage(sEAL_ChannelInfo);
                } else if (sEAL_ChannelInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.ch_ = sEAL_ChannelInfo;
                    onChanged();
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setCh(Builder builder) {
                if (this.chBuilder_ == null) {
                    this.ch_ = builder.build();
                    onChanged();
                } else {
                    this.chBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder mergeCh(SEAL_ChannelInfo sEAL_ChannelInfo) {
                if (this.chBuilder_ == null) {
                    if ((this.bitField0_ & 8) != 8 || this.ch_ == SEAL_ChannelInfo.getDefaultInstance()) {
                        this.ch_ = sEAL_ChannelInfo;
                    } else {
                        this.ch_ = ((Builder) SEAL_ChannelInfo.newBuilder(this.ch_).mergeFrom((Message) sEAL_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.chBuilder_.mergeFrom(sEAL_ChannelInfo);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder clearCh() {
                if (this.chBuilder_ == null) {
                    this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.chBuilder_.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder getChBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return (Builder) getChFieldBuilder().getBuilder();
            }

            public SEAL_ChannelInfoOrBuilder getChOrBuilder() {
                if (this.chBuilder_ != null) {
                    return (SEAL_ChannelInfoOrBuilder) this.chBuilder_.getMessageOrBuilder();
                }
                return this.ch_;
            }

            private SingleFieldBuilder<SEAL_ChannelInfo, Builder, SEAL_ChannelInfoOrBuilder> getChFieldBuilder() {
                if (this.chBuilder_ == null) {
                    this.chBuilder_ = new SingleFieldBuilder<>(getCh(), getParentForChildren(), isClean());
                    this.ch_ = null;
                }
                return this.chBuilder_;
            }
        }

        public enum SEAL_CHOPTION implements ProtocolMessageEnum {
            SEAL_CH_INSERT(0, 0),
            SEAL_CH_DELETE(1, 1),
            SEAL_CH_MODIFY(2, 2),
            SEAL_CH_QUERY(3, 3);
            
            public static final int SEAL_CH_DELETE_VALUE = 1;
            public static final int SEAL_CH_INSERT_VALUE = 0;
            public static final int SEAL_CH_MODIFY_VALUE = 2;
            public static final int SEAL_CH_QUERY_VALUE = 3;
            private static final SEAL_CHOPTION[] VALUES = null;
            private static EnumLiteMap<SEAL_CHOPTION> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_CHOPTION>() {
                    /* renamed from: a */
                    public SEAL_CHOPTION findValueByNumber(int i) {
                        return SEAL_CHOPTION.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_CHOPTION valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_CH_INSERT;
                    case 1:
                        return SEAL_CH_DELETE;
                    case 2:
                        return SEAL_CH_MODIFY;
                    case 3:
                        return SEAL_CH_QUERY;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_CHOPTION> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_ChannelInfoOperate.getDescriptor().getEnumTypes().get(1);
            }

            public static SEAL_CHOPTION valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_CHOPTION(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

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
            private static final SEAL_CH_UERR[] VALUES = null;
            private static EnumLiteMap<SEAL_CH_UERR> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_CH_UERR>() {
                    /* renamed from: a */
                    public SEAL_CH_UERR findValueByNumber(int i) {
                        return SEAL_CH_UERR.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_CH_UERR valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_CH_OK;
                    case 1:
                        return SEAL_CH_ERROR;
                    case 2:
                        return SEAL_CH_EMPTY;
                    case 3:
                        return SEAL_CH_FORBIDE;
                    case 4:
                        return SEAL_CH_QUERY_CONTINUE;
                    case 5:
                        return SEAL_CH_QUERY_FINISH;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_CH_UERR> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_ChannelInfoOperate.getDescriptor().getEnumTypes().get(0);
            }

            public static SEAL_CH_UERR valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_CH_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SEAL_ChannelInfoOperate(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_ChannelInfoOperate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_ChannelInfoOperate getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_ChannelInfoOperate getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.i;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.j.ensureFieldAccessorsInitialized(SEAL_ChannelInfoOperate.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_ChannelInfoOperate> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        public SEAL_CH_UERR getResult() {
            return this.result_;
        }

        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        public SEAL_CHOPTION getOption() {
            return this.option_;
        }

        public boolean hasCh() {
            return (this.bitField0_ & 8) == 8;
        }

        public SEAL_ChannelInfo getCh() {
            return this.ch_;
        }

        public SEAL_ChannelInfoOrBuilder getChOrBuilder() {
            return this.ch_;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SEAL_CH_UERR.SEAL_CH_OK;
            this.option_ = SEAL_CHOPTION.SEAL_CH_INSERT;
            this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
        }

        public static SEAL_ChannelInfoOperate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_ChannelInfoOperate) PARSER.parseFrom(byteString);
        }

        public static SEAL_ChannelInfoOperate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_ChannelInfoOperate) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_ChannelInfoOperate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_ChannelInfoOperate) PARSER.parseFrom(bArr);
        }

        public static SEAL_ChannelInfoOperate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_ChannelInfoOperate) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_ChannelInfoOperate parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_ChannelInfoOperate) PARSER.parseFrom(inputStream);
        }

        public static SEAL_ChannelInfoOperate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_ChannelInfoOperate) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_ChannelInfoOperate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_ChannelInfoOperate) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_ChannelInfoOperate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_ChannelInfoOperate) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_ChannelInfoOperate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_ChannelInfoOperate) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_ChannelInfoOperate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_ChannelInfoOperate) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_ChannelInfoOperate);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SEAL_ChannelInfoOperateOrBuilder extends MessageOrBuilder {
        SEAL_ChannelInfo getCh();

        SEAL_ChannelInfoOrBuilder getChOrBuilder();

        SEAL_CHOPTION getOption();

        SEAL_CH_UERR getResult();

        int getVersion();

        boolean hasCh();

        boolean hasOption();

        boolean hasResult();

        boolean hasVersion();
    }

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

        SEAL_CHTYPE getChType();

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

    public static final class SEAL_ChannelStateOperate extends GeneratedMessage implements SEAL_ChannelStateOperateOrBuilder {
        public static final int CH1_FIELD_NUMBER = 6;
        public static final int DEVICEMODE_FIELD_NUMBER = 4;
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<SEAL_ChannelStateOperate> PARSER = new AbstractParser<SEAL_ChannelStateOperate>() {
            /* renamed from: a */
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
        };
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int STATEMODE_FIELD_NUMBER = 5;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_ChannelStateOperate defaultInstance = new SEAL_ChannelStateOperate(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public SEAL_ChannelInfo ch1_;
        /* access modifiers changed from: private */
        public SEAL_MODE deviceMode_;
        /* access modifiers changed from: private */
        public SEAL_STOPTION option_;
        /* access modifiers changed from: private */
        public SEAL_ST_UERR result_;
        /* access modifiers changed from: private */
        public int stateMode_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_ChannelStateOperateOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SEAL_ChannelInfo, Builder, SEAL_ChannelInfoOrBuilder> ch1Builder_;
            private SEAL_ChannelInfo ch1_;
            private SEAL_MODE deviceMode_;
            private SEAL_STOPTION option_;
            private SEAL_ST_UERR result_;
            private int stateMode_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return SealProtos.g;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.h.ensureFieldAccessorsInitialized(SEAL_ChannelStateOperate.class, Builder.class);
            }

            private Builder() {
                this.result_ = SEAL_ST_UERR.SEAL_ST_OK;
                this.option_ = SEAL_STOPTION.SEAL_ST_UPDATE;
                this.deviceMode_ = SEAL_MODE.SEAL_MODE_NORMAL;
                this.ch1_ = SEAL_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_ST_UERR.SEAL_ST_OK;
                this.option_ = SEAL_STOPTION.SEAL_ST_UPDATE;
                this.deviceMode_ = SEAL_MODE.SEAL_MODE_NORMAL;
                this.ch1_ = SEAL_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_ChannelStateOperate.alwaysUseFieldBuilders) {
                    getCh1FieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.version_ = 0;
                this.bitField0_ &= -2;
                this.result_ = SEAL_ST_UERR.SEAL_ST_OK;
                this.bitField0_ &= -3;
                this.option_ = SEAL_STOPTION.SEAL_ST_UPDATE;
                this.bitField0_ &= -5;
                this.deviceMode_ = SEAL_MODE.SEAL_MODE_NORMAL;
                this.bitField0_ &= -9;
                this.stateMode_ = 0;
                this.bitField0_ &= -17;
                if (this.ch1Builder_ == null) {
                    this.ch1_ = SEAL_ChannelInfo.getDefaultInstance();
                } else {
                    this.ch1Builder_.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.g;
            }

            public SEAL_ChannelStateOperate getDefaultInstanceForType() {
                return SEAL_ChannelStateOperate.getDefaultInstance();
            }

            public SEAL_ChannelStateOperate build() {
                SEAL_ChannelStateOperate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_ChannelStateOperate buildPartial() {
                int i;
                int i2 = 1;
                SEAL_ChannelStateOperate sEAL_ChannelStateOperate = new SEAL_ChannelStateOperate(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                sEAL_ChannelStateOperate.version_ = this.version_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_ChannelStateOperate.result_ = this.result_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_ChannelStateOperate.option_ = this.option_;
                if ((i3 & 8) == 8) {
                    i2 |= 8;
                }
                sEAL_ChannelStateOperate.deviceMode_ = this.deviceMode_;
                if ((i3 & 16) == 16) {
                    i2 |= 16;
                }
                sEAL_ChannelStateOperate.stateMode_ = this.stateMode_;
                if ((i3 & 32) == 32) {
                    i = i2 | 32;
                } else {
                    i = i2;
                }
                if (this.ch1Builder_ == null) {
                    sEAL_ChannelStateOperate.ch1_ = this.ch1_;
                } else {
                    sEAL_ChannelStateOperate.ch1_ = (SEAL_ChannelInfo) this.ch1Builder_.build();
                }
                sEAL_ChannelStateOperate.bitField0_ = i;
                onBuilt();
                return sEAL_ChannelStateOperate;
            }

            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            public SEAL_ST_UERR getResult() {
                return this.result_;
            }

            public Builder setResult(SEAL_ST_UERR seal_st_uerr) {
                if (seal_st_uerr == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.result_ = seal_st_uerr;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SEAL_ST_UERR.SEAL_ST_OK;
                onChanged();
                return this;
            }

            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            public SEAL_STOPTION getOption() {
                return this.option_;
            }

            public Builder setOption(SEAL_STOPTION seal_stoption) {
                if (seal_stoption == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.option_ = seal_stoption;
                onChanged();
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = SEAL_STOPTION.SEAL_ST_UPDATE;
                onChanged();
                return this;
            }

            public boolean hasDeviceMode() {
                return (this.bitField0_ & 8) == 8;
            }

            public SEAL_MODE getDeviceMode() {
                return this.deviceMode_;
            }

            public Builder setDeviceMode(SEAL_MODE seal_mode) {
                if (seal_mode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.deviceMode_ = seal_mode;
                onChanged();
                return this;
            }

            public Builder clearDeviceMode() {
                this.bitField0_ &= -9;
                this.deviceMode_ = SEAL_MODE.SEAL_MODE_NORMAL;
                onChanged();
                return this;
            }

            public boolean hasStateMode() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getStateMode() {
                return this.stateMode_;
            }

            public Builder setStateMode(int i) {
                this.bitField0_ |= 16;
                this.stateMode_ = i;
                onChanged();
                return this;
            }

            public Builder clearStateMode() {
                this.bitField0_ &= -17;
                this.stateMode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCh1() {
                return (this.bitField0_ & 32) == 32;
            }

            public SEAL_ChannelInfo getCh1() {
                if (this.ch1Builder_ == null) {
                    return this.ch1_;
                }
                return (SEAL_ChannelInfo) this.ch1Builder_.getMessage();
            }

            public Builder setCh1(SEAL_ChannelInfo sEAL_ChannelInfo) {
                if (this.ch1Builder_ != null) {
                    this.ch1Builder_.setMessage(sEAL_ChannelInfo);
                } else if (sEAL_ChannelInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.ch1_ = sEAL_ChannelInfo;
                    onChanged();
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder setCh1(Builder builder) {
                if (this.ch1Builder_ == null) {
                    this.ch1_ = builder.build();
                    onChanged();
                } else {
                    this.ch1Builder_.setMessage(builder.build());
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder mergeCh1(SEAL_ChannelInfo sEAL_ChannelInfo) {
                if (this.ch1Builder_ == null) {
                    if ((this.bitField0_ & 32) != 32 || this.ch1_ == SEAL_ChannelInfo.getDefaultInstance()) {
                        this.ch1_ = sEAL_ChannelInfo;
                    } else {
                        this.ch1_ = ((Builder) SEAL_ChannelInfo.newBuilder(this.ch1_).mergeFrom((Message) sEAL_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.ch1Builder_.mergeFrom(sEAL_ChannelInfo);
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder clearCh1() {
                if (this.ch1Builder_ == null) {
                    this.ch1_ = SEAL_ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.ch1Builder_.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            public Builder getCh1Builder() {
                this.bitField0_ |= 32;
                onChanged();
                return (Builder) getCh1FieldBuilder().getBuilder();
            }

            public SEAL_ChannelInfoOrBuilder getCh1OrBuilder() {
                if (this.ch1Builder_ != null) {
                    return (SEAL_ChannelInfoOrBuilder) this.ch1Builder_.getMessageOrBuilder();
                }
                return this.ch1_;
            }

            private SingleFieldBuilder<SEAL_ChannelInfo, Builder, SEAL_ChannelInfoOrBuilder> getCh1FieldBuilder() {
                if (this.ch1Builder_ == null) {
                    this.ch1Builder_ = new SingleFieldBuilder<>(getCh1(), getParentForChildren(), isClean());
                    this.ch1_ = null;
                }
                return this.ch1Builder_;
            }
        }

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
            private static final SEAL_MODE[] VALUES = null;
            private static EnumLiteMap<SEAL_MODE> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_MODE>() {
                    /* renamed from: a */
                    public SEAL_MODE findValueByNumber(int i) {
                        return SEAL_MODE.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
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

            public static EnumLiteMap<SEAL_MODE> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_ChannelStateOperate.getDescriptor().getEnumTypes().get(2);
            }

            public static SEAL_MODE valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_MODE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        public enum SEAL_STOPTION implements ProtocolMessageEnum {
            SEAL_ST_UPDATE(0, 0),
            SEAL_ST_QUERY(1, 1);
            
            public static final int SEAL_ST_QUERY_VALUE = 1;
            public static final int SEAL_ST_UPDATE_VALUE = 0;
            private static final SEAL_STOPTION[] VALUES = null;
            private static EnumLiteMap<SEAL_STOPTION> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_STOPTION>() {
                    /* renamed from: a */
                    public SEAL_STOPTION findValueByNumber(int i) {
                        return SEAL_STOPTION.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_STOPTION valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_ST_UPDATE;
                    case 1:
                        return SEAL_ST_QUERY;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_STOPTION> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_ChannelStateOperate.getDescriptor().getEnumTypes().get(1);
            }

            public static SEAL_STOPTION valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_STOPTION(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        public enum SEAL_ST_UERR implements ProtocolMessageEnum {
            SEAL_ST_OK(0, 0),
            SEAL_ST_ERROR(1, 1),
            SEAL_ST_EMPTY(2, 2),
            SEAL_ST_FORBIDE(3, 3);
            
            public static final int SEAL_ST_EMPTY_VALUE = 2;
            public static final int SEAL_ST_ERROR_VALUE = 1;
            public static final int SEAL_ST_FORBIDE_VALUE = 3;
            public static final int SEAL_ST_OK_VALUE = 0;
            private static final SEAL_ST_UERR[] VALUES = null;
            private static EnumLiteMap<SEAL_ST_UERR> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_ST_UERR>() {
                    /* renamed from: a */
                    public SEAL_ST_UERR findValueByNumber(int i) {
                        return SEAL_ST_UERR.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_ST_UERR valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_ST_OK;
                    case 1:
                        return SEAL_ST_ERROR;
                    case 2:
                        return SEAL_ST_EMPTY;
                    case 3:
                        return SEAL_ST_FORBIDE;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_ST_UERR> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_ChannelStateOperate.getDescriptor().getEnumTypes().get(0);
            }

            public static SEAL_ST_UERR valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_ST_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SEAL_ChannelStateOperate(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_ChannelStateOperate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_ChannelStateOperate getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_ChannelStateOperate getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.g;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.h.ensureFieldAccessorsInitialized(SEAL_ChannelStateOperate.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_ChannelStateOperate> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        public SEAL_ST_UERR getResult() {
            return this.result_;
        }

        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        public SEAL_STOPTION getOption() {
            return this.option_;
        }

        public boolean hasDeviceMode() {
            return (this.bitField0_ & 8) == 8;
        }

        public SEAL_MODE getDeviceMode() {
            return this.deviceMode_;
        }

        public boolean hasStateMode() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getStateMode() {
            return this.stateMode_;
        }

        public boolean hasCh1() {
            return (this.bitField0_ & 32) == 32;
        }

        public SEAL_ChannelInfo getCh1() {
            return this.ch1_;
        }

        public SEAL_ChannelInfoOrBuilder getCh1OrBuilder() {
            return this.ch1_;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SEAL_ST_UERR.SEAL_ST_OK;
            this.option_ = SEAL_STOPTION.SEAL_ST_UPDATE;
            this.deviceMode_ = SEAL_MODE.SEAL_MODE_NORMAL;
            this.stateMode_ = 0;
            this.ch1_ = SEAL_ChannelInfo.getDefaultInstance();
        }

        public static SEAL_ChannelStateOperate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_ChannelStateOperate) PARSER.parseFrom(byteString);
        }

        public static SEAL_ChannelStateOperate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_ChannelStateOperate) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_ChannelStateOperate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_ChannelStateOperate) PARSER.parseFrom(bArr);
        }

        public static SEAL_ChannelStateOperate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_ChannelStateOperate) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_ChannelStateOperate parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_ChannelStateOperate) PARSER.parseFrom(inputStream);
        }

        public static SEAL_ChannelStateOperate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_ChannelStateOperate) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_ChannelStateOperate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_ChannelStateOperate) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_ChannelStateOperate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_ChannelStateOperate) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_ChannelStateOperate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_ChannelStateOperate) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_ChannelStateOperate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_ChannelStateOperate) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_ChannelStateOperate);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SEAL_ChannelStateOperateOrBuilder extends MessageOrBuilder {
        SEAL_ChannelInfo getCh1();

        SEAL_ChannelInfoOrBuilder getCh1OrBuilder();

        SEAL_MODE getDeviceMode();

        SEAL_STOPTION getOption();

        SEAL_ST_UERR getResult();

        int getStateMode();

        int getVersion();

        boolean hasCh1();

        boolean hasDeviceMode();

        boolean hasOption();

        boolean hasResult();

        boolean hasStateMode();

        boolean hasVersion();
    }

    public static final class SEAL_Connect extends GeneratedMessage implements SEAL_ConnectOrBuilder {
        public static final int APPMODE_FIELD_NUMBER = 5;
        public static final int COLOR_FIELD_NUMBER = 7;
        public static final int CONNCODE_FIELD_NUMBER = 2;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static final int DEVICETYPE_FIELD_NUMBER = 4;
        public static final int LANGUAGE_FIELD_NUMBER = 6;
        public static Parser<SEAL_Connect> PARSER = new AbstractParser<SEAL_Connect>() {
            /* renamed from: a */
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
        };
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_Connect defaultInstance = new SEAL_Connect(true);
        /* access modifiers changed from: private */
        public SEAL_APPTYPE appMode_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int color_;
        /* access modifiers changed from: private */
        public SEAL_CONNCODE connCode_;
        /* access modifiers changed from: private */
        public int deviceId_;
        /* access modifiers changed from: private */
        public int deviceType_;
        /* access modifiers changed from: private */
        public SEAL_LANGUAGETYPE language_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_ConnectOrBuilder {
            private SEAL_APPTYPE appMode_;
            private int bitField0_;
            private int color_;
            private SEAL_CONNCODE connCode_;
            private int deviceId_;
            private int deviceType_;
            private SEAL_LANGUAGETYPE language_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return SealProtos.a;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.b.ensureFieldAccessorsInitialized(SEAL_Connect.class, Builder.class);
            }

            private Builder() {
                this.connCode_ = SEAL_CONNCODE.SEAL_DISCONNECT;
                this.appMode_ = SEAL_APPTYPE.SEAL_OWN_APP;
                this.language_ = SEAL_LANGUAGETYPE.SEAL_CHINESE;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.connCode_ = SEAL_CONNCODE.SEAL_DISCONNECT;
                this.appMode_ = SEAL_APPTYPE.SEAL_OWN_APP;
                this.language_ = SEAL_LANGUAGETYPE.SEAL_CHINESE;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_Connect.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.version_ = 0;
                this.bitField0_ &= -2;
                this.connCode_ = SEAL_CONNCODE.SEAL_DISCONNECT;
                this.bitField0_ &= -3;
                this.deviceId_ = 0;
                this.bitField0_ &= -5;
                this.deviceType_ = 0;
                this.bitField0_ &= -9;
                this.appMode_ = SEAL_APPTYPE.SEAL_OWN_APP;
                this.bitField0_ &= -17;
                this.language_ = SEAL_LANGUAGETYPE.SEAL_CHINESE;
                this.bitField0_ &= -33;
                this.color_ = 0;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.a;
            }

            public SEAL_Connect getDefaultInstanceForType() {
                return SEAL_Connect.getDefaultInstance();
            }

            public SEAL_Connect build() {
                SEAL_Connect buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_Connect buildPartial() {
                int i = 1;
                SEAL_Connect sEAL_Connect = new SEAL_Connect(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sEAL_Connect.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sEAL_Connect.connCode_ = this.connCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sEAL_Connect.deviceId_ = this.deviceId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sEAL_Connect.deviceType_ = this.deviceType_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sEAL_Connect.appMode_ = this.appMode_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sEAL_Connect.language_ = this.language_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sEAL_Connect.color_ = this.color_;
                sEAL_Connect.bitField0_ = i;
                onBuilt();
                return sEAL_Connect;
            }

            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            public boolean hasConnCode() {
                return (this.bitField0_ & 2) == 2;
            }

            public SEAL_CONNCODE getConnCode() {
                return this.connCode_;
            }

            public Builder setConnCode(SEAL_CONNCODE seal_conncode) {
                if (seal_conncode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.connCode_ = seal_conncode;
                onChanged();
                return this;
            }

            public Builder clearConnCode() {
                this.bitField0_ &= -3;
                this.connCode_ = SEAL_CONNCODE.SEAL_DISCONNECT;
                onChanged();
                return this;
            }

            public boolean hasDeviceId() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getDeviceId() {
                return this.deviceId_;
            }

            public Builder setDeviceId(int i) {
                this.bitField0_ |= 4;
                this.deviceId_ = i;
                onChanged();
                return this;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -5;
                this.deviceId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasDeviceType() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getDeviceType() {
                return this.deviceType_;
            }

            public Builder setDeviceType(int i) {
                this.bitField0_ |= 8;
                this.deviceType_ = i;
                onChanged();
                return this;
            }

            public Builder clearDeviceType() {
                this.bitField0_ &= -9;
                this.deviceType_ = 0;
                onChanged();
                return this;
            }

            public boolean hasAppMode() {
                return (this.bitField0_ & 16) == 16;
            }

            public SEAL_APPTYPE getAppMode() {
                return this.appMode_;
            }

            public Builder setAppMode(SEAL_APPTYPE seal_apptype) {
                if (seal_apptype == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.appMode_ = seal_apptype;
                onChanged();
                return this;
            }

            public Builder clearAppMode() {
                this.bitField0_ &= -17;
                this.appMode_ = SEAL_APPTYPE.SEAL_OWN_APP;
                onChanged();
                return this;
            }

            public boolean hasLanguage() {
                return (this.bitField0_ & 32) == 32;
            }

            public SEAL_LANGUAGETYPE getLanguage() {
                return this.language_;
            }

            public Builder setLanguage(SEAL_LANGUAGETYPE seal_languagetype) {
                if (seal_languagetype == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.language_ = seal_languagetype;
                onChanged();
                return this;
            }

            public Builder clearLanguage() {
                this.bitField0_ &= -33;
                this.language_ = SEAL_LANGUAGETYPE.SEAL_CHINESE;
                onChanged();
                return this;
            }

            public boolean hasColor() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getColor() {
                return this.color_;
            }

            public Builder setColor(int i) {
                this.bitField0_ |= 64;
                this.color_ = i;
                onChanged();
                return this;
            }

            public Builder clearColor() {
                this.bitField0_ &= -65;
                this.color_ = 0;
                onChanged();
                return this;
            }
        }

        public enum SEAL_APPTYPE implements ProtocolMessageEnum {
            SEAL_OWN_APP(0, 0),
            SEAL_MIJIA_APP(1, 1);
            
            public static final int SEAL_MIJIA_APP_VALUE = 1;
            public static final int SEAL_OWN_APP_VALUE = 0;
            private static final SEAL_APPTYPE[] VALUES = null;
            private static EnumLiteMap<SEAL_APPTYPE> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_APPTYPE>() {
                    /* renamed from: a */
                    public SEAL_APPTYPE findValueByNumber(int i) {
                        return SEAL_APPTYPE.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_APPTYPE valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_OWN_APP;
                    case 1:
                        return SEAL_MIJIA_APP;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_APPTYPE> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_Connect.getDescriptor().getEnumTypes().get(0);
            }

            public static SEAL_APPTYPE valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_APPTYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        public enum SEAL_LANGUAGETYPE implements ProtocolMessageEnum {
            SEAL_CHINESE(0, 0),
            SEAL_ENGLISH(1, 1);
            
            public static final int SEAL_CHINESE_VALUE = 0;
            public static final int SEAL_ENGLISH_VALUE = 1;
            private static final SEAL_LANGUAGETYPE[] VALUES = null;
            private static EnumLiteMap<SEAL_LANGUAGETYPE> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_LANGUAGETYPE>() {
                    /* renamed from: a */
                    public SEAL_LANGUAGETYPE findValueByNumber(int i) {
                        return SEAL_LANGUAGETYPE.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_LANGUAGETYPE valueOf(int i) {
                switch (i) {
                    case 0:
                        return SEAL_CHINESE;
                    case 1:
                        return SEAL_ENGLISH;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_LANGUAGETYPE> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_Connect.getDescriptor().getEnumTypes().get(1);
            }

            public static SEAL_LANGUAGETYPE valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_LANGUAGETYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SEAL_Connect(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_Connect(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_Connect getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_Connect getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.a;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.b.ensureFieldAccessorsInitialized(SEAL_Connect.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_Connect> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasConnCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public SEAL_CONNCODE getConnCode() {
            return this.connCode_;
        }

        public boolean hasDeviceId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getDeviceId() {
            return this.deviceId_;
        }

        public boolean hasDeviceType() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getDeviceType() {
            return this.deviceType_;
        }

        public boolean hasAppMode() {
            return (this.bitField0_ & 16) == 16;
        }

        public SEAL_APPTYPE getAppMode() {
            return this.appMode_;
        }

        public boolean hasLanguage() {
            return (this.bitField0_ & 32) == 32;
        }

        public SEAL_LANGUAGETYPE getLanguage() {
            return this.language_;
        }

        public boolean hasColor() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getColor() {
            return this.color_;
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

        public static SEAL_Connect parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_Connect) PARSER.parseFrom(byteString);
        }

        public static SEAL_Connect parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_Connect) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_Connect parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_Connect) PARSER.parseFrom(bArr);
        }

        public static SEAL_Connect parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_Connect) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_Connect parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_Connect) PARSER.parseFrom(inputStream);
        }

        public static SEAL_Connect parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_Connect) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_Connect parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_Connect) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_Connect parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_Connect) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_Connect parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_Connect) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_Connect parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_Connect) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_Connect sEAL_Connect) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_Connect);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SEAL_ConnectOrBuilder extends MessageOrBuilder {
        SEAL_APPTYPE getAppMode();

        int getColor();

        SEAL_CONNCODE getConnCode();

        int getDeviceId();

        int getDeviceType();

        SEAL_LANGUAGETYPE getLanguage();

        int getVersion();

        boolean hasAppMode();

        boolean hasColor();

        boolean hasConnCode();

        boolean hasDeviceId();

        boolean hasDeviceType();

        boolean hasLanguage();

        boolean hasVersion();
    }

    public static final class SEAL_DeviceParam extends GeneratedMessage implements SEAL_DeviceParamOrBuilder {
        public static final int ACTIVATE_FIELD_NUMBER = 9;
        public static final int BLENAME_FIELD_NUMBER = 7;
        public static final int BTAUDIO_FIELD_NUMBER = 11;
        public static final int CHARGE_FIELD_NUMBER = 8;
        public static final int CH_FIELD_NUMBER = 12;
        public static final int DEVICENAME_FIELD_NUMBER = 6;
        public static final int FULLINQUIRY_FIELD_NUMBER = 3;
        public static final int ISALLPUBLIC_FIELD_NUMBER = 14;
        public static Parser<SEAL_DeviceParam> PARSER = new AbstractParser<SEAL_DeviceParam>() {
            /* renamed from: a */
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
        };
        public static final int PWSAVEMODE_FIELD_NUMBER = 15;
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int SHARELOC_FIELD_NUMBER = 10;
        public static final int VERHW_FIELD_NUMBER = 4;
        public static final int VERSION_FIELD_NUMBER = 1;
        public static final int VERSOFT_FIELD_NUMBER = 5;
        public static final int VOICEALERT_FIELD_NUMBER = 13;
        public static final int VOICETYPE_FIELD_NUMBER = 16;
        private static final SEAL_DeviceParam defaultInstance = new SEAL_DeviceParam(true);
        /* access modifiers changed from: private */
        public int activate_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString bleName_;
        /* access modifiers changed from: private */
        public int btAudio_;
        /* access modifiers changed from: private */
        public SEAL_ChannelInfo ch_;
        /* access modifiers changed from: private */
        public int charge_;
        /* access modifiers changed from: private */
        public ByteString deviceName_;
        /* access modifiers changed from: private */
        public SEAL_SWITCH fullInquiry_;
        /* access modifiers changed from: private */
        public SEAL_SWITCH isAllPublic_;
        /* access modifiers changed from: private */
        public int pwsaveMode_;
        /* access modifiers changed from: private */
        public SEAL_DEV_UERR result_;
        /* access modifiers changed from: private */
        public SEAL_SWITCH shareLoc_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int verHw_;
        /* access modifiers changed from: private */
        public int verSoft_;
        /* access modifiers changed from: private */
        public int version_;
        /* access modifiers changed from: private */
        public SEAL_SWITCH voiceAlert_;
        /* access modifiers changed from: private */
        public SEAL_VOICETYPE voiceType_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_DeviceParamOrBuilder {
            private int activate_;
            private int bitField0_;
            private ByteString bleName_;
            private int btAudio_;
            private SingleFieldBuilder<SEAL_ChannelInfo, Builder, SEAL_ChannelInfoOrBuilder> chBuilder_;
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

            public static final Descriptor getDescriptor() {
                return SealProtos.e;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.f.ensureFieldAccessorsInitialized(SEAL_DeviceParam.class, Builder.class);
            }

            private Builder() {
                this.result_ = SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK;
                this.fullInquiry_ = SEAL_SWITCH.SEAL_OFF;
                this.deviceName_ = ByteString.EMPTY;
                this.bleName_ = ByteString.EMPTY;
                this.shareLoc_ = SEAL_SWITCH.SEAL_OFF;
                this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                this.voiceAlert_ = SEAL_SWITCH.SEAL_OFF;
                this.isAllPublic_ = SEAL_SWITCH.SEAL_OFF;
                this.voiceType_ = SEAL_VOICETYPE.SEAL_VOICETYPE_CLOSE;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK;
                this.fullInquiry_ = SEAL_SWITCH.SEAL_OFF;
                this.deviceName_ = ByteString.EMPTY;
                this.bleName_ = ByteString.EMPTY;
                this.shareLoc_ = SEAL_SWITCH.SEAL_OFF;
                this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                this.voiceAlert_ = SEAL_SWITCH.SEAL_OFF;
                this.isAllPublic_ = SEAL_SWITCH.SEAL_OFF;
                this.voiceType_ = SEAL_VOICETYPE.SEAL_VOICETYPE_CLOSE;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_DeviceParam.alwaysUseFieldBuilders) {
                    getChFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.version_ = 0;
                this.bitField0_ &= -2;
                this.result_ = SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK;
                this.bitField0_ &= -3;
                this.fullInquiry_ = SEAL_SWITCH.SEAL_OFF;
                this.bitField0_ &= -5;
                this.verHw_ = 0;
                this.bitField0_ &= -9;
                this.verSoft_ = 0;
                this.bitField0_ &= -17;
                this.deviceName_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                this.bleName_ = ByteString.EMPTY;
                this.bitField0_ &= -65;
                this.charge_ = 0;
                this.bitField0_ &= -129;
                this.activate_ = 0;
                this.bitField0_ &= -257;
                this.shareLoc_ = SEAL_SWITCH.SEAL_OFF;
                this.bitField0_ &= -513;
                this.btAudio_ = 0;
                this.bitField0_ &= -1025;
                if (this.chBuilder_ == null) {
                    this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                } else {
                    this.chBuilder_.clear();
                }
                this.bitField0_ &= -2049;
                this.voiceAlert_ = SEAL_SWITCH.SEAL_OFF;
                this.bitField0_ &= -4097;
                this.isAllPublic_ = SEAL_SWITCH.SEAL_OFF;
                this.bitField0_ &= -8193;
                this.pwsaveMode_ = 0;
                this.bitField0_ &= -16385;
                this.voiceType_ = SEAL_VOICETYPE.SEAL_VOICETYPE_CLOSE;
                this.bitField0_ &= -32769;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.e;
            }

            public SEAL_DeviceParam getDefaultInstanceForType() {
                return SEAL_DeviceParam.getDefaultInstance();
            }

            public SEAL_DeviceParam build() {
                SEAL_DeviceParam buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_DeviceParam buildPartial() {
                int i;
                int i2 = 1;
                SEAL_DeviceParam sEAL_DeviceParam = new SEAL_DeviceParam(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                sEAL_DeviceParam.version_ = this.version_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                sEAL_DeviceParam.result_ = this.result_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                sEAL_DeviceParam.fullInquiry_ = this.fullInquiry_;
                if ((i3 & 8) == 8) {
                    i2 |= 8;
                }
                sEAL_DeviceParam.verHw_ = this.verHw_;
                if ((i3 & 16) == 16) {
                    i2 |= 16;
                }
                sEAL_DeviceParam.verSoft_ = this.verSoft_;
                if ((i3 & 32) == 32) {
                    i2 |= 32;
                }
                sEAL_DeviceParam.deviceName_ = this.deviceName_;
                if ((i3 & 64) == 64) {
                    i2 |= 64;
                }
                sEAL_DeviceParam.bleName_ = this.bleName_;
                if ((i3 & 128) == 128) {
                    i2 |= 128;
                }
                sEAL_DeviceParam.charge_ = this.charge_;
                if ((i3 & 256) == 256) {
                    i2 |= 256;
                }
                sEAL_DeviceParam.activate_ = this.activate_;
                if ((i3 & 512) == 512) {
                    i2 |= 512;
                }
                sEAL_DeviceParam.shareLoc_ = this.shareLoc_;
                if ((i3 & 1024) == 1024) {
                    i2 |= 1024;
                }
                sEAL_DeviceParam.btAudio_ = this.btAudio_;
                if ((i3 & 2048) == 2048) {
                    i = i2 | 2048;
                } else {
                    i = i2;
                }
                if (this.chBuilder_ == null) {
                    sEAL_DeviceParam.ch_ = this.ch_;
                } else {
                    sEAL_DeviceParam.ch_ = (SEAL_ChannelInfo) this.chBuilder_.build();
                }
                if ((i3 & 4096) == 4096) {
                    i |= 4096;
                }
                sEAL_DeviceParam.voiceAlert_ = this.voiceAlert_;
                if ((i3 & 8192) == 8192) {
                    i |= 8192;
                }
                sEAL_DeviceParam.isAllPublic_ = this.isAllPublic_;
                if ((i3 & 16384) == 16384) {
                    i |= 16384;
                }
                sEAL_DeviceParam.pwsaveMode_ = this.pwsaveMode_;
                if ((i3 & 32768) == 32768) {
                    i |= 32768;
                }
                sEAL_DeviceParam.voiceType_ = this.voiceType_;
                sEAL_DeviceParam.bitField0_ = i;
                onBuilt();
                return sEAL_DeviceParam;
            }

            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            public SEAL_DEV_UERR getResult() {
                return this.result_;
            }

            public Builder setResult(SEAL_DEV_UERR seal_dev_uerr) {
                if (seal_dev_uerr == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.result_ = seal_dev_uerr;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK;
                onChanged();
                return this;
            }

            public boolean hasFullInquiry() {
                return (this.bitField0_ & 4) == 4;
            }

            public SEAL_SWITCH getFullInquiry() {
                return this.fullInquiry_;
            }

            public Builder setFullInquiry(SEAL_SWITCH seal_switch) {
                if (seal_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fullInquiry_ = seal_switch;
                onChanged();
                return this;
            }

            public Builder clearFullInquiry() {
                this.bitField0_ &= -5;
                this.fullInquiry_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }

            public boolean hasVerHw() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getVerHw() {
                return this.verHw_;
            }

            public Builder setVerHw(int i) {
                this.bitField0_ |= 8;
                this.verHw_ = i;
                onChanged();
                return this;
            }

            public Builder clearVerHw() {
                this.bitField0_ &= -9;
                this.verHw_ = 0;
                onChanged();
                return this;
            }

            public boolean hasVerSoft() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getVerSoft() {
                return this.verSoft_;
            }

            public Builder setVerSoft(int i) {
                this.bitField0_ |= 16;
                this.verSoft_ = i;
                onChanged();
                return this;
            }

            public Builder clearVerSoft() {
                this.bitField0_ &= -17;
                this.verSoft_ = 0;
                onChanged();
                return this;
            }

            public boolean hasDeviceName() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getDeviceName() {
                return this.deviceName_;
            }

            public Builder setDeviceName(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.deviceName_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearDeviceName() {
                this.bitField0_ &= -33;
                this.deviceName_ = SEAL_DeviceParam.getDefaultInstance().getDeviceName();
                onChanged();
                return this;
            }

            public boolean hasBleName() {
                return (this.bitField0_ & 64) == 64;
            }

            public ByteString getBleName() {
                return this.bleName_;
            }

            public Builder setBleName(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.bleName_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearBleName() {
                this.bitField0_ &= -65;
                this.bleName_ = SEAL_DeviceParam.getDefaultInstance().getBleName();
                onChanged();
                return this;
            }

            public boolean hasCharge() {
                return (this.bitField0_ & 128) == 128;
            }

            public int getCharge() {
                return this.charge_;
            }

            public Builder setCharge(int i) {
                this.bitField0_ |= 128;
                this.charge_ = i;
                onChanged();
                return this;
            }

            public Builder clearCharge() {
                this.bitField0_ &= -129;
                this.charge_ = 0;
                onChanged();
                return this;
            }

            public boolean hasActivate() {
                return (this.bitField0_ & 256) == 256;
            }

            public int getActivate() {
                return this.activate_;
            }

            public Builder setActivate(int i) {
                this.bitField0_ |= 256;
                this.activate_ = i;
                onChanged();
                return this;
            }

            public Builder clearActivate() {
                this.bitField0_ &= -257;
                this.activate_ = 0;
                onChanged();
                return this;
            }

            public boolean hasShareLoc() {
                return (this.bitField0_ & 512) == 512;
            }

            public SEAL_SWITCH getShareLoc() {
                return this.shareLoc_;
            }

            public Builder setShareLoc(SEAL_SWITCH seal_switch) {
                if (seal_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 512;
                this.shareLoc_ = seal_switch;
                onChanged();
                return this;
            }

            public Builder clearShareLoc() {
                this.bitField0_ &= -513;
                this.shareLoc_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }

            public boolean hasBtAudio() {
                return (this.bitField0_ & 1024) == 1024;
            }

            public int getBtAudio() {
                return this.btAudio_;
            }

            public Builder setBtAudio(int i) {
                this.bitField0_ |= 1024;
                this.btAudio_ = i;
                onChanged();
                return this;
            }

            public Builder clearBtAudio() {
                this.bitField0_ &= -1025;
                this.btAudio_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCh() {
                return (this.bitField0_ & 2048) == 2048;
            }

            public SEAL_ChannelInfo getCh() {
                if (this.chBuilder_ == null) {
                    return this.ch_;
                }
                return (SEAL_ChannelInfo) this.chBuilder_.getMessage();
            }

            public Builder setCh(SEAL_ChannelInfo sEAL_ChannelInfo) {
                if (this.chBuilder_ != null) {
                    this.chBuilder_.setMessage(sEAL_ChannelInfo);
                } else if (sEAL_ChannelInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.ch_ = sEAL_ChannelInfo;
                    onChanged();
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder setCh(Builder builder) {
                if (this.chBuilder_ == null) {
                    this.ch_ = builder.build();
                    onChanged();
                } else {
                    this.chBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder mergeCh(SEAL_ChannelInfo sEAL_ChannelInfo) {
                if (this.chBuilder_ == null) {
                    if ((this.bitField0_ & 2048) != 2048 || this.ch_ == SEAL_ChannelInfo.getDefaultInstance()) {
                        this.ch_ = sEAL_ChannelInfo;
                    } else {
                        this.ch_ = ((Builder) SEAL_ChannelInfo.newBuilder(this.ch_).mergeFrom((Message) sEAL_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.chBuilder_.mergeFrom(sEAL_ChannelInfo);
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder clearCh() {
                if (this.chBuilder_ == null) {
                    this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.chBuilder_.clear();
                }
                this.bitField0_ &= -2049;
                return this;
            }

            public Builder getChBuilder() {
                this.bitField0_ |= 2048;
                onChanged();
                return (Builder) getChFieldBuilder().getBuilder();
            }

            public SEAL_ChannelInfoOrBuilder getChOrBuilder() {
                if (this.chBuilder_ != null) {
                    return (SEAL_ChannelInfoOrBuilder) this.chBuilder_.getMessageOrBuilder();
                }
                return this.ch_;
            }

            private SingleFieldBuilder<SEAL_ChannelInfo, Builder, SEAL_ChannelInfoOrBuilder> getChFieldBuilder() {
                if (this.chBuilder_ == null) {
                    this.chBuilder_ = new SingleFieldBuilder<>(getCh(), getParentForChildren(), isClean());
                    this.ch_ = null;
                }
                return this.chBuilder_;
            }

            public boolean hasVoiceAlert() {
                return (this.bitField0_ & 4096) == 4096;
            }

            public SEAL_SWITCH getVoiceAlert() {
                return this.voiceAlert_;
            }

            public Builder setVoiceAlert(SEAL_SWITCH seal_switch) {
                if (seal_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4096;
                this.voiceAlert_ = seal_switch;
                onChanged();
                return this;
            }

            public Builder clearVoiceAlert() {
                this.bitField0_ &= -4097;
                this.voiceAlert_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }

            public boolean hasIsAllPublic() {
                return (this.bitField0_ & 8192) == 8192;
            }

            public SEAL_SWITCH getIsAllPublic() {
                return this.isAllPublic_;
            }

            public Builder setIsAllPublic(SEAL_SWITCH seal_switch) {
                if (seal_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8192;
                this.isAllPublic_ = seal_switch;
                onChanged();
                return this;
            }

            public Builder clearIsAllPublic() {
                this.bitField0_ &= -8193;
                this.isAllPublic_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
                return this;
            }

            public boolean hasPwsaveMode() {
                return (this.bitField0_ & 16384) == 16384;
            }

            public int getPwsaveMode() {
                return this.pwsaveMode_;
            }

            public Builder setPwsaveMode(int i) {
                this.bitField0_ |= 16384;
                this.pwsaveMode_ = i;
                onChanged();
                return this;
            }

            public Builder clearPwsaveMode() {
                this.bitField0_ &= -16385;
                this.pwsaveMode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasVoiceType() {
                return (this.bitField0_ & 32768) == 32768;
            }

            public SEAL_VOICETYPE getVoiceType() {
                return this.voiceType_;
            }

            public Builder setVoiceType(SEAL_VOICETYPE seal_voicetype) {
                if (seal_voicetype == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32768;
                this.voiceType_ = seal_voicetype;
                onChanged();
                return this;
            }

            public Builder clearVoiceType() {
                this.bitField0_ &= -32769;
                this.voiceType_ = SEAL_VOICETYPE.SEAL_VOICETYPE_CLOSE;
                onChanged();
                return this;
            }
        }

        public enum SEAL_DEV_UERR implements ProtocolMessageEnum {
            SEAL_PARAM_QUERY_OK(0, 1),
            SEAL_PARAM_QUERY_ERROR(1, 2),
            SEAL_PARAM_UPDATE_OK(2, 3),
            SEAL_PARAM_UPDATE_ERROR(3, 4);
            
            public static final int SEAL_PARAM_QUERY_ERROR_VALUE = 2;
            public static final int SEAL_PARAM_QUERY_OK_VALUE = 1;
            public static final int SEAL_PARAM_UPDATE_ERROR_VALUE = 4;
            public static final int SEAL_PARAM_UPDATE_OK_VALUE = 3;
            private static final SEAL_DEV_UERR[] VALUES = null;
            private static EnumLiteMap<SEAL_DEV_UERR> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_DEV_UERR>() {
                    /* renamed from: a */
                    public SEAL_DEV_UERR findValueByNumber(int i) {
                        return SEAL_DEV_UERR.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_DEV_UERR valueOf(int i) {
                switch (i) {
                    case 1:
                        return SEAL_PARAM_QUERY_OK;
                    case 2:
                        return SEAL_PARAM_QUERY_ERROR;
                    case 3:
                        return SEAL_PARAM_UPDATE_OK;
                    case 4:
                        return SEAL_PARAM_UPDATE_ERROR;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_DEV_UERR> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_DeviceParam.getDescriptor().getEnumTypes().get(0);
            }

            public static SEAL_DEV_UERR valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_DEV_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        public enum SEAL_VOICETYPE implements ProtocolMessageEnum {
            SEAL_VOICETYPE_CLOSE(0, 1),
            SEAL_VOICETYPE_CHINESE(1, 2),
            SEAL_VOICETYPE_ENGLISH(2, 3);
            
            public static final int SEAL_VOICETYPE_CHINESE_VALUE = 2;
            public static final int SEAL_VOICETYPE_CLOSE_VALUE = 1;
            public static final int SEAL_VOICETYPE_ENGLISH_VALUE = 3;
            private static final SEAL_VOICETYPE[] VALUES = null;
            private static EnumLiteMap<SEAL_VOICETYPE> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_VOICETYPE>() {
                    /* renamed from: a */
                    public SEAL_VOICETYPE findValueByNumber(int i) {
                        return SEAL_VOICETYPE.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_VOICETYPE valueOf(int i) {
                switch (i) {
                    case 1:
                        return SEAL_VOICETYPE_CLOSE;
                    case 2:
                        return SEAL_VOICETYPE_CHINESE;
                    case 3:
                        return SEAL_VOICETYPE_ENGLISH;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_VOICETYPE> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_DeviceParam.getDescriptor().getEnumTypes().get(1);
            }

            public static SEAL_VOICETYPE valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_VOICETYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SEAL_DeviceParam(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_DeviceParam(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_DeviceParam getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_DeviceParam getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.e;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.f.ensureFieldAccessorsInitialized(SEAL_DeviceParam.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_DeviceParam> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        public SEAL_DEV_UERR getResult() {
            return this.result_;
        }

        public boolean hasFullInquiry() {
            return (this.bitField0_ & 4) == 4;
        }

        public SEAL_SWITCH getFullInquiry() {
            return this.fullInquiry_;
        }

        public boolean hasVerHw() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getVerHw() {
            return this.verHw_;
        }

        public boolean hasVerSoft() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getVerSoft() {
            return this.verSoft_;
        }

        public boolean hasDeviceName() {
            return (this.bitField0_ & 32) == 32;
        }

        public ByteString getDeviceName() {
            return this.deviceName_;
        }

        public boolean hasBleName() {
            return (this.bitField0_ & 64) == 64;
        }

        public ByteString getBleName() {
            return this.bleName_;
        }

        public boolean hasCharge() {
            return (this.bitField0_ & 128) == 128;
        }

        public int getCharge() {
            return this.charge_;
        }

        public boolean hasActivate() {
            return (this.bitField0_ & 256) == 256;
        }

        public int getActivate() {
            return this.activate_;
        }

        public boolean hasShareLoc() {
            return (this.bitField0_ & 512) == 512;
        }

        public SEAL_SWITCH getShareLoc() {
            return this.shareLoc_;
        }

        public boolean hasBtAudio() {
            return (this.bitField0_ & 1024) == 1024;
        }

        public int getBtAudio() {
            return this.btAudio_;
        }

        public boolean hasCh() {
            return (this.bitField0_ & 2048) == 2048;
        }

        public SEAL_ChannelInfo getCh() {
            return this.ch_;
        }

        public SEAL_ChannelInfoOrBuilder getChOrBuilder() {
            return this.ch_;
        }

        public boolean hasVoiceAlert() {
            return (this.bitField0_ & 4096) == 4096;
        }

        public SEAL_SWITCH getVoiceAlert() {
            return this.voiceAlert_;
        }

        public boolean hasIsAllPublic() {
            return (this.bitField0_ & 8192) == 8192;
        }

        public SEAL_SWITCH getIsAllPublic() {
            return this.isAllPublic_;
        }

        public boolean hasPwsaveMode() {
            return (this.bitField0_ & 16384) == 16384;
        }

        public int getPwsaveMode() {
            return this.pwsaveMode_;
        }

        public boolean hasVoiceType() {
            return (this.bitField0_ & 32768) == 32768;
        }

        public SEAL_VOICETYPE getVoiceType() {
            return this.voiceType_;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK;
            this.fullInquiry_ = SEAL_SWITCH.SEAL_OFF;
            this.verHw_ = 0;
            this.verSoft_ = 0;
            this.deviceName_ = ByteString.EMPTY;
            this.bleName_ = ByteString.EMPTY;
            this.charge_ = 0;
            this.activate_ = 0;
            this.shareLoc_ = SEAL_SWITCH.SEAL_OFF;
            this.btAudio_ = 0;
            this.ch_ = SEAL_ChannelInfo.getDefaultInstance();
            this.voiceAlert_ = SEAL_SWITCH.SEAL_OFF;
            this.isAllPublic_ = SEAL_SWITCH.SEAL_OFF;
            this.pwsaveMode_ = 0;
            this.voiceType_ = SEAL_VOICETYPE.SEAL_VOICETYPE_CLOSE;
        }

        public static SEAL_DeviceParam parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_DeviceParam) PARSER.parseFrom(byteString);
        }

        public static SEAL_DeviceParam parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_DeviceParam) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_DeviceParam parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_DeviceParam) PARSER.parseFrom(bArr);
        }

        public static SEAL_DeviceParam parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_DeviceParam) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_DeviceParam parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_DeviceParam) PARSER.parseFrom(inputStream);
        }

        public static SEAL_DeviceParam parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_DeviceParam) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_DeviceParam parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_DeviceParam) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_DeviceParam parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_DeviceParam) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_DeviceParam parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_DeviceParam) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_DeviceParam parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_DeviceParam) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_DeviceParam sEAL_DeviceParam) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_DeviceParam);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

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

        SEAL_DEV_UERR getResult();

        SEAL_SWITCH getShareLoc();

        int getVerHw();

        int getVerSoft();

        int getVersion();

        SEAL_SWITCH getVoiceAlert();

        SEAL_VOICETYPE getVoiceType();

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

    public static final class SEAL_LocationInfo extends GeneratedMessage implements SEAL_LocationInfoOrBuilder {
        public static final int ALTITUDE_FIELD_NUMBER = 8;
        public static final int CTLSYNC_FIELD_NUMBER = 2;
        public static final int LATITUDE_FIELD_NUMBER = 7;
        public static final int LONGITUDE_FIELD_NUMBER = 6;
        public static Parser<SEAL_LocationInfo> PARSER = new AbstractParser<SEAL_LocationInfo>() {
            /* renamed from: a */
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
        };
        public static final int RXCSS_FIELD_NUMBER = 10;
        public static final int TIMESYNC_FIELD_NUMBER = 9;
        public static final int USERFREQ_FIELD_NUMBER = 5;
        public static final int USERID_FIELD_NUMBER = 3;
        public static final int USERNAME_FIELD_NUMBER = 4;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_LocationInfo defaultInstance = new SEAL_LocationInfo(true);
        /* access modifiers changed from: private */
        public int altitude_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public SEAL_SWITCH ctlsync_;
        /* access modifiers changed from: private */
        public int latitude_;
        /* access modifiers changed from: private */
        public int longitude_;
        /* access modifiers changed from: private */
        public int rxCss_;
        /* access modifiers changed from: private */
        public int timeSync_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int userFreq_;
        /* access modifiers changed from: private */
        public int userId_;
        /* access modifiers changed from: private */
        public ByteString userName_;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_LocationInfoOrBuilder {
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

            public static final Descriptor getDescriptor() {
                return SealProtos.k;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.l.ensureFieldAccessorsInitialized(SEAL_LocationInfo.class, Builder.class);
            }

            private Builder() {
                this.ctlsync_ = SEAL_SWITCH.SEAL_OFF;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.ctlsync_ = SEAL_SWITCH.SEAL_OFF;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_LocationInfo.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.version_ = 0;
                this.bitField0_ &= -2;
                this.ctlsync_ = SEAL_SWITCH.SEAL_OFF;
                this.bitField0_ &= -3;
                this.userId_ = 0;
                this.bitField0_ &= -5;
                this.userName_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                this.userFreq_ = 0;
                this.bitField0_ &= -17;
                this.longitude_ = 0;
                this.bitField0_ &= -33;
                this.latitude_ = 0;
                this.bitField0_ &= -65;
                this.altitude_ = 0;
                this.bitField0_ &= -129;
                this.timeSync_ = 0;
                this.bitField0_ &= -257;
                this.rxCss_ = 0;
                this.bitField0_ &= -513;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.k;
            }

            public SEAL_LocationInfo getDefaultInstanceForType() {
                return SEAL_LocationInfo.getDefaultInstance();
            }

            public SEAL_LocationInfo build() {
                SEAL_LocationInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_LocationInfo buildPartial() {
                int i = 1;
                SEAL_LocationInfo sEAL_LocationInfo = new SEAL_LocationInfo(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sEAL_LocationInfo.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sEAL_LocationInfo.ctlsync_ = this.ctlsync_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sEAL_LocationInfo.userId_ = this.userId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sEAL_LocationInfo.userName_ = this.userName_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sEAL_LocationInfo.userFreq_ = this.userFreq_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sEAL_LocationInfo.longitude_ = this.longitude_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sEAL_LocationInfo.latitude_ = this.latitude_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                sEAL_LocationInfo.altitude_ = this.altitude_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                sEAL_LocationInfo.timeSync_ = this.timeSync_;
                if ((i2 & 512) == 512) {
                    i |= 512;
                }
                sEAL_LocationInfo.rxCss_ = this.rxCss_;
                sEAL_LocationInfo.bitField0_ = i;
                onBuilt();
                return sEAL_LocationInfo;
            }

            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCtlsync() {
                return (this.bitField0_ & 2) == 2;
            }

            public SEAL_SWITCH getCtlsync() {
                return this.ctlsync_;
            }

            public Builder setCtlsync(SEAL_SWITCH seal_switch) {
                if (seal_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.ctlsync_ = seal_switch;
                onChanged();
                return this;
            }

            public Builder clearCtlsync() {
                this.bitField0_ &= -3;
                this.ctlsync_ = SEAL_SWITCH.SEAL_OFF;
                onChanged();
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
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -5;
                this.userId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasUserName() {
                return (this.bitField0_ & 8) == 8;
            }

            public ByteString getUserName() {
                return this.userName_;
            }

            public Builder setUserName(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.userName_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearUserName() {
                this.bitField0_ &= -9;
                this.userName_ = SEAL_LocationInfo.getDefaultInstance().getUserName();
                onChanged();
                return this;
            }

            public boolean hasUserFreq() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getUserFreq() {
                return this.userFreq_;
            }

            public Builder setUserFreq(int i) {
                this.bitField0_ |= 16;
                this.userFreq_ = i;
                onChanged();
                return this;
            }

            public Builder clearUserFreq() {
                this.bitField0_ &= -17;
                this.userFreq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasLongitude() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getLongitude() {
                return this.longitude_;
            }

            public Builder setLongitude(int i) {
                this.bitField0_ |= 32;
                this.longitude_ = i;
                onChanged();
                return this;
            }

            public Builder clearLongitude() {
                this.bitField0_ &= -33;
                this.longitude_ = 0;
                onChanged();
                return this;
            }

            public boolean hasLatitude() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getLatitude() {
                return this.latitude_;
            }

            public Builder setLatitude(int i) {
                this.bitField0_ |= 64;
                this.latitude_ = i;
                onChanged();
                return this;
            }

            public Builder clearLatitude() {
                this.bitField0_ &= -65;
                this.latitude_ = 0;
                onChanged();
                return this;
            }

            public boolean hasAltitude() {
                return (this.bitField0_ & 128) == 128;
            }

            public int getAltitude() {
                return this.altitude_;
            }

            public Builder setAltitude(int i) {
                this.bitField0_ |= 128;
                this.altitude_ = i;
                onChanged();
                return this;
            }

            public Builder clearAltitude() {
                this.bitField0_ &= -129;
                this.altitude_ = 0;
                onChanged();
                return this;
            }

            public boolean hasTimeSync() {
                return (this.bitField0_ & 256) == 256;
            }

            public int getTimeSync() {
                return this.timeSync_;
            }

            public Builder setTimeSync(int i) {
                this.bitField0_ |= 256;
                this.timeSync_ = i;
                onChanged();
                return this;
            }

            public Builder clearTimeSync() {
                this.bitField0_ &= -257;
                this.timeSync_ = 0;
                onChanged();
                return this;
            }

            public boolean hasRxCss() {
                return (this.bitField0_ & 512) == 512;
            }

            public int getRxCss() {
                return this.rxCss_;
            }

            public Builder setRxCss(int i) {
                this.bitField0_ |= 512;
                this.rxCss_ = i;
                onChanged();
                return this;
            }

            public Builder clearRxCss() {
                this.bitField0_ &= -513;
                this.rxCss_ = 0;
                onChanged();
                return this;
            }
        }

        private SEAL_LocationInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_LocationInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_LocationInfo getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_LocationInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.k;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.l.ensureFieldAccessorsInitialized(SEAL_LocationInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_LocationInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasCtlsync() {
            return (this.bitField0_ & 2) == 2;
        }

        public SEAL_SWITCH getCtlsync() {
            return this.ctlsync_;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasUserName() {
            return (this.bitField0_ & 8) == 8;
        }

        public ByteString getUserName() {
            return this.userName_;
        }

        public boolean hasUserFreq() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getUserFreq() {
            return this.userFreq_;
        }

        public boolean hasLongitude() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getLongitude() {
            return this.longitude_;
        }

        public boolean hasLatitude() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getLatitude() {
            return this.latitude_;
        }

        public boolean hasAltitude() {
            return (this.bitField0_ & 128) == 128;
        }

        public int getAltitude() {
            return this.altitude_;
        }

        public boolean hasTimeSync() {
            return (this.bitField0_ & 256) == 256;
        }

        public int getTimeSync() {
            return this.timeSync_;
        }

        public boolean hasRxCss() {
            return (this.bitField0_ & 512) == 512;
        }

        public int getRxCss() {
            return this.rxCss_;
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

        public static SEAL_LocationInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_LocationInfo) PARSER.parseFrom(byteString);
        }

        public static SEAL_LocationInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_LocationInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_LocationInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_LocationInfo) PARSER.parseFrom(bArr);
        }

        public static SEAL_LocationInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_LocationInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_LocationInfo parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_LocationInfo) PARSER.parseFrom(inputStream);
        }

        public static SEAL_LocationInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_LocationInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_LocationInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_LocationInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_LocationInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_LocationInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_LocationInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_LocationInfo) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_LocationInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_LocationInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_LocationInfo sEAL_LocationInfo) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_LocationInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

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

    public enum SEAL_SWITCH implements ProtocolMessageEnum {
        SEAL_OFF(0, 1),
        SEAL_ON(1, 2);
        
        public static final int SEAL_OFF_VALUE = 1;
        public static final int SEAL_ON_VALUE = 2;
        private static final SEAL_SWITCH[] VALUES = null;
        private static EnumLiteMap<SEAL_SWITCH> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<SEAL_SWITCH>() {
                /* renamed from: a */
                public SEAL_SWITCH findValueByNumber(int i) {
                    return SEAL_SWITCH.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static SEAL_SWITCH valueOf(int i) {
            switch (i) {
                case 1:
                    return SEAL_OFF;
                case 2:
                    return SEAL_ON;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<SEAL_SWITCH> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) SealProtos.a().getEnumTypes().get(1);
        }

        public static SEAL_SWITCH valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private SEAL_SWITCH(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    public static final class SEAL_UpGradeFilePack extends GeneratedMessage implements SEAL_UpGradeFilePackOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int OFFSET_FIELD_NUMBER = 1;
        public static Parser<SEAL_UpGradeFilePack> PARSER = new AbstractParser<SEAL_UpGradeFilePack>() {
            /* renamed from: a */
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
        };
        public static final int XOR_FIELD_NUMBER = 3;
        private static final SEAL_UpGradeFilePack defaultInstance = new SEAL_UpGradeFilePack(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString data_;
        /* access modifiers changed from: private */
        public int offset_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int xor_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_UpGradeFilePackOrBuilder {
            private int bitField0_;
            private ByteString data_;
            private int offset_;
            private int xor_;

            public static final Descriptor getDescriptor() {
                return SealProtos.q;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.r.ensureFieldAccessorsInitialized(SEAL_UpGradeFilePack.class, Builder.class);
            }

            private Builder() {
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_UpGradeFilePack.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.offset_ = 0;
                this.bitField0_ &= -2;
                this.data_ = ByteString.EMPTY;
                this.bitField0_ &= -3;
                this.xor_ = 0;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.q;
            }

            public SEAL_UpGradeFilePack getDefaultInstanceForType() {
                return SEAL_UpGradeFilePack.getDefaultInstance();
            }

            public SEAL_UpGradeFilePack build() {
                SEAL_UpGradeFilePack buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_UpGradeFilePack buildPartial() {
                int i = 1;
                SEAL_UpGradeFilePack sEAL_UpGradeFilePack = new SEAL_UpGradeFilePack(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sEAL_UpGradeFilePack.offset_ = this.offset_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sEAL_UpGradeFilePack.data_ = this.data_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sEAL_UpGradeFilePack.xor_ = this.xor_;
                sEAL_UpGradeFilePack.bitField0_ = i;
                onBuilt();
                return sEAL_UpGradeFilePack;
            }

            public boolean hasOffset() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getOffset() {
                return this.offset_;
            }

            public Builder setOffset(int i) {
                this.bitField0_ |= 1;
                this.offset_ = i;
                onChanged();
                return this;
            }

            public Builder clearOffset() {
                this.bitField0_ &= -2;
                this.offset_ = 0;
                onChanged();
                return this;
            }

            public boolean hasData() {
                return (this.bitField0_ & 2) == 2;
            }

            public ByteString getData() {
                return this.data_;
            }

            public Builder setData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.data_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearData() {
                this.bitField0_ &= -3;
                this.data_ = SEAL_UpGradeFilePack.getDefaultInstance().getData();
                onChanged();
                return this;
            }

            public boolean hasXor() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getXor() {
                return this.xor_;
            }

            public Builder setXor(int i) {
                this.bitField0_ |= 4;
                this.xor_ = i;
                onChanged();
                return this;
            }

            public Builder clearXor() {
                this.bitField0_ &= -5;
                this.xor_ = 0;
                onChanged();
                return this;
            }
        }

        private SEAL_UpGradeFilePack(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_UpGradeFilePack(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_UpGradeFilePack getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_UpGradeFilePack getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.q;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.r.ensureFieldAccessorsInitialized(SEAL_UpGradeFilePack.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_UpGradeFilePack> getParserForType() {
            return PARSER;
        }

        public boolean hasOffset() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getOffset() {
            return this.offset_;
        }

        public boolean hasData() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getData() {
            return this.data_;
        }

        public boolean hasXor() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getXor() {
            return this.xor_;
        }

        private void initFields() {
            this.offset_ = 0;
            this.data_ = ByteString.EMPTY;
            this.xor_ = 0;
        }

        public static SEAL_UpGradeFilePack parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_UpGradeFilePack) PARSER.parseFrom(byteString);
        }

        public static SEAL_UpGradeFilePack parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_UpGradeFilePack) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_UpGradeFilePack parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_UpGradeFilePack) PARSER.parseFrom(bArr);
        }

        public static SEAL_UpGradeFilePack parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_UpGradeFilePack) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_UpGradeFilePack parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_UpGradeFilePack) PARSER.parseFrom(inputStream);
        }

        public static SEAL_UpGradeFilePack parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_UpGradeFilePack) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UpGradeFilePack parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_UpGradeFilePack) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_UpGradeFilePack parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_UpGradeFilePack) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UpGradeFilePack parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_UpGradeFilePack) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_UpGradeFilePack parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_UpGradeFilePack) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_UpGradeFilePack sEAL_UpGradeFilePack) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_UpGradeFilePack);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SEAL_UpGradeFilePackOrBuilder extends MessageOrBuilder {
        ByteString getData();

        int getOffset();

        int getXor();

        boolean hasData();

        boolean hasOffset();

        boolean hasXor();
    }

    public static final class SEAL_UpGradeFileRequest extends GeneratedMessage implements SEAL_UpGradeFileRequestOrBuilder {
        public static final int FCMD_FIELD_NUMBER = 2;
        public static final int FCRC32_FIELD_NUMBER = 5;
        public static final int FSIZE_FIELD_NUMBER = 4;
        public static final int FTYPE_FIELD_NUMBER = 3;
        public static Parser<SEAL_UpGradeFileRequest> PARSER = new AbstractParser<SEAL_UpGradeFileRequest>() {
            /* renamed from: a */
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
        };
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SEAL_UpGradeFileRequest defaultInstance = new SEAL_UpGradeFileRequest(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public SEAL_FILECMD fCmd_;
        /* access modifiers changed from: private */
        public int fCrc32_;
        /* access modifiers changed from: private */
        public int fSize_;
        /* access modifiers changed from: private */
        public SEAL_FILETYPE fType_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_UpGradeFileRequestOrBuilder {
            private int bitField0_;
            private SEAL_FILECMD fCmd_;
            private int fCrc32_;
            private int fSize_;
            private SEAL_FILETYPE fType_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return SealProtos.m;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.n.ensureFieldAccessorsInitialized(SEAL_UpGradeFileRequest.class, Builder.class);
            }

            private Builder() {
                this.fCmd_ = SEAL_FILECMD.SEAL_UP_START;
                this.fType_ = SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.fCmd_ = SEAL_FILECMD.SEAL_UP_START;
                this.fType_ = SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_UpGradeFileRequest.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.version_ = 0;
                this.bitField0_ &= -2;
                this.fCmd_ = SEAL_FILECMD.SEAL_UP_START;
                this.bitField0_ &= -3;
                this.fType_ = SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE;
                this.bitField0_ &= -5;
                this.fSize_ = 0;
                this.bitField0_ &= -9;
                this.fCrc32_ = 0;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.m;
            }

            public SEAL_UpGradeFileRequest getDefaultInstanceForType() {
                return SEAL_UpGradeFileRequest.getDefaultInstance();
            }

            public SEAL_UpGradeFileRequest build() {
                SEAL_UpGradeFileRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_UpGradeFileRequest buildPartial() {
                int i = 1;
                SEAL_UpGradeFileRequest sEAL_UpGradeFileRequest = new SEAL_UpGradeFileRequest(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sEAL_UpGradeFileRequest.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sEAL_UpGradeFileRequest.fCmd_ = this.fCmd_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sEAL_UpGradeFileRequest.fType_ = this.fType_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sEAL_UpGradeFileRequest.fSize_ = this.fSize_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sEAL_UpGradeFileRequest.fCrc32_ = this.fCrc32_;
                sEAL_UpGradeFileRequest.bitField0_ = i;
                onBuilt();
                return sEAL_UpGradeFileRequest;
            }

            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getVersion() {
                return this.version_;
            }

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFCmd() {
                return (this.bitField0_ & 2) == 2;
            }

            public SEAL_FILECMD getFCmd() {
                return this.fCmd_;
            }

            public Builder setFCmd(SEAL_FILECMD seal_filecmd) {
                if (seal_filecmd == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.fCmd_ = seal_filecmd;
                onChanged();
                return this;
            }

            public Builder clearFCmd() {
                this.bitField0_ &= -3;
                this.fCmd_ = SEAL_FILECMD.SEAL_UP_START;
                onChanged();
                return this;
            }

            public boolean hasFType() {
                return (this.bitField0_ & 4) == 4;
            }

            public SEAL_FILETYPE getFType() {
                return this.fType_;
            }

            public Builder setFType(SEAL_FILETYPE seal_filetype) {
                if (seal_filetype == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fType_ = seal_filetype;
                onChanged();
                return this;
            }

            public Builder clearFType() {
                this.bitField0_ &= -5;
                this.fType_ = SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE;
                onChanged();
                return this;
            }

            public boolean hasFSize() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getFSize() {
                return this.fSize_;
            }

            public Builder setFSize(int i) {
                this.bitField0_ |= 8;
                this.fSize_ = i;
                onChanged();
                return this;
            }

            public Builder clearFSize() {
                this.bitField0_ &= -9;
                this.fSize_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFCrc32() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getFCrc32() {
                return this.fCrc32_;
            }

            public Builder setFCrc32(int i) {
                this.bitField0_ |= 16;
                this.fCrc32_ = i;
                onChanged();
                return this;
            }

            public Builder clearFCrc32() {
                this.bitField0_ &= -17;
                this.fCrc32_ = 0;
                onChanged();
                return this;
            }
        }

        public enum SEAL_FILECMD implements ProtocolMessageEnum {
            SEAL_UP_START(0, 1),
            SEAL_UP_COMPLE(1, 2),
            SEAL_UP_REBOOT(2, 3);
            
            public static final int SEAL_UP_COMPLE_VALUE = 2;
            public static final int SEAL_UP_REBOOT_VALUE = 3;
            public static final int SEAL_UP_START_VALUE = 1;
            private static final SEAL_FILECMD[] VALUES = null;
            private static EnumLiteMap<SEAL_FILECMD> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_FILECMD>() {
                    /* renamed from: a */
                    public SEAL_FILECMD findValueByNumber(int i) {
                        return SEAL_FILECMD.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_FILECMD valueOf(int i) {
                switch (i) {
                    case 1:
                        return SEAL_UP_START;
                    case 2:
                        return SEAL_UP_COMPLE;
                    case 3:
                        return SEAL_UP_REBOOT;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_FILECMD> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_UpGradeFileRequest.getDescriptor().getEnumTypes().get(0);
            }

            public static SEAL_FILECMD valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_FILECMD(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        public enum SEAL_FILETYPE implements ProtocolMessageEnum {
            SEAL_APP_UPGRADE_FILE(0, 1),
            SEAL_MCU_UPLOAD_FILE(1, 2);
            
            public static final int SEAL_APP_UPGRADE_FILE_VALUE = 1;
            public static final int SEAL_MCU_UPLOAD_FILE_VALUE = 2;
            private static final SEAL_FILETYPE[] VALUES = null;
            private static EnumLiteMap<SEAL_FILETYPE> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_FILETYPE>() {
                    /* renamed from: a */
                    public SEAL_FILETYPE findValueByNumber(int i) {
                        return SEAL_FILETYPE.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_FILETYPE valueOf(int i) {
                switch (i) {
                    case 1:
                        return SEAL_APP_UPGRADE_FILE;
                    case 2:
                        return SEAL_MCU_UPLOAD_FILE;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_FILETYPE> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_UpGradeFileRequest.getDescriptor().getEnumTypes().get(1);
            }

            public static SEAL_FILETYPE valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_FILETYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SEAL_UpGradeFileRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_UpGradeFileRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_UpGradeFileRequest getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_UpGradeFileRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.m;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.n.ensureFieldAccessorsInitialized(SEAL_UpGradeFileRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_UpGradeFileRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasFCmd() {
            return (this.bitField0_ & 2) == 2;
        }

        public SEAL_FILECMD getFCmd() {
            return this.fCmd_;
        }

        public boolean hasFType() {
            return (this.bitField0_ & 4) == 4;
        }

        public SEAL_FILETYPE getFType() {
            return this.fType_;
        }

        public boolean hasFSize() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getFSize() {
            return this.fSize_;
        }

        public boolean hasFCrc32() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getFCrc32() {
            return this.fCrc32_;
        }

        private void initFields() {
            this.version_ = 0;
            this.fCmd_ = SEAL_FILECMD.SEAL_UP_START;
            this.fType_ = SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE;
            this.fSize_ = 0;
            this.fCrc32_ = 0;
        }

        public static SEAL_UpGradeFileRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_UpGradeFileRequest) PARSER.parseFrom(byteString);
        }

        public static SEAL_UpGradeFileRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_UpGradeFileRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_UpGradeFileRequest) PARSER.parseFrom(bArr);
        }

        public static SEAL_UpGradeFileRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_UpGradeFileRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileRequest parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_UpGradeFileRequest) PARSER.parseFrom(inputStream);
        }

        public static SEAL_UpGradeFileRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_UpGradeFileRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_UpGradeFileRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_UpGradeFileRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_UpGradeFileRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_UpGradeFileRequest) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_UpGradeFileRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_UpGradeFileRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_UpGradeFileRequest sEAL_UpGradeFileRequest) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_UpGradeFileRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SEAL_UpGradeFileRequestOrBuilder extends MessageOrBuilder {
        SEAL_FILECMD getFCmd();

        int getFCrc32();

        int getFSize();

        SEAL_FILETYPE getFType();

        int getVersion();

        boolean hasFCmd();

        boolean hasFCrc32();

        boolean hasFSize();

        boolean hasFType();

        boolean hasVersion();
    }

    public static final class SEAL_UpGradeFileResponse extends GeneratedMessage implements SEAL_UpGradeFileResponseOrBuilder {
        public static final int OFFSET_FIELD_NUMBER = 2;
        public static Parser<SEAL_UpGradeFileResponse> PARSER = new AbstractParser<SEAL_UpGradeFileResponse>() {
            /* renamed from: a */
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
        };
        public static final int RESULT_FIELD_NUMBER = 1;
        private static final SEAL_UpGradeFileResponse defaultInstance = new SEAL_UpGradeFileResponse(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int offset_;
        /* access modifiers changed from: private */
        public SEAL_UP_UERR result_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_UpGradeFileResponseOrBuilder {
            private int bitField0_;
            private int offset_;
            private SEAL_UP_UERR result_;

            public static final Descriptor getDescriptor() {
                return SealProtos.o;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.p.ensureFieldAccessorsInitialized(SEAL_UpGradeFileResponse.class, Builder.class);
            }

            private Builder() {
                this.result_ = SEAL_UP_UERR.SEAL_UP_RESULT_OK;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SEAL_UP_UERR.SEAL_UP_RESULT_OK;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_UpGradeFileResponse.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.result_ = SEAL_UP_UERR.SEAL_UP_RESULT_OK;
                this.bitField0_ &= -2;
                this.offset_ = 0;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.o;
            }

            public SEAL_UpGradeFileResponse getDefaultInstanceForType() {
                return SEAL_UpGradeFileResponse.getDefaultInstance();
            }

            public SEAL_UpGradeFileResponse build() {
                SEAL_UpGradeFileResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_UpGradeFileResponse buildPartial() {
                int i = 1;
                SEAL_UpGradeFileResponse sEAL_UpGradeFileResponse = new SEAL_UpGradeFileResponse(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sEAL_UpGradeFileResponse.result_ = this.result_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sEAL_UpGradeFileResponse.offset_ = this.offset_;
                sEAL_UpGradeFileResponse.bitField0_ = i;
                onBuilt();
                return sEAL_UpGradeFileResponse;
            }

            public boolean hasResult() {
                return (this.bitField0_ & 1) == 1;
            }

            public SEAL_UP_UERR getResult() {
                return this.result_;
            }

            public Builder setResult(SEAL_UP_UERR seal_up_uerr) {
                if (seal_up_uerr == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.result_ = seal_up_uerr;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -2;
                this.result_ = SEAL_UP_UERR.SEAL_UP_RESULT_OK;
                onChanged();
                return this;
            }

            public boolean hasOffset() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getOffset() {
                return this.offset_;
            }

            public Builder setOffset(int i) {
                this.bitField0_ |= 2;
                this.offset_ = i;
                onChanged();
                return this;
            }

            public Builder clearOffset() {
                this.bitField0_ &= -3;
                this.offset_ = 0;
                onChanged();
                return this;
            }
        }

        public enum SEAL_UP_UERR implements ProtocolMessageEnum {
            SEAL_UP_RESULT_OK(0, 1),
            SEAL_UP_RESULT_ERROR(1, 2),
            SEAL_UP_RESULT_LOW_POWER(2, 3);
            
            public static final int SEAL_UP_RESULT_ERROR_VALUE = 2;
            public static final int SEAL_UP_RESULT_LOW_POWER_VALUE = 3;
            public static final int SEAL_UP_RESULT_OK_VALUE = 1;
            private static final SEAL_UP_UERR[] VALUES = null;
            private static EnumLiteMap<SEAL_UP_UERR> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SEAL_UP_UERR>() {
                    /* renamed from: a */
                    public SEAL_UP_UERR findValueByNumber(int i) {
                        return SEAL_UP_UERR.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SEAL_UP_UERR valueOf(int i) {
                switch (i) {
                    case 1:
                        return SEAL_UP_RESULT_OK;
                    case 2:
                        return SEAL_UP_RESULT_ERROR;
                    case 3:
                        return SEAL_UP_RESULT_LOW_POWER;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SEAL_UP_UERR> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SEAL_UpGradeFileResponse.getDescriptor().getEnumTypes().get(0);
            }

            public static SEAL_UP_UERR valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SEAL_UP_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SEAL_UpGradeFileResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_UpGradeFileResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_UpGradeFileResponse getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_UpGradeFileResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.o;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.p.ensureFieldAccessorsInitialized(SEAL_UpGradeFileResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_UpGradeFileResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasResult() {
            return (this.bitField0_ & 1) == 1;
        }

        public SEAL_UP_UERR getResult() {
            return this.result_;
        }

        public boolean hasOffset() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getOffset() {
            return this.offset_;
        }

        private void initFields() {
            this.result_ = SEAL_UP_UERR.SEAL_UP_RESULT_OK;
            this.offset_ = 0;
        }

        public static SEAL_UpGradeFileResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_UpGradeFileResponse) PARSER.parseFrom(byteString);
        }

        public static SEAL_UpGradeFileResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_UpGradeFileResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_UpGradeFileResponse) PARSER.parseFrom(bArr);
        }

        public static SEAL_UpGradeFileResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_UpGradeFileResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileResponse parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_UpGradeFileResponse) PARSER.parseFrom(inputStream);
        }

        public static SEAL_UpGradeFileResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_UpGradeFileResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_UpGradeFileResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_UpGradeFileResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_UpGradeFileResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UpGradeFileResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_UpGradeFileResponse) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_UpGradeFileResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_UpGradeFileResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_UpGradeFileResponse sEAL_UpGradeFileResponse) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_UpGradeFileResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SEAL_UpGradeFileResponseOrBuilder extends MessageOrBuilder {
        int getOffset();

        SEAL_UP_UERR getResult();

        boolean hasOffset();

        boolean hasResult();
    }

    public static final class SEAL_UserActionStatistics extends GeneratedMessage implements SEAL_UserActionStatisticsOrBuilder {
        public static final int CONNBTEAR_FIELD_NUMBER = 7;
        public static final int DEVICEIDQUERY_FIELD_NUMBER = 3;
        public static final int FACTORYRESET_FIELD_NUMBER = 2;
        public static final int FMOPEN_FIELD_NUMBER = 6;
        public static final int KEYLOCK_FIELD_NUMBER = 4;
        public static Parser<SEAL_UserActionStatistics> PARSER = new AbstractParser<SEAL_UserActionStatistics>() {
            /* renamed from: a */
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
        };
        public static final int POWERLEVELQUERY_FIELD_NUMBER = 5;
        public static final int POWERON_FIELD_NUMBER = 1;
        private static final SEAL_UserActionStatistics defaultInstance = new SEAL_UserActionStatistics(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int connBtEar_;
        /* access modifiers changed from: private */
        public int deviceIdQuery_;
        /* access modifiers changed from: private */
        public int factoryReset_;
        /* access modifiers changed from: private */
        public int fmOpen_;
        /* access modifiers changed from: private */
        public int keyLock_;
        /* access modifiers changed from: private */
        public int powerLevelQuery_;
        /* access modifiers changed from: private */
        public int powerOn_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SEAL_UserActionStatisticsOrBuilder {
            private int bitField0_;
            private int connBtEar_;
            private int deviceIdQuery_;
            private int factoryReset_;
            private int fmOpen_;
            private int keyLock_;
            private int powerLevelQuery_;
            private int powerOn_;

            public static final Descriptor getDescriptor() {
                return SealProtos.A;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SealProtos.B.ensureFieldAccessorsInitialized(SEAL_UserActionStatistics.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SEAL_UserActionStatistics.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.powerOn_ = 0;
                this.bitField0_ &= -2;
                this.factoryReset_ = 0;
                this.bitField0_ &= -3;
                this.deviceIdQuery_ = 0;
                this.bitField0_ &= -5;
                this.keyLock_ = 0;
                this.bitField0_ &= -9;
                this.powerLevelQuery_ = 0;
                this.bitField0_ &= -17;
                this.fmOpen_ = 0;
                this.bitField0_ &= -33;
                this.connBtEar_ = 0;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SealProtos.A;
            }

            public SEAL_UserActionStatistics getDefaultInstanceForType() {
                return SEAL_UserActionStatistics.getDefaultInstance();
            }

            public SEAL_UserActionStatistics build() {
                SEAL_UserActionStatistics buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SEAL_UserActionStatistics buildPartial() {
                int i = 1;
                SEAL_UserActionStatistics sEAL_UserActionStatistics = new SEAL_UserActionStatistics(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sEAL_UserActionStatistics.powerOn_ = this.powerOn_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sEAL_UserActionStatistics.factoryReset_ = this.factoryReset_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sEAL_UserActionStatistics.deviceIdQuery_ = this.deviceIdQuery_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sEAL_UserActionStatistics.keyLock_ = this.keyLock_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sEAL_UserActionStatistics.powerLevelQuery_ = this.powerLevelQuery_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sEAL_UserActionStatistics.fmOpen_ = this.fmOpen_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sEAL_UserActionStatistics.connBtEar_ = this.connBtEar_;
                sEAL_UserActionStatistics.bitField0_ = i;
                onBuilt();
                return sEAL_UserActionStatistics;
            }

            public boolean hasPowerOn() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getPowerOn() {
                return this.powerOn_;
            }

            public Builder setPowerOn(int i) {
                this.bitField0_ |= 1;
                this.powerOn_ = i;
                onChanged();
                return this;
            }

            public Builder clearPowerOn() {
                this.bitField0_ &= -2;
                this.powerOn_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFactoryReset() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getFactoryReset() {
                return this.factoryReset_;
            }

            public Builder setFactoryReset(int i) {
                this.bitField0_ |= 2;
                this.factoryReset_ = i;
                onChanged();
                return this;
            }

            public Builder clearFactoryReset() {
                this.bitField0_ &= -3;
                this.factoryReset_ = 0;
                onChanged();
                return this;
            }

            public boolean hasDeviceIdQuery() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getDeviceIdQuery() {
                return this.deviceIdQuery_;
            }

            public Builder setDeviceIdQuery(int i) {
                this.bitField0_ |= 4;
                this.deviceIdQuery_ = i;
                onChanged();
                return this;
            }

            public Builder clearDeviceIdQuery() {
                this.bitField0_ &= -5;
                this.deviceIdQuery_ = 0;
                onChanged();
                return this;
            }

            public boolean hasKeyLock() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getKeyLock() {
                return this.keyLock_;
            }

            public Builder setKeyLock(int i) {
                this.bitField0_ |= 8;
                this.keyLock_ = i;
                onChanged();
                return this;
            }

            public Builder clearKeyLock() {
                this.bitField0_ &= -9;
                this.keyLock_ = 0;
                onChanged();
                return this;
            }

            public boolean hasPowerLevelQuery() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getPowerLevelQuery() {
                return this.powerLevelQuery_;
            }

            public Builder setPowerLevelQuery(int i) {
                this.bitField0_ |= 16;
                this.powerLevelQuery_ = i;
                onChanged();
                return this;
            }

            public Builder clearPowerLevelQuery() {
                this.bitField0_ &= -17;
                this.powerLevelQuery_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFmOpen() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getFmOpen() {
                return this.fmOpen_;
            }

            public Builder setFmOpen(int i) {
                this.bitField0_ |= 32;
                this.fmOpen_ = i;
                onChanged();
                return this;
            }

            public Builder clearFmOpen() {
                this.bitField0_ &= -33;
                this.fmOpen_ = 0;
                onChanged();
                return this;
            }

            public boolean hasConnBtEar() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getConnBtEar() {
                return this.connBtEar_;
            }

            public Builder setConnBtEar(int i) {
                this.bitField0_ |= 64;
                this.connBtEar_ = i;
                onChanged();
                return this;
            }

            public Builder clearConnBtEar() {
                this.bitField0_ &= -65;
                this.connBtEar_ = 0;
                onChanged();
                return this;
            }
        }

        private SEAL_UserActionStatistics(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SEAL_UserActionStatistics(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SEAL_UserActionStatistics getDefaultInstance() {
            return defaultInstance;
        }

        public SEAL_UserActionStatistics getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SealProtos.A;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SealProtos.B.ensureFieldAccessorsInitialized(SEAL_UserActionStatistics.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SEAL_UserActionStatistics> getParserForType() {
            return PARSER;
        }

        public boolean hasPowerOn() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getPowerOn() {
            return this.powerOn_;
        }

        public boolean hasFactoryReset() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getFactoryReset() {
            return this.factoryReset_;
        }

        public boolean hasDeviceIdQuery() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getDeviceIdQuery() {
            return this.deviceIdQuery_;
        }

        public boolean hasKeyLock() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getKeyLock() {
            return this.keyLock_;
        }

        public boolean hasPowerLevelQuery() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getPowerLevelQuery() {
            return this.powerLevelQuery_;
        }

        public boolean hasFmOpen() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getFmOpen() {
            return this.fmOpen_;
        }

        public boolean hasConnBtEar() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getConnBtEar() {
            return this.connBtEar_;
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

        public static SEAL_UserActionStatistics parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SEAL_UserActionStatistics) PARSER.parseFrom(byteString);
        }

        public static SEAL_UserActionStatistics parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_UserActionStatistics) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SEAL_UserActionStatistics parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SEAL_UserActionStatistics) PARSER.parseFrom(bArr);
        }

        public static SEAL_UserActionStatistics parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SEAL_UserActionStatistics) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SEAL_UserActionStatistics parseFrom(InputStream inputStream) throws IOException {
            return (SEAL_UserActionStatistics) PARSER.parseFrom(inputStream);
        }

        public static SEAL_UserActionStatistics parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_UserActionStatistics) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UserActionStatistics parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SEAL_UserActionStatistics) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SEAL_UserActionStatistics parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_UserActionStatistics) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SEAL_UserActionStatistics parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SEAL_UserActionStatistics) PARSER.parseFrom(codedInputStream);
        }

        public static SEAL_UserActionStatistics parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SEAL_UserActionStatistics) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SEAL_UserActionStatistics sEAL_UserActionStatistics) {
            return (Builder) newBuilder().mergeFrom((Message) sEAL_UserActionStatistics);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

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

    public static FileDescriptor a() {
        return C;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\nseal.proto\u0012\u0006protos\"Ú\u0002\n\fSEAL_Connect\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012'\n\bconnCode\u0018\u0002 \u0002(\u000e2\u0015.protos.SEAL_CONNCODE\u0012\u0010\n\bdeviceId\u0018\u0003 \u0001(\r\u0012\u0012\n\ndeviceType\u0018\u0004 \u0001(\r\u00122\n\u0007appMode\u0018\u0005 \u0001(\u000e2!.protos.SEAL_Connect.SEAL_APPTYPE\u00128\n\blanguage\u0018\u0006 \u0001(\u000e2&.protos.SEAL_Connect.SEAL_LANGUAGETYPE\u0012\r\n\u0005color\u0018\u0007 \u0001(\r\"4\n\fSEAL_APPTYPE\u0012\u0010\n\fSEAL_OWN_APP\u0010\u0000\u0012\u0012\n\u000eSEAL_MIJIA_APP\u0010\u0001\"7\n\u0011SEAL_LANGUAGETYPE\u0012\u0010\n\fSEAL_CHINESE\u0010\u0000\u0012\u0010\n\fSEAL_ENGLISH\u0010\u0001\"\u0003\n\u0010SEAL_ChannelInfo\u0012\r\n\u0005ch_no\u0018", "\u0001 \u0001(\r\u00125\n\u0007ch_type\u0018\u0002 \u0001(\u000e2$.protos.SEAL_ChannelInfo.SEAL_CHTYPE\u0012\u0012\n\nch_txPower\u0018\u0003 \u0001(\r\u0012\u0011\n\tch_rxFreq\u0018\u0004 \u0001(\r\u0012\u0011\n\tch_txFreq\u0018\u0005 \u0001(\r\u0012\u000f\n\u0007ch_name\u0018\u0006 \u0001(\f\u0012\r\n\u0005ch_sq\u0018\u0007 \u0001(\r\u0012\u000e\n\u0006ch_vox\u0018\b \u0001(\r\u0012\u0010\n\bch_rxCss\u0018\t \u0001(\r\u0012\u0010\n\bch_txCss\u0018\n \u0001(\r\u0012$\n\u0007ch_elim\u0018\u000b \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\u000f\n\u0007ch_band\u0018\f \u0001(\r\u0012&\n\tch_polite\u0018\r \u0001(\u000e2\u0013.protos.SEAL_SWITCH\"A\n\u000bSEAL_CHTYPE\u0012\u000f\n\u000bSEAL_PUBLIC\u0010\u0000\u0012\u000f\n\u000bSEAL_REMOTE\u0010\u0001\u0012\u0010\n\fSEAL_USERDEF\u0010\u0002\"Î\u0005\n\u0010SEAL_DeviceParam\u0012\u000f\n\u0007version\u0018\u0001 \u0002", "(\r\u00126\n\u0006result\u0018\u0002 \u0001(\u000e2&.protos.SEAL_DeviceParam.SEAL_DEV_UERR\u0012(\n\u000bfullInquiry\u0018\u0003 \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\r\n\u0005verHw\u0018\u0004 \u0001(\r\u0012\u000f\n\u0007verSoft\u0018\u0005 \u0001(\r\u0012\u0012\n\ndeviceName\u0018\u0006 \u0001(\f\u0012\u000f\n\u0007bleName\u0018\u0007 \u0001(\f\u0012\u000e\n\u0006charge\u0018\b \u0001(\r\u0012\u0010\n\bactivate\u0018\t \u0001(\r\u0012%\n\bshareLoc\u0018\n \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\u000f\n\u0007btAudio\u0018\u000b \u0001(\r\u0012$\n\u0002ch\u0018\f \u0001(\u000b2\u0018.protos.SEAL_ChannelInfo\u0012'\n\nvoiceAlert\u0018\r \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012(\n\u000bisAllPublic\u0018\u000e \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\u0012\n\npwsaveMode\u0018\u000f \u0001(\r", "\u0012:\n\tvoiceType\u0018\u0010 \u0001(\u000e2'.protos.SEAL_DeviceParam.SEAL_VOICETYPE\"{\n\rSEAL_DEV_UERR\u0012\u0017\n\u0013SEAL_PARAM_QUERY_OK\u0010\u0001\u0012\u001a\n\u0016SEAL_PARAM_QUERY_ERROR\u0010\u0002\u0012\u0018\n\u0014SEAL_PARAM_UPDATE_OK\u0010\u0003\u0012\u001b\n\u0017SEAL_PARAM_UPDATE_ERROR\u0010\u0004\"b\n\u000eSEAL_VOICETYPE\u0012\u0018\n\u0014SEAL_VOICETYPE_CLOSE\u0010\u0001\u0012\u001a\n\u0016SEAL_VOICETYPE_CHINESE\u0010\u0002\u0012\u001a\n\u0016SEAL_VOICETYPE_ENGLISH\u0010\u0003\"Ã\u0004\n\u0018SEAL_ChannelStateOperate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012=\n\u0006result\u0018\u0002 \u0001(\u000e2-.protos.SEAL_ChannelStateOperate.SEAL_ST_UERR\u0012>\n\u0006op", "tion\u0018\u0003 \u0001(\u000e2..protos.SEAL_ChannelStateOperate.SEAL_STOPTION\u0012>\n\ndeviceMode\u0018\u0004 \u0001(\u000e2*.protos.SEAL_ChannelStateOperate.SEAL_MODE\u0012\u0011\n\tstateMode\u0018\u0005 \u0001(\r\u0012%\n\u0003ch1\u0018\u0006 \u0001(\u000b2\u0018.protos.SEAL_ChannelInfo\"Y\n\fSEAL_ST_UERR\u0012\u000e\n\nSEAL_ST_OK\u0010\u0000\u0012\u0011\n\rSEAL_ST_ERROR\u0010\u0001\u0012\u0011\n\rSEAL_ST_EMPTY\u0010\u0002\u0012\u0013\n\u000fSEAL_ST_FORBIDE\u0010\u0003\"6\n\rSEAL_STOPTION\u0012\u0012\n\u000eSEAL_ST_UPDATE\u0010\u0000\u0012\u0011\n\rSEAL_ST_QUERY\u0010\u0001\"\u0001\n\tSEAL_MODE\u0012\u0014\n\u0010SEAL_MODE_NORMAL\u0010\u0000\u0012\u000e\n\nSEAL_SOS_T\u0010\u0001\u0012\u000e\n\nSEAL_SOS_R\u0010\u0002\u0012\u0010\n\fS", "EAL_SCAN_CH\u0010\u0003\u0012\u0012\n\u000eSEAL_SCAN_FREQ\u0010\u0004\u0012\u000f\n\u000bSEAL_TEAM_M\u0010\u0005\u0012\u000f\n\u000bSEAL_TEAM_S\u0010\u0006\"¿\u0003\n\u0017SEAL_ChannelInfoOperate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012<\n\u0006result\u0018\u0002 \u0001(\u000e2,.protos.SEAL_ChannelInfoOperate.SEAL_CH_UERR\u0012=\n\u0006option\u0018\u0003 \u0001(\u000e2-.protos.SEAL_ChannelInfoOperate.SEAL_CHOPTION\u0012$\n\u0002ch\u0018\u0004 \u0001(\u000b2\u0018.protos.SEAL_ChannelInfo\"\u0001\n\fSEAL_CH_UERR\u0012\u000e\n\nSEAL_CH_OK\u0010\u0000\u0012\u0011\n\rSEAL_CH_ERROR\u0010\u0001\u0012\u0011\n\rSEAL_CH_EMPTY\u0010\u0002\u0012\u0013\n\u000fSEAL_CH_FORBIDE\u0010\u0003\u0012\u001a\n\u0016SEAL_CH_QUERY_CONTINUE\u0010\u0004\u0012\u0018\n\u0014S", "EAL_CH_QUERY_FINISH\u0010\u0005\"^\n\rSEAL_CHOPTION\u0012\u0012\n\u000eSEAL_CH_INSERT\u0010\u0000\u0012\u0012\n\u000eSEAL_CH_DELETE\u0010\u0001\u0012\u0012\n\u000eSEAL_CH_MODIFY\u0010\u0002\u0012\u0011\n\rSEAL_CH_QUERY\u0010\u0003\"Ö\u0001\n\u0011SEAL_LocationInfo\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012$\n\u0007ctlsync\u0018\u0002 \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\r\u0012\u0010\n\buserName\u0018\u0004 \u0001(\f\u0012\u0010\n\buserFreq\u0018\u0005 \u0001(\r\u0012\u0011\n\tlongitude\u0018\u0006 \u0001(\u0011\u0012\u0010\n\blatitude\u0018\u0007 \u0001(\u0011\u0012\u0010\n\baltitude\u0018\b \u0001(\u0011\u0012\u0010\n\btimeSync\u0018\t \u0001(\r\u0012\r\n\u0005rxCss\u0018\n \u0001(\r\"Ô\u0002\n\u0017SEAL_UpGradeFileRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012:\n\u0004fCmd\u0018\u0002 \u0002(\u000e2,.prot", "os.SEAL_UpGradeFileRequest.SEAL_FILECMD\u0012<\n\u0005fType\u0018\u0003 \u0002(\u000e2-.protos.SEAL_UpGradeFileRequest.SEAL_FILETYPE\u0012\r\n\u0005fSize\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006fCrc32\u0018\u0005 \u0001(\r\"I\n\fSEAL_FILECMD\u0012\u0011\n\rSEAL_UP_START\u0010\u0001\u0012\u0012\n\u000eSEAL_UP_COMPLE\u0010\u0002\u0012\u0012\n\u000eSEAL_UP_REBOOT\u0010\u0003\"D\n\rSEAL_FILETYPE\u0012\u0019\n\u0015SEAL_APP_UPGRADE_FILE\u0010\u0001\u0012\u0018\n\u0014SEAL_MCU_UPLOAD_FILE\u0010\u0002\"È\u0001\n\u0018SEAL_UpGradeFileResponse\u0012=\n\u0006result\u0018\u0001 \u0002(\u000e2-.protos.SEAL_UpGradeFileResponse.SEAL_UP_UERR\u0012\u000e\n\u0006offset\u0018\u0002 \u0001(\r\"]\n\fSEAL_UP_UER", "R\u0012\u0015\n\u0011SEAL_UP_RESULT_OK\u0010\u0001\u0012\u0018\n\u0014SEAL_UP_RESULT_ERROR\u0010\u0002\u0012\u001c\n\u0018SEAL_UP_RESULT_LOW_POWER\u0010\u0003\"A\n\u0014SEAL_UpGradeFilePack\u0012\u000e\n\u0006offset\u0018\u0001 \u0002(\r\u0012\f\n\u0004data\u0018\u0002 \u0002(\f\u0012\u000b\n\u0003xor\u0018\u0003 \u0002(\r\"¬\u0001\n\u000eSEAL_BtEarInfo\u0012\u000b\n\u0003mac\u0018\u0001 \u0002(\f\u0012\f\n\u0004name\u0018\u0002 \u0002(\f\u0012\f\n\u0004rssi\u0018\u0003 \u0002(\u0011\u00123\n\u0004type\u0018\u0004 \u0002(\u000e2%.protos.SEAL_BtEarInfo.SEAL_BTEARTYPE\"<\n\u000eSEAL_BTEARTYPE\u0012\u0015\n\u0011SEAL_BTEAR_NORMAL\u0010\u0000\u0012\u0013\n\u000fSEAL_BTEAR_CONE\u0010\u0001\"¡\u0003\n\u0016SEAL_BtEarConnectState\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012E\n\u0006result\u0018\u0002 \u0001(\u000e25.protos.SEAL_BtE", "arConnectState.SEAL_BTEAR_CONN_RESULT\u0012@\n\u0006option\u0018\u0003 \u0001(\u000e20.protos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION\u0012%\n\u0005btEar\u0018\u0004 \u0001(\u000b2\u0016.protos.SEAL_BtEarInfo\"h\n\u0016SEAL_BTEAR_CONN_RESULT\u0012\u0016\n\u0012SEAL_BTEAR_CONN_OK\u0010\u0000\u0012\u0019\n\u0015SEAL_BTEAR_CONN_ERROR\u0010\u0001\u0012\u001b\n\u0017SEAL_BTEAR_CONN_TIMEOUT\u0010\u0002\"\\\n\u0011SEAL_BTEAR_OPTION\u0012\u0014\n\u0010SEAL_BTEAR_QUERY\u0010\u0000\u0012\u0016\n\u0012SEAL_BTEAR_CONNECT\u0010\u0001\u0012\u0019\n\u0015SEAL_BTEAR_DISCONNECT\u0010\u0002\"ã\u0002\n\u0015SEAL_BtEarScanControl\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012D\n\u0006result\u0018\u0002 \u0001(", "\u000e24.protos.SEAL_BtEarScanControl.SEAL_BTEAR_SCAN_RESULT\u0012@\n\u0006option\u0018\u0003 \u0002(\u000e20.protos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL\"K\n\u0016SEAL_BTEAR_SCAN_RESULT\u0012\u0016\n\u0012SEAL_BTEAR_SCAN_OK\u0010\u0000\u0012\u0019\n\u0015SEAL_BTEAR_SCAN_ERROR\u0010\u0001\"d\n\u0012SEAL_BTEAR_CONTROL\u0012\u0019\n\u0015SEAL_BTEAR_SCAN_START\u0010\u0000\u0012\u0019\n\u0015SEAL_BTEAR_SCAN_PAUSE\u0010\u0001\u0012\u0018\n\u0014SEAL_BTEAR_SCAN_STOP\u0010\u0002\"Á\u0001\n\u0012SEAL_BtEarScanItem\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012A\n\u0006result\u0018\u0002 \u0001(\u000e21.protos.SEAL_BtEarScanItem.SEAL_BTEAR_ITEM", "_RESULT\u0012%\n\u0005btEar\u0018\u0003 \u0001(\u000b2\u0016.protos.SEAL_BtEarInfo\"0\n\u0016SEAL_BTEAR_ITEM_RESULT\u0012\u0016\n\u0012SEAL_BTEAR_ITEM_OK\u0010\u0000\"¦\u0001\n\u0019SEAL_UserActionStatistics\u0012\u000f\n\u0007powerOn\u0018\u0001 \u0001(\r\u0012\u0014\n\ffactoryReset\u0018\u0002 \u0001(\r\u0012\u0015\n\rdeviceIdQuery\u0018\u0003 \u0001(\r\u0012\u000f\n\u0007keyLock\u0018\u0004 \u0001(\r\u0012\u0017\n\u000fpowerLevelQuery\u0018\u0005 \u0001(\r\u0012\u000e\n\u0006fmOpen\u0018\u0006 \u0001(\r\u0012\u0011\n\tconnBtEar\u0018\u0007 \u0001(\r*Û\u0001\n\rSEAL_CONNCODE\u0012\u0013\n\u000fSEAL_DISCONNECT\u0010\u0000\u0012\u0010\n\fSEAL_CONNECT\u0010\u0001\u0012\u000e\n\nSEAL_ALLOW\u0010\u0004\u0012\u000f\n\u000bSEAL_REFUSE\u0010\u0005\u0012\r\n\tSEAL_WAIT\u0010\u0006\u0012\u0011\n\rSEAL_LOWPOWER\u0010\u0007\u0012\u0012\n\u000eSEAL_DI", "S_ALLOW\u0010\b\u0012\u0013\n\u000fSEAL_DIS_REFUSE\u0010\t\u0012\u0011\n\rSEAL_DIS_WAIT\u0010\n\u0012\u0015\n\u0011SEAL_DIS_LOWPOWER\u0010\u000b\u0012\r\n\tSEAL_BUSY\u0010\f*(\n\u000bSEAL_SWITCH\u0012\f\n\bSEAL_OFF\u0010\u0001\u0012\u000b\n\u0007SEAL_ON\u0010\u0002B+\n\u001bcom.ifengyu.intercom.protosB\nSealProtosH\u0002"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                SealProtos.C = fileDescriptor;
                return null;
            }
        });
    }
}
