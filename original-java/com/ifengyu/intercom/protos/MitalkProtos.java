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
public final class MitalkProtos {
    private static Descriptors.FileDescriptor A;

    /* renamed from: a  reason: collision with root package name */
    private static final Descriptors.Descriptor f5976a;

    /* renamed from: b  reason: collision with root package name */
    private static GeneratedMessage.FieldAccessorTable f5977b;

    /* renamed from: c  reason: collision with root package name */
    private static final Descriptors.Descriptor f5978c;
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
    public enum CHOPTION implements ProtocolMessageEnum {
        CH_INSERT(0, 0),
        CH_DELETE(1, 1),
        CH_MODIFY(2, 2),
        CH_QUERY(3, 3),
        ST_UPDATE(4, 4),
        ST_QUERY(5, 5);
        
        public static final int CH_DELETE_VALUE = 1;
        public static final int CH_INSERT_VALUE = 0;
        public static final int CH_MODIFY_VALUE = 2;
        public static final int CH_QUERY_VALUE = 3;
        public static final int ST_QUERY_VALUE = 5;
        public static final int ST_UPDATE_VALUE = 4;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<CHOPTION> internalValueMap = new a();
        private static final CHOPTION[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<CHOPTION> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public CHOPTION findValueByNumber(int i) {
                return CHOPTION.valueOf(i);
            }
        }

        CHOPTION(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return MitalkProtos.A().getEnumTypes().get(5);
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
            if (i == 0) {
                return CH_INSERT;
            }
            if (i == 1) {
                return CH_DELETE;
            }
            if (i == 2) {
                return CH_MODIFY;
            }
            if (i == 3) {
                return CH_QUERY;
            }
            if (i == 4) {
                return ST_UPDATE;
            }
            if (i != 5) {
                return null;
            }
            return ST_QUERY;
        }

        public static CHOPTION valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum CHTYPE implements ProtocolMessageEnum {
        PRESET(0, 0),
        PUBLIC(1, 1),
        USERDEFINE(2, 2),
        RADIO(3, 3),
        SOS(4, 4),
        TEMP(5, 5),
        TEAM(6, 6),
        SCAN(7, 7),
        RELAY(8, 8);
        
        public static final int PRESET_VALUE = 0;
        public static final int PUBLIC_VALUE = 1;
        public static final int RADIO_VALUE = 3;
        public static final int RELAY_VALUE = 8;
        public static final int SCAN_VALUE = 7;
        public static final int SOS_VALUE = 4;
        public static final int TEAM_VALUE = 6;
        public static final int TEMP_VALUE = 5;
        public static final int USERDEFINE_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<CHTYPE> internalValueMap = new a();
        private static final CHTYPE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<CHTYPE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public CHTYPE findValueByNumber(int i) {
                return CHTYPE.valueOf(i);
            }
        }

        CHTYPE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return MitalkProtos.A().getEnumTypes().get(6);
        }

        public static Internal.EnumLiteMap<CHTYPE> internalGetValueMap() {
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

        public static CHTYPE valueOf(int i) {
            switch (i) {
                case 0:
                    return PRESET;
                case 1:
                    return PUBLIC;
                case 2:
                    return USERDEFINE;
                case 3:
                    return RADIO;
                case 4:
                    return SOS;
                case 5:
                    return TEMP;
                case 6:
                    return TEAM;
                case 7:
                    return SCAN;
                case 8:
                    return RELAY;
                default:
                    return null;
            }
        }

        public static CHTYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum CONNCODE implements ProtocolMessageEnum {
        DISCONNECT(0, 0),
        CONNECT(1, 1),
        ALLOW(2, 2),
        REFUSE(3, 3),
        WAIT(4, 4),
        REFUSE_LOWPOWER(5, 5);
        
        public static final int ALLOW_VALUE = 2;
        public static final int CONNECT_VALUE = 1;
        public static final int DISCONNECT_VALUE = 0;
        public static final int REFUSE_LOWPOWER_VALUE = 5;
        public static final int REFUSE_VALUE = 3;
        public static final int WAIT_VALUE = 4;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<CONNCODE> internalValueMap = new a();
        private static final CONNCODE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<CONNCODE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public CONNCODE findValueByNumber(int i) {
                return CONNCODE.valueOf(i);
            }
        }

        CONNCODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return MitalkProtos.A().getEnumTypes().get(1);
        }

        public static Internal.EnumLiteMap<CONNCODE> internalGetValueMap() {
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

        public static CONNCODE valueOf(int i) {
            if (i == 0) {
                return DISCONNECT;
            }
            if (i == 1) {
                return CONNECT;
            }
            if (i == 2) {
                return ALLOW;
            }
            if (i == 3) {
                return REFUSE;
            }
            if (i == 4) {
                return WAIT;
            }
            if (i != 5) {
                return null;
            }
            return REFUSE_LOWPOWER;
        }

        public static CONNCODE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum CTLSYNC implements ProtocolMessageEnum {
        DISABLE(0, 0),
        ENABLE(1, 1);
        
        public static final int DISABLE_VALUE = 0;
        public static final int ENABLE_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<CTLSYNC> internalValueMap = new a();
        private static final CTLSYNC[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<CTLSYNC> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public CTLSYNC findValueByNumber(int i) {
                return CTLSYNC.valueOf(i);
            }
        }

        CTLSYNC(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return MitalkProtos.A().getEnumTypes().get(7);
        }

        public static Internal.EnumLiteMap<CTLSYNC> internalGetValueMap() {
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

        public static CTLSYNC valueOf(int i) {
            if (i == 0) {
                return DISABLE;
            }
            if (i != 1) {
                return null;
            }
            return ENABLE;
        }

        public static CTLSYNC valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum CTRLCODE implements ProtocolMessageEnum {
        RSTDEVICE(0, 0),
        RSTBLE(1, 1);
        
        public static final int RSTBLE_VALUE = 1;
        public static final int RSTDEVICE_VALUE = 0;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<CTRLCODE> internalValueMap = new a();
        private static final CTRLCODE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<CTRLCODE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public CTRLCODE findValueByNumber(int i) {
                return CTRLCODE.valueOf(i);
            }
        }

        CTRLCODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return MitalkProtos.A().getEnumTypes().get(2);
        }

        public static Internal.EnumLiteMap<CTRLCODE> internalGetValueMap() {
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

        public static CTRLCODE valueOf(int i) {
            if (i == 0) {
                return RSTDEVICE;
            }
            if (i != 1) {
                return null;
            }
            return RSTBLE;
        }

        public static CTRLCODE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class ChannelInfo extends GeneratedMessage implements ChannelInfoOrBuilder {
        public static final int CSSCODE_2_FIELD_NUMBER = 12;
        public static final int CSSCODE_FIELD_NUMBER = 8;
        public static final int CSSINVERT_2_FIELD_NUMBER = 13;
        public static final int CSSINVERT_FIELD_NUMBER = 9;
        public static final int CSSTYPE_2_FIELD_NUMBER = 11;
        public static final int CSSTYPE_FIELD_NUMBER = 7;
        public static final int FREQ_2_FIELD_NUMBER = 10;
        public static final int FREQ_FIELD_NUMBER = 1;
        public static final int NAME_FIELD_NUMBER = 4;
        public static final int NO_FIELD_NUMBER = 3;
        public static Parser<ChannelInfo> PARSER = new a();
        public static final int SQ_FIELD_NUMBER = 5;
        public static final int TYPE_FIELD_NUMBER = 2;
        public static final int VOX_FIELD_NUMBER = 6;
        private static final ChannelInfo defaultInstance;
        private int bitField0_;
        private int cssCode2_;
        private int cssCode_;
        private int cssInvert2_;
        private int cssInvert_;
        private int cssType2_;
        private int cssType_;
        private int freq2_;
        private int freq_;
        private ByteString name_;
        private int no_;
        private int sq_;
        private CHTYPE type_;
        private final UnknownFieldSet unknownFields;
        private int vox_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ChannelInfoOrBuilder {
            private int bitField0_;
            private int cssCode2_;
            private int cssCode_;
            private int cssInvert2_;
            private int cssInvert_;
            private int cssType2_;
            private int cssType_;
            private int freq2_;
            private int freq_;
            private ByteString name_;
            private int no_;
            private int sq_;
            private CHTYPE type_;
            private int vox_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MitalkProtos.k;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearCssCode() {
                this.bitField0_ &= -129;
                this.cssCode_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCssCode2() {
                this.bitField0_ &= -2049;
                this.cssCode2_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCssInvert() {
                this.bitField0_ &= -257;
                this.cssInvert_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCssInvert2() {
                this.bitField0_ &= -4097;
                this.cssInvert2_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCssType() {
                this.bitField0_ &= -65;
                this.cssType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCssType2() {
                this.bitField0_ &= -1025;
                this.cssType2_ = 0;
                onChanged();
                return this;
            }

            public Builder clearFreq() {
                this.bitField0_ &= -2;
                this.freq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearFreq2() {
                this.bitField0_ &= -513;
                this.freq2_ = 0;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -9;
                this.name_ = ChannelInfo.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder clearNo() {
                this.bitField0_ &= -5;
                this.no_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSq() {
                this.bitField0_ &= -17;
                this.sq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.bitField0_ &= -3;
                this.type_ = CHTYPE.PRESET;
                onChanged();
                return this;
            }

            public Builder clearVox() {
                this.bitField0_ &= -33;
                this.vox_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public int getCssCode() {
                return this.cssCode_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public int getCssCode2() {
                return this.cssCode2_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public int getCssInvert() {
                return this.cssInvert_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public int getCssInvert2() {
                return this.cssInvert2_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public int getCssType() {
                return this.cssType_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public int getCssType2() {
                return this.cssType2_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MitalkProtos.k;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public int getFreq() {
                return this.freq_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public int getFreq2() {
                return this.freq2_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public ByteString getName() {
                return this.name_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public int getNo() {
                return this.no_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public int getSq() {
                return this.sq_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public CHTYPE getType() {
                return this.type_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public int getVox() {
                return this.vox_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasCssCode() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasCssCode2() {
                return (this.bitField0_ & 2048) == 2048;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasCssInvert() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasCssInvert2() {
                return (this.bitField0_ & 4096) == 4096;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasCssType() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasCssType2() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasFreq() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasFreq2() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasName() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasNo() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasSq() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasType() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
            public boolean hasVox() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.l.ensureFieldAccessorsInitialized(ChannelInfo.class, Builder.class);
            }

            public Builder setCssCode(int i) {
                this.bitField0_ |= 128;
                this.cssCode_ = i;
                onChanged();
                return this;
            }

            public Builder setCssCode2(int i) {
                this.bitField0_ |= 2048;
                this.cssCode2_ = i;
                onChanged();
                return this;
            }

            public Builder setCssInvert(int i) {
                this.bitField0_ |= 256;
                this.cssInvert_ = i;
                onChanged();
                return this;
            }

            public Builder setCssInvert2(int i) {
                this.bitField0_ |= 4096;
                this.cssInvert2_ = i;
                onChanged();
                return this;
            }

            public Builder setCssType(int i) {
                this.bitField0_ |= 64;
                this.cssType_ = i;
                onChanged();
                return this;
            }

            public Builder setCssType2(int i) {
                this.bitField0_ |= 1024;
                this.cssType2_ = i;
                onChanged();
                return this;
            }

            public Builder setFreq(int i) {
                this.bitField0_ |= 1;
                this.freq_ = i;
                onChanged();
                return this;
            }

            public Builder setFreq2(int i) {
                this.bitField0_ |= 512;
                this.freq2_ = i;
                onChanged();
                return this;
            }

            public Builder setName(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 8;
                    this.name_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setNo(int i) {
                this.bitField0_ |= 4;
                this.no_ = i;
                onChanged();
                return this;
            }

            public Builder setSq(int i) {
                this.bitField0_ |= 16;
                this.sq_ = i;
                onChanged();
                return this;
            }

            public Builder setType(CHTYPE chtype) {
                if (chtype != null) {
                    this.bitField0_ |= 2;
                    this.type_ = chtype;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setVox(int i) {
                this.bitField0_ |= 32;
                this.vox_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.type_ = CHTYPE.PRESET;
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
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                channelInfo.freq_ = this.freq_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                channelInfo.type_ = this.type_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                channelInfo.no_ = this.no_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                channelInfo.name_ = this.name_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                channelInfo.sq_ = this.sq_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                channelInfo.vox_ = this.vox_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                channelInfo.cssType_ = this.cssType_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                channelInfo.cssCode_ = this.cssCode_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                channelInfo.cssInvert_ = this.cssInvert_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                channelInfo.freq2_ = this.freq2_;
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                channelInfo.cssType2_ = this.cssType2_;
                if ((i & 2048) == 2048) {
                    i2 |= 2048;
                }
                channelInfo.cssCode2_ = this.cssCode2_;
                if ((i & 4096) == 4096) {
                    i2 |= 4096;
                }
                channelInfo.cssInvert2_ = this.cssInvert2_;
                channelInfo.bitField0_ = i2;
                onBuilt();
                return channelInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChannelInfo getDefaultInstanceForType() {
                return ChannelInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.freq_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.type_ = CHTYPE.PRESET;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.no_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.name_ = ByteString.EMPTY;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.sq_ = 0;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.vox_ = 0;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.cssType_ = 0;
                int i7 = i6 & (-65);
                this.bitField0_ = i7;
                this.cssCode_ = 0;
                int i8 = i7 & (-129);
                this.bitField0_ = i8;
                this.cssInvert_ = 0;
                int i9 = i8 & (-257);
                this.bitField0_ = i9;
                this.freq2_ = 0;
                int i10 = i9 & (-513);
                this.bitField0_ = i10;
                this.cssType2_ = 0;
                int i11 = i10 & (-1025);
                this.bitField0_ = i11;
                this.cssCode2_ = 0;
                int i12 = i11 & (-2049);
                this.bitField0_ = i12;
                this.cssInvert2_ = 0;
                this.bitField0_ = i12 & (-4097);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.type_ = CHTYPE.PRESET;
                this.name_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
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
            return MitalkProtos.k;
        }

        private void initFields() {
            this.freq_ = 0;
            this.type_ = CHTYPE.PRESET;
            this.no_ = 0;
            this.name_ = ByteString.EMPTY;
            this.sq_ = 0;
            this.vox_ = 0;
            this.cssType_ = 0;
            this.cssCode_ = 0;
            this.cssInvert_ = 0;
            this.freq2_ = 0;
            this.cssType2_ = 0;
            this.cssCode2_ = 0;
            this.cssInvert2_ = 0;
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

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public int getCssCode() {
            return this.cssCode_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public int getCssCode2() {
            return this.cssCode2_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public int getCssInvert() {
            return this.cssInvert_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public int getCssInvert2() {
            return this.cssInvert2_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public int getCssType() {
            return this.cssType_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public int getCssType2() {
            return this.cssType2_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public int getFreq() {
            return this.freq_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public int getFreq2() {
            return this.freq2_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public ByteString getName() {
            return this.name_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public int getNo() {
            return this.no_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChannelInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public int getSq() {
            return this.sq_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public CHTYPE getType() {
            return this.type_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public int getVox() {
            return this.vox_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasCssCode() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasCssCode2() {
            return (this.bitField0_ & 2048) == 2048;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasCssInvert() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasCssInvert2() {
            return (this.bitField0_ & 4096) == 4096;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasCssType() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasCssType2() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasFreq() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasFreq2() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasName() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasNo() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasSq() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasType() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ChannelInfoOrBuilder
        public boolean hasVox() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.l.ensureFieldAccessorsInitialized(ChannelInfo.class, Builder.class);
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
        int getCssCode();

        int getCssCode2();

        int getCssInvert();

        int getCssInvert2();

        int getCssType();

        int getCssType2();

        int getFreq();

        int getFreq2();

        ByteString getName();

        int getNo();

        int getSq();

        CHTYPE getType();

        int getVox();

        boolean hasCssCode();

        boolean hasCssCode2();

        boolean hasCssInvert();

        boolean hasCssInvert2();

        boolean hasCssType();

        boolean hasCssType2();

        boolean hasFreq();

        boolean hasFreq2();

        boolean hasName();

        boolean hasNo();

        boolean hasSq();

        boolean hasType();

        boolean hasVox();
    }

    /* loaded from: classes2.dex */
    public static final class Command extends GeneratedMessage implements CommandOrBuilder {
        public static final int CONNECTQUERY_FIELD_NUMBER = 1;
        public static final int CONNECTRESP_FIELD_NUMBER = 2;
        public static final int CONTROL_FIELD_NUMBER = 4;
        public static final int FILEPACK_FIELD_NUMBER = 13;
        public static final int FILEREQ_FIELD_NUMBER = 12;
        public static final int FILERESP_FIELD_NUMBER = 14;
        public static final int HEARTBEAT_FIELD_NUMBER = 3;
        public static final int LOCATIONCTL_FIELD_NUMBER = 11;
        public static final int LOCATIONSYNC_FIELD_NUMBER = 10;
        public static final int LOGREQ_FIELD_NUMBER = 15;
        public static final int PARAMQUERY_FIELD_NUMBER = 5;
        public static final int PARAMRESP_FIELD_NUMBER = 7;
        public static final int PARAMUPDATE_FIELD_NUMBER = 6;
        public static Parser<Command> PARSER = new a();
        public static final int STATEQUERY_FIELD_NUMBER = 8;
        public static final int STATERESP_FIELD_NUMBER = 9;
        public static final int TESTREQ_FIELD_NUMBER = 16;
        public static final int TESTRESP_FIELD_NUMBER = 17;
        public static final int UPDATERESPONSE_FIELD_NUMBER = 18;
        private static final Command defaultInstance;
        private int bitField0_;
        private Connect connectQuery_;
        private Connect connectResp_;
        private Control control_;
        private FilePack filePack_;
        private FileRequest fileReq_;
        private FileResponse fileResp_;
        private Control heartbeat_;
        private LocationSync locationCtl_;
        private LocationSync locationSync_;
        private LogRequest logReq_;
        private ParamUpdate paramQuery_;
        private ParamUpdate paramResp_;
        private ParamUpdate paramUpdate_;
        private StateUpdate stateQuery_;
        private StateUpdate stateResp_;
        private IntercomTest testReq_;
        private IntercomTest testResp_;
        private final UnknownFieldSet unknownFields;
        private UpdateResponse updateResponse_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CommandOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> connectQueryBuilder_;
            private Connect connectQuery_;
            private SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> connectRespBuilder_;
            private Connect connectResp_;
            private SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> controlBuilder_;
            private Control control_;
            private SingleFieldBuilder<FilePack, FilePack.Builder, FilePackOrBuilder> filePackBuilder_;
            private FilePack filePack_;
            private SingleFieldBuilder<FileRequest, FileRequest.Builder, FileRequestOrBuilder> fileReqBuilder_;
            private FileRequest fileReq_;
            private SingleFieldBuilder<FileResponse, FileResponse.Builder, FileResponseOrBuilder> fileRespBuilder_;
            private FileResponse fileResp_;
            private SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> heartbeatBuilder_;
            private Control heartbeat_;
            private SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> locationCtlBuilder_;
            private LocationSync locationCtl_;
            private SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> locationSyncBuilder_;
            private LocationSync locationSync_;
            private SingleFieldBuilder<LogRequest, LogRequest.Builder, LogRequestOrBuilder> logReqBuilder_;
            private LogRequest logReq_;
            private SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> paramQueryBuilder_;
            private ParamUpdate paramQuery_;
            private SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> paramRespBuilder_;
            private ParamUpdate paramResp_;
            private SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> paramUpdateBuilder_;
            private ParamUpdate paramUpdate_;
            private SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> stateQueryBuilder_;
            private StateUpdate stateQuery_;
            private SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> stateRespBuilder_;
            private StateUpdate stateResp_;
            private SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> testReqBuilder_;
            private IntercomTest testReq_;
            private SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> testRespBuilder_;
            private IntercomTest testResp_;
            private SingleFieldBuilder<UpdateResponse, UpdateResponse.Builder, UpdateResponseOrBuilder> updateResponseBuilder_;
            private UpdateResponse updateResponse_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> getConnectQueryFieldBuilder() {
                if (this.connectQueryBuilder_ == null) {
                    this.connectQueryBuilder_ = new SingleFieldBuilder<>(getConnectQuery(), getParentForChildren(), isClean());
                    this.connectQuery_ = null;
                }
                return this.connectQueryBuilder_;
            }

            private SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> getConnectRespFieldBuilder() {
                if (this.connectRespBuilder_ == null) {
                    this.connectRespBuilder_ = new SingleFieldBuilder<>(getConnectResp(), getParentForChildren(), isClean());
                    this.connectResp_ = null;
                }
                return this.connectRespBuilder_;
            }

            private SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> getControlFieldBuilder() {
                if (this.controlBuilder_ == null) {
                    this.controlBuilder_ = new SingleFieldBuilder<>(getControl(), getParentForChildren(), isClean());
                    this.control_ = null;
                }
                return this.controlBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MitalkProtos.f5976a;
            }

            private SingleFieldBuilder<FilePack, FilePack.Builder, FilePackOrBuilder> getFilePackFieldBuilder() {
                if (this.filePackBuilder_ == null) {
                    this.filePackBuilder_ = new SingleFieldBuilder<>(getFilePack(), getParentForChildren(), isClean());
                    this.filePack_ = null;
                }
                return this.filePackBuilder_;
            }

            private SingleFieldBuilder<FileRequest, FileRequest.Builder, FileRequestOrBuilder> getFileReqFieldBuilder() {
                if (this.fileReqBuilder_ == null) {
                    this.fileReqBuilder_ = new SingleFieldBuilder<>(getFileReq(), getParentForChildren(), isClean());
                    this.fileReq_ = null;
                }
                return this.fileReqBuilder_;
            }

            private SingleFieldBuilder<FileResponse, FileResponse.Builder, FileResponseOrBuilder> getFileRespFieldBuilder() {
                if (this.fileRespBuilder_ == null) {
                    this.fileRespBuilder_ = new SingleFieldBuilder<>(getFileResp(), getParentForChildren(), isClean());
                    this.fileResp_ = null;
                }
                return this.fileRespBuilder_;
            }

            private SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> getHeartbeatFieldBuilder() {
                if (this.heartbeatBuilder_ == null) {
                    this.heartbeatBuilder_ = new SingleFieldBuilder<>(getHeartbeat(), getParentForChildren(), isClean());
                    this.heartbeat_ = null;
                }
                return this.heartbeatBuilder_;
            }

            private SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> getLocationCtlFieldBuilder() {
                if (this.locationCtlBuilder_ == null) {
                    this.locationCtlBuilder_ = new SingleFieldBuilder<>(getLocationCtl(), getParentForChildren(), isClean());
                    this.locationCtl_ = null;
                }
                return this.locationCtlBuilder_;
            }

            private SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> getLocationSyncFieldBuilder() {
                if (this.locationSyncBuilder_ == null) {
                    this.locationSyncBuilder_ = new SingleFieldBuilder<>(getLocationSync(), getParentForChildren(), isClean());
                    this.locationSync_ = null;
                }
                return this.locationSyncBuilder_;
            }

            private SingleFieldBuilder<LogRequest, LogRequest.Builder, LogRequestOrBuilder> getLogReqFieldBuilder() {
                if (this.logReqBuilder_ == null) {
                    this.logReqBuilder_ = new SingleFieldBuilder<>(getLogReq(), getParentForChildren(), isClean());
                    this.logReq_ = null;
                }
                return this.logReqBuilder_;
            }

            private SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> getParamQueryFieldBuilder() {
                if (this.paramQueryBuilder_ == null) {
                    this.paramQueryBuilder_ = new SingleFieldBuilder<>(getParamQuery(), getParentForChildren(), isClean());
                    this.paramQuery_ = null;
                }
                return this.paramQueryBuilder_;
            }

            private SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> getParamRespFieldBuilder() {
                if (this.paramRespBuilder_ == null) {
                    this.paramRespBuilder_ = new SingleFieldBuilder<>(getParamResp(), getParentForChildren(), isClean());
                    this.paramResp_ = null;
                }
                return this.paramRespBuilder_;
            }

            private SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> getParamUpdateFieldBuilder() {
                if (this.paramUpdateBuilder_ == null) {
                    this.paramUpdateBuilder_ = new SingleFieldBuilder<>(getParamUpdate(), getParentForChildren(), isClean());
                    this.paramUpdate_ = null;
                }
                return this.paramUpdateBuilder_;
            }

            private SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> getStateQueryFieldBuilder() {
                if (this.stateQueryBuilder_ == null) {
                    this.stateQueryBuilder_ = new SingleFieldBuilder<>(getStateQuery(), getParentForChildren(), isClean());
                    this.stateQuery_ = null;
                }
                return this.stateQueryBuilder_;
            }

            private SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> getStateRespFieldBuilder() {
                if (this.stateRespBuilder_ == null) {
                    this.stateRespBuilder_ = new SingleFieldBuilder<>(getStateResp(), getParentForChildren(), isClean());
                    this.stateResp_ = null;
                }
                return this.stateRespBuilder_;
            }

            private SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> getTestReqFieldBuilder() {
                if (this.testReqBuilder_ == null) {
                    this.testReqBuilder_ = new SingleFieldBuilder<>(getTestReq(), getParentForChildren(), isClean());
                    this.testReq_ = null;
                }
                return this.testReqBuilder_;
            }

            private SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> getTestRespFieldBuilder() {
                if (this.testRespBuilder_ == null) {
                    this.testRespBuilder_ = new SingleFieldBuilder<>(getTestResp(), getParentForChildren(), isClean());
                    this.testResp_ = null;
                }
                return this.testRespBuilder_;
            }

            private SingleFieldBuilder<UpdateResponse, UpdateResponse.Builder, UpdateResponseOrBuilder> getUpdateResponseFieldBuilder() {
                if (this.updateResponseBuilder_ == null) {
                    this.updateResponseBuilder_ = new SingleFieldBuilder<>(getUpdateResponse(), getParentForChildren(), isClean());
                    this.updateResponse_ = null;
                }
                return this.updateResponseBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getConnectQueryFieldBuilder();
                    getConnectRespFieldBuilder();
                    getHeartbeatFieldBuilder();
                    getControlFieldBuilder();
                    getParamQueryFieldBuilder();
                    getParamUpdateFieldBuilder();
                    getParamRespFieldBuilder();
                    getStateQueryFieldBuilder();
                    getStateRespFieldBuilder();
                    getLocationSyncFieldBuilder();
                    getLocationCtlFieldBuilder();
                    getFileReqFieldBuilder();
                    getFilePackFieldBuilder();
                    getFileRespFieldBuilder();
                    getLogReqFieldBuilder();
                    getTestReqFieldBuilder();
                    getTestRespFieldBuilder();
                    getUpdateResponseFieldBuilder();
                }
            }

            public Builder clearConnectQuery() {
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectQueryBuilder_;
                if (singleFieldBuilder == null) {
                    this.connectQuery_ = Connect.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clearConnectResp() {
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectRespBuilder_;
                if (singleFieldBuilder == null) {
                    this.connectResp_ = Connect.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clearControl() {
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder = this.controlBuilder_;
                if (singleFieldBuilder == null) {
                    this.control_ = Control.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clearFilePack() {
                SingleFieldBuilder<FilePack, FilePack.Builder, FilePackOrBuilder> singleFieldBuilder = this.filePackBuilder_;
                if (singleFieldBuilder == null) {
                    this.filePack_ = FilePack.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -4097;
                return this;
            }

            public Builder clearFileReq() {
                SingleFieldBuilder<FileRequest, FileRequest.Builder, FileRequestOrBuilder> singleFieldBuilder = this.fileReqBuilder_;
                if (singleFieldBuilder == null) {
                    this.fileReq_ = FileRequest.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -2049;
                return this;
            }

            public Builder clearFileResp() {
                SingleFieldBuilder<FileResponse, FileResponse.Builder, FileResponseOrBuilder> singleFieldBuilder = this.fileRespBuilder_;
                if (singleFieldBuilder == null) {
                    this.fileResp_ = FileResponse.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -8193;
                return this;
            }

            public Builder clearHeartbeat() {
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder = this.heartbeatBuilder_;
                if (singleFieldBuilder == null) {
                    this.heartbeat_ = Control.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clearLocationCtl() {
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder = this.locationCtlBuilder_;
                if (singleFieldBuilder == null) {
                    this.locationCtl_ = LocationSync.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -1025;
                return this;
            }

            public Builder clearLocationSync() {
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder = this.locationSyncBuilder_;
                if (singleFieldBuilder == null) {
                    this.locationSync_ = LocationSync.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -513;
                return this;
            }

            public Builder clearLogReq() {
                SingleFieldBuilder<LogRequest, LogRequest.Builder, LogRequestOrBuilder> singleFieldBuilder = this.logReqBuilder_;
                if (singleFieldBuilder == null) {
                    this.logReq_ = LogRequest.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -16385;
                return this;
            }

            public Builder clearParamQuery() {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramQueryBuilder_;
                if (singleFieldBuilder == null) {
                    this.paramQuery_ = ParamUpdate.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clearParamResp() {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramRespBuilder_;
                if (singleFieldBuilder == null) {
                    this.paramResp_ = ParamUpdate.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clearParamUpdate() {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramUpdateBuilder_;
                if (singleFieldBuilder == null) {
                    this.paramUpdate_ = ParamUpdate.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            public Builder clearStateQuery() {
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder = this.stateQueryBuilder_;
                if (singleFieldBuilder == null) {
                    this.stateQuery_ = StateUpdate.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -129;
                return this;
            }

            public Builder clearStateResp() {
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder = this.stateRespBuilder_;
                if (singleFieldBuilder == null) {
                    this.stateResp_ = StateUpdate.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -257;
                return this;
            }

            public Builder clearTestReq() {
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder = this.testReqBuilder_;
                if (singleFieldBuilder == null) {
                    this.testReq_ = IntercomTest.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -32769;
                return this;
            }

            public Builder clearTestResp() {
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder = this.testRespBuilder_;
                if (singleFieldBuilder == null) {
                    this.testResp_ = IntercomTest.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -65537;
                return this;
            }

            public Builder clearUpdateResponse() {
                SingleFieldBuilder<UpdateResponse, UpdateResponse.Builder, UpdateResponseOrBuilder> singleFieldBuilder = this.updateResponseBuilder_;
                if (singleFieldBuilder == null) {
                    this.updateResponse_ = UpdateResponse.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -131073;
                return this;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public Connect getConnectQuery() {
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectQueryBuilder_;
                if (singleFieldBuilder == null) {
                    return this.connectQuery_;
                }
                return singleFieldBuilder.getMessage();
            }

            public Connect.Builder getConnectQueryBuilder() {
                this.bitField0_ |= 1;
                onChanged();
                return getConnectQueryFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public ConnectOrBuilder getConnectQueryOrBuilder() {
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectQueryBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.connectQuery_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public Connect getConnectResp() {
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectRespBuilder_;
                if (singleFieldBuilder == null) {
                    return this.connectResp_;
                }
                return singleFieldBuilder.getMessage();
            }

            public Connect.Builder getConnectRespBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return getConnectRespFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public ConnectOrBuilder getConnectRespOrBuilder() {
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectRespBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.connectResp_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public Control getControl() {
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder = this.controlBuilder_;
                if (singleFieldBuilder == null) {
                    return this.control_;
                }
                return singleFieldBuilder.getMessage();
            }

            public Control.Builder getControlBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return getControlFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public ControlOrBuilder getControlOrBuilder() {
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder = this.controlBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.control_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MitalkProtos.f5976a;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public FilePack getFilePack() {
                SingleFieldBuilder<FilePack, FilePack.Builder, FilePackOrBuilder> singleFieldBuilder = this.filePackBuilder_;
                if (singleFieldBuilder == null) {
                    return this.filePack_;
                }
                return singleFieldBuilder.getMessage();
            }

            public FilePack.Builder getFilePackBuilder() {
                this.bitField0_ |= 4096;
                onChanged();
                return getFilePackFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public FilePackOrBuilder getFilePackOrBuilder() {
                SingleFieldBuilder<FilePack, FilePack.Builder, FilePackOrBuilder> singleFieldBuilder = this.filePackBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.filePack_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public FileRequest getFileReq() {
                SingleFieldBuilder<FileRequest, FileRequest.Builder, FileRequestOrBuilder> singleFieldBuilder = this.fileReqBuilder_;
                if (singleFieldBuilder == null) {
                    return this.fileReq_;
                }
                return singleFieldBuilder.getMessage();
            }

            public FileRequest.Builder getFileReqBuilder() {
                this.bitField0_ |= 2048;
                onChanged();
                return getFileReqFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public FileRequestOrBuilder getFileReqOrBuilder() {
                SingleFieldBuilder<FileRequest, FileRequest.Builder, FileRequestOrBuilder> singleFieldBuilder = this.fileReqBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.fileReq_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public FileResponse getFileResp() {
                SingleFieldBuilder<FileResponse, FileResponse.Builder, FileResponseOrBuilder> singleFieldBuilder = this.fileRespBuilder_;
                if (singleFieldBuilder == null) {
                    return this.fileResp_;
                }
                return singleFieldBuilder.getMessage();
            }

            public FileResponse.Builder getFileRespBuilder() {
                this.bitField0_ |= 8192;
                onChanged();
                return getFileRespFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public FileResponseOrBuilder getFileRespOrBuilder() {
                SingleFieldBuilder<FileResponse, FileResponse.Builder, FileResponseOrBuilder> singleFieldBuilder = this.fileRespBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.fileResp_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public Control getHeartbeat() {
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder = this.heartbeatBuilder_;
                if (singleFieldBuilder == null) {
                    return this.heartbeat_;
                }
                return singleFieldBuilder.getMessage();
            }

            public Control.Builder getHeartbeatBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return getHeartbeatFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public ControlOrBuilder getHeartbeatOrBuilder() {
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder = this.heartbeatBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.heartbeat_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public LocationSync getLocationCtl() {
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder = this.locationCtlBuilder_;
                if (singleFieldBuilder == null) {
                    return this.locationCtl_;
                }
                return singleFieldBuilder.getMessage();
            }

            public LocationSync.Builder getLocationCtlBuilder() {
                this.bitField0_ |= 1024;
                onChanged();
                return getLocationCtlFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public LocationSyncOrBuilder getLocationCtlOrBuilder() {
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder = this.locationCtlBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.locationCtl_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public LocationSync getLocationSync() {
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder = this.locationSyncBuilder_;
                if (singleFieldBuilder == null) {
                    return this.locationSync_;
                }
                return singleFieldBuilder.getMessage();
            }

            public LocationSync.Builder getLocationSyncBuilder() {
                this.bitField0_ |= 512;
                onChanged();
                return getLocationSyncFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public LocationSyncOrBuilder getLocationSyncOrBuilder() {
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder = this.locationSyncBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.locationSync_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public LogRequest getLogReq() {
                SingleFieldBuilder<LogRequest, LogRequest.Builder, LogRequestOrBuilder> singleFieldBuilder = this.logReqBuilder_;
                if (singleFieldBuilder == null) {
                    return this.logReq_;
                }
                return singleFieldBuilder.getMessage();
            }

            public LogRequest.Builder getLogReqBuilder() {
                this.bitField0_ |= 16384;
                onChanged();
                return getLogReqFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public LogRequestOrBuilder getLogReqOrBuilder() {
                SingleFieldBuilder<LogRequest, LogRequest.Builder, LogRequestOrBuilder> singleFieldBuilder = this.logReqBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.logReq_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public ParamUpdate getParamQuery() {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramQueryBuilder_;
                if (singleFieldBuilder == null) {
                    return this.paramQuery_;
                }
                return singleFieldBuilder.getMessage();
            }

            public ParamUpdate.Builder getParamQueryBuilder() {
                this.bitField0_ |= 16;
                onChanged();
                return getParamQueryFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public ParamUpdateOrBuilder getParamQueryOrBuilder() {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramQueryBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.paramQuery_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public ParamUpdate getParamResp() {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramRespBuilder_;
                if (singleFieldBuilder == null) {
                    return this.paramResp_;
                }
                return singleFieldBuilder.getMessage();
            }

            public ParamUpdate.Builder getParamRespBuilder() {
                this.bitField0_ |= 64;
                onChanged();
                return getParamRespFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public ParamUpdateOrBuilder getParamRespOrBuilder() {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramRespBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.paramResp_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public ParamUpdate getParamUpdate() {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramUpdateBuilder_;
                if (singleFieldBuilder == null) {
                    return this.paramUpdate_;
                }
                return singleFieldBuilder.getMessage();
            }

            public ParamUpdate.Builder getParamUpdateBuilder() {
                this.bitField0_ |= 32;
                onChanged();
                return getParamUpdateFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public ParamUpdateOrBuilder getParamUpdateOrBuilder() {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramUpdateBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.paramUpdate_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public StateUpdate getStateQuery() {
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder = this.stateQueryBuilder_;
                if (singleFieldBuilder == null) {
                    return this.stateQuery_;
                }
                return singleFieldBuilder.getMessage();
            }

            public StateUpdate.Builder getStateQueryBuilder() {
                this.bitField0_ |= 128;
                onChanged();
                return getStateQueryFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public StateUpdateOrBuilder getStateQueryOrBuilder() {
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder = this.stateQueryBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.stateQuery_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public StateUpdate getStateResp() {
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder = this.stateRespBuilder_;
                if (singleFieldBuilder == null) {
                    return this.stateResp_;
                }
                return singleFieldBuilder.getMessage();
            }

            public StateUpdate.Builder getStateRespBuilder() {
                this.bitField0_ |= 256;
                onChanged();
                return getStateRespFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public StateUpdateOrBuilder getStateRespOrBuilder() {
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder = this.stateRespBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.stateResp_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public IntercomTest getTestReq() {
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder = this.testReqBuilder_;
                if (singleFieldBuilder == null) {
                    return this.testReq_;
                }
                return singleFieldBuilder.getMessage();
            }

            public IntercomTest.Builder getTestReqBuilder() {
                this.bitField0_ |= 32768;
                onChanged();
                return getTestReqFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public IntercomTestOrBuilder getTestReqOrBuilder() {
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder = this.testReqBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.testReq_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public IntercomTest getTestResp() {
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder = this.testRespBuilder_;
                if (singleFieldBuilder == null) {
                    return this.testResp_;
                }
                return singleFieldBuilder.getMessage();
            }

            public IntercomTest.Builder getTestRespBuilder() {
                this.bitField0_ |= 65536;
                onChanged();
                return getTestRespFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public IntercomTestOrBuilder getTestRespOrBuilder() {
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder = this.testRespBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.testResp_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public UpdateResponse getUpdateResponse() {
                SingleFieldBuilder<UpdateResponse, UpdateResponse.Builder, UpdateResponseOrBuilder> singleFieldBuilder = this.updateResponseBuilder_;
                if (singleFieldBuilder == null) {
                    return this.updateResponse_;
                }
                return singleFieldBuilder.getMessage();
            }

            public UpdateResponse.Builder getUpdateResponseBuilder() {
                this.bitField0_ |= 131072;
                onChanged();
                return getUpdateResponseFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public UpdateResponseOrBuilder getUpdateResponseOrBuilder() {
                SingleFieldBuilder<UpdateResponse, UpdateResponse.Builder, UpdateResponseOrBuilder> singleFieldBuilder = this.updateResponseBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.updateResponse_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasConnectQuery() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasConnectResp() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasControl() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasFilePack() {
                return (this.bitField0_ & 4096) == 4096;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasFileReq() {
                return (this.bitField0_ & 2048) == 2048;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasFileResp() {
                return (this.bitField0_ & 8192) == 8192;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasHeartbeat() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasLocationCtl() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasLocationSync() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasLogReq() {
                return (this.bitField0_ & 16384) == 16384;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasParamQuery() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasParamResp() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasParamUpdate() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasStateQuery() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasStateResp() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasTestReq() {
                return (this.bitField0_ & 32768) == 32768;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasTestResp() {
                return (this.bitField0_ & 65536) == 65536;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
            public boolean hasUpdateResponse() {
                return (this.bitField0_ & 131072) == 131072;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.f5977b.ensureFieldAccessorsInitialized(Command.class, Builder.class);
            }

            public Builder mergeConnectQuery(Connect connect) {
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectQueryBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 1) != 1 || this.connectQuery_ == Connect.getDefaultInstance()) {
                        this.connectQuery_ = connect;
                    } else {
                        this.connectQuery_ = ((Connect.Builder) Connect.newBuilder(this.connectQuery_).mergeFrom((Message) connect)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(connect);
                }
                this.bitField0_ |= 1;
                return this;
            }

            public Builder mergeConnectResp(Connect connect) {
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectRespBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2) != 2 || this.connectResp_ == Connect.getDefaultInstance()) {
                        this.connectResp_ = connect;
                    } else {
                        this.connectResp_ = ((Connect.Builder) Connect.newBuilder(this.connectResp_).mergeFrom((Message) connect)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(connect);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder mergeControl(Control control) {
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder = this.controlBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 8 || this.control_ == Control.getDefaultInstance()) {
                        this.control_ = control;
                    } else {
                        this.control_ = ((Control.Builder) Control.newBuilder(this.control_).mergeFrom((Message) control)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(control);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder mergeFilePack(FilePack filePack) {
                SingleFieldBuilder<FilePack, FilePack.Builder, FilePackOrBuilder> singleFieldBuilder = this.filePackBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4096) != 4096 || this.filePack_ == FilePack.getDefaultInstance()) {
                        this.filePack_ = filePack;
                    } else {
                        this.filePack_ = ((FilePack.Builder) FilePack.newBuilder(this.filePack_).mergeFrom((Message) filePack)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(filePack);
                }
                this.bitField0_ |= 4096;
                return this;
            }

            public Builder mergeFileReq(FileRequest fileRequest) {
                SingleFieldBuilder<FileRequest, FileRequest.Builder, FileRequestOrBuilder> singleFieldBuilder = this.fileReqBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2048) != 2048 || this.fileReq_ == FileRequest.getDefaultInstance()) {
                        this.fileReq_ = fileRequest;
                    } else {
                        this.fileReq_ = ((FileRequest.Builder) FileRequest.newBuilder(this.fileReq_).mergeFrom((Message) fileRequest)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(fileRequest);
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder mergeFileResp(FileResponse fileResponse) {
                SingleFieldBuilder<FileResponse, FileResponse.Builder, FileResponseOrBuilder> singleFieldBuilder = this.fileRespBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 8192) != 8192 || this.fileResp_ == FileResponse.getDefaultInstance()) {
                        this.fileResp_ = fileResponse;
                    } else {
                        this.fileResp_ = ((FileResponse.Builder) FileResponse.newBuilder(this.fileResp_).mergeFrom((Message) fileResponse)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(fileResponse);
                }
                this.bitField0_ |= 8192;
                return this;
            }

            public Builder mergeHeartbeat(Control control) {
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder = this.heartbeatBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 4) != 4 || this.heartbeat_ == Control.getDefaultInstance()) {
                        this.heartbeat_ = control;
                    } else {
                        this.heartbeat_ = ((Control.Builder) Control.newBuilder(this.heartbeat_).mergeFrom((Message) control)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(control);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder mergeLocationCtl(LocationSync locationSync) {
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder = this.locationCtlBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 1024) != 1024 || this.locationCtl_ == LocationSync.getDefaultInstance()) {
                        this.locationCtl_ = locationSync;
                    } else {
                        this.locationCtl_ = ((LocationSync.Builder) LocationSync.newBuilder(this.locationCtl_).mergeFrom((Message) locationSync)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(locationSync);
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public Builder mergeLocationSync(LocationSync locationSync) {
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder = this.locationSyncBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 512) != 512 || this.locationSync_ == LocationSync.getDefaultInstance()) {
                        this.locationSync_ = locationSync;
                    } else {
                        this.locationSync_ = ((LocationSync.Builder) LocationSync.newBuilder(this.locationSync_).mergeFrom((Message) locationSync)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(locationSync);
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder mergeLogReq(LogRequest logRequest) {
                SingleFieldBuilder<LogRequest, LogRequest.Builder, LogRequestOrBuilder> singleFieldBuilder = this.logReqBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 16384) != 16384 || this.logReq_ == LogRequest.getDefaultInstance()) {
                        this.logReq_ = logRequest;
                    } else {
                        this.logReq_ = ((LogRequest.Builder) LogRequest.newBuilder(this.logReq_).mergeFrom((Message) logRequest)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(logRequest);
                }
                this.bitField0_ |= 16384;
                return this;
            }

            public Builder mergeParamQuery(ParamUpdate paramUpdate) {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramQueryBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 16) != 16 || this.paramQuery_ == ParamUpdate.getDefaultInstance()) {
                        this.paramQuery_ = paramUpdate;
                    } else {
                        this.paramQuery_ = ((ParamUpdate.Builder) ParamUpdate.newBuilder(this.paramQuery_).mergeFrom((Message) paramUpdate)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(paramUpdate);
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder mergeParamResp(ParamUpdate paramUpdate) {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramRespBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 64) != 64 || this.paramResp_ == ParamUpdate.getDefaultInstance()) {
                        this.paramResp_ = paramUpdate;
                    } else {
                        this.paramResp_ = ((ParamUpdate.Builder) ParamUpdate.newBuilder(this.paramResp_).mergeFrom((Message) paramUpdate)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(paramUpdate);
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder mergeParamUpdate(ParamUpdate paramUpdate) {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramUpdateBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 32) != 32 || this.paramUpdate_ == ParamUpdate.getDefaultInstance()) {
                        this.paramUpdate_ = paramUpdate;
                    } else {
                        this.paramUpdate_ = ((ParamUpdate.Builder) ParamUpdate.newBuilder(this.paramUpdate_).mergeFrom((Message) paramUpdate)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(paramUpdate);
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder mergeStateQuery(StateUpdate stateUpdate) {
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder = this.stateQueryBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 128) != 128 || this.stateQuery_ == StateUpdate.getDefaultInstance()) {
                        this.stateQuery_ = stateUpdate;
                    } else {
                        this.stateQuery_ = ((StateUpdate.Builder) StateUpdate.newBuilder(this.stateQuery_).mergeFrom((Message) stateUpdate)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(stateUpdate);
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder mergeStateResp(StateUpdate stateUpdate) {
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder = this.stateRespBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 256) != 256 || this.stateResp_ == StateUpdate.getDefaultInstance()) {
                        this.stateResp_ = stateUpdate;
                    } else {
                        this.stateResp_ = ((StateUpdate.Builder) StateUpdate.newBuilder(this.stateResp_).mergeFrom((Message) stateUpdate)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(stateUpdate);
                }
                this.bitField0_ |= 256;
                return this;
            }

            public Builder mergeTestReq(IntercomTest intercomTest) {
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder = this.testReqBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 32768) != 32768 || this.testReq_ == IntercomTest.getDefaultInstance()) {
                        this.testReq_ = intercomTest;
                    } else {
                        this.testReq_ = ((IntercomTest.Builder) IntercomTest.newBuilder(this.testReq_).mergeFrom((Message) intercomTest)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(intercomTest);
                }
                this.bitField0_ |= 32768;
                return this;
            }

            public Builder mergeTestResp(IntercomTest intercomTest) {
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder = this.testRespBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 65536) != 65536 || this.testResp_ == IntercomTest.getDefaultInstance()) {
                        this.testResp_ = intercomTest;
                    } else {
                        this.testResp_ = ((IntercomTest.Builder) IntercomTest.newBuilder(this.testResp_).mergeFrom((Message) intercomTest)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(intercomTest);
                }
                this.bitField0_ |= 65536;
                return this;
            }

            public Builder mergeUpdateResponse(UpdateResponse updateResponse) {
                SingleFieldBuilder<UpdateResponse, UpdateResponse.Builder, UpdateResponseOrBuilder> singleFieldBuilder = this.updateResponseBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 131072) != 131072 || this.updateResponse_ == UpdateResponse.getDefaultInstance()) {
                        this.updateResponse_ = updateResponse;
                    } else {
                        this.updateResponse_ = ((UpdateResponse.Builder) UpdateResponse.newBuilder(this.updateResponse_).mergeFrom((Message) updateResponse)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(updateResponse);
                }
                this.bitField0_ |= 131072;
                return this;
            }

            public Builder setConnectQuery(Connect connect) {
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectQueryBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(connect);
                } else if (connect != null) {
                    this.connectQuery_ = connect;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 1;
                return this;
            }

            public Builder setConnectResp(Connect connect) {
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectRespBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(connect);
                } else if (connect != null) {
                    this.connectResp_ = connect;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setControl(Control control) {
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder = this.controlBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(control);
                } else if (control != null) {
                    this.control_ = control;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setFilePack(FilePack filePack) {
                SingleFieldBuilder<FilePack, FilePack.Builder, FilePackOrBuilder> singleFieldBuilder = this.filePackBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(filePack);
                } else if (filePack != null) {
                    this.filePack_ = filePack;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 4096;
                return this;
            }

            public Builder setFileReq(FileRequest fileRequest) {
                SingleFieldBuilder<FileRequest, FileRequest.Builder, FileRequestOrBuilder> singleFieldBuilder = this.fileReqBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(fileRequest);
                } else if (fileRequest != null) {
                    this.fileReq_ = fileRequest;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder setFileResp(FileResponse fileResponse) {
                SingleFieldBuilder<FileResponse, FileResponse.Builder, FileResponseOrBuilder> singleFieldBuilder = this.fileRespBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(fileResponse);
                } else if (fileResponse != null) {
                    this.fileResp_ = fileResponse;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 8192;
                return this;
            }

            public Builder setHeartbeat(Control control) {
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder = this.heartbeatBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(control);
                } else if (control != null) {
                    this.heartbeat_ = control;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setLocationCtl(LocationSync locationSync) {
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder = this.locationCtlBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(locationSync);
                } else if (locationSync != null) {
                    this.locationCtl_ = locationSync;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public Builder setLocationSync(LocationSync locationSync) {
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder = this.locationSyncBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(locationSync);
                } else if (locationSync != null) {
                    this.locationSync_ = locationSync;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder setLogReq(LogRequest logRequest) {
                SingleFieldBuilder<LogRequest, LogRequest.Builder, LogRequestOrBuilder> singleFieldBuilder = this.logReqBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(logRequest);
                } else if (logRequest != null) {
                    this.logReq_ = logRequest;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 16384;
                return this;
            }

            public Builder setParamQuery(ParamUpdate paramUpdate) {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramQueryBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(paramUpdate);
                } else if (paramUpdate != null) {
                    this.paramQuery_ = paramUpdate;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder setParamResp(ParamUpdate paramUpdate) {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramRespBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(paramUpdate);
                } else if (paramUpdate != null) {
                    this.paramResp_ = paramUpdate;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder setParamUpdate(ParamUpdate paramUpdate) {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramUpdateBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(paramUpdate);
                } else if (paramUpdate != null) {
                    this.paramUpdate_ = paramUpdate;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder setStateQuery(StateUpdate stateUpdate) {
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder = this.stateQueryBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(stateUpdate);
                } else if (stateUpdate != null) {
                    this.stateQuery_ = stateUpdate;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder setStateResp(StateUpdate stateUpdate) {
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder = this.stateRespBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(stateUpdate);
                } else if (stateUpdate != null) {
                    this.stateResp_ = stateUpdate;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 256;
                return this;
            }

            public Builder setTestReq(IntercomTest intercomTest) {
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder = this.testReqBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(intercomTest);
                } else if (intercomTest != null) {
                    this.testReq_ = intercomTest;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 32768;
                return this;
            }

            public Builder setTestResp(IntercomTest intercomTest) {
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder = this.testRespBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(intercomTest);
                } else if (intercomTest != null) {
                    this.testResp_ = intercomTest;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 65536;
                return this;
            }

            public Builder setUpdateResponse(UpdateResponse updateResponse) {
                SingleFieldBuilder<UpdateResponse, UpdateResponse.Builder, UpdateResponseOrBuilder> singleFieldBuilder = this.updateResponseBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(updateResponse);
                } else if (updateResponse != null) {
                    this.updateResponse_ = updateResponse;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 131072;
                return this;
            }

            private Builder() {
                this.connectQuery_ = Connect.getDefaultInstance();
                this.connectResp_ = Connect.getDefaultInstance();
                this.heartbeat_ = Control.getDefaultInstance();
                this.control_ = Control.getDefaultInstance();
                this.paramQuery_ = ParamUpdate.getDefaultInstance();
                this.paramUpdate_ = ParamUpdate.getDefaultInstance();
                this.paramResp_ = ParamUpdate.getDefaultInstance();
                this.stateQuery_ = StateUpdate.getDefaultInstance();
                this.stateResp_ = StateUpdate.getDefaultInstance();
                this.locationSync_ = LocationSync.getDefaultInstance();
                this.locationCtl_ = LocationSync.getDefaultInstance();
                this.fileReq_ = FileRequest.getDefaultInstance();
                this.filePack_ = FilePack.getDefaultInstance();
                this.fileResp_ = FileResponse.getDefaultInstance();
                this.logReq_ = LogRequest.getDefaultInstance();
                this.testReq_ = IntercomTest.getDefaultInstance();
                this.testResp_ = IntercomTest.getDefaultInstance();
                this.updateResponse_ = UpdateResponse.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Command build() {
                Command buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Command buildPartial() {
                Command command = new Command(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectQueryBuilder_;
                if (singleFieldBuilder == null) {
                    command.connectQuery_ = this.connectQuery_;
                } else {
                    command.connectQuery_ = singleFieldBuilder.build();
                }
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder2 = this.connectRespBuilder_;
                if (singleFieldBuilder2 == null) {
                    command.connectResp_ = this.connectResp_;
                } else {
                    command.connectResp_ = singleFieldBuilder2.build();
                }
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder3 = this.heartbeatBuilder_;
                if (singleFieldBuilder3 == null) {
                    command.heartbeat_ = this.heartbeat_;
                } else {
                    command.heartbeat_ = singleFieldBuilder3.build();
                }
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder4 = this.controlBuilder_;
                if (singleFieldBuilder4 == null) {
                    command.control_ = this.control_;
                } else {
                    command.control_ = singleFieldBuilder4.build();
                }
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder5 = this.paramQueryBuilder_;
                if (singleFieldBuilder5 == null) {
                    command.paramQuery_ = this.paramQuery_;
                } else {
                    command.paramQuery_ = singleFieldBuilder5.build();
                }
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder6 = this.paramUpdateBuilder_;
                if (singleFieldBuilder6 == null) {
                    command.paramUpdate_ = this.paramUpdate_;
                } else {
                    command.paramUpdate_ = singleFieldBuilder6.build();
                }
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder7 = this.paramRespBuilder_;
                if (singleFieldBuilder7 == null) {
                    command.paramResp_ = this.paramResp_;
                } else {
                    command.paramResp_ = singleFieldBuilder7.build();
                }
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder8 = this.stateQueryBuilder_;
                if (singleFieldBuilder8 == null) {
                    command.stateQuery_ = this.stateQuery_;
                } else {
                    command.stateQuery_ = singleFieldBuilder8.build();
                }
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder9 = this.stateRespBuilder_;
                if (singleFieldBuilder9 == null) {
                    command.stateResp_ = this.stateResp_;
                } else {
                    command.stateResp_ = singleFieldBuilder9.build();
                }
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder10 = this.locationSyncBuilder_;
                if (singleFieldBuilder10 == null) {
                    command.locationSync_ = this.locationSync_;
                } else {
                    command.locationSync_ = singleFieldBuilder10.build();
                }
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder11 = this.locationCtlBuilder_;
                if (singleFieldBuilder11 == null) {
                    command.locationCtl_ = this.locationCtl_;
                } else {
                    command.locationCtl_ = singleFieldBuilder11.build();
                }
                if ((i & 2048) == 2048) {
                    i2 |= 2048;
                }
                SingleFieldBuilder<FileRequest, FileRequest.Builder, FileRequestOrBuilder> singleFieldBuilder12 = this.fileReqBuilder_;
                if (singleFieldBuilder12 == null) {
                    command.fileReq_ = this.fileReq_;
                } else {
                    command.fileReq_ = singleFieldBuilder12.build();
                }
                if ((i & 4096) == 4096) {
                    i2 |= 4096;
                }
                SingleFieldBuilder<FilePack, FilePack.Builder, FilePackOrBuilder> singleFieldBuilder13 = this.filePackBuilder_;
                if (singleFieldBuilder13 == null) {
                    command.filePack_ = this.filePack_;
                } else {
                    command.filePack_ = singleFieldBuilder13.build();
                }
                if ((i & 8192) == 8192) {
                    i2 |= 8192;
                }
                SingleFieldBuilder<FileResponse, FileResponse.Builder, FileResponseOrBuilder> singleFieldBuilder14 = this.fileRespBuilder_;
                if (singleFieldBuilder14 == null) {
                    command.fileResp_ = this.fileResp_;
                } else {
                    command.fileResp_ = singleFieldBuilder14.build();
                }
                if ((i & 16384) == 16384) {
                    i2 |= 16384;
                }
                SingleFieldBuilder<LogRequest, LogRequest.Builder, LogRequestOrBuilder> singleFieldBuilder15 = this.logReqBuilder_;
                if (singleFieldBuilder15 == null) {
                    command.logReq_ = this.logReq_;
                } else {
                    command.logReq_ = singleFieldBuilder15.build();
                }
                if ((i & 32768) == 32768) {
                    i2 |= 32768;
                }
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder16 = this.testReqBuilder_;
                if (singleFieldBuilder16 == null) {
                    command.testReq_ = this.testReq_;
                } else {
                    command.testReq_ = singleFieldBuilder16.build();
                }
                if ((i & 65536) == 65536) {
                    i2 |= 65536;
                }
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder17 = this.testRespBuilder_;
                if (singleFieldBuilder17 == null) {
                    command.testResp_ = this.testResp_;
                } else {
                    command.testResp_ = singleFieldBuilder17.build();
                }
                if ((i & 131072) == 131072) {
                    i2 |= 131072;
                }
                SingleFieldBuilder<UpdateResponse, UpdateResponse.Builder, UpdateResponseOrBuilder> singleFieldBuilder18 = this.updateResponseBuilder_;
                if (singleFieldBuilder18 == null) {
                    command.updateResponse_ = this.updateResponse_;
                } else {
                    command.updateResponse_ = singleFieldBuilder18.build();
                }
                command.bitField0_ = i2;
                onBuilt();
                return command;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Command getDefaultInstanceForType() {
                return Command.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectQueryBuilder_;
                if (singleFieldBuilder == null) {
                    this.connectQuery_ = Connect.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -2;
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder2 = this.connectRespBuilder_;
                if (singleFieldBuilder2 == null) {
                    this.connectResp_ = Connect.getDefaultInstance();
                } else {
                    singleFieldBuilder2.clear();
                }
                this.bitField0_ &= -3;
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder3 = this.heartbeatBuilder_;
                if (singleFieldBuilder3 == null) {
                    this.heartbeat_ = Control.getDefaultInstance();
                } else {
                    singleFieldBuilder3.clear();
                }
                this.bitField0_ &= -5;
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder4 = this.controlBuilder_;
                if (singleFieldBuilder4 == null) {
                    this.control_ = Control.getDefaultInstance();
                } else {
                    singleFieldBuilder4.clear();
                }
                this.bitField0_ &= -9;
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder5 = this.paramQueryBuilder_;
                if (singleFieldBuilder5 == null) {
                    this.paramQuery_ = ParamUpdate.getDefaultInstance();
                } else {
                    singleFieldBuilder5.clear();
                }
                this.bitField0_ &= -17;
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder6 = this.paramUpdateBuilder_;
                if (singleFieldBuilder6 == null) {
                    this.paramUpdate_ = ParamUpdate.getDefaultInstance();
                } else {
                    singleFieldBuilder6.clear();
                }
                this.bitField0_ &= -33;
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder7 = this.paramRespBuilder_;
                if (singleFieldBuilder7 == null) {
                    this.paramResp_ = ParamUpdate.getDefaultInstance();
                } else {
                    singleFieldBuilder7.clear();
                }
                this.bitField0_ &= -65;
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder8 = this.stateQueryBuilder_;
                if (singleFieldBuilder8 == null) {
                    this.stateQuery_ = StateUpdate.getDefaultInstance();
                } else {
                    singleFieldBuilder8.clear();
                }
                this.bitField0_ &= -129;
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder9 = this.stateRespBuilder_;
                if (singleFieldBuilder9 == null) {
                    this.stateResp_ = StateUpdate.getDefaultInstance();
                } else {
                    singleFieldBuilder9.clear();
                }
                this.bitField0_ &= -257;
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder10 = this.locationSyncBuilder_;
                if (singleFieldBuilder10 == null) {
                    this.locationSync_ = LocationSync.getDefaultInstance();
                } else {
                    singleFieldBuilder10.clear();
                }
                this.bitField0_ &= -513;
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder11 = this.locationCtlBuilder_;
                if (singleFieldBuilder11 == null) {
                    this.locationCtl_ = LocationSync.getDefaultInstance();
                } else {
                    singleFieldBuilder11.clear();
                }
                this.bitField0_ &= -1025;
                SingleFieldBuilder<FileRequest, FileRequest.Builder, FileRequestOrBuilder> singleFieldBuilder12 = this.fileReqBuilder_;
                if (singleFieldBuilder12 == null) {
                    this.fileReq_ = FileRequest.getDefaultInstance();
                } else {
                    singleFieldBuilder12.clear();
                }
                this.bitField0_ &= -2049;
                SingleFieldBuilder<FilePack, FilePack.Builder, FilePackOrBuilder> singleFieldBuilder13 = this.filePackBuilder_;
                if (singleFieldBuilder13 == null) {
                    this.filePack_ = FilePack.getDefaultInstance();
                } else {
                    singleFieldBuilder13.clear();
                }
                this.bitField0_ &= -4097;
                SingleFieldBuilder<FileResponse, FileResponse.Builder, FileResponseOrBuilder> singleFieldBuilder14 = this.fileRespBuilder_;
                if (singleFieldBuilder14 == null) {
                    this.fileResp_ = FileResponse.getDefaultInstance();
                } else {
                    singleFieldBuilder14.clear();
                }
                this.bitField0_ &= -8193;
                SingleFieldBuilder<LogRequest, LogRequest.Builder, LogRequestOrBuilder> singleFieldBuilder15 = this.logReqBuilder_;
                if (singleFieldBuilder15 == null) {
                    this.logReq_ = LogRequest.getDefaultInstance();
                } else {
                    singleFieldBuilder15.clear();
                }
                this.bitField0_ &= -16385;
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder16 = this.testReqBuilder_;
                if (singleFieldBuilder16 == null) {
                    this.testReq_ = IntercomTest.getDefaultInstance();
                } else {
                    singleFieldBuilder16.clear();
                }
                this.bitField0_ &= -32769;
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder17 = this.testRespBuilder_;
                if (singleFieldBuilder17 == null) {
                    this.testResp_ = IntercomTest.getDefaultInstance();
                } else {
                    singleFieldBuilder17.clear();
                }
                this.bitField0_ &= -65537;
                SingleFieldBuilder<UpdateResponse, UpdateResponse.Builder, UpdateResponseOrBuilder> singleFieldBuilder18 = this.updateResponseBuilder_;
                if (singleFieldBuilder18 == null) {
                    this.updateResponse_ = UpdateResponse.getDefaultInstance();
                } else {
                    singleFieldBuilder18.clear();
                }
                this.bitField0_ &= -131073;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setConnectQuery(Connect.Builder builder) {
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectQueryBuilder_;
                if (singleFieldBuilder == null) {
                    this.connectQuery_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 1;
                return this;
            }

            public Builder setConnectResp(Connect.Builder builder) {
                SingleFieldBuilder<Connect, Connect.Builder, ConnectOrBuilder> singleFieldBuilder = this.connectRespBuilder_;
                if (singleFieldBuilder == null) {
                    this.connectResp_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setControl(Control.Builder builder) {
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder = this.controlBuilder_;
                if (singleFieldBuilder == null) {
                    this.control_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setFilePack(FilePack.Builder builder) {
                SingleFieldBuilder<FilePack, FilePack.Builder, FilePackOrBuilder> singleFieldBuilder = this.filePackBuilder_;
                if (singleFieldBuilder == null) {
                    this.filePack_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4096;
                return this;
            }

            public Builder setFileReq(FileRequest.Builder builder) {
                SingleFieldBuilder<FileRequest, FileRequest.Builder, FileRequestOrBuilder> singleFieldBuilder = this.fileReqBuilder_;
                if (singleFieldBuilder == null) {
                    this.fileReq_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder setFileResp(FileResponse.Builder builder) {
                SingleFieldBuilder<FileResponse, FileResponse.Builder, FileResponseOrBuilder> singleFieldBuilder = this.fileRespBuilder_;
                if (singleFieldBuilder == null) {
                    this.fileResp_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 8192;
                return this;
            }

            public Builder setHeartbeat(Control.Builder builder) {
                SingleFieldBuilder<Control, Control.Builder, ControlOrBuilder> singleFieldBuilder = this.heartbeatBuilder_;
                if (singleFieldBuilder == null) {
                    this.heartbeat_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setLocationCtl(LocationSync.Builder builder) {
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder = this.locationCtlBuilder_;
                if (singleFieldBuilder == null) {
                    this.locationCtl_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public Builder setLocationSync(LocationSync.Builder builder) {
                SingleFieldBuilder<LocationSync, LocationSync.Builder, LocationSyncOrBuilder> singleFieldBuilder = this.locationSyncBuilder_;
                if (singleFieldBuilder == null) {
                    this.locationSync_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder setLogReq(LogRequest.Builder builder) {
                SingleFieldBuilder<LogRequest, LogRequest.Builder, LogRequestOrBuilder> singleFieldBuilder = this.logReqBuilder_;
                if (singleFieldBuilder == null) {
                    this.logReq_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 16384;
                return this;
            }

            public Builder setParamQuery(ParamUpdate.Builder builder) {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramQueryBuilder_;
                if (singleFieldBuilder == null) {
                    this.paramQuery_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder setParamResp(ParamUpdate.Builder builder) {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramRespBuilder_;
                if (singleFieldBuilder == null) {
                    this.paramResp_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder setParamUpdate(ParamUpdate.Builder builder) {
                SingleFieldBuilder<ParamUpdate, ParamUpdate.Builder, ParamUpdateOrBuilder> singleFieldBuilder = this.paramUpdateBuilder_;
                if (singleFieldBuilder == null) {
                    this.paramUpdate_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder setStateQuery(StateUpdate.Builder builder) {
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder = this.stateQueryBuilder_;
                if (singleFieldBuilder == null) {
                    this.stateQuery_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder setStateResp(StateUpdate.Builder builder) {
                SingleFieldBuilder<StateUpdate, StateUpdate.Builder, StateUpdateOrBuilder> singleFieldBuilder = this.stateRespBuilder_;
                if (singleFieldBuilder == null) {
                    this.stateResp_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 256;
                return this;
            }

            public Builder setTestReq(IntercomTest.Builder builder) {
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder = this.testReqBuilder_;
                if (singleFieldBuilder == null) {
                    this.testReq_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 32768;
                return this;
            }

            public Builder setTestResp(IntercomTest.Builder builder) {
                SingleFieldBuilder<IntercomTest, IntercomTest.Builder, IntercomTestOrBuilder> singleFieldBuilder = this.testRespBuilder_;
                if (singleFieldBuilder == null) {
                    this.testResp_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 65536;
                return this;
            }

            public Builder setUpdateResponse(UpdateResponse.Builder builder) {
                SingleFieldBuilder<UpdateResponse, UpdateResponse.Builder, UpdateResponseOrBuilder> singleFieldBuilder = this.updateResponseBuilder_;
                if (singleFieldBuilder == null) {
                    this.updateResponse_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 131072;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.connectQuery_ = Connect.getDefaultInstance();
                this.connectResp_ = Connect.getDefaultInstance();
                this.heartbeat_ = Control.getDefaultInstance();
                this.control_ = Control.getDefaultInstance();
                this.paramQuery_ = ParamUpdate.getDefaultInstance();
                this.paramUpdate_ = ParamUpdate.getDefaultInstance();
                this.paramResp_ = ParamUpdate.getDefaultInstance();
                this.stateQuery_ = StateUpdate.getDefaultInstance();
                this.stateResp_ = StateUpdate.getDefaultInstance();
                this.locationSync_ = LocationSync.getDefaultInstance();
                this.locationCtl_ = LocationSync.getDefaultInstance();
                this.fileReq_ = FileRequest.getDefaultInstance();
                this.filePack_ = FilePack.getDefaultInstance();
                this.fileResp_ = FileResponse.getDefaultInstance();
                this.logReq_ = LogRequest.getDefaultInstance();
                this.testReq_ = IntercomTest.getDefaultInstance();
                this.testResp_ = IntercomTest.getDefaultInstance();
                this.updateResponse_ = UpdateResponse.getDefaultInstance();
                maybeForceBuilderInitialization();
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<Command> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public Command parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = Command.newBuilder();
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
            Command command = new Command(true);
            defaultInstance = command;
            command.initFields();
        }

        /* synthetic */ Command(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static Command getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MitalkProtos.f5976a;
        }

        private void initFields() {
            this.connectQuery_ = Connect.getDefaultInstance();
            this.connectResp_ = Connect.getDefaultInstance();
            this.heartbeat_ = Control.getDefaultInstance();
            this.control_ = Control.getDefaultInstance();
            this.paramQuery_ = ParamUpdate.getDefaultInstance();
            this.paramUpdate_ = ParamUpdate.getDefaultInstance();
            this.paramResp_ = ParamUpdate.getDefaultInstance();
            this.stateQuery_ = StateUpdate.getDefaultInstance();
            this.stateResp_ = StateUpdate.getDefaultInstance();
            this.locationSync_ = LocationSync.getDefaultInstance();
            this.locationCtl_ = LocationSync.getDefaultInstance();
            this.fileReq_ = FileRequest.getDefaultInstance();
            this.filePack_ = FilePack.getDefaultInstance();
            this.fileResp_ = FileResponse.getDefaultInstance();
            this.logReq_ = LogRequest.getDefaultInstance();
            this.testReq_ = IntercomTest.getDefaultInstance();
            this.testResp_ = IntercomTest.getDefaultInstance();
            this.updateResponse_ = UpdateResponse.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Command parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static Command parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public Connect getConnectQuery() {
            return this.connectQuery_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public ConnectOrBuilder getConnectQueryOrBuilder() {
            return this.connectQuery_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public Connect getConnectResp() {
            return this.connectResp_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public ConnectOrBuilder getConnectRespOrBuilder() {
            return this.connectResp_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public Control getControl() {
            return this.control_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public ControlOrBuilder getControlOrBuilder() {
            return this.control_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public FilePack getFilePack() {
            return this.filePack_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public FilePackOrBuilder getFilePackOrBuilder() {
            return this.filePack_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public FileRequest getFileReq() {
            return this.fileReq_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public FileRequestOrBuilder getFileReqOrBuilder() {
            return this.fileReq_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public FileResponse getFileResp() {
            return this.fileResp_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public FileResponseOrBuilder getFileRespOrBuilder() {
            return this.fileResp_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public Control getHeartbeat() {
            return this.heartbeat_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public ControlOrBuilder getHeartbeatOrBuilder() {
            return this.heartbeat_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public LocationSync getLocationCtl() {
            return this.locationCtl_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public LocationSyncOrBuilder getLocationCtlOrBuilder() {
            return this.locationCtl_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public LocationSync getLocationSync() {
            return this.locationSync_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public LocationSyncOrBuilder getLocationSyncOrBuilder() {
            return this.locationSync_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public LogRequest getLogReq() {
            return this.logReq_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public LogRequestOrBuilder getLogReqOrBuilder() {
            return this.logReq_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public ParamUpdate getParamQuery() {
            return this.paramQuery_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public ParamUpdateOrBuilder getParamQueryOrBuilder() {
            return this.paramQuery_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public ParamUpdate getParamResp() {
            return this.paramResp_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public ParamUpdateOrBuilder getParamRespOrBuilder() {
            return this.paramResp_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public ParamUpdate getParamUpdate() {
            return this.paramUpdate_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public ParamUpdateOrBuilder getParamUpdateOrBuilder() {
            return this.paramUpdate_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Command> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public StateUpdate getStateQuery() {
            return this.stateQuery_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public StateUpdateOrBuilder getStateQueryOrBuilder() {
            return this.stateQuery_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public StateUpdate getStateResp() {
            return this.stateResp_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public StateUpdateOrBuilder getStateRespOrBuilder() {
            return this.stateResp_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public IntercomTest getTestReq() {
            return this.testReq_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public IntercomTestOrBuilder getTestReqOrBuilder() {
            return this.testReq_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public IntercomTest getTestResp() {
            return this.testResp_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public IntercomTestOrBuilder getTestRespOrBuilder() {
            return this.testResp_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public UpdateResponse getUpdateResponse() {
            return this.updateResponse_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public UpdateResponseOrBuilder getUpdateResponseOrBuilder() {
            return this.updateResponse_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasConnectQuery() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasConnectResp() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasControl() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasFilePack() {
            return (this.bitField0_ & 4096) == 4096;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasFileReq() {
            return (this.bitField0_ & 2048) == 2048;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasFileResp() {
            return (this.bitField0_ & 8192) == 8192;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasHeartbeat() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasLocationCtl() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasLocationSync() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasLogReq() {
            return (this.bitField0_ & 16384) == 16384;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasParamQuery() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasParamResp() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasParamUpdate() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasStateQuery() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasStateResp() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasTestReq() {
            return (this.bitField0_ & 32768) == 32768;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasTestResp() {
            return (this.bitField0_ & 65536) == 65536;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.CommandOrBuilder
        public boolean hasUpdateResponse() {
            return (this.bitField0_ & 131072) == 131072;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.f5977b.ensureFieldAccessorsInitialized(Command.class, Builder.class);
        }

        private Command(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(Command command) {
            return (Builder) newBuilder().mergeFrom((Message) command);
        }

        public static Command parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Command parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Command parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Command getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private Command(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Command parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Command parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static Command parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Command parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static Command parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface CommandOrBuilder extends MessageOrBuilder {
        Connect getConnectQuery();

        ConnectOrBuilder getConnectQueryOrBuilder();

        Connect getConnectResp();

        ConnectOrBuilder getConnectRespOrBuilder();

        Control getControl();

        ControlOrBuilder getControlOrBuilder();

        FilePack getFilePack();

        FilePackOrBuilder getFilePackOrBuilder();

        FileRequest getFileReq();

        FileRequestOrBuilder getFileReqOrBuilder();

        FileResponse getFileResp();

        FileResponseOrBuilder getFileRespOrBuilder();

        Control getHeartbeat();

        ControlOrBuilder getHeartbeatOrBuilder();

        LocationSync getLocationCtl();

        LocationSyncOrBuilder getLocationCtlOrBuilder();

        LocationSync getLocationSync();

        LocationSyncOrBuilder getLocationSyncOrBuilder();

        LogRequest getLogReq();

        LogRequestOrBuilder getLogReqOrBuilder();

        ParamUpdate getParamQuery();

        ParamUpdateOrBuilder getParamQueryOrBuilder();

        ParamUpdate getParamResp();

        ParamUpdateOrBuilder getParamRespOrBuilder();

        ParamUpdate getParamUpdate();

        ParamUpdateOrBuilder getParamUpdateOrBuilder();

        StateUpdate getStateQuery();

        StateUpdateOrBuilder getStateQueryOrBuilder();

        StateUpdate getStateResp();

        StateUpdateOrBuilder getStateRespOrBuilder();

        IntercomTest getTestReq();

        IntercomTestOrBuilder getTestReqOrBuilder();

        IntercomTest getTestResp();

        IntercomTestOrBuilder getTestRespOrBuilder();

        UpdateResponse getUpdateResponse();

        UpdateResponseOrBuilder getUpdateResponseOrBuilder();

        boolean hasConnectQuery();

        boolean hasConnectResp();

        boolean hasControl();

        boolean hasFilePack();

        boolean hasFileReq();

        boolean hasFileResp();

        boolean hasHeartbeat();

        boolean hasLocationCtl();

        boolean hasLocationSync();

        boolean hasLogReq();

        boolean hasParamQuery();

        boolean hasParamResp();

        boolean hasParamUpdate();

        boolean hasStateQuery();

        boolean hasStateResp();

        boolean hasTestReq();

        boolean hasTestResp();

        boolean hasUpdateResponse();
    }

    /* loaded from: classes2.dex */
    public static final class Connect extends GeneratedMessage implements ConnectOrBuilder {
        public static final int CONNCODE_FIELD_NUMBER = 2;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static Parser<Connect> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final Connect defaultInstance;
        private int bitField0_;
        private CONNCODE connCode_;
        private int deviceId_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ConnectOrBuilder {
            private int bitField0_;
            private CONNCODE connCode_;
            private int deviceId_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MitalkProtos.f5978c;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearConnCode() {
                this.bitField0_ &= -3;
                this.connCode_ = CONNCODE.DISCONNECT;
                onChanged();
                return this;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -5;
                this.deviceId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ConnectOrBuilder
            public CONNCODE getConnCode() {
                return this.connCode_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MitalkProtos.f5978c;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ConnectOrBuilder
            public int getDeviceId() {
                return this.deviceId_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ConnectOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ConnectOrBuilder
            public boolean hasConnCode() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ConnectOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ConnectOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.d.ensureFieldAccessorsInitialized(Connect.class, Builder.class);
            }

            public Builder setConnCode(CONNCODE conncode) {
                if (conncode != null) {
                    this.bitField0_ |= 2;
                    this.connCode_ = conncode;
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

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.connCode_ = CONNCODE.DISCONNECT;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Connect build() {
                Connect buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Connect buildPartial() {
                Connect connect = new Connect(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                connect.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                connect.connCode_ = this.connCode_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                connect.deviceId_ = this.deviceId_;
                connect.bitField0_ = i2;
                onBuilt();
                return connect;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Connect getDefaultInstanceForType() {
                return Connect.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.connCode_ = CONNCODE.DISCONNECT;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.connCode_ = CONNCODE.DISCONNECT;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.deviceId_ = 0;
                this.bitField0_ = i2 & (-5);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<Connect> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public Connect parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = Connect.newBuilder();
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
            Connect connect = new Connect(true);
            defaultInstance = connect;
            connect.initFields();
        }

        /* synthetic */ Connect(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static Connect getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MitalkProtos.f5978c;
        }

        private void initFields() {
            this.version_ = 0;
            this.connCode_ = CONNCODE.DISCONNECT;
            this.deviceId_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Connect parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static Connect parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ConnectOrBuilder
        public CONNCODE getConnCode() {
            return this.connCode_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ConnectOrBuilder
        public int getDeviceId() {
            return this.deviceId_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Connect> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ConnectOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ConnectOrBuilder
        public boolean hasConnCode() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ConnectOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ConnectOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.d.ensureFieldAccessorsInitialized(Connect.class, Builder.class);
        }

        private Connect(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(Connect connect) {
            return (Builder) newBuilder().mergeFrom((Message) connect);
        }

        public static Connect parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Connect parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Connect parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Connect getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private Connect(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Connect parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Connect parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static Connect parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Connect parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static Connect parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ConnectOrBuilder extends MessageOrBuilder {
        CONNCODE getConnCode();

        int getDeviceId();

        int getVersion();

        boolean hasConnCode();

        boolean hasDeviceId();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class Control extends GeneratedMessage implements ControlOrBuilder {
        public static final int CTRLCODE_FIELD_NUMBER = 2;
        public static Parser<Control> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final Control defaultInstance;
        private int bitField0_;
        private CTRLCODE ctrlCode_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ControlOrBuilder {
            private int bitField0_;
            private CTRLCODE ctrlCode_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MitalkProtos.e;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearCtrlCode() {
                this.bitField0_ &= -3;
                this.ctrlCode_ = CTRLCODE.RSTDEVICE;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ControlOrBuilder
            public CTRLCODE getCtrlCode() {
                return this.ctrlCode_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MitalkProtos.e;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ControlOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ControlOrBuilder
            public boolean hasCtrlCode() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ControlOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.f.ensureFieldAccessorsInitialized(Control.class, Builder.class);
            }

            public Builder setCtrlCode(CTRLCODE ctrlcode) {
                if (ctrlcode != null) {
                    this.bitField0_ |= 2;
                    this.ctrlCode_ = ctrlcode;
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
                this.ctrlCode_ = CTRLCODE.RSTDEVICE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Control build() {
                Control buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Control buildPartial() {
                Control control = new Control(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                control.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                control.ctrlCode_ = this.ctrlCode_;
                control.bitField0_ = i2;
                onBuilt();
                return control;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Control getDefaultInstanceForType() {
                return Control.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.ctrlCode_ = CTRLCODE.RSTDEVICE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.ctrlCode_ = CTRLCODE.RSTDEVICE;
                this.bitField0_ = i & (-3);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<Control> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public Control parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = Control.newBuilder();
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
            Control control = new Control(true);
            defaultInstance = control;
            control.initFields();
        }

        /* synthetic */ Control(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static Control getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MitalkProtos.e;
        }

        private void initFields() {
            this.version_ = 0;
            this.ctrlCode_ = CTRLCODE.RSTDEVICE;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Control parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static Control parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ControlOrBuilder
        public CTRLCODE getCtrlCode() {
            return this.ctrlCode_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Control> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ControlOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ControlOrBuilder
        public boolean hasCtrlCode() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ControlOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.f.ensureFieldAccessorsInitialized(Control.class, Builder.class);
        }

        private Control(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(Control control) {
            return (Builder) newBuilder().mergeFrom((Message) control);
        }

        public static Control parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Control parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Control parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Control getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private Control(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Control parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Control parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static Control parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Control parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static Control parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ControlOrBuilder extends MessageOrBuilder {
        CTRLCODE getCtrlCode();

        int getVersion();

        boolean hasCtrlCode();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public enum FILECMD implements ProtocolMessageEnum {
        START(0, 0),
        COMPLETE(1, 1);
        
        public static final int COMPLETE_VALUE = 1;
        public static final int START_VALUE = 0;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<FILECMD> internalValueMap = new a();
        private static final FILECMD[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<FILECMD> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public FILECMD findValueByNumber(int i) {
                return FILECMD.valueOf(i);
            }
        }

        FILECMD(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return MitalkProtos.A().getEnumTypes().get(9);
        }

        public static Internal.EnumLiteMap<FILECMD> internalGetValueMap() {
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

        public static FILECMD valueOf(int i) {
            if (i == 0) {
                return START;
            }
            if (i != 1) {
                return null;
            }
            return COMPLETE;
        }

        public static FILECMD valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum FILETYPE implements ProtocolMessageEnum {
        BLEUPFILE(0, 1),
        MCUUPFILE(1, 2),
        GBKFONT16(2, 3),
        ASCIIFONT16(3, 4),
        GBKFONTEX(4, 5),
        ASCIIFONTEX(5, 6),
        MCUSENDLOG(6, 7),
        WARNINGTONE(7, 8),
        MCUBLEUPFILE(8, 9);
        
        public static final int ASCIIFONT16_VALUE = 4;
        public static final int ASCIIFONTEX_VALUE = 6;
        public static final int BLEUPFILE_VALUE = 1;
        public static final int GBKFONT16_VALUE = 3;
        public static final int GBKFONTEX_VALUE = 5;
        public static final int MCUBLEUPFILE_VALUE = 9;
        public static final int MCUSENDLOG_VALUE = 7;
        public static final int MCUUPFILE_VALUE = 2;
        public static final int WARNINGTONE_VALUE = 8;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<FILETYPE> internalValueMap = new a();
        private static final FILETYPE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<FILETYPE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public FILETYPE findValueByNumber(int i) {
                return FILETYPE.valueOf(i);
            }
        }

        FILETYPE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return MitalkProtos.A().getEnumTypes().get(8);
        }

        public static Internal.EnumLiteMap<FILETYPE> internalGetValueMap() {
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

        public static FILETYPE valueOf(int i) {
            switch (i) {
                case 1:
                    return BLEUPFILE;
                case 2:
                    return MCUUPFILE;
                case 3:
                    return GBKFONT16;
                case 4:
                    return ASCIIFONT16;
                case 5:
                    return GBKFONTEX;
                case 6:
                    return ASCIIFONTEX;
                case 7:
                    return MCUSENDLOG;
                case 8:
                    return WARNINGTONE;
                case 9:
                    return MCUBLEUPFILE;
                default:
                    return null;
            }
        }

        public static FILETYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class FilePack extends GeneratedMessage implements FilePackOrBuilder {
        public static final int DATA_FIELD_NUMBER = 3;
        public static Parser<FilePack> PARSER = new a();
        public static final int SEQ_FIELD_NUMBER = 1;
        public static final int XOR_FIELD_NUMBER = 2;
        private static final FilePack defaultInstance;
        private int bitField0_;
        private ByteString data_;
        private int seq_;
        private final UnknownFieldSet unknownFields;
        private int xor_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements FilePackOrBuilder {
            private int bitField0_;
            private ByteString data_;
            private int seq_;
            private int xor_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MitalkProtos.q;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearData() {
                this.bitField0_ &= -5;
                this.data_ = FilePack.getDefaultInstance().getData();
                onChanged();
                return this;
            }

            public Builder clearSeq() {
                this.bitField0_ &= -2;
                this.seq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearXor() {
                this.bitField0_ &= -3;
                this.xor_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FilePackOrBuilder
            public ByteString getData() {
                return this.data_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MitalkProtos.q;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FilePackOrBuilder
            public int getSeq() {
                return this.seq_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FilePackOrBuilder
            public int getXor() {
                return this.xor_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FilePackOrBuilder
            public boolean hasData() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FilePackOrBuilder
            public boolean hasSeq() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FilePackOrBuilder
            public boolean hasXor() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.r.ensureFieldAccessorsInitialized(FilePack.class, Builder.class);
            }

            public Builder setData(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 4;
                    this.data_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setSeq(int i) {
                this.bitField0_ |= 1;
                this.seq_ = i;
                onChanged();
                return this;
            }

            public Builder setXor(int i) {
                this.bitField0_ |= 2;
                this.xor_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FilePack build() {
                FilePack buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FilePack buildPartial() {
                FilePack filePack = new FilePack(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                filePack.seq_ = this.seq_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                filePack.xor_ = this.xor_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                filePack.data_ = this.data_;
                filePack.bitField0_ = i2;
                onBuilt();
                return filePack;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public FilePack getDefaultInstanceForType() {
                return FilePack.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.seq_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.xor_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.data_ = ByteString.EMPTY;
                this.bitField0_ = i2 & (-5);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<FilePack> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public FilePack parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = FilePack.newBuilder();
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
            FilePack filePack = new FilePack(true);
            defaultInstance = filePack;
            filePack.initFields();
        }

        /* synthetic */ FilePack(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static FilePack getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MitalkProtos.q;
        }

        private void initFields() {
            this.seq_ = 0;
            this.xor_ = 0;
            this.data_ = ByteString.EMPTY;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static FilePack parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static FilePack parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FilePackOrBuilder
        public ByteString getData() {
            return this.data_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<FilePack> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FilePackOrBuilder
        public int getSeq() {
            return this.seq_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FilePackOrBuilder
        public int getXor() {
            return this.xor_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FilePackOrBuilder
        public boolean hasData() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FilePackOrBuilder
        public boolean hasSeq() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FilePackOrBuilder
        public boolean hasXor() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.r.ensureFieldAccessorsInitialized(FilePack.class, Builder.class);
        }

        private FilePack(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(FilePack filePack) {
            return (Builder) newBuilder().mergeFrom((Message) filePack);
        }

        public static FilePack parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FilePack parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FilePack parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FilePack getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private FilePack(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FilePack parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static FilePack parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static FilePack parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FilePack parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static FilePack parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface FilePackOrBuilder extends MessageOrBuilder {
        ByteString getData();

        int getSeq();

        int getXor();

        boolean hasData();

        boolean hasSeq();

        boolean hasXor();
    }

    /* loaded from: classes2.dex */
    public static final class FileRequest extends GeneratedMessage implements FileRequestOrBuilder {
        public static final int FCMD_FIELD_NUMBER = 2;
        public static final int FCRC32_FIELD_NUMBER = 5;
        public static final int FPACKNUM_FIELD_NUMBER = 7;
        public static final int FSIZE_FIELD_NUMBER = 4;
        public static final int FTYPE_FIELD_NUMBER = 3;
        public static final int FVERSION_FIELD_NUMBER = 6;
        public static Parser<FileRequest> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final FileRequest defaultInstance;
        private int bitField0_;
        private FILECMD fCmd_;
        private int fCrc32_;
        private int fPackNum_;
        private int fSize_;
        private FILETYPE fType_;
        private int fVersion_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements FileRequestOrBuilder {
            private int bitField0_;
            private FILECMD fCmd_;
            private int fCrc32_;
            private int fPackNum_;
            private int fSize_;
            private FILETYPE fType_;
            private int fVersion_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MitalkProtos.o;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearFCmd() {
                this.bitField0_ &= -3;
                this.fCmd_ = FILECMD.START;
                onChanged();
                return this;
            }

            public Builder clearFCrc32() {
                this.bitField0_ &= -17;
                this.fCrc32_ = 0;
                onChanged();
                return this;
            }

            public Builder clearFPackNum() {
                this.bitField0_ &= -65;
                this.fPackNum_ = 0;
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
                this.fType_ = FILETYPE.BLEUPFILE;
                onChanged();
                return this;
            }

            public Builder clearFVersion() {
                this.bitField0_ &= -33;
                this.fVersion_ = 0;
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
                return MitalkProtos.o;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public FILECMD getFCmd() {
                return this.fCmd_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public int getFCrc32() {
                return this.fCrc32_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public int getFPackNum() {
                return this.fPackNum_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public int getFSize() {
                return this.fSize_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public FILETYPE getFType() {
                return this.fType_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public int getFVersion() {
                return this.fVersion_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public boolean hasFCmd() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public boolean hasFCrc32() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public boolean hasFPackNum() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public boolean hasFSize() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public boolean hasFType() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public boolean hasFVersion() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.p.ensureFieldAccessorsInitialized(FileRequest.class, Builder.class);
            }

            public Builder setFCmd(FILECMD filecmd) {
                if (filecmd != null) {
                    this.bitField0_ |= 2;
                    this.fCmd_ = filecmd;
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

            public Builder setFPackNum(int i) {
                this.bitField0_ |= 64;
                this.fPackNum_ = i;
                onChanged();
                return this;
            }

            public Builder setFSize(int i) {
                this.bitField0_ |= 8;
                this.fSize_ = i;
                onChanged();
                return this;
            }

            public Builder setFType(FILETYPE filetype) {
                if (filetype != null) {
                    this.bitField0_ |= 4;
                    this.fType_ = filetype;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setFVersion(int i) {
                this.bitField0_ |= 32;
                this.fVersion_ = i;
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
                this.fCmd_ = FILECMD.START;
                this.fType_ = FILETYPE.BLEUPFILE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FileRequest build() {
                FileRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FileRequest buildPartial() {
                FileRequest fileRequest = new FileRequest(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                fileRequest.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                fileRequest.fCmd_ = this.fCmd_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                fileRequest.fType_ = this.fType_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                fileRequest.fSize_ = this.fSize_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                fileRequest.fCrc32_ = this.fCrc32_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                fileRequest.fVersion_ = this.fVersion_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                fileRequest.fPackNum_ = this.fPackNum_;
                fileRequest.bitField0_ = i2;
                onBuilt();
                return fileRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public FileRequest getDefaultInstanceForType() {
                return FileRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.fCmd_ = FILECMD.START;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.fType_ = FILETYPE.BLEUPFILE;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.fSize_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.fCrc32_ = 0;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.fVersion_ = 0;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.fPackNum_ = 0;
                this.bitField0_ = i6 & (-65);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.fCmd_ = FILECMD.START;
                this.fType_ = FILETYPE.BLEUPFILE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<FileRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public FileRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = FileRequest.newBuilder();
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
            FileRequest fileRequest = new FileRequest(true);
            defaultInstance = fileRequest;
            fileRequest.initFields();
        }

        /* synthetic */ FileRequest(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static FileRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MitalkProtos.o;
        }

        private void initFields() {
            this.version_ = 0;
            this.fCmd_ = FILECMD.START;
            this.fType_ = FILETYPE.BLEUPFILE;
            this.fSize_ = 0;
            this.fCrc32_ = 0;
            this.fVersion_ = 0;
            this.fPackNum_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static FileRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static FileRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public FILECMD getFCmd() {
            return this.fCmd_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public int getFCrc32() {
            return this.fCrc32_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public int getFPackNum() {
            return this.fPackNum_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public int getFSize() {
            return this.fSize_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public FILETYPE getFType() {
            return this.fType_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public int getFVersion() {
            return this.fVersion_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<FileRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public boolean hasFCmd() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public boolean hasFCrc32() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public boolean hasFPackNum() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public boolean hasFSize() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public boolean hasFType() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public boolean hasFVersion() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.p.ensureFieldAccessorsInitialized(FileRequest.class, Builder.class);
        }

        private FileRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(FileRequest fileRequest) {
            return (Builder) newBuilder().mergeFrom((Message) fileRequest);
        }

        public static FileRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FileRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FileRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FileRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private FileRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FileRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static FileRequest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static FileRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FileRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static FileRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface FileRequestOrBuilder extends MessageOrBuilder {
        FILECMD getFCmd();

        int getFCrc32();

        int getFPackNum();

        int getFSize();

        FILETYPE getFType();

        int getFVersion();

        int getVersion();

        boolean hasFCmd();

        boolean hasFCrc32();

        boolean hasFPackNum();

        boolean hasFSize();

        boolean hasFType();

        boolean hasFVersion();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class FileResponse extends GeneratedMessage implements FileResponseOrBuilder {
        public static final int ACKSEQ_FIELD_NUMBER = 2;
        public static Parser<FileResponse> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 1;
        private static final FileResponse defaultInstance;
        private int ackSeq_;
        private int bitField0_;
        private STATECODE result_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements FileResponseOrBuilder {
            private int ackSeq_;
            private int bitField0_;
            private STATECODE result_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MitalkProtos.s;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearAckSeq() {
                this.bitField0_ &= -3;
                this.ackSeq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -2;
                this.result_ = STATECODE.SUCCESS;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileResponseOrBuilder
            public int getAckSeq() {
                return this.ackSeq_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MitalkProtos.s;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileResponseOrBuilder
            public STATECODE getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileResponseOrBuilder
            public boolean hasAckSeq() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.FileResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.t.ensureFieldAccessorsInitialized(FileResponse.class, Builder.class);
            }

            public Builder setAckSeq(int i) {
                this.bitField0_ |= 2;
                this.ackSeq_ = i;
                onChanged();
                return this;
            }

            public Builder setResult(STATECODE statecode) {
                if (statecode != null) {
                    this.bitField0_ |= 1;
                    this.result_ = statecode;
                    onChanged();
                    return this;
                }
                throw null;
            }

            private Builder() {
                this.result_ = STATECODE.SUCCESS;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FileResponse build() {
                FileResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FileResponse buildPartial() {
                FileResponse fileResponse = new FileResponse(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                fileResponse.result_ = this.result_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                fileResponse.ackSeq_ = this.ackSeq_;
                fileResponse.bitField0_ = i2;
                onBuilt();
                return fileResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public FileResponse getDefaultInstanceForType() {
                return FileResponse.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = STATECODE.SUCCESS;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.result_ = STATECODE.SUCCESS;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.ackSeq_ = 0;
                this.bitField0_ = i & (-3);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<FileResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public FileResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = FileResponse.newBuilder();
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
            FileResponse fileResponse = new FileResponse(true);
            defaultInstance = fileResponse;
            fileResponse.initFields();
        }

        /* synthetic */ FileResponse(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static FileResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MitalkProtos.s;
        }

        private void initFields() {
            this.result_ = STATECODE.SUCCESS;
            this.ackSeq_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static FileResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static FileResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileResponseOrBuilder
        public int getAckSeq() {
            return this.ackSeq_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<FileResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileResponseOrBuilder
        public STATECODE getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileResponseOrBuilder
        public boolean hasAckSeq() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.FileResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.t.ensureFieldAccessorsInitialized(FileResponse.class, Builder.class);
        }

        private FileResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(FileResponse fileResponse) {
            return (Builder) newBuilder().mergeFrom((Message) fileResponse);
        }

        public static FileResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FileResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FileResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FileResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private FileResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FileResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static FileResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static FileResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FileResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static FileResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface FileResponseOrBuilder extends MessageOrBuilder {
        int getAckSeq();

        STATECODE getResult();

        boolean hasAckSeq();

        boolean hasResult();
    }

    /* loaded from: classes2.dex */
    public static final class IntercomTest extends GeneratedMessage implements IntercomTestOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        public static Parser<IntercomTest> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final IntercomTest defaultInstance;
        private int bitField0_;
        private ByteString data_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements IntercomTestOrBuilder {
            private int bitField0_;
            private ByteString data_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MitalkProtos.w;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearData() {
                this.bitField0_ &= -3;
                this.data_ = IntercomTest.getDefaultInstance().getData();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.IntercomTestOrBuilder
            public ByteString getData() {
                return this.data_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MitalkProtos.w;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.IntercomTestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.IntercomTestOrBuilder
            public boolean hasData() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.IntercomTestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.x.ensureFieldAccessorsInitialized(IntercomTest.class, Builder.class);
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

            public Builder setVersion(int i) {
                this.bitField0_ |= 1;
                this.version_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public IntercomTest build() {
                IntercomTest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public IntercomTest buildPartial() {
                IntercomTest intercomTest = new IntercomTest(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                intercomTest.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                intercomTest.data_ = this.data_;
                intercomTest.bitField0_ = i2;
                onBuilt();
                return intercomTest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public IntercomTest getDefaultInstanceForType() {
                return IntercomTest.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.data_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
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
        static class a extends AbstractParser<IntercomTest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public IntercomTest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = IntercomTest.newBuilder();
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
            IntercomTest intercomTest = new IntercomTest(true);
            defaultInstance = intercomTest;
            intercomTest.initFields();
        }

        /* synthetic */ IntercomTest(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static IntercomTest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MitalkProtos.w;
        }

        private void initFields() {
            this.version_ = 0;
            this.data_ = ByteString.EMPTY;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static IntercomTest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static IntercomTest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.IntercomTestOrBuilder
        public ByteString getData() {
            return this.data_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<IntercomTest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.IntercomTestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.IntercomTestOrBuilder
        public boolean hasData() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.IntercomTestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.x.ensureFieldAccessorsInitialized(IntercomTest.class, Builder.class);
        }

        private IntercomTest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(IntercomTest intercomTest) {
            return (Builder) newBuilder().mergeFrom((Message) intercomTest);
        }

        public static IntercomTest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IntercomTest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IntercomTest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public IntercomTest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private IntercomTest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static IntercomTest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static IntercomTest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static IntercomTest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IntercomTest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static IntercomTest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface IntercomTestOrBuilder extends MessageOrBuilder {
        ByteString getData();

        int getVersion();

        boolean hasData();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class LocationSync extends GeneratedMessage implements LocationSyncOrBuilder {
        public static final int ALTITUDE_FIELD_NUMBER = 7;
        public static final int CTL_FIELD_NUMBER = 2;
        public static final int FREQ_FIELD_NUMBER = 9;
        public static final int LATITUDE_FIELD_NUMBER = 6;
        public static final int LONGITUDE_FIELD_NUMBER = 5;
        public static Parser<LocationSync> PARSER = new a();
        public static final int TIME_FIELD_NUMBER = 8;
        public static final int USERID_FIELD_NUMBER = 3;
        public static final int USERNAME_FIELD_NUMBER = 4;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final LocationSync defaultInstance;
        private int altitude_;
        private int bitField0_;
        private CTLSYNC ctl_;
        private int freq_;
        private int latitude_;
        private int longitude_;
        private int time_;
        private final UnknownFieldSet unknownFields;
        private int userId_;
        private ByteString userName_;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements LocationSyncOrBuilder {
            private int altitude_;
            private int bitField0_;
            private CTLSYNC ctl_;
            private int freq_;
            private int latitude_;
            private int longitude_;
            private int time_;
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
                return MitalkProtos.m;
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

            public Builder clearCtl() {
                this.bitField0_ &= -3;
                this.ctl_ = CTLSYNC.DISABLE;
                onChanged();
                return this;
            }

            public Builder clearFreq() {
                this.bitField0_ &= -257;
                this.freq_ = 0;
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

            public Builder clearTime() {
                this.bitField0_ &= -129;
                this.time_ = 0;
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
                this.userName_ = LocationSync.getDefaultInstance().getUserName();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public int getAltitude() {
                return this.altitude_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public CTLSYNC getCtl() {
                return this.ctl_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MitalkProtos.m;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public int getFreq() {
                return this.freq_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public int getLatitude() {
                return this.latitude_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public int getLongitude() {
                return this.longitude_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public int getTime() {
                return this.time_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public int getUserId() {
                return this.userId_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public ByteString getUserName() {
                return this.userName_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public boolean hasAltitude() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public boolean hasCtl() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public boolean hasFreq() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public boolean hasLatitude() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public boolean hasLongitude() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public boolean hasTime() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public boolean hasUserId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public boolean hasUserName() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.n.ensureFieldAccessorsInitialized(LocationSync.class, Builder.class);
            }

            public Builder setAltitude(int i) {
                this.bitField0_ |= 64;
                this.altitude_ = i;
                onChanged();
                return this;
            }

            public Builder setCtl(CTLSYNC ctlsync) {
                if (ctlsync != null) {
                    this.bitField0_ |= 2;
                    this.ctl_ = ctlsync;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setFreq(int i) {
                this.bitField0_ |= 256;
                this.freq_ = i;
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

            public Builder setTime(int i) {
                this.bitField0_ |= 128;
                this.time_ = i;
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
                this.ctl_ = CTLSYNC.DISABLE;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LocationSync build() {
                LocationSync buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LocationSync buildPartial() {
                LocationSync locationSync = new LocationSync(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                locationSync.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                locationSync.ctl_ = this.ctl_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                locationSync.userId_ = this.userId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                locationSync.userName_ = this.userName_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                locationSync.longitude_ = this.longitude_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                locationSync.latitude_ = this.latitude_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                locationSync.altitude_ = this.altitude_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                locationSync.time_ = this.time_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                locationSync.freq_ = this.freq_;
                locationSync.bitField0_ = i2;
                onBuilt();
                return locationSync;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LocationSync getDefaultInstanceForType() {
                return LocationSync.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.ctl_ = CTLSYNC.DISABLE;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.userId_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.userName_ = ByteString.EMPTY;
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
                this.time_ = 0;
                int i8 = i7 & (-129);
                this.bitField0_ = i8;
                this.freq_ = 0;
                this.bitField0_ = i8 & (-257);
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.ctl_ = CTLSYNC.DISABLE;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<LocationSync> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public LocationSync parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = LocationSync.newBuilder();
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
            LocationSync locationSync = new LocationSync(true);
            defaultInstance = locationSync;
            locationSync.initFields();
        }

        /* synthetic */ LocationSync(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static LocationSync getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MitalkProtos.m;
        }

        private void initFields() {
            this.version_ = 0;
            this.ctl_ = CTLSYNC.DISABLE;
            this.userId_ = 0;
            this.userName_ = ByteString.EMPTY;
            this.longitude_ = 0;
            this.latitude_ = 0;
            this.altitude_ = 0;
            this.time_ = 0;
            this.freq_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static LocationSync parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static LocationSync parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public int getAltitude() {
            return this.altitude_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public CTLSYNC getCtl() {
            return this.ctl_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public int getFreq() {
            return this.freq_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public int getLatitude() {
            return this.latitude_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public int getLongitude() {
            return this.longitude_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<LocationSync> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public int getTime() {
            return this.time_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public int getUserId() {
            return this.userId_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public ByteString getUserName() {
            return this.userName_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public boolean hasAltitude() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public boolean hasCtl() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public boolean hasFreq() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public boolean hasLatitude() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public boolean hasLongitude() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public boolean hasTime() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public boolean hasUserId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public boolean hasUserName() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LocationSyncOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.n.ensureFieldAccessorsInitialized(LocationSync.class, Builder.class);
        }

        private LocationSync(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(LocationSync locationSync) {
            return (Builder) newBuilder().mergeFrom((Message) locationSync);
        }

        public static LocationSync parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static LocationSync parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static LocationSync parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LocationSync getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private LocationSync(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static LocationSync parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static LocationSync parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static LocationSync parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static LocationSync parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static LocationSync parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface LocationSyncOrBuilder extends MessageOrBuilder {
        int getAltitude();

        CTLSYNC getCtl();

        int getFreq();

        int getLatitude();

        int getLongitude();

        int getTime();

        int getUserId();

        ByteString getUserName();

        int getVersion();

        boolean hasAltitude();

        boolean hasCtl();

        boolean hasFreq();

        boolean hasLatitude();

        boolean hasLongitude();

        boolean hasTime();

        boolean hasUserId();

        boolean hasUserName();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class LogRequest extends GeneratedMessage implements LogRequestOrBuilder {
        public static Parser<LogRequest> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final LogRequest defaultInstance;
        private int bitField0_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements LogRequestOrBuilder {
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
                return MitalkProtos.u;
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
                return MitalkProtos.u;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LogRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.LogRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.v.ensureFieldAccessorsInitialized(LogRequest.class, Builder.class);
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
            public LogRequest build() {
                LogRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LogRequest buildPartial() {
                LogRequest logRequest = new LogRequest(this, null);
                int i = 1;
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                logRequest.version_ = this.version_;
                logRequest.bitField0_ = i;
                onBuilt();
                return logRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LogRequest getDefaultInstanceForType() {
                return LogRequest.getDefaultInstance();
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
        static class a extends AbstractParser<LogRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public LogRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = LogRequest.newBuilder();
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
            LogRequest logRequest = new LogRequest(true);
            defaultInstance = logRequest;
            logRequest.initFields();
        }

        /* synthetic */ LogRequest(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static LogRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MitalkProtos.u;
        }

        private void initFields() {
            this.version_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static LogRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static LogRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<LogRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LogRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.LogRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.v.ensureFieldAccessorsInitialized(LogRequest.class, Builder.class);
        }

        private LogRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(LogRequest logRequest) {
            return (Builder) newBuilder().mergeFrom((Message) logRequest);
        }

        public static LogRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static LogRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static LogRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LogRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private LogRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static LogRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static LogRequest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static LogRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static LogRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static LogRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface LogRequestOrBuilder extends MessageOrBuilder {
        int getVersion();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public enum POWERSTATE implements ProtocolMessageEnum {
        ALLOWUPDATE(0, 0),
        PROHIBITEUPDATE(1, 1);
        
        public static final int ALLOWUPDATE_VALUE = 0;
        public static final int PROHIBITEUPDATE_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<POWERSTATE> internalValueMap = new a();
        private static final POWERSTATE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<POWERSTATE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public POWERSTATE findValueByNumber(int i) {
                return POWERSTATE.valueOf(i);
            }
        }

        POWERSTATE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return MitalkProtos.A().getEnumTypes().get(3);
        }

        public static Internal.EnumLiteMap<POWERSTATE> internalGetValueMap() {
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

        public static POWERSTATE valueOf(int i) {
            if (i == 0) {
                return ALLOWUPDATE;
            }
            if (i != 1) {
                return null;
            }
            return PROHIBITEUPDATE;
        }

        public static POWERSTATE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class ParamUpdate extends GeneratedMessage implements ParamUpdateOrBuilder {
        public static final int ACTIVATECHANNEL_FIELD_NUMBER = 17;
        public static final int DEVICEID_FIELD_NUMBER = 4;
        public static final int DEVNAMEGBK_FIELD_NUMBER = 12;
        public static final int DEVNAMEUTF8_FIELD_NUMBER = 11;
        public static final int LANGUAGE_FIELD_NUMBER = 18;
        public static final int LOWPOWER_FIELD_NUMBER = 15;
        public static final int MODE_FIELD_NUMBER = 3;
        public static Parser<ParamUpdate> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int SHARELOC_FIELD_NUMBER = 13;
        public static final int SOSTEXT_FIELD_NUMBER = 7;
        public static final int STATEMODE_FIELD_NUMBER = 10;
        public static final int USERID_FIELD_NUMBER = 5;
        public static final int USERNAME_FIELD_NUMBER = 6;
        public static final int VERSIONBLE_FIELD_NUMBER = 8;
        public static final int VERSIONEXTEND_FIELD_NUMBER = 16;
        public static final int VERSIONHW_FIELD_NUMBER = 14;
        public static final int VERSIONMCU_FIELD_NUMBER = 9;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final ParamUpdate defaultInstance;
        private int activateChannel_;
        private int bitField0_;
        private ByteString devNameGBK_;
        private ByteString devNameUTF8_;
        private int deviceId_;
        private int language_;
        private POWERSTATE lowPower_;
        private ByteString mode_;
        private STATECODE result_;
        private int shareLoc_;
        private ByteString sosText_;
        private STATEMODE stateMode_;
        private final UnknownFieldSet unknownFields;
        private int userId_;
        private ByteString userName_;
        private int versionBLE_;
        private int versionExtend_;
        private int versionHW_;
        private int versionMCU_;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ParamUpdateOrBuilder {
            private int activateChannel_;
            private int bitField0_;
            private ByteString devNameGBK_;
            private ByteString devNameUTF8_;
            private int deviceId_;
            private int language_;
            private POWERSTATE lowPower_;
            private ByteString mode_;
            private STATECODE result_;
            private int shareLoc_;
            private ByteString sosText_;
            private STATEMODE stateMode_;
            private int userId_;
            private ByteString userName_;
            private int versionBLE_;
            private int versionExtend_;
            private int versionHW_;
            private int versionMCU_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MitalkProtos.g;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearActivateChannel() {
                this.bitField0_ &= -65537;
                this.activateChannel_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDevNameGBK() {
                this.bitField0_ &= -2049;
                this.devNameGBK_ = ParamUpdate.getDefaultInstance().getDevNameGBK();
                onChanged();
                return this;
            }

            public Builder clearDevNameUTF8() {
                this.bitField0_ &= -1025;
                this.devNameUTF8_ = ParamUpdate.getDefaultInstance().getDevNameUTF8();
                onChanged();
                return this;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -9;
                this.deviceId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLanguage() {
                this.bitField0_ &= -131073;
                this.language_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLowPower() {
                this.bitField0_ &= -16385;
                this.lowPower_ = POWERSTATE.ALLOWUPDATE;
                onChanged();
                return this;
            }

            public Builder clearMode() {
                this.bitField0_ &= -5;
                this.mode_ = ParamUpdate.getDefaultInstance().getMode();
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = STATECODE.SUCCESS;
                onChanged();
                return this;
            }

            public Builder clearShareLoc() {
                this.bitField0_ &= -4097;
                this.shareLoc_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSosText() {
                this.bitField0_ &= -65;
                this.sosText_ = ParamUpdate.getDefaultInstance().getSosText();
                onChanged();
                return this;
            }

            public Builder clearStateMode() {
                this.bitField0_ &= -513;
                this.stateMode_ = STATEMODE.SINGLE;
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -17;
                this.userId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUserName() {
                this.bitField0_ &= -33;
                this.userName_ = ParamUpdate.getDefaultInstance().getUserName();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVersionBLE() {
                this.bitField0_ &= -129;
                this.versionBLE_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVersionExtend() {
                this.bitField0_ &= -32769;
                this.versionExtend_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVersionHW() {
                this.bitField0_ &= -8193;
                this.versionHW_ = 0;
                onChanged();
                return this;
            }

            public Builder clearVersionMCU() {
                this.bitField0_ &= -257;
                this.versionMCU_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public int getActivateChannel() {
                return this.activateChannel_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MitalkProtos.g;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public ByteString getDevNameGBK() {
                return this.devNameGBK_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public ByteString getDevNameUTF8() {
                return this.devNameUTF8_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public int getDeviceId() {
                return this.deviceId_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public int getLanguage() {
                return this.language_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public POWERSTATE getLowPower() {
                return this.lowPower_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public ByteString getMode() {
                return this.mode_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public STATECODE getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public int getShareLoc() {
                return this.shareLoc_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public ByteString getSosText() {
                return this.sosText_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public STATEMODE getStateMode() {
                return this.stateMode_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public int getUserId() {
                return this.userId_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public ByteString getUserName() {
                return this.userName_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public int getVersionBLE() {
                return this.versionBLE_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public int getVersionExtend() {
                return this.versionExtend_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public int getVersionHW() {
                return this.versionHW_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public int getVersionMCU() {
                return this.versionMCU_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasActivateChannel() {
                return (this.bitField0_ & 65536) == 65536;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasDevNameGBK() {
                return (this.bitField0_ & 2048) == 2048;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasDevNameUTF8() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasLanguage() {
                return (this.bitField0_ & 131072) == 131072;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasLowPower() {
                return (this.bitField0_ & 16384) == 16384;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasMode() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasShareLoc() {
                return (this.bitField0_ & 4096) == 4096;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasSosText() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasStateMode() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasUserId() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasUserName() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasVersionBLE() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasVersionExtend() {
                return (this.bitField0_ & 32768) == 32768;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasVersionHW() {
                return (this.bitField0_ & 8192) == 8192;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
            public boolean hasVersionMCU() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.h.ensureFieldAccessorsInitialized(ParamUpdate.class, Builder.class);
            }

            public Builder setActivateChannel(int i) {
                this.bitField0_ |= 65536;
                this.activateChannel_ = i;
                onChanged();
                return this;
            }

            public Builder setDevNameGBK(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 2048;
                    this.devNameGBK_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setDevNameUTF8(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 1024;
                    this.devNameUTF8_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setDeviceId(int i) {
                this.bitField0_ |= 8;
                this.deviceId_ = i;
                onChanged();
                return this;
            }

            public Builder setLanguage(int i) {
                this.bitField0_ |= 131072;
                this.language_ = i;
                onChanged();
                return this;
            }

            public Builder setLowPower(POWERSTATE powerstate) {
                if (powerstate != null) {
                    this.bitField0_ |= 16384;
                    this.lowPower_ = powerstate;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setMode(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 4;
                    this.mode_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setResult(STATECODE statecode) {
                if (statecode != null) {
                    this.bitField0_ |= 2;
                    this.result_ = statecode;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setShareLoc(int i) {
                this.bitField0_ |= 4096;
                this.shareLoc_ = i;
                onChanged();
                return this;
            }

            public Builder setSosText(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 64;
                    this.sosText_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setStateMode(STATEMODE statemode) {
                if (statemode != null) {
                    this.bitField0_ |= 512;
                    this.stateMode_ = statemode;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 16;
                this.userId_ = i;
                onChanged();
                return this;
            }

            public Builder setUserName(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 32;
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

            public Builder setVersionBLE(int i) {
                this.bitField0_ |= 128;
                this.versionBLE_ = i;
                onChanged();
                return this;
            }

            public Builder setVersionExtend(int i) {
                this.bitField0_ |= 32768;
                this.versionExtend_ = i;
                onChanged();
                return this;
            }

            public Builder setVersionHW(int i) {
                this.bitField0_ |= 8192;
                this.versionHW_ = i;
                onChanged();
                return this;
            }

            public Builder setVersionMCU(int i) {
                this.bitField0_ |= 256;
                this.versionMCU_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                this.result_ = STATECODE.SUCCESS;
                ByteString byteString = ByteString.EMPTY;
                this.mode_ = byteString;
                this.userName_ = byteString;
                this.sosText_ = byteString;
                this.stateMode_ = STATEMODE.SINGLE;
                ByteString byteString2 = ByteString.EMPTY;
                this.devNameUTF8_ = byteString2;
                this.devNameGBK_ = byteString2;
                this.lowPower_ = POWERSTATE.ALLOWUPDATE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParamUpdate build() {
                ParamUpdate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ParamUpdate buildPartial() {
                ParamUpdate paramUpdate = new ParamUpdate(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                paramUpdate.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                paramUpdate.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                paramUpdate.mode_ = this.mode_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                paramUpdate.deviceId_ = this.deviceId_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                paramUpdate.userId_ = this.userId_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                paramUpdate.userName_ = this.userName_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                paramUpdate.sosText_ = this.sosText_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                paramUpdate.versionBLE_ = this.versionBLE_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                paramUpdate.versionMCU_ = this.versionMCU_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                paramUpdate.stateMode_ = this.stateMode_;
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                paramUpdate.devNameUTF8_ = this.devNameUTF8_;
                if ((i & 2048) == 2048) {
                    i2 |= 2048;
                }
                paramUpdate.devNameGBK_ = this.devNameGBK_;
                if ((i & 4096) == 4096) {
                    i2 |= 4096;
                }
                paramUpdate.shareLoc_ = this.shareLoc_;
                if ((i & 8192) == 8192) {
                    i2 |= 8192;
                }
                paramUpdate.versionHW_ = this.versionHW_;
                if ((i & 16384) == 16384) {
                    i2 |= 16384;
                }
                paramUpdate.lowPower_ = this.lowPower_;
                if ((i & 32768) == 32768) {
                    i2 |= 32768;
                }
                paramUpdate.versionExtend_ = this.versionExtend_;
                if ((i & 65536) == 65536) {
                    i2 |= 65536;
                }
                paramUpdate.activateChannel_ = this.activateChannel_;
                if ((i & 131072) == 131072) {
                    i2 |= 131072;
                }
                paramUpdate.language_ = this.language_;
                paramUpdate.bitField0_ = i2;
                onBuilt();
                return paramUpdate;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ParamUpdate getDefaultInstanceForType() {
                return ParamUpdate.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = STATECODE.SUCCESS;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                ByteString byteString = ByteString.EMPTY;
                this.mode_ = byteString;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.deviceId_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.userId_ = 0;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.userName_ = byteString;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.sosText_ = byteString;
                int i7 = i6 & (-65);
                this.bitField0_ = i7;
                this.versionBLE_ = 0;
                int i8 = i7 & (-129);
                this.bitField0_ = i8;
                this.versionMCU_ = 0;
                int i9 = i8 & (-257);
                this.bitField0_ = i9;
                this.stateMode_ = STATEMODE.SINGLE;
                int i10 = i9 & (-513);
                this.bitField0_ = i10;
                ByteString byteString2 = ByteString.EMPTY;
                this.devNameUTF8_ = byteString2;
                int i11 = i10 & (-1025);
                this.bitField0_ = i11;
                this.devNameGBK_ = byteString2;
                int i12 = i11 & (-2049);
                this.bitField0_ = i12;
                this.shareLoc_ = 0;
                int i13 = i12 & (-4097);
                this.bitField0_ = i13;
                this.versionHW_ = 0;
                int i14 = i13 & (-8193);
                this.bitField0_ = i14;
                this.lowPower_ = POWERSTATE.ALLOWUPDATE;
                int i15 = i14 & (-16385);
                this.bitField0_ = i15;
                this.versionExtend_ = 0;
                int i16 = i15 & (-32769);
                this.bitField0_ = i16;
                this.activateChannel_ = 0;
                int i17 = i16 & (-65537);
                this.bitField0_ = i17;
                this.language_ = 0;
                this.bitField0_ = (-131073) & i17;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = STATECODE.SUCCESS;
                ByteString byteString = ByteString.EMPTY;
                this.mode_ = byteString;
                this.userName_ = byteString;
                this.sosText_ = byteString;
                this.stateMode_ = STATEMODE.SINGLE;
                ByteString byteString2 = ByteString.EMPTY;
                this.devNameUTF8_ = byteString2;
                this.devNameGBK_ = byteString2;
                this.lowPower_ = POWERSTATE.ALLOWUPDATE;
                maybeForceBuilderInitialization();
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<ParamUpdate> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public ParamUpdate parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = ParamUpdate.newBuilder();
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
            ParamUpdate paramUpdate = new ParamUpdate(true);
            defaultInstance = paramUpdate;
            paramUpdate.initFields();
        }

        /* synthetic */ ParamUpdate(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static ParamUpdate getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MitalkProtos.g;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = STATECODE.SUCCESS;
            ByteString byteString = ByteString.EMPTY;
            this.mode_ = byteString;
            this.deviceId_ = 0;
            this.userId_ = 0;
            this.userName_ = byteString;
            this.sosText_ = byteString;
            this.versionBLE_ = 0;
            this.versionMCU_ = 0;
            this.stateMode_ = STATEMODE.SINGLE;
            ByteString byteString2 = ByteString.EMPTY;
            this.devNameUTF8_ = byteString2;
            this.devNameGBK_ = byteString2;
            this.shareLoc_ = 0;
            this.versionHW_ = 0;
            this.lowPower_ = POWERSTATE.ALLOWUPDATE;
            this.versionExtend_ = 0;
            this.activateChannel_ = 0;
            this.language_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static ParamUpdate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ParamUpdate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public int getActivateChannel() {
            return this.activateChannel_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public ByteString getDevNameGBK() {
            return this.devNameGBK_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public ByteString getDevNameUTF8() {
            return this.devNameUTF8_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public int getDeviceId() {
            return this.deviceId_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public int getLanguage() {
            return this.language_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public POWERSTATE getLowPower() {
            return this.lowPower_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public ByteString getMode() {
            return this.mode_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ParamUpdate> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public STATECODE getResult() {
            return this.result_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public int getShareLoc() {
            return this.shareLoc_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public ByteString getSosText() {
            return this.sosText_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public STATEMODE getStateMode() {
            return this.stateMode_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public int getUserId() {
            return this.userId_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public ByteString getUserName() {
            return this.userName_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public int getVersionBLE() {
            return this.versionBLE_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public int getVersionExtend() {
            return this.versionExtend_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public int getVersionHW() {
            return this.versionHW_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public int getVersionMCU() {
            return this.versionMCU_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasActivateChannel() {
            return (this.bitField0_ & 65536) == 65536;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasDevNameGBK() {
            return (this.bitField0_ & 2048) == 2048;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasDevNameUTF8() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasLanguage() {
            return (this.bitField0_ & 131072) == 131072;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasLowPower() {
            return (this.bitField0_ & 16384) == 16384;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasMode() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasShareLoc() {
            return (this.bitField0_ & 4096) == 4096;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasSosText() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasStateMode() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasUserId() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasUserName() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasVersionBLE() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasVersionExtend() {
            return (this.bitField0_ & 32768) == 32768;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasVersionHW() {
            return (this.bitField0_ & 8192) == 8192;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.ParamUpdateOrBuilder
        public boolean hasVersionMCU() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.h.ensureFieldAccessorsInitialized(ParamUpdate.class, Builder.class);
        }

        private ParamUpdate(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(ParamUpdate paramUpdate) {
            return (Builder) newBuilder().mergeFrom((Message) paramUpdate);
        }

        public static ParamUpdate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ParamUpdate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ParamUpdate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ParamUpdate getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private ParamUpdate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ParamUpdate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static ParamUpdate parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static ParamUpdate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ParamUpdate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ParamUpdate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface ParamUpdateOrBuilder extends MessageOrBuilder {
        int getActivateChannel();

        ByteString getDevNameGBK();

        ByteString getDevNameUTF8();

        int getDeviceId();

        int getLanguage();

        POWERSTATE getLowPower();

        ByteString getMode();

        STATECODE getResult();

        int getShareLoc();

        ByteString getSosText();

        STATEMODE getStateMode();

        int getUserId();

        ByteString getUserName();

        int getVersion();

        int getVersionBLE();

        int getVersionExtend();

        int getVersionHW();

        int getVersionMCU();

        boolean hasActivateChannel();

        boolean hasDevNameGBK();

        boolean hasDevNameUTF8();

        boolean hasDeviceId();

        boolean hasLanguage();

        boolean hasLowPower();

        boolean hasMode();

        boolean hasResult();

        boolean hasShareLoc();

        boolean hasSosText();

        boolean hasStateMode();

        boolean hasUserId();

        boolean hasUserName();

        boolean hasVersion();

        boolean hasVersionBLE();

        boolean hasVersionExtend();

        boolean hasVersionHW();

        boolean hasVersionMCU();
    }

    /* loaded from: classes2.dex */
    public enum STATECODE implements ProtocolMessageEnum {
        SUCCESS(0, 0),
        FAILED(1, 1),
        PARAMERROR(2, 2),
        NOTSUPPORT(3, 3),
        FINAL(4, 4);
        
        public static final int FAILED_VALUE = 1;
        public static final int FINAL_VALUE = 4;
        public static final int NOTSUPPORT_VALUE = 3;
        public static final int PARAMERROR_VALUE = 2;
        public static final int SUCCESS_VALUE = 0;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<STATECODE> internalValueMap = new a();
        private static final STATECODE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<STATECODE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public STATECODE findValueByNumber(int i) {
                return STATECODE.valueOf(i);
            }
        }

        STATECODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return MitalkProtos.A().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<STATECODE> internalGetValueMap() {
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

        public static STATECODE valueOf(int i) {
            if (i == 0) {
                return SUCCESS;
            }
            if (i == 1) {
                return FAILED;
            }
            if (i == 2) {
                return PARAMERROR;
            }
            if (i == 3) {
                return NOTSUPPORT;
            }
            if (i != 4) {
                return null;
            }
            return FINAL;
        }

        public static STATECODE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum STATEMODE implements ProtocolMessageEnum {
        SINGLE(0, 0),
        DOUBLE(1, 1),
        DIFFER(2, 2),
        SOS_T(3, 3),
        SOS_R(4, 4),
        SCAN_CH(5, 5),
        SCAN_FREQ(6, 6),
        TEAM_M(7, 7),
        TEAM_S(8, 8);
        
        public static final int DIFFER_VALUE = 2;
        public static final int DOUBLE_VALUE = 1;
        public static final int SCAN_CH_VALUE = 5;
        public static final int SCAN_FREQ_VALUE = 6;
        public static final int SINGLE_VALUE = 0;
        public static final int SOS_R_VALUE = 4;
        public static final int SOS_T_VALUE = 3;
        public static final int TEAM_M_VALUE = 7;
        public static final int TEAM_S_VALUE = 8;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<STATEMODE> internalValueMap = new a();
        private static final STATEMODE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<STATEMODE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public STATEMODE findValueByNumber(int i) {
                return STATEMODE.valueOf(i);
            }
        }

        STATEMODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return MitalkProtos.A().getEnumTypes().get(4);
        }

        public static Internal.EnumLiteMap<STATEMODE> internalGetValueMap() {
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

        public static STATEMODE valueOf(int i) {
            switch (i) {
                case 0:
                    return SINGLE;
                case 1:
                    return DOUBLE;
                case 2:
                    return DIFFER;
                case 3:
                    return SOS_T;
                case 4:
                    return SOS_R;
                case 5:
                    return SCAN_CH;
                case 6:
                    return SCAN_FREQ;
                case 7:
                    return TEAM_M;
                case 8:
                    return TEAM_S;
                default:
                    return null;
            }
        }

        public static STATEMODE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class StateUpdate extends GeneratedMessage implements StateUpdateOrBuilder {
        public static final int CH1_FIELD_NUMBER = 4;
        public static final int CH2_FIELD_NUMBER = 5;
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<StateUpdate> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int STATEMODE_FIELD_NUMBER = 6;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final StateUpdate defaultInstance;
        private int bitField0_;
        private ChannelInfo ch1_;
        private ChannelInfo ch2_;
        private CHOPTION option_;
        private STATECODE result_;
        private STATEMODE stateMode_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements StateUpdateOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> ch1Builder_;
            private ChannelInfo ch1_;
            private SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> ch2Builder_;
            private ChannelInfo ch2_;
            private CHOPTION option_;
            private STATECODE result_;
            private STATEMODE stateMode_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
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
                return MitalkProtos.i;
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
                this.bitField0_ &= -9;
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
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = CHOPTION.CH_INSERT;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = STATECODE.SUCCESS;
                onChanged();
                return this;
            }

            public Builder clearStateMode() {
                this.bitField0_ &= -33;
                this.stateMode_ = STATEMODE.SINGLE;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public ChannelInfo getCh1() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    return this.ch1_;
                }
                return singleFieldBuilder.getMessage();
            }

            public ChannelInfo.Builder getCh1Builder() {
                this.bitField0_ |= 8;
                onChanged();
                return getCh1FieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public ChannelInfoOrBuilder getCh1OrBuilder() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch1_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public ChannelInfo getCh2() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    return this.ch2_;
                }
                return singleFieldBuilder.getMessage();
            }

            public ChannelInfo.Builder getCh2Builder() {
                this.bitField0_ |= 16;
                onChanged();
                return getCh2FieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public ChannelInfoOrBuilder getCh2OrBuilder() {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch2_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MitalkProtos.i;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public CHOPTION getOption() {
                return this.option_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public STATECODE getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public STATEMODE getStateMode() {
                return this.stateMode_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public boolean hasCh1() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public boolean hasCh2() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public boolean hasStateMode() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.j.ensureFieldAccessorsInitialized(StateUpdate.class, Builder.class);
            }

            public Builder mergeCh1(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 8 || this.ch1_ == ChannelInfo.getDefaultInstance()) {
                        this.ch1_ = channelInfo;
                    } else {
                        this.ch1_ = ((ChannelInfo.Builder) ChannelInfo.newBuilder(this.ch1_).mergeFrom((Message) channelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(channelInfo);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder mergeCh2(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 16) != 16 || this.ch2_ == ChannelInfo.getDefaultInstance()) {
                        this.ch2_ = channelInfo;
                    } else {
                        this.ch2_ = ((ChannelInfo.Builder) ChannelInfo.newBuilder(this.ch2_).mergeFrom((Message) channelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(channelInfo);
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder setCh1(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(channelInfo);
                } else if (channelInfo != null) {
                    this.ch1_ = channelInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setCh2(ChannelInfo channelInfo) {
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(channelInfo);
                } else if (channelInfo != null) {
                    this.ch2_ = channelInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder setOption(CHOPTION choption) {
                if (choption != null) {
                    this.bitField0_ |= 4;
                    this.option_ = choption;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setResult(STATECODE statecode) {
                if (statecode != null) {
                    this.bitField0_ |= 2;
                    this.result_ = statecode;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setStateMode(STATEMODE statemode) {
                if (statemode != null) {
                    this.bitField0_ |= 32;
                    this.stateMode_ = statemode;
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
                this.result_ = STATECODE.SUCCESS;
                this.option_ = CHOPTION.CH_INSERT;
                this.ch1_ = ChannelInfo.getDefaultInstance();
                this.ch2_ = ChannelInfo.getDefaultInstance();
                this.stateMode_ = STATEMODE.SINGLE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public StateUpdate build() {
                StateUpdate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public StateUpdate buildPartial() {
                StateUpdate stateUpdate = new StateUpdate(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                stateUpdate.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                stateUpdate.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                stateUpdate.option_ = this.option_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    stateUpdate.ch1_ = this.ch1_;
                } else {
                    stateUpdate.ch1_ = singleFieldBuilder.build();
                }
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder2 = this.ch2Builder_;
                if (singleFieldBuilder2 == null) {
                    stateUpdate.ch2_ = this.ch2_;
                } else {
                    stateUpdate.ch2_ = singleFieldBuilder2.build();
                }
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                stateUpdate.stateMode_ = this.stateMode_;
                stateUpdate.bitField0_ = i2;
                onBuilt();
                return stateUpdate;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public StateUpdate getDefaultInstanceForType() {
                return StateUpdate.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = STATECODE.SUCCESS;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.option_ = CHOPTION.CH_INSERT;
                this.bitField0_ = i2 & (-5);
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                SingleFieldBuilder<ChannelInfo, ChannelInfo.Builder, ChannelInfoOrBuilder> singleFieldBuilder2 = this.ch2Builder_;
                if (singleFieldBuilder2 == null) {
                    this.ch2_ = ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder2.clear();
                }
                int i3 = this.bitField0_ & (-17);
                this.bitField0_ = i3;
                this.stateMode_ = STATEMODE.SINGLE;
                this.bitField0_ = i3 & (-33);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
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
                this.bitField0_ |= 8;
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
                this.bitField0_ |= 16;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = STATECODE.SUCCESS;
                this.option_ = CHOPTION.CH_INSERT;
                this.ch1_ = ChannelInfo.getDefaultInstance();
                this.ch2_ = ChannelInfo.getDefaultInstance();
                this.stateMode_ = STATEMODE.SINGLE;
                maybeForceBuilderInitialization();
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<StateUpdate> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public StateUpdate parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = StateUpdate.newBuilder();
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
            StateUpdate stateUpdate = new StateUpdate(true);
            defaultInstance = stateUpdate;
            stateUpdate.initFields();
        }

        /* synthetic */ StateUpdate(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static StateUpdate getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MitalkProtos.i;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = STATECODE.SUCCESS;
            this.option_ = CHOPTION.CH_INSERT;
            this.ch1_ = ChannelInfo.getDefaultInstance();
            this.ch2_ = ChannelInfo.getDefaultInstance();
            this.stateMode_ = STATEMODE.SINGLE;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static StateUpdate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static StateUpdate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public ChannelInfo getCh1() {
            return this.ch1_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public ChannelInfoOrBuilder getCh1OrBuilder() {
            return this.ch1_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public ChannelInfo getCh2() {
            return this.ch2_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public ChannelInfoOrBuilder getCh2OrBuilder() {
            return this.ch2_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public CHOPTION getOption() {
            return this.option_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<StateUpdate> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public STATECODE getResult() {
            return this.result_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public STATEMODE getStateMode() {
            return this.stateMode_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public boolean hasCh1() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public boolean hasCh2() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public boolean hasStateMode() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.StateUpdateOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.j.ensureFieldAccessorsInitialized(StateUpdate.class, Builder.class);
        }

        private StateUpdate(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(StateUpdate stateUpdate) {
            return (Builder) newBuilder().mergeFrom((Message) stateUpdate);
        }

        public static StateUpdate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static StateUpdate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static StateUpdate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public StateUpdate getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private StateUpdate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static StateUpdate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static StateUpdate parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static StateUpdate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static StateUpdate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static StateUpdate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface StateUpdateOrBuilder extends MessageOrBuilder {
        ChannelInfo getCh1();

        ChannelInfoOrBuilder getCh1OrBuilder();

        ChannelInfo getCh2();

        ChannelInfoOrBuilder getCh2OrBuilder();

        CHOPTION getOption();

        STATECODE getResult();

        STATEMODE getStateMode();

        int getVersion();

        boolean hasCh1();

        boolean hasCh2();

        boolean hasOption();

        boolean hasResult();

        boolean hasStateMode();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public enum UPDATESTATECODE implements ProtocolMessageEnum {
        PREPARE(0, 0),
        REQUEST(1, 1),
        TRANSPORT(2, 2),
        FINISH(3, 3),
        RESTART(4, 4);
        
        public static final int FINISH_VALUE = 3;
        public static final int PREPARE_VALUE = 0;
        public static final int REQUEST_VALUE = 1;
        public static final int RESTART_VALUE = 4;
        public static final int TRANSPORT_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<UPDATESTATECODE> internalValueMap = new a();
        private static final UPDATESTATECODE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<UPDATESTATECODE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public UPDATESTATECODE findValueByNumber(int i) {
                return UPDATESTATECODE.valueOf(i);
            }
        }

        UPDATESTATECODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return MitalkProtos.A().getEnumTypes().get(10);
        }

        public static Internal.EnumLiteMap<UPDATESTATECODE> internalGetValueMap() {
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

        public static UPDATESTATECODE valueOf(int i) {
            if (i == 0) {
                return PREPARE;
            }
            if (i == 1) {
                return REQUEST;
            }
            if (i == 2) {
                return TRANSPORT;
            }
            if (i == 3) {
                return FINISH;
            }
            if (i != 4) {
                return null;
            }
            return RESTART;
        }

        public static UPDATESTATECODE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class UpdateResponse extends GeneratedMessage implements UpdateResponseOrBuilder {
        public static final int ACK_FIELD_NUMBER = 3;
        public static Parser<UpdateResponse> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int STATE_FIELD_NUMBER = 1;
        private static final UpdateResponse defaultInstance;
        private int ack_;
        private int bitField0_;
        private boolean result_;
        private UPDATESTATECODE state_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements UpdateResponseOrBuilder {
            private int ack_;
            private int bitField0_;
            private boolean result_;
            private UPDATESTATECODE state_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MitalkProtos.y;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearAck() {
                this.bitField0_ &= -5;
                this.ack_ = 0;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = false;
                onChanged();
                return this;
            }

            public Builder clearState() {
                this.bitField0_ &= -2;
                this.state_ = UPDATESTATECODE.PREPARE;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.UpdateResponseOrBuilder
            public int getAck() {
                return this.ack_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MitalkProtos.y;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.UpdateResponseOrBuilder
            public boolean getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.UpdateResponseOrBuilder
            public UPDATESTATECODE getState() {
                return this.state_;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.UpdateResponseOrBuilder
            public boolean hasAck() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.UpdateResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.MitalkProtos.UpdateResponseOrBuilder
            public boolean hasState() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.z.ensureFieldAccessorsInitialized(UpdateResponse.class, Builder.class);
            }

            public Builder setAck(int i) {
                this.bitField0_ |= 4;
                this.ack_ = i;
                onChanged();
                return this;
            }

            public Builder setResult(boolean z) {
                this.bitField0_ |= 2;
                this.result_ = z;
                onChanged();
                return this;
            }

            public Builder setState(UPDATESTATECODE updatestatecode) {
                if (updatestatecode != null) {
                    this.bitField0_ |= 1;
                    this.state_ = updatestatecode;
                    onChanged();
                    return this;
                }
                throw null;
            }

            private Builder() {
                this.state_ = UPDATESTATECODE.PREPARE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public UpdateResponse build() {
                UpdateResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public UpdateResponse buildPartial() {
                UpdateResponse updateResponse = new UpdateResponse(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                updateResponse.state_ = this.state_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                updateResponse.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                updateResponse.ack_ = this.ack_;
                updateResponse.bitField0_ = i2;
                onBuilt();
                return updateResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public UpdateResponse getDefaultInstanceForType() {
                return UpdateResponse.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.state_ = UPDATESTATECODE.PREPARE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.state_ = UPDATESTATECODE.PREPARE;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = false;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.ack_ = 0;
                this.bitField0_ = i2 & (-5);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<UpdateResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public UpdateResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = UpdateResponse.newBuilder();
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
            UpdateResponse updateResponse = new UpdateResponse(true);
            defaultInstance = updateResponse;
            updateResponse.initFields();
        }

        /* synthetic */ UpdateResponse(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static UpdateResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MitalkProtos.y;
        }

        private void initFields() {
            this.state_ = UPDATESTATECODE.PREPARE;
            this.result_ = false;
            this.ack_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static UpdateResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static UpdateResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.UpdateResponseOrBuilder
        public int getAck() {
            return this.ack_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<UpdateResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.UpdateResponseOrBuilder
        public boolean getResult() {
            return this.result_;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.UpdateResponseOrBuilder
        public UPDATESTATECODE getState() {
            return this.state_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.UpdateResponseOrBuilder
        public boolean hasAck() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.UpdateResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.MitalkProtos.UpdateResponseOrBuilder
        public boolean hasState() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.z.ensureFieldAccessorsInitialized(UpdateResponse.class, Builder.class);
        }

        private UpdateResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(UpdateResponse updateResponse) {
            return (Builder) newBuilder().mergeFrom((Message) updateResponse);
        }

        public static UpdateResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static UpdateResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UpdateResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public UpdateResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private UpdateResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static UpdateResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static UpdateResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static UpdateResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static UpdateResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static UpdateResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface UpdateResponseOrBuilder extends MessageOrBuilder {
        int getAck();

        boolean getResult();

        UPDATESTATECODE getState();

        boolean hasAck();

        boolean hasResult();

        boolean hasState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = MitalkProtos.A = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\rmitalki.proto\u0012\u0006protos\"Ô\u0005\n\u0007Command\u0012%\n\fconnectQuery\u0018\u0001 \u0001(\u000b2\u000f.protos.Connect\u0012$\n\u000bconnectResp\u0018\u0002 \u0001(\u000b2\u000f.protos.Connect\u0012\"\n\theartbeat\u0018\u0003 \u0001(\u000b2\u000f.protos.Control\u0012 \n\u0007control\u0018\u0004 \u0001(\u000b2\u000f.protos.Control\u0012'\n\nparamQuery\u0018\u0005 \u0001(\u000b2\u0013.protos.ParamUpdate\u0012(\n\u000bparamUpdate\u0018\u0006 \u0001(\u000b2\u0013.protos.ParamUpdate\u0012&\n\tparamResp\u0018\u0007 \u0001(\u000b2\u0013.protos.ParamUpdate\u0012'\n\nstateQuery\u0018\b \u0001(\u000b2\u0013.protos.StateUpdate\u0012&\n\tstateResp\u0018\t \u0001(\u000b2\u0013.protos.StateUpdate\u0012*\n\flocationSy", "nc\u0018\n \u0001(\u000b2\u0014.protos.LocationSync\u0012)\n\u000blocationCtl\u0018\u000b \u0001(\u000b2\u0014.protos.LocationSync\u0012$\n\u0007fileReq\u0018\f \u0001(\u000b2\u0013.protos.FileRequest\u0012\"\n\bfilePack\u0018\r \u0001(\u000b2\u0010.protos.FilePack\u0012&\n\bfileResp\u0018\u000e \u0001(\u000b2\u0014.protos.FileResponse\u0012\"\n\u0006logReq\u0018\u000f \u0001(\u000b2\u0012.protos.LogRequest\u0012%\n\u0007testReq\u0018\u0010 \u0001(\u000b2\u0014.protos.IntercomTest\u0012&\n\btestResp\u0018\u0011 \u0001(\u000b2\u0014.protos.IntercomTest\u0012.\n\u000eupdateResponse\u0018\u0012 \u0001(\u000b2\u0016.protos.UpdateResponse\"P\n\u0007Connect\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\"\n\bconnCode\u0018\u0002 \u0002(\u000e2\u0010.p", "rotos.CONNCODE\u0012\u0010\n\bdeviceId\u0018\u0003 \u0001(\r\">\n\u0007Control\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\"\n\bctrlCode\u0018\u0002 \u0001(\u000e2\u0010.protos.CTRLCODE\"\u0098\u0003\n\u000bParamUpdate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012!\n\u0006result\u0018\u0002 \u0001(\u000e2\u0011.protos.STATECODE\u0012\f\n\u0004mode\u0018\u0003 \u0001(\f\u0012\u0010\n\bdeviceId\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006userId\u0018\u0005 \u0001(\r\u0012\u0010\n\buserName\u0018\u0006 \u0001(\f\u0012\u000f\n\u0007sosText\u0018\u0007 \u0001(\f\u0012\u0012\n\nversionBLE\u0018\b \u0001(\r\u0012\u0012\n\nversionMCU\u0018\t \u0001(\r\u0012$\n\tstateMode\u0018\n \u0001(\u000e2\u0011.protos.STATEMODE\u0012\u0013\n\u000bdevNameUTF8\u0018\u000b \u0001(\f\u0012\u0012\n\ndevNameGBK\u0018\f \u0001(\f\u0012\u0010\n\bshareLoc\u0018\r \u0001(\r\u0012\u0011\n\tversionHW\u0018\u000e ", "\u0001(\r\u0012$\n\blowPower\u0018\u000f \u0001(\u000e2\u0012.protos.POWERSTATE\u0012\u0015\n\rversionExtend\u0018\u0010 \u0001(\r\u0012\u0017\n\u000factivateChannel\u0018\u0011 \u0001(\r\u0012\u0010\n\blanguage\u0018\u0012 \u0001(\r\"Í\u0001\n\u000bStateUpdate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012!\n\u0006result\u0018\u0002 \u0001(\u000e2\u0011.protos.STATECODE\u0012 \n\u0006option\u0018\u0003 \u0001(\u000e2\u0010.protos.CHOPTION\u0012 \n\u0003ch1\u0018\u0004 \u0001(\u000b2\u0013.protos.ChannelInfo\u0012 \n\u0003ch2\u0018\u0005 \u0001(\u000b2\u0013.protos.ChannelInfo\u0012$\n\tstateMode\u0018\u0006 \u0001(\u000e2\u0011.protos.STATEMODE\"ì\u0001\n\u000bChannelInfo\u0012\f\n\u0004freq\u0018\u0001 \u0001(\r\u0012\u001c\n\u0004type\u0018\u0002 \u0001(\u000e2\u000e.protos.CHTYPE\u0012\n\n\u0002no\u0018\u0003 \u0001(\r\u0012\f\n\u0004name\u0018\u0004 \u0001(", "\f\u0012\n\n\u0002sq\u0018\u0005 \u0001(\r\u0012\u000b\n\u0003vox\u0018\u0006 \u0001(\r\u0012\u000f\n\u0007cssType\u0018\u0007 \u0001(\r\u0012\u000f\n\u0007cssCode\u0018\b \u0001(\r\u0012\u0011\n\tcssInvert\u0018\t \u0001(\r\u0012\u000e\n\u0006freq_2\u0018\n \u0001(\r\u0012\u0011\n\tcssType_2\u0018\u000b \u0001(\r\u0012\u0011\n\tcssCode_2\u0018\f \u0001(\r\u0012\u0013\n\u000bcssInvert_2\u0018\r \u0001(\r\"²\u0001\n\fLocationSync\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001c\n\u0003ctl\u0018\u0002 \u0001(\u000e2\u000f.protos.CTLSYNC\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\r\u0012\u0010\n\buserName\u0018\u0004 \u0001(\f\u0012\u0011\n\tlongitude\u0018\u0005 \u0001(\u0011\u0012\u0010\n\blatitude\u0018\u0006 \u0001(\u0011\u0012\u0010\n\baltitude\u0018\u0007 \u0001(\u0011\u0012\f\n\u0004time\u0018\b \u0001(\r\u0012\f\n\u0004freq\u0018\t \u0001(\r\"¡\u0001\n\u000bFileRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001d\n\u0004fCmd\u0018\u0002 \u0002(\u000e2\u000f.protos.FILECMD\u0012", "\u001f\n\u0005fType\u0018\u0003 \u0001(\u000e2\u0010.protos.FILETYPE\u0012\r\n\u0005fSize\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006fCrc32\u0018\u0005 \u0001(\r\u0012\u0010\n\bfVersion\u0018\u0006 \u0001(\r\u0012\u0010\n\bfPackNum\u0018\u0007 \u0001(\r\"2\n\bFilePack\u0012\u000b\n\u0003seq\u0018\u0001 \u0002(\r\u0012\u000b\n\u0003xor\u0018\u0002 \u0002(\r\u0012\f\n\u0004data\u0018\u0003 \u0002(\f\"A\n\fFileResponse\u0012!\n\u0006result\u0018\u0001 \u0002(\u000e2\u0011.protos.STATECODE\u0012\u000e\n\u0006ackSeq\u0018\u0002 \u0001(\r\"\u001d\n\nLogRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\"-\n\fIntercomTest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\f\n\u0004data\u0018\u0002 \u0002(\f\"U\n\u000eUpdateResponse\u0012&\n\u0005state\u0018\u0001 \u0001(\u000e2\u0017.protos.UPDATESTATECODE\u0012\u000e\n\u0006result\u0018\u0002 \u0001(\b\u0012\u000b\n\u0003ack\u0018\u0003 \u0001(\u0005*O\n\tSTATECODE\u0012\u000b\n\u0007", "SUCCESS\u0010\u0000\u0012\n\n\u0006FAILED\u0010\u0001\u0012\u000e\n\nPARAMERROR\u0010\u0002\u0012\u000e\n\nNOTSUPPORT\u0010\u0003\u0012\t\n\u0005FINAL\u0010\u0004*]\n\bCONNCODE\u0012\u000e\n\nDISCONNECT\u0010\u0000\u0012\u000b\n\u0007CONNECT\u0010\u0001\u0012\t\n\u0005ALLOW\u0010\u0002\u0012\n\n\u0006REFUSE\u0010\u0003\u0012\b\n\u0004WAIT\u0010\u0004\u0012\u0013\n\u000fREFUSE_LOWPOWER\u0010\u0005*%\n\bCTRLCODE\u0012\r\n\tRSTDEVICE\u0010\u0000\u0012\n\n\u0006RSTBLE\u0010\u0001*2\n\nPOWERSTATE\u0012\u000f\n\u000bALLOWUPDATE\u0010\u0000\u0012\u0013\n\u000fPROHIBITEUPDATE\u0010\u0001*y\n\tSTATEMODE\u0012\n\n\u0006SINGLE\u0010\u0000\u0012\n\n\u0006DOUBLE\u0010\u0001\u0012\n\n\u0006DIFFER\u0010\u0002\u0012\t\n\u0005SOS_T\u0010\u0003\u0012\t\n\u0005SOS_R\u0010\u0004\u0012\u000b\n\u0007SCAN_CH\u0010\u0005\u0012\r\n\tSCAN_FREQ\u0010\u0006\u0012\n\n\u0006TEAM_M\u0010\u0007\u0012\n\n\u0006TEAM_S\u0010\b*b\n\bCHOPTION\u0012\r\n\tCH_INSERT\u0010\u0000", "\u0012\r\n\tCH_DELETE\u0010\u0001\u0012\r\n\tCH_MODIFY\u0010\u0002\u0012\f\n\bCH_QUERY\u0010\u0003\u0012\r\n\tST_UPDATE\u0010\u0004\u0012\f\n\bST_QUERY\u0010\u0005*m\n\u0006CHTYPE\u0012\n\n\u0006PRESET\u0010\u0000\u0012\n\n\u0006PUBLIC\u0010\u0001\u0012\u000e\n\nUSERDEFINE\u0010\u0002\u0012\t\n\u0005RADIO\u0010\u0003\u0012\u0007\n\u0003SOS\u0010\u0004\u0012\b\n\u0004TEMP\u0010\u0005\u0012\b\n\u0004TEAM\u0010\u0006\u0012\b\n\u0004SCAN\u0010\u0007\u0012\t\n\u0005RELAY\u0010\b*\"\n\u0007CTLSYNC\u0012\u000b\n\u0007DISABLE\u0010\u0000\u0012\n\n\u0006ENABLE\u0010\u0001*\u009b\u0001\n\bFILETYPE\u0012\r\n\tBLEUPFILE\u0010\u0001\u0012\r\n\tMCUUPFILE\u0010\u0002\u0012\r\n\tGBKFONT16\u0010\u0003\u0012\u000f\n\u000bASCIIFONT16\u0010\u0004\u0012\r\n\tGBKFONTEX\u0010\u0005\u0012\u000f\n\u000bASCIIFONTEX\u0010\u0006\u0012\u000e\n\nMCUSENDLOG\u0010\u0007\u0012\u000f\n\u000bWARNINGTONE\u0010\b\u0012\u0010\n\fMCUBLEUPFILE\u0010\t*\"\n\u0007FILECMD\u0012\t\n\u0005START\u0010\u0000", "\u0012\f\n\bCOMPLETE\u0010\u0001*S\n\u000fUPDATESTATECODE\u0012\u000b\n\u0007PREPARE\u0010\u0000\u0012\u000b\n\u0007REQUEST\u0010\u0001\u0012\r\n\tTRANSPORT\u0010\u0002\u0012\n\n\u0006FINISH\u0010\u0003\u0012\u000b\n\u0007RESTART\u0010\u0004B-\n\u001bcom.ifengyu.intercom.protosB\fMitalkProtosH\u0002"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = A().getMessageTypes().get(0);
        f5976a = descriptor;
        f5977b = new GeneratedMessage.FieldAccessorTable(descriptor, new String[]{"ConnectQuery", "ConnectResp", "Heartbeat", "Control", "ParamQuery", "ParamUpdate", "ParamResp", "StateQuery", "StateResp", "LocationSync", "LocationCtl", "FileReq", "FilePack", "FileResp", "LogReq", "TestReq", "TestResp", "UpdateResponse"});
        Descriptors.Descriptor descriptor2 = A().getMessageTypes().get(1);
        f5978c = descriptor2;
        d = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"Version", "ConnCode", "DeviceId"});
        Descriptors.Descriptor descriptor3 = A().getMessageTypes().get(2);
        e = descriptor3;
        f = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Version", "CtrlCode"});
        Descriptors.Descriptor descriptor4 = A().getMessageTypes().get(3);
        g = descriptor4;
        h = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Version", "Result", "Mode", "DeviceId", "UserId", "UserName", "SosText", "VersionBLE", "VersionMCU", "StateMode", "DevNameUTF8", "DevNameGBK", "ShareLoc", "VersionHW", "LowPower", "VersionExtend", "ActivateChannel", "Language"});
        Descriptors.Descriptor descriptor5 = A().getMessageTypes().get(4);
        i = descriptor5;
        j = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Version", "Result", "Option", "Ch1", "Ch2", "StateMode"});
        Descriptors.Descriptor descriptor6 = A().getMessageTypes().get(5);
        k = descriptor6;
        l = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Freq", "Type", "No", "Name", "Sq", "Vox", "CssType", "CssCode", "CssInvert", "Freq2", "CssType2", "CssCode2", "CssInvert2"});
        Descriptors.Descriptor descriptor7 = A().getMessageTypes().get(6);
        m = descriptor7;
        n = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Version", "Ctl", "UserId", "UserName", "Longitude", "Latitude", "Altitude", "Time", "Freq"});
        Descriptors.Descriptor descriptor8 = A().getMessageTypes().get(7);
        o = descriptor8;
        p = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Version", "FCmd", "FType", "FSize", "FCrc32", "FVersion", "FPackNum"});
        Descriptors.Descriptor descriptor9 = A().getMessageTypes().get(8);
        q = descriptor9;
        r = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Seq", "Xor", "Data"});
        Descriptors.Descriptor descriptor10 = A().getMessageTypes().get(9);
        s = descriptor10;
        t = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"Result", "AckSeq"});
        Descriptors.Descriptor descriptor11 = A().getMessageTypes().get(10);
        u = descriptor11;
        v = new GeneratedMessage.FieldAccessorTable(descriptor11, new String[]{"Version"});
        Descriptors.Descriptor descriptor12 = A().getMessageTypes().get(11);
        w = descriptor12;
        x = new GeneratedMessage.FieldAccessorTable(descriptor12, new String[]{"Version", "Data"});
        Descriptors.Descriptor descriptor13 = A().getMessageTypes().get(12);
        y = descriptor13;
        z = new GeneratedMessage.FieldAccessorTable(descriptor13, new String[]{"State", "Result", "Ack"});
    }

    public static Descriptors.FileDescriptor A() {
        return A;
    }
}
