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
public final class SharkProtos {

    /* renamed from: a  reason: collision with root package name */
    private static final Descriptors.Descriptor f5982a;

    /* renamed from: b  reason: collision with root package name */
    private static GeneratedMessage.FieldAccessorTable f5983b;

    /* renamed from: c  reason: collision with root package name */
    private static final Descriptors.Descriptor f5984c;
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
    private static Descriptors.FileDescriptor u;

    /* loaded from: classes2.dex */
    public enum SHARK_CONNCODE implements ProtocolMessageEnum {
        SHARK_DISCONNECT(0, 0),
        SHARK_CONNECT(1, 1),
        SHARK_ALLOW(2, 4),
        SHARK_REFUSE(3, 5),
        SHARK_WAIT(4, 6),
        SHARK_LOWPOWER(5, 7),
        SHARK_DIS_ALLOW(6, 8),
        SHARK_DIS_REFUSE(7, 9),
        SHARK_DIS_WAIT(8, 10),
        SHARK_DIS_LOWPOWER(9, 11),
        SHARK_BUSY(10, 12);
        
        public static final int SHARK_ALLOW_VALUE = 4;
        public static final int SHARK_BUSY_VALUE = 12;
        public static final int SHARK_CONNECT_VALUE = 1;
        public static final int SHARK_DISCONNECT_VALUE = 0;
        public static final int SHARK_DIS_ALLOW_VALUE = 8;
        public static final int SHARK_DIS_LOWPOWER_VALUE = 11;
        public static final int SHARK_DIS_REFUSE_VALUE = 9;
        public static final int SHARK_DIS_WAIT_VALUE = 10;
        public static final int SHARK_LOWPOWER_VALUE = 7;
        public static final int SHARK_REFUSE_VALUE = 5;
        public static final int SHARK_WAIT_VALUE = 6;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<SHARK_CONNCODE> internalValueMap = new a();
        private static final SHARK_CONNCODE[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<SHARK_CONNCODE> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public SHARK_CONNCODE findValueByNumber(int i) {
                return SHARK_CONNCODE.valueOf(i);
            }
        }

        SHARK_CONNCODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return SharkProtos.u().getEnumTypes().get(0);
        }

        public static Internal.EnumLiteMap<SHARK_CONNCODE> internalGetValueMap() {
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

        public static SHARK_CONNCODE valueOf(int i) {
            if (i == 0) {
                return SHARK_DISCONNECT;
            }
            if (i == 1) {
                return SHARK_CONNECT;
            }
            switch (i) {
                case 4:
                    return SHARK_ALLOW;
                case 5:
                    return SHARK_REFUSE;
                case 6:
                    return SHARK_WAIT;
                case 7:
                    return SHARK_LOWPOWER;
                case 8:
                    return SHARK_DIS_ALLOW;
                case 9:
                    return SHARK_DIS_REFUSE;
                case 10:
                    return SHARK_DIS_WAIT;
                case 11:
                    return SHARK_DIS_LOWPOWER;
                case 12:
                    return SHARK_BUSY;
                default:
                    return null;
            }
        }

        public static SHARK_CONNCODE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class SHARK_ChannelInfo extends GeneratedMessage implements SHARK_ChannelInfoOrBuilder {
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
        public static Parser<SHARK_ChannelInfo> PARSER = new a();
        private static final SHARK_ChannelInfo defaultInstance;
        private int bitField0_;
        private int chBand_;
        private SHARK_SWITCH chElim_;
        private ByteString chName_;
        private int chNo_;
        private SHARK_SWITCH chPolite_;
        private int chRxCss_;
        private int chRxFreq_;
        private int chSq_;
        private int chTxCss_;
        private int chTxFreq_;
        private int chTxPower_;
        private SHARK_CHTYPE chType_;
        private int chVox_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SHARK_ChannelInfoOrBuilder {
            private int bitField0_;
            private int chBand_;
            private SHARK_SWITCH chElim_;
            private ByteString chName_;
            private int chNo_;
            private SHARK_SWITCH chPolite_;
            private int chRxCss_;
            private int chRxFreq_;
            private int chSq_;
            private int chTxCss_;
            private int chTxFreq_;
            private int chTxPower_;
            private SHARK_CHTYPE chType_;
            private int chVox_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SharkProtos.f5984c;
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
                this.chElim_ = SHARK_SWITCH.SHARK_OFF;
                onChanged();
                return this;
            }

            public Builder clearChName() {
                this.bitField0_ &= -33;
                this.chName_ = SHARK_ChannelInfo.getDefaultInstance().getChName();
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
                this.chPolite_ = SHARK_SWITCH.SHARK_OFF;
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
                this.chType_ = SHARK_CHTYPE.SHARK_PUBLIC;
                onChanged();
                return this;
            }

            public Builder clearChVox() {
                this.bitField0_ &= -129;
                this.chVox_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public int getChBand() {
                return this.chBand_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public SHARK_SWITCH getChElim() {
                return this.chElim_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public ByteString getChName() {
                return this.chName_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public int getChNo() {
                return this.chNo_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public SHARK_SWITCH getChPolite() {
                return this.chPolite_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public int getChRxCss() {
                return this.chRxCss_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public int getChRxFreq() {
                return this.chRxFreq_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public int getChSq() {
                return this.chSq_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public int getChTxCss() {
                return this.chTxCss_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public int getChTxFreq() {
                return this.chTxFreq_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public int getChTxPower() {
                return this.chTxPower_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public SHARK_CHTYPE getChType() {
                return this.chType_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public int getChVox() {
                return this.chVox_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SharkProtos.f5984c;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChBand() {
                return (this.bitField0_ & 2048) == 2048;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChElim() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChName() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChNo() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChPolite() {
                return (this.bitField0_ & 4096) == 4096;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChRxCss() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChRxFreq() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChSq() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChTxCss() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChTxFreq() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChTxPower() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChType() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
            public boolean hasChVox() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.d.ensureFieldAccessorsInitialized(SHARK_ChannelInfo.class, Builder.class);
            }

            public Builder setChBand(int i) {
                this.bitField0_ |= 2048;
                this.chBand_ = i;
                onChanged();
                return this;
            }

            public Builder setChElim(SHARK_SWITCH shark_switch) {
                if (shark_switch != null) {
                    this.bitField0_ |= 1024;
                    this.chElim_ = shark_switch;
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

            public Builder setChPolite(SHARK_SWITCH shark_switch) {
                if (shark_switch != null) {
                    this.bitField0_ |= 4096;
                    this.chPolite_ = shark_switch;
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

            public Builder setChType(SHARK_CHTYPE shark_chtype) {
                if (shark_chtype != null) {
                    this.bitField0_ |= 2;
                    this.chType_ = shark_chtype;
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
                this.chType_ = SHARK_CHTYPE.SHARK_PUBLIC;
                this.chName_ = ByteString.EMPTY;
                SHARK_SWITCH shark_switch = SHARK_SWITCH.SHARK_OFF;
                this.chElim_ = shark_switch;
                this.chPolite_ = shark_switch;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_ChannelInfo build() {
                SHARK_ChannelInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_ChannelInfo buildPartial() {
                SHARK_ChannelInfo sHARK_ChannelInfo = new SHARK_ChannelInfo(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sHARK_ChannelInfo.chNo_ = this.chNo_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_ChannelInfo.chType_ = this.chType_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sHARK_ChannelInfo.chTxPower_ = this.chTxPower_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sHARK_ChannelInfo.chRxFreq_ = this.chRxFreq_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sHARK_ChannelInfo.chTxFreq_ = this.chTxFreq_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                sHARK_ChannelInfo.chName_ = this.chName_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                sHARK_ChannelInfo.chSq_ = this.chSq_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                sHARK_ChannelInfo.chVox_ = this.chVox_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                sHARK_ChannelInfo.chRxCss_ = this.chRxCss_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                sHARK_ChannelInfo.chTxCss_ = this.chTxCss_;
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                sHARK_ChannelInfo.chElim_ = this.chElim_;
                if ((i & 2048) == 2048) {
                    i2 |= 2048;
                }
                sHARK_ChannelInfo.chBand_ = this.chBand_;
                if ((i & 4096) == 4096) {
                    i2 |= 4096;
                }
                sHARK_ChannelInfo.chPolite_ = this.chPolite_;
                sHARK_ChannelInfo.bitField0_ = i2;
                onBuilt();
                return sHARK_ChannelInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SHARK_ChannelInfo getDefaultInstanceForType() {
                return SHARK_ChannelInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.chNo_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.chType_ = SHARK_CHTYPE.SHARK_PUBLIC;
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
                SHARK_SWITCH shark_switch = SHARK_SWITCH.SHARK_OFF;
                this.chElim_ = shark_switch;
                int i11 = i10 & (-1025);
                this.bitField0_ = i11;
                this.chBand_ = 0;
                int i12 = i11 & (-2049);
                this.bitField0_ = i12;
                this.chPolite_ = shark_switch;
                this.bitField0_ = i12 & (-4097);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.chType_ = SHARK_CHTYPE.SHARK_PUBLIC;
                this.chName_ = ByteString.EMPTY;
                SHARK_SWITCH shark_switch = SHARK_SWITCH.SHARK_OFF;
                this.chElim_ = shark_switch;
                this.chPolite_ = shark_switch;
                maybeForceBuilderInitialization();
            }
        }

        /* loaded from: classes2.dex */
        public enum SHARK_CHTYPE implements ProtocolMessageEnum {
            SHARK_PUBLIC(0, 0),
            SHARK_REMOTE(1, 1),
            SHARK_USERDEF(2, 2);
            
            public static final int SHARK_PUBLIC_VALUE = 0;
            public static final int SHARK_REMOTE_VALUE = 1;
            public static final int SHARK_USERDEF_VALUE = 2;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SHARK_CHTYPE> internalValueMap = new a();
            private static final SHARK_CHTYPE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SHARK_CHTYPE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SHARK_CHTYPE findValueByNumber(int i) {
                    return SHARK_CHTYPE.valueOf(i);
                }
            }

            SHARK_CHTYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SHARK_ChannelInfo.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SHARK_CHTYPE> internalGetValueMap() {
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

            public static SHARK_CHTYPE valueOf(int i) {
                if (i == 0) {
                    return SHARK_PUBLIC;
                }
                if (i == 1) {
                    return SHARK_REMOTE;
                }
                if (i != 2) {
                    return null;
                }
                return SHARK_USERDEF;
            }

            public static SHARK_CHTYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SHARK_ChannelInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SHARK_ChannelInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SHARK_ChannelInfo.newBuilder();
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
            SHARK_ChannelInfo sHARK_ChannelInfo = new SHARK_ChannelInfo(true);
            defaultInstance = sHARK_ChannelInfo;
            sHARK_ChannelInfo.initFields();
        }

        /* synthetic */ SHARK_ChannelInfo(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SHARK_ChannelInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SharkProtos.f5984c;
        }

        private void initFields() {
            this.chNo_ = 0;
            this.chType_ = SHARK_CHTYPE.SHARK_PUBLIC;
            this.chTxPower_ = 0;
            this.chRxFreq_ = 0;
            this.chTxFreq_ = 0;
            this.chName_ = ByteString.EMPTY;
            this.chSq_ = 0;
            this.chVox_ = 0;
            this.chRxCss_ = 0;
            this.chTxCss_ = 0;
            SHARK_SWITCH shark_switch = SHARK_SWITCH.SHARK_OFF;
            this.chElim_ = shark_switch;
            this.chBand_ = 0;
            this.chPolite_ = shark_switch;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SHARK_ChannelInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_ChannelInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public int getChBand() {
            return this.chBand_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public SHARK_SWITCH getChElim() {
            return this.chElim_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public ByteString getChName() {
            return this.chName_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public int getChNo() {
            return this.chNo_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public SHARK_SWITCH getChPolite() {
            return this.chPolite_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public int getChRxCss() {
            return this.chRxCss_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public int getChRxFreq() {
            return this.chRxFreq_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public int getChSq() {
            return this.chSq_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public int getChTxCss() {
            return this.chTxCss_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public int getChTxFreq() {
            return this.chTxFreq_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public int getChTxPower() {
            return this.chTxPower_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public SHARK_CHTYPE getChType() {
            return this.chType_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public int getChVox() {
            return this.chVox_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SHARK_ChannelInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChBand() {
            return (this.bitField0_ & 2048) == 2048;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChElim() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChName() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChNo() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChPolite() {
            return (this.bitField0_ & 4096) == 4096;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChRxCss() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChRxFreq() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChSq() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChTxCss() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChTxFreq() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChTxPower() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChType() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOrBuilder
        public boolean hasChVox() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.d.ensureFieldAccessorsInitialized(SHARK_ChannelInfo.class, Builder.class);
        }

        private SHARK_ChannelInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SHARK_ChannelInfo sHARK_ChannelInfo) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_ChannelInfo);
        }

        public static SHARK_ChannelInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_ChannelInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_ChannelInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SHARK_ChannelInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SHARK_ChannelInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_ChannelInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SHARK_ChannelInfo parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SHARK_ChannelInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_ChannelInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_ChannelInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public static final class SHARK_ChannelInfoOperate extends GeneratedMessage implements SHARK_ChannelInfoOperateOrBuilder {
        public static final int CH_FIELD_NUMBER = 4;
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<SHARK_ChannelInfoOperate> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SHARK_ChannelInfoOperate defaultInstance;
        private int bitField0_;
        private SHARK_ChannelInfo ch_;
        private SHARK_CHOPTION option_;
        private SHARK_CH_UERR result_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SHARK_ChannelInfoOperateOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> chBuilder_;
            private SHARK_ChannelInfo ch_;
            private SHARK_CHOPTION option_;
            private SHARK_CH_UERR result_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> getChFieldBuilder() {
                if (this.chBuilder_ == null) {
                    this.chBuilder_ = new SingleFieldBuilder<>(getCh(), getParentForChildren(), isClean());
                    this.ch_ = null;
                }
                return this.chBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SharkProtos.i;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getChFieldBuilder();
                }
            }

            public Builder clearCh() {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = SHARK_CHOPTION.SHARK_CH_INSERT;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SHARK_CH_UERR.SHARK_CH_OK;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
            public SHARK_ChannelInfo getCh() {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    return this.ch_;
                }
                return singleFieldBuilder.getMessage();
            }

            public SHARK_ChannelInfo.Builder getChBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return getChFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
            public SHARK_ChannelInfoOrBuilder getChOrBuilder() {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SharkProtos.i;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
            public SHARK_CHOPTION getOption() {
                return this.option_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
            public SHARK_CH_UERR getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
            public boolean hasCh() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.j.ensureFieldAccessorsInitialized(SHARK_ChannelInfoOperate.class, Builder.class);
            }

            public Builder mergeCh(SHARK_ChannelInfo sHARK_ChannelInfo) {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 8) != 8 || this.ch_ == SHARK_ChannelInfo.getDefaultInstance()) {
                        this.ch_ = sHARK_ChannelInfo;
                    } else {
                        this.ch_ = ((SHARK_ChannelInfo.Builder) SHARK_ChannelInfo.newBuilder(this.ch_).mergeFrom((Message) sHARK_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(sHARK_ChannelInfo);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setCh(SHARK_ChannelInfo sHARK_ChannelInfo) {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(sHARK_ChannelInfo);
                } else if (sHARK_ChannelInfo != null) {
                    this.ch_ = sHARK_ChannelInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setOption(SHARK_CHOPTION shark_choption) {
                if (shark_choption != null) {
                    this.bitField0_ |= 4;
                    this.option_ = shark_choption;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setResult(SHARK_CH_UERR shark_ch_uerr) {
                if (shark_ch_uerr != null) {
                    this.bitField0_ |= 2;
                    this.result_ = shark_ch_uerr;
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
                this.result_ = SHARK_CH_UERR.SHARK_CH_OK;
                this.option_ = SHARK_CHOPTION.SHARK_CH_INSERT;
                this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_ChannelInfoOperate build() {
                SHARK_ChannelInfoOperate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_ChannelInfoOperate buildPartial() {
                SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate = new SHARK_ChannelInfoOperate(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sHARK_ChannelInfoOperate.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_ChannelInfoOperate.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sHARK_ChannelInfoOperate.option_ = this.option_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    sHARK_ChannelInfoOperate.ch_ = this.ch_;
                } else {
                    sHARK_ChannelInfoOperate.ch_ = singleFieldBuilder.build();
                }
                sHARK_ChannelInfoOperate.bitField0_ = i2;
                onBuilt();
                return sHARK_ChannelInfoOperate;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SHARK_ChannelInfoOperate getDefaultInstanceForType() {
                return SHARK_ChannelInfoOperate.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = SHARK_CH_UERR.SHARK_CH_OK;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.option_ = SHARK_CHOPTION.SHARK_CH_INSERT;
                this.bitField0_ = i2 & (-5);
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SHARK_CH_UERR.SHARK_CH_OK;
                this.option_ = SHARK_CHOPTION.SHARK_CH_INSERT;
                this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setCh(SHARK_ChannelInfo.Builder builder) {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
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
        public enum SHARK_CHOPTION implements ProtocolMessageEnum {
            SHARK_CH_INSERT(0, 0),
            SHARK_CH_DELETE(1, 1),
            SHARK_CH_MODIFY(2, 2),
            SHARK_CH_QUERY(3, 3);
            
            public static final int SHARK_CH_DELETE_VALUE = 1;
            public static final int SHARK_CH_INSERT_VALUE = 0;
            public static final int SHARK_CH_MODIFY_VALUE = 2;
            public static final int SHARK_CH_QUERY_VALUE = 3;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SHARK_CHOPTION> internalValueMap = new a();
            private static final SHARK_CHOPTION[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SHARK_CHOPTION> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SHARK_CHOPTION findValueByNumber(int i) {
                    return SHARK_CHOPTION.valueOf(i);
                }
            }

            SHARK_CHOPTION(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SHARK_ChannelInfoOperate.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<SHARK_CHOPTION> internalGetValueMap() {
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

            public static SHARK_CHOPTION valueOf(int i) {
                if (i == 0) {
                    return SHARK_CH_INSERT;
                }
                if (i == 1) {
                    return SHARK_CH_DELETE;
                }
                if (i == 2) {
                    return SHARK_CH_MODIFY;
                }
                if (i != 3) {
                    return null;
                }
                return SHARK_CH_QUERY;
            }

            public static SHARK_CHOPTION valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SHARK_CH_UERR implements ProtocolMessageEnum {
            SHARK_CH_OK(0, 0),
            SHARK_CH_ERROR(1, 1),
            SHARK_CH_EMPTY(2, 2),
            SHARK_CH_FORBIDE(3, 3),
            SHARK_CH_QUERY_CONTINUE(4, 4),
            SHARK_CH_QUERY_FINISH(5, 5);
            
            public static final int SHARK_CH_EMPTY_VALUE = 2;
            public static final int SHARK_CH_ERROR_VALUE = 1;
            public static final int SHARK_CH_FORBIDE_VALUE = 3;
            public static final int SHARK_CH_OK_VALUE = 0;
            public static final int SHARK_CH_QUERY_CONTINUE_VALUE = 4;
            public static final int SHARK_CH_QUERY_FINISH_VALUE = 5;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SHARK_CH_UERR> internalValueMap = new a();
            private static final SHARK_CH_UERR[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SHARK_CH_UERR> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SHARK_CH_UERR findValueByNumber(int i) {
                    return SHARK_CH_UERR.valueOf(i);
                }
            }

            SHARK_CH_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SHARK_ChannelInfoOperate.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SHARK_CH_UERR> internalGetValueMap() {
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

            public static SHARK_CH_UERR valueOf(int i) {
                if (i == 0) {
                    return SHARK_CH_OK;
                }
                if (i == 1) {
                    return SHARK_CH_ERROR;
                }
                if (i == 2) {
                    return SHARK_CH_EMPTY;
                }
                if (i == 3) {
                    return SHARK_CH_FORBIDE;
                }
                if (i == 4) {
                    return SHARK_CH_QUERY_CONTINUE;
                }
                if (i != 5) {
                    return null;
                }
                return SHARK_CH_QUERY_FINISH;
            }

            public static SHARK_CH_UERR valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SHARK_ChannelInfoOperate> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SHARK_ChannelInfoOperate parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SHARK_ChannelInfoOperate.newBuilder();
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
            SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate = new SHARK_ChannelInfoOperate(true);
            defaultInstance = sHARK_ChannelInfoOperate;
            sHARK_ChannelInfoOperate.initFields();
        }

        /* synthetic */ SHARK_ChannelInfoOperate(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SHARK_ChannelInfoOperate getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SharkProtos.i;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SHARK_CH_UERR.SHARK_CH_OK;
            this.option_ = SHARK_CHOPTION.SHARK_CH_INSERT;
            this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SHARK_ChannelInfoOperate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_ChannelInfoOperate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
        public SHARK_ChannelInfo getCh() {
            return this.ch_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
        public SHARK_ChannelInfoOrBuilder getChOrBuilder() {
            return this.ch_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
        public SHARK_CHOPTION getOption() {
            return this.option_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SHARK_ChannelInfoOperate> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
        public SHARK_CH_UERR getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
        public boolean hasCh() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperateOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.j.ensureFieldAccessorsInitialized(SHARK_ChannelInfoOperate.class, Builder.class);
        }

        private SHARK_ChannelInfoOperate(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_ChannelInfoOperate);
        }

        public static SHARK_ChannelInfoOperate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_ChannelInfoOperate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_ChannelInfoOperate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SHARK_ChannelInfoOperate getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SHARK_ChannelInfoOperate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_ChannelInfoOperate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SHARK_ChannelInfoOperate parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SHARK_ChannelInfoOperate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_ChannelInfoOperate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_ChannelInfoOperate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SHARK_ChannelInfoOperateOrBuilder extends MessageOrBuilder {
        SHARK_ChannelInfo getCh();

        SHARK_ChannelInfoOrBuilder getChOrBuilder();

        SHARK_ChannelInfoOperate.SHARK_CHOPTION getOption();

        SHARK_ChannelInfoOperate.SHARK_CH_UERR getResult();

        int getVersion();

        boolean hasCh();

        boolean hasOption();

        boolean hasResult();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public interface SHARK_ChannelInfoOrBuilder extends MessageOrBuilder {
        int getChBand();

        SHARK_SWITCH getChElim();

        ByteString getChName();

        int getChNo();

        SHARK_SWITCH getChPolite();

        int getChRxCss();

        int getChRxFreq();

        int getChSq();

        int getChTxCss();

        int getChTxFreq();

        int getChTxPower();

        SHARK_ChannelInfo.SHARK_CHTYPE getChType();

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
    public static final class SHARK_ChannelStateOperate extends GeneratedMessage implements SHARK_ChannelStateOperateOrBuilder {
        public static final int CH1_FIELD_NUMBER = 6;
        public static final int CH2_FIELD_NUMBER = 7;
        public static final int CURRENTCHID_FIELD_NUMBER = 8;
        public static final int DEVICEMODE_FIELD_NUMBER = 4;
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<SHARK_ChannelStateOperate> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int STATEMODE_FIELD_NUMBER = 5;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SHARK_ChannelStateOperate defaultInstance;
        private int bitField0_;
        private SHARK_ChannelInfo ch1_;
        private SHARK_ChannelInfo ch2_;
        private int currentChId_;
        private SHARK_MODE deviceMode_;
        private SHARK_STOPTION option_;
        private SHARK_ST_UERR result_;
        private int stateMode_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SHARK_ChannelStateOperateOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> ch1Builder_;
            private SHARK_ChannelInfo ch1_;
            private SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> ch2Builder_;
            private SHARK_ChannelInfo ch2_;
            private int currentChId_;
            private SHARK_MODE deviceMode_;
            private SHARK_STOPTION option_;
            private SHARK_ST_UERR result_;
            private int stateMode_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> getCh1FieldBuilder() {
                if (this.ch1Builder_ == null) {
                    this.ch1Builder_ = new SingleFieldBuilder<>(getCh1(), getParentForChildren(), isClean());
                    this.ch1_ = null;
                }
                return this.ch1Builder_;
            }

            private SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> getCh2FieldBuilder() {
                if (this.ch2Builder_ == null) {
                    this.ch2Builder_ = new SingleFieldBuilder<>(getCh2(), getParentForChildren(), isClean());
                    this.ch2_ = null;
                }
                return this.ch2Builder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SharkProtos.g;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessage.alwaysUseFieldBuilders) {
                    getCh1FieldBuilder();
                    getCh2FieldBuilder();
                }
            }

            public Builder clearCh1() {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = SHARK_ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            public Builder clearCh2() {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    this.ch2_ = SHARK_ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clearCurrentChId() {
                this.bitField0_ &= -129;
                this.currentChId_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDeviceMode() {
                this.bitField0_ &= -9;
                this.deviceMode_ = SHARK_MODE.SHARK_MODE_NORMAL;
                onChanged();
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = SHARK_STOPTION.SHARK_ST_UPDATE;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SHARK_ST_UERR.SHARK_ST_OK;
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

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public SHARK_ChannelInfo getCh1() {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    return this.ch1_;
                }
                return singleFieldBuilder.getMessage();
            }

            public SHARK_ChannelInfo.Builder getCh1Builder() {
                this.bitField0_ |= 32;
                onChanged();
                return getCh1FieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public SHARK_ChannelInfoOrBuilder getCh1OrBuilder() {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch1_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public SHARK_ChannelInfo getCh2() {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    return this.ch2_;
                }
                return singleFieldBuilder.getMessage();
            }

            public SHARK_ChannelInfo.Builder getCh2Builder() {
                this.bitField0_ |= 64;
                onChanged();
                return getCh2FieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public SHARK_ChannelInfoOrBuilder getCh2OrBuilder() {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch2_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public int getCurrentChId() {
                return this.currentChId_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SharkProtos.g;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public SHARK_MODE getDeviceMode() {
                return this.deviceMode_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public SHARK_STOPTION getOption() {
                return this.option_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public SHARK_ST_UERR getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public int getStateMode() {
                return this.stateMode_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public boolean hasCh1() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public boolean hasCh2() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public boolean hasCurrentChId() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public boolean hasDeviceMode() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public boolean hasStateMode() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.h.ensureFieldAccessorsInitialized(SHARK_ChannelStateOperate.class, Builder.class);
            }

            public Builder mergeCh1(SHARK_ChannelInfo sHARK_ChannelInfo) {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 32) != 32 || this.ch1_ == SHARK_ChannelInfo.getDefaultInstance()) {
                        this.ch1_ = sHARK_ChannelInfo;
                    } else {
                        this.ch1_ = ((SHARK_ChannelInfo.Builder) SHARK_ChannelInfo.newBuilder(this.ch1_).mergeFrom((Message) sHARK_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(sHARK_ChannelInfo);
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder mergeCh2(SHARK_ChannelInfo sHARK_ChannelInfo) {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 64) != 64 || this.ch2_ == SHARK_ChannelInfo.getDefaultInstance()) {
                        this.ch2_ = sHARK_ChannelInfo;
                    } else {
                        this.ch2_ = ((SHARK_ChannelInfo.Builder) SHARK_ChannelInfo.newBuilder(this.ch2_).mergeFrom((Message) sHARK_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(sHARK_ChannelInfo);
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder setCh1(SHARK_ChannelInfo sHARK_ChannelInfo) {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(sHARK_ChannelInfo);
                } else if (sHARK_ChannelInfo != null) {
                    this.ch1_ = sHARK_ChannelInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder setCh2(SHARK_ChannelInfo sHARK_ChannelInfo) {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(sHARK_ChannelInfo);
                } else if (sHARK_ChannelInfo != null) {
                    this.ch2_ = sHARK_ChannelInfo;
                    onChanged();
                } else {
                    throw null;
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder setCurrentChId(int i) {
                this.bitField0_ |= 128;
                this.currentChId_ = i;
                onChanged();
                return this;
            }

            public Builder setDeviceMode(SHARK_MODE shark_mode) {
                if (shark_mode != null) {
                    this.bitField0_ |= 8;
                    this.deviceMode_ = shark_mode;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setOption(SHARK_STOPTION shark_stoption) {
                if (shark_stoption != null) {
                    this.bitField0_ |= 4;
                    this.option_ = shark_stoption;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setResult(SHARK_ST_UERR shark_st_uerr) {
                if (shark_st_uerr != null) {
                    this.bitField0_ |= 2;
                    this.result_ = shark_st_uerr;
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
                this.result_ = SHARK_ST_UERR.SHARK_ST_OK;
                this.option_ = SHARK_STOPTION.SHARK_ST_UPDATE;
                this.deviceMode_ = SHARK_MODE.SHARK_MODE_NORMAL;
                this.ch1_ = SHARK_ChannelInfo.getDefaultInstance();
                this.ch2_ = SHARK_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_ChannelStateOperate build() {
                SHARK_ChannelStateOperate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_ChannelStateOperate buildPartial() {
                SHARK_ChannelStateOperate sHARK_ChannelStateOperate = new SHARK_ChannelStateOperate(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sHARK_ChannelStateOperate.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_ChannelStateOperate.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sHARK_ChannelStateOperate.option_ = this.option_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sHARK_ChannelStateOperate.deviceMode_ = this.deviceMode_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sHARK_ChannelStateOperate.stateMode_ = this.stateMode_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    sHARK_ChannelStateOperate.ch1_ = this.ch1_;
                } else {
                    sHARK_ChannelStateOperate.ch1_ = singleFieldBuilder.build();
                }
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder2 = this.ch2Builder_;
                if (singleFieldBuilder2 == null) {
                    sHARK_ChannelStateOperate.ch2_ = this.ch2_;
                } else {
                    sHARK_ChannelStateOperate.ch2_ = singleFieldBuilder2.build();
                }
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                sHARK_ChannelStateOperate.currentChId_ = this.currentChId_;
                sHARK_ChannelStateOperate.bitField0_ = i2;
                onBuilt();
                return sHARK_ChannelStateOperate;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SHARK_ChannelStateOperate getDefaultInstanceForType() {
                return SHARK_ChannelStateOperate.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = SHARK_ST_UERR.SHARK_ST_OK;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.option_ = SHARK_STOPTION.SHARK_ST_UPDATE;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.deviceMode_ = SHARK_MODE.SHARK_MODE_NORMAL;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.stateMode_ = 0;
                this.bitField0_ = i4 & (-17);
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = SHARK_ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                this.bitField0_ &= -33;
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder2 = this.ch2Builder_;
                if (singleFieldBuilder2 == null) {
                    this.ch2_ = SHARK_ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder2.clear();
                }
                int i5 = this.bitField0_ & (-65);
                this.bitField0_ = i5;
                this.currentChId_ = 0;
                this.bitField0_ = i5 & (-129);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setCh1(SHARK_ChannelInfo.Builder builder) {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch1Builder_;
                if (singleFieldBuilder == null) {
                    this.ch1_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder setCh2(SHARK_ChannelInfo.Builder builder) {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.ch2Builder_;
                if (singleFieldBuilder == null) {
                    this.ch2_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilder.setMessage(builder.build());
                }
                this.bitField0_ |= 64;
                return this;
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SHARK_ST_UERR.SHARK_ST_OK;
                this.option_ = SHARK_STOPTION.SHARK_ST_UPDATE;
                this.deviceMode_ = SHARK_MODE.SHARK_MODE_NORMAL;
                this.ch1_ = SHARK_ChannelInfo.getDefaultInstance();
                this.ch2_ = SHARK_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }
        }

        /* loaded from: classes2.dex */
        public enum SHARK_MODE implements ProtocolMessageEnum {
            SHARK_MODE_NORMAL(0, 0),
            SHARK_SOS_T(1, 1),
            SHARK_SOS_R(2, 2),
            SHARK_SCAN_CH(3, 3),
            SHARK_SCAN_FREQ(4, 4),
            SHARK_TEAM_M(5, 5),
            SHARK_TEAM_S(6, 6);
            
            public static final int SHARK_MODE_NORMAL_VALUE = 0;
            public static final int SHARK_SCAN_CH_VALUE = 3;
            public static final int SHARK_SCAN_FREQ_VALUE = 4;
            public static final int SHARK_SOS_R_VALUE = 2;
            public static final int SHARK_SOS_T_VALUE = 1;
            public static final int SHARK_TEAM_M_VALUE = 5;
            public static final int SHARK_TEAM_S_VALUE = 6;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SHARK_MODE> internalValueMap = new a();
            private static final SHARK_MODE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SHARK_MODE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SHARK_MODE findValueByNumber(int i) {
                    return SHARK_MODE.valueOf(i);
                }
            }

            SHARK_MODE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SHARK_ChannelStateOperate.getDescriptor().getEnumTypes().get(2);
            }

            public static Internal.EnumLiteMap<SHARK_MODE> internalGetValueMap() {
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

            public static SHARK_MODE valueOf(int i) {
                switch (i) {
                    case 0:
                        return SHARK_MODE_NORMAL;
                    case 1:
                        return SHARK_SOS_T;
                    case 2:
                        return SHARK_SOS_R;
                    case 3:
                        return SHARK_SCAN_CH;
                    case 4:
                        return SHARK_SCAN_FREQ;
                    case 5:
                        return SHARK_TEAM_M;
                    case 6:
                        return SHARK_TEAM_S;
                    default:
                        return null;
                }
            }

            public static SHARK_MODE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SHARK_STOPTION implements ProtocolMessageEnum {
            SHARK_ST_UPDATE(0, 0),
            SHARK_ST_QUERY(1, 1);
            
            public static final int SHARK_ST_QUERY_VALUE = 1;
            public static final int SHARK_ST_UPDATE_VALUE = 0;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SHARK_STOPTION> internalValueMap = new a();
            private static final SHARK_STOPTION[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SHARK_STOPTION> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SHARK_STOPTION findValueByNumber(int i) {
                    return SHARK_STOPTION.valueOf(i);
                }
            }

            SHARK_STOPTION(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SHARK_ChannelStateOperate.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<SHARK_STOPTION> internalGetValueMap() {
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

            public static SHARK_STOPTION valueOf(int i) {
                if (i == 0) {
                    return SHARK_ST_UPDATE;
                }
                if (i != 1) {
                    return null;
                }
                return SHARK_ST_QUERY;
            }

            public static SHARK_STOPTION valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SHARK_ST_UERR implements ProtocolMessageEnum {
            SHARK_ST_OK(0, 0),
            SHARK_ST_ERROR(1, 1),
            SHARK_ST_EMPTY(2, 2),
            SHARK_ST_FORBIDE(3, 3);
            
            public static final int SHARK_ST_EMPTY_VALUE = 2;
            public static final int SHARK_ST_ERROR_VALUE = 1;
            public static final int SHARK_ST_FORBIDE_VALUE = 3;
            public static final int SHARK_ST_OK_VALUE = 0;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SHARK_ST_UERR> internalValueMap = new a();
            private static final SHARK_ST_UERR[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SHARK_ST_UERR> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SHARK_ST_UERR findValueByNumber(int i) {
                    return SHARK_ST_UERR.valueOf(i);
                }
            }

            SHARK_ST_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SHARK_ChannelStateOperate.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SHARK_ST_UERR> internalGetValueMap() {
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

            public static SHARK_ST_UERR valueOf(int i) {
                if (i == 0) {
                    return SHARK_ST_OK;
                }
                if (i == 1) {
                    return SHARK_ST_ERROR;
                }
                if (i == 2) {
                    return SHARK_ST_EMPTY;
                }
                if (i != 3) {
                    return null;
                }
                return SHARK_ST_FORBIDE;
            }

            public static SHARK_ST_UERR valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SHARK_ChannelStateOperate> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SHARK_ChannelStateOperate parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SHARK_ChannelStateOperate.newBuilder();
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
            SHARK_ChannelStateOperate sHARK_ChannelStateOperate = new SHARK_ChannelStateOperate(true);
            defaultInstance = sHARK_ChannelStateOperate;
            sHARK_ChannelStateOperate.initFields();
        }

        /* synthetic */ SHARK_ChannelStateOperate(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SHARK_ChannelStateOperate getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SharkProtos.g;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SHARK_ST_UERR.SHARK_ST_OK;
            this.option_ = SHARK_STOPTION.SHARK_ST_UPDATE;
            this.deviceMode_ = SHARK_MODE.SHARK_MODE_NORMAL;
            this.stateMode_ = 0;
            this.ch1_ = SHARK_ChannelInfo.getDefaultInstance();
            this.ch2_ = SHARK_ChannelInfo.getDefaultInstance();
            this.currentChId_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SHARK_ChannelStateOperate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_ChannelStateOperate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public SHARK_ChannelInfo getCh1() {
            return this.ch1_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public SHARK_ChannelInfoOrBuilder getCh1OrBuilder() {
            return this.ch1_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public SHARK_ChannelInfo getCh2() {
            return this.ch2_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public SHARK_ChannelInfoOrBuilder getCh2OrBuilder() {
            return this.ch2_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public int getCurrentChId() {
            return this.currentChId_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public SHARK_MODE getDeviceMode() {
            return this.deviceMode_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public SHARK_STOPTION getOption() {
            return this.option_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SHARK_ChannelStateOperate> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public SHARK_ST_UERR getResult() {
            return this.result_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public int getStateMode() {
            return this.stateMode_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public boolean hasCh1() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public boolean hasCh2() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public boolean hasCurrentChId() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public boolean hasDeviceMode() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public boolean hasStateMode() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperateOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.h.ensureFieldAccessorsInitialized(SHARK_ChannelStateOperate.class, Builder.class);
        }

        private SHARK_ChannelStateOperate(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_ChannelStateOperate);
        }

        public static SHARK_ChannelStateOperate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_ChannelStateOperate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_ChannelStateOperate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SHARK_ChannelStateOperate getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SHARK_ChannelStateOperate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_ChannelStateOperate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SHARK_ChannelStateOperate parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SHARK_ChannelStateOperate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_ChannelStateOperate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_ChannelStateOperate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SHARK_ChannelStateOperateOrBuilder extends MessageOrBuilder {
        SHARK_ChannelInfo getCh1();

        SHARK_ChannelInfoOrBuilder getCh1OrBuilder();

        SHARK_ChannelInfo getCh2();

        SHARK_ChannelInfoOrBuilder getCh2OrBuilder();

        int getCurrentChId();

        SHARK_ChannelStateOperate.SHARK_MODE getDeviceMode();

        SHARK_ChannelStateOperate.SHARK_STOPTION getOption();

        SHARK_ChannelStateOperate.SHARK_ST_UERR getResult();

        int getStateMode();

        int getVersion();

        boolean hasCh1();

        boolean hasCh2();

        boolean hasCurrentChId();

        boolean hasDeviceMode();

        boolean hasOption();

        boolean hasResult();

        boolean hasStateMode();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class SHARK_Connect extends GeneratedMessage implements SHARK_ConnectOrBuilder {
        public static final int APPMODE_FIELD_NUMBER = 5;
        public static final int BTMAC_FIELD_NUMBER = 7;
        public static final int CONNCODE_FIELD_NUMBER = 2;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static final int DEVICETYPE_FIELD_NUMBER = 4;
        public static final int LANGUAGE_FIELD_NUMBER = 6;
        public static Parser<SHARK_Connect> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SHARK_Connect defaultInstance;
        private SHARK_APPTYPE appMode_;
        private int bitField0_;
        private ByteString btmac_;
        private SHARK_CONNCODE connCode_;
        private int deviceId_;
        private int deviceType_;
        private SHARK_LANGUAGETYPE language_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SHARK_ConnectOrBuilder {
            private SHARK_APPTYPE appMode_;
            private int bitField0_;
            private ByteString btmac_;
            private SHARK_CONNCODE connCode_;
            private int deviceId_;
            private int deviceType_;
            private SHARK_LANGUAGETYPE language_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SharkProtos.f5982a;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearAppMode() {
                this.bitField0_ &= -17;
                this.appMode_ = SHARK_APPTYPE.SHARK_OWN_APP;
                onChanged();
                return this;
            }

            public Builder clearBtmac() {
                this.bitField0_ &= -65;
                this.btmac_ = SHARK_Connect.getDefaultInstance().getBtmac();
                onChanged();
                return this;
            }

            public Builder clearConnCode() {
                this.bitField0_ &= -3;
                this.connCode_ = SHARK_CONNCODE.SHARK_DISCONNECT;
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
                this.language_ = SHARK_LANGUAGETYPE.SHARK_CHINESE;
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public SHARK_APPTYPE getAppMode() {
                return this.appMode_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public ByteString getBtmac() {
                return this.btmac_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public SHARK_CONNCODE getConnCode() {
                return this.connCode_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SharkProtos.f5982a;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public int getDeviceId() {
                return this.deviceId_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public int getDeviceType() {
                return this.deviceType_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public SHARK_LANGUAGETYPE getLanguage() {
                return this.language_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public boolean hasAppMode() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public boolean hasBtmac() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public boolean hasConnCode() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public boolean hasDeviceType() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public boolean hasLanguage() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.f5983b.ensureFieldAccessorsInitialized(SHARK_Connect.class, Builder.class);
            }

            public Builder setAppMode(SHARK_APPTYPE shark_apptype) {
                if (shark_apptype != null) {
                    this.bitField0_ |= 16;
                    this.appMode_ = shark_apptype;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setBtmac(ByteString byteString) {
                if (byteString != null) {
                    this.bitField0_ |= 64;
                    this.btmac_ = byteString;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setConnCode(SHARK_CONNCODE shark_conncode) {
                if (shark_conncode != null) {
                    this.bitField0_ |= 2;
                    this.connCode_ = shark_conncode;
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

            public Builder setLanguage(SHARK_LANGUAGETYPE shark_languagetype) {
                if (shark_languagetype != null) {
                    this.bitField0_ |= 32;
                    this.language_ = shark_languagetype;
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
                this.connCode_ = SHARK_CONNCODE.SHARK_DISCONNECT;
                this.appMode_ = SHARK_APPTYPE.SHARK_OWN_APP;
                this.language_ = SHARK_LANGUAGETYPE.SHARK_CHINESE;
                this.btmac_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_Connect build() {
                SHARK_Connect buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_Connect buildPartial() {
                SHARK_Connect sHARK_Connect = new SHARK_Connect(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sHARK_Connect.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_Connect.connCode_ = this.connCode_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sHARK_Connect.deviceId_ = this.deviceId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sHARK_Connect.deviceType_ = this.deviceType_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sHARK_Connect.appMode_ = this.appMode_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                sHARK_Connect.language_ = this.language_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                sHARK_Connect.btmac_ = this.btmac_;
                sHARK_Connect.bitField0_ = i2;
                onBuilt();
                return sHARK_Connect;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SHARK_Connect getDefaultInstanceForType() {
                return SHARK_Connect.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.connCode_ = SHARK_CONNCODE.SHARK_DISCONNECT;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.deviceId_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.deviceType_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.appMode_ = SHARK_APPTYPE.SHARK_OWN_APP;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.language_ = SHARK_LANGUAGETYPE.SHARK_CHINESE;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.btmac_ = ByteString.EMPTY;
                this.bitField0_ = i6 & (-65);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.connCode_ = SHARK_CONNCODE.SHARK_DISCONNECT;
                this.appMode_ = SHARK_APPTYPE.SHARK_OWN_APP;
                this.language_ = SHARK_LANGUAGETYPE.SHARK_CHINESE;
                this.btmac_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }
        }

        /* loaded from: classes2.dex */
        public enum SHARK_APPTYPE implements ProtocolMessageEnum {
            SHARK_OWN_APP(0, 0),
            SHARK_MIJIA_APP(1, 1);
            
            public static final int SHARK_MIJIA_APP_VALUE = 1;
            public static final int SHARK_OWN_APP_VALUE = 0;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SHARK_APPTYPE> internalValueMap = new a();
            private static final SHARK_APPTYPE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SHARK_APPTYPE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SHARK_APPTYPE findValueByNumber(int i) {
                    return SHARK_APPTYPE.valueOf(i);
                }
            }

            SHARK_APPTYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SHARK_Connect.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SHARK_APPTYPE> internalGetValueMap() {
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

            public static SHARK_APPTYPE valueOf(int i) {
                if (i == 0) {
                    return SHARK_OWN_APP;
                }
                if (i != 1) {
                    return null;
                }
                return SHARK_MIJIA_APP;
            }

            public static SHARK_APPTYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SHARK_LANGUAGETYPE implements ProtocolMessageEnum {
            SHARK_CHINESE(0, 0),
            SHARK_ENGLISH(1, 1);
            
            public static final int SHARK_CHINESE_VALUE = 0;
            public static final int SHARK_ENGLISH_VALUE = 1;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SHARK_LANGUAGETYPE> internalValueMap = new a();
            private static final SHARK_LANGUAGETYPE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SHARK_LANGUAGETYPE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SHARK_LANGUAGETYPE findValueByNumber(int i) {
                    return SHARK_LANGUAGETYPE.valueOf(i);
                }
            }

            SHARK_LANGUAGETYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SHARK_Connect.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<SHARK_LANGUAGETYPE> internalGetValueMap() {
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

            public static SHARK_LANGUAGETYPE valueOf(int i) {
                if (i == 0) {
                    return SHARK_CHINESE;
                }
                if (i != 1) {
                    return null;
                }
                return SHARK_ENGLISH;
            }

            public static SHARK_LANGUAGETYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SHARK_Connect> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SHARK_Connect parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SHARK_Connect.newBuilder();
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
            SHARK_Connect sHARK_Connect = new SHARK_Connect(true);
            defaultInstance = sHARK_Connect;
            sHARK_Connect.initFields();
        }

        /* synthetic */ SHARK_Connect(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SHARK_Connect getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SharkProtos.f5982a;
        }

        private void initFields() {
            this.version_ = 0;
            this.connCode_ = SHARK_CONNCODE.SHARK_DISCONNECT;
            this.deviceId_ = 0;
            this.deviceType_ = 0;
            this.appMode_ = SHARK_APPTYPE.SHARK_OWN_APP;
            this.language_ = SHARK_LANGUAGETYPE.SHARK_CHINESE;
            this.btmac_ = ByteString.EMPTY;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SHARK_Connect parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_Connect parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public SHARK_APPTYPE getAppMode() {
            return this.appMode_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public ByteString getBtmac() {
            return this.btmac_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public SHARK_CONNCODE getConnCode() {
            return this.connCode_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public int getDeviceId() {
            return this.deviceId_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public int getDeviceType() {
            return this.deviceType_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public SHARK_LANGUAGETYPE getLanguage() {
            return this.language_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SHARK_Connect> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public boolean hasAppMode() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public boolean hasBtmac() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public boolean hasConnCode() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public boolean hasDeviceType() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public boolean hasLanguage() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_ConnectOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.f5983b.ensureFieldAccessorsInitialized(SHARK_Connect.class, Builder.class);
        }

        private SHARK_Connect(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SHARK_Connect sHARK_Connect) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_Connect);
        }

        public static SHARK_Connect parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_Connect parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_Connect parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SHARK_Connect getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SHARK_Connect(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_Connect parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SHARK_Connect parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SHARK_Connect parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_Connect parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_Connect parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SHARK_ConnectOrBuilder extends MessageOrBuilder {
        SHARK_Connect.SHARK_APPTYPE getAppMode();

        ByteString getBtmac();

        SHARK_CONNCODE getConnCode();

        int getDeviceId();

        int getDeviceType();

        SHARK_Connect.SHARK_LANGUAGETYPE getLanguage();

        int getVersion();

        boolean hasAppMode();

        boolean hasBtmac();

        boolean hasConnCode();

        boolean hasDeviceId();

        boolean hasDeviceType();

        boolean hasLanguage();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class SHARK_DeviceParam extends GeneratedMessage implements SHARK_DeviceParamOrBuilder {
        public static final int ACTIVATE_FIELD_NUMBER = 9;
        public static final int BLENAME_FIELD_NUMBER = 7;
        public static final int BTAUDIO_FIELD_NUMBER = 11;
        public static final int CHARGE_FIELD_NUMBER = 8;
        public static final int CH_FIELD_NUMBER = 12;
        public static final int DEVICENAME_FIELD_NUMBER = 6;
        public static final int FULLINQUIRY_FIELD_NUMBER = 3;
        public static final int ISALLPUBLIC_FIELD_NUMBER = 14;
        public static Parser<SHARK_DeviceParam> PARSER = new a();
        public static final int PWSAVEMODE_FIELD_NUMBER = 15;
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int SHARELOC_FIELD_NUMBER = 10;
        public static final int TIMEDISPLAY_FIELD_NUMBER = 31;
        public static final int TIMESTAMP_FIELD_NUMBER = 30;
        public static final int VERHW_FIELD_NUMBER = 4;
        public static final int VERSION_FIELD_NUMBER = 1;
        public static final int VERSOFT_FIELD_NUMBER = 5;
        public static final int VOICEALERT_FIELD_NUMBER = 13;
        private static final SHARK_DeviceParam defaultInstance;
        private int activate_;
        private int bitField0_;
        private ByteString bleName_;
        private int btAudio_;
        private SHARK_ChannelInfo ch_;
        private int charge_;
        private ByteString deviceName_;
        private SHARK_SWITCH fullInquiry_;
        private SHARK_SWITCH isAllPublic_;
        private int pwsaveMode_;
        private SHARK_DEV_UERR result_;
        private SHARK_SWITCH shareLoc_;
        private SHARK_SWITCH timeDisplay_;
        private int timeStamp_;
        private final UnknownFieldSet unknownFields;
        private int verHw_;
        private int verSoft_;
        private int version_;
        private SHARK_SWITCH voiceAlert_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SHARK_DeviceParamOrBuilder {
            private int activate_;
            private int bitField0_;
            private ByteString bleName_;
            private int btAudio_;
            private SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> chBuilder_;
            private SHARK_ChannelInfo ch_;
            private int charge_;
            private ByteString deviceName_;
            private SHARK_SWITCH fullInquiry_;
            private SHARK_SWITCH isAllPublic_;
            private int pwsaveMode_;
            private SHARK_DEV_UERR result_;
            private SHARK_SWITCH shareLoc_;
            private SHARK_SWITCH timeDisplay_;
            private int timeStamp_;
            private int verHw_;
            private int verSoft_;
            private int version_;
            private SHARK_SWITCH voiceAlert_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            private SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> getChFieldBuilder() {
                if (this.chBuilder_ == null) {
                    this.chBuilder_ = new SingleFieldBuilder<>(getCh(), getParentForChildren(), isClean());
                    this.ch_ = null;
                }
                return this.chBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SharkProtos.e;
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
                this.bleName_ = SHARK_DeviceParam.getDefaultInstance().getBleName();
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
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
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
                this.deviceName_ = SHARK_DeviceParam.getDefaultInstance().getDeviceName();
                onChanged();
                return this;
            }

            public Builder clearFullInquiry() {
                this.bitField0_ &= -5;
                this.fullInquiry_ = SHARK_SWITCH.SHARK_OFF;
                onChanged();
                return this;
            }

            public Builder clearIsAllPublic() {
                this.bitField0_ &= -8193;
                this.isAllPublic_ = SHARK_SWITCH.SHARK_OFF;
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
                this.result_ = SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK;
                onChanged();
                return this;
            }

            public Builder clearShareLoc() {
                this.bitField0_ &= -513;
                this.shareLoc_ = SHARK_SWITCH.SHARK_OFF;
                onChanged();
                return this;
            }

            public Builder clearTimeDisplay() {
                this.bitField0_ &= -65537;
                this.timeDisplay_ = SHARK_SWITCH.SHARK_OFF;
                onChanged();
                return this;
            }

            public Builder clearTimeStamp() {
                this.bitField0_ &= -32769;
                this.timeStamp_ = 0;
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
                this.voiceAlert_ = SHARK_SWITCH.SHARK_OFF;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public int getActivate() {
                return this.activate_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public ByteString getBleName() {
                return this.bleName_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public int getBtAudio() {
                return this.btAudio_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public SHARK_ChannelInfo getCh() {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    return this.ch_;
                }
                return singleFieldBuilder.getMessage();
            }

            public SHARK_ChannelInfo.Builder getChBuilder() {
                this.bitField0_ |= 2048;
                onChanged();
                return getChFieldBuilder().getBuilder();
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public SHARK_ChannelInfoOrBuilder getChOrBuilder() {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder != null) {
                    return singleFieldBuilder.getMessageOrBuilder();
                }
                return this.ch_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public int getCharge() {
                return this.charge_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SharkProtos.e;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public ByteString getDeviceName() {
                return this.deviceName_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public SHARK_SWITCH getFullInquiry() {
                return this.fullInquiry_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public SHARK_SWITCH getIsAllPublic() {
                return this.isAllPublic_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public int getPwsaveMode() {
                return this.pwsaveMode_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public SHARK_DEV_UERR getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public SHARK_SWITCH getShareLoc() {
                return this.shareLoc_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public SHARK_SWITCH getTimeDisplay() {
                return this.timeDisplay_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public int getTimeStamp() {
                return this.timeStamp_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public int getVerHw() {
                return this.verHw_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public int getVerSoft() {
                return this.verSoft_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public SHARK_SWITCH getVoiceAlert() {
                return this.voiceAlert_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasActivate() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasBleName() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasBtAudio() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasCh() {
                return (this.bitField0_ & 2048) == 2048;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasCharge() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasDeviceName() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasFullInquiry() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasIsAllPublic() {
                return (this.bitField0_ & 8192) == 8192;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasPwsaveMode() {
                return (this.bitField0_ & 16384) == 16384;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasShareLoc() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasTimeDisplay() {
                return (this.bitField0_ & 65536) == 65536;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasTimeStamp() {
                return (this.bitField0_ & 32768) == 32768;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasVerHw() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasVerSoft() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
            public boolean hasVoiceAlert() {
                return (this.bitField0_ & 4096) == 4096;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.f.ensureFieldAccessorsInitialized(SHARK_DeviceParam.class, Builder.class);
            }

            public Builder mergeCh(SHARK_ChannelInfo sHARK_ChannelInfo) {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    if ((this.bitField0_ & 2048) != 2048 || this.ch_ == SHARK_ChannelInfo.getDefaultInstance()) {
                        this.ch_ = sHARK_ChannelInfo;
                    } else {
                        this.ch_ = ((SHARK_ChannelInfo.Builder) SHARK_ChannelInfo.newBuilder(this.ch_).mergeFrom((Message) sHARK_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    singleFieldBuilder.mergeFrom(sHARK_ChannelInfo);
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

            public Builder setCh(SHARK_ChannelInfo sHARK_ChannelInfo) {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.setMessage(sHARK_ChannelInfo);
                } else if (sHARK_ChannelInfo != null) {
                    this.ch_ = sHARK_ChannelInfo;
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

            public Builder setFullInquiry(SHARK_SWITCH shark_switch) {
                if (shark_switch != null) {
                    this.bitField0_ |= 4;
                    this.fullInquiry_ = shark_switch;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setIsAllPublic(SHARK_SWITCH shark_switch) {
                if (shark_switch != null) {
                    this.bitField0_ |= 8192;
                    this.isAllPublic_ = shark_switch;
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

            public Builder setResult(SHARK_DEV_UERR shark_dev_uerr) {
                if (shark_dev_uerr != null) {
                    this.bitField0_ |= 2;
                    this.result_ = shark_dev_uerr;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setShareLoc(SHARK_SWITCH shark_switch) {
                if (shark_switch != null) {
                    this.bitField0_ |= 512;
                    this.shareLoc_ = shark_switch;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setTimeDisplay(SHARK_SWITCH shark_switch) {
                if (shark_switch != null) {
                    this.bitField0_ |= 65536;
                    this.timeDisplay_ = shark_switch;
                    onChanged();
                    return this;
                }
                throw null;
            }

            public Builder setTimeStamp(int i) {
                this.bitField0_ |= 32768;
                this.timeStamp_ = i;
                onChanged();
                return this;
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

            public Builder setVoiceAlert(SHARK_SWITCH shark_switch) {
                if (shark_switch != null) {
                    this.bitField0_ |= 4096;
                    this.voiceAlert_ = shark_switch;
                    onChanged();
                    return this;
                }
                throw null;
            }

            private Builder() {
                this.result_ = SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK;
                this.fullInquiry_ = SHARK_SWITCH.SHARK_OFF;
                ByteString byteString = ByteString.EMPTY;
                this.deviceName_ = byteString;
                this.bleName_ = byteString;
                this.shareLoc_ = SHARK_SWITCH.SHARK_OFF;
                this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
                SHARK_SWITCH shark_switch = SHARK_SWITCH.SHARK_OFF;
                this.voiceAlert_ = shark_switch;
                this.isAllPublic_ = shark_switch;
                this.timeDisplay_ = shark_switch;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_DeviceParam build() {
                SHARK_DeviceParam buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_DeviceParam buildPartial() {
                SHARK_DeviceParam sHARK_DeviceParam = new SHARK_DeviceParam(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sHARK_DeviceParam.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_DeviceParam.result_ = this.result_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sHARK_DeviceParam.fullInquiry_ = this.fullInquiry_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sHARK_DeviceParam.verHw_ = this.verHw_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sHARK_DeviceParam.verSoft_ = this.verSoft_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                sHARK_DeviceParam.deviceName_ = this.deviceName_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                sHARK_DeviceParam.bleName_ = this.bleName_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                sHARK_DeviceParam.charge_ = this.charge_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                sHARK_DeviceParam.activate_ = this.activate_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                sHARK_DeviceParam.shareLoc_ = this.shareLoc_;
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                sHARK_DeviceParam.btAudio_ = this.btAudio_;
                if ((i & 2048) == 2048) {
                    i2 |= 2048;
                }
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    sHARK_DeviceParam.ch_ = this.ch_;
                } else {
                    sHARK_DeviceParam.ch_ = singleFieldBuilder.build();
                }
                if ((i & 4096) == 4096) {
                    i2 |= 4096;
                }
                sHARK_DeviceParam.voiceAlert_ = this.voiceAlert_;
                if ((i & 8192) == 8192) {
                    i2 |= 8192;
                }
                sHARK_DeviceParam.isAllPublic_ = this.isAllPublic_;
                if ((i & 16384) == 16384) {
                    i2 |= 16384;
                }
                sHARK_DeviceParam.pwsaveMode_ = this.pwsaveMode_;
                if ((i & 32768) == 32768) {
                    i2 |= 32768;
                }
                sHARK_DeviceParam.timeStamp_ = this.timeStamp_;
                if ((i & 65536) == 65536) {
                    i2 |= 65536;
                }
                sHARK_DeviceParam.timeDisplay_ = this.timeDisplay_;
                sHARK_DeviceParam.bitField0_ = i2;
                onBuilt();
                return sHARK_DeviceParam;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SHARK_DeviceParam getDefaultInstanceForType() {
                return SHARK_DeviceParam.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.result_ = SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.fullInquiry_ = SHARK_SWITCH.SHARK_OFF;
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
                this.shareLoc_ = SHARK_SWITCH.SHARK_OFF;
                int i10 = i9 & (-513);
                this.bitField0_ = i10;
                this.btAudio_ = 0;
                this.bitField0_ = i10 & (-1025);
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
                if (singleFieldBuilder == null) {
                    this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
                } else {
                    singleFieldBuilder.clear();
                }
                int i11 = this.bitField0_ & (-2049);
                this.bitField0_ = i11;
                SHARK_SWITCH shark_switch = SHARK_SWITCH.SHARK_OFF;
                this.voiceAlert_ = shark_switch;
                int i12 = i11 & (-4097);
                this.bitField0_ = i12;
                this.isAllPublic_ = shark_switch;
                int i13 = i12 & (-8193);
                this.bitField0_ = i13;
                this.pwsaveMode_ = 0;
                int i14 = i13 & (-16385);
                this.bitField0_ = i14;
                this.timeStamp_ = 0;
                int i15 = (-32769) & i14;
                this.bitField0_ = i15;
                this.timeDisplay_ = shark_switch;
                this.bitField0_ = i15 & (-65537);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Builder setCh(SHARK_ChannelInfo.Builder builder) {
                SingleFieldBuilder<SHARK_ChannelInfo, SHARK_ChannelInfo.Builder, SHARK_ChannelInfoOrBuilder> singleFieldBuilder = this.chBuilder_;
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
                this.result_ = SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK;
                this.fullInquiry_ = SHARK_SWITCH.SHARK_OFF;
                ByteString byteString = ByteString.EMPTY;
                this.deviceName_ = byteString;
                this.bleName_ = byteString;
                this.shareLoc_ = SHARK_SWITCH.SHARK_OFF;
                this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
                SHARK_SWITCH shark_switch = SHARK_SWITCH.SHARK_OFF;
                this.voiceAlert_ = shark_switch;
                this.isAllPublic_ = shark_switch;
                this.timeDisplay_ = shark_switch;
                maybeForceBuilderInitialization();
            }
        }

        /* loaded from: classes2.dex */
        public enum SHARK_DEV_UERR implements ProtocolMessageEnum {
            SHARK_PARAM_QUERY_OK(0, 1),
            SHARK_PARAM_QUERY_ERROR(1, 2),
            SHARK_PARAM_UPDATE_OK(2, 3),
            SHARK_PARAM_UPDATE_ERROR(3, 4);
            
            public static final int SHARK_PARAM_QUERY_ERROR_VALUE = 2;
            public static final int SHARK_PARAM_QUERY_OK_VALUE = 1;
            public static final int SHARK_PARAM_UPDATE_ERROR_VALUE = 4;
            public static final int SHARK_PARAM_UPDATE_OK_VALUE = 3;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SHARK_DEV_UERR> internalValueMap = new a();
            private static final SHARK_DEV_UERR[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SHARK_DEV_UERR> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SHARK_DEV_UERR findValueByNumber(int i) {
                    return SHARK_DEV_UERR.valueOf(i);
                }
            }

            SHARK_DEV_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SHARK_DeviceParam.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SHARK_DEV_UERR> internalGetValueMap() {
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

            public static SHARK_DEV_UERR valueOf(int i) {
                if (i == 1) {
                    return SHARK_PARAM_QUERY_OK;
                }
                if (i == 2) {
                    return SHARK_PARAM_QUERY_ERROR;
                }
                if (i == 3) {
                    return SHARK_PARAM_UPDATE_OK;
                }
                if (i != 4) {
                    return null;
                }
                return SHARK_PARAM_UPDATE_ERROR;
            }

            public static SHARK_DEV_UERR valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SHARK_DeviceParam> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SHARK_DeviceParam parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SHARK_DeviceParam.newBuilder();
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
            SHARK_DeviceParam sHARK_DeviceParam = new SHARK_DeviceParam(true);
            defaultInstance = sHARK_DeviceParam;
            sHARK_DeviceParam.initFields();
        }

        /* synthetic */ SHARK_DeviceParam(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SHARK_DeviceParam getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SharkProtos.e;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK;
            this.fullInquiry_ = SHARK_SWITCH.SHARK_OFF;
            this.verHw_ = 0;
            this.verSoft_ = 0;
            ByteString byteString = ByteString.EMPTY;
            this.deviceName_ = byteString;
            this.bleName_ = byteString;
            this.charge_ = 0;
            this.activate_ = 0;
            this.shareLoc_ = SHARK_SWITCH.SHARK_OFF;
            this.btAudio_ = 0;
            this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
            SHARK_SWITCH shark_switch = SHARK_SWITCH.SHARK_OFF;
            this.voiceAlert_ = shark_switch;
            this.isAllPublic_ = shark_switch;
            this.pwsaveMode_ = 0;
            this.timeStamp_ = 0;
            this.timeDisplay_ = shark_switch;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SHARK_DeviceParam parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_DeviceParam parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public int getActivate() {
            return this.activate_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public ByteString getBleName() {
            return this.bleName_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public int getBtAudio() {
            return this.btAudio_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public SHARK_ChannelInfo getCh() {
            return this.ch_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public SHARK_ChannelInfoOrBuilder getChOrBuilder() {
            return this.ch_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public int getCharge() {
            return this.charge_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public ByteString getDeviceName() {
            return this.deviceName_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public SHARK_SWITCH getFullInquiry() {
            return this.fullInquiry_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public SHARK_SWITCH getIsAllPublic() {
            return this.isAllPublic_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SHARK_DeviceParam> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public int getPwsaveMode() {
            return this.pwsaveMode_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public SHARK_DEV_UERR getResult() {
            return this.result_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public SHARK_SWITCH getShareLoc() {
            return this.shareLoc_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public SHARK_SWITCH getTimeDisplay() {
            return this.timeDisplay_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public int getTimeStamp() {
            return this.timeStamp_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public int getVerHw() {
            return this.verHw_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public int getVerSoft() {
            return this.verSoft_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public SHARK_SWITCH getVoiceAlert() {
            return this.voiceAlert_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasActivate() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasBleName() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasBtAudio() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasCh() {
            return (this.bitField0_ & 2048) == 2048;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasCharge() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasDeviceName() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasFullInquiry() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasIsAllPublic() {
            return (this.bitField0_ & 8192) == 8192;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasPwsaveMode() {
            return (this.bitField0_ & 16384) == 16384;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasShareLoc() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasTimeDisplay() {
            return (this.bitField0_ & 65536) == 65536;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasTimeStamp() {
            return (this.bitField0_ & 32768) == 32768;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasVerHw() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasVerSoft() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParamOrBuilder
        public boolean hasVoiceAlert() {
            return (this.bitField0_ & 4096) == 4096;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.f.ensureFieldAccessorsInitialized(SHARK_DeviceParam.class, Builder.class);
        }

        private SHARK_DeviceParam(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SHARK_DeviceParam sHARK_DeviceParam) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_DeviceParam);
        }

        public static SHARK_DeviceParam parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_DeviceParam parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_DeviceParam parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SHARK_DeviceParam getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SHARK_DeviceParam(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_DeviceParam parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SHARK_DeviceParam parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SHARK_DeviceParam parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_DeviceParam parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_DeviceParam parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SHARK_DeviceParamOrBuilder extends MessageOrBuilder {
        int getActivate();

        ByteString getBleName();

        int getBtAudio();

        SHARK_ChannelInfo getCh();

        SHARK_ChannelInfoOrBuilder getChOrBuilder();

        int getCharge();

        ByteString getDeviceName();

        SHARK_SWITCH getFullInquiry();

        SHARK_SWITCH getIsAllPublic();

        int getPwsaveMode();

        SHARK_DeviceParam.SHARK_DEV_UERR getResult();

        SHARK_SWITCH getShareLoc();

        SHARK_SWITCH getTimeDisplay();

        int getTimeStamp();

        int getVerHw();

        int getVerSoft();

        int getVersion();

        SHARK_SWITCH getVoiceAlert();

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

        boolean hasTimeDisplay();

        boolean hasTimeStamp();

        boolean hasVerHw();

        boolean hasVerSoft();

        boolean hasVersion();

        boolean hasVoiceAlert();
    }

    /* loaded from: classes2.dex */
    public static final class SHARK_LocationInfo extends GeneratedMessage implements SHARK_LocationInfoOrBuilder {
        public static final int ALTITUDE_FIELD_NUMBER = 8;
        public static final int CTLSYNC_FIELD_NUMBER = 2;
        public static final int LATITUDE_FIELD_NUMBER = 7;
        public static final int LONGITUDE_FIELD_NUMBER = 6;
        public static Parser<SHARK_LocationInfo> PARSER = new a();
        public static final int RXCSS_FIELD_NUMBER = 10;
        public static final int TIMESYNC_FIELD_NUMBER = 9;
        public static final int USERFREQ_FIELD_NUMBER = 5;
        public static final int USERID_FIELD_NUMBER = 3;
        public static final int USERNAME_FIELD_NUMBER = 4;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SHARK_LocationInfo defaultInstance;
        private int altitude_;
        private int bitField0_;
        private SHARK_SWITCH ctlsync_;
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
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SHARK_LocationInfoOrBuilder {
            private int altitude_;
            private int bitField0_;
            private SHARK_SWITCH ctlsync_;
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
                return SharkProtos.k;
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
                this.ctlsync_ = SHARK_SWITCH.SHARK_OFF;
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
                this.userName_ = SHARK_LocationInfo.getDefaultInstance().getUserName();
                onChanged();
                return this;
            }

            public Builder clearVersion() {
                this.bitField0_ &= -2;
                this.version_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public int getAltitude() {
                return this.altitude_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public SHARK_SWITCH getCtlsync() {
                return this.ctlsync_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SharkProtos.k;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public int getLatitude() {
                return this.latitude_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public int getLongitude() {
                return this.longitude_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public int getRxCss() {
                return this.rxCss_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public int getTimeSync() {
                return this.timeSync_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public int getUserFreq() {
                return this.userFreq_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public int getUserId() {
                return this.userId_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public ByteString getUserName() {
                return this.userName_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public boolean hasAltitude() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public boolean hasCtlsync() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public boolean hasLatitude() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public boolean hasLongitude() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public boolean hasRxCss() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public boolean hasTimeSync() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public boolean hasUserFreq() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public boolean hasUserId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public boolean hasUserName() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.l.ensureFieldAccessorsInitialized(SHARK_LocationInfo.class, Builder.class);
            }

            public Builder setAltitude(int i) {
                this.bitField0_ |= 128;
                this.altitude_ = i;
                onChanged();
                return this;
            }

            public Builder setCtlsync(SHARK_SWITCH shark_switch) {
                if (shark_switch != null) {
                    this.bitField0_ |= 2;
                    this.ctlsync_ = shark_switch;
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
                this.ctlsync_ = SHARK_SWITCH.SHARK_OFF;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_LocationInfo build() {
                SHARK_LocationInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_LocationInfo buildPartial() {
                SHARK_LocationInfo sHARK_LocationInfo = new SHARK_LocationInfo(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sHARK_LocationInfo.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_LocationInfo.ctlsync_ = this.ctlsync_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sHARK_LocationInfo.userId_ = this.userId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sHARK_LocationInfo.userName_ = this.userName_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sHARK_LocationInfo.userFreq_ = this.userFreq_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                sHARK_LocationInfo.longitude_ = this.longitude_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                sHARK_LocationInfo.latitude_ = this.latitude_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                sHARK_LocationInfo.altitude_ = this.altitude_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                sHARK_LocationInfo.timeSync_ = this.timeSync_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                sHARK_LocationInfo.rxCss_ = this.rxCss_;
                sHARK_LocationInfo.bitField0_ = i2;
                onBuilt();
                return sHARK_LocationInfo;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SHARK_LocationInfo getDefaultInstanceForType() {
                return SHARK_LocationInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.ctlsync_ = SHARK_SWITCH.SHARK_OFF;
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
                this.ctlsync_ = SHARK_SWITCH.SHARK_OFF;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SHARK_LocationInfo> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SHARK_LocationInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SHARK_LocationInfo.newBuilder();
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
            SHARK_LocationInfo sHARK_LocationInfo = new SHARK_LocationInfo(true);
            defaultInstance = sHARK_LocationInfo;
            sHARK_LocationInfo.initFields();
        }

        /* synthetic */ SHARK_LocationInfo(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SHARK_LocationInfo getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SharkProtos.k;
        }

        private void initFields() {
            this.version_ = 0;
            this.ctlsync_ = SHARK_SWITCH.SHARK_OFF;
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

        public static SHARK_LocationInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_LocationInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public int getAltitude() {
            return this.altitude_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public SHARK_SWITCH getCtlsync() {
            return this.ctlsync_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public int getLatitude() {
            return this.latitude_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public int getLongitude() {
            return this.longitude_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SHARK_LocationInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public int getRxCss() {
            return this.rxCss_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public int getTimeSync() {
            return this.timeSync_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public int getUserFreq() {
            return this.userFreq_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public int getUserId() {
            return this.userId_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public ByteString getUserName() {
            return this.userName_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public boolean hasAltitude() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public boolean hasCtlsync() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public boolean hasLatitude() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public boolean hasLongitude() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public boolean hasRxCss() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public boolean hasTimeSync() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public boolean hasUserFreq() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public boolean hasUserId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public boolean hasUserName() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfoOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.l.ensureFieldAccessorsInitialized(SHARK_LocationInfo.class, Builder.class);
        }

        private SHARK_LocationInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SHARK_LocationInfo sHARK_LocationInfo) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_LocationInfo);
        }

        public static SHARK_LocationInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_LocationInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_LocationInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SHARK_LocationInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SHARK_LocationInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_LocationInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SHARK_LocationInfo parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SHARK_LocationInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_LocationInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_LocationInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SHARK_LocationInfoOrBuilder extends MessageOrBuilder {
        int getAltitude();

        SHARK_SWITCH getCtlsync();

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
    public enum SHARK_SWITCH implements ProtocolMessageEnum {
        SHARK_OFF(0, 1),
        SHARK_ON(1, 2);
        
        public static final int SHARK_OFF_VALUE = 1;
        public static final int SHARK_ON_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<SHARK_SWITCH> internalValueMap = new a();
        private static final SHARK_SWITCH[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements Internal.EnumLiteMap<SHARK_SWITCH> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            public SHARK_SWITCH findValueByNumber(int i) {
                return SHARK_SWITCH.valueOf(i);
            }
        }

        SHARK_SWITCH(int i, int i2) {
            this.index = i;
            this.value = i2;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return SharkProtos.u().getEnumTypes().get(1);
        }

        public static Internal.EnumLiteMap<SHARK_SWITCH> internalGetValueMap() {
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

        public static SHARK_SWITCH valueOf(int i) {
            if (i == 1) {
                return SHARK_OFF;
            }
            if (i != 2) {
                return null;
            }
            return SHARK_ON;
        }

        public static SHARK_SWITCH valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public static final class SHARK_UpGradeFilePack extends GeneratedMessage implements SHARK_UpGradeFilePackOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int OFFSET_FIELD_NUMBER = 1;
        public static Parser<SHARK_UpGradeFilePack> PARSER = new a();
        public static final int XOR_FIELD_NUMBER = 3;
        private static final SHARK_UpGradeFilePack defaultInstance;
        private int bitField0_;
        private ByteString data_;
        private int offset_;
        private final UnknownFieldSet unknownFields;
        private int xor_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SHARK_UpGradeFilePackOrBuilder {
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
                return SharkProtos.q;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearData() {
                this.bitField0_ &= -3;
                this.data_ = SHARK_UpGradeFilePack.getDefaultInstance().getData();
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

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePackOrBuilder
            public ByteString getData() {
                return this.data_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SharkProtos.q;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePackOrBuilder
            public int getOffset() {
                return this.offset_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePackOrBuilder
            public int getXor() {
                return this.xor_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePackOrBuilder
            public boolean hasData() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePackOrBuilder
            public boolean hasOffset() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePackOrBuilder
            public boolean hasXor() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.r.ensureFieldAccessorsInitialized(SHARK_UpGradeFilePack.class, Builder.class);
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
            public SHARK_UpGradeFilePack build() {
                SHARK_UpGradeFilePack buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_UpGradeFilePack buildPartial() {
                SHARK_UpGradeFilePack sHARK_UpGradeFilePack = new SHARK_UpGradeFilePack(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sHARK_UpGradeFilePack.offset_ = this.offset_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_UpGradeFilePack.data_ = this.data_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sHARK_UpGradeFilePack.xor_ = this.xor_;
                sHARK_UpGradeFilePack.bitField0_ = i2;
                onBuilt();
                return sHARK_UpGradeFilePack;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SHARK_UpGradeFilePack getDefaultInstanceForType() {
                return SHARK_UpGradeFilePack.getDefaultInstance();
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
        static class a extends AbstractParser<SHARK_UpGradeFilePack> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SHARK_UpGradeFilePack parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SHARK_UpGradeFilePack.newBuilder();
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
            SHARK_UpGradeFilePack sHARK_UpGradeFilePack = new SHARK_UpGradeFilePack(true);
            defaultInstance = sHARK_UpGradeFilePack;
            sHARK_UpGradeFilePack.initFields();
        }

        /* synthetic */ SHARK_UpGradeFilePack(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SHARK_UpGradeFilePack getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SharkProtos.q;
        }

        private void initFields() {
            this.offset_ = 0;
            this.data_ = ByteString.EMPTY;
            this.xor_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SHARK_UpGradeFilePack parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_UpGradeFilePack parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePackOrBuilder
        public ByteString getData() {
            return this.data_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePackOrBuilder
        public int getOffset() {
            return this.offset_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SHARK_UpGradeFilePack> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePackOrBuilder
        public int getXor() {
            return this.xor_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePackOrBuilder
        public boolean hasData() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePackOrBuilder
        public boolean hasOffset() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePackOrBuilder
        public boolean hasXor() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.r.ensureFieldAccessorsInitialized(SHARK_UpGradeFilePack.class, Builder.class);
        }

        private SHARK_UpGradeFilePack(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SHARK_UpGradeFilePack sHARK_UpGradeFilePack) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_UpGradeFilePack);
        }

        public static SHARK_UpGradeFilePack parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UpGradeFilePack parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_UpGradeFilePack parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SHARK_UpGradeFilePack getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SHARK_UpGradeFilePack(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_UpGradeFilePack parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SHARK_UpGradeFilePack parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SHARK_UpGradeFilePack parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UpGradeFilePack parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_UpGradeFilePack parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SHARK_UpGradeFilePackOrBuilder extends MessageOrBuilder {
        ByteString getData();

        int getOffset();

        int getXor();

        boolean hasData();

        boolean hasOffset();

        boolean hasXor();
    }

    /* loaded from: classes2.dex */
    public static final class SHARK_UpGradeFileRequest extends GeneratedMessage implements SHARK_UpGradeFileRequestOrBuilder {
        public static final int FCMD_FIELD_NUMBER = 2;
        public static final int FCRC32_FIELD_NUMBER = 5;
        public static final int FSIZE_FIELD_NUMBER = 4;
        public static final int FTYPE_FIELD_NUMBER = 3;
        public static Parser<SHARK_UpGradeFileRequest> PARSER = new a();
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SHARK_UpGradeFileRequest defaultInstance;
        private int bitField0_;
        private SHARK_FILECMD fCmd_;
        private int fCrc32_;
        private int fSize_;
        private SHARK_FILETYPE fType_;
        private final UnknownFieldSet unknownFields;
        private int version_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SHARK_UpGradeFileRequestOrBuilder {
            private int bitField0_;
            private SHARK_FILECMD fCmd_;
            private int fCrc32_;
            private int fSize_;
            private SHARK_FILETYPE fType_;
            private int version_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SharkProtos.m;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearFCmd() {
                this.bitField0_ &= -3;
                this.fCmd_ = SHARK_FILECMD.SHARK_UP_START;
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
                this.fType_ = SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE;
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
                return SharkProtos.m;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
            public SHARK_FILECMD getFCmd() {
                return this.fCmd_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
            public int getFCrc32() {
                return this.fCrc32_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
            public int getFSize() {
                return this.fSize_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
            public SHARK_FILETYPE getFType() {
                return this.fType_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
            public int getVersion() {
                return this.version_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
            public boolean hasFCmd() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
            public boolean hasFCrc32() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
            public boolean hasFSize() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
            public boolean hasFType() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
            public boolean hasVersion() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.n.ensureFieldAccessorsInitialized(SHARK_UpGradeFileRequest.class, Builder.class);
            }

            public Builder setFCmd(SHARK_FILECMD shark_filecmd) {
                if (shark_filecmd != null) {
                    this.bitField0_ |= 2;
                    this.fCmd_ = shark_filecmd;
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

            public Builder setFType(SHARK_FILETYPE shark_filetype) {
                if (shark_filetype != null) {
                    this.bitField0_ |= 4;
                    this.fType_ = shark_filetype;
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
                this.fCmd_ = SHARK_FILECMD.SHARK_UP_START;
                this.fType_ = SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_UpGradeFileRequest build() {
                SHARK_UpGradeFileRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_UpGradeFileRequest buildPartial() {
                SHARK_UpGradeFileRequest sHARK_UpGradeFileRequest = new SHARK_UpGradeFileRequest(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sHARK_UpGradeFileRequest.version_ = this.version_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_UpGradeFileRequest.fCmd_ = this.fCmd_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sHARK_UpGradeFileRequest.fType_ = this.fType_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sHARK_UpGradeFileRequest.fSize_ = this.fSize_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sHARK_UpGradeFileRequest.fCrc32_ = this.fCrc32_;
                sHARK_UpGradeFileRequest.bitField0_ = i2;
                onBuilt();
                return sHARK_UpGradeFileRequest;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SHARK_UpGradeFileRequest getDefaultInstanceForType() {
                return SHARK_UpGradeFileRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.version_ = 0;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.fCmd_ = SHARK_FILECMD.SHARK_UP_START;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.fType_ = SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE;
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
                this.fCmd_ = SHARK_FILECMD.SHARK_UP_START;
                this.fType_ = SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        public enum SHARK_FILECMD implements ProtocolMessageEnum {
            SHARK_UP_START(0, 1),
            SHARK_UP_COMPLE(1, 2),
            SHARK_UP_REBOOT(2, 3);
            
            public static final int SHARK_UP_COMPLE_VALUE = 2;
            public static final int SHARK_UP_REBOOT_VALUE = 3;
            public static final int SHARK_UP_START_VALUE = 1;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SHARK_FILECMD> internalValueMap = new a();
            private static final SHARK_FILECMD[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SHARK_FILECMD> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SHARK_FILECMD findValueByNumber(int i) {
                    return SHARK_FILECMD.valueOf(i);
                }
            }

            SHARK_FILECMD(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SHARK_UpGradeFileRequest.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SHARK_FILECMD> internalGetValueMap() {
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

            public static SHARK_FILECMD valueOf(int i) {
                if (i == 1) {
                    return SHARK_UP_START;
                }
                if (i == 2) {
                    return SHARK_UP_COMPLE;
                }
                if (i != 3) {
                    return null;
                }
                return SHARK_UP_REBOOT;
            }

            public static SHARK_FILECMD valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        public enum SHARK_FILETYPE implements ProtocolMessageEnum {
            SHARK_APP_UPGRADE_FILE(0, 1),
            SHARK_MCU_UPLOAD_FILE(1, 2);
            
            public static final int SHARK_APP_UPGRADE_FILE_VALUE = 1;
            public static final int SHARK_MCU_UPLOAD_FILE_VALUE = 2;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SHARK_FILETYPE> internalValueMap = new a();
            private static final SHARK_FILETYPE[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SHARK_FILETYPE> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SHARK_FILETYPE findValueByNumber(int i) {
                    return SHARK_FILETYPE.valueOf(i);
                }
            }

            SHARK_FILETYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SHARK_UpGradeFileRequest.getDescriptor().getEnumTypes().get(1);
            }

            public static Internal.EnumLiteMap<SHARK_FILETYPE> internalGetValueMap() {
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

            public static SHARK_FILETYPE valueOf(int i) {
                if (i == 1) {
                    return SHARK_APP_UPGRADE_FILE;
                }
                if (i != 2) {
                    return null;
                }
                return SHARK_MCU_UPLOAD_FILE;
            }

            public static SHARK_FILETYPE valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SHARK_UpGradeFileRequest> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SHARK_UpGradeFileRequest parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SHARK_UpGradeFileRequest.newBuilder();
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
            SHARK_UpGradeFileRequest sHARK_UpGradeFileRequest = new SHARK_UpGradeFileRequest(true);
            defaultInstance = sHARK_UpGradeFileRequest;
            sHARK_UpGradeFileRequest.initFields();
        }

        /* synthetic */ SHARK_UpGradeFileRequest(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SHARK_UpGradeFileRequest getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SharkProtos.m;
        }

        private void initFields() {
            this.version_ = 0;
            this.fCmd_ = SHARK_FILECMD.SHARK_UP_START;
            this.fType_ = SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE;
            this.fSize_ = 0;
            this.fCrc32_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SHARK_UpGradeFileRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_UpGradeFileRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
        public SHARK_FILECMD getFCmd() {
            return this.fCmd_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
        public int getFCrc32() {
            return this.fCrc32_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
        public int getFSize() {
            return this.fSize_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
        public SHARK_FILETYPE getFType() {
            return this.fType_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SHARK_UpGradeFileRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
        public int getVersion() {
            return this.version_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
        public boolean hasFCmd() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
        public boolean hasFCrc32() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
        public boolean hasFSize() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
        public boolean hasFType() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequestOrBuilder
        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.n.ensureFieldAccessorsInitialized(SHARK_UpGradeFileRequest.class, Builder.class);
        }

        private SHARK_UpGradeFileRequest(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SHARK_UpGradeFileRequest sHARK_UpGradeFileRequest) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_UpGradeFileRequest);
        }

        public static SHARK_UpGradeFileRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SHARK_UpGradeFileRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SHARK_UpGradeFileRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_UpGradeFileRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SHARK_UpGradeFileRequest parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SHARK_UpGradeFileRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_UpGradeFileRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SHARK_UpGradeFileRequestOrBuilder extends MessageOrBuilder {
        SHARK_UpGradeFileRequest.SHARK_FILECMD getFCmd();

        int getFCrc32();

        int getFSize();

        SHARK_UpGradeFileRequest.SHARK_FILETYPE getFType();

        int getVersion();

        boolean hasFCmd();

        boolean hasFCrc32();

        boolean hasFSize();

        boolean hasFType();

        boolean hasVersion();
    }

    /* loaded from: classes2.dex */
    public static final class SHARK_UpGradeFileResponse extends GeneratedMessage implements SHARK_UpGradeFileResponseOrBuilder {
        public static final int OFFSET_FIELD_NUMBER = 2;
        public static Parser<SHARK_UpGradeFileResponse> PARSER = new a();
        public static final int RESULT_FIELD_NUMBER = 1;
        private static final SHARK_UpGradeFileResponse defaultInstance;
        private int bitField0_;
        private int offset_;
        private SHARK_UP_UERR result_;
        private final UnknownFieldSet unknownFields;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SHARK_UpGradeFileResponseOrBuilder {
            private int bitField0_;
            private int offset_;
            private SHARK_UP_UERR result_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SharkProtos.o;
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
                this.result_ = SHARK_UP_UERR.SHARK_UP_RESULT_OK;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SharkProtos.o;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileResponseOrBuilder
            public int getOffset() {
                return this.offset_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileResponseOrBuilder
            public SHARK_UP_UERR getResult() {
                return this.result_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileResponseOrBuilder
            public boolean hasOffset() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileResponseOrBuilder
            public boolean hasResult() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.p.ensureFieldAccessorsInitialized(SHARK_UpGradeFileResponse.class, Builder.class);
            }

            public Builder setOffset(int i) {
                this.bitField0_ |= 2;
                this.offset_ = i;
                onChanged();
                return this;
            }

            public Builder setResult(SHARK_UP_UERR shark_up_uerr) {
                if (shark_up_uerr != null) {
                    this.bitField0_ |= 1;
                    this.result_ = shark_up_uerr;
                    onChanged();
                    return this;
                }
                throw null;
            }

            private Builder() {
                this.result_ = SHARK_UP_UERR.SHARK_UP_RESULT_OK;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_UpGradeFileResponse build() {
                SHARK_UpGradeFileResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_UpGradeFileResponse buildPartial() {
                SHARK_UpGradeFileResponse sHARK_UpGradeFileResponse = new SHARK_UpGradeFileResponse(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sHARK_UpGradeFileResponse.result_ = this.result_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_UpGradeFileResponse.offset_ = this.offset_;
                sHARK_UpGradeFileResponse.bitField0_ = i2;
                onBuilt();
                return sHARK_UpGradeFileResponse;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SHARK_UpGradeFileResponse getDefaultInstanceForType() {
                return SHARK_UpGradeFileResponse.getDefaultInstance();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SHARK_UP_UERR.SHARK_UP_RESULT_OK;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.result_ = SHARK_UP_UERR.SHARK_UP_RESULT_OK;
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
        public enum SHARK_UP_UERR implements ProtocolMessageEnum {
            SHARK_UP_RESULT_OK(0, 1),
            SHARK_UP_RESULT_ERROR(1, 2),
            SHARK_UP_RESULT_LOW_POWER(2, 3);
            
            public static final int SHARK_UP_RESULT_ERROR_VALUE = 2;
            public static final int SHARK_UP_RESULT_LOW_POWER_VALUE = 3;
            public static final int SHARK_UP_RESULT_OK_VALUE = 1;
            private final int index;
            private final int value;
            private static Internal.EnumLiteMap<SHARK_UP_UERR> internalValueMap = new a();
            private static final SHARK_UP_UERR[] VALUES = values();

            /* loaded from: classes2.dex */
            static class a implements Internal.EnumLiteMap<SHARK_UP_UERR> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                public SHARK_UP_UERR findValueByNumber(int i) {
                    return SHARK_UP_UERR.valueOf(i);
                }
            }

            SHARK_UP_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return SHARK_UpGradeFileResponse.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<SHARK_UP_UERR> internalGetValueMap() {
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

            public static SHARK_UP_UERR valueOf(int i) {
                if (i == 1) {
                    return SHARK_UP_RESULT_OK;
                }
                if (i == 2) {
                    return SHARK_UP_RESULT_ERROR;
                }
                if (i != 3) {
                    return null;
                }
                return SHARK_UP_RESULT_LOW_POWER;
            }

            public static SHARK_UP_UERR valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SHARK_UpGradeFileResponse> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SHARK_UpGradeFileResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SHARK_UpGradeFileResponse.newBuilder();
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
            SHARK_UpGradeFileResponse sHARK_UpGradeFileResponse = new SHARK_UpGradeFileResponse(true);
            defaultInstance = sHARK_UpGradeFileResponse;
            sHARK_UpGradeFileResponse.initFields();
        }

        /* synthetic */ SHARK_UpGradeFileResponse(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SHARK_UpGradeFileResponse getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SharkProtos.o;
        }

        private void initFields() {
            this.result_ = SHARK_UP_UERR.SHARK_UP_RESULT_OK;
            this.offset_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SHARK_UpGradeFileResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_UpGradeFileResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileResponseOrBuilder
        public int getOffset() {
            return this.offset_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SHARK_UpGradeFileResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileResponseOrBuilder
        public SHARK_UP_UERR getResult() {
            return this.result_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileResponseOrBuilder
        public boolean hasOffset() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileResponseOrBuilder
        public boolean hasResult() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.p.ensureFieldAccessorsInitialized(SHARK_UpGradeFileResponse.class, Builder.class);
        }

        private SHARK_UpGradeFileResponse(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SHARK_UpGradeFileResponse sHARK_UpGradeFileResponse) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_UpGradeFileResponse);
        }

        public static SHARK_UpGradeFileResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SHARK_UpGradeFileResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SHARK_UpGradeFileResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_UpGradeFileResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SHARK_UpGradeFileResponse parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SHARK_UpGradeFileResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_UpGradeFileResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SHARK_UpGradeFileResponseOrBuilder extends MessageOrBuilder {
        int getOffset();

        SHARK_UpGradeFileResponse.SHARK_UP_UERR getResult();

        boolean hasOffset();

        boolean hasResult();
    }

    /* loaded from: classes2.dex */
    public static final class SHARK_UserActionStatistics extends GeneratedMessage implements SHARK_UserActionStatisticsOrBuilder {
        public static final int AZIMUTHMAP_FIELD_NUMBER = 2;
        public static final int BLUETOOTHDEVICE_FIELD_NUMBER = 5;
        public static final int BUSYLOCK_FIELD_NUMBER = 11;
        public static final int CHANNELSCAN_FIELD_NUMBER = 7;
        public static final int DOUBLEFREQ_FIELD_NUMBER = 8;
        public static final int FMRADIO_FIELD_NUMBER = 3;
        public static final int HANDSFREE_FIELD_NUMBER = 6;
        public static Parser<SHARK_UserActionStatistics> PARSER = new a();
        public static final int POWERLEVEL_FIELD_NUMBER = 10;
        public static final int POWERON_FIELD_NUMBER = 1;
        public static final int QUICKTEAM_FIELD_NUMBER = 4;
        public static final int RESTOREFACTORY_FIELD_NUMBER = 14;
        public static final int SOSMODE_FIELD_NUMBER = 9;
        public static final int SQUELCHTAIL_FIELD_NUMBER = 12;
        public static final int WIDENARROW_FIELD_NUMBER = 13;
        private static final SHARK_UserActionStatistics defaultInstance;
        private int azimuthMap_;
        private int bitField0_;
        private int bluetoothDevice_;
        private int busyLock_;
        private int channelScan_;
        private int doubleFreq_;
        private int fmRadio_;
        private int handsFree_;
        private int powerLevel_;
        private int powerOn_;
        private int quickTeam_;
        private int restoreFactory_;
        private int sosMode_;
        private int squelchTail_;
        private final UnknownFieldSet unknownFields;
        private int wideNarrow_;

        /* loaded from: classes2.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements SHARK_UserActionStatisticsOrBuilder {
            private int azimuthMap_;
            private int bitField0_;
            private int bluetoothDevice_;
            private int busyLock_;
            private int channelScan_;
            private int doubleFreq_;
            private int fmRadio_;
            private int handsFree_;
            private int powerLevel_;
            private int powerOn_;
            private int quickTeam_;
            private int restoreFactory_;
            private int sosMode_;
            private int squelchTail_;
            private int wideNarrow_;

            /* synthetic */ Builder(GeneratedMessage.BuilderParent builderParent, a aVar) {
                this(builderParent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SharkProtos.s;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            public Builder clearAzimuthMap() {
                this.bitField0_ &= -3;
                this.azimuthMap_ = 0;
                onChanged();
                return this;
            }

            public Builder clearBluetoothDevice() {
                this.bitField0_ &= -17;
                this.bluetoothDevice_ = 0;
                onChanged();
                return this;
            }

            public Builder clearBusyLock() {
                this.bitField0_ &= -1025;
                this.busyLock_ = 0;
                onChanged();
                return this;
            }

            public Builder clearChannelScan() {
                this.bitField0_ &= -65;
                this.channelScan_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDoubleFreq() {
                this.bitField0_ &= -129;
                this.doubleFreq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearFmRadio() {
                this.bitField0_ &= -5;
                this.fmRadio_ = 0;
                onChanged();
                return this;
            }

            public Builder clearHandsFree() {
                this.bitField0_ &= -33;
                this.handsFree_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPowerLevel() {
                this.bitField0_ &= -513;
                this.powerLevel_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPowerOn() {
                this.bitField0_ &= -2;
                this.powerOn_ = 0;
                onChanged();
                return this;
            }

            public Builder clearQuickTeam() {
                this.bitField0_ &= -9;
                this.quickTeam_ = 0;
                onChanged();
                return this;
            }

            public Builder clearRestoreFactory() {
                this.bitField0_ &= -8193;
                this.restoreFactory_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSosMode() {
                this.bitField0_ &= -257;
                this.sosMode_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSquelchTail() {
                this.bitField0_ &= -2049;
                this.squelchTail_ = 0;
                onChanged();
                return this;
            }

            public Builder clearWideNarrow() {
                this.bitField0_ &= -4097;
                this.wideNarrow_ = 0;
                onChanged();
                return this;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getAzimuthMap() {
                return this.azimuthMap_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getBluetoothDevice() {
                return this.bluetoothDevice_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getBusyLock() {
                return this.busyLock_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getChannelScan() {
                return this.channelScan_;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SharkProtos.s;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getDoubleFreq() {
                return this.doubleFreq_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getFmRadio() {
                return this.fmRadio_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getHandsFree() {
                return this.handsFree_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getPowerLevel() {
                return this.powerLevel_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getPowerOn() {
                return this.powerOn_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getQuickTeam() {
                return this.quickTeam_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getRestoreFactory() {
                return this.restoreFactory_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getSosMode() {
                return this.sosMode_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getSquelchTail() {
                return this.squelchTail_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public int getWideNarrow() {
                return this.wideNarrow_;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasAzimuthMap() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasBluetoothDevice() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasBusyLock() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasChannelScan() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasDoubleFreq() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasFmRadio() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasHandsFree() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasPowerLevel() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasPowerOn() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasQuickTeam() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasRestoreFactory() {
                return (this.bitField0_ & 8192) == 8192;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasSosMode() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasSquelchTail() {
                return (this.bitField0_ & 2048) == 2048;
            }

            @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
            public boolean hasWideNarrow() {
                return (this.bitField0_ & 4096) == 4096;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.t.ensureFieldAccessorsInitialized(SHARK_UserActionStatistics.class, Builder.class);
            }

            public Builder setAzimuthMap(int i) {
                this.bitField0_ |= 2;
                this.azimuthMap_ = i;
                onChanged();
                return this;
            }

            public Builder setBluetoothDevice(int i) {
                this.bitField0_ |= 16;
                this.bluetoothDevice_ = i;
                onChanged();
                return this;
            }

            public Builder setBusyLock(int i) {
                this.bitField0_ |= 1024;
                this.busyLock_ = i;
                onChanged();
                return this;
            }

            public Builder setChannelScan(int i) {
                this.bitField0_ |= 64;
                this.channelScan_ = i;
                onChanged();
                return this;
            }

            public Builder setDoubleFreq(int i) {
                this.bitField0_ |= 128;
                this.doubleFreq_ = i;
                onChanged();
                return this;
            }

            public Builder setFmRadio(int i) {
                this.bitField0_ |= 4;
                this.fmRadio_ = i;
                onChanged();
                return this;
            }

            public Builder setHandsFree(int i) {
                this.bitField0_ |= 32;
                this.handsFree_ = i;
                onChanged();
                return this;
            }

            public Builder setPowerLevel(int i) {
                this.bitField0_ |= 512;
                this.powerLevel_ = i;
                onChanged();
                return this;
            }

            public Builder setPowerOn(int i) {
                this.bitField0_ |= 1;
                this.powerOn_ = i;
                onChanged();
                return this;
            }

            public Builder setQuickTeam(int i) {
                this.bitField0_ |= 8;
                this.quickTeam_ = i;
                onChanged();
                return this;
            }

            public Builder setRestoreFactory(int i) {
                this.bitField0_ |= 8192;
                this.restoreFactory_ = i;
                onChanged();
                return this;
            }

            public Builder setSosMode(int i) {
                this.bitField0_ |= 256;
                this.sosMode_ = i;
                onChanged();
                return this;
            }

            public Builder setSquelchTail(int i) {
                this.bitField0_ |= 2048;
                this.squelchTail_ = i;
                onChanged();
                return this;
            }

            public Builder setWideNarrow(int i) {
                this.bitField0_ |= 4096;
                this.wideNarrow_ = i;
                onChanged();
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_UserActionStatistics build() {
                SHARK_UserActionStatistics buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public SHARK_UserActionStatistics buildPartial() {
                SHARK_UserActionStatistics sHARK_UserActionStatistics = new SHARK_UserActionStatistics(this, null);
                int i = this.bitField0_;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                sHARK_UserActionStatistics.powerOn_ = this.powerOn_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_UserActionStatistics.azimuthMap_ = this.azimuthMap_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                sHARK_UserActionStatistics.fmRadio_ = this.fmRadio_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                sHARK_UserActionStatistics.quickTeam_ = this.quickTeam_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                sHARK_UserActionStatistics.bluetoothDevice_ = this.bluetoothDevice_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                sHARK_UserActionStatistics.handsFree_ = this.handsFree_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                sHARK_UserActionStatistics.channelScan_ = this.channelScan_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                sHARK_UserActionStatistics.doubleFreq_ = this.doubleFreq_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                sHARK_UserActionStatistics.sosMode_ = this.sosMode_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                sHARK_UserActionStatistics.powerLevel_ = this.powerLevel_;
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                sHARK_UserActionStatistics.busyLock_ = this.busyLock_;
                if ((i & 2048) == 2048) {
                    i2 |= 2048;
                }
                sHARK_UserActionStatistics.squelchTail_ = this.squelchTail_;
                if ((i & 4096) == 4096) {
                    i2 |= 4096;
                }
                sHARK_UserActionStatistics.wideNarrow_ = this.wideNarrow_;
                if ((i & 8192) == 8192) {
                    i2 |= 8192;
                }
                sHARK_UserActionStatistics.restoreFactory_ = this.restoreFactory_;
                sHARK_UserActionStatistics.bitField0_ = i2;
                onBuilt();
                return sHARK_UserActionStatistics;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public SHARK_UserActionStatistics getDefaultInstanceForType() {
                return SHARK_UserActionStatistics.getDefaultInstance();
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
                this.azimuthMap_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.fmRadio_ = 0;
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.quickTeam_ = 0;
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.bluetoothDevice_ = 0;
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.handsFree_ = 0;
                int i6 = i5 & (-33);
                this.bitField0_ = i6;
                this.channelScan_ = 0;
                int i7 = i6 & (-65);
                this.bitField0_ = i7;
                this.doubleFreq_ = 0;
                int i8 = i7 & (-129);
                this.bitField0_ = i8;
                this.sosMode_ = 0;
                int i9 = i8 & (-257);
                this.bitField0_ = i9;
                this.powerLevel_ = 0;
                int i10 = i9 & (-513);
                this.bitField0_ = i10;
                this.busyLock_ = 0;
                int i11 = i10 & (-1025);
                this.bitField0_ = i11;
                this.squelchTail_ = 0;
                int i12 = i11 & (-2049);
                this.bitField0_ = i12;
                this.wideNarrow_ = 0;
                int i13 = i12 & (-4097);
                this.bitField0_ = i13;
                this.restoreFactory_ = 0;
                this.bitField0_ = i13 & (-8193);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }
        }

        /* loaded from: classes2.dex */
        static class a extends AbstractParser<SHARK_UserActionStatistics> {
            a() {
            }

            @Override // com.google.protobuf.Parser
            public SHARK_UserActionStatistics parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                Builder newBuilder = SHARK_UserActionStatistics.newBuilder();
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
            SHARK_UserActionStatistics sHARK_UserActionStatistics = new SHARK_UserActionStatistics(true);
            defaultInstance = sHARK_UserActionStatistics;
            sHARK_UserActionStatistics.initFields();
        }

        /* synthetic */ SHARK_UserActionStatistics(GeneratedMessage.Builder builder, a aVar) {
            this(builder);
        }

        public static SHARK_UserActionStatistics getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SharkProtos.s;
        }

        private void initFields() {
            this.powerOn_ = 0;
            this.azimuthMap_ = 0;
            this.fmRadio_ = 0;
            this.quickTeam_ = 0;
            this.bluetoothDevice_ = 0;
            this.handsFree_ = 0;
            this.channelScan_ = 0;
            this.doubleFreq_ = 0;
            this.sosMode_ = 0;
            this.powerLevel_ = 0;
            this.busyLock_ = 0;
            this.squelchTail_ = 0;
            this.wideNarrow_ = 0;
            this.restoreFactory_ = 0;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static SHARK_UserActionStatistics parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_UserActionStatistics parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getAzimuthMap() {
            return this.azimuthMap_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getBluetoothDevice() {
            return this.bluetoothDevice_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getBusyLock() {
            return this.busyLock_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getChannelScan() {
            return this.channelScan_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getDoubleFreq() {
            return this.doubleFreq_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getFmRadio() {
            return this.fmRadio_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getHandsFree() {
            return this.handsFree_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<SHARK_UserActionStatistics> getParserForType() {
            return PARSER;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getPowerLevel() {
            return this.powerLevel_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getPowerOn() {
            return this.powerOn_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getQuickTeam() {
            return this.quickTeam_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getRestoreFactory() {
            return this.restoreFactory_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getSosMode() {
            return this.sosMode_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getSquelchTail() {
            return this.squelchTail_;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public int getWideNarrow() {
            return this.wideNarrow_;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasAzimuthMap() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasBluetoothDevice() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasBusyLock() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasChannelScan() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasDoubleFreq() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasFmRadio() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasHandsFree() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasPowerLevel() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasPowerOn() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasQuickTeam() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasRestoreFactory() {
            return (this.bitField0_ & 8192) == 8192;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasSosMode() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasSquelchTail() {
            return (this.bitField0_ & 2048) == 2048;
        }

        @Override // com.ifengyu.intercom.protos.SharkProtos.SHARK_UserActionStatisticsOrBuilder
        public boolean hasWideNarrow() {
            return (this.bitField0_ & 4096) == 4096;
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.t.ensureFieldAccessorsInitialized(SHARK_UserActionStatistics.class, Builder.class);
        }

        private SHARK_UserActionStatistics(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        public static Builder newBuilder(SHARK_UserActionStatistics sHARK_UserActionStatistics) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_UserActionStatistics);
        }

        public static SHARK_UserActionStatistics parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UserActionStatistics parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_UserActionStatistics parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public SHARK_UserActionStatistics getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        private SHARK_UserActionStatistics(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_UserActionStatistics parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static SHARK_UserActionStatistics parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent, null);
        }

        public static SHARK_UserActionStatistics parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UserActionStatistics parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_UserActionStatistics parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes2.dex */
    public interface SHARK_UserActionStatisticsOrBuilder extends MessageOrBuilder {
        int getAzimuthMap();

        int getBluetoothDevice();

        int getBusyLock();

        int getChannelScan();

        int getDoubleFreq();

        int getFmRadio();

        int getHandsFree();

        int getPowerLevel();

        int getPowerOn();

        int getQuickTeam();

        int getRestoreFactory();

        int getSosMode();

        int getSquelchTail();

        int getWideNarrow();

        boolean hasAzimuthMap();

        boolean hasBluetoothDevice();

        boolean hasBusyLock();

        boolean hasChannelScan();

        boolean hasDoubleFreq();

        boolean hasFmRadio();

        boolean hasHandsFree();

        boolean hasPowerLevel();

        boolean hasPowerOn();

        boolean hasQuickTeam();

        boolean hasRestoreFactory();

        boolean hasSosMode();

        boolean hasSquelchTail();

        boolean hasWideNarrow();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = SharkProtos.u = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u000bshark.proto\u0012\u0006protos\"æ\u0002\n\rSHARK_Connect\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012(\n\bconnCode\u0018\u0002 \u0002(\u000e2\u0016.protos.SHARK_CONNCODE\u0012\u0010\n\bdeviceId\u0018\u0003 \u0001(\r\u0012\u0012\n\ndeviceType\u0018\u0004 \u0001(\r\u00124\n\u0007appMode\u0018\u0005 \u0001(\u000e2#.protos.SHARK_Connect.SHARK_APPTYPE\u0012:\n\blanguage\u0018\u0006 \u0001(\u000e2(.protos.SHARK_Connect.SHARK_LANGUAGETYPE\u0012\r\n\u0005btmac\u0018\u0007 \u0001(\f\"7\n\rSHARK_APPTYPE\u0012\u0011\n\rSHARK_OWN_APP\u0010\u0000\u0012\u0013\n\u000fSHARK_MIJIA_APP\u0010\u0001\":\n\u0012SHARK_LANGUAGETYPE\u0012\u0011\n\rSHARK_CHINESE\u0010\u0000\u0012\u0011\n\rSHARK_ENGLISH\u0010\u0001\"\u0091\u0003\n\u0011SHARK_Channel", "Info\u0012\r\n\u0005ch_no\u0018\u0001 \u0001(\r\u00127\n\u0007ch_type\u0018\u0002 \u0001(\u000e2&.protos.SHARK_ChannelInfo.SHARK_CHTYPE\u0012\u0012\n\nch_txPower\u0018\u0003 \u0001(\r\u0012\u0011\n\tch_rxFreq\u0018\u0004 \u0001(\r\u0012\u0011\n\tch_txFreq\u0018\u0005 \u0001(\r\u0012\u000f\n\u0007ch_name\u0018\u0006 \u0001(\f\u0012\r\n\u0005ch_sq\u0018\u0007 \u0001(\r\u0012\u000e\n\u0006ch_vox\u0018\b \u0001(\r\u0012\u0010\n\bch_rxCss\u0018\t \u0001(\r\u0012\u0010\n\bch_txCss\u0018\n \u0001(\r\u0012%\n\u0007ch_elim\u0018\u000b \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012\u000f\n\u0007ch_band\u0018\f \u0001(\r\u0012'\n\tch_polite\u0018\r \u0001(\u000e2\u0014.protos.SHARK_SWITCH\"E\n\fSHARK_CHTYPE\u0012\u0010\n\fSHARK_PUBLIC\u0010\u0000\u0012\u0010\n\fSHARK_REMOTE\u0010\u0001\u0012\u0011\n\rSHARK_USERDEF\u0010\u0002\"ú\u0004\n\u0011SHARK_Dev", "iceParam\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u00128\n\u0006result\u0018\u0002 \u0001(\u000e2(.protos.SHARK_DeviceParam.SHARK_DEV_UERR\u0012)\n\u000bfullInquiry\u0018\u0003 \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012\r\n\u0005verHw\u0018\u0004 \u0001(\r\u0012\u000f\n\u0007verSoft\u0018\u0005 \u0001(\r\u0012\u0012\n\ndeviceName\u0018\u0006 \u0001(\f\u0012\u000f\n\u0007bleName\u0018\u0007 \u0001(\f\u0012\u000e\n\u0006charge\u0018\b \u0001(\r\u0012\u0010\n\bactivate\u0018\t \u0001(\r\u0012&\n\bshareLoc\u0018\n \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012\u000f\n\u0007btAudio\u0018\u000b \u0001(\r\u0012%\n\u0002ch\u0018\f \u0001(\u000b2\u0019.protos.SHARK_ChannelInfo\u0012(\n\nvoiceAlert\u0018\r \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012)\n\u000bisAllPublic\u0018\u000e \u0001(\u000e2\u0014.protos.SH", "ARK_SWITCH\u0012\u0012\n\npwsaveMode\u0018\u000f \u0001(\r\u0012\u0011\n\ttimeStamp\u0018\u001e \u0001(\r\u0012)\n\u000btimeDisplay\u0018\u001f \u0001(\u000e2\u0014.protos.SHARK_SWITCH\"\u0080\u0001\n\u000eSHARK_DEV_UERR\u0012\u0018\n\u0014SHARK_PARAM_QUERY_OK\u0010\u0001\u0012\u001b\n\u0017SHARK_PARAM_QUERY_ERROR\u0010\u0002\u0012\u0019\n\u0015SHARK_PARAM_UPDATE_OK\u0010\u0003\u0012\u001c\n\u0018SHARK_PARAM_UPDATE_ERROR\u0010\u0004\"\u0098\u0005\n\u0019SHARK_ChannelStateOperate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012?\n\u0006result\u0018\u0002 \u0001(\u000e2/.protos.SHARK_ChannelStateOperate.SHARK_ST_UERR\u0012@\n\u0006option\u0018\u0003 \u0001(\u000e20.protos.SHARK_ChannelStateOperate.SHARK_STOPTIO", "N\u0012@\n\ndeviceMode\u0018\u0004 \u0001(\u000e2,.protos.SHARK_ChannelStateOperate.SHARK_MODE\u0012\u0011\n\tstateMode\u0018\u0005 \u0001(\r\u0012&\n\u0003ch1\u0018\u0006 \u0001(\u000b2\u0019.protos.SHARK_ChannelInfo\u0012&\n\u0003ch2\u0018\u0007 \u0001(\u000b2\u0019.protos.SHARK_ChannelInfo\u0012\u0013\n\u000bcurrentChId\u0018\b \u0001(\r\"^\n\rSHARK_ST_UERR\u0012\u000f\n\u000bSHARK_ST_OK\u0010\u0000\u0012\u0012\n\u000eSHARK_ST_ERROR\u0010\u0001\u0012\u0012\n\u000eSHARK_ST_EMPTY\u0010\u0002\u0012\u0014\n\u0010SHARK_ST_FORBIDE\u0010\u0003\"9\n\u000eSHARK_STOPTION\u0012\u0013\n\u000fSHARK_ST_UPDATE\u0010\u0000\u0012\u0012\n\u000eSHARK_ST_QUERY\u0010\u0001\"\u0091\u0001\n\nSHARK_MODE\u0012\u0015\n\u0011SHARK_MODE_NORMAL\u0010\u0000\u0012\u000f\n\u000bSHARK_SOS_T\u0010\u0001\u0012\u000f\n", "\u000bSHARK_SOS_R\u0010\u0002\u0012\u0011\n\rSHARK_SCAN_CH\u0010\u0003\u0012\u0013\n\u000fSHARK_SCAN_FREQ\u0010\u0004\u0012\u0010\n\fSHARK_TEAM_M\u0010\u0005\u0012\u0010\n\fSHARK_TEAM_S\u0010\u0006\"Ñ\u0003\n\u0018SHARK_ChannelInfoOperate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012>\n\u0006result\u0018\u0002 \u0001(\u000e2..protos.SHARK_ChannelInfoOperate.SHARK_CH_UERR\u0012?\n\u0006option\u0018\u0003 \u0001(\u000e2/.protos.SHARK_ChannelInfoOperate.SHARK_CHOPTION\u0012%\n\u0002ch\u0018\u0004 \u0001(\u000b2\u0019.protos.SHARK_ChannelInfo\"\u0096\u0001\n\rSHARK_CH_UERR\u0012\u000f\n\u000bSHARK_CH_OK\u0010\u0000\u0012\u0012\n\u000eSHARK_CH_ERROR\u0010\u0001\u0012\u0012\n\u000eSHARK_CH_EMPTY\u0010\u0002\u0012\u0014\n\u0010SHARK_CH_FORBIDE\u0010", "\u0003\u0012\u001b\n\u0017SHARK_CH_QUERY_CONTINUE\u0010\u0004\u0012\u0019\n\u0015SHARK_CH_QUERY_FINISH\u0010\u0005\"c\n\u000eSHARK_CHOPTION\u0012\u0013\n\u000fSHARK_CH_INSERT\u0010\u0000\u0012\u0013\n\u000fSHARK_CH_DELETE\u0010\u0001\u0012\u0013\n\u000fSHARK_CH_MODIFY\u0010\u0002\u0012\u0012\n\u000eSHARK_CH_QUERY\u0010\u0003\"Ø\u0001\n\u0012SHARK_LocationInfo\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012%\n\u0007ctlsync\u0018\u0002 \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\r\u0012\u0010\n\buserName\u0018\u0004 \u0001(\f\u0012\u0010\n\buserFreq\u0018\u0005 \u0001(\r\u0012\u0011\n\tlongitude\u0018\u0006 \u0001(\u0011\u0012\u0010\n\blatitude\u0018\u0007 \u0001(\u0011\u0012\u0010\n\baltitude\u0018\b \u0001(\u0011\u0012\u0010\n\btimeSync\u0018\t \u0001(\r\u0012\r\n\u0005rxCss\u0018\n \u0001(\r\"à\u0002\n\u0018SHARK_UpGradeFileR", "equest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012<\n\u0004fCmd\u0018\u0002 \u0002(\u000e2..protos.SHARK_UpGradeFileRequest.SHARK_FILECMD\u0012>\n\u0005fType\u0018\u0003 \u0002(\u000e2/.protos.SHARK_UpGradeFileRequest.SHARK_FILETYPE\u0012\r\n\u0005fSize\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006fCrc32\u0018\u0005 \u0001(\r\"M\n\rSHARK_FILECMD\u0012\u0012\n\u000eSHARK_UP_START\u0010\u0001\u0012\u0013\n\u000fSHARK_UP_COMPLE\u0010\u0002\u0012\u0013\n\u000fSHARK_UP_REBOOT\u0010\u0003\"G\n\u000eSHARK_FILETYPE\u0012\u001a\n\u0016SHARK_APP_UPGRADE_FILE\u0010\u0001\u0012\u0019\n\u0015SHARK_MCU_UPLOAD_FILE\u0010\u0002\"Ï\u0001\n\u0019SHARK_UpGradeFileResponse\u0012?\n\u0006result\u0018\u0001 \u0002(\u000e2/.protos.SHARK_UpGrad", "eFileResponse.SHARK_UP_UERR\u0012\u000e\n\u0006offset\u0018\u0002 \u0001(\r\"a\n\rSHARK_UP_UERR\u0012\u0016\n\u0012SHARK_UP_RESULT_OK\u0010\u0001\u0012\u0019\n\u0015SHARK_UP_RESULT_ERROR\u0010\u0002\u0012\u001d\n\u0019SHARK_UP_RESULT_LOW_POWER\u0010\u0003\"B\n\u0015SHARK_UpGradeFilePack\u0012\u000e\n\u0006offset\u0018\u0001 \u0002(\r\u0012\f\n\u0004data\u0018\u0002 \u0002(\f\u0012\u000b\n\u0003xor\u0018\u0003 \u0002(\r\"²\u0002\n\u001aSHARK_UserActionStatistics\u0012\u000f\n\u0007powerOn\u0018\u0001 \u0001(\r\u0012\u0012\n\nazimuthMap\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007fmRadio\u0018\u0003 \u0001(\r\u0012\u0011\n\tquickTeam\u0018\u0004 \u0001(\r\u0012\u0017\n\u000fbluetoothDevice\u0018\u0005 \u0001(\r\u0012\u0011\n\thandsFree\u0018\u0006 \u0001(\r\u0012\u0013\n\u000bchannelScan\u0018\u0007 \u0001(\r\u0012\u0012\n\ndoubleFreq\u0018\b \u0001(\r\u0012", "\u000f\n\u0007sosMode\u0018\t \u0001(\r\u0012\u0012\n\npowerLevel\u0018\n \u0001(\r\u0012\u0010\n\bbusyLock\u0018\u000b \u0001(\r\u0012\u0013\n\u000bsquelchTail\u0018\f \u0001(\r\u0012\u0012\n\nwideNarrow\u0018\r \u0001(\r\u0012\u0016\n\u000erestoreFactory\u0018\u000e \u0001(\r*ç\u0001\n\u000eSHARK_CONNCODE\u0012\u0014\n\u0010SHARK_DISCONNECT\u0010\u0000\u0012\u0011\n\rSHARK_CONNECT\u0010\u0001\u0012\u000f\n\u000bSHARK_ALLOW\u0010\u0004\u0012\u0010\n\fSHARK_REFUSE\u0010\u0005\u0012\u000e\n\nSHARK_WAIT\u0010\u0006\u0012\u0012\n\u000eSHARK_LOWPOWER\u0010\u0007\u0012\u0013\n\u000fSHARK_DIS_ALLOW\u0010\b\u0012\u0014\n\u0010SHARK_DIS_REFUSE\u0010\t\u0012\u0012\n\u000eSHARK_DIS_WAIT\u0010\n\u0012\u0016\n\u0012SHARK_DIS_LOWPOWER\u0010\u000b\u0012\u000e\n\nSHARK_BUSY\u0010\f*+\n\fSHARK_SWITCH\u0012\r\n\tSHARK_OFF\u0010\u0001\u0012\f\n\bSHARK_ON\u0010\u0002B,", "\n\u001bcom.ifengyu.intercom.protosB\u000bSharkProtosH\u0002"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = u().getMessageTypes().get(0);
        f5982a = descriptor;
        f5983b = new GeneratedMessage.FieldAccessorTable(descriptor, new String[]{"Version", "ConnCode", "DeviceId", "DeviceType", "AppMode", "Language", "Btmac"});
        Descriptors.Descriptor descriptor2 = u().getMessageTypes().get(1);
        f5984c = descriptor2;
        d = new GeneratedMessage.FieldAccessorTable(descriptor2, new String[]{"ChNo", "ChType", "ChTxPower", "ChRxFreq", "ChTxFreq", "ChName", "ChSq", "ChVox", "ChRxCss", "ChTxCss", "ChElim", "ChBand", "ChPolite"});
        Descriptors.Descriptor descriptor3 = u().getMessageTypes().get(2);
        e = descriptor3;
        f = new GeneratedMessage.FieldAccessorTable(descriptor3, new String[]{"Version", "Result", "FullInquiry", "VerHw", "VerSoft", "DeviceName", "BleName", "Charge", "Activate", "ShareLoc", "BtAudio", "Ch", "VoiceAlert", "IsAllPublic", "PwsaveMode", "TimeStamp", "TimeDisplay"});
        Descriptors.Descriptor descriptor4 = u().getMessageTypes().get(3);
        g = descriptor4;
        h = new GeneratedMessage.FieldAccessorTable(descriptor4, new String[]{"Version", "Result", "Option", "DeviceMode", "StateMode", "Ch1", "Ch2", "CurrentChId"});
        Descriptors.Descriptor descriptor5 = u().getMessageTypes().get(4);
        i = descriptor5;
        j = new GeneratedMessage.FieldAccessorTable(descriptor5, new String[]{"Version", "Result", "Option", "Ch"});
        Descriptors.Descriptor descriptor6 = u().getMessageTypes().get(5);
        k = descriptor6;
        l = new GeneratedMessage.FieldAccessorTable(descriptor6, new String[]{"Version", "Ctlsync", "UserId", "UserName", "UserFreq", "Longitude", "Latitude", "Altitude", "TimeSync", "RxCss"});
        Descriptors.Descriptor descriptor7 = u().getMessageTypes().get(6);
        m = descriptor7;
        n = new GeneratedMessage.FieldAccessorTable(descriptor7, new String[]{"Version", "FCmd", "FType", "FSize", "FCrc32"});
        Descriptors.Descriptor descriptor8 = u().getMessageTypes().get(7);
        o = descriptor8;
        p = new GeneratedMessage.FieldAccessorTable(descriptor8, new String[]{"Result", "Offset"});
        Descriptors.Descriptor descriptor9 = u().getMessageTypes().get(8);
        q = descriptor9;
        r = new GeneratedMessage.FieldAccessorTable(descriptor9, new String[]{"Offset", "Data", "Xor"});
        Descriptors.Descriptor descriptor10 = u().getMessageTypes().get(9);
        s = descriptor10;
        t = new GeneratedMessage.FieldAccessorTable(descriptor10, new String[]{"PowerOn", "AzimuthMap", "FmRadio", "QuickTeam", "BluetoothDevice", "HandsFree", "ChannelScan", "DoubleFreq", "SosMode", "PowerLevel", "BusyLock", "SquelchTail", "WideNarrow", "RestoreFactory"});
    }

    public static Descriptors.FileDescriptor u() {
        return u;
    }
}
