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
public final class BleProtos {

    /* renamed from: a */
    private static final Descriptors.Descriptor f14491a;

    /* renamed from: b */
    private static GeneratedMessage.FieldAccessorTable f14492b;

    /* renamed from: c */
    private static final Descriptors.Descriptor f14493c;

    /* renamed from: d */
    private static GeneratedMessage.FieldAccessorTable f14494d;

    /* renamed from: e */
    private static final Descriptors.Descriptor f14495e;

    /* renamed from: f */
    private static GeneratedMessage.FieldAccessorTable f14496f;

    /* renamed from: g */
    private static final Descriptors.Descriptor f14497g;

    /* renamed from: h */
    private static GeneratedMessage.FieldAccessorTable f14498h;

    /* renamed from: i */
    private static final Descriptors.Descriptor f14499i;

    /* renamed from: j */
    private static GeneratedMessage.FieldAccessorTable f14500j;

    /* renamed from: k */
    private static final Descriptors.Descriptor f14501k;

    /* renamed from: l */
    private static GeneratedMessage.FieldAccessorTable f14502l;

    /* renamed from: m */
    private static final Descriptors.Descriptor f14503m;

    /* renamed from: n */
    private static GeneratedMessage.FieldAccessorTable f14504n;

    /* renamed from: o */
    private static final Descriptors.Descriptor f14505o;

    /* renamed from: p */
    private static GeneratedMessage.FieldAccessorTable f14506p;

    /* renamed from: q */
    private static final Descriptors.Descriptor f14507q;

    /* renamed from: r */
    private static GeneratedMessage.FieldAccessorTable f14508r;

    /* renamed from: s */
    private static final Descriptors.Descriptor f14509s;

    /* renamed from: t */
    private static GeneratedMessage.FieldAccessorTable f14510t;

    /* renamed from: u */
    private static final Descriptors.Descriptor f14511u;

    /* renamed from: v */
    private static GeneratedMessage.FieldAccessorTable f14512v;

    /* renamed from: w */
    private static final Descriptors.Descriptor f14513w;

    /* renamed from: x */
    private static GeneratedMessage.FieldAccessorTable f14514x;

    /* renamed from: y */
    private static Descriptors.FileDescriptor f14515y;

    /* loaded from: classes2.dex */
    public enum BandType implements ProtocolMessageEnum {
        BAND_NARROW(0, 0),
        BAND_WIDE(1, 1);
        
        public static final int BAND_NARROW_VALUE = 0;
        public static final int BAND_WIDE_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<BandType> internalValueMap = new C4162a();
        private static final BandType[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$BandType$a */
        /* loaded from: classes2.dex */
        class C4162a implements Internal.EnumLiteMap<BandType> {
            C4162a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public BandType findValueByNumber(int i) {
                return BandType.valueOf(i);
            }
        }

        BandType(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(8);
        }

        public static Internal.EnumLiteMap<BandType> internalGetValueMap() {
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

        public static BandType valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    return null;
                }
                return BAND_WIDE;
            }
            return BAND_NARROW;
        }

        public static BandType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class Channel extends GeneratedMessage implements ChannelOrBuilder {
        public static final int CH1_FIELD_NUMBER = 1;
        public static final int CH2_FIELD_NUMBER = 2;
        public static Parser<Channel> PARSER = new C4163a();
        private static final Channel defaultInstance;
        private int bitField0_;
        private Frequency ch1_;
        private Frequency ch2_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ChannelOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> ch1Builder_;
            private Frequency ch1_;
            private SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> ch2Builder_;
            private Frequency ch2_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4187a c4187a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> getCh1FieldBuilder() {
                if (this.ch1Builder_ == null) {
                    this.ch1Builder_ = new SingleFieldBuilder<>(getCh1(), getParentForChildren(), isClean());
                    this.ch1_ = null;
                }
                return this.ch1Builder_;
            }

            private SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> getCh2FieldBuilder() {
                if (this.ch2Builder_ == null) {
                    this.ch2Builder_ = new SingleFieldBuilder<>(getCh2(), getParentForChildren(), isClean());
                    this.ch2_ = null;
                }
                return this.ch2Builder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BleProtos.f14507q;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getCh1FieldBuilder();
                    getCh2FieldBuilder();
                }
            }

            public Builder clearCh1() {
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = Frequency.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clearCh2() {
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    this.ch2_ = Frequency.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ChannelOrBuilder
            public Frequency getCh1() {
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    return this.ch1_;
                }
                return singleFieldBuilder.getMessage();
            }

            public Frequency.Builder getCh1Builder() {
                this.bitField0_ |= 1;
                onChanged();
                return getCh1FieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ChannelOrBuilder
            public FrequencyOrBuilder getCh1OrBuilder() {
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch1_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ChannelOrBuilder
            public Frequency getCh2() {
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    return this.ch2_;
                }
                return singleFieldBuilder.getMessage();
            }

            public Frequency.Builder getCh2Builder() {
                this.bitField0_ |= 2;
                onChanged();
                return getCh2FieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ChannelOrBuilder
            public FrequencyOrBuilder getCh2OrBuilder() {
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch2_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BleProtos.f14507q;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ChannelOrBuilder
            public boolean hasCh1() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ChannelOrBuilder
            public boolean hasCh2() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BleProtos.f14508r.ensureFieldAccessorsInitialized(Channel.class, Builder.class);
            }

            public Builder mergeCh1(Frequency frequency) {
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 1) == 1 && this.ch1_ != Frequency.getDefaultInstance()) {
                        this.ch1_ = ((Frequency.Builder) Frequency.newBuilder(this.ch1_).mergeFrom((Message) frequency)).buildPartial();
                    } else {
                        this.ch1_ = frequency;
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(frequency);
                }
                this.bitField0_ |= 1;
                return this;
            }

            public Builder mergeCh2(Frequency frequency) {
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) == 2 && this.ch2_ != Frequency.getDefaultInstance()) {
                        this.ch2_ = ((Frequency.Builder) Frequency.newBuilder(this.ch2_).mergeFrom((Message) frequency)).buildPartial();
                    } else {
                        this.ch2_ = frequency;
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(frequency);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setCh1(Frequency frequency) {
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    Objects.requireNonNull(frequency);
                    this.ch1_ = frequency;
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(frequency);
                }
                this.bitField0_ |= 1;
                return this;
            }

            public Builder setCh2(Frequency frequency) {
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    Objects.requireNonNull(frequency);
                    this.ch2_ = frequency;
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(frequency);
                }
                this.bitField0_ |= 2;
                return this;
            }

            private Builder() {
                this.ch1_ = Frequency.getDefaultInstance();
                this.ch2_ = Frequency.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Channel build() {
                Channel buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Channel buildPartial() {
                Channel channel = new Channel(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    channel.ch1_ = this.ch1_;
                } else {
                    channel.ch1_ = singleFieldBuilder.build();
                }
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder2 = this.ch2Builder_;
                if (singleFieldBuilder2 == null) {
                    channel.ch2_ = this.ch2_;
                } else {
                    channel.ch2_ = singleFieldBuilder2.build();
                }
                channel.bitField0_ = i2;
                onBuilt();
                return channel;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Channel getDefaultInstanceForType() {
                return Channel.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = Frequency.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder2 = this.ch2Builder_;
                if (singleFieldBuilder2 == null) {
                    this.ch2_ = Frequency.getDefaultInstance();
                } else {
                    singleFieldBuilder2.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.ch1_ = Frequency.getDefaultInstance();
                this.ch2_ = Frequency.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setCh1(Frequency.Builder builder) {
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 1;
                return this;
            }

            public Builder setCh2(Frequency.Builder builder) {
                SingleFieldBuilder<Frequency, Frequency.Builder, FrequencyOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    this.ch2_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                return this;
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$Channel$a */
        /* loaded from: classes2.dex */
        class C4163a extends AbstractParser<Channel> {
            C4163a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public Channel parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = Channel.newBuilder();
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
            Channel channel = new Channel(true);
            defaultInstance = channel;
            channel.initFields();
        }

        /* synthetic */ Channel(GeneratedMessage.Builder builder, C4187a c4187a) {
            this(builder);
        }

        public static Channel getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BleProtos.f14507q;
        }

        private void initFields() {
            this.ch1_ = Frequency.getDefaultInstance();
            this.ch2_ = Frequency.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Channel parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static Channel parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ChannelOrBuilder
        public Frequency getCh1() {
            return this.ch1_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ChannelOrBuilder
        public FrequencyOrBuilder getCh1OrBuilder() {
            return this.ch1_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ChannelOrBuilder
        public Frequency getCh2() {
            return this.ch2_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ChannelOrBuilder
        public FrequencyOrBuilder getCh2OrBuilder() {
            return this.ch2_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Channel> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ChannelOrBuilder
        public boolean hasCh1() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ChannelOrBuilder
        public boolean hasCh2() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BleProtos.f14508r.ensureFieldAccessorsInitialized(Channel.class, Builder.class);
        }

        private Channel(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(Channel channel) {
            return (Builder) newBuilder().mergeFrom((Message) channel);
        }

        public static Channel parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Channel parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Channel parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Channel getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private Channel(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Channel parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Channel parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static Channel parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Channel parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static Channel parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ChannelOrBuilder extends MessageOrBuilder {
        Frequency getCh1();

        FrequencyOrBuilder getCh1OrBuilder();

        Frequency getCh2();

        FrequencyOrBuilder getCh2OrBuilder();

        boolean hasCh1();

        boolean hasCh2();
    }

    /* loaded from: classes2.dex */
    public enum ColorType implements ProtocolMessageEnum {
        WHITE(0, 0),
        BLUE(1, 1),
        BLACK(2, 2),
        SPACEGRAY(3, 3);
        
        public static final int BLACK_VALUE = 2;
        public static final int BLUE_VALUE = 1;
        public static final int SPACEGRAY_VALUE = 3;
        public static final int WHITE_VALUE = 0;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<ColorType> internalValueMap = new C4164a();
        private static final ColorType[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$ColorType$a */
        /* loaded from: classes2.dex */
        class C4164a implements Internal.EnumLiteMap<ColorType> {
            C4164a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public ColorType findValueByNumber(int i) {
                return ColorType.valueOf(i);
            }
        }

        ColorType(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(7);
        }

        public static Internal.EnumLiteMap<ColorType> internalGetValueMap() {
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

        public static ColorType valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return null;
                        }
                        return SPACEGRAY;
                    }
                    return BLACK;
                }
                return BLUE;
            }
            return WHITE;
        }

        public static ColorType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class ConnectInfo extends GeneratedMessage implements ConnectInfoOrBuilder {
        public static final int DEVICEID_FIELD_NUMBER = 5;
        public static final int DEVICETYPE_FIELD_NUMBER = 6;
        public static final int IV_FIELD_NUMBER = 3;
        public static final int KEY_FIELD_NUMBER = 2;
        public static final int MAC_FIELD_NUMBER = 4;
        public static Parser<ConnectInfo> PARSER = new C4165a();
        public static final int TOKEN_FIELD_NUMBER = 1;
        private static final ConnectInfo defaultInstance;
        private int bitField0_;
        private int deviceId_;
        private int deviceType_;
        private ByteString iv_;
        private ByteString key_;
        private ByteString mac_;
        private ByteString token_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ConnectInfoOrBuilder {
            private int bitField0_;
            private int deviceId_;
            private int deviceType_;
            private ByteString iv_;
            private ByteString key_;
            private ByteString mac_;
            private ByteString token_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4187a c4187a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BleProtos.f14493c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -17;
                this.deviceId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDeviceType() {
                this.bitField0_ &= -33;
                this.deviceType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearIv() {
                this.bitField0_ &= -5;
                this.iv_ = ConnectInfo.getDefaultInstance().getIv();
                onChanged();
                return this;
            }

            public Builder clearKey() {
                this.bitField0_ &= -3;
                this.key_ = ConnectInfo.getDefaultInstance().getKey();
                onChanged();
                return this;
            }

            public Builder clearMac() {
                this.bitField0_ &= -9;
                this.mac_ = ConnectInfo.getDefaultInstance().getMac();
                onChanged();
                return this;
            }

            public Builder clearToken() {
                this.bitField0_ &= -2;
                this.token_ = ConnectInfo.getDefaultInstance().getToken();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BleProtos.f14493c;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
            public int getDeviceId() {
                return this.deviceId_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
            public int getDeviceType() {
                return this.deviceType_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
            public ByteString getIv() {
                return this.iv_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
            public ByteString getKey() {
                return this.key_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
            public ByteString getMac() {
                return this.mac_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
            public ByteString getToken() {
                return this.token_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
            public boolean hasDeviceType() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
            public boolean hasIv() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
            public boolean hasKey() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
            public boolean hasMac() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
            public boolean hasToken() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BleProtos.f14494d.ensureFieldAccessorsInitialized(ConnectInfo.class, Builder.class);
            }

            public Builder setDeviceId(int i) {
                this.bitField0_ |= 16;
                this.deviceId_ = i;
                onChanged();
                return this;
            }

            public Builder setDeviceType(int i) {
                this.bitField0_ |= 32;
                this.deviceType_ = i;
                onChanged();
                return this;
            }

            public Builder setIv(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.iv_ = byteString;
                onChanged();
                return this;
            }

            public Builder setKey(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 2;
                this.key_ = byteString;
                onChanged();
                return this;
            }

            public Builder setMac(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 8;
                this.mac_ = byteString;
                onChanged();
                return this;
            }

            public Builder setToken(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 1;
                this.token_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                ByteString byteString = ByteString.EMPTY;
                this.token_ = byteString;
                this.key_ = byteString;
                this.iv_ = byteString;
                this.mac_ = byteString;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ConnectInfo build() {
                ConnectInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ConnectInfo buildPartial() {
                ConnectInfo connectInfo = new ConnectInfo(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                connectInfo.token_ = this.token_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                connectInfo.key_ = this.key_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                connectInfo.iv_ = this.iv_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                connectInfo.mac_ = this.mac_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                connectInfo.deviceId_ = this.deviceId_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                connectInfo.deviceType_ = this.deviceType_;
                connectInfo.bitField0_ = i2;
                onBuilt();
                return connectInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ConnectInfo getDefaultInstanceForType() {
                return ConnectInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                ByteString byteString = ByteString.EMPTY;
                this.token_ = byteString;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.key_ = byteString;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.iv_ = byteString;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.mac_ = byteString;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.deviceId_ = 0;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.deviceType_ = 0;
                this.bitField0_ = i5 & (-33);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                ByteString byteString = ByteString.EMPTY;
                this.token_ = byteString;
                this.key_ = byteString;
                this.iv_ = byteString;
                this.mac_ = byteString;
                maybeForceBuilderInitialization();
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$ConnectInfo$a */
        /* loaded from: classes2.dex */
        class C4165a extends AbstractParser<ConnectInfo> {
            C4165a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public ConnectInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = ConnectInfo.newBuilder();
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
            ConnectInfo connectInfo = new ConnectInfo(true);
            defaultInstance = connectInfo;
            connectInfo.initFields();
        }

        /* synthetic */ ConnectInfo(GeneratedMessage.Builder builder, C4187a c4187a) {
            this(builder);
        }

        public static ConnectInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BleProtos.f14493c;
        }

        private void initFields() {
            ByteString byteString = ByteString.EMPTY;
            this.token_ = byteString;
            this.key_ = byteString;
            this.iv_ = byteString;
            this.mac_ = byteString;
            this.deviceId_ = 0;
            this.deviceType_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static ConnectInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ConnectInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
        public int getDeviceId() {
            return this.deviceId_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
        public int getDeviceType() {
            return this.deviceType_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
        public ByteString getIv() {
            return this.iv_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
        public ByteString getKey() {
            return this.key_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
        public ByteString getMac() {
            return this.mac_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ConnectInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
        public ByteString getToken() {
            return this.token_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
        public boolean hasDeviceType() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
        public boolean hasIv() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
        public boolean hasKey() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
        public boolean hasMac() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ConnectInfoOrBuilder
        public boolean hasToken() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BleProtos.f14494d.ensureFieldAccessorsInitialized(ConnectInfo.class, Builder.class);
        }

        private ConnectInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(ConnectInfo connectInfo) {
            return (Builder) newBuilder().mergeFrom((Message) connectInfo);
        }

        public static ConnectInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ConnectInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ConnectInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ConnectInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private ConnectInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ConnectInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static ConnectInfo parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ConnectInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ConnectInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ConnectInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ConnectInfoOrBuilder extends MessageOrBuilder {
        int getDeviceId();

        int getDeviceType();

        ByteString getIv();

        ByteString getKey();

        ByteString getMac();

        ByteString getToken();

        boolean hasDeviceId();

        boolean hasDeviceType();

        boolean hasIv();

        boolean hasKey();

        boolean hasMac();

        boolean hasToken();
    }

    /* loaded from: classes2.dex */
    public static final class DeviceConfig extends GeneratedMessage implements DeviceConfigOrBuilder {
        public static final int ADVNAME_FIELD_NUMBER = 11;
        public static final int AUTOLOCK_FIELD_NUMBER = 7;
        public static final int BATCHCONFIG_FIELD_NUMBER = 8;
        public static final int CALLVOICE_FIELD_NUMBER = 5;
        public static final int KEYVOICE_FIELD_NUMBER = 3;
        public static final int LANGTYPE_FIELD_NUMBER = 1;
        public static final int NAME_FIELD_NUMBER = 9;
        public static Parser<DeviceConfig> PARSER = new C4166a();
        public static final int POWERSAVE_FIELD_NUMBER = 10;
        public static final int POWERVOICE_FIELD_NUMBER = 2;
        public static final int SHARELOC_FIELD_NUMBER = 4;
        public static final int VOICETYPE_FIELD_NUMBER = 6;
        private static final DeviceConfig defaultInstance;
        private ByteString advName_;
        private Switch autoLock_;
        private Switch batchConfig_;
        private int bitField0_;
        private Switch callVoice_;
        private Switch keyVoice_;
        private LanguageType langType_;
        private ByteString name_;
        private Switch powerSave_;
        private Switch powerVoice_;
        private Switch shareLoc_;
        private final UnknownFieldSet unknownFields;
        private VoiceType voiceType_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements DeviceConfigOrBuilder {
            private ByteString advName_;
            private Switch autoLock_;
            private Switch batchConfig_;
            private int bitField0_;
            private Switch callVoice_;
            private Switch keyVoice_;
            private LanguageType langType_;
            private ByteString name_;
            private Switch powerSave_;
            private Switch powerVoice_;
            private Switch shareLoc_;
            private VoiceType voiceType_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4187a c4187a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BleProtos.f14495e;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearAdvName() {
                this.bitField0_ &= -1025;
                this.advName_ = DeviceConfig.getDefaultInstance().getAdvName();
                onChanged();
                return this;
            }

            public Builder clearAutoLock() {
                this.bitField0_ &= -65;
                this.autoLock_ = Switch.OFF;
                onChanged();
                return this;
            }

            public Builder clearBatchConfig() {
                this.bitField0_ &= -129;
                this.batchConfig_ = Switch.OFF;
                onChanged();
                return this;
            }

            public Builder clearCallVoice() {
                this.bitField0_ &= -17;
                this.callVoice_ = Switch.OFF;
                onChanged();
                return this;
            }

            public Builder clearKeyVoice() {
                this.bitField0_ &= -5;
                this.keyVoice_ = Switch.OFF;
                onChanged();
                return this;
            }

            public Builder clearLangType() {
                this.bitField0_ &= -2;
                this.langType_ = LanguageType.CHINESE;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -257;
                this.name_ = DeviceConfig.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder clearPowerSave() {
                this.bitField0_ &= -513;
                this.powerSave_ = Switch.OFF;
                onChanged();
                return this;
            }

            public Builder clearPowerVoice() {
                this.bitField0_ &= -3;
                this.powerVoice_ = Switch.OFF;
                onChanged();
                return this;
            }

            public Builder clearShareLoc() {
                this.bitField0_ &= -9;
                this.shareLoc_ = Switch.OFF;
                onChanged();
                return this;
            }

            public Builder clearVoiceType() {
                this.bitField0_ &= -33;
                this.voiceType_ = VoiceType.VOICE_CLOSE;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public ByteString getAdvName() {
                return this.advName_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public Switch getAutoLock() {
                return this.autoLock_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public Switch getBatchConfig() {
                return this.batchConfig_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public Switch getCallVoice() {
                return this.callVoice_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BleProtos.f14495e;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public Switch getKeyVoice() {
                return this.keyVoice_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public LanguageType getLangType() {
                return this.langType_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public ByteString getName() {
                return this.name_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public Switch getPowerSave() {
                return this.powerSave_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public Switch getPowerVoice() {
                return this.powerVoice_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public Switch getShareLoc() {
                return this.shareLoc_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public VoiceType getVoiceType() {
                return this.voiceType_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public boolean hasAdvName() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public boolean hasAutoLock() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public boolean hasBatchConfig() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public boolean hasCallVoice() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public boolean hasKeyVoice() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public boolean hasLangType() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public boolean hasName() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public boolean hasPowerSave() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public boolean hasPowerVoice() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public boolean hasShareLoc() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
            public boolean hasVoiceType() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BleProtos.f14496f.ensureFieldAccessorsInitialized(DeviceConfig.class, Builder.class);
            }

            public Builder setAdvName(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 1024;
                this.advName_ = byteString;
                onChanged();
                return this;
            }

            public Builder setAutoLock(Switch r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 64;
                this.autoLock_ = r2;
                onChanged();
                return this;
            }

            public Builder setBatchConfig(Switch r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 128;
                this.batchConfig_ = r2;
                onChanged();
                return this;
            }

            public Builder setCallVoice(Switch r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 16;
                this.callVoice_ = r2;
                onChanged();
                return this;
            }

            public Builder setKeyVoice(Switch r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 4;
                this.keyVoice_ = r2;
                onChanged();
                return this;
            }

            public Builder setLangType(LanguageType languageType) {
                Objects.requireNonNull(languageType);
                this.bitField0_ |= 1;
                this.langType_ = languageType;
                onChanged();
                return this;
            }

            public Builder setName(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 256;
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public Builder setPowerSave(Switch r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 512;
                this.powerSave_ = r2;
                onChanged();
                return this;
            }

            public Builder setPowerVoice(Switch r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 2;
                this.powerVoice_ = r2;
                onChanged();
                return this;
            }

            public Builder setShareLoc(Switch r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 8;
                this.shareLoc_ = r2;
                onChanged();
                return this;
            }

            public Builder setVoiceType(VoiceType voiceType) {
                Objects.requireNonNull(voiceType);
                this.bitField0_ |= 32;
                this.voiceType_ = voiceType;
                onChanged();
                return this;
            }

            private Builder() {
                this.langType_ = LanguageType.CHINESE;
                Switch r0 = Switch.OFF;
                this.powerVoice_ = r0;
                this.keyVoice_ = r0;
                this.shareLoc_ = r0;
                this.callVoice_ = r0;
                this.voiceType_ = VoiceType.VOICE_CLOSE;
                this.autoLock_ = r0;
                this.batchConfig_ = r0;
                ByteString byteString = ByteString.EMPTY;
                this.name_ = byteString;
                this.powerSave_ = r0;
                this.advName_ = byteString;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DeviceConfig build() {
                DeviceConfig buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DeviceConfig buildPartial() {
                DeviceConfig deviceConfig = new DeviceConfig(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                deviceConfig.langType_ = this.langType_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                deviceConfig.powerVoice_ = this.powerVoice_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                deviceConfig.keyVoice_ = this.keyVoice_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                deviceConfig.shareLoc_ = this.shareLoc_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                deviceConfig.callVoice_ = this.callVoice_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                deviceConfig.voiceType_ = this.voiceType_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                deviceConfig.autoLock_ = this.autoLock_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                deviceConfig.batchConfig_ = this.batchConfig_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                deviceConfig.name_ = this.name_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                deviceConfig.powerSave_ = this.powerSave_;
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                deviceConfig.advName_ = this.advName_;
                deviceConfig.bitField0_ = i2;
                onBuilt();
                return deviceConfig;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public DeviceConfig getDefaultInstanceForType() {
                return DeviceConfig.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.langType_ = LanguageType.CHINESE;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                Switch r1 = Switch.OFF;
                this.powerVoice_ = r1;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.keyVoice_ = r1;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.shareLoc_ = r1;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.callVoice_ = r1;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.voiceType_ = VoiceType.VOICE_CLOSE;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.autoLock_ = r1;
                int i7 = i6 & (-65);
                this.bitField0_ = i7;
                this.batchConfig_ = r1;
                int i8 = i7 & (-129);
                this.bitField0_ = i8;
                ByteString byteString = ByteString.EMPTY;
                this.name_ = byteString;
                int i9 = i8 & (-257);
                this.bitField0_ = i9;
                this.powerSave_ = r1;
                int i10 = i9 & (-513);
                this.bitField0_ = i10;
                this.advName_ = byteString;
                this.bitField0_ = i10 & (-1025);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.langType_ = LanguageType.CHINESE;
                Switch r2 = Switch.OFF;
                this.powerVoice_ = r2;
                this.keyVoice_ = r2;
                this.shareLoc_ = r2;
                this.callVoice_ = r2;
                this.voiceType_ = VoiceType.VOICE_CLOSE;
                this.autoLock_ = r2;
                this.batchConfig_ = r2;
                ByteString byteString = ByteString.EMPTY;
                this.name_ = byteString;
                this.powerSave_ = r2;
                this.advName_ = byteString;
                maybeForceBuilderInitialization();
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$DeviceConfig$a */
        /* loaded from: classes2.dex */
        class C4166a extends AbstractParser<DeviceConfig> {
            C4166a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public DeviceConfig parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = DeviceConfig.newBuilder();
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
            DeviceConfig deviceConfig = new DeviceConfig(true);
            defaultInstance = deviceConfig;
            deviceConfig.initFields();
        }

        /* synthetic */ DeviceConfig(GeneratedMessage.Builder builder, C4187a c4187a) {
            this(builder);
        }

        public static DeviceConfig getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BleProtos.f14495e;
        }

        private void initFields() {
            this.langType_ = LanguageType.CHINESE;
            Switch r0 = Switch.OFF;
            this.powerVoice_ = r0;
            this.keyVoice_ = r0;
            this.shareLoc_ = r0;
            this.callVoice_ = r0;
            this.voiceType_ = VoiceType.VOICE_CLOSE;
            this.autoLock_ = r0;
            this.batchConfig_ = r0;
            ByteString byteString = ByteString.EMPTY;
            this.name_ = byteString;
            this.powerSave_ = r0;
            this.advName_ = byteString;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static DeviceConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static DeviceConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public ByteString getAdvName() {
            return this.advName_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public Switch getAutoLock() {
            return this.autoLock_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public Switch getBatchConfig() {
            return this.batchConfig_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public Switch getCallVoice() {
            return this.callVoice_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public Switch getKeyVoice() {
            return this.keyVoice_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public LanguageType getLangType() {
            return this.langType_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public ByteString getName() {
            return this.name_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DeviceConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public Switch getPowerSave() {
            return this.powerSave_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public Switch getPowerVoice() {
            return this.powerVoice_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public Switch getShareLoc() {
            return this.shareLoc_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public VoiceType getVoiceType() {
            return this.voiceType_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public boolean hasAdvName() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public boolean hasAutoLock() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public boolean hasBatchConfig() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public boolean hasCallVoice() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public boolean hasKeyVoice() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public boolean hasLangType() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public boolean hasName() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public boolean hasPowerSave() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public boolean hasPowerVoice() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public boolean hasShareLoc() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceConfigOrBuilder
        public boolean hasVoiceType() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BleProtos.f14496f.ensureFieldAccessorsInitialized(DeviceConfig.class, Builder.class);
        }

        private DeviceConfig(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(DeviceConfig deviceConfig) {
            return (Builder) newBuilder().mergeFrom((Message) deviceConfig);
        }

        public static DeviceConfig parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static DeviceConfig parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DeviceConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DeviceConfig getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private DeviceConfig(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static DeviceConfig parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static DeviceConfig parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static DeviceConfig parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static DeviceConfig parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static DeviceConfig parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface DeviceConfigOrBuilder extends MessageOrBuilder {
        ByteString getAdvName();

        Switch getAutoLock();

        Switch getBatchConfig();

        Switch getCallVoice();

        Switch getKeyVoice();

        LanguageType getLangType();

        ByteString getName();

        Switch getPowerSave();

        Switch getPowerVoice();

        Switch getShareLoc();

        VoiceType getVoiceType();

        boolean hasAdvName();

        boolean hasAutoLock();

        boolean hasBatchConfig();

        boolean hasCallVoice();

        boolean hasKeyVoice();

        boolean hasLangType();

        boolean hasName();

        boolean hasPowerSave();

        boolean hasPowerVoice();

        boolean hasShareLoc();

        boolean hasVoiceType();
    }

    /* loaded from: classes2.dex */
    public static final class DeviceInfo extends GeneratedMessage implements DeviceInfoOrBuilder {
        public static final int BATTERY_FIELD_NUMBER = 7;
        public static final int COLOR_FIELD_NUMBER = 4;
        public static final int CONFIGINFO_FIELD_NUMBER = 9;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static final int DEVICEMODE_FIELD_NUMBER = 8;
        public static final int DEVICETYPE_FIELD_NUMBER = 5;
        public static final int MAC_FIELD_NUMBER = 6;
        public static Parser<DeviceInfo> PARSER = new C4167a();
        public static final int TALKINFO_FIELD_NUMBER = 10;
        public static final int VERHW_FIELD_NUMBER = 1;
        public static final int VERSOFT_FIELD_NUMBER = 2;
        private static final DeviceInfo defaultInstance;
        private int battery_;
        private int bitField0_;
        private ColorType color_;
        private DeviceConfig configInfo_;
        private int deviceId_;
        private DeviceMode deviceMode_;
        private int deviceType_;
        private ByteString mac_;
        private DeviceTalkInfo talkInfo_;
        private final UnknownFieldSet unknownFields;
        private int verHw_;
        private int verSoft_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements DeviceInfoOrBuilder {
            private int battery_;
            private int bitField0_;
            private ColorType color_;
            private SingleFieldBuilder<DeviceConfig, DeviceConfig.Builder, DeviceConfigOrBuilder> configInfoBuilder_;
            private DeviceConfig configInfo_;
            private int deviceId_;
            private DeviceMode deviceMode_;
            private int deviceType_;
            private ByteString mac_;
            private SingleFieldBuilder<DeviceTalkInfo, DeviceTalkInfo.Builder, DeviceTalkInfoOrBuilder> talkInfoBuilder_;
            private DeviceTalkInfo talkInfo_;
            private int verHw_;
            private int verSoft_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4187a c4187a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<DeviceConfig, DeviceConfig.Builder, DeviceConfigOrBuilder> getConfigInfoFieldBuilder() {
                if (this.configInfoBuilder_ == null) {
                    this.configInfoBuilder_ = new SingleFieldBuilder<>(getConfigInfo(), getParentForChildren(), isClean());
                    this.configInfo_ = null;
                }
                return this.configInfoBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BleProtos.f14499i;
            }

            private SingleFieldBuilder<DeviceTalkInfo, DeviceTalkInfo.Builder, DeviceTalkInfoOrBuilder> getTalkInfoFieldBuilder() {
                if (this.talkInfoBuilder_ == null) {
                    this.talkInfoBuilder_ = new SingleFieldBuilder<>(getTalkInfo(), getParentForChildren(), isClean());
                    this.talkInfo_ = null;
                }
                return this.talkInfoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getConfigInfoFieldBuilder();
                    getTalkInfoFieldBuilder();
                }
            }

            public Builder clearBattery() {
                this.bitField0_ &= -65;
                this.battery_ = 0;
                onChanged();
                return this;
            }

            public Builder clearColor() {
                this.bitField0_ &= -9;
                this.color_ = ColorType.WHITE;
                onChanged();
                return this;
            }

            public Builder clearConfigInfo() {
                SingleFieldBuilder<DeviceConfig, DeviceConfig.Builder, DeviceConfigOrBuilder> singleFieldBuilder = this.configInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.configInfo_ = DeviceConfig.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -257;
                return this;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -5;
                this.deviceId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDeviceMode() {
                this.bitField0_ &= -129;
                this.deviceMode_ = DeviceMode.MODEL_NORMAL;
                onChanged();
                return this;
            }

            public Builder clearDeviceType() {
                this.bitField0_ &= -17;
                this.deviceType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMac() {
                this.bitField0_ &= -33;
                this.mac_ = DeviceInfo.getDefaultInstance().getMac();
                onChanged();
                return this;
            }

            public Builder clearTalkInfo() {
                SingleFieldBuilder<DeviceTalkInfo, DeviceTalkInfo.Builder, DeviceTalkInfoOrBuilder> singleFieldBuilder = this.talkInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.talkInfo_ = DeviceTalkInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -513;
                return this;
            }

            public Builder clearVerHw() {
                this.bitField0_ &= -2;
                this.verHw_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVerSoft() {
                this.bitField0_ &= -3;
                this.verSoft_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public int getBattery() {
                return this.battery_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public ColorType getColor() {
                return this.color_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public DeviceConfig getConfigInfo() {
                SingleFieldBuilder<DeviceConfig, DeviceConfig.Builder, DeviceConfigOrBuilder> singleFieldBuilder = this.configInfoBuilder_;
                if (singleFieldBuilder == null) {
                    return this.configInfo_;
                }
                return singleFieldBuilder.getMessage();
            }

            public DeviceConfig.Builder getConfigInfoBuilder() {
                this.bitField0_ |= 256;
                onChanged();
                return getConfigInfoFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public DeviceConfigOrBuilder getConfigInfoOrBuilder() {
                SingleFieldBuilder<DeviceConfig, DeviceConfig.Builder, DeviceConfigOrBuilder> singleFieldBuilder = this.configInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.configInfo_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BleProtos.f14499i;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public int getDeviceId() {
                return this.deviceId_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public DeviceMode getDeviceMode() {
                return this.deviceMode_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public int getDeviceType() {
                return this.deviceType_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public ByteString getMac() {
                return this.mac_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public DeviceTalkInfo getTalkInfo() {
                SingleFieldBuilder<DeviceTalkInfo, DeviceTalkInfo.Builder, DeviceTalkInfoOrBuilder> singleFieldBuilder = this.talkInfoBuilder_;
                if (singleFieldBuilder == null) {
                    return this.talkInfo_;
                }
                return singleFieldBuilder.getMessage();
            }

            public DeviceTalkInfo.Builder getTalkInfoBuilder() {
                this.bitField0_ |= 512;
                onChanged();
                return getTalkInfoFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public DeviceTalkInfoOrBuilder getTalkInfoOrBuilder() {
                SingleFieldBuilder<DeviceTalkInfo, DeviceTalkInfo.Builder, DeviceTalkInfoOrBuilder> singleFieldBuilder = this.talkInfoBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.talkInfo_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public int getVerHw() {
                return this.verHw_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public int getVerSoft() {
                return this.verSoft_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public boolean hasBattery() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public boolean hasColor() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public boolean hasConfigInfo() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public boolean hasDeviceMode() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public boolean hasDeviceType() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public boolean hasMac() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public boolean hasTalkInfo() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public boolean hasVerHw() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
            public boolean hasVerSoft() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BleProtos.f14500j.ensureFieldAccessorsInitialized(DeviceInfo.class, Builder.class);
            }

            public Builder mergeConfigInfo(DeviceConfig deviceConfig) {
                SingleFieldBuilder<DeviceConfig, DeviceConfig.Builder, DeviceConfigOrBuilder> singleFieldBuilder = this.configInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 256) == 256 && this.configInfo_ != DeviceConfig.getDefaultInstance()) {
                        this.configInfo_ = ((DeviceConfig.Builder) DeviceConfig.newBuilder(this.configInfo_).mergeFrom((Message) deviceConfig)).buildPartial();
                    } else {
                        this.configInfo_ = deviceConfig;
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(deviceConfig);
                }
                this.bitField0_ |= 256;
                return this;
            }

            public Builder mergeTalkInfo(DeviceTalkInfo deviceTalkInfo) {
                SingleFieldBuilder<DeviceTalkInfo, DeviceTalkInfo.Builder, DeviceTalkInfoOrBuilder> singleFieldBuilder = this.talkInfoBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 512) == 512 && this.talkInfo_ != DeviceTalkInfo.getDefaultInstance()) {
                        this.talkInfo_ = ((DeviceTalkInfo.Builder) DeviceTalkInfo.newBuilder(this.talkInfo_).mergeFrom((Message) deviceTalkInfo)).buildPartial();
                    } else {
                        this.talkInfo_ = deviceTalkInfo;
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(deviceTalkInfo);
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder setBattery(int i) {
                this.bitField0_ |= 64;
                this.battery_ = i;
                onChanged();
                return this;
            }

            public Builder setColor(ColorType colorType) {
                Objects.requireNonNull(colorType);
                this.bitField0_ |= 8;
                this.color_ = colorType;
                onChanged();
                return this;
            }

            public Builder setConfigInfo(DeviceConfig deviceConfig) {
                SingleFieldBuilder<DeviceConfig, DeviceConfig.Builder, DeviceConfigOrBuilder> singleFieldBuilder = this.configInfoBuilder_;
                if (singleFieldBuilder == null) {
                    Objects.requireNonNull(deviceConfig);
                    this.configInfo_ = deviceConfig;
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(deviceConfig);
                }
                this.bitField0_ |= 256;
                return this;
            }

            public Builder setDeviceId(int i) {
                this.bitField0_ |= 4;
                this.deviceId_ = i;
                onChanged();
                return this;
            }

            public Builder setDeviceMode(DeviceMode deviceMode) {
                Objects.requireNonNull(deviceMode);
                this.bitField0_ |= 128;
                this.deviceMode_ = deviceMode;
                onChanged();
                return this;
            }

            public Builder setDeviceType(int i) {
                this.bitField0_ |= 16;
                this.deviceType_ = i;
                onChanged();
                return this;
            }

            public Builder setMac(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 32;
                this.mac_ = byteString;
                onChanged();
                return this;
            }

            public Builder setTalkInfo(DeviceTalkInfo deviceTalkInfo) {
                SingleFieldBuilder<DeviceTalkInfo, DeviceTalkInfo.Builder, DeviceTalkInfoOrBuilder> singleFieldBuilder = this.talkInfoBuilder_;
                if (singleFieldBuilder == null) {
                    Objects.requireNonNull(deviceTalkInfo);
                    this.talkInfo_ = deviceTalkInfo;
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(deviceTalkInfo);
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder setVerHw(int i) {
                this.bitField0_ |= 1;
                this.verHw_ = i;
                onChanged();
                return this;
            }

            public Builder setVerSoft(int i) {
                this.bitField0_ |= 2;
                this.verSoft_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.color_ = ColorType.WHITE;
                this.mac_ = ByteString.EMPTY;
                this.deviceMode_ = DeviceMode.MODEL_NORMAL;
                this.configInfo_ = DeviceConfig.getDefaultInstance();
                this.talkInfo_ = DeviceTalkInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DeviceInfo build() {
                DeviceInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DeviceInfo buildPartial() {
                DeviceInfo deviceInfo = new DeviceInfo(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                deviceInfo.verHw_ = this.verHw_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                deviceInfo.verSoft_ = this.verSoft_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                deviceInfo.deviceId_ = this.deviceId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                deviceInfo.color_ = this.color_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                deviceInfo.deviceType_ = this.deviceType_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                deviceInfo.mac_ = this.mac_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                deviceInfo.battery_ = this.battery_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                deviceInfo.deviceMode_ = this.deviceMode_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                SingleFieldBuilder<DeviceConfig, DeviceConfig.Builder, DeviceConfigOrBuilder> singleFieldBuilder = this.configInfoBuilder_;
                if (singleFieldBuilder == null) {
                    deviceInfo.configInfo_ = this.configInfo_;
                } else {
                    deviceInfo.configInfo_ = singleFieldBuilder.build();
                }
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                SingleFieldBuilder<DeviceTalkInfo, DeviceTalkInfo.Builder, DeviceTalkInfoOrBuilder> singleFieldBuilder2 = this.talkInfoBuilder_;
                if (singleFieldBuilder2 == null) {
                    deviceInfo.talkInfo_ = this.talkInfo_;
                } else {
                    deviceInfo.talkInfo_ = singleFieldBuilder2.build();
                }
                deviceInfo.bitField0_ = i2;
                onBuilt();
                return deviceInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public DeviceInfo getDefaultInstanceForType() {
                return DeviceInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.verHw_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.verSoft_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.deviceId_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.color_ = ColorType.WHITE;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.deviceType_ = 0;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.mac_ = ByteString.EMPTY;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.battery_ = 0;
                int i7 = i6 & (-65);
                this.bitField0_ = i7;
                this.deviceMode_ = DeviceMode.MODEL_NORMAL;
                this.bitField0_ = i7 & (-129);
                SingleFieldBuilder<DeviceConfig, DeviceConfig.Builder, DeviceConfigOrBuilder> singleFieldBuilder = this.configInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.configInfo_ = DeviceConfig.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -257;
                SingleFieldBuilder<DeviceTalkInfo, DeviceTalkInfo.Builder, DeviceTalkInfoOrBuilder> singleFieldBuilder2 = this.talkInfoBuilder_;
                if (singleFieldBuilder2 == null) {
                    this.talkInfo_ = DeviceTalkInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder2.clear();
                }
                this.bitField0_ &= -513;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setConfigInfo(DeviceConfig.Builder builder) {
                SingleFieldBuilder<DeviceConfig, DeviceConfig.Builder, DeviceConfigOrBuilder> singleFieldBuilder = this.configInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.configInfo_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 256;
                return this;
            }

            public Builder setTalkInfo(DeviceTalkInfo.Builder builder) {
                SingleFieldBuilder<DeviceTalkInfo, DeviceTalkInfo.Builder, DeviceTalkInfoOrBuilder> singleFieldBuilder = this.talkInfoBuilder_;
                if (singleFieldBuilder == null) {
                    this.talkInfo_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 512;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.color_ = ColorType.WHITE;
                this.mac_ = ByteString.EMPTY;
                this.deviceMode_ = DeviceMode.MODEL_NORMAL;
                this.configInfo_ = DeviceConfig.getDefaultInstance();
                this.talkInfo_ = DeviceTalkInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$DeviceInfo$a */
        /* loaded from: classes2.dex */
        class C4167a extends AbstractParser<DeviceInfo> {
            C4167a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public DeviceInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = DeviceInfo.newBuilder();
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
            DeviceInfo deviceInfo = new DeviceInfo(true);
            defaultInstance = deviceInfo;
            deviceInfo.initFields();
        }

        /* synthetic */ DeviceInfo(GeneratedMessage.Builder builder, C4187a c4187a) {
            this(builder);
        }

        public static DeviceInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BleProtos.f14499i;
        }

        private void initFields() {
            this.verHw_ = 0;
            this.verSoft_ = 0;
            this.deviceId_ = 0;
            this.color_ = ColorType.WHITE;
            this.deviceType_ = 0;
            this.mac_ = ByteString.EMPTY;
            this.battery_ = 0;
            this.deviceMode_ = DeviceMode.MODEL_NORMAL;
            this.configInfo_ = DeviceConfig.getDefaultInstance();
            this.talkInfo_ = DeviceTalkInfo.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static DeviceInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static DeviceInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public int getBattery() {
            return this.battery_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public ColorType getColor() {
            return this.color_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public DeviceConfig getConfigInfo() {
            return this.configInfo_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public DeviceConfigOrBuilder getConfigInfoOrBuilder() {
            return this.configInfo_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public int getDeviceId() {
            return this.deviceId_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public DeviceMode getDeviceMode() {
            return this.deviceMode_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public int getDeviceType() {
            return this.deviceType_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public ByteString getMac() {
            return this.mac_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DeviceInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public DeviceTalkInfo getTalkInfo() {
            return this.talkInfo_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public DeviceTalkInfoOrBuilder getTalkInfoOrBuilder() {
            return this.talkInfo_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public int getVerHw() {
            return this.verHw_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public int getVerSoft() {
            return this.verSoft_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public boolean hasBattery() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public boolean hasColor() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public boolean hasConfigInfo() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public boolean hasDeviceMode() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public boolean hasDeviceType() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public boolean hasMac() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public boolean hasTalkInfo() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public boolean hasVerHw() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceInfoOrBuilder
        public boolean hasVerSoft() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BleProtos.f14500j.ensureFieldAccessorsInitialized(DeviceInfo.class, Builder.class);
        }

        private DeviceInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(DeviceInfo deviceInfo) {
            return (Builder) newBuilder().mergeFrom((Message) deviceInfo);
        }

        public static DeviceInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static DeviceInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DeviceInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DeviceInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private DeviceInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static DeviceInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static DeviceInfo parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static DeviceInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static DeviceInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static DeviceInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface DeviceInfoOrBuilder extends MessageOrBuilder {
        int getBattery();

        ColorType getColor();

        DeviceConfig getConfigInfo();

        DeviceConfigOrBuilder getConfigInfoOrBuilder();

        int getDeviceId();

        DeviceMode getDeviceMode();

        int getDeviceType();

        ByteString getMac();

        DeviceTalkInfo getTalkInfo();

        DeviceTalkInfoOrBuilder getTalkInfoOrBuilder();

        int getVerHw();

        int getVerSoft();

        boolean hasBattery();

        boolean hasColor();

        boolean hasConfigInfo();

        boolean hasDeviceId();

        boolean hasDeviceMode();

        boolean hasDeviceType();

        boolean hasMac();

        boolean hasTalkInfo();

        boolean hasVerHw();

        boolean hasVerSoft();
    }

    /* loaded from: classes2.dex */
    public enum DeviceMode implements ProtocolMessageEnum {
        MODEL_NORMAL(0, 0),
        SCAN_CH(1, 1),
        SCAN_FREQ(2, 2),
        BATCH_CONFIG(3, 3),
        SYNC_FREQ(4, 4);
        
        public static final int BATCH_CONFIG_VALUE = 3;
        public static final int MODEL_NORMAL_VALUE = 0;
        public static final int SCAN_CH_VALUE = 1;
        public static final int SCAN_FREQ_VALUE = 2;
        public static final int SYNC_FREQ_VALUE = 4;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<DeviceMode> internalValueMap = new C4168a();
        private static final DeviceMode[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$DeviceMode$a */
        /* loaded from: classes2.dex */
        class C4168a implements Internal.EnumLiteMap<DeviceMode> {
            C4168a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public DeviceMode findValueByNumber(int i) {
                return DeviceMode.valueOf(i);
            }
        }

        DeviceMode(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(3);
        }

        public static Internal.EnumLiteMap<DeviceMode> internalGetValueMap() {
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

        public static DeviceMode valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                return null;
                            }
                            return SYNC_FREQ;
                        }
                        return BATCH_CONFIG;
                    }
                    return SCAN_FREQ;
                }
                return SCAN_CH;
            }
            return MODEL_NORMAL;
        }

        public static DeviceMode valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class DeviceTalkInfo extends GeneratedMessage implements DeviceTalkInfoOrBuilder {
        public static final int BAND_FIELD_NUMBER = 3;
        public static final int CURCHSEQ_FIELD_NUMBER = 9;
        public static final int DOUBLECH_FIELD_NUMBER = 8;
        public static final int ELIM_FIELD_NUMBER = 5;
        public static final int LIMTTIME_FIELD_NUMBER = 6;
        public static Parser<DeviceTalkInfo> PARSER = new C4169a();
        public static final int POLITE_FIELD_NUMBER = 4;
        public static final int SENSITY_FIELD_NUMBER = 7;
        public static final int SQ_FIELD_NUMBER = 1;
        public static final int VOX_FIELD_NUMBER = 2;
        private static final DeviceTalkInfo defaultInstance;
        private BandType band_;
        private int bitField0_;
        private int curChSeq_;
        private Switch doubleCh_;
        private Switch elim_;
        private int limtTime_;
        private Switch polite_;
        private MicSensitivity sensity_;
        private SqType sq_;
        private final UnknownFieldSet unknownFields;
        private VoxType vox_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements DeviceTalkInfoOrBuilder {
            private BandType band_;
            private int bitField0_;
            private int curChSeq_;
            private Switch doubleCh_;
            private Switch elim_;
            private int limtTime_;
            private Switch polite_;
            private MicSensitivity sensity_;
            private SqType sq_;
            private VoxType vox_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4187a c4187a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BleProtos.f14497g;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearBand() {
                this.bitField0_ &= -5;
                this.band_ = BandType.BAND_NARROW;
                onChanged();
                return this;
            }

            public Builder clearCurChSeq() {
                this.bitField0_ &= -257;
                this.curChSeq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDoubleCh() {
                this.bitField0_ &= -129;
                this.doubleCh_ = Switch.OFF;
                onChanged();
                return this;
            }

            public Builder clearElim() {
                this.bitField0_ &= -17;
                this.elim_ = Switch.OFF;
                onChanged();
                return this;
            }

            public Builder clearLimtTime() {
                this.bitField0_ &= -33;
                this.limtTime_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPolite() {
                this.bitField0_ &= -9;
                this.polite_ = Switch.OFF;
                onChanged();
                return this;
            }

            public Builder clearSensity() {
                this.bitField0_ &= -65;
                this.sensity_ = MicSensitivity.MIC_LOW;
                onChanged();
                return this;
            }

            public Builder clearSq() {
                this.bitField0_ &= -2;
                this.sq_ = SqType.SQ_OFF;
                onChanged();
                return this;
            }

            public Builder clearVox() {
                this.bitField0_ &= -3;
                this.vox_ = VoxType.VOX_OFF;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public BandType getBand() {
                return this.band_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public int getCurChSeq() {
                return this.curChSeq_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BleProtos.f14497g;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public Switch getDoubleCh() {
                return this.doubleCh_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public Switch getElim() {
                return this.elim_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public int getLimtTime() {
                return this.limtTime_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public Switch getPolite() {
                return this.polite_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public MicSensitivity getSensity() {
                return this.sensity_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public SqType getSq() {
                return this.sq_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public VoxType getVox() {
                return this.vox_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public boolean hasBand() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public boolean hasCurChSeq() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public boolean hasDoubleCh() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public boolean hasElim() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public boolean hasLimtTime() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public boolean hasPolite() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public boolean hasSensity() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public boolean hasSq() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
            public boolean hasVox() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BleProtos.f14498h.ensureFieldAccessorsInitialized(DeviceTalkInfo.class, Builder.class);
            }

            public Builder setBand(BandType bandType) {
                Objects.requireNonNull(bandType);
                this.bitField0_ |= 4;
                this.band_ = bandType;
                onChanged();
                return this;
            }

            public Builder setCurChSeq(int i) {
                this.bitField0_ |= 256;
                this.curChSeq_ = i;
                onChanged();
                return this;
            }

            public Builder setDoubleCh(Switch r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 128;
                this.doubleCh_ = r2;
                onChanged();
                return this;
            }

            public Builder setElim(Switch r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 16;
                this.elim_ = r2;
                onChanged();
                return this;
            }

            public Builder setLimtTime(int i) {
                this.bitField0_ |= 32;
                this.limtTime_ = i;
                onChanged();
                return this;
            }

            public Builder setPolite(Switch r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 8;
                this.polite_ = r2;
                onChanged();
                return this;
            }

            public Builder setSensity(MicSensitivity micSensitivity) {
                Objects.requireNonNull(micSensitivity);
                this.bitField0_ |= 64;
                this.sensity_ = micSensitivity;
                onChanged();
                return this;
            }

            public Builder setSq(SqType sqType) {
                Objects.requireNonNull(sqType);
                this.bitField0_ |= 1;
                this.sq_ = sqType;
                onChanged();
                return this;
            }

            public Builder setVox(VoxType voxType) {
                Objects.requireNonNull(voxType);
                this.bitField0_ |= 2;
                this.vox_ = voxType;
                onChanged();
                return this;
            }

            private Builder() {
                this.sq_ = SqType.SQ_OFF;
                this.vox_ = VoxType.VOX_OFF;
                this.band_ = BandType.BAND_NARROW;
                Switch r0 = Switch.OFF;
                this.polite_ = r0;
                this.elim_ = r0;
                this.sensity_ = MicSensitivity.MIC_LOW;
                this.doubleCh_ = r0;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DeviceTalkInfo build() {
                DeviceTalkInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DeviceTalkInfo buildPartial() {
                DeviceTalkInfo deviceTalkInfo = new DeviceTalkInfo(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                deviceTalkInfo.sq_ = this.sq_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                deviceTalkInfo.vox_ = this.vox_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                deviceTalkInfo.band_ = this.band_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                deviceTalkInfo.polite_ = this.polite_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                deviceTalkInfo.elim_ = this.elim_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                deviceTalkInfo.limtTime_ = this.limtTime_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                deviceTalkInfo.sensity_ = this.sensity_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                deviceTalkInfo.doubleCh_ = this.doubleCh_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                deviceTalkInfo.curChSeq_ = this.curChSeq_;
                deviceTalkInfo.bitField0_ = i2;
                onBuilt();
                return deviceTalkInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public DeviceTalkInfo getDefaultInstanceForType() {
                return DeviceTalkInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.sq_ = SqType.SQ_OFF;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.vox_ = VoxType.VOX_OFF;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.band_ = BandType.BAND_NARROW;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                Switch r1 = Switch.OFF;
                this.polite_ = r1;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.elim_ = r1;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.limtTime_ = 0;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.sensity_ = MicSensitivity.MIC_LOW;
                int i7 = i6 & (-65);
                this.bitField0_ = i7;
                this.doubleCh_ = r1;
                int i8 = i7 & (-129);
                this.bitField0_ = i8;
                this.curChSeq_ = 0;
                this.bitField0_ = i8 & (-257);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.sq_ = SqType.SQ_OFF;
                this.vox_ = VoxType.VOX_OFF;
                this.band_ = BandType.BAND_NARROW;
                Switch r2 = Switch.OFF;
                this.polite_ = r2;
                this.elim_ = r2;
                this.sensity_ = MicSensitivity.MIC_LOW;
                this.doubleCh_ = r2;
                maybeForceBuilderInitialization();
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$DeviceTalkInfo$a */
        /* loaded from: classes2.dex */
        class C4169a extends AbstractParser<DeviceTalkInfo> {
            C4169a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public DeviceTalkInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = DeviceTalkInfo.newBuilder();
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
            DeviceTalkInfo deviceTalkInfo = new DeviceTalkInfo(true);
            defaultInstance = deviceTalkInfo;
            deviceTalkInfo.initFields();
        }

        /* synthetic */ DeviceTalkInfo(GeneratedMessage.Builder builder, C4187a c4187a) {
            this(builder);
        }

        public static DeviceTalkInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BleProtos.f14497g;
        }

        private void initFields() {
            this.sq_ = SqType.SQ_OFF;
            this.vox_ = VoxType.VOX_OFF;
            this.band_ = BandType.BAND_NARROW;
            Switch r0 = Switch.OFF;
            this.polite_ = r0;
            this.elim_ = r0;
            this.limtTime_ = 0;
            this.sensity_ = MicSensitivity.MIC_LOW;
            this.doubleCh_ = r0;
            this.curChSeq_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static DeviceTalkInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static DeviceTalkInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public BandType getBand() {
            return this.band_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public int getCurChSeq() {
            return this.curChSeq_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public Switch getDoubleCh() {
            return this.doubleCh_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public Switch getElim() {
            return this.elim_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public int getLimtTime() {
            return this.limtTime_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DeviceTalkInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public Switch getPolite() {
            return this.polite_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public MicSensitivity getSensity() {
            return this.sensity_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public SqType getSq() {
            return this.sq_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public VoxType getVox() {
            return this.vox_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public boolean hasBand() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public boolean hasCurChSeq() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public boolean hasDoubleCh() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public boolean hasElim() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public boolean hasLimtTime() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public boolean hasPolite() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public boolean hasSensity() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public boolean hasSq() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.DeviceTalkInfoOrBuilder
        public boolean hasVox() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BleProtos.f14498h.ensureFieldAccessorsInitialized(DeviceTalkInfo.class, Builder.class);
        }

        private DeviceTalkInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(DeviceTalkInfo deviceTalkInfo) {
            return (Builder) newBuilder().mergeFrom((Message) deviceTalkInfo);
        }

        public static DeviceTalkInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static DeviceTalkInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DeviceTalkInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DeviceTalkInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private DeviceTalkInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static DeviceTalkInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static DeviceTalkInfo parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static DeviceTalkInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static DeviceTalkInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static DeviceTalkInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface DeviceTalkInfoOrBuilder extends MessageOrBuilder {
        BandType getBand();

        int getCurChSeq();

        Switch getDoubleCh();

        Switch getElim();

        int getLimtTime();

        Switch getPolite();

        MicSensitivity getSensity();

        SqType getSq();

        VoxType getVox();

        boolean hasBand();

        boolean hasCurChSeq();

        boolean hasDoubleCh();

        boolean hasElim();

        boolean hasLimtTime();

        boolean hasPolite();

        boolean hasSensity();

        boolean hasSq();

        boolean hasVox();
    }

    /* loaded from: classes2.dex */
    public static final class Frequency extends GeneratedMessage implements FrequencyOrBuilder {
        public static final int NAME_FIELD_NUMBER = 3;
        public static Parser<Frequency> PARSER = new C4170a();
        public static final int RXCSS_FIELD_NUMBER = 6;
        public static final int RXFREQ_FIELD_NUMBER = 4;
        public static final int SEQ_FIELD_NUMBER = 1;
        public static final int TXCSS_FIELD_NUMBER = 7;
        public static final int TXFREQ_FIELD_NUMBER = 5;
        public static final int TYPE_FIELD_NUMBER = 2;
        private static final Frequency defaultInstance;
        private int bitField0_;
        private ByteString name_;
        private int rxCss_;
        private int rxFreq_;
        private int seq_;
        private int txCss_;
        private int txFreq_;
        private int type_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements FrequencyOrBuilder {
            private int bitField0_;
            private ByteString name_;
            private int rxCss_;
            private int rxFreq_;
            private int seq_;
            private int txCss_;
            private int txFreq_;
            private int type_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4187a c4187a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BleProtos.f14501k;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearName() {
                this.bitField0_ &= -5;
                this.name_ = Frequency.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder clearRxCss() {
                this.bitField0_ &= -33;
                this.rxCss_ = 0;
                onChanged();
                return this;
            }

            public Builder clearRxFreq() {
                this.bitField0_ &= -9;
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
                this.bitField0_ &= -65;
                this.txCss_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTxFreq() {
                this.bitField0_ &= -17;
                this.txFreq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.bitField0_ &= -3;
                this.type_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BleProtos.f14501k;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public ByteString getName() {
                return this.name_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public int getRxCss() {
                return this.rxCss_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public int getRxFreq() {
                return this.rxFreq_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public int getSeq() {
                return this.seq_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public int getTxCss() {
                return this.txCss_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public int getTxFreq() {
                return this.txFreq_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public int getType() {
                return this.type_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public boolean hasName() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public boolean hasRxCss() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public boolean hasRxFreq() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public boolean hasSeq() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public boolean hasTxCss() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public boolean hasTxFreq() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
            public boolean hasType() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BleProtos.f14502l.ensureFieldAccessorsInitialized(Frequency.class, Builder.class);
            }

            public Builder setName(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRxCss(int i) {
                this.bitField0_ |= 32;
                this.rxCss_ = i;
                onChanged();
                return this;
            }

            public Builder setRxFreq(int i) {
                this.bitField0_ |= 8;
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
                this.bitField0_ |= 64;
                this.txCss_ = i;
                onChanged();
                return this;
            }

            public Builder setTxFreq(int i) {
                this.bitField0_ |= 16;
                this.txFreq_ = i;
                onChanged();
                return this;
            }

            public Builder setType(int i) {
                this.bitField0_ |= 2;
                this.type_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.name_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Frequency build() {
                Frequency buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Frequency buildPartial() {
                Frequency frequency = new Frequency(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                frequency.seq_ = this.seq_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                frequency.type_ = this.type_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                frequency.name_ = this.name_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                frequency.rxFreq_ = this.rxFreq_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                frequency.txFreq_ = this.txFreq_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                frequency.rxCss_ = this.rxCss_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                frequency.txCss_ = this.txCss_;
                frequency.bitField0_ = i2;
                onBuilt();
                return frequency;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Frequency getDefaultInstanceForType() {
                return Frequency.getDefaultInstance();
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
                this.type_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.name_ = ByteString.EMPTY;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.rxFreq_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.txFreq_ = 0;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.rxCss_ = 0;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.txCss_ = 0;
                this.bitField0_ = i6 & (-65);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$Frequency$a */
        /* loaded from: classes2.dex */
        class C4170a extends AbstractParser<Frequency> {
            C4170a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public Frequency parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = Frequency.newBuilder();
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
            Frequency frequency = new Frequency(true);
            defaultInstance = frequency;
            frequency.initFields();
        }

        /* synthetic */ Frequency(GeneratedMessage.Builder builder, C4187a c4187a) {
            this(builder);
        }

        public static Frequency getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BleProtos.f14501k;
        }

        private void initFields() {
            this.seq_ = 0;
            this.type_ = 0;
            this.name_ = ByteString.EMPTY;
            this.rxFreq_ = 0;
            this.txFreq_ = 0;
            this.rxCss_ = 0;
            this.txCss_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Frequency parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static Frequency parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public ByteString getName() {
            return this.name_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Frequency> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public int getRxCss() {
            return this.rxCss_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public int getRxFreq() {
            return this.rxFreq_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public int getSeq() {
            return this.seq_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public int getTxCss() {
            return this.txCss_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public int getTxFreq() {
            return this.txFreq_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public int getType() {
            return this.type_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public boolean hasName() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public boolean hasRxCss() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public boolean hasRxFreq() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public boolean hasSeq() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public boolean hasTxCss() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public boolean hasTxFreq() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.FrequencyOrBuilder
        public boolean hasType() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BleProtos.f14502l.ensureFieldAccessorsInitialized(Frequency.class, Builder.class);
        }

        private Frequency(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(Frequency frequency) {
            return (Builder) newBuilder().mergeFrom((Message) frequency);
        }

        public static Frequency parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Frequency parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Frequency parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Frequency getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private Frequency(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Frequency parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Frequency parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static Frequency parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Frequency parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static Frequency parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface FrequencyOrBuilder extends MessageOrBuilder {
        ByteString getName();

        int getRxCss();

        int getRxFreq();

        int getSeq();

        int getTxCss();

        int getTxFreq();

        int getType();

        boolean hasName();

        boolean hasRxCss();

        boolean hasRxFreq();

        boolean hasSeq();

        boolean hasTxCss();

        boolean hasTxFreq();

        boolean hasType();
    }

    /* loaded from: classes2.dex */
    public static final class ImportConfigFile extends GeneratedMessage implements ImportConfigFileOrBuilder {
        public static Parser<ImportConfigFile> PARSER = new C4171a();
        public static final int STATE_FIELD_NUMBER = 1;
        private static final ImportConfigFile defaultInstance;
        private int bitField0_;
        private ImportState state_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ImportConfigFileOrBuilder {
            private int bitField0_;
            private ImportState state_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4187a c4187a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BleProtos.f14513w;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearState() {
                this.bitField0_ &= -2;
                this.state_ = ImportState.ImportSTART;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BleProtos.f14513w;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ImportConfigFileOrBuilder
            public ImportState getState() {
                return this.state_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.ImportConfigFileOrBuilder
            public boolean hasState() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BleProtos.f14514x.ensureFieldAccessorsInitialized(ImportConfigFile.class, Builder.class);
            }

            public Builder setState(ImportState importState) {
                Objects.requireNonNull(importState);
                this.bitField0_ |= 1;
                this.state_ = importState;
                onChanged();
                return this;
            }

            private Builder() {
                this.state_ = ImportState.ImportSTART;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ImportConfigFile build() {
                ImportConfigFile buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ImportConfigFile buildPartial() {
                ImportConfigFile importConfigFile = new ImportConfigFile(this, null);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                importConfigFile.state_ = this.state_;
                importConfigFile.bitField0_ = i;
                onBuilt();
                return importConfigFile;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ImportConfigFile getDefaultInstanceForType() {
                return ImportConfigFile.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.state_ = ImportState.ImportSTART;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.state_ = ImportState.ImportSTART;
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$ImportConfigFile$a */
        /* loaded from: classes2.dex */
        class C4171a extends AbstractParser<ImportConfigFile> {
            C4171a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public ImportConfigFile parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = ImportConfigFile.newBuilder();
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
            ImportConfigFile importConfigFile = new ImportConfigFile(true);
            defaultInstance = importConfigFile;
            importConfigFile.initFields();
        }

        /* synthetic */ ImportConfigFile(GeneratedMessage.Builder builder, C4187a c4187a) {
            this(builder);
        }

        public static ImportConfigFile getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BleProtos.f14513w;
        }

        private void initFields() {
            this.state_ = ImportState.ImportSTART;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static ImportConfigFile parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ImportConfigFile parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ImportConfigFile> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ImportConfigFileOrBuilder
        public ImportState getState() {
            return this.state_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.ImportConfigFileOrBuilder
        public boolean hasState() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BleProtos.f14514x.ensureFieldAccessorsInitialized(ImportConfigFile.class, Builder.class);
        }

        private ImportConfigFile(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(ImportConfigFile importConfigFile) {
            return (Builder) newBuilder().mergeFrom((Message) importConfigFile);
        }

        public static ImportConfigFile parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ImportConfigFile parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ImportConfigFile parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ImportConfigFile getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private ImportConfigFile(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ImportConfigFile parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static ImportConfigFile parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ImportConfigFile parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ImportConfigFile parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ImportConfigFile parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ImportConfigFileOrBuilder extends MessageOrBuilder {
        ImportState getState();

        boolean hasState();
    }

    /* loaded from: classes2.dex */
    public enum ImportState implements ProtocolMessageEnum {
        ImportSTART(0, 0),
        ImportFINISH(1, 1);
        
        public static final int ImportFINISH_VALUE = 1;
        public static final int ImportSTART_VALUE = 0;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<ImportState> internalValueMap = new C4172a();
        private static final ImportState[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$ImportState$a */
        /* loaded from: classes2.dex */
        class C4172a implements Internal.EnumLiteMap<ImportState> {
            C4172a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public ImportState findValueByNumber(int i) {
                return ImportState.valueOf(i);
            }
        }

        ImportState(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(12);
        }

        public static Internal.EnumLiteMap<ImportState> internalGetValueMap() {
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

        public static ImportState valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    return null;
                }
                return ImportFINISH;
            }
            return ImportSTART;
        }

        public static ImportState valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum LanguageType implements ProtocolMessageEnum {
        CHINESE(0, 0),
        ENGLISH(1, 1);
        
        public static final int CHINESE_VALUE = 0;
        public static final int ENGLISH_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<LanguageType> internalValueMap = new C4173a();
        private static final LanguageType[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$LanguageType$a */
        /* loaded from: classes2.dex */
        class C4173a implements Internal.EnumLiteMap<LanguageType> {
            C4173a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public LanguageType findValueByNumber(int i) {
                return LanguageType.valueOf(i);
            }
        }

        LanguageType(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<LanguageType> internalGetValueMap() {
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

        public static LanguageType valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    return null;
                }
                return ENGLISH;
            }
            return CHINESE;
        }

        public static LanguageType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class LocationInfo extends GeneratedMessage implements LocationInfoOrBuilder {
        public static final int ALTITUDE_FIELD_NUMBER = 7;
        public static final int CTLSYNC_FIELD_NUMBER = 1;
        public static final int LATITUDE_FIELD_NUMBER = 6;
        public static final int LONGITUDE_FIELD_NUMBER = 5;
        public static Parser<LocationInfo> PARSER = new C4174a();
        public static final int RXCSS_FIELD_NUMBER = 9;
        public static final int TIMESTAMP_FIELD_NUMBER = 8;
        public static final int USERFREQ_FIELD_NUMBER = 4;
        public static final int USERID_FIELD_NUMBER = 2;
        public static final int USERNAME_FIELD_NUMBER = 3;
        private static final LocationInfo defaultInstance;
        private int altitude_;
        private int bitField0_;
        private Switch ctlsync_;
        private int latitude_;
        private int longitude_;
        private int rxCss_;
        private int timestamp_;
        private final UnknownFieldSet unknownFields;
        private int userFreq_;
        private int userId_;
        private ByteString userName_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements LocationInfoOrBuilder {
            private int altitude_;
            private int bitField0_;
            private Switch ctlsync_;
            private int latitude_;
            private int longitude_;
            private int rxCss_;
            private int timestamp_;
            private int userFreq_;
            private int userId_;
            private ByteString userName_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4187a c4187a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BleProtos.f14509s;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearAltitude() {
                this.bitField0_ &= -65;
                this.altitude_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCtlsync() {
                this.bitField0_ &= -2;
                this.ctlsync_ = Switch.OFF;
                onChanged();
                return this;
            }

            public Builder clearLatitude() {
                this.bitField0_ &= -33;
                this.latitude_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLongitude() {
                this.bitField0_ &= -17;
                this.longitude_ = 0;
                onChanged();
                return this;
            }

            public Builder clearRxCss() {
                this.bitField0_ &= -257;
                this.rxCss_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTimestamp() {
                this.bitField0_ &= -129;
                this.timestamp_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUserFreq() {
                this.bitField0_ &= -9;
                this.userFreq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -3;
                this.userId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUserName() {
                this.bitField0_ &= -5;
                this.userName_ = LocationInfo.getDefaultInstance().getUserName();
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public int getAltitude() {
                return this.altitude_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public Switch getCtlsync() {
                return this.ctlsync_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BleProtos.f14509s;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public int getLatitude() {
                return this.latitude_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public int getLongitude() {
                return this.longitude_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public int getRxCss() {
                return this.rxCss_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public int getTimestamp() {
                return this.timestamp_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public int getUserFreq() {
                return this.userFreq_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public int getUserId() {
                return this.userId_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public ByteString getUserName() {
                return this.userName_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public boolean hasAltitude() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public boolean hasCtlsync() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public boolean hasLatitude() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public boolean hasLongitude() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public boolean hasRxCss() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public boolean hasTimestamp() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public boolean hasUserFreq() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public boolean hasUserId() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
            public boolean hasUserName() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BleProtos.f14510t.ensureFieldAccessorsInitialized(LocationInfo.class, Builder.class);
            }

            public Builder setAltitude(int i) {
                this.bitField0_ |= 64;
                this.altitude_ = i;
                onChanged();
                return this;
            }

            public Builder setCtlsync(Switch r2) {
                Objects.requireNonNull(r2);
                this.bitField0_ |= 1;
                this.ctlsync_ = r2;
                onChanged();
                return this;
            }

            public Builder setLatitude(int i) {
                this.bitField0_ |= 32;
                this.latitude_ = i;
                onChanged();
                return this;
            }

            public Builder setLongitude(int i) {
                this.bitField0_ |= 16;
                this.longitude_ = i;
                onChanged();
                return this;
            }

            public Builder setRxCss(int i) {
                this.bitField0_ |= 256;
                this.rxCss_ = i;
                onChanged();
                return this;
            }

            public Builder setTimestamp(int i) {
                this.bitField0_ |= 128;
                this.timestamp_ = i;
                onChanged();
                return this;
            }

            public Builder setUserFreq(int i) {
                this.bitField0_ |= 8;
                this.userFreq_ = i;
                onChanged();
                return this;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 2;
                this.userId_ = i;
                onChanged();
                return this;
            }

            public Builder setUserName(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.userName_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.ctlsync_ = Switch.OFF;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LocationInfo build() {
                LocationInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LocationInfo buildPartial() {
                LocationInfo locationInfo = new LocationInfo(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                locationInfo.ctlsync_ = this.ctlsync_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                locationInfo.userId_ = this.userId_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                locationInfo.userName_ = this.userName_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                locationInfo.userFreq_ = this.userFreq_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                locationInfo.longitude_ = this.longitude_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                locationInfo.latitude_ = this.latitude_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                locationInfo.altitude_ = this.altitude_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                locationInfo.timestamp_ = this.timestamp_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                locationInfo.rxCss_ = this.rxCss_;
                locationInfo.bitField0_ = i2;
                onBuilt();
                return locationInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LocationInfo getDefaultInstanceForType() {
                return LocationInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.ctlsync_ = Switch.OFF;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.userId_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.userName_ = ByteString.EMPTY;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.userFreq_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.longitude_ = 0;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.latitude_ = 0;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.altitude_ = 0;
                int i7 = i6 & (-65);
                this.bitField0_ = i7;
                this.timestamp_ = 0;
                int i8 = i7 & (-129);
                this.bitField0_ = i8;
                this.rxCss_ = 0;
                this.bitField0_ = i8 & (-257);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.ctlsync_ = Switch.OFF;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$LocationInfo$a */
        /* loaded from: classes2.dex */
        class C4174a extends AbstractParser<LocationInfo> {
            C4174a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public LocationInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = LocationInfo.newBuilder();
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
            LocationInfo locationInfo = new LocationInfo(true);
            defaultInstance = locationInfo;
            locationInfo.initFields();
        }

        /* synthetic */ LocationInfo(GeneratedMessage.Builder builder, C4187a c4187a) {
            this(builder);
        }

        public static LocationInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BleProtos.f14509s;
        }

        private void initFields() {
            this.ctlsync_ = Switch.OFF;
            this.userId_ = 0;
            this.userName_ = ByteString.EMPTY;
            this.userFreq_ = 0;
            this.longitude_ = 0;
            this.latitude_ = 0;
            this.altitude_ = 0;
            this.timestamp_ = 0;
            this.rxCss_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static LocationInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static LocationInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public int getAltitude() {
            return this.altitude_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public Switch getCtlsync() {
            return this.ctlsync_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public int getLatitude() {
            return this.latitude_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public int getLongitude() {
            return this.longitude_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<LocationInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public int getRxCss() {
            return this.rxCss_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public int getTimestamp() {
            return this.timestamp_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public int getUserFreq() {
            return this.userFreq_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public int getUserId() {
            return this.userId_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public ByteString getUserName() {
            return this.userName_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public boolean hasAltitude() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public boolean hasCtlsync() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public boolean hasLatitude() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public boolean hasLongitude() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public boolean hasRxCss() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public boolean hasTimestamp() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public boolean hasUserFreq() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public boolean hasUserId() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.LocationInfoOrBuilder
        public boolean hasUserName() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BleProtos.f14510t.ensureFieldAccessorsInitialized(LocationInfo.class, Builder.class);
        }

        private LocationInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(LocationInfo locationInfo) {
            return (Builder) newBuilder().mergeFrom((Message) locationInfo);
        }

        public static LocationInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static LocationInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static LocationInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LocationInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private LocationInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static LocationInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static LocationInfo parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static LocationInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static LocationInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static LocationInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface LocationInfoOrBuilder extends MessageOrBuilder {
        int getAltitude();

        Switch getCtlsync();

        int getLatitude();

        int getLongitude();

        int getRxCss();

        int getTimestamp();

        int getUserFreq();

        int getUserId();

        ByteString getUserName();

        boolean hasAltitude();

        boolean hasCtlsync();

        boolean hasLatitude();

        boolean hasLongitude();

        boolean hasRxCss();

        boolean hasTimestamp();

        boolean hasUserFreq();

        boolean hasUserId();

        boolean hasUserName();
    }

    /* loaded from: classes2.dex */
    public enum MicSensitivity implements ProtocolMessageEnum {
        MIC_LOW(0, 0),
        MIC_MIDDLE(1, 1),
        MIC_HIGH(2, 2);
        
        public static final int MIC_HIGH_VALUE = 2;
        public static final int MIC_LOW_VALUE = 0;
        public static final int MIC_MIDDLE_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<MicSensitivity> internalValueMap = new C4175a();
        private static final MicSensitivity[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$MicSensitivity$a */
        /* loaded from: classes2.dex */
        class C4175a implements Internal.EnumLiteMap<MicSensitivity> {
            C4175a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public MicSensitivity findValueByNumber(int i) {
                return MicSensitivity.valueOf(i);
            }
        }

        MicSensitivity(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(9);
        }

        public static Internal.EnumLiteMap<MicSensitivity> internalGetValueMap() {
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

        public static MicSensitivity valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        return null;
                    }
                    return MIC_HIGH;
                }
                return MIC_MIDDLE;
            }
            return MIC_LOW;
        }

        public static MicSensitivity valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class OtaInfo extends GeneratedMessage implements OtaInfoOrBuilder {
        public static final int FSIZE_FIELD_NUMBER = 1;
        public static Parser<OtaInfo> PARSER = new C4176a();
        public static final int STATE_FIELD_NUMBER = 2;
        private static final OtaInfo defaultInstance;
        private int bitField0_;
        private int fSize_;
        private OtaState state_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements OtaInfoOrBuilder {
            private int bitField0_;
            private int fSize_;
            private OtaState state_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4187a c4187a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BleProtos.f14511u;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearFSize() {
                this.bitField0_ &= -2;
                this.fSize_ = 0;
                onChanged();
                return this;
            }

            public Builder clearState() {
                this.bitField0_ &= -3;
                this.state_ = OtaState.START;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BleProtos.f14511u;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.OtaInfoOrBuilder
            public int getFSize() {
                return this.fSize_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.OtaInfoOrBuilder
            public OtaState getState() {
                return this.state_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.OtaInfoOrBuilder
            public boolean hasFSize() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.OtaInfoOrBuilder
            public boolean hasState() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BleProtos.f14512v.ensureFieldAccessorsInitialized(OtaInfo.class, Builder.class);
            }

            public Builder setFSize(int i) {
                this.bitField0_ |= 1;
                this.fSize_ = i;
                onChanged();
                return this;
            }

            public Builder setState(OtaState otaState) {
                Objects.requireNonNull(otaState);
                this.bitField0_ |= 2;
                this.state_ = otaState;
                onChanged();
                return this;
            }

            private Builder() {
                this.state_ = OtaState.START;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public OtaInfo build() {
                OtaInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public OtaInfo buildPartial() {
                OtaInfo otaInfo = new OtaInfo(this, null);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                otaInfo.fSize_ = this.fSize_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                otaInfo.state_ = this.state_;
                otaInfo.bitField0_ = i2;
                onBuilt();
                return otaInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public OtaInfo getDefaultInstanceForType() {
                return OtaInfo.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.state_ = OtaState.START;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.fSize_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.state_ = OtaState.START;
                this.bitField0_ = i & (-3);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$OtaInfo$a */
        /* loaded from: classes2.dex */
        class C4176a extends AbstractParser<OtaInfo> {
            C4176a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public OtaInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = OtaInfo.newBuilder();
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
            OtaInfo otaInfo = new OtaInfo(true);
            defaultInstance = otaInfo;
            otaInfo.initFields();
        }

        /* synthetic */ OtaInfo(GeneratedMessage.Builder builder, C4187a c4187a) {
            this(builder);
        }

        public static OtaInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BleProtos.f14511u;
        }

        private void initFields() {
            this.fSize_ = 0;
            this.state_ = OtaState.START;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static OtaInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static OtaInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.OtaInfoOrBuilder
        public int getFSize() {
            return this.fSize_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<OtaInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.OtaInfoOrBuilder
        public OtaState getState() {
            return this.state_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.OtaInfoOrBuilder
        public boolean hasFSize() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.OtaInfoOrBuilder
        public boolean hasState() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BleProtos.f14512v.ensureFieldAccessorsInitialized(OtaInfo.class, Builder.class);
        }

        private OtaInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(OtaInfo otaInfo) {
            return (Builder) newBuilder().mergeFrom((Message) otaInfo);
        }

        public static OtaInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static OtaInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static OtaInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public OtaInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private OtaInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static OtaInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static OtaInfo parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static OtaInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static OtaInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static OtaInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface OtaInfoOrBuilder extends MessageOrBuilder {
        int getFSize();

        OtaState getState();

        boolean hasFSize();

        boolean hasState();
    }

    /* loaded from: classes2.dex */
    public enum OtaState implements ProtocolMessageEnum {
        START(0, 0),
        END(1, 1);
        
        public static final int END_VALUE = 1;
        public static final int START_VALUE = 0;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<OtaState> internalValueMap = new C4177a();
        private static final OtaState[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$OtaState$a */
        /* loaded from: classes2.dex */
        class C4177a implements Internal.EnumLiteMap<OtaState> {
            C4177a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public OtaState findValueByNumber(int i) {
                return OtaState.valueOf(i);
            }
        }

        OtaState(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(11);
        }

        public static Internal.EnumLiteMap<OtaState> internalGetValueMap() {
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

        public static OtaState valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    return null;
                }
                return END;
            }
            return START;
        }

        public static OtaState valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class PttOperate extends GeneratedMessage implements PttOperateOrBuilder {
        public static final int OPERATE_FIELD_NUMBER = 1;
        public static Parser<PttOperate> PARSER = new C4178a();
        private static final PttOperate defaultInstance;
        private int bitField0_;
        private PttOperateType operate_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements PttOperateOrBuilder {
            private int bitField0_;
            private PttOperateType operate_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4187a c4187a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BleProtos.f14503m;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearOperate() {
                this.bitField0_ &= -2;
                this.operate_ = PttOperateType.PRESSDOWN;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BleProtos.f14503m;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.PttOperateOrBuilder
            public PttOperateType getOperate() {
                return this.operate_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.PttOperateOrBuilder
            public boolean hasOperate() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BleProtos.f14504n.ensureFieldAccessorsInitialized(PttOperate.class, Builder.class);
            }

            public Builder setOperate(PttOperateType pttOperateType) {
                Objects.requireNonNull(pttOperateType);
                this.bitField0_ |= 1;
                this.operate_ = pttOperateType;
                onChanged();
                return this;
            }

            private Builder() {
                this.operate_ = PttOperateType.PRESSDOWN;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PttOperate build() {
                PttOperate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PttOperate buildPartial() {
                PttOperate pttOperate = new PttOperate(this, null);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                pttOperate.operate_ = this.operate_;
                pttOperate.bitField0_ = i;
                onBuilt();
                return pttOperate;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PttOperate getDefaultInstanceForType() {
                return PttOperate.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.operate_ = PttOperateType.PRESSDOWN;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.operate_ = PttOperateType.PRESSDOWN;
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$PttOperate$a */
        /* loaded from: classes2.dex */
        class C4178a extends AbstractParser<PttOperate> {
            C4178a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public PttOperate parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = PttOperate.newBuilder();
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
            PttOperate pttOperate = new PttOperate(true);
            defaultInstance = pttOperate;
            pttOperate.initFields();
        }

        /* synthetic */ PttOperate(GeneratedMessage.Builder builder, C4187a c4187a) {
            this(builder);
        }

        public static PttOperate getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BleProtos.f14503m;
        }

        private void initFields() {
            this.operate_ = PttOperateType.PRESSDOWN;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static PttOperate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static PttOperate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.PttOperateOrBuilder
        public PttOperateType getOperate() {
            return this.operate_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<PttOperate> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.PttOperateOrBuilder
        public boolean hasOperate() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BleProtos.f14504n.ensureFieldAccessorsInitialized(PttOperate.class, Builder.class);
        }

        private PttOperate(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(PttOperate pttOperate) {
            return (Builder) newBuilder().mergeFrom((Message) pttOperate);
        }

        public static PttOperate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static PttOperate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static PttOperate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PttOperate getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private PttOperate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static PttOperate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static PttOperate parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static PttOperate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static PttOperate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static PttOperate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface PttOperateOrBuilder extends MessageOrBuilder {
        PttOperateType getOperate();

        boolean hasOperate();
    }

    /* loaded from: classes2.dex */
    public enum PttOperateType implements ProtocolMessageEnum {
        PRESSDOWN(0, 0),
        RELEASE(1, 1);
        
        public static final int PRESSDOWN_VALUE = 0;
        public static final int RELEASE_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<PttOperateType> internalValueMap = new C4179a();
        private static final PttOperateType[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$PttOperateType$a */
        /* loaded from: classes2.dex */
        class C4179a implements Internal.EnumLiteMap<PttOperateType> {
            C4179a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public PttOperateType findValueByNumber(int i) {
                return PttOperateType.valueOf(i);
            }
        }

        PttOperateType(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(5);
        }

        public static Internal.EnumLiteMap<PttOperateType> internalGetValueMap() {
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

        public static PttOperateType valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    return null;
                }
                return RELEASE;
            }
            return PRESSDOWN;
        }

        public static PttOperateType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class PublicKey extends GeneratedMessage implements PublicKeyOrBuilder {
        public static Parser<PublicKey> PARSER = new C4180a();
        public static final int VALUE_FIELD_NUMBER = 1;
        private static final PublicKey defaultInstance;
        private int bitField0_;
        private final UnknownFieldSet unknownFields;
        private ByteString value_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements PublicKeyOrBuilder {
            private int bitField0_;
            private ByteString value_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4187a c4187a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BleProtos.f14491a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearValue() {
                this.bitField0_ &= -2;
                this.value_ = PublicKey.getDefaultInstance().getValue();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BleProtos.f14491a;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.PublicKeyOrBuilder
            public ByteString getValue() {
                return this.value_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.PublicKeyOrBuilder
            public boolean hasValue() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BleProtos.f14492b.ensureFieldAccessorsInitialized(PublicKey.class, Builder.class);
            }

            public Builder setValue(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 1;
                this.value_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.value_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PublicKey build() {
                PublicKey buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public PublicKey buildPartial() {
                PublicKey publicKey = new PublicKey(this, null);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                publicKey.value_ = this.value_;
                publicKey.bitField0_ = i;
                onBuilt();
                return publicKey;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public PublicKey getDefaultInstanceForType() {
                return PublicKey.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.value_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.value_ = ByteString.EMPTY;
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$PublicKey$a */
        /* loaded from: classes2.dex */
        class C4180a extends AbstractParser<PublicKey> {
            C4180a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public PublicKey parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = PublicKey.newBuilder();
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
            PublicKey publicKey = new PublicKey(true);
            defaultInstance = publicKey;
            publicKey.initFields();
        }

        /* synthetic */ PublicKey(GeneratedMessage.Builder builder, C4187a c4187a) {
            this(builder);
        }

        public static PublicKey getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BleProtos.f14491a;
        }

        private void initFields() {
            this.value_ = ByteString.EMPTY;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static PublicKey parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static PublicKey parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<PublicKey> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.PublicKeyOrBuilder
        public ByteString getValue() {
            return this.value_;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.PublicKeyOrBuilder
        public boolean hasValue() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BleProtos.f14492b.ensureFieldAccessorsInitialized(PublicKey.class, Builder.class);
        }

        private PublicKey(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(PublicKey publicKey) {
            return (Builder) newBuilder().mergeFrom((Message) publicKey);
        }

        public static PublicKey parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static PublicKey parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static PublicKey parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public PublicKey getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private PublicKey(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static PublicKey parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static PublicKey parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static PublicKey parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static PublicKey parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static PublicKey parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface PublicKeyOrBuilder extends MessageOrBuilder {
        ByteString getValue();

        boolean hasValue();
    }

    /* loaded from: classes2.dex */
    public enum SqType implements ProtocolMessageEnum {
        SQ_OFF(0, 0),
        SQ_NORMAL(1, 1),
        SQ_SENSITIVE(2, 2);
        
        public static final int SQ_NORMAL_VALUE = 1;
        public static final int SQ_OFF_VALUE = 0;
        public static final int SQ_SENSITIVE_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<SqType> internalValueMap = new C4181a();
        private static final SqType[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$SqType$a */
        /* loaded from: classes2.dex */
        class C4181a implements Internal.EnumLiteMap<SqType> {
            C4181a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public SqType findValueByNumber(int i) {
                return SqType.valueOf(i);
            }
        }

        SqType(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(10);
        }

        public static Internal.EnumLiteMap<SqType> internalGetValueMap() {
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

        public static SqType valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        return null;
                    }
                    return SQ_SENSITIVE;
                }
                return SQ_NORMAL;
            }
            return SQ_OFF;
        }

        public static SqType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum Switch implements ProtocolMessageEnum {
        OFF(0, 0),
        ON(1, 1);
        
        public static final int OFF_VALUE = 0;
        public static final int ON_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<Switch> internalValueMap = new C4182a();
        private static final Switch[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$Switch$a */
        /* loaded from: classes2.dex */
        class C4182a implements Internal.EnumLiteMap<Switch> {
            C4182a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public Switch findValueByNumber(int i) {
                return Switch.valueOf(i);
            }
        }

        Switch(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(1);
        }

        public static Internal.EnumLiteMap<Switch> internalGetValueMap() {
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

        public static Switch valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    return null;
                }
                return ON;
            }
            return OFF;
        }

        public static Switch valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum VoiceType implements ProtocolMessageEnum {
        VOICE_CLOSE(0, 0),
        VOICE_CHINESE(1, 1),
        VOICE_ENGLISH(2, 2);
        
        public static final int VOICE_CHINESE_VALUE = 1;
        public static final int VOICE_CLOSE_VALUE = 0;
        public static final int VOICE_ENGLISH_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<VoiceType> internalValueMap = new C4183a();
        private static final VoiceType[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$VoiceType$a */
        /* loaded from: classes2.dex */
        class C4183a implements Internal.EnumLiteMap<VoiceType> {
            C4183a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public VoiceType findValueByNumber(int i) {
                return VoiceType.valueOf(i);
            }
        }

        VoiceType(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(4);
        }

        public static Internal.EnumLiteMap<VoiceType> internalGetValueMap() {
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

        public static VoiceType valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        return null;
                    }
                    return VOICE_ENGLISH;
                }
                return VOICE_CHINESE;
            }
            return VOICE_CLOSE;
        }

        public static VoiceType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class VolumeOperate extends GeneratedMessage implements VolumeOperateOrBuilder {
        public static final int OPERATE_FIELD_NUMBER = 1;
        public static Parser<VolumeOperate> PARSER = new C4184a();
        private static final VolumeOperate defaultInstance;
        private int bitField0_;
        private VolumeOperateType operate_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements VolumeOperateOrBuilder {
            private int bitField0_;
            private VolumeOperateType operate_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, C4187a c4187a) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return BleProtos.f14505o;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearOperate() {
                this.bitField0_ &= -2;
                this.operate_ = VolumeOperateType.TURN_DOWN;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return BleProtos.f14505o;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.VolumeOperateOrBuilder
            public VolumeOperateType getOperate() {
                return this.operate_;
            }

            @Override // com.ifengyu.intercom.protos.BleProtos.VolumeOperateOrBuilder
            public boolean hasOperate() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return BleProtos.f14506p.ensureFieldAccessorsInitialized(VolumeOperate.class, Builder.class);
            }

            public Builder setOperate(VolumeOperateType volumeOperateType) {
                Objects.requireNonNull(volumeOperateType);
                this.bitField0_ |= 1;
                this.operate_ = volumeOperateType;
                onChanged();
                return this;
            }

            private Builder() {
                this.operate_ = VolumeOperateType.TURN_DOWN;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public VolumeOperate build() {
                VolumeOperate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public VolumeOperate buildPartial() {
                VolumeOperate volumeOperate = new VolumeOperate(this, null);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                volumeOperate.operate_ = this.operate_;
                volumeOperate.bitField0_ = i;
                onBuilt();
                return volumeOperate;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public VolumeOperate getDefaultInstanceForType() {
                return VolumeOperate.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.operate_ = VolumeOperateType.TURN_DOWN;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.operate_ = VolumeOperateType.TURN_DOWN;
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* renamed from: clone */
            public Builder mo26550clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$VolumeOperate$a */
        /* loaded from: classes2.dex */
        class C4184a extends AbstractParser<VolumeOperate> {
            C4184a() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: a */
            public VolumeOperate parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = VolumeOperate.newBuilder();
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
            VolumeOperate volumeOperate = new VolumeOperate(true);
            defaultInstance = volumeOperate;
            volumeOperate.initFields();
        }

        /* synthetic */ VolumeOperate(GeneratedMessage.Builder builder, C4187a c4187a) {
            this(builder);
        }

        public static VolumeOperate getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return BleProtos.f14505o;
        }

        private void initFields() {
            this.operate_ = VolumeOperateType.TURN_DOWN;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static VolumeOperate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static VolumeOperate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.VolumeOperateOrBuilder
        public VolumeOperateType getOperate() {
            return this.operate_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<VolumeOperate> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.BleProtos.VolumeOperateOrBuilder
        public boolean hasOperate() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return BleProtos.f14506p.ensureFieldAccessorsInitialized(VolumeOperate.class, Builder.class);
        }

        private VolumeOperate(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(VolumeOperate volumeOperate) {
            return (Builder) newBuilder().mergeFrom((Message) volumeOperate);
        }

        public static VolumeOperate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static VolumeOperate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static VolumeOperate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public VolumeOperate getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private VolumeOperate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static VolumeOperate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static VolumeOperate parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static VolumeOperate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static VolumeOperate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static VolumeOperate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface VolumeOperateOrBuilder extends MessageOrBuilder {
        VolumeOperateType getOperate();

        boolean hasOperate();
    }

    /* loaded from: classes2.dex */
    public enum VolumeOperateType implements ProtocolMessageEnum {
        TURN_DOWN(0, 0),
        TURN_UP(1, 1);
        
        public static final int TURN_DOWN_VALUE = 0;
        public static final int TURN_UP_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<VolumeOperateType> internalValueMap = new C4185a();
        private static final VolumeOperateType[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$VolumeOperateType$a */
        /* loaded from: classes2.dex */
        class C4185a implements Internal.EnumLiteMap<VolumeOperateType> {
            C4185a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public VolumeOperateType findValueByNumber(int i) {
                return VolumeOperateType.valueOf(i);
            }
        }

        VolumeOperateType(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(6);
        }

        public static Internal.EnumLiteMap<VolumeOperateType> internalGetValueMap() {
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

        public static VolumeOperateType valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    return null;
                }
                return TURN_UP;
            }
            return TURN_DOWN;
        }

        public static VolumeOperateType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum VoxType implements ProtocolMessageEnum {
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
        private static Internal.EnumLiteMap<VoxType> internalValueMap = new C4186a();
        private static final VoxType[] VALUES = values();

        /* renamed from: com.ifengyu.intercom.protos.BleProtos$VoxType$a */
        /* loaded from: classes2.dex */
        class C4186a implements Internal.EnumLiteMap<VoxType> {
            C4186a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: a */
            public VoxType findValueByNumber(int i) {
                return VoxType.valueOf(i);
            }
        }

        VoxType(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return BleProtos.m11014z().getEnumTypes().get(2);
        }

        public static Internal.EnumLiteMap<VoxType> internalGetValueMap() {
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

        public static VoxType valueOf(int i) {
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

        public static VoxType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.protos.BleProtos$a */
    /* loaded from: classes2.dex */
    public class C4187a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        C4187a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = BleProtos.f14515y = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\ffengyu.proto\u0012\u0006protos\"\u001a\n\tPublicKey\u0012\r\n\u0005value\u0018\u0001 \u0001(\f\"h\n\u000bConnectInfo\u0012\r\n\u0005token\u0018\u0001 \u0001(\f\u0012\u000b\n\u0003key\u0018\u0002 \u0001(\f\u0012\n\n\u0002iv\u0018\u0003 \u0001(\f\u0012\u000b\n\u0003mac\u0018\u0004 \u0001(\f\u0012\u0010\n\bdeviceId\u0018\u0005 \u0001(\r\u0012\u0012\n\ndeviceType\u0018\u0006 \u0001(\r\"ð\u0002\n\fDeviceConfig\u0012&\n\blangType\u0018\u0001 \u0001(\u000e2\u0014.protos.LanguageType\u0012\"\n\npowerVoice\u0018\u0002 \u0001(\u000e2\u000e.protos.Switch\u0012 \n\bkeyVoice\u0018\u0003 \u0001(\u000e2\u000e.protos.Switch\u0012 \n\bshareLoc\u0018\u0004 \u0001(\u000e2\u000e.protos.Switch\u0012!\n\tcallVoice\u0018\u0005 \u0001(\u000e2\u000e.protos.Switch\u0012$\n\tvoiceType\u0018\u0006 \u0001(\u000e2\u0011.protos.VoiceType\u0012 \n\bautoLo", "ck\u0018\u0007 \u0001(\u000e2\u000e.protos.Switch\u0012#\n\u000bbatchConfig\u0018\b \u0001(\u000e2\u000e.protos.Switch\u0012\f\n\u0004name\u0018\t \u0001(\f\u0012!\n\tpowerSave\u0018\n \u0001(\u000e2\u000e.protos.Switch\u0012\u000f\n\u0007advName\u0018\u000b \u0001(\f\"\u0097\u0002\n\u000eDeviceTalkInfo\u0012\u001a\n\u0002sq\u0018\u0001 \u0001(\u000e2\u000e.protos.SqType\u0012\u001c\n\u0003vox\u0018\u0002 \u0001(\u000e2\u000f.protos.VoxType\u0012\u001e\n\u0004band\u0018\u0003 \u0001(\u000e2\u0010.protos.BandType\u0012\u001e\n\u0006polite\u0018\u0004 \u0001(\u000e2\u000e.protos.Switch\u0012\u001c\n\u0004elim\u0018\u0005 \u0001(\u000e2\u000e.protos.Switch\u0012\u0010\n\blimtTime\u0018\u0006 \u0001(\r\u0012'\n\u0007sensity\u0018\u0007 \u0001(\u000e2\u0016.protos.MicSensitivity\u0012 \n\bdoubleCh\u0018\b \u0001(\u000e2\u000e.protos.Switch\u0012\u0010\n\bcurCh", "Seq\u0018\t \u0001(\r\"\u008e\u0002\n\nDeviceInfo\u0012\r\n\u0005verHw\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007verSoft\u0018\u0002 \u0001(\r\u0012\u0010\n\bdeviceId\u0018\u0003 \u0001(\r\u0012 \n\u0005color\u0018\u0004 \u0001(\u000e2\u0011.protos.ColorType\u0012\u0012\n\ndeviceType\u0018\u0005 \u0001(\r\u0012\u000b\n\u0003mac\u0018\u0006 \u0001(\f\u0012\u000f\n\u0007battery\u0018\u0007 \u0001(\r\u0012&\n\ndeviceMode\u0018\b \u0001(\u000e2\u0012.protos.DeviceMode\u0012(\n\nconfigInfo\u0018\t \u0001(\u000b2\u0014.protos.DeviceConfig\u0012(\n\btalkInfo\u0018\n \u0001(\u000b2\u0016.protos.DeviceTalkInfo\"r\n\tFrequency\u0012\u000b\n\u0003seq\u0018\u0001 \u0001(\r\u0012\f\n\u0004type\u0018\u0002 \u0001(\r\u0012\f\n\u0004name\u0018\u0003 \u0001(\f\u0012\u000e\n\u0006rxFreq\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006txFreq\u0018\u0005 \u0001(\r\u0012\r\n\u0005rxCss\u0018\u0006 \u0001(\r\u0012\r\n\u0005txCss\u0018\u0007 \u0001(\r\"5", "\n\nPttOperate\u0012'\n\u0007operate\u0018\u0001 \u0001(\u000e2\u0016.protos.PttOperateType\";\n\rVolumeOperate\u0012*\n\u0007operate\u0018\u0001 \u0001(\u000e2\u0019.protos.VolumeOperateType\"I\n\u0007Channel\u0012\u001e\n\u0003ch1\u0018\u0001 \u0001(\u000b2\u0011.protos.Frequency\u0012\u001e\n\u0003ch2\u0018\u0002 \u0001(\u000b2\u0011.protos.Frequency\"¼\u0001\n\fLocationInfo\u0012\u001f\n\u0007ctlsync\u0018\u0001 \u0001(\u000e2\u000e.protos.Switch\u0012\u000e\n\u0006userId\u0018\u0002 \u0001(\r\u0012\u0010\n\buserName\u0018\u0003 \u0001(\f\u0012\u0010\n\buserFreq\u0018\u0004 \u0001(\r\u0012\u0011\n\tlongitude\u0018\u0005 \u0001(\u0011\u0012\u0010\n\blatitude\u0018\u0006 \u0001(\u0011\u0012\u0010\n\baltitude\u0018\u0007 \u0001(\u0011\u0012\u0011\n\ttimestamp\u0018\b \u0001(\r\u0012\r\n\u0005rxCss\u0018\t \u0001(\r\"9\n\u0007OtaInfo\u0012\r\n\u0005fSize", "\u0018\u0001 \u0001(\r\u0012\u001f\n\u0005state\u0018\u0002 \u0001(\u000e2\u0010.protos.OtaState\"6\n\u0010ImportConfigFile\u0012\"\n\u0005state\u0018\u0001 \u0001(\u000e2\u0013.protos.ImportState*(\n\fLanguageType\u0012\u000b\n\u0007CHINESE\u0010\u0000\u0012\u000b\n\u0007ENGLISH\u0010\u0001*\u0019\n\u0006Switch\u0012\u0007\n\u0003OFF\u0010\u0000\u0012\u0006\n\u0002ON\u0010\u0001*C\n\u0007VoxType\u0012\u000b\n\u0007VOX_OFF\u0010\u0000\u0012\u000b\n\u0007VOX_LOW\u0010\u0001\u0012\u000e\n\nVOX_MIDDLE\u0010\u0002\u0012\u000e\n\nVOX_HEIGHT\u0010\u0003*[\n\nDeviceMode\u0012\u0010\n\fMODEL_NORMAL\u0010\u0000\u0012\u000b\n\u0007SCAN_CH\u0010\u0001\u0012\r\n\tSCAN_FREQ\u0010\u0002\u0012\u0010\n\fBATCH_CONFIG\u0010\u0003\u0012\r\n\tSYNC_FREQ\u0010\u0004*B\n\tVoiceType\u0012\u000f\n\u000bVOICE_CLOSE\u0010\u0000\u0012\u0011\n\rVOICE_CHINESE\u0010\u0001\u0012\u0011\n\rVOICE_ENGLISH\u0010\u0002*,\n\u000ePt", "tOperateType\u0012\r\n\tPRESSDOWN\u0010\u0000\u0012\u000b\n\u0007RELEASE\u0010\u0001*/\n\u0011VolumeOperateType\u0012\r\n\tTURN_DOWN\u0010\u0000\u0012\u000b\n\u0007TURN_UP\u0010\u0001*:\n\tColorType\u0012\t\n\u0005WHITE\u0010\u0000\u0012\b\n\u0004BLUE\u0010\u0001\u0012\t\n\u0005BLACK\u0010\u0002\u0012\r\n\tSPACEGRAY\u0010\u0003**\n\bBandType\u0012\u000f\n\u000bBAND_NARROW\u0010\u0000\u0012\r\n\tBAND_WIDE\u0010\u0001*;\n\u000eMicSensitivity\u0012\u000b\n\u0007MIC_LOW\u0010\u0000\u0012\u000e\n\nMIC_MIDDLE\u0010\u0001\u0012\f\n\bMIC_HIGH\u0010\u0002*5\n\u0006SqType\u0012\n\n\u0006SQ_OFF\u0010\u0000\u0012\r\n\tSQ_NORMAL\u0010\u0001\u0012\u0010\n\fSQ_SENSITIVE\u0010\u0002*\u001e\n\bOtaState\u0012\t\n\u0005START\u0010\u0000\u0012\u0007\n\u0003END\u0010\u0001*0\n\u000bImportState\u0012\u000f\n\u000bImportSTART\u0010\u0000\u0012\u0010\n\fImportFINISH\u0010\u0001B*\n\u001bcom.i", "fengyu.intercom.protosB\tBleProtosH\u0002"}, new Descriptors.FileDescriptor[0], new C4187a());
        Descriptors.Descriptor descriptor = m11014z().getMessageTypes().get(0);
        f14491a = descriptor;
        f14492b = new GeneratedMessage.FieldAccessorTable(descriptor, new String[]{"Value"});
        Descriptors.Descriptor descriptor2 = m11014z().getMessageTypes().get(1);
        f14493c = descriptor2;
        f14494d = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Token", "Key", "Iv", "Mac", "DeviceId", "DeviceType"});
        Descriptors.Descriptor descriptor3 = m11014z().getMessageTypes().get(2);
        f14495e = descriptor3;
        f14496f = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"LangType", "PowerVoice", "KeyVoice", "ShareLoc", "CallVoice", "VoiceType", "AutoLock", "BatchConfig", "Name", "PowerSave", "AdvName"});
        Descriptors.Descriptor descriptor4 = m11014z().getMessageTypes().get(3);
        f14497g = descriptor4;
        f14498h = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Sq", "Vox", "Band", "Polite", "Elim", "LimtTime", "Sensity", "DoubleCh", "CurChSeq"});
        Descriptors.Descriptor descriptor5 = m11014z().getMessageTypes().get(4);
        f14499i = descriptor5;
        f14500j = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"VerHw", "VerSoft", "DeviceId", "Color", "DeviceType", "Mac", "Battery", "DeviceMode", "ConfigInfo", "TalkInfo"});
        Descriptors.Descriptor descriptor6 = m11014z().getMessageTypes().get(5);
        f14501k = descriptor6;
        f14502l = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Seq", "Type", "Name", "RxFreq", "TxFreq", "RxCss", "TxCss"});
        Descriptors.Descriptor descriptor7 = m11014z().getMessageTypes().get(6);
        f14503m = descriptor7;
        f14504n = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Operate"});
        Descriptors.Descriptor descriptor8 = m11014z().getMessageTypes().get(7);
        f14505o = descriptor8;
        f14506p = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Operate"});
        Descriptors.Descriptor descriptor9 = m11014z().getMessageTypes().get(8);
        f14507q = descriptor9;
        f14508r = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Ch1", "Ch2"});
        Descriptors.Descriptor descriptor10 = m11014z().getMessageTypes().get(9);
        f14509s = descriptor10;
        f14510t = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Ctlsync", "UserId", "UserName", "UserFreq", "Longitude", "Latitude", "Altitude", "Timestamp", "RxCss"});
        Descriptors.Descriptor descriptor11 = m11014z().getMessageTypes().get(10);
        f14511u = descriptor11;
        f14512v = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"FSize", "State"});
        Descriptors.Descriptor descriptor12 = m11014z().getMessageTypes().get(11);
        f14513w = descriptor12;
        f14514x = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"State"});
    }

    /* renamed from: z */
    public static Descriptors.FileDescriptor m11014z() {
        return f14515y;
    }
}
