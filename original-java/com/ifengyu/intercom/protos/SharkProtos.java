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

public final class SharkProtos {
    /* access modifiers changed from: private */
    public static final Descriptor a = ((Descriptor) a().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable b = new FieldAccessorTable(a, new String[]{"Version", "ConnCode", "DeviceId", "DeviceType", "AppMode", "Language", "Btmac"});
    /* access modifiers changed from: private */
    public static final Descriptor c = ((Descriptor) a().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable d = new FieldAccessorTable(c, new String[]{"ChNo", "ChType", "ChTxPower", "ChRxFreq", "ChTxFreq", "ChName", "ChSq", "ChVox", "ChRxCss", "ChTxCss", "ChElim", "ChBand", "ChPolite"});
    /* access modifiers changed from: private */
    public static final Descriptor e = ((Descriptor) a().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable f = new FieldAccessorTable(e, new String[]{"Version", "Result", "FullInquiry", "VerHw", "VerSoft", "DeviceName", "BleName", "Charge", "Activate", "ShareLoc", "BtAudio", "Ch", "VoiceAlert", "IsAllPublic", "PwsaveMode", "TimeStamp", "TimeDisplay"});
    /* access modifiers changed from: private */
    public static final Descriptor g = ((Descriptor) a().getMessageTypes().get(3));
    /* access modifiers changed from: private */
    public static FieldAccessorTable h = new FieldAccessorTable(g, new String[]{"Version", "Result", "Option", "DeviceMode", "StateMode", "Ch1", "Ch2", "CurrentChId"});
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
    public static FieldAccessorTable t = new FieldAccessorTable(s, new String[]{"PowerOn", "AzimuthMap", "FmRadio", "QuickTeam", "BluetoothDevice", "HandsFree", "ChannelScan", "DoubleFreq", "SosMode", "PowerLevel", "BusyLock", "SquelchTail", "WideNarrow", "RestoreFactory"});
    /* access modifiers changed from: private */
    public static FileDescriptor u;

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
        private static final SHARK_CONNCODE[] VALUES = null;
        private static EnumLiteMap<SHARK_CONNCODE> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<SHARK_CONNCODE>() {
                /* renamed from: a */
                public SHARK_CONNCODE findValueByNumber(int i) {
                    return SHARK_CONNCODE.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static SHARK_CONNCODE valueOf(int i) {
            switch (i) {
                case 0:
                    return SHARK_DISCONNECT;
                case 1:
                    return SHARK_CONNECT;
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

        public static EnumLiteMap<SHARK_CONNCODE> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) SharkProtos.a().getEnumTypes().get(0);
        }

        public static SHARK_CONNCODE valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private SHARK_CONNCODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

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
        public static Parser<SHARK_ChannelInfo> PARSER = new AbstractParser<SHARK_ChannelInfo>() {
            /* renamed from: a */
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
        };
        private static final SHARK_ChannelInfo defaultInstance = new SHARK_ChannelInfo(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int chBand_;
        /* access modifiers changed from: private */
        public SHARK_SWITCH chElim_;
        /* access modifiers changed from: private */
        public ByteString chName_;
        /* access modifiers changed from: private */
        public int chNo_;
        /* access modifiers changed from: private */
        public SHARK_SWITCH chPolite_;
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
        public SHARK_CHTYPE chType_;
        /* access modifiers changed from: private */
        public int chVox_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SHARK_ChannelInfoOrBuilder {
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

            public static final Descriptor getDescriptor() {
                return SharkProtos.c;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.d.ensureFieldAccessorsInitialized(SHARK_ChannelInfo.class, Builder.class);
            }

            private Builder() {
                this.chType_ = SHARK_CHTYPE.SHARK_PUBLIC;
                this.chName_ = ByteString.EMPTY;
                this.chElim_ = SHARK_SWITCH.SHARK_OFF;
                this.chPolite_ = SHARK_SWITCH.SHARK_OFF;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.chType_ = SHARK_CHTYPE.SHARK_PUBLIC;
                this.chName_ = ByteString.EMPTY;
                this.chElim_ = SHARK_SWITCH.SHARK_OFF;
                this.chPolite_ = SHARK_SWITCH.SHARK_OFF;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SHARK_ChannelInfo.alwaysUseFieldBuilders) {
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
                this.chType_ = SHARK_CHTYPE.SHARK_PUBLIC;
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
                this.chElim_ = SHARK_SWITCH.SHARK_OFF;
                this.bitField0_ &= -1025;
                this.chBand_ = 0;
                this.bitField0_ &= -2049;
                this.chPolite_ = SHARK_SWITCH.SHARK_OFF;
                this.bitField0_ &= -4097;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SharkProtos.c;
            }

            public SHARK_ChannelInfo getDefaultInstanceForType() {
                return SHARK_ChannelInfo.getDefaultInstance();
            }

            public SHARK_ChannelInfo build() {
                SHARK_ChannelInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SHARK_ChannelInfo buildPartial() {
                int i = 1;
                SHARK_ChannelInfo sHARK_ChannelInfo = new SHARK_ChannelInfo(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sHARK_ChannelInfo.chNo_ = this.chNo_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sHARK_ChannelInfo.chType_ = this.chType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sHARK_ChannelInfo.chTxPower_ = this.chTxPower_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sHARK_ChannelInfo.chRxFreq_ = this.chRxFreq_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sHARK_ChannelInfo.chTxFreq_ = this.chTxFreq_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sHARK_ChannelInfo.chName_ = this.chName_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sHARK_ChannelInfo.chSq_ = this.chSq_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                sHARK_ChannelInfo.chVox_ = this.chVox_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                sHARK_ChannelInfo.chRxCss_ = this.chRxCss_;
                if ((i2 & 512) == 512) {
                    i |= 512;
                }
                sHARK_ChannelInfo.chTxCss_ = this.chTxCss_;
                if ((i2 & 1024) == 1024) {
                    i |= 1024;
                }
                sHARK_ChannelInfo.chElim_ = this.chElim_;
                if ((i2 & 2048) == 2048) {
                    i |= 2048;
                }
                sHARK_ChannelInfo.chBand_ = this.chBand_;
                if ((i2 & 4096) == 4096) {
                    i |= 4096;
                }
                sHARK_ChannelInfo.chPolite_ = this.chPolite_;
                sHARK_ChannelInfo.bitField0_ = i;
                onBuilt();
                return sHARK_ChannelInfo;
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

            public SHARK_CHTYPE getChType() {
                return this.chType_;
            }

            public Builder setChType(SHARK_CHTYPE shark_chtype) {
                if (shark_chtype == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.chType_ = shark_chtype;
                onChanged();
                return this;
            }

            public Builder clearChType() {
                this.bitField0_ &= -3;
                this.chType_ = SHARK_CHTYPE.SHARK_PUBLIC;
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
                this.chName_ = SHARK_ChannelInfo.getDefaultInstance().getChName();
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

            public SHARK_SWITCH getChElim() {
                return this.chElim_;
            }

            public Builder setChElim(SHARK_SWITCH shark_switch) {
                if (shark_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1024;
                this.chElim_ = shark_switch;
                onChanged();
                return this;
            }

            public Builder clearChElim() {
                this.bitField0_ &= -1025;
                this.chElim_ = SHARK_SWITCH.SHARK_OFF;
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

            public SHARK_SWITCH getChPolite() {
                return this.chPolite_;
            }

            public Builder setChPolite(SHARK_SWITCH shark_switch) {
                if (shark_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4096;
                this.chPolite_ = shark_switch;
                onChanged();
                return this;
            }

            public Builder clearChPolite() {
                this.bitField0_ &= -4097;
                this.chPolite_ = SHARK_SWITCH.SHARK_OFF;
                onChanged();
                return this;
            }
        }

        public enum SHARK_CHTYPE implements ProtocolMessageEnum {
            SHARK_PUBLIC(0, 0),
            SHARK_REMOTE(1, 1),
            SHARK_USERDEF(2, 2);
            
            public static final int SHARK_PUBLIC_VALUE = 0;
            public static final int SHARK_REMOTE_VALUE = 1;
            public static final int SHARK_USERDEF_VALUE = 2;
            private static final SHARK_CHTYPE[] VALUES = null;
            private static EnumLiteMap<SHARK_CHTYPE> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SHARK_CHTYPE>() {
                    /* renamed from: a */
                    public SHARK_CHTYPE findValueByNumber(int i) {
                        return SHARK_CHTYPE.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SHARK_CHTYPE valueOf(int i) {
                switch (i) {
                    case 0:
                        return SHARK_PUBLIC;
                    case 1:
                        return SHARK_REMOTE;
                    case 2:
                        return SHARK_USERDEF;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SHARK_CHTYPE> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SHARK_ChannelInfo.getDescriptor().getEnumTypes().get(0);
            }

            public static SHARK_CHTYPE valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SHARK_CHTYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SHARK_ChannelInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SHARK_ChannelInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_ChannelInfo getDefaultInstance() {
            return defaultInstance;
        }

        public SHARK_ChannelInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SharkProtos.c;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.d.ensureFieldAccessorsInitialized(SHARK_ChannelInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SHARK_ChannelInfo> getParserForType() {
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

        public SHARK_CHTYPE getChType() {
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

        public SHARK_SWITCH getChElim() {
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

        public SHARK_SWITCH getChPolite() {
            return this.chPolite_;
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
            this.chElim_ = SHARK_SWITCH.SHARK_OFF;
            this.chBand_ = 0;
            this.chPolite_ = SHARK_SWITCH.SHARK_OFF;
        }

        public static SHARK_ChannelInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SHARK_ChannelInfo) PARSER.parseFrom(byteString);
        }

        public static SHARK_ChannelInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_ChannelInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_ChannelInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SHARK_ChannelInfo) PARSER.parseFrom(bArr);
        }

        public static SHARK_ChannelInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_ChannelInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SHARK_ChannelInfo parseFrom(InputStream inputStream) throws IOException {
            return (SHARK_ChannelInfo) PARSER.parseFrom(inputStream);
        }

        public static SHARK_ChannelInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_ChannelInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_ChannelInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SHARK_ChannelInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_ChannelInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_ChannelInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_ChannelInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SHARK_ChannelInfo) PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_ChannelInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_ChannelInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SHARK_ChannelInfo sHARK_ChannelInfo) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_ChannelInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public static final class SHARK_ChannelInfoOperate extends GeneratedMessage implements SHARK_ChannelInfoOperateOrBuilder {
        public static final int CH_FIELD_NUMBER = 4;
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<SHARK_ChannelInfoOperate> PARSER = new AbstractParser<SHARK_ChannelInfoOperate>() {
            /* renamed from: a */
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
        };
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SHARK_ChannelInfoOperate defaultInstance = new SHARK_ChannelInfoOperate(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public SHARK_ChannelInfo ch_;
        /* access modifiers changed from: private */
        public SHARK_CHOPTION option_;
        /* access modifiers changed from: private */
        public SHARK_CH_UERR result_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SHARK_ChannelInfoOperateOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SHARK_ChannelInfo, Builder, SHARK_ChannelInfoOrBuilder> chBuilder_;
            private SHARK_ChannelInfo ch_;
            private SHARK_CHOPTION option_;
            private SHARK_CH_UERR result_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return SharkProtos.i;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.j.ensureFieldAccessorsInitialized(SHARK_ChannelInfoOperate.class, Builder.class);
            }

            private Builder() {
                this.result_ = SHARK_CH_UERR.SHARK_CH_OK;
                this.option_ = SHARK_CHOPTION.SHARK_CH_INSERT;
                this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SHARK_CH_UERR.SHARK_CH_OK;
                this.option_ = SHARK_CHOPTION.SHARK_CH_INSERT;
                this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SHARK_ChannelInfoOperate.alwaysUseFieldBuilders) {
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
                this.result_ = SHARK_CH_UERR.SHARK_CH_OK;
                this.bitField0_ &= -3;
                this.option_ = SHARK_CHOPTION.SHARK_CH_INSERT;
                this.bitField0_ &= -5;
                if (this.chBuilder_ == null) {
                    this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
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
                return SharkProtos.i;
            }

            public SHARK_ChannelInfoOperate getDefaultInstanceForType() {
                return SHARK_ChannelInfoOperate.getDefaultInstance();
            }

            public SHARK_ChannelInfoOperate build() {
                SHARK_ChannelInfoOperate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SHARK_ChannelInfoOperate buildPartial() {
                int i;
                int i2 = 1;
                SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate = new SHARK_ChannelInfoOperate(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                sHARK_ChannelInfoOperate.version_ = this.version_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_ChannelInfoOperate.result_ = this.result_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                sHARK_ChannelInfoOperate.option_ = this.option_;
                if ((i3 & 8) == 8) {
                    i = i2 | 8;
                } else {
                    i = i2;
                }
                if (this.chBuilder_ == null) {
                    sHARK_ChannelInfoOperate.ch_ = this.ch_;
                } else {
                    sHARK_ChannelInfoOperate.ch_ = (SHARK_ChannelInfo) this.chBuilder_.build();
                }
                sHARK_ChannelInfoOperate.bitField0_ = i;
                onBuilt();
                return sHARK_ChannelInfoOperate;
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

            public SHARK_CH_UERR getResult() {
                return this.result_;
            }

            public Builder setResult(SHARK_CH_UERR shark_ch_uerr) {
                if (shark_ch_uerr == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.result_ = shark_ch_uerr;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SHARK_CH_UERR.SHARK_CH_OK;
                onChanged();
                return this;
            }

            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            public SHARK_CHOPTION getOption() {
                return this.option_;
            }

            public Builder setOption(SHARK_CHOPTION shark_choption) {
                if (shark_choption == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.option_ = shark_choption;
                onChanged();
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = SHARK_CHOPTION.SHARK_CH_INSERT;
                onChanged();
                return this;
            }

            public boolean hasCh() {
                return (this.bitField0_ & 8) == 8;
            }

            public SHARK_ChannelInfo getCh() {
                if (this.chBuilder_ == null) {
                    return this.ch_;
                }
                return (SHARK_ChannelInfo) this.chBuilder_.getMessage();
            }

            public Builder setCh(SHARK_ChannelInfo sHARK_ChannelInfo) {
                if (this.chBuilder_ != null) {
                    this.chBuilder_.setMessage(sHARK_ChannelInfo);
                } else if (sHARK_ChannelInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.ch_ = sHARK_ChannelInfo;
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

            public Builder mergeCh(SHARK_ChannelInfo sHARK_ChannelInfo) {
                if (this.chBuilder_ == null) {
                    if ((this.bitField0_ & 8) != 8 || this.ch_ == SHARK_ChannelInfo.getDefaultInstance()) {
                        this.ch_ = sHARK_ChannelInfo;
                    } else {
                        this.ch_ = ((Builder) SHARK_ChannelInfo.newBuilder(this.ch_).mergeFrom((Message) sHARK_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.chBuilder_.mergeFrom(sHARK_ChannelInfo);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder clearCh() {
                if (this.chBuilder_ == null) {
                    this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
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

            public SHARK_ChannelInfoOrBuilder getChOrBuilder() {
                if (this.chBuilder_ != null) {
                    return (SHARK_ChannelInfoOrBuilder) this.chBuilder_.getMessageOrBuilder();
                }
                return this.ch_;
            }

            private SingleFieldBuilder<SHARK_ChannelInfo, Builder, SHARK_ChannelInfoOrBuilder> getChFieldBuilder() {
                if (this.chBuilder_ == null) {
                    this.chBuilder_ = new SingleFieldBuilder<>(getCh(), getParentForChildren(), isClean());
                    this.ch_ = null;
                }
                return this.chBuilder_;
            }
        }

        public enum SHARK_CHOPTION implements ProtocolMessageEnum {
            SHARK_CH_INSERT(0, 0),
            SHARK_CH_DELETE(1, 1),
            SHARK_CH_MODIFY(2, 2),
            SHARK_CH_QUERY(3, 3);
            
            public static final int SHARK_CH_DELETE_VALUE = 1;
            public static final int SHARK_CH_INSERT_VALUE = 0;
            public static final int SHARK_CH_MODIFY_VALUE = 2;
            public static final int SHARK_CH_QUERY_VALUE = 3;
            private static final SHARK_CHOPTION[] VALUES = null;
            private static EnumLiteMap<SHARK_CHOPTION> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SHARK_CHOPTION>() {
                    /* renamed from: a */
                    public SHARK_CHOPTION findValueByNumber(int i) {
                        return SHARK_CHOPTION.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SHARK_CHOPTION valueOf(int i) {
                switch (i) {
                    case 0:
                        return SHARK_CH_INSERT;
                    case 1:
                        return SHARK_CH_DELETE;
                    case 2:
                        return SHARK_CH_MODIFY;
                    case 3:
                        return SHARK_CH_QUERY;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SHARK_CHOPTION> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SHARK_ChannelInfoOperate.getDescriptor().getEnumTypes().get(1);
            }

            public static SHARK_CHOPTION valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SHARK_CHOPTION(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

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
            private static final SHARK_CH_UERR[] VALUES = null;
            private static EnumLiteMap<SHARK_CH_UERR> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SHARK_CH_UERR>() {
                    /* renamed from: a */
                    public SHARK_CH_UERR findValueByNumber(int i) {
                        return SHARK_CH_UERR.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SHARK_CH_UERR valueOf(int i) {
                switch (i) {
                    case 0:
                        return SHARK_CH_OK;
                    case 1:
                        return SHARK_CH_ERROR;
                    case 2:
                        return SHARK_CH_EMPTY;
                    case 3:
                        return SHARK_CH_FORBIDE;
                    case 4:
                        return SHARK_CH_QUERY_CONTINUE;
                    case 5:
                        return SHARK_CH_QUERY_FINISH;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SHARK_CH_UERR> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SHARK_ChannelInfoOperate.getDescriptor().getEnumTypes().get(0);
            }

            public static SHARK_CH_UERR valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SHARK_CH_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SHARK_ChannelInfoOperate(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SHARK_ChannelInfoOperate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_ChannelInfoOperate getDefaultInstance() {
            return defaultInstance;
        }

        public SHARK_ChannelInfoOperate getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SharkProtos.i;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.j.ensureFieldAccessorsInitialized(SHARK_ChannelInfoOperate.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SHARK_ChannelInfoOperate> getParserForType() {
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

        public SHARK_CH_UERR getResult() {
            return this.result_;
        }

        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        public SHARK_CHOPTION getOption() {
            return this.option_;
        }

        public boolean hasCh() {
            return (this.bitField0_ & 8) == 8;
        }

        public SHARK_ChannelInfo getCh() {
            return this.ch_;
        }

        public SHARK_ChannelInfoOrBuilder getChOrBuilder() {
            return this.ch_;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SHARK_CH_UERR.SHARK_CH_OK;
            this.option_ = SHARK_CHOPTION.SHARK_CH_INSERT;
            this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
        }

        public static SHARK_ChannelInfoOperate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SHARK_ChannelInfoOperate) PARSER.parseFrom(byteString);
        }

        public static SHARK_ChannelInfoOperate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_ChannelInfoOperate) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_ChannelInfoOperate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SHARK_ChannelInfoOperate) PARSER.parseFrom(bArr);
        }

        public static SHARK_ChannelInfoOperate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_ChannelInfoOperate) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SHARK_ChannelInfoOperate parseFrom(InputStream inputStream) throws IOException {
            return (SHARK_ChannelInfoOperate) PARSER.parseFrom(inputStream);
        }

        public static SHARK_ChannelInfoOperate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_ChannelInfoOperate) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_ChannelInfoOperate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SHARK_ChannelInfoOperate) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_ChannelInfoOperate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_ChannelInfoOperate) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_ChannelInfoOperate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SHARK_ChannelInfoOperate) PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_ChannelInfoOperate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_ChannelInfoOperate) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_ChannelInfoOperate);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SHARK_ChannelInfoOperateOrBuilder extends MessageOrBuilder {
        SHARK_ChannelInfo getCh();

        SHARK_ChannelInfoOrBuilder getChOrBuilder();

        SHARK_CHOPTION getOption();

        SHARK_CH_UERR getResult();

        int getVersion();

        boolean hasCh();

        boolean hasOption();

        boolean hasResult();

        boolean hasVersion();
    }

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

        SHARK_CHTYPE getChType();

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

    public static final class SHARK_ChannelStateOperate extends GeneratedMessage implements SHARK_ChannelStateOperateOrBuilder {
        public static final int CH1_FIELD_NUMBER = 6;
        public static final int CH2_FIELD_NUMBER = 7;
        public static final int CURRENTCHID_FIELD_NUMBER = 8;
        public static final int DEVICEMODE_FIELD_NUMBER = 4;
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<SHARK_ChannelStateOperate> PARSER = new AbstractParser<SHARK_ChannelStateOperate>() {
            /* renamed from: a */
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
        };
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int STATEMODE_FIELD_NUMBER = 5;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SHARK_ChannelStateOperate defaultInstance = new SHARK_ChannelStateOperate(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public SHARK_ChannelInfo ch1_;
        /* access modifiers changed from: private */
        public SHARK_ChannelInfo ch2_;
        /* access modifiers changed from: private */
        public int currentChId_;
        /* access modifiers changed from: private */
        public SHARK_MODE deviceMode_;
        /* access modifiers changed from: private */
        public SHARK_STOPTION option_;
        /* access modifiers changed from: private */
        public SHARK_ST_UERR result_;
        /* access modifiers changed from: private */
        public int stateMode_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SHARK_ChannelStateOperateOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SHARK_ChannelInfo, Builder, SHARK_ChannelInfoOrBuilder> ch1Builder_;
            private SHARK_ChannelInfo ch1_;
            private SingleFieldBuilder<SHARK_ChannelInfo, Builder, SHARK_ChannelInfoOrBuilder> ch2Builder_;
            private SHARK_ChannelInfo ch2_;
            private int currentChId_;
            private SHARK_MODE deviceMode_;
            private SHARK_STOPTION option_;
            private SHARK_ST_UERR result_;
            private int stateMode_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return SharkProtos.g;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.h.ensureFieldAccessorsInitialized(SHARK_ChannelStateOperate.class, Builder.class);
            }

            private Builder() {
                this.result_ = SHARK_ST_UERR.SHARK_ST_OK;
                this.option_ = SHARK_STOPTION.SHARK_ST_UPDATE;
                this.deviceMode_ = SHARK_MODE.SHARK_MODE_NORMAL;
                this.ch1_ = SHARK_ChannelInfo.getDefaultInstance();
                this.ch2_ = SHARK_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SHARK_ST_UERR.SHARK_ST_OK;
                this.option_ = SHARK_STOPTION.SHARK_ST_UPDATE;
                this.deviceMode_ = SHARK_MODE.SHARK_MODE_NORMAL;
                this.ch1_ = SHARK_ChannelInfo.getDefaultInstance();
                this.ch2_ = SHARK_ChannelInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SHARK_ChannelStateOperate.alwaysUseFieldBuilders) {
                    getCh1FieldBuilder();
                    getCh2FieldBuilder();
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
                this.result_ = SHARK_ST_UERR.SHARK_ST_OK;
                this.bitField0_ &= -3;
                this.option_ = SHARK_STOPTION.SHARK_ST_UPDATE;
                this.bitField0_ &= -5;
                this.deviceMode_ = SHARK_MODE.SHARK_MODE_NORMAL;
                this.bitField0_ &= -9;
                this.stateMode_ = 0;
                this.bitField0_ &= -17;
                if (this.ch1Builder_ == null) {
                    this.ch1_ = SHARK_ChannelInfo.getDefaultInstance();
                } else {
                    this.ch1Builder_.clear();
                }
                this.bitField0_ &= -33;
                if (this.ch2Builder_ == null) {
                    this.ch2_ = SHARK_ChannelInfo.getDefaultInstance();
                } else {
                    this.ch2Builder_.clear();
                }
                this.bitField0_ &= -65;
                this.currentChId_ = 0;
                this.bitField0_ &= -129;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SharkProtos.g;
            }

            public SHARK_ChannelStateOperate getDefaultInstanceForType() {
                return SHARK_ChannelStateOperate.getDefaultInstance();
            }

            public SHARK_ChannelStateOperate build() {
                SHARK_ChannelStateOperate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SHARK_ChannelStateOperate buildPartial() {
                int i;
                int i2 = 1;
                SHARK_ChannelStateOperate sHARK_ChannelStateOperate = new SHARK_ChannelStateOperate(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                sHARK_ChannelStateOperate.version_ = this.version_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_ChannelStateOperate.result_ = this.result_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                sHARK_ChannelStateOperate.option_ = this.option_;
                if ((i3 & 8) == 8) {
                    i2 |= 8;
                }
                sHARK_ChannelStateOperate.deviceMode_ = this.deviceMode_;
                if ((i3 & 16) == 16) {
                    i2 |= 16;
                }
                sHARK_ChannelStateOperate.stateMode_ = this.stateMode_;
                if ((i3 & 32) == 32) {
                    i = i2 | 32;
                } else {
                    i = i2;
                }
                if (this.ch1Builder_ == null) {
                    sHARK_ChannelStateOperate.ch1_ = this.ch1_;
                } else {
                    sHARK_ChannelStateOperate.ch1_ = (SHARK_ChannelInfo) this.ch1Builder_.build();
                }
                if ((i3 & 64) == 64) {
                    i |= 64;
                }
                if (this.ch2Builder_ == null) {
                    sHARK_ChannelStateOperate.ch2_ = this.ch2_;
                } else {
                    sHARK_ChannelStateOperate.ch2_ = (SHARK_ChannelInfo) this.ch2Builder_.build();
                }
                if ((i3 & 128) == 128) {
                    i |= 128;
                }
                sHARK_ChannelStateOperate.currentChId_ = this.currentChId_;
                sHARK_ChannelStateOperate.bitField0_ = i;
                onBuilt();
                return sHARK_ChannelStateOperate;
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

            public SHARK_ST_UERR getResult() {
                return this.result_;
            }

            public Builder setResult(SHARK_ST_UERR shark_st_uerr) {
                if (shark_st_uerr == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.result_ = shark_st_uerr;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SHARK_ST_UERR.SHARK_ST_OK;
                onChanged();
                return this;
            }

            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            public SHARK_STOPTION getOption() {
                return this.option_;
            }

            public Builder setOption(SHARK_STOPTION shark_stoption) {
                if (shark_stoption == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.option_ = shark_stoption;
                onChanged();
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = SHARK_STOPTION.SHARK_ST_UPDATE;
                onChanged();
                return this;
            }

            public boolean hasDeviceMode() {
                return (this.bitField0_ & 8) == 8;
            }

            public SHARK_MODE getDeviceMode() {
                return this.deviceMode_;
            }

            public Builder setDeviceMode(SHARK_MODE shark_mode) {
                if (shark_mode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.deviceMode_ = shark_mode;
                onChanged();
                return this;
            }

            public Builder clearDeviceMode() {
                this.bitField0_ &= -9;
                this.deviceMode_ = SHARK_MODE.SHARK_MODE_NORMAL;
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

            public SHARK_ChannelInfo getCh1() {
                if (this.ch1Builder_ == null) {
                    return this.ch1_;
                }
                return (SHARK_ChannelInfo) this.ch1Builder_.getMessage();
            }

            public Builder setCh1(SHARK_ChannelInfo sHARK_ChannelInfo) {
                if (this.ch1Builder_ != null) {
                    this.ch1Builder_.setMessage(sHARK_ChannelInfo);
                } else if (sHARK_ChannelInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.ch1_ = sHARK_ChannelInfo;
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

            public Builder mergeCh1(SHARK_ChannelInfo sHARK_ChannelInfo) {
                if (this.ch1Builder_ == null) {
                    if ((this.bitField0_ & 32) != 32 || this.ch1_ == SHARK_ChannelInfo.getDefaultInstance()) {
                        this.ch1_ = sHARK_ChannelInfo;
                    } else {
                        this.ch1_ = ((Builder) SHARK_ChannelInfo.newBuilder(this.ch1_).mergeFrom((Message) sHARK_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.ch1Builder_.mergeFrom(sHARK_ChannelInfo);
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder clearCh1() {
                if (this.ch1Builder_ == null) {
                    this.ch1_ = SHARK_ChannelInfo.getDefaultInstance();
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

            public SHARK_ChannelInfoOrBuilder getCh1OrBuilder() {
                if (this.ch1Builder_ != null) {
                    return (SHARK_ChannelInfoOrBuilder) this.ch1Builder_.getMessageOrBuilder();
                }
                return this.ch1_;
            }

            private SingleFieldBuilder<SHARK_ChannelInfo, Builder, SHARK_ChannelInfoOrBuilder> getCh1FieldBuilder() {
                if (this.ch1Builder_ == null) {
                    this.ch1Builder_ = new SingleFieldBuilder<>(getCh1(), getParentForChildren(), isClean());
                    this.ch1_ = null;
                }
                return this.ch1Builder_;
            }

            public boolean hasCh2() {
                return (this.bitField0_ & 64) == 64;
            }

            public SHARK_ChannelInfo getCh2() {
                if (this.ch2Builder_ == null) {
                    return this.ch2_;
                }
                return (SHARK_ChannelInfo) this.ch2Builder_.getMessage();
            }

            public Builder setCh2(SHARK_ChannelInfo sHARK_ChannelInfo) {
                if (this.ch2Builder_ != null) {
                    this.ch2Builder_.setMessage(sHARK_ChannelInfo);
                } else if (sHARK_ChannelInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.ch2_ = sHARK_ChannelInfo;
                    onChanged();
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder setCh2(Builder builder) {
                if (this.ch2Builder_ == null) {
                    this.ch2_ = builder.build();
                    onChanged();
                } else {
                    this.ch2Builder_.setMessage(builder.build());
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder mergeCh2(SHARK_ChannelInfo sHARK_ChannelInfo) {
                if (this.ch2Builder_ == null) {
                    if ((this.bitField0_ & 64) != 64 || this.ch2_ == SHARK_ChannelInfo.getDefaultInstance()) {
                        this.ch2_ = sHARK_ChannelInfo;
                    } else {
                        this.ch2_ = ((Builder) SHARK_ChannelInfo.newBuilder(this.ch2_).mergeFrom((Message) sHARK_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.ch2Builder_.mergeFrom(sHARK_ChannelInfo);
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder clearCh2() {
                if (this.ch2Builder_ == null) {
                    this.ch2_ = SHARK_ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.ch2Builder_.clear();
                }
                this.bitField0_ &= -65;
                return this;
            }

            public Builder getCh2Builder() {
                this.bitField0_ |= 64;
                onChanged();
                return (Builder) getCh2FieldBuilder().getBuilder();
            }

            public SHARK_ChannelInfoOrBuilder getCh2OrBuilder() {
                if (this.ch2Builder_ != null) {
                    return (SHARK_ChannelInfoOrBuilder) this.ch2Builder_.getMessageOrBuilder();
                }
                return this.ch2_;
            }

            private SingleFieldBuilder<SHARK_ChannelInfo, Builder, SHARK_ChannelInfoOrBuilder> getCh2FieldBuilder() {
                if (this.ch2Builder_ == null) {
                    this.ch2Builder_ = new SingleFieldBuilder<>(getCh2(), getParentForChildren(), isClean());
                    this.ch2_ = null;
                }
                return this.ch2Builder_;
            }

            public boolean hasCurrentChId() {
                return (this.bitField0_ & 128) == 128;
            }

            public int getCurrentChId() {
                return this.currentChId_;
            }

            public Builder setCurrentChId(int i) {
                this.bitField0_ |= 128;
                this.currentChId_ = i;
                onChanged();
                return this;
            }

            public Builder clearCurrentChId() {
                this.bitField0_ &= -129;
                this.currentChId_ = 0;
                onChanged();
                return this;
            }
        }

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
            private static final SHARK_MODE[] VALUES = null;
            private static EnumLiteMap<SHARK_MODE> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SHARK_MODE>() {
                    /* renamed from: a */
                    public SHARK_MODE findValueByNumber(int i) {
                        return SHARK_MODE.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
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

            public static EnumLiteMap<SHARK_MODE> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SHARK_ChannelStateOperate.getDescriptor().getEnumTypes().get(2);
            }

            public static SHARK_MODE valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SHARK_MODE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        public enum SHARK_STOPTION implements ProtocolMessageEnum {
            SHARK_ST_UPDATE(0, 0),
            SHARK_ST_QUERY(1, 1);
            
            public static final int SHARK_ST_QUERY_VALUE = 1;
            public static final int SHARK_ST_UPDATE_VALUE = 0;
            private static final SHARK_STOPTION[] VALUES = null;
            private static EnumLiteMap<SHARK_STOPTION> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SHARK_STOPTION>() {
                    /* renamed from: a */
                    public SHARK_STOPTION findValueByNumber(int i) {
                        return SHARK_STOPTION.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SHARK_STOPTION valueOf(int i) {
                switch (i) {
                    case 0:
                        return SHARK_ST_UPDATE;
                    case 1:
                        return SHARK_ST_QUERY;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SHARK_STOPTION> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SHARK_ChannelStateOperate.getDescriptor().getEnumTypes().get(1);
            }

            public static SHARK_STOPTION valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SHARK_STOPTION(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        public enum SHARK_ST_UERR implements ProtocolMessageEnum {
            SHARK_ST_OK(0, 0),
            SHARK_ST_ERROR(1, 1),
            SHARK_ST_EMPTY(2, 2),
            SHARK_ST_FORBIDE(3, 3);
            
            public static final int SHARK_ST_EMPTY_VALUE = 2;
            public static final int SHARK_ST_ERROR_VALUE = 1;
            public static final int SHARK_ST_FORBIDE_VALUE = 3;
            public static final int SHARK_ST_OK_VALUE = 0;
            private static final SHARK_ST_UERR[] VALUES = null;
            private static EnumLiteMap<SHARK_ST_UERR> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SHARK_ST_UERR>() {
                    /* renamed from: a */
                    public SHARK_ST_UERR findValueByNumber(int i) {
                        return SHARK_ST_UERR.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SHARK_ST_UERR valueOf(int i) {
                switch (i) {
                    case 0:
                        return SHARK_ST_OK;
                    case 1:
                        return SHARK_ST_ERROR;
                    case 2:
                        return SHARK_ST_EMPTY;
                    case 3:
                        return SHARK_ST_FORBIDE;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SHARK_ST_UERR> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SHARK_ChannelStateOperate.getDescriptor().getEnumTypes().get(0);
            }

            public static SHARK_ST_UERR valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SHARK_ST_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SHARK_ChannelStateOperate(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SHARK_ChannelStateOperate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_ChannelStateOperate getDefaultInstance() {
            return defaultInstance;
        }

        public SHARK_ChannelStateOperate getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SharkProtos.g;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.h.ensureFieldAccessorsInitialized(SHARK_ChannelStateOperate.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SHARK_ChannelStateOperate> getParserForType() {
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

        public SHARK_ST_UERR getResult() {
            return this.result_;
        }

        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        public SHARK_STOPTION getOption() {
            return this.option_;
        }

        public boolean hasDeviceMode() {
            return (this.bitField0_ & 8) == 8;
        }

        public SHARK_MODE getDeviceMode() {
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

        public SHARK_ChannelInfo getCh1() {
            return this.ch1_;
        }

        public SHARK_ChannelInfoOrBuilder getCh1OrBuilder() {
            return this.ch1_;
        }

        public boolean hasCh2() {
            return (this.bitField0_ & 64) == 64;
        }

        public SHARK_ChannelInfo getCh2() {
            return this.ch2_;
        }

        public SHARK_ChannelInfoOrBuilder getCh2OrBuilder() {
            return this.ch2_;
        }

        public boolean hasCurrentChId() {
            return (this.bitField0_ & 128) == 128;
        }

        public int getCurrentChId() {
            return this.currentChId_;
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

        public static SHARK_ChannelStateOperate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SHARK_ChannelStateOperate) PARSER.parseFrom(byteString);
        }

        public static SHARK_ChannelStateOperate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_ChannelStateOperate) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_ChannelStateOperate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SHARK_ChannelStateOperate) PARSER.parseFrom(bArr);
        }

        public static SHARK_ChannelStateOperate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_ChannelStateOperate) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SHARK_ChannelStateOperate parseFrom(InputStream inputStream) throws IOException {
            return (SHARK_ChannelStateOperate) PARSER.parseFrom(inputStream);
        }

        public static SHARK_ChannelStateOperate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_ChannelStateOperate) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_ChannelStateOperate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SHARK_ChannelStateOperate) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_ChannelStateOperate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_ChannelStateOperate) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_ChannelStateOperate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SHARK_ChannelStateOperate) PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_ChannelStateOperate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_ChannelStateOperate) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_ChannelStateOperate);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SHARK_ChannelStateOperateOrBuilder extends MessageOrBuilder {
        SHARK_ChannelInfo getCh1();

        SHARK_ChannelInfoOrBuilder getCh1OrBuilder();

        SHARK_ChannelInfo getCh2();

        SHARK_ChannelInfoOrBuilder getCh2OrBuilder();

        int getCurrentChId();

        SHARK_MODE getDeviceMode();

        SHARK_STOPTION getOption();

        SHARK_ST_UERR getResult();

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

    public static final class SHARK_Connect extends GeneratedMessage implements SHARK_ConnectOrBuilder {
        public static final int APPMODE_FIELD_NUMBER = 5;
        public static final int BTMAC_FIELD_NUMBER = 7;
        public static final int CONNCODE_FIELD_NUMBER = 2;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static final int DEVICETYPE_FIELD_NUMBER = 4;
        public static final int LANGUAGE_FIELD_NUMBER = 6;
        public static Parser<SHARK_Connect> PARSER = new AbstractParser<SHARK_Connect>() {
            /* renamed from: a */
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
        };
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SHARK_Connect defaultInstance = new SHARK_Connect(true);
        /* access modifiers changed from: private */
        public SHARK_APPTYPE appMode_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString btmac_;
        /* access modifiers changed from: private */
        public SHARK_CONNCODE connCode_;
        /* access modifiers changed from: private */
        public int deviceId_;
        /* access modifiers changed from: private */
        public int deviceType_;
        /* access modifiers changed from: private */
        public SHARK_LANGUAGETYPE language_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SHARK_ConnectOrBuilder {
            private SHARK_APPTYPE appMode_;
            private int bitField0_;
            private ByteString btmac_;
            private SHARK_CONNCODE connCode_;
            private int deviceId_;
            private int deviceType_;
            private SHARK_LANGUAGETYPE language_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return SharkProtos.a;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.b.ensureFieldAccessorsInitialized(SHARK_Connect.class, Builder.class);
            }

            private Builder() {
                this.connCode_ = SHARK_CONNCODE.SHARK_DISCONNECT;
                this.appMode_ = SHARK_APPTYPE.SHARK_OWN_APP;
                this.language_ = SHARK_LANGUAGETYPE.SHARK_CHINESE;
                this.btmac_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.connCode_ = SHARK_CONNCODE.SHARK_DISCONNECT;
                this.appMode_ = SHARK_APPTYPE.SHARK_OWN_APP;
                this.language_ = SHARK_LANGUAGETYPE.SHARK_CHINESE;
                this.btmac_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SHARK_Connect.alwaysUseFieldBuilders) {
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
                this.connCode_ = SHARK_CONNCODE.SHARK_DISCONNECT;
                this.bitField0_ &= -3;
                this.deviceId_ = 0;
                this.bitField0_ &= -5;
                this.deviceType_ = 0;
                this.bitField0_ &= -9;
                this.appMode_ = SHARK_APPTYPE.SHARK_OWN_APP;
                this.bitField0_ &= -17;
                this.language_ = SHARK_LANGUAGETYPE.SHARK_CHINESE;
                this.bitField0_ &= -33;
                this.btmac_ = ByteString.EMPTY;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SharkProtos.a;
            }

            public SHARK_Connect getDefaultInstanceForType() {
                return SHARK_Connect.getDefaultInstance();
            }

            public SHARK_Connect build() {
                SHARK_Connect buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SHARK_Connect buildPartial() {
                int i = 1;
                SHARK_Connect sHARK_Connect = new SHARK_Connect(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sHARK_Connect.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sHARK_Connect.connCode_ = this.connCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sHARK_Connect.deviceId_ = this.deviceId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sHARK_Connect.deviceType_ = this.deviceType_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sHARK_Connect.appMode_ = this.appMode_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sHARK_Connect.language_ = this.language_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sHARK_Connect.btmac_ = this.btmac_;
                sHARK_Connect.bitField0_ = i;
                onBuilt();
                return sHARK_Connect;
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

            public SHARK_CONNCODE getConnCode() {
                return this.connCode_;
            }

            public Builder setConnCode(SHARK_CONNCODE shark_conncode) {
                if (shark_conncode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.connCode_ = shark_conncode;
                onChanged();
                return this;
            }

            public Builder clearConnCode() {
                this.bitField0_ &= -3;
                this.connCode_ = SHARK_CONNCODE.SHARK_DISCONNECT;
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

            public SHARK_APPTYPE getAppMode() {
                return this.appMode_;
            }

            public Builder setAppMode(SHARK_APPTYPE shark_apptype) {
                if (shark_apptype == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.appMode_ = shark_apptype;
                onChanged();
                return this;
            }

            public Builder clearAppMode() {
                this.bitField0_ &= -17;
                this.appMode_ = SHARK_APPTYPE.SHARK_OWN_APP;
                onChanged();
                return this;
            }

            public boolean hasLanguage() {
                return (this.bitField0_ & 32) == 32;
            }

            public SHARK_LANGUAGETYPE getLanguage() {
                return this.language_;
            }

            public Builder setLanguage(SHARK_LANGUAGETYPE shark_languagetype) {
                if (shark_languagetype == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.language_ = shark_languagetype;
                onChanged();
                return this;
            }

            public Builder clearLanguage() {
                this.bitField0_ &= -33;
                this.language_ = SHARK_LANGUAGETYPE.SHARK_CHINESE;
                onChanged();
                return this;
            }

            public boolean hasBtmac() {
                return (this.bitField0_ & 64) == 64;
            }

            public ByteString getBtmac() {
                return this.btmac_;
            }

            public Builder setBtmac(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.btmac_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearBtmac() {
                this.bitField0_ &= -65;
                this.btmac_ = SHARK_Connect.getDefaultInstance().getBtmac();
                onChanged();
                return this;
            }
        }

        public enum SHARK_APPTYPE implements ProtocolMessageEnum {
            SHARK_OWN_APP(0, 0),
            SHARK_MIJIA_APP(1, 1);
            
            public static final int SHARK_MIJIA_APP_VALUE = 1;
            public static final int SHARK_OWN_APP_VALUE = 0;
            private static final SHARK_APPTYPE[] VALUES = null;
            private static EnumLiteMap<SHARK_APPTYPE> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SHARK_APPTYPE>() {
                    /* renamed from: a */
                    public SHARK_APPTYPE findValueByNumber(int i) {
                        return SHARK_APPTYPE.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SHARK_APPTYPE valueOf(int i) {
                switch (i) {
                    case 0:
                        return SHARK_OWN_APP;
                    case 1:
                        return SHARK_MIJIA_APP;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SHARK_APPTYPE> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SHARK_Connect.getDescriptor().getEnumTypes().get(0);
            }

            public static SHARK_APPTYPE valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SHARK_APPTYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        public enum SHARK_LANGUAGETYPE implements ProtocolMessageEnum {
            SHARK_CHINESE(0, 0),
            SHARK_ENGLISH(1, 1);
            
            public static final int SHARK_CHINESE_VALUE = 0;
            public static final int SHARK_ENGLISH_VALUE = 1;
            private static final SHARK_LANGUAGETYPE[] VALUES = null;
            private static EnumLiteMap<SHARK_LANGUAGETYPE> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SHARK_LANGUAGETYPE>() {
                    /* renamed from: a */
                    public SHARK_LANGUAGETYPE findValueByNumber(int i) {
                        return SHARK_LANGUAGETYPE.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SHARK_LANGUAGETYPE valueOf(int i) {
                switch (i) {
                    case 0:
                        return SHARK_CHINESE;
                    case 1:
                        return SHARK_ENGLISH;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SHARK_LANGUAGETYPE> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SHARK_Connect.getDescriptor().getEnumTypes().get(1);
            }

            public static SHARK_LANGUAGETYPE valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SHARK_LANGUAGETYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SHARK_Connect(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SHARK_Connect(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_Connect getDefaultInstance() {
            return defaultInstance;
        }

        public SHARK_Connect getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SharkProtos.a;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.b.ensureFieldAccessorsInitialized(SHARK_Connect.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SHARK_Connect> getParserForType() {
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

        public SHARK_CONNCODE getConnCode() {
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

        public SHARK_APPTYPE getAppMode() {
            return this.appMode_;
        }

        public boolean hasLanguage() {
            return (this.bitField0_ & 32) == 32;
        }

        public SHARK_LANGUAGETYPE getLanguage() {
            return this.language_;
        }

        public boolean hasBtmac() {
            return (this.bitField0_ & 64) == 64;
        }

        public ByteString getBtmac() {
            return this.btmac_;
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

        public static SHARK_Connect parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SHARK_Connect) PARSER.parseFrom(byteString);
        }

        public static SHARK_Connect parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_Connect) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_Connect parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SHARK_Connect) PARSER.parseFrom(bArr);
        }

        public static SHARK_Connect parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_Connect) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SHARK_Connect parseFrom(InputStream inputStream) throws IOException {
            return (SHARK_Connect) PARSER.parseFrom(inputStream);
        }

        public static SHARK_Connect parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_Connect) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_Connect parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SHARK_Connect) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_Connect parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_Connect) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_Connect parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SHARK_Connect) PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_Connect parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_Connect) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SHARK_Connect sHARK_Connect) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_Connect);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SHARK_ConnectOrBuilder extends MessageOrBuilder {
        SHARK_APPTYPE getAppMode();

        ByteString getBtmac();

        SHARK_CONNCODE getConnCode();

        int getDeviceId();

        int getDeviceType();

        SHARK_LANGUAGETYPE getLanguage();

        int getVersion();

        boolean hasAppMode();

        boolean hasBtmac();

        boolean hasConnCode();

        boolean hasDeviceId();

        boolean hasDeviceType();

        boolean hasLanguage();

        boolean hasVersion();
    }

    public static final class SHARK_DeviceParam extends GeneratedMessage implements SHARK_DeviceParamOrBuilder {
        public static final int ACTIVATE_FIELD_NUMBER = 9;
        public static final int BLENAME_FIELD_NUMBER = 7;
        public static final int BTAUDIO_FIELD_NUMBER = 11;
        public static final int CHARGE_FIELD_NUMBER = 8;
        public static final int CH_FIELD_NUMBER = 12;
        public static final int DEVICENAME_FIELD_NUMBER = 6;
        public static final int FULLINQUIRY_FIELD_NUMBER = 3;
        public static final int ISALLPUBLIC_FIELD_NUMBER = 14;
        public static Parser<SHARK_DeviceParam> PARSER = new AbstractParser<SHARK_DeviceParam>() {
            /* renamed from: a */
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
        };
        public static final int PWSAVEMODE_FIELD_NUMBER = 15;
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int SHARELOC_FIELD_NUMBER = 10;
        public static final int TIMEDISPLAY_FIELD_NUMBER = 31;
        public static final int TIMESTAMP_FIELD_NUMBER = 30;
        public static final int VERHW_FIELD_NUMBER = 4;
        public static final int VERSION_FIELD_NUMBER = 1;
        public static final int VERSOFT_FIELD_NUMBER = 5;
        public static final int VOICEALERT_FIELD_NUMBER = 13;
        private static final SHARK_DeviceParam defaultInstance = new SHARK_DeviceParam(true);
        /* access modifiers changed from: private */
        public int activate_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString bleName_;
        /* access modifiers changed from: private */
        public int btAudio_;
        /* access modifiers changed from: private */
        public SHARK_ChannelInfo ch_;
        /* access modifiers changed from: private */
        public int charge_;
        /* access modifiers changed from: private */
        public ByteString deviceName_;
        /* access modifiers changed from: private */
        public SHARK_SWITCH fullInquiry_;
        /* access modifiers changed from: private */
        public SHARK_SWITCH isAllPublic_;
        /* access modifiers changed from: private */
        public int pwsaveMode_;
        /* access modifiers changed from: private */
        public SHARK_DEV_UERR result_;
        /* access modifiers changed from: private */
        public SHARK_SWITCH shareLoc_;
        /* access modifiers changed from: private */
        public SHARK_SWITCH timeDisplay_;
        /* access modifiers changed from: private */
        public int timeStamp_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int verHw_;
        /* access modifiers changed from: private */
        public int verSoft_;
        /* access modifiers changed from: private */
        public int version_;
        /* access modifiers changed from: private */
        public SHARK_SWITCH voiceAlert_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SHARK_DeviceParamOrBuilder {
            private int activate_;
            private int bitField0_;
            private ByteString bleName_;
            private int btAudio_;
            private SingleFieldBuilder<SHARK_ChannelInfo, Builder, SHARK_ChannelInfoOrBuilder> chBuilder_;
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

            public static final Descriptor getDescriptor() {
                return SharkProtos.e;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.f.ensureFieldAccessorsInitialized(SHARK_DeviceParam.class, Builder.class);
            }

            private Builder() {
                this.result_ = SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK;
                this.fullInquiry_ = SHARK_SWITCH.SHARK_OFF;
                this.deviceName_ = ByteString.EMPTY;
                this.bleName_ = ByteString.EMPTY;
                this.shareLoc_ = SHARK_SWITCH.SHARK_OFF;
                this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
                this.voiceAlert_ = SHARK_SWITCH.SHARK_OFF;
                this.isAllPublic_ = SHARK_SWITCH.SHARK_OFF;
                this.timeDisplay_ = SHARK_SWITCH.SHARK_OFF;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK;
                this.fullInquiry_ = SHARK_SWITCH.SHARK_OFF;
                this.deviceName_ = ByteString.EMPTY;
                this.bleName_ = ByteString.EMPTY;
                this.shareLoc_ = SHARK_SWITCH.SHARK_OFF;
                this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
                this.voiceAlert_ = SHARK_SWITCH.SHARK_OFF;
                this.isAllPublic_ = SHARK_SWITCH.SHARK_OFF;
                this.timeDisplay_ = SHARK_SWITCH.SHARK_OFF;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SHARK_DeviceParam.alwaysUseFieldBuilders) {
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
                this.result_ = SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK;
                this.bitField0_ &= -3;
                this.fullInquiry_ = SHARK_SWITCH.SHARK_OFF;
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
                this.shareLoc_ = SHARK_SWITCH.SHARK_OFF;
                this.bitField0_ &= -513;
                this.btAudio_ = 0;
                this.bitField0_ &= -1025;
                if (this.chBuilder_ == null) {
                    this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
                } else {
                    this.chBuilder_.clear();
                }
                this.bitField0_ &= -2049;
                this.voiceAlert_ = SHARK_SWITCH.SHARK_OFF;
                this.bitField0_ &= -4097;
                this.isAllPublic_ = SHARK_SWITCH.SHARK_OFF;
                this.bitField0_ &= -8193;
                this.pwsaveMode_ = 0;
                this.bitField0_ &= -16385;
                this.timeStamp_ = 0;
                this.bitField0_ &= -32769;
                this.timeDisplay_ = SHARK_SWITCH.SHARK_OFF;
                this.bitField0_ &= -65537;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SharkProtos.e;
            }

            public SHARK_DeviceParam getDefaultInstanceForType() {
                return SHARK_DeviceParam.getDefaultInstance();
            }

            public SHARK_DeviceParam build() {
                SHARK_DeviceParam buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SHARK_DeviceParam buildPartial() {
                int i;
                int i2 = 1;
                SHARK_DeviceParam sHARK_DeviceParam = new SHARK_DeviceParam(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                sHARK_DeviceParam.version_ = this.version_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                sHARK_DeviceParam.result_ = this.result_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                sHARK_DeviceParam.fullInquiry_ = this.fullInquiry_;
                if ((i3 & 8) == 8) {
                    i2 |= 8;
                }
                sHARK_DeviceParam.verHw_ = this.verHw_;
                if ((i3 & 16) == 16) {
                    i2 |= 16;
                }
                sHARK_DeviceParam.verSoft_ = this.verSoft_;
                if ((i3 & 32) == 32) {
                    i2 |= 32;
                }
                sHARK_DeviceParam.deviceName_ = this.deviceName_;
                if ((i3 & 64) == 64) {
                    i2 |= 64;
                }
                sHARK_DeviceParam.bleName_ = this.bleName_;
                if ((i3 & 128) == 128) {
                    i2 |= 128;
                }
                sHARK_DeviceParam.charge_ = this.charge_;
                if ((i3 & 256) == 256) {
                    i2 |= 256;
                }
                sHARK_DeviceParam.activate_ = this.activate_;
                if ((i3 & 512) == 512) {
                    i2 |= 512;
                }
                sHARK_DeviceParam.shareLoc_ = this.shareLoc_;
                if ((i3 & 1024) == 1024) {
                    i2 |= 1024;
                }
                sHARK_DeviceParam.btAudio_ = this.btAudio_;
                if ((i3 & 2048) == 2048) {
                    i = i2 | 2048;
                } else {
                    i = i2;
                }
                if (this.chBuilder_ == null) {
                    sHARK_DeviceParam.ch_ = this.ch_;
                } else {
                    sHARK_DeviceParam.ch_ = (SHARK_ChannelInfo) this.chBuilder_.build();
                }
                if ((i3 & 4096) == 4096) {
                    i |= 4096;
                }
                sHARK_DeviceParam.voiceAlert_ = this.voiceAlert_;
                if ((i3 & 8192) == 8192) {
                    i |= 8192;
                }
                sHARK_DeviceParam.isAllPublic_ = this.isAllPublic_;
                if ((i3 & 16384) == 16384) {
                    i |= 16384;
                }
                sHARK_DeviceParam.pwsaveMode_ = this.pwsaveMode_;
                if ((i3 & 32768) == 32768) {
                    i |= 32768;
                }
                sHARK_DeviceParam.timeStamp_ = this.timeStamp_;
                if ((i3 & 65536) == 65536) {
                    i |= 65536;
                }
                sHARK_DeviceParam.timeDisplay_ = this.timeDisplay_;
                sHARK_DeviceParam.bitField0_ = i;
                onBuilt();
                return sHARK_DeviceParam;
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

            public SHARK_DEV_UERR getResult() {
                return this.result_;
            }

            public Builder setResult(SHARK_DEV_UERR shark_dev_uerr) {
                if (shark_dev_uerr == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.result_ = shark_dev_uerr;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK;
                onChanged();
                return this;
            }

            public boolean hasFullInquiry() {
                return (this.bitField0_ & 4) == 4;
            }

            public SHARK_SWITCH getFullInquiry() {
                return this.fullInquiry_;
            }

            public Builder setFullInquiry(SHARK_SWITCH shark_switch) {
                if (shark_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fullInquiry_ = shark_switch;
                onChanged();
                return this;
            }

            public Builder clearFullInquiry() {
                this.bitField0_ &= -5;
                this.fullInquiry_ = SHARK_SWITCH.SHARK_OFF;
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
                this.deviceName_ = SHARK_DeviceParam.getDefaultInstance().getDeviceName();
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
                this.bleName_ = SHARK_DeviceParam.getDefaultInstance().getBleName();
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

            public SHARK_SWITCH getShareLoc() {
                return this.shareLoc_;
            }

            public Builder setShareLoc(SHARK_SWITCH shark_switch) {
                if (shark_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 512;
                this.shareLoc_ = shark_switch;
                onChanged();
                return this;
            }

            public Builder clearShareLoc() {
                this.bitField0_ &= -513;
                this.shareLoc_ = SHARK_SWITCH.SHARK_OFF;
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

            public SHARK_ChannelInfo getCh() {
                if (this.chBuilder_ == null) {
                    return this.ch_;
                }
                return (SHARK_ChannelInfo) this.chBuilder_.getMessage();
            }

            public Builder setCh(SHARK_ChannelInfo sHARK_ChannelInfo) {
                if (this.chBuilder_ != null) {
                    this.chBuilder_.setMessage(sHARK_ChannelInfo);
                } else if (sHARK_ChannelInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.ch_ = sHARK_ChannelInfo;
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

            public Builder mergeCh(SHARK_ChannelInfo sHARK_ChannelInfo) {
                if (this.chBuilder_ == null) {
                    if ((this.bitField0_ & 2048) != 2048 || this.ch_ == SHARK_ChannelInfo.getDefaultInstance()) {
                        this.ch_ = sHARK_ChannelInfo;
                    } else {
                        this.ch_ = ((Builder) SHARK_ChannelInfo.newBuilder(this.ch_).mergeFrom((Message) sHARK_ChannelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.chBuilder_.mergeFrom(sHARK_ChannelInfo);
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder clearCh() {
                if (this.chBuilder_ == null) {
                    this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
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

            public SHARK_ChannelInfoOrBuilder getChOrBuilder() {
                if (this.chBuilder_ != null) {
                    return (SHARK_ChannelInfoOrBuilder) this.chBuilder_.getMessageOrBuilder();
                }
                return this.ch_;
            }

            private SingleFieldBuilder<SHARK_ChannelInfo, Builder, SHARK_ChannelInfoOrBuilder> getChFieldBuilder() {
                if (this.chBuilder_ == null) {
                    this.chBuilder_ = new SingleFieldBuilder<>(getCh(), getParentForChildren(), isClean());
                    this.ch_ = null;
                }
                return this.chBuilder_;
            }

            public boolean hasVoiceAlert() {
                return (this.bitField0_ & 4096) == 4096;
            }

            public SHARK_SWITCH getVoiceAlert() {
                return this.voiceAlert_;
            }

            public Builder setVoiceAlert(SHARK_SWITCH shark_switch) {
                if (shark_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4096;
                this.voiceAlert_ = shark_switch;
                onChanged();
                return this;
            }

            public Builder clearVoiceAlert() {
                this.bitField0_ &= -4097;
                this.voiceAlert_ = SHARK_SWITCH.SHARK_OFF;
                onChanged();
                return this;
            }

            public boolean hasIsAllPublic() {
                return (this.bitField0_ & 8192) == 8192;
            }

            public SHARK_SWITCH getIsAllPublic() {
                return this.isAllPublic_;
            }

            public Builder setIsAllPublic(SHARK_SWITCH shark_switch) {
                if (shark_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8192;
                this.isAllPublic_ = shark_switch;
                onChanged();
                return this;
            }

            public Builder clearIsAllPublic() {
                this.bitField0_ &= -8193;
                this.isAllPublic_ = SHARK_SWITCH.SHARK_OFF;
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

            public boolean hasTimeStamp() {
                return (this.bitField0_ & 32768) == 32768;
            }

            public int getTimeStamp() {
                return this.timeStamp_;
            }

            public Builder setTimeStamp(int i) {
                this.bitField0_ |= 32768;
                this.timeStamp_ = i;
                onChanged();
                return this;
            }

            public Builder clearTimeStamp() {
                this.bitField0_ &= -32769;
                this.timeStamp_ = 0;
                onChanged();
                return this;
            }

            public boolean hasTimeDisplay() {
                return (this.bitField0_ & 65536) == 65536;
            }

            public SHARK_SWITCH getTimeDisplay() {
                return this.timeDisplay_;
            }

            public Builder setTimeDisplay(SHARK_SWITCH shark_switch) {
                if (shark_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 65536;
                this.timeDisplay_ = shark_switch;
                onChanged();
                return this;
            }

            public Builder clearTimeDisplay() {
                this.bitField0_ &= -65537;
                this.timeDisplay_ = SHARK_SWITCH.SHARK_OFF;
                onChanged();
                return this;
            }
        }

        public enum SHARK_DEV_UERR implements ProtocolMessageEnum {
            SHARK_PARAM_QUERY_OK(0, 1),
            SHARK_PARAM_QUERY_ERROR(1, 2),
            SHARK_PARAM_UPDATE_OK(2, 3),
            SHARK_PARAM_UPDATE_ERROR(3, 4);
            
            public static final int SHARK_PARAM_QUERY_ERROR_VALUE = 2;
            public static final int SHARK_PARAM_QUERY_OK_VALUE = 1;
            public static final int SHARK_PARAM_UPDATE_ERROR_VALUE = 4;
            public static final int SHARK_PARAM_UPDATE_OK_VALUE = 3;
            private static final SHARK_DEV_UERR[] VALUES = null;
            private static EnumLiteMap<SHARK_DEV_UERR> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SHARK_DEV_UERR>() {
                    /* renamed from: a */
                    public SHARK_DEV_UERR findValueByNumber(int i) {
                        return SHARK_DEV_UERR.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SHARK_DEV_UERR valueOf(int i) {
                switch (i) {
                    case 1:
                        return SHARK_PARAM_QUERY_OK;
                    case 2:
                        return SHARK_PARAM_QUERY_ERROR;
                    case 3:
                        return SHARK_PARAM_UPDATE_OK;
                    case 4:
                        return SHARK_PARAM_UPDATE_ERROR;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SHARK_DEV_UERR> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SHARK_DeviceParam.getDescriptor().getEnumTypes().get(0);
            }

            public static SHARK_DEV_UERR valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SHARK_DEV_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SHARK_DeviceParam(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SHARK_DeviceParam(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_DeviceParam getDefaultInstance() {
            return defaultInstance;
        }

        public SHARK_DeviceParam getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SharkProtos.e;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.f.ensureFieldAccessorsInitialized(SHARK_DeviceParam.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SHARK_DeviceParam> getParserForType() {
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

        public SHARK_DEV_UERR getResult() {
            return this.result_;
        }

        public boolean hasFullInquiry() {
            return (this.bitField0_ & 4) == 4;
        }

        public SHARK_SWITCH getFullInquiry() {
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

        public SHARK_SWITCH getShareLoc() {
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

        public SHARK_ChannelInfo getCh() {
            return this.ch_;
        }

        public SHARK_ChannelInfoOrBuilder getChOrBuilder() {
            return this.ch_;
        }

        public boolean hasVoiceAlert() {
            return (this.bitField0_ & 4096) == 4096;
        }

        public SHARK_SWITCH getVoiceAlert() {
            return this.voiceAlert_;
        }

        public boolean hasIsAllPublic() {
            return (this.bitField0_ & 8192) == 8192;
        }

        public SHARK_SWITCH getIsAllPublic() {
            return this.isAllPublic_;
        }

        public boolean hasPwsaveMode() {
            return (this.bitField0_ & 16384) == 16384;
        }

        public int getPwsaveMode() {
            return this.pwsaveMode_;
        }

        public boolean hasTimeStamp() {
            return (this.bitField0_ & 32768) == 32768;
        }

        public int getTimeStamp() {
            return this.timeStamp_;
        }

        public boolean hasTimeDisplay() {
            return (this.bitField0_ & 65536) == 65536;
        }

        public SHARK_SWITCH getTimeDisplay() {
            return this.timeDisplay_;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK;
            this.fullInquiry_ = SHARK_SWITCH.SHARK_OFF;
            this.verHw_ = 0;
            this.verSoft_ = 0;
            this.deviceName_ = ByteString.EMPTY;
            this.bleName_ = ByteString.EMPTY;
            this.charge_ = 0;
            this.activate_ = 0;
            this.shareLoc_ = SHARK_SWITCH.SHARK_OFF;
            this.btAudio_ = 0;
            this.ch_ = SHARK_ChannelInfo.getDefaultInstance();
            this.voiceAlert_ = SHARK_SWITCH.SHARK_OFF;
            this.isAllPublic_ = SHARK_SWITCH.SHARK_OFF;
            this.pwsaveMode_ = 0;
            this.timeStamp_ = 0;
            this.timeDisplay_ = SHARK_SWITCH.SHARK_OFF;
        }

        public static SHARK_DeviceParam parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SHARK_DeviceParam) PARSER.parseFrom(byteString);
        }

        public static SHARK_DeviceParam parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_DeviceParam) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_DeviceParam parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SHARK_DeviceParam) PARSER.parseFrom(bArr);
        }

        public static SHARK_DeviceParam parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_DeviceParam) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SHARK_DeviceParam parseFrom(InputStream inputStream) throws IOException {
            return (SHARK_DeviceParam) PARSER.parseFrom(inputStream);
        }

        public static SHARK_DeviceParam parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_DeviceParam) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_DeviceParam parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SHARK_DeviceParam) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_DeviceParam parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_DeviceParam) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_DeviceParam parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SHARK_DeviceParam) PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_DeviceParam parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_DeviceParam) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SHARK_DeviceParam sHARK_DeviceParam) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_DeviceParam);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

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

        SHARK_DEV_UERR getResult();

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

    public static final class SHARK_LocationInfo extends GeneratedMessage implements SHARK_LocationInfoOrBuilder {
        public static final int ALTITUDE_FIELD_NUMBER = 8;
        public static final int CTLSYNC_FIELD_NUMBER = 2;
        public static final int LATITUDE_FIELD_NUMBER = 7;
        public static final int LONGITUDE_FIELD_NUMBER = 6;
        public static Parser<SHARK_LocationInfo> PARSER = new AbstractParser<SHARK_LocationInfo>() {
            /* renamed from: a */
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
        };
        public static final int RXCSS_FIELD_NUMBER = 10;
        public static final int TIMESYNC_FIELD_NUMBER = 9;
        public static final int USERFREQ_FIELD_NUMBER = 5;
        public static final int USERID_FIELD_NUMBER = 3;
        public static final int USERNAME_FIELD_NUMBER = 4;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SHARK_LocationInfo defaultInstance = new SHARK_LocationInfo(true);
        /* access modifiers changed from: private */
        public int altitude_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public SHARK_SWITCH ctlsync_;
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

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SHARK_LocationInfoOrBuilder {
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

            public static final Descriptor getDescriptor() {
                return SharkProtos.k;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.l.ensureFieldAccessorsInitialized(SHARK_LocationInfo.class, Builder.class);
            }

            private Builder() {
                this.ctlsync_ = SHARK_SWITCH.SHARK_OFF;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.ctlsync_ = SHARK_SWITCH.SHARK_OFF;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SHARK_LocationInfo.alwaysUseFieldBuilders) {
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
                this.ctlsync_ = SHARK_SWITCH.SHARK_OFF;
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
                return SharkProtos.k;
            }

            public SHARK_LocationInfo getDefaultInstanceForType() {
                return SHARK_LocationInfo.getDefaultInstance();
            }

            public SHARK_LocationInfo build() {
                SHARK_LocationInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SHARK_LocationInfo buildPartial() {
                int i = 1;
                SHARK_LocationInfo sHARK_LocationInfo = new SHARK_LocationInfo(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sHARK_LocationInfo.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sHARK_LocationInfo.ctlsync_ = this.ctlsync_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sHARK_LocationInfo.userId_ = this.userId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sHARK_LocationInfo.userName_ = this.userName_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sHARK_LocationInfo.userFreq_ = this.userFreq_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sHARK_LocationInfo.longitude_ = this.longitude_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sHARK_LocationInfo.latitude_ = this.latitude_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                sHARK_LocationInfo.altitude_ = this.altitude_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                sHARK_LocationInfo.timeSync_ = this.timeSync_;
                if ((i2 & 512) == 512) {
                    i |= 512;
                }
                sHARK_LocationInfo.rxCss_ = this.rxCss_;
                sHARK_LocationInfo.bitField0_ = i;
                onBuilt();
                return sHARK_LocationInfo;
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

            public SHARK_SWITCH getCtlsync() {
                return this.ctlsync_;
            }

            public Builder setCtlsync(SHARK_SWITCH shark_switch) {
                if (shark_switch == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.ctlsync_ = shark_switch;
                onChanged();
                return this;
            }

            public Builder clearCtlsync() {
                this.bitField0_ &= -3;
                this.ctlsync_ = SHARK_SWITCH.SHARK_OFF;
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
                this.userName_ = SHARK_LocationInfo.getDefaultInstance().getUserName();
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

        private SHARK_LocationInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SHARK_LocationInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_LocationInfo getDefaultInstance() {
            return defaultInstance;
        }

        public SHARK_LocationInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SharkProtos.k;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.l.ensureFieldAccessorsInitialized(SHARK_LocationInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SHARK_LocationInfo> getParserForType() {
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

        public SHARK_SWITCH getCtlsync() {
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

        public static SHARK_LocationInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SHARK_LocationInfo) PARSER.parseFrom(byteString);
        }

        public static SHARK_LocationInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_LocationInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_LocationInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SHARK_LocationInfo) PARSER.parseFrom(bArr);
        }

        public static SHARK_LocationInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_LocationInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SHARK_LocationInfo parseFrom(InputStream inputStream) throws IOException {
            return (SHARK_LocationInfo) PARSER.parseFrom(inputStream);
        }

        public static SHARK_LocationInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_LocationInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_LocationInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SHARK_LocationInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_LocationInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_LocationInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_LocationInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SHARK_LocationInfo) PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_LocationInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_LocationInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SHARK_LocationInfo sHARK_LocationInfo) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_LocationInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

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

    public enum SHARK_SWITCH implements ProtocolMessageEnum {
        SHARK_OFF(0, 1),
        SHARK_ON(1, 2);
        
        public static final int SHARK_OFF_VALUE = 1;
        public static final int SHARK_ON_VALUE = 2;
        private static final SHARK_SWITCH[] VALUES = null;
        private static EnumLiteMap<SHARK_SWITCH> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<SHARK_SWITCH>() {
                /* renamed from: a */
                public SHARK_SWITCH findValueByNumber(int i) {
                    return SHARK_SWITCH.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static SHARK_SWITCH valueOf(int i) {
            switch (i) {
                case 1:
                    return SHARK_OFF;
                case 2:
                    return SHARK_ON;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<SHARK_SWITCH> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) SharkProtos.a().getEnumTypes().get(1);
        }

        public static SHARK_SWITCH valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private SHARK_SWITCH(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    public static final class SHARK_UpGradeFilePack extends GeneratedMessage implements SHARK_UpGradeFilePackOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int OFFSET_FIELD_NUMBER = 1;
        public static Parser<SHARK_UpGradeFilePack> PARSER = new AbstractParser<SHARK_UpGradeFilePack>() {
            /* renamed from: a */
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
        };
        public static final int XOR_FIELD_NUMBER = 3;
        private static final SHARK_UpGradeFilePack defaultInstance = new SHARK_UpGradeFilePack(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString data_;
        /* access modifiers changed from: private */
        public int offset_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int xor_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SHARK_UpGradeFilePackOrBuilder {
            private int bitField0_;
            private ByteString data_;
            private int offset_;
            private int xor_;

            public static final Descriptor getDescriptor() {
                return SharkProtos.q;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.r.ensureFieldAccessorsInitialized(SHARK_UpGradeFilePack.class, Builder.class);
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
                if (SHARK_UpGradeFilePack.alwaysUseFieldBuilders) {
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
                return SharkProtos.q;
            }

            public SHARK_UpGradeFilePack getDefaultInstanceForType() {
                return SHARK_UpGradeFilePack.getDefaultInstance();
            }

            public SHARK_UpGradeFilePack build() {
                SHARK_UpGradeFilePack buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SHARK_UpGradeFilePack buildPartial() {
                int i = 1;
                SHARK_UpGradeFilePack sHARK_UpGradeFilePack = new SHARK_UpGradeFilePack(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sHARK_UpGradeFilePack.offset_ = this.offset_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sHARK_UpGradeFilePack.data_ = this.data_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sHARK_UpGradeFilePack.xor_ = this.xor_;
                sHARK_UpGradeFilePack.bitField0_ = i;
                onBuilt();
                return sHARK_UpGradeFilePack;
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
                this.data_ = SHARK_UpGradeFilePack.getDefaultInstance().getData();
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

        private SHARK_UpGradeFilePack(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SHARK_UpGradeFilePack(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_UpGradeFilePack getDefaultInstance() {
            return defaultInstance;
        }

        public SHARK_UpGradeFilePack getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SharkProtos.q;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.r.ensureFieldAccessorsInitialized(SHARK_UpGradeFilePack.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SHARK_UpGradeFilePack> getParserForType() {
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

        public static SHARK_UpGradeFilePack parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SHARK_UpGradeFilePack) PARSER.parseFrom(byteString);
        }

        public static SHARK_UpGradeFilePack parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_UpGradeFilePack) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_UpGradeFilePack parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SHARK_UpGradeFilePack) PARSER.parseFrom(bArr);
        }

        public static SHARK_UpGradeFilePack parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_UpGradeFilePack) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SHARK_UpGradeFilePack parseFrom(InputStream inputStream) throws IOException {
            return (SHARK_UpGradeFilePack) PARSER.parseFrom(inputStream);
        }

        public static SHARK_UpGradeFilePack parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_UpGradeFilePack) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UpGradeFilePack parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SHARK_UpGradeFilePack) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_UpGradeFilePack parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_UpGradeFilePack) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UpGradeFilePack parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SHARK_UpGradeFilePack) PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_UpGradeFilePack parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_UpGradeFilePack) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SHARK_UpGradeFilePack sHARK_UpGradeFilePack) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_UpGradeFilePack);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SHARK_UpGradeFilePackOrBuilder extends MessageOrBuilder {
        ByteString getData();

        int getOffset();

        int getXor();

        boolean hasData();

        boolean hasOffset();

        boolean hasXor();
    }

    public static final class SHARK_UpGradeFileRequest extends GeneratedMessage implements SHARK_UpGradeFileRequestOrBuilder {
        public static final int FCMD_FIELD_NUMBER = 2;
        public static final int FCRC32_FIELD_NUMBER = 5;
        public static final int FSIZE_FIELD_NUMBER = 4;
        public static final int FTYPE_FIELD_NUMBER = 3;
        public static Parser<SHARK_UpGradeFileRequest> PARSER = new AbstractParser<SHARK_UpGradeFileRequest>() {
            /* renamed from: a */
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
        };
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final SHARK_UpGradeFileRequest defaultInstance = new SHARK_UpGradeFileRequest(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public SHARK_FILECMD fCmd_;
        /* access modifiers changed from: private */
        public int fCrc32_;
        /* access modifiers changed from: private */
        public int fSize_;
        /* access modifiers changed from: private */
        public SHARK_FILETYPE fType_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SHARK_UpGradeFileRequestOrBuilder {
            private int bitField0_;
            private SHARK_FILECMD fCmd_;
            private int fCrc32_;
            private int fSize_;
            private SHARK_FILETYPE fType_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return SharkProtos.m;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.n.ensureFieldAccessorsInitialized(SHARK_UpGradeFileRequest.class, Builder.class);
            }

            private Builder() {
                this.fCmd_ = SHARK_FILECMD.SHARK_UP_START;
                this.fType_ = SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.fCmd_ = SHARK_FILECMD.SHARK_UP_START;
                this.fType_ = SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SHARK_UpGradeFileRequest.alwaysUseFieldBuilders) {
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
                this.fCmd_ = SHARK_FILECMD.SHARK_UP_START;
                this.bitField0_ &= -3;
                this.fType_ = SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE;
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
                return SharkProtos.m;
            }

            public SHARK_UpGradeFileRequest getDefaultInstanceForType() {
                return SHARK_UpGradeFileRequest.getDefaultInstance();
            }

            public SHARK_UpGradeFileRequest build() {
                SHARK_UpGradeFileRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SHARK_UpGradeFileRequest buildPartial() {
                int i = 1;
                SHARK_UpGradeFileRequest sHARK_UpGradeFileRequest = new SHARK_UpGradeFileRequest(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sHARK_UpGradeFileRequest.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sHARK_UpGradeFileRequest.fCmd_ = this.fCmd_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sHARK_UpGradeFileRequest.fType_ = this.fType_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sHARK_UpGradeFileRequest.fSize_ = this.fSize_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sHARK_UpGradeFileRequest.fCrc32_ = this.fCrc32_;
                sHARK_UpGradeFileRequest.bitField0_ = i;
                onBuilt();
                return sHARK_UpGradeFileRequest;
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

            public SHARK_FILECMD getFCmd() {
                return this.fCmd_;
            }

            public Builder setFCmd(SHARK_FILECMD shark_filecmd) {
                if (shark_filecmd == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.fCmd_ = shark_filecmd;
                onChanged();
                return this;
            }

            public Builder clearFCmd() {
                this.bitField0_ &= -3;
                this.fCmd_ = SHARK_FILECMD.SHARK_UP_START;
                onChanged();
                return this;
            }

            public boolean hasFType() {
                return (this.bitField0_ & 4) == 4;
            }

            public SHARK_FILETYPE getFType() {
                return this.fType_;
            }

            public Builder setFType(SHARK_FILETYPE shark_filetype) {
                if (shark_filetype == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fType_ = shark_filetype;
                onChanged();
                return this;
            }

            public Builder clearFType() {
                this.bitField0_ &= -5;
                this.fType_ = SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE;
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

        public enum SHARK_FILECMD implements ProtocolMessageEnum {
            SHARK_UP_START(0, 1),
            SHARK_UP_COMPLE(1, 2),
            SHARK_UP_REBOOT(2, 3);
            
            public static final int SHARK_UP_COMPLE_VALUE = 2;
            public static final int SHARK_UP_REBOOT_VALUE = 3;
            public static final int SHARK_UP_START_VALUE = 1;
            private static final SHARK_FILECMD[] VALUES = null;
            private static EnumLiteMap<SHARK_FILECMD> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SHARK_FILECMD>() {
                    /* renamed from: a */
                    public SHARK_FILECMD findValueByNumber(int i) {
                        return SHARK_FILECMD.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SHARK_FILECMD valueOf(int i) {
                switch (i) {
                    case 1:
                        return SHARK_UP_START;
                    case 2:
                        return SHARK_UP_COMPLE;
                    case 3:
                        return SHARK_UP_REBOOT;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SHARK_FILECMD> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SHARK_UpGradeFileRequest.getDescriptor().getEnumTypes().get(0);
            }

            public static SHARK_FILECMD valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SHARK_FILECMD(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        public enum SHARK_FILETYPE implements ProtocolMessageEnum {
            SHARK_APP_UPGRADE_FILE(0, 1),
            SHARK_MCU_UPLOAD_FILE(1, 2);
            
            public static final int SHARK_APP_UPGRADE_FILE_VALUE = 1;
            public static final int SHARK_MCU_UPLOAD_FILE_VALUE = 2;
            private static final SHARK_FILETYPE[] VALUES = null;
            private static EnumLiteMap<SHARK_FILETYPE> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SHARK_FILETYPE>() {
                    /* renamed from: a */
                    public SHARK_FILETYPE findValueByNumber(int i) {
                        return SHARK_FILETYPE.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SHARK_FILETYPE valueOf(int i) {
                switch (i) {
                    case 1:
                        return SHARK_APP_UPGRADE_FILE;
                    case 2:
                        return SHARK_MCU_UPLOAD_FILE;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SHARK_FILETYPE> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SHARK_UpGradeFileRequest.getDescriptor().getEnumTypes().get(1);
            }

            public static SHARK_FILETYPE valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SHARK_FILETYPE(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SHARK_UpGradeFileRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SHARK_UpGradeFileRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_UpGradeFileRequest getDefaultInstance() {
            return defaultInstance;
        }

        public SHARK_UpGradeFileRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SharkProtos.m;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.n.ensureFieldAccessorsInitialized(SHARK_UpGradeFileRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SHARK_UpGradeFileRequest> getParserForType() {
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

        public SHARK_FILECMD getFCmd() {
            return this.fCmd_;
        }

        public boolean hasFType() {
            return (this.bitField0_ & 4) == 4;
        }

        public SHARK_FILETYPE getFType() {
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
            this.fCmd_ = SHARK_FILECMD.SHARK_UP_START;
            this.fType_ = SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE;
            this.fSize_ = 0;
            this.fCrc32_ = 0;
        }

        public static SHARK_UpGradeFileRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SHARK_UpGradeFileRequest) PARSER.parseFrom(byteString);
        }

        public static SHARK_UpGradeFileRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_UpGradeFileRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SHARK_UpGradeFileRequest) PARSER.parseFrom(bArr);
        }

        public static SHARK_UpGradeFileRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_UpGradeFileRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileRequest parseFrom(InputStream inputStream) throws IOException {
            return (SHARK_UpGradeFileRequest) PARSER.parseFrom(inputStream);
        }

        public static SHARK_UpGradeFileRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_UpGradeFileRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SHARK_UpGradeFileRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_UpGradeFileRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_UpGradeFileRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SHARK_UpGradeFileRequest) PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_UpGradeFileRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_UpGradeFileRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SHARK_UpGradeFileRequest sHARK_UpGradeFileRequest) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_UpGradeFileRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SHARK_UpGradeFileRequestOrBuilder extends MessageOrBuilder {
        SHARK_FILECMD getFCmd();

        int getFCrc32();

        int getFSize();

        SHARK_FILETYPE getFType();

        int getVersion();

        boolean hasFCmd();

        boolean hasFCrc32();

        boolean hasFSize();

        boolean hasFType();

        boolean hasVersion();
    }

    public static final class SHARK_UpGradeFileResponse extends GeneratedMessage implements SHARK_UpGradeFileResponseOrBuilder {
        public static final int OFFSET_FIELD_NUMBER = 2;
        public static Parser<SHARK_UpGradeFileResponse> PARSER = new AbstractParser<SHARK_UpGradeFileResponse>() {
            /* renamed from: a */
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
        };
        public static final int RESULT_FIELD_NUMBER = 1;
        private static final SHARK_UpGradeFileResponse defaultInstance = new SHARK_UpGradeFileResponse(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int offset_;
        /* access modifiers changed from: private */
        public SHARK_UP_UERR result_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SHARK_UpGradeFileResponseOrBuilder {
            private int bitField0_;
            private int offset_;
            private SHARK_UP_UERR result_;

            public static final Descriptor getDescriptor() {
                return SharkProtos.o;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.p.ensureFieldAccessorsInitialized(SHARK_UpGradeFileResponse.class, Builder.class);
            }

            private Builder() {
                this.result_ = SHARK_UP_UERR.SHARK_UP_RESULT_OK;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = SHARK_UP_UERR.SHARK_UP_RESULT_OK;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SHARK_UpGradeFileResponse.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.result_ = SHARK_UP_UERR.SHARK_UP_RESULT_OK;
                this.bitField0_ &= -2;
                this.offset_ = 0;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SharkProtos.o;
            }

            public SHARK_UpGradeFileResponse getDefaultInstanceForType() {
                return SHARK_UpGradeFileResponse.getDefaultInstance();
            }

            public SHARK_UpGradeFileResponse build() {
                SHARK_UpGradeFileResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SHARK_UpGradeFileResponse buildPartial() {
                int i = 1;
                SHARK_UpGradeFileResponse sHARK_UpGradeFileResponse = new SHARK_UpGradeFileResponse(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sHARK_UpGradeFileResponse.result_ = this.result_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sHARK_UpGradeFileResponse.offset_ = this.offset_;
                sHARK_UpGradeFileResponse.bitField0_ = i;
                onBuilt();
                return sHARK_UpGradeFileResponse;
            }

            public boolean hasResult() {
                return (this.bitField0_ & 1) == 1;
            }

            public SHARK_UP_UERR getResult() {
                return this.result_;
            }

            public Builder setResult(SHARK_UP_UERR shark_up_uerr) {
                if (shark_up_uerr == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.result_ = shark_up_uerr;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -2;
                this.result_ = SHARK_UP_UERR.SHARK_UP_RESULT_OK;
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

        public enum SHARK_UP_UERR implements ProtocolMessageEnum {
            SHARK_UP_RESULT_OK(0, 1),
            SHARK_UP_RESULT_ERROR(1, 2),
            SHARK_UP_RESULT_LOW_POWER(2, 3);
            
            public static final int SHARK_UP_RESULT_ERROR_VALUE = 2;
            public static final int SHARK_UP_RESULT_LOW_POWER_VALUE = 3;
            public static final int SHARK_UP_RESULT_OK_VALUE = 1;
            private static final SHARK_UP_UERR[] VALUES = null;
            private static EnumLiteMap<SHARK_UP_UERR> internalValueMap;
            private final int index;
            private final int value;

            static {
                internalValueMap = new EnumLiteMap<SHARK_UP_UERR>() {
                    /* renamed from: a */
                    public SHARK_UP_UERR findValueByNumber(int i) {
                        return SHARK_UP_UERR.valueOf(i);
                    }
                };
                VALUES = values();
            }

            public final int getNumber() {
                return this.value;
            }

            public static SHARK_UP_UERR valueOf(int i) {
                switch (i) {
                    case 1:
                        return SHARK_UP_RESULT_OK;
                    case 2:
                        return SHARK_UP_RESULT_ERROR;
                    case 3:
                        return SHARK_UP_RESULT_LOW_POWER;
                    default:
                        return null;
                }
            }

            public static EnumLiteMap<SHARK_UP_UERR> internalGetValueMap() {
                return internalValueMap;
            }

            public final EnumValueDescriptor getValueDescriptor() {
                return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
            }

            public final EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            public static final EnumDescriptor getDescriptor() {
                return (EnumDescriptor) SHARK_UpGradeFileResponse.getDescriptor().getEnumTypes().get(0);
            }

            public static SHARK_UP_UERR valueOf(EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            private SHARK_UP_UERR(int i, int i2) {
                this.index = i;
                this.value = i2;
            }
        }

        private SHARK_UpGradeFileResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SHARK_UpGradeFileResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_UpGradeFileResponse getDefaultInstance() {
            return defaultInstance;
        }

        public SHARK_UpGradeFileResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SharkProtos.o;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.p.ensureFieldAccessorsInitialized(SHARK_UpGradeFileResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SHARK_UpGradeFileResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasResult() {
            return (this.bitField0_ & 1) == 1;
        }

        public SHARK_UP_UERR getResult() {
            return this.result_;
        }

        public boolean hasOffset() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getOffset() {
            return this.offset_;
        }

        private void initFields() {
            this.result_ = SHARK_UP_UERR.SHARK_UP_RESULT_OK;
            this.offset_ = 0;
        }

        public static SHARK_UpGradeFileResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SHARK_UpGradeFileResponse) PARSER.parseFrom(byteString);
        }

        public static SHARK_UpGradeFileResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_UpGradeFileResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SHARK_UpGradeFileResponse) PARSER.parseFrom(bArr);
        }

        public static SHARK_UpGradeFileResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_UpGradeFileResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileResponse parseFrom(InputStream inputStream) throws IOException {
            return (SHARK_UpGradeFileResponse) PARSER.parseFrom(inputStream);
        }

        public static SHARK_UpGradeFileResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_UpGradeFileResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SHARK_UpGradeFileResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_UpGradeFileResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_UpGradeFileResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UpGradeFileResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SHARK_UpGradeFileResponse) PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_UpGradeFileResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_UpGradeFileResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SHARK_UpGradeFileResponse sHARK_UpGradeFileResponse) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_UpGradeFileResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SHARK_UpGradeFileResponseOrBuilder extends MessageOrBuilder {
        int getOffset();

        SHARK_UP_UERR getResult();

        boolean hasOffset();

        boolean hasResult();
    }

    public static final class SHARK_UserActionStatistics extends GeneratedMessage implements SHARK_UserActionStatisticsOrBuilder {
        public static final int AZIMUTHMAP_FIELD_NUMBER = 2;
        public static final int BLUETOOTHDEVICE_FIELD_NUMBER = 5;
        public static final int BUSYLOCK_FIELD_NUMBER = 11;
        public static final int CHANNELSCAN_FIELD_NUMBER = 7;
        public static final int DOUBLEFREQ_FIELD_NUMBER = 8;
        public static final int FMRADIO_FIELD_NUMBER = 3;
        public static final int HANDSFREE_FIELD_NUMBER = 6;
        public static Parser<SHARK_UserActionStatistics> PARSER = new AbstractParser<SHARK_UserActionStatistics>() {
            /* renamed from: a */
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
        };
        public static final int POWERLEVEL_FIELD_NUMBER = 10;
        public static final int POWERON_FIELD_NUMBER = 1;
        public static final int QUICKTEAM_FIELD_NUMBER = 4;
        public static final int RESTOREFACTORY_FIELD_NUMBER = 14;
        public static final int SOSMODE_FIELD_NUMBER = 9;
        public static final int SQUELCHTAIL_FIELD_NUMBER = 12;
        public static final int WIDENARROW_FIELD_NUMBER = 13;
        private static final SHARK_UserActionStatistics defaultInstance = new SHARK_UserActionStatistics(true);
        /* access modifiers changed from: private */
        public int azimuthMap_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int bluetoothDevice_;
        /* access modifiers changed from: private */
        public int busyLock_;
        /* access modifiers changed from: private */
        public int channelScan_;
        /* access modifiers changed from: private */
        public int doubleFreq_;
        /* access modifiers changed from: private */
        public int fmRadio_;
        /* access modifiers changed from: private */
        public int handsFree_;
        /* access modifiers changed from: private */
        public int powerLevel_;
        /* access modifiers changed from: private */
        public int powerOn_;
        /* access modifiers changed from: private */
        public int quickTeam_;
        /* access modifiers changed from: private */
        public int restoreFactory_;
        /* access modifiers changed from: private */
        public int sosMode_;
        /* access modifiers changed from: private */
        public int squelchTail_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int wideNarrow_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SHARK_UserActionStatisticsOrBuilder {
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

            public static final Descriptor getDescriptor() {
                return SharkProtos.s;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SharkProtos.t.ensureFieldAccessorsInitialized(SHARK_UserActionStatistics.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SHARK_UserActionStatistics.alwaysUseFieldBuilders) {
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
                this.azimuthMap_ = 0;
                this.bitField0_ &= -3;
                this.fmRadio_ = 0;
                this.bitField0_ &= -5;
                this.quickTeam_ = 0;
                this.bitField0_ &= -9;
                this.bluetoothDevice_ = 0;
                this.bitField0_ &= -17;
                this.handsFree_ = 0;
                this.bitField0_ &= -33;
                this.channelScan_ = 0;
                this.bitField0_ &= -65;
                this.doubleFreq_ = 0;
                this.bitField0_ &= -129;
                this.sosMode_ = 0;
                this.bitField0_ &= -257;
                this.powerLevel_ = 0;
                this.bitField0_ &= -513;
                this.busyLock_ = 0;
                this.bitField0_ &= -1025;
                this.squelchTail_ = 0;
                this.bitField0_ &= -2049;
                this.wideNarrow_ = 0;
                this.bitField0_ &= -4097;
                this.restoreFactory_ = 0;
                this.bitField0_ &= -8193;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SharkProtos.s;
            }

            public SHARK_UserActionStatistics getDefaultInstanceForType() {
                return SHARK_UserActionStatistics.getDefaultInstance();
            }

            public SHARK_UserActionStatistics build() {
                SHARK_UserActionStatistics buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SHARK_UserActionStatistics buildPartial() {
                int i = 1;
                SHARK_UserActionStatistics sHARK_UserActionStatistics = new SHARK_UserActionStatistics(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sHARK_UserActionStatistics.powerOn_ = this.powerOn_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sHARK_UserActionStatistics.azimuthMap_ = this.azimuthMap_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sHARK_UserActionStatistics.fmRadio_ = this.fmRadio_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                sHARK_UserActionStatistics.quickTeam_ = this.quickTeam_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                sHARK_UserActionStatistics.bluetoothDevice_ = this.bluetoothDevice_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                sHARK_UserActionStatistics.handsFree_ = this.handsFree_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                sHARK_UserActionStatistics.channelScan_ = this.channelScan_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                sHARK_UserActionStatistics.doubleFreq_ = this.doubleFreq_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                sHARK_UserActionStatistics.sosMode_ = this.sosMode_;
                if ((i2 & 512) == 512) {
                    i |= 512;
                }
                sHARK_UserActionStatistics.powerLevel_ = this.powerLevel_;
                if ((i2 & 1024) == 1024) {
                    i |= 1024;
                }
                sHARK_UserActionStatistics.busyLock_ = this.busyLock_;
                if ((i2 & 2048) == 2048) {
                    i |= 2048;
                }
                sHARK_UserActionStatistics.squelchTail_ = this.squelchTail_;
                if ((i2 & 4096) == 4096) {
                    i |= 4096;
                }
                sHARK_UserActionStatistics.wideNarrow_ = this.wideNarrow_;
                if ((i2 & 8192) == 8192) {
                    i |= 8192;
                }
                sHARK_UserActionStatistics.restoreFactory_ = this.restoreFactory_;
                sHARK_UserActionStatistics.bitField0_ = i;
                onBuilt();
                return sHARK_UserActionStatistics;
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

            public boolean hasAzimuthMap() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getAzimuthMap() {
                return this.azimuthMap_;
            }

            public Builder setAzimuthMap(int i) {
                this.bitField0_ |= 2;
                this.azimuthMap_ = i;
                onChanged();
                return this;
            }

            public Builder clearAzimuthMap() {
                this.bitField0_ &= -3;
                this.azimuthMap_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFmRadio() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getFmRadio() {
                return this.fmRadio_;
            }

            public Builder setFmRadio(int i) {
                this.bitField0_ |= 4;
                this.fmRadio_ = i;
                onChanged();
                return this;
            }

            public Builder clearFmRadio() {
                this.bitField0_ &= -5;
                this.fmRadio_ = 0;
                onChanged();
                return this;
            }

            public boolean hasQuickTeam() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getQuickTeam() {
                return this.quickTeam_;
            }

            public Builder setQuickTeam(int i) {
                this.bitField0_ |= 8;
                this.quickTeam_ = i;
                onChanged();
                return this;
            }

            public Builder clearQuickTeam() {
                this.bitField0_ &= -9;
                this.quickTeam_ = 0;
                onChanged();
                return this;
            }

            public boolean hasBluetoothDevice() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getBluetoothDevice() {
                return this.bluetoothDevice_;
            }

            public Builder setBluetoothDevice(int i) {
                this.bitField0_ |= 16;
                this.bluetoothDevice_ = i;
                onChanged();
                return this;
            }

            public Builder clearBluetoothDevice() {
                this.bitField0_ &= -17;
                this.bluetoothDevice_ = 0;
                onChanged();
                return this;
            }

            public boolean hasHandsFree() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getHandsFree() {
                return this.handsFree_;
            }

            public Builder setHandsFree(int i) {
                this.bitField0_ |= 32;
                this.handsFree_ = i;
                onChanged();
                return this;
            }

            public Builder clearHandsFree() {
                this.bitField0_ &= -33;
                this.handsFree_ = 0;
                onChanged();
                return this;
            }

            public boolean hasChannelScan() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getChannelScan() {
                return this.channelScan_;
            }

            public Builder setChannelScan(int i) {
                this.bitField0_ |= 64;
                this.channelScan_ = i;
                onChanged();
                return this;
            }

            public Builder clearChannelScan() {
                this.bitField0_ &= -65;
                this.channelScan_ = 0;
                onChanged();
                return this;
            }

            public boolean hasDoubleFreq() {
                return (this.bitField0_ & 128) == 128;
            }

            public int getDoubleFreq() {
                return this.doubleFreq_;
            }

            public Builder setDoubleFreq(int i) {
                this.bitField0_ |= 128;
                this.doubleFreq_ = i;
                onChanged();
                return this;
            }

            public Builder clearDoubleFreq() {
                this.bitField0_ &= -129;
                this.doubleFreq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasSosMode() {
                return (this.bitField0_ & 256) == 256;
            }

            public int getSosMode() {
                return this.sosMode_;
            }

            public Builder setSosMode(int i) {
                this.bitField0_ |= 256;
                this.sosMode_ = i;
                onChanged();
                return this;
            }

            public Builder clearSosMode() {
                this.bitField0_ &= -257;
                this.sosMode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasPowerLevel() {
                return (this.bitField0_ & 512) == 512;
            }

            public int getPowerLevel() {
                return this.powerLevel_;
            }

            public Builder setPowerLevel(int i) {
                this.bitField0_ |= 512;
                this.powerLevel_ = i;
                onChanged();
                return this;
            }

            public Builder clearPowerLevel() {
                this.bitField0_ &= -513;
                this.powerLevel_ = 0;
                onChanged();
                return this;
            }

            public boolean hasBusyLock() {
                return (this.bitField0_ & 1024) == 1024;
            }

            public int getBusyLock() {
                return this.busyLock_;
            }

            public Builder setBusyLock(int i) {
                this.bitField0_ |= 1024;
                this.busyLock_ = i;
                onChanged();
                return this;
            }

            public Builder clearBusyLock() {
                this.bitField0_ &= -1025;
                this.busyLock_ = 0;
                onChanged();
                return this;
            }

            public boolean hasSquelchTail() {
                return (this.bitField0_ & 2048) == 2048;
            }

            public int getSquelchTail() {
                return this.squelchTail_;
            }

            public Builder setSquelchTail(int i) {
                this.bitField0_ |= 2048;
                this.squelchTail_ = i;
                onChanged();
                return this;
            }

            public Builder clearSquelchTail() {
                this.bitField0_ &= -2049;
                this.squelchTail_ = 0;
                onChanged();
                return this;
            }

            public boolean hasWideNarrow() {
                return (this.bitField0_ & 4096) == 4096;
            }

            public int getWideNarrow() {
                return this.wideNarrow_;
            }

            public Builder setWideNarrow(int i) {
                this.bitField0_ |= 4096;
                this.wideNarrow_ = i;
                onChanged();
                return this;
            }

            public Builder clearWideNarrow() {
                this.bitField0_ &= -4097;
                this.wideNarrow_ = 0;
                onChanged();
                return this;
            }

            public boolean hasRestoreFactory() {
                return (this.bitField0_ & 8192) == 8192;
            }

            public int getRestoreFactory() {
                return this.restoreFactory_;
            }

            public Builder setRestoreFactory(int i) {
                this.bitField0_ |= 8192;
                this.restoreFactory_ = i;
                onChanged();
                return this;
            }

            public Builder clearRestoreFactory() {
                this.bitField0_ &= -8193;
                this.restoreFactory_ = 0;
                onChanged();
                return this;
            }
        }

        private SHARK_UserActionStatistics(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private SHARK_UserActionStatistics(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SHARK_UserActionStatistics getDefaultInstance() {
            return defaultInstance;
        }

        public SHARK_UserActionStatistics getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return SharkProtos.s;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SharkProtos.t.ensureFieldAccessorsInitialized(SHARK_UserActionStatistics.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SHARK_UserActionStatistics> getParserForType() {
            return PARSER;
        }

        public boolean hasPowerOn() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getPowerOn() {
            return this.powerOn_;
        }

        public boolean hasAzimuthMap() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getAzimuthMap() {
            return this.azimuthMap_;
        }

        public boolean hasFmRadio() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getFmRadio() {
            return this.fmRadio_;
        }

        public boolean hasQuickTeam() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getQuickTeam() {
            return this.quickTeam_;
        }

        public boolean hasBluetoothDevice() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getBluetoothDevice() {
            return this.bluetoothDevice_;
        }

        public boolean hasHandsFree() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getHandsFree() {
            return this.handsFree_;
        }

        public boolean hasChannelScan() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getChannelScan() {
            return this.channelScan_;
        }

        public boolean hasDoubleFreq() {
            return (this.bitField0_ & 128) == 128;
        }

        public int getDoubleFreq() {
            return this.doubleFreq_;
        }

        public boolean hasSosMode() {
            return (this.bitField0_ & 256) == 256;
        }

        public int getSosMode() {
            return this.sosMode_;
        }

        public boolean hasPowerLevel() {
            return (this.bitField0_ & 512) == 512;
        }

        public int getPowerLevel() {
            return this.powerLevel_;
        }

        public boolean hasBusyLock() {
            return (this.bitField0_ & 1024) == 1024;
        }

        public int getBusyLock() {
            return this.busyLock_;
        }

        public boolean hasSquelchTail() {
            return (this.bitField0_ & 2048) == 2048;
        }

        public int getSquelchTail() {
            return this.squelchTail_;
        }

        public boolean hasWideNarrow() {
            return (this.bitField0_ & 4096) == 4096;
        }

        public int getWideNarrow() {
            return this.wideNarrow_;
        }

        public boolean hasRestoreFactory() {
            return (this.bitField0_ & 8192) == 8192;
        }

        public int getRestoreFactory() {
            return this.restoreFactory_;
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

        public static SHARK_UserActionStatistics parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SHARK_UserActionStatistics) PARSER.parseFrom(byteString);
        }

        public static SHARK_UserActionStatistics parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_UserActionStatistics) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SHARK_UserActionStatistics parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SHARK_UserActionStatistics) PARSER.parseFrom(bArr);
        }

        public static SHARK_UserActionStatistics parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SHARK_UserActionStatistics) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SHARK_UserActionStatistics parseFrom(InputStream inputStream) throws IOException {
            return (SHARK_UserActionStatistics) PARSER.parseFrom(inputStream);
        }

        public static SHARK_UserActionStatistics parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_UserActionStatistics) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UserActionStatistics parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SHARK_UserActionStatistics) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SHARK_UserActionStatistics parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_UserActionStatistics) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SHARK_UserActionStatistics parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SHARK_UserActionStatistics) PARSER.parseFrom(codedInputStream);
        }

        public static SHARK_UserActionStatistics parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SHARK_UserActionStatistics) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SHARK_UserActionStatistics sHARK_UserActionStatistics) {
            return (Builder) newBuilder().mergeFrom((Message) sHARK_UserActionStatistics);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

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

    public static FileDescriptor a() {
        return u;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u000bshark.proto\u0012\u0006protos\"æ\u0002\n\rSHARK_Connect\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012(\n\bconnCode\u0018\u0002 \u0002(\u000e2\u0016.protos.SHARK_CONNCODE\u0012\u0010\n\bdeviceId\u0018\u0003 \u0001(\r\u0012\u0012\n\ndeviceType\u0018\u0004 \u0001(\r\u00124\n\u0007appMode\u0018\u0005 \u0001(\u000e2#.protos.SHARK_Connect.SHARK_APPTYPE\u0012:\n\blanguage\u0018\u0006 \u0001(\u000e2(.protos.SHARK_Connect.SHARK_LANGUAGETYPE\u0012\r\n\u0005btmac\u0018\u0007 \u0001(\f\"7\n\rSHARK_APPTYPE\u0012\u0011\n\rSHARK_OWN_APP\u0010\u0000\u0012\u0013\n\u000fSHARK_MIJIA_APP\u0010\u0001\":\n\u0012SHARK_LANGUAGETYPE\u0012\u0011\n\rSHARK_CHINESE\u0010\u0000\u0012\u0011\n\rSHARK_ENGLISH\u0010\u0001\"\u0003\n\u0011SHARK_Channel", "Info\u0012\r\n\u0005ch_no\u0018\u0001 \u0001(\r\u00127\n\u0007ch_type\u0018\u0002 \u0001(\u000e2&.protos.SHARK_ChannelInfo.SHARK_CHTYPE\u0012\u0012\n\nch_txPower\u0018\u0003 \u0001(\r\u0012\u0011\n\tch_rxFreq\u0018\u0004 \u0001(\r\u0012\u0011\n\tch_txFreq\u0018\u0005 \u0001(\r\u0012\u000f\n\u0007ch_name\u0018\u0006 \u0001(\f\u0012\r\n\u0005ch_sq\u0018\u0007 \u0001(\r\u0012\u000e\n\u0006ch_vox\u0018\b \u0001(\r\u0012\u0010\n\bch_rxCss\u0018\t \u0001(\r\u0012\u0010\n\bch_txCss\u0018\n \u0001(\r\u0012%\n\u0007ch_elim\u0018\u000b \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012\u000f\n\u0007ch_band\u0018\f \u0001(\r\u0012'\n\tch_polite\u0018\r \u0001(\u000e2\u0014.protos.SHARK_SWITCH\"E\n\fSHARK_CHTYPE\u0012\u0010\n\fSHARK_PUBLIC\u0010\u0000\u0012\u0010\n\fSHARK_REMOTE\u0010\u0001\u0012\u0011\n\rSHARK_USERDEF\u0010\u0002\"ú\u0004\n\u0011SHARK_Dev", "iceParam\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u00128\n\u0006result\u0018\u0002 \u0001(\u000e2(.protos.SHARK_DeviceParam.SHARK_DEV_UERR\u0012)\n\u000bfullInquiry\u0018\u0003 \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012\r\n\u0005verHw\u0018\u0004 \u0001(\r\u0012\u000f\n\u0007verSoft\u0018\u0005 \u0001(\r\u0012\u0012\n\ndeviceName\u0018\u0006 \u0001(\f\u0012\u000f\n\u0007bleName\u0018\u0007 \u0001(\f\u0012\u000e\n\u0006charge\u0018\b \u0001(\r\u0012\u0010\n\bactivate\u0018\t \u0001(\r\u0012&\n\bshareLoc\u0018\n \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012\u000f\n\u0007btAudio\u0018\u000b \u0001(\r\u0012%\n\u0002ch\u0018\f \u0001(\u000b2\u0019.protos.SHARK_ChannelInfo\u0012(\n\nvoiceAlert\u0018\r \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012)\n\u000bisAllPublic\u0018\u000e \u0001(\u000e2\u0014.protos.SH", "ARK_SWITCH\u0012\u0012\n\npwsaveMode\u0018\u000f \u0001(\r\u0012\u0011\n\ttimeStamp\u0018\u001e \u0001(\r\u0012)\n\u000btimeDisplay\u0018\u001f \u0001(\u000e2\u0014.protos.SHARK_SWITCH\"\u0001\n\u000eSHARK_DEV_UERR\u0012\u0018\n\u0014SHARK_PARAM_QUERY_OK\u0010\u0001\u0012\u001b\n\u0017SHARK_PARAM_QUERY_ERROR\u0010\u0002\u0012\u0019\n\u0015SHARK_PARAM_UPDATE_OK\u0010\u0003\u0012\u001c\n\u0018SHARK_PARAM_UPDATE_ERROR\u0010\u0004\"\u0005\n\u0019SHARK_ChannelStateOperate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012?\n\u0006result\u0018\u0002 \u0001(\u000e2/.protos.SHARK_ChannelStateOperate.SHARK_ST_UERR\u0012@\n\u0006option\u0018\u0003 \u0001(\u000e20.protos.SHARK_ChannelStateOperate.SHARK_STOPTIO", "N\u0012@\n\ndeviceMode\u0018\u0004 \u0001(\u000e2,.protos.SHARK_ChannelStateOperate.SHARK_MODE\u0012\u0011\n\tstateMode\u0018\u0005 \u0001(\r\u0012&\n\u0003ch1\u0018\u0006 \u0001(\u000b2\u0019.protos.SHARK_ChannelInfo\u0012&\n\u0003ch2\u0018\u0007 \u0001(\u000b2\u0019.protos.SHARK_ChannelInfo\u0012\u0013\n\u000bcurrentChId\u0018\b \u0001(\r\"^\n\rSHARK_ST_UERR\u0012\u000f\n\u000bSHARK_ST_OK\u0010\u0000\u0012\u0012\n\u000eSHARK_ST_ERROR\u0010\u0001\u0012\u0012\n\u000eSHARK_ST_EMPTY\u0010\u0002\u0012\u0014\n\u0010SHARK_ST_FORBIDE\u0010\u0003\"9\n\u000eSHARK_STOPTION\u0012\u0013\n\u000fSHARK_ST_UPDATE\u0010\u0000\u0012\u0012\n\u000eSHARK_ST_QUERY\u0010\u0001\"\u0001\n\nSHARK_MODE\u0012\u0015\n\u0011SHARK_MODE_NORMAL\u0010\u0000\u0012\u000f\n\u000bSHARK_SOS_T\u0010\u0001\u0012\u000f\n", "\u000bSHARK_SOS_R\u0010\u0002\u0012\u0011\n\rSHARK_SCAN_CH\u0010\u0003\u0012\u0013\n\u000fSHARK_SCAN_FREQ\u0010\u0004\u0012\u0010\n\fSHARK_TEAM_M\u0010\u0005\u0012\u0010\n\fSHARK_TEAM_S\u0010\u0006\"Ñ\u0003\n\u0018SHARK_ChannelInfoOperate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012>\n\u0006result\u0018\u0002 \u0001(\u000e2..protos.SHARK_ChannelInfoOperate.SHARK_CH_UERR\u0012?\n\u0006option\u0018\u0003 \u0001(\u000e2/.protos.SHARK_ChannelInfoOperate.SHARK_CHOPTION\u0012%\n\u0002ch\u0018\u0004 \u0001(\u000b2\u0019.protos.SHARK_ChannelInfo\"\u0001\n\rSHARK_CH_UERR\u0012\u000f\n\u000bSHARK_CH_OK\u0010\u0000\u0012\u0012\n\u000eSHARK_CH_ERROR\u0010\u0001\u0012\u0012\n\u000eSHARK_CH_EMPTY\u0010\u0002\u0012\u0014\n\u0010SHARK_CH_FORBIDE\u0010", "\u0003\u0012\u001b\n\u0017SHARK_CH_QUERY_CONTINUE\u0010\u0004\u0012\u0019\n\u0015SHARK_CH_QUERY_FINISH\u0010\u0005\"c\n\u000eSHARK_CHOPTION\u0012\u0013\n\u000fSHARK_CH_INSERT\u0010\u0000\u0012\u0013\n\u000fSHARK_CH_DELETE\u0010\u0001\u0012\u0013\n\u000fSHARK_CH_MODIFY\u0010\u0002\u0012\u0012\n\u000eSHARK_CH_QUERY\u0010\u0003\"Ø\u0001\n\u0012SHARK_LocationInfo\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012%\n\u0007ctlsync\u0018\u0002 \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\r\u0012\u0010\n\buserName\u0018\u0004 \u0001(\f\u0012\u0010\n\buserFreq\u0018\u0005 \u0001(\r\u0012\u0011\n\tlongitude\u0018\u0006 \u0001(\u0011\u0012\u0010\n\blatitude\u0018\u0007 \u0001(\u0011\u0012\u0010\n\baltitude\u0018\b \u0001(\u0011\u0012\u0010\n\btimeSync\u0018\t \u0001(\r\u0012\r\n\u0005rxCss\u0018\n \u0001(\r\"à\u0002\n\u0018SHARK_UpGradeFileR", "equest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012<\n\u0004fCmd\u0018\u0002 \u0002(\u000e2..protos.SHARK_UpGradeFileRequest.SHARK_FILECMD\u0012>\n\u0005fType\u0018\u0003 \u0002(\u000e2/.protos.SHARK_UpGradeFileRequest.SHARK_FILETYPE\u0012\r\n\u0005fSize\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006fCrc32\u0018\u0005 \u0001(\r\"M\n\rSHARK_FILECMD\u0012\u0012\n\u000eSHARK_UP_START\u0010\u0001\u0012\u0013\n\u000fSHARK_UP_COMPLE\u0010\u0002\u0012\u0013\n\u000fSHARK_UP_REBOOT\u0010\u0003\"G\n\u000eSHARK_FILETYPE\u0012\u001a\n\u0016SHARK_APP_UPGRADE_FILE\u0010\u0001\u0012\u0019\n\u0015SHARK_MCU_UPLOAD_FILE\u0010\u0002\"Ï\u0001\n\u0019SHARK_UpGradeFileResponse\u0012?\n\u0006result\u0018\u0001 \u0002(\u000e2/.protos.SHARK_UpGrad", "eFileResponse.SHARK_UP_UERR\u0012\u000e\n\u0006offset\u0018\u0002 \u0001(\r\"a\n\rSHARK_UP_UERR\u0012\u0016\n\u0012SHARK_UP_RESULT_OK\u0010\u0001\u0012\u0019\n\u0015SHARK_UP_RESULT_ERROR\u0010\u0002\u0012\u001d\n\u0019SHARK_UP_RESULT_LOW_POWER\u0010\u0003\"B\n\u0015SHARK_UpGradeFilePack\u0012\u000e\n\u0006offset\u0018\u0001 \u0002(\r\u0012\f\n\u0004data\u0018\u0002 \u0002(\f\u0012\u000b\n\u0003xor\u0018\u0003 \u0002(\r\"²\u0002\n\u001aSHARK_UserActionStatistics\u0012\u000f\n\u0007powerOn\u0018\u0001 \u0001(\r\u0012\u0012\n\nazimuthMap\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007fmRadio\u0018\u0003 \u0001(\r\u0012\u0011\n\tquickTeam\u0018\u0004 \u0001(\r\u0012\u0017\n\u000fbluetoothDevice\u0018\u0005 \u0001(\r\u0012\u0011\n\thandsFree\u0018\u0006 \u0001(\r\u0012\u0013\n\u000bchannelScan\u0018\u0007 \u0001(\r\u0012\u0012\n\ndoubleFreq\u0018\b \u0001(\r\u0012", "\u000f\n\u0007sosMode\u0018\t \u0001(\r\u0012\u0012\n\npowerLevel\u0018\n \u0001(\r\u0012\u0010\n\bbusyLock\u0018\u000b \u0001(\r\u0012\u0013\n\u000bsquelchTail\u0018\f \u0001(\r\u0012\u0012\n\nwideNarrow\u0018\r \u0001(\r\u0012\u0016\n\u000erestoreFactory\u0018\u000e \u0001(\r*ç\u0001\n\u000eSHARK_CONNCODE\u0012\u0014\n\u0010SHARK_DISCONNECT\u0010\u0000\u0012\u0011\n\rSHARK_CONNECT\u0010\u0001\u0012\u000f\n\u000bSHARK_ALLOW\u0010\u0004\u0012\u0010\n\fSHARK_REFUSE\u0010\u0005\u0012\u000e\n\nSHARK_WAIT\u0010\u0006\u0012\u0012\n\u000eSHARK_LOWPOWER\u0010\u0007\u0012\u0013\n\u000fSHARK_DIS_ALLOW\u0010\b\u0012\u0014\n\u0010SHARK_DIS_REFUSE\u0010\t\u0012\u0012\n\u000eSHARK_DIS_WAIT\u0010\n\u0012\u0016\n\u0012SHARK_DIS_LOWPOWER\u0010\u000b\u0012\u000e\n\nSHARK_BUSY\u0010\f*+\n\fSHARK_SWITCH\u0012\r\n\tSHARK_OFF\u0010\u0001\u0012\f\n\bSHARK_ON\u0010\u0002B,", "\n\u001bcom.ifengyu.intercom.protosB\u000bSharkProtosH\u0002"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                SharkProtos.u = fileDescriptor;
                return null;
            }
        });
    }
}
