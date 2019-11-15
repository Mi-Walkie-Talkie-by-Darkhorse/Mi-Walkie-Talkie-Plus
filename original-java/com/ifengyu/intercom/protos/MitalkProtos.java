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

public final class MitalkProtos {
    /* access modifiers changed from: private */
    public static FileDescriptor A;
    /* access modifiers changed from: private */
    public static final Descriptor a = ((Descriptor) a().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable b = new FieldAccessorTable(a, new String[]{"ConnectQuery", "ConnectResp", "Heartbeat", "Control", "ParamQuery", "ParamUpdate", "ParamResp", "StateQuery", "StateResp", "LocationSync", "LocationCtl", "FileReq", "FilePack", "FileResp", "LogReq", "TestReq", "TestResp", "UpdateResponse"});
    /* access modifiers changed from: private */
    public static final Descriptor c = ((Descriptor) a().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable d = new FieldAccessorTable(c, new String[]{"Version", "ConnCode", "DeviceId"});
    /* access modifiers changed from: private */
    public static final Descriptor e = ((Descriptor) a().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable f = new FieldAccessorTable(e, new String[]{"Version", "CtrlCode"});
    /* access modifiers changed from: private */
    public static final Descriptor g = ((Descriptor) a().getMessageTypes().get(3));
    /* access modifiers changed from: private */
    public static FieldAccessorTable h = new FieldAccessorTable(g, new String[]{"Version", "Result", "Mode", "DeviceId", "UserId", "UserName", "SosText", "VersionBLE", "VersionMCU", "StateMode", "DevNameUTF8", "DevNameGBK", "ShareLoc", "VersionHW", "LowPower", "VersionExtend", "ActivateChannel", "Language"});
    /* access modifiers changed from: private */
    public static final Descriptor i = ((Descriptor) a().getMessageTypes().get(4));
    /* access modifiers changed from: private */
    public static FieldAccessorTable j = new FieldAccessorTable(i, new String[]{"Version", "Result", "Option", "Ch1", "Ch2", "StateMode"});
    /* access modifiers changed from: private */
    public static final Descriptor k = ((Descriptor) a().getMessageTypes().get(5));
    /* access modifiers changed from: private */
    public static FieldAccessorTable l = new FieldAccessorTable(k, new String[]{"Freq", "Type", "No", "Name", "Sq", "Vox", "CssType", "CssCode", "CssInvert", "Freq2", "CssType2", "CssCode2", "CssInvert2"});
    /* access modifiers changed from: private */
    public static final Descriptor m = ((Descriptor) a().getMessageTypes().get(6));
    /* access modifiers changed from: private */
    public static FieldAccessorTable n = new FieldAccessorTable(m, new String[]{"Version", "Ctl", "UserId", "UserName", "Longitude", "Latitude", "Altitude", "Time", "Freq"});
    /* access modifiers changed from: private */
    public static final Descriptor o = ((Descriptor) a().getMessageTypes().get(7));
    /* access modifiers changed from: private */
    public static FieldAccessorTable p = new FieldAccessorTable(o, new String[]{"Version", "FCmd", "FType", "FSize", "FCrc32", "FVersion", "FPackNum"});
    /* access modifiers changed from: private */
    public static final Descriptor q = ((Descriptor) a().getMessageTypes().get(8));
    /* access modifiers changed from: private */
    public static FieldAccessorTable r = new FieldAccessorTable(q, new String[]{"Seq", "Xor", "Data"});
    /* access modifiers changed from: private */
    public static final Descriptor s = ((Descriptor) a().getMessageTypes().get(9));
    /* access modifiers changed from: private */
    public static FieldAccessorTable t = new FieldAccessorTable(s, new String[]{"Result", "AckSeq"});
    /* access modifiers changed from: private */
    public static final Descriptor u = ((Descriptor) a().getMessageTypes().get(10));
    /* access modifiers changed from: private */
    public static FieldAccessorTable v = new FieldAccessorTable(u, new String[]{"Version"});
    /* access modifiers changed from: private */
    public static final Descriptor w = ((Descriptor) a().getMessageTypes().get(11));
    /* access modifiers changed from: private */
    public static FieldAccessorTable x = new FieldAccessorTable(w, new String[]{"Version", "Data"});
    /* access modifiers changed from: private */
    public static final Descriptor y = ((Descriptor) a().getMessageTypes().get(12));
    /* access modifiers changed from: private */
    public static FieldAccessorTable z = new FieldAccessorTable(y, new String[]{"State", "Result", "Ack"});

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
        private static final CHOPTION[] VALUES = null;
        private static EnumLiteMap<CHOPTION> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<CHOPTION>() {
                /* renamed from: a */
                public CHOPTION findValueByNumber(int i) {
                    return CHOPTION.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static CHOPTION valueOf(int i) {
            switch (i) {
                case 0:
                    return CH_INSERT;
                case 1:
                    return CH_DELETE;
                case 2:
                    return CH_MODIFY;
                case 3:
                    return CH_QUERY;
                case 4:
                    return ST_UPDATE;
                case 5:
                    return ST_QUERY;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<CHOPTION> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) MitalkProtos.a().getEnumTypes().get(5);
        }

        public static CHOPTION valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private CHOPTION(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

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
        private static final CHTYPE[] VALUES = null;
        private static EnumLiteMap<CHTYPE> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<CHTYPE>() {
                /* renamed from: a */
                public CHTYPE findValueByNumber(int i) {
                    return CHTYPE.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
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

        public static EnumLiteMap<CHTYPE> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) MitalkProtos.a().getEnumTypes().get(6);
        }

        public static CHTYPE valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private CHTYPE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

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
        private static final CONNCODE[] VALUES = null;
        public static final int WAIT_VALUE = 4;
        private static EnumLiteMap<CONNCODE> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<CONNCODE>() {
                /* renamed from: a */
                public CONNCODE findValueByNumber(int i) {
                    return CONNCODE.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static CONNCODE valueOf(int i) {
            switch (i) {
                case 0:
                    return DISCONNECT;
                case 1:
                    return CONNECT;
                case 2:
                    return ALLOW;
                case 3:
                    return REFUSE;
                case 4:
                    return WAIT;
                case 5:
                    return REFUSE_LOWPOWER;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<CONNCODE> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) MitalkProtos.a().getEnumTypes().get(1);
        }

        public static CONNCODE valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private CONNCODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    public enum CTLSYNC implements ProtocolMessageEnum {
        DISABLE(0, 0),
        ENABLE(1, 1);
        
        public static final int DISABLE_VALUE = 0;
        public static final int ENABLE_VALUE = 1;
        private static final CTLSYNC[] VALUES = null;
        private static EnumLiteMap<CTLSYNC> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<CTLSYNC>() {
                /* renamed from: a */
                public CTLSYNC findValueByNumber(int i) {
                    return CTLSYNC.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static CTLSYNC valueOf(int i) {
            switch (i) {
                case 0:
                    return DISABLE;
                case 1:
                    return ENABLE;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<CTLSYNC> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) MitalkProtos.a().getEnumTypes().get(7);
        }

        public static CTLSYNC valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private CTLSYNC(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    public enum CTRLCODE implements ProtocolMessageEnum {
        RSTDEVICE(0, 0),
        RSTBLE(1, 1);
        
        public static final int RSTBLE_VALUE = 1;
        public static final int RSTDEVICE_VALUE = 0;
        private static final CTRLCODE[] VALUES = null;
        private static EnumLiteMap<CTRLCODE> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<CTRLCODE>() {
                /* renamed from: a */
                public CTRLCODE findValueByNumber(int i) {
                    return CTRLCODE.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static CTRLCODE valueOf(int i) {
            switch (i) {
                case 0:
                    return RSTDEVICE;
                case 1:
                    return RSTBLE;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<CTRLCODE> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) MitalkProtos.a().getEnumTypes().get(2);
        }

        public static CTRLCODE valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private CTRLCODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

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
        public static Parser<ChannelInfo> PARSER = new AbstractParser<ChannelInfo>() {
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
        };
        public static final int SQ_FIELD_NUMBER = 5;
        public static final int TYPE_FIELD_NUMBER = 2;
        public static final int VOX_FIELD_NUMBER = 6;
        private static final ChannelInfo defaultInstance = new ChannelInfo(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int cssCode2_;
        /* access modifiers changed from: private */
        public int cssCode_;
        /* access modifiers changed from: private */
        public int cssInvert2_;
        /* access modifiers changed from: private */
        public int cssInvert_;
        /* access modifiers changed from: private */
        public int cssType2_;
        /* access modifiers changed from: private */
        public int cssType_;
        /* access modifiers changed from: private */
        public int freq2_;
        /* access modifiers changed from: private */
        public int freq_;
        /* access modifiers changed from: private */
        public ByteString name_;
        /* access modifiers changed from: private */
        public int no_;
        /* access modifiers changed from: private */
        public int sq_;
        /* access modifiers changed from: private */
        public CHTYPE type_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int vox_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ChannelInfoOrBuilder {
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

            public static final Descriptor getDescriptor() {
                return MitalkProtos.k;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.l.ensureFieldAccessorsInitialized(ChannelInfo.class, Builder.class);
            }

            private Builder() {
                this.type_ = CHTYPE.PRESET;
                this.name_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.type_ = CHTYPE.PRESET;
                this.name_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (ChannelInfo.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.freq_ = 0;
                this.bitField0_ &= -2;
                this.type_ = CHTYPE.PRESET;
                this.bitField0_ &= -3;
                this.no_ = 0;
                this.bitField0_ &= -5;
                this.name_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                this.sq_ = 0;
                this.bitField0_ &= -17;
                this.vox_ = 0;
                this.bitField0_ &= -33;
                this.cssType_ = 0;
                this.bitField0_ &= -65;
                this.cssCode_ = 0;
                this.bitField0_ &= -129;
                this.cssInvert_ = 0;
                this.bitField0_ &= -257;
                this.freq2_ = 0;
                this.bitField0_ &= -513;
                this.cssType2_ = 0;
                this.bitField0_ &= -1025;
                this.cssCode2_ = 0;
                this.bitField0_ &= -2049;
                this.cssInvert2_ = 0;
                this.bitField0_ &= -4097;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.k;
            }

            public ChannelInfo getDefaultInstanceForType() {
                return ChannelInfo.getDefaultInstance();
            }

            public ChannelInfo build() {
                ChannelInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ChannelInfo buildPartial() {
                int i = 1;
                ChannelInfo channelInfo = new ChannelInfo(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                channelInfo.freq_ = this.freq_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                channelInfo.type_ = this.type_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                channelInfo.no_ = this.no_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                channelInfo.name_ = this.name_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                channelInfo.sq_ = this.sq_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                channelInfo.vox_ = this.vox_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                channelInfo.cssType_ = this.cssType_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                channelInfo.cssCode_ = this.cssCode_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                channelInfo.cssInvert_ = this.cssInvert_;
                if ((i2 & 512) == 512) {
                    i |= 512;
                }
                channelInfo.freq2_ = this.freq2_;
                if ((i2 & 1024) == 1024) {
                    i |= 1024;
                }
                channelInfo.cssType2_ = this.cssType2_;
                if ((i2 & 2048) == 2048) {
                    i |= 2048;
                }
                channelInfo.cssCode2_ = this.cssCode2_;
                if ((i2 & 4096) == 4096) {
                    i |= 4096;
                }
                channelInfo.cssInvert2_ = this.cssInvert2_;
                channelInfo.bitField0_ = i;
                onBuilt();
                return channelInfo;
            }

            public boolean hasFreq() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getFreq() {
                return this.freq_;
            }

            public Builder setFreq(int i) {
                this.bitField0_ |= 1;
                this.freq_ = i;
                onChanged();
                return this;
            }

            public Builder clearFreq() {
                this.bitField0_ &= -2;
                this.freq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasType() {
                return (this.bitField0_ & 2) == 2;
            }

            public CHTYPE getType() {
                return this.type_;
            }

            public Builder setType(CHTYPE chtype) {
                if (chtype == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.type_ = chtype;
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.bitField0_ &= -3;
                this.type_ = CHTYPE.PRESET;
                onChanged();
                return this;
            }

            public boolean hasNo() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getNo() {
                return this.no_;
            }

            public Builder setNo(int i) {
                this.bitField0_ |= 4;
                this.no_ = i;
                onChanged();
                return this;
            }

            public Builder clearNo() {
                this.bitField0_ &= -5;
                this.no_ = 0;
                onChanged();
                return this;
            }

            public boolean hasName() {
                return (this.bitField0_ & 8) == 8;
            }

            public ByteString getName() {
                return this.name_;
            }

            public Builder setName(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.bitField0_ &= -9;
                this.name_ = ChannelInfo.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public boolean hasSq() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getSq() {
                return this.sq_;
            }

            public Builder setSq(int i) {
                this.bitField0_ |= 16;
                this.sq_ = i;
                onChanged();
                return this;
            }

            public Builder clearSq() {
                this.bitField0_ &= -17;
                this.sq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasVox() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getVox() {
                return this.vox_;
            }

            public Builder setVox(int i) {
                this.bitField0_ |= 32;
                this.vox_ = i;
                onChanged();
                return this;
            }

            public Builder clearVox() {
                this.bitField0_ &= -33;
                this.vox_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCssType() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getCssType() {
                return this.cssType_;
            }

            public Builder setCssType(int i) {
                this.bitField0_ |= 64;
                this.cssType_ = i;
                onChanged();
                return this;
            }

            public Builder clearCssType() {
                this.bitField0_ &= -65;
                this.cssType_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCssCode() {
                return (this.bitField0_ & 128) == 128;
            }

            public int getCssCode() {
                return this.cssCode_;
            }

            public Builder setCssCode(int i) {
                this.bitField0_ |= 128;
                this.cssCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearCssCode() {
                this.bitField0_ &= -129;
                this.cssCode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCssInvert() {
                return (this.bitField0_ & 256) == 256;
            }

            public int getCssInvert() {
                return this.cssInvert_;
            }

            public Builder setCssInvert(int i) {
                this.bitField0_ |= 256;
                this.cssInvert_ = i;
                onChanged();
                return this;
            }

            public Builder clearCssInvert() {
                this.bitField0_ &= -257;
                this.cssInvert_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFreq2() {
                return (this.bitField0_ & 512) == 512;
            }

            public int getFreq2() {
                return this.freq2_;
            }

            public Builder setFreq2(int i) {
                this.bitField0_ |= 512;
                this.freq2_ = i;
                onChanged();
                return this;
            }

            public Builder clearFreq2() {
                this.bitField0_ &= -513;
                this.freq2_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCssType2() {
                return (this.bitField0_ & 1024) == 1024;
            }

            public int getCssType2() {
                return this.cssType2_;
            }

            public Builder setCssType2(int i) {
                this.bitField0_ |= 1024;
                this.cssType2_ = i;
                onChanged();
                return this;
            }

            public Builder clearCssType2() {
                this.bitField0_ &= -1025;
                this.cssType2_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCssCode2() {
                return (this.bitField0_ & 2048) == 2048;
            }

            public int getCssCode2() {
                return this.cssCode2_;
            }

            public Builder setCssCode2(int i) {
                this.bitField0_ |= 2048;
                this.cssCode2_ = i;
                onChanged();
                return this;
            }

            public Builder clearCssCode2() {
                this.bitField0_ &= -2049;
                this.cssCode2_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCssInvert2() {
                return (this.bitField0_ & 4096) == 4096;
            }

            public int getCssInvert2() {
                return this.cssInvert2_;
            }

            public Builder setCssInvert2(int i) {
                this.bitField0_ |= 4096;
                this.cssInvert2_ = i;
                onChanged();
                return this;
            }

            public Builder clearCssInvert2() {
                this.bitField0_ &= -4097;
                this.cssInvert2_ = 0;
                onChanged();
                return this;
            }
        }

        private ChannelInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private ChannelInfo(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ChannelInfo getDefaultInstance() {
            return defaultInstance;
        }

        public ChannelInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.k;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.l.ensureFieldAccessorsInitialized(ChannelInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ChannelInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasFreq() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getFreq() {
            return this.freq_;
        }

        public boolean hasType() {
            return (this.bitField0_ & 2) == 2;
        }

        public CHTYPE getType() {
            return this.type_;
        }

        public boolean hasNo() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getNo() {
            return this.no_;
        }

        public boolean hasName() {
            return (this.bitField0_ & 8) == 8;
        }

        public ByteString getName() {
            return this.name_;
        }

        public boolean hasSq() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getSq() {
            return this.sq_;
        }

        public boolean hasVox() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getVox() {
            return this.vox_;
        }

        public boolean hasCssType() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getCssType() {
            return this.cssType_;
        }

        public boolean hasCssCode() {
            return (this.bitField0_ & 128) == 128;
        }

        public int getCssCode() {
            return this.cssCode_;
        }

        public boolean hasCssInvert() {
            return (this.bitField0_ & 256) == 256;
        }

        public int getCssInvert() {
            return this.cssInvert_;
        }

        public boolean hasFreq2() {
            return (this.bitField0_ & 512) == 512;
        }

        public int getFreq2() {
            return this.freq2_;
        }

        public boolean hasCssType2() {
            return (this.bitField0_ & 1024) == 1024;
        }

        public int getCssType2() {
            return this.cssType2_;
        }

        public boolean hasCssCode2() {
            return (this.bitField0_ & 2048) == 2048;
        }

        public int getCssCode2() {
            return this.cssCode2_;
        }

        public boolean hasCssInvert2() {
            return (this.bitField0_ & 4096) == 4096;
        }

        public int getCssInvert2() {
            return this.cssInvert2_;
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

        public static ChannelInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ChannelInfo) PARSER.parseFrom(byteString);
        }

        public static ChannelInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ChannelInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ChannelInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ChannelInfo) PARSER.parseFrom(bArr);
        }

        public static ChannelInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ChannelInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ChannelInfo parseFrom(InputStream inputStream) throws IOException {
            return (ChannelInfo) PARSER.parseFrom(inputStream);
        }

        public static ChannelInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ChannelInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ChannelInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ChannelInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ChannelInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ChannelInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ChannelInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ChannelInfo) PARSER.parseFrom(codedInputStream);
        }

        public static ChannelInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ChannelInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ChannelInfo channelInfo) {
            return (Builder) newBuilder().mergeFrom((Message) channelInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

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
        public static Parser<Command> PARSER = new AbstractParser<Command>() {
            /* renamed from: a */
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
        };
        public static final int STATEQUERY_FIELD_NUMBER = 8;
        public static final int STATERESP_FIELD_NUMBER = 9;
        public static final int TESTREQ_FIELD_NUMBER = 16;
        public static final int TESTRESP_FIELD_NUMBER = 17;
        public static final int UPDATERESPONSE_FIELD_NUMBER = 18;
        private static final Command defaultInstance = new Command(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Connect connectQuery_;
        /* access modifiers changed from: private */
        public Connect connectResp_;
        /* access modifiers changed from: private */
        public Control control_;
        /* access modifiers changed from: private */
        public FilePack filePack_;
        /* access modifiers changed from: private */
        public FileRequest fileReq_;
        /* access modifiers changed from: private */
        public FileResponse fileResp_;
        /* access modifiers changed from: private */
        public Control heartbeat_;
        /* access modifiers changed from: private */
        public LocationSync locationCtl_;
        /* access modifiers changed from: private */
        public LocationSync locationSync_;
        /* access modifiers changed from: private */
        public LogRequest logReq_;
        /* access modifiers changed from: private */
        public ParamUpdate paramQuery_;
        /* access modifiers changed from: private */
        public ParamUpdate paramResp_;
        /* access modifiers changed from: private */
        public ParamUpdate paramUpdate_;
        /* access modifiers changed from: private */
        public StateUpdate stateQuery_;
        /* access modifiers changed from: private */
        public StateUpdate stateResp_;
        /* access modifiers changed from: private */
        public IntercomTest testReq_;
        /* access modifiers changed from: private */
        public IntercomTest testResp_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public UpdateResponse updateResponse_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements CommandOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<Connect, Builder, ConnectOrBuilder> connectQueryBuilder_;
            private Connect connectQuery_;
            private SingleFieldBuilder<Connect, Builder, ConnectOrBuilder> connectRespBuilder_;
            private Connect connectResp_;
            private SingleFieldBuilder<Control, Builder, ControlOrBuilder> controlBuilder_;
            private Control control_;
            private SingleFieldBuilder<FilePack, Builder, FilePackOrBuilder> filePackBuilder_;
            private FilePack filePack_;
            private SingleFieldBuilder<FileRequest, Builder, FileRequestOrBuilder> fileReqBuilder_;
            private FileRequest fileReq_;
            private SingleFieldBuilder<FileResponse, Builder, FileResponseOrBuilder> fileRespBuilder_;
            private FileResponse fileResp_;
            private SingleFieldBuilder<Control, Builder, ControlOrBuilder> heartbeatBuilder_;
            private Control heartbeat_;
            private SingleFieldBuilder<LocationSync, Builder, LocationSyncOrBuilder> locationCtlBuilder_;
            private LocationSync locationCtl_;
            private SingleFieldBuilder<LocationSync, Builder, LocationSyncOrBuilder> locationSyncBuilder_;
            private LocationSync locationSync_;
            private SingleFieldBuilder<LogRequest, Builder, LogRequestOrBuilder> logReqBuilder_;
            private LogRequest logReq_;
            private SingleFieldBuilder<ParamUpdate, Builder, ParamUpdateOrBuilder> paramQueryBuilder_;
            private ParamUpdate paramQuery_;
            private SingleFieldBuilder<ParamUpdate, Builder, ParamUpdateOrBuilder> paramRespBuilder_;
            private ParamUpdate paramResp_;
            private SingleFieldBuilder<ParamUpdate, Builder, ParamUpdateOrBuilder> paramUpdateBuilder_;
            private ParamUpdate paramUpdate_;
            private SingleFieldBuilder<StateUpdate, Builder, StateUpdateOrBuilder> stateQueryBuilder_;
            private StateUpdate stateQuery_;
            private SingleFieldBuilder<StateUpdate, Builder, StateUpdateOrBuilder> stateRespBuilder_;
            private StateUpdate stateResp_;
            private SingleFieldBuilder<IntercomTest, Builder, IntercomTestOrBuilder> testReqBuilder_;
            private IntercomTest testReq_;
            private SingleFieldBuilder<IntercomTest, Builder, IntercomTestOrBuilder> testRespBuilder_;
            private IntercomTest testResp_;
            private SingleFieldBuilder<UpdateResponse, Builder, UpdateResponseOrBuilder> updateResponseBuilder_;
            private UpdateResponse updateResponse_;

            public static final Descriptor getDescriptor() {
                return MitalkProtos.a;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.b.ensureFieldAccessorsInitialized(Command.class, Builder.class);
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

            private Builder(BuilderParent builderParent) {
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

            private void maybeForceBuilderInitialization() {
                if (Command.alwaysUseFieldBuilders) {
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

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                if (this.connectQueryBuilder_ == null) {
                    this.connectQuery_ = Connect.getDefaultInstance();
                } else {
                    this.connectQueryBuilder_.clear();
                }
                this.bitField0_ &= -2;
                if (this.connectRespBuilder_ == null) {
                    this.connectResp_ = Connect.getDefaultInstance();
                } else {
                    this.connectRespBuilder_.clear();
                }
                this.bitField0_ &= -3;
                if (this.heartbeatBuilder_ == null) {
                    this.heartbeat_ = Control.getDefaultInstance();
                } else {
                    this.heartbeatBuilder_.clear();
                }
                this.bitField0_ &= -5;
                if (this.controlBuilder_ == null) {
                    this.control_ = Control.getDefaultInstance();
                } else {
                    this.controlBuilder_.clear();
                }
                this.bitField0_ &= -9;
                if (this.paramQueryBuilder_ == null) {
                    this.paramQuery_ = ParamUpdate.getDefaultInstance();
                } else {
                    this.paramQueryBuilder_.clear();
                }
                this.bitField0_ &= -17;
                if (this.paramUpdateBuilder_ == null) {
                    this.paramUpdate_ = ParamUpdate.getDefaultInstance();
                } else {
                    this.paramUpdateBuilder_.clear();
                }
                this.bitField0_ &= -33;
                if (this.paramRespBuilder_ == null) {
                    this.paramResp_ = ParamUpdate.getDefaultInstance();
                } else {
                    this.paramRespBuilder_.clear();
                }
                this.bitField0_ &= -65;
                if (this.stateQueryBuilder_ == null) {
                    this.stateQuery_ = StateUpdate.getDefaultInstance();
                } else {
                    this.stateQueryBuilder_.clear();
                }
                this.bitField0_ &= -129;
                if (this.stateRespBuilder_ == null) {
                    this.stateResp_ = StateUpdate.getDefaultInstance();
                } else {
                    this.stateRespBuilder_.clear();
                }
                this.bitField0_ &= -257;
                if (this.locationSyncBuilder_ == null) {
                    this.locationSync_ = LocationSync.getDefaultInstance();
                } else {
                    this.locationSyncBuilder_.clear();
                }
                this.bitField0_ &= -513;
                if (this.locationCtlBuilder_ == null) {
                    this.locationCtl_ = LocationSync.getDefaultInstance();
                } else {
                    this.locationCtlBuilder_.clear();
                }
                this.bitField0_ &= -1025;
                if (this.fileReqBuilder_ == null) {
                    this.fileReq_ = FileRequest.getDefaultInstance();
                } else {
                    this.fileReqBuilder_.clear();
                }
                this.bitField0_ &= -2049;
                if (this.filePackBuilder_ == null) {
                    this.filePack_ = FilePack.getDefaultInstance();
                } else {
                    this.filePackBuilder_.clear();
                }
                this.bitField0_ &= -4097;
                if (this.fileRespBuilder_ == null) {
                    this.fileResp_ = FileResponse.getDefaultInstance();
                } else {
                    this.fileRespBuilder_.clear();
                }
                this.bitField0_ &= -8193;
                if (this.logReqBuilder_ == null) {
                    this.logReq_ = LogRequest.getDefaultInstance();
                } else {
                    this.logReqBuilder_.clear();
                }
                this.bitField0_ &= -16385;
                if (this.testReqBuilder_ == null) {
                    this.testReq_ = IntercomTest.getDefaultInstance();
                } else {
                    this.testReqBuilder_.clear();
                }
                this.bitField0_ &= -32769;
                if (this.testRespBuilder_ == null) {
                    this.testResp_ = IntercomTest.getDefaultInstance();
                } else {
                    this.testRespBuilder_.clear();
                }
                this.bitField0_ &= -65537;
                if (this.updateResponseBuilder_ == null) {
                    this.updateResponse_ = UpdateResponse.getDefaultInstance();
                } else {
                    this.updateResponseBuilder_.clear();
                }
                this.bitField0_ &= -131073;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.a;
            }

            public Command getDefaultInstanceForType() {
                return Command.getDefaultInstance();
            }

            public Command build() {
                Command buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public Command buildPartial() {
                Command command = new Command(this);
                int i = this.bitField0_;
                int i2 = 0;
                if ((i & 1) == 1) {
                    i2 = 1;
                }
                if (this.connectQueryBuilder_ == null) {
                    command.connectQuery_ = this.connectQuery_;
                } else {
                    command.connectQuery_ = (Connect) this.connectQueryBuilder_.build();
                }
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                if (this.connectRespBuilder_ == null) {
                    command.connectResp_ = this.connectResp_;
                } else {
                    command.connectResp_ = (Connect) this.connectRespBuilder_.build();
                }
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                if (this.heartbeatBuilder_ == null) {
                    command.heartbeat_ = this.heartbeat_;
                } else {
                    command.heartbeat_ = (Control) this.heartbeatBuilder_.build();
                }
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                if (this.controlBuilder_ == null) {
                    command.control_ = this.control_;
                } else {
                    command.control_ = (Control) this.controlBuilder_.build();
                }
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                if (this.paramQueryBuilder_ == null) {
                    command.paramQuery_ = this.paramQuery_;
                } else {
                    command.paramQuery_ = (ParamUpdate) this.paramQueryBuilder_.build();
                }
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                if (this.paramUpdateBuilder_ == null) {
                    command.paramUpdate_ = this.paramUpdate_;
                } else {
                    command.paramUpdate_ = (ParamUpdate) this.paramUpdateBuilder_.build();
                }
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                if (this.paramRespBuilder_ == null) {
                    command.paramResp_ = this.paramResp_;
                } else {
                    command.paramResp_ = (ParamUpdate) this.paramRespBuilder_.build();
                }
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                if (this.stateQueryBuilder_ == null) {
                    command.stateQuery_ = this.stateQuery_;
                } else {
                    command.stateQuery_ = (StateUpdate) this.stateQueryBuilder_.build();
                }
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                if (this.stateRespBuilder_ == null) {
                    command.stateResp_ = this.stateResp_;
                } else {
                    command.stateResp_ = (StateUpdate) this.stateRespBuilder_.build();
                }
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                if (this.locationSyncBuilder_ == null) {
                    command.locationSync_ = this.locationSync_;
                } else {
                    command.locationSync_ = (LocationSync) this.locationSyncBuilder_.build();
                }
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                if (this.locationCtlBuilder_ == null) {
                    command.locationCtl_ = this.locationCtl_;
                } else {
                    command.locationCtl_ = (LocationSync) this.locationCtlBuilder_.build();
                }
                if ((i & 2048) == 2048) {
                    i2 |= 2048;
                }
                if (this.fileReqBuilder_ == null) {
                    command.fileReq_ = this.fileReq_;
                } else {
                    command.fileReq_ = (FileRequest) this.fileReqBuilder_.build();
                }
                if ((i & 4096) == 4096) {
                    i2 |= 4096;
                }
                if (this.filePackBuilder_ == null) {
                    command.filePack_ = this.filePack_;
                } else {
                    command.filePack_ = (FilePack) this.filePackBuilder_.build();
                }
                if ((i & 8192) == 8192) {
                    i2 |= 8192;
                }
                if (this.fileRespBuilder_ == null) {
                    command.fileResp_ = this.fileResp_;
                } else {
                    command.fileResp_ = (FileResponse) this.fileRespBuilder_.build();
                }
                if ((i & 16384) == 16384) {
                    i2 |= 16384;
                }
                if (this.logReqBuilder_ == null) {
                    command.logReq_ = this.logReq_;
                } else {
                    command.logReq_ = (LogRequest) this.logReqBuilder_.build();
                }
                if ((i & 32768) == 32768) {
                    i2 |= 32768;
                }
                if (this.testReqBuilder_ == null) {
                    command.testReq_ = this.testReq_;
                } else {
                    command.testReq_ = (IntercomTest) this.testReqBuilder_.build();
                }
                if ((i & 65536) == 65536) {
                    i2 |= 65536;
                }
                if (this.testRespBuilder_ == null) {
                    command.testResp_ = this.testResp_;
                } else {
                    command.testResp_ = (IntercomTest) this.testRespBuilder_.build();
                }
                if ((i & 131072) == 131072) {
                    i2 |= 131072;
                }
                if (this.updateResponseBuilder_ == null) {
                    command.updateResponse_ = this.updateResponse_;
                } else {
                    command.updateResponse_ = (UpdateResponse) this.updateResponseBuilder_.build();
                }
                command.bitField0_ = i2;
                onBuilt();
                return command;
            }

            public boolean hasConnectQuery() {
                return (this.bitField0_ & 1) == 1;
            }

            public Connect getConnectQuery() {
                if (this.connectQueryBuilder_ == null) {
                    return this.connectQuery_;
                }
                return (Connect) this.connectQueryBuilder_.getMessage();
            }

            public Builder setConnectQuery(Connect connect) {
                if (this.connectQueryBuilder_ != null) {
                    this.connectQueryBuilder_.setMessage(connect);
                } else if (connect == null) {
                    throw new NullPointerException();
                } else {
                    this.connectQuery_ = connect;
                    onChanged();
                }
                this.bitField0_ |= 1;
                return this;
            }

            public Builder setConnectQuery(Builder builder) {
                if (this.connectQueryBuilder_ == null) {
                    this.connectQuery_ = builder.build();
                    onChanged();
                } else {
                    this.connectQueryBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 1;
                return this;
            }

            public Builder mergeConnectQuery(Connect connect) {
                if (this.connectQueryBuilder_ == null) {
                    if ((this.bitField0_ & 1) != 1 || this.connectQuery_ == Connect.getDefaultInstance()) {
                        this.connectQuery_ = connect;
                    } else {
                        this.connectQuery_ = ((Builder) Connect.newBuilder(this.connectQuery_).mergeFrom((Message) connect)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.connectQueryBuilder_.mergeFrom(connect);
                }
                this.bitField0_ |= 1;
                return this;
            }

            public Builder clearConnectQuery() {
                if (this.connectQueryBuilder_ == null) {
                    this.connectQuery_ = Connect.getDefaultInstance();
                    onChanged();
                } else {
                    this.connectQueryBuilder_.clear();
                }
                this.bitField0_ &= -2;
                return this;
            }

            public Builder getConnectQueryBuilder() {
                this.bitField0_ |= 1;
                onChanged();
                return (Builder) getConnectQueryFieldBuilder().getBuilder();
            }

            public ConnectOrBuilder getConnectQueryOrBuilder() {
                if (this.connectQueryBuilder_ != null) {
                    return (ConnectOrBuilder) this.connectQueryBuilder_.getMessageOrBuilder();
                }
                return this.connectQuery_;
            }

            private SingleFieldBuilder<Connect, Builder, ConnectOrBuilder> getConnectQueryFieldBuilder() {
                if (this.connectQueryBuilder_ == null) {
                    this.connectQueryBuilder_ = new SingleFieldBuilder<>(getConnectQuery(), getParentForChildren(), isClean());
                    this.connectQuery_ = null;
                }
                return this.connectQueryBuilder_;
            }

            public boolean hasConnectResp() {
                return (this.bitField0_ & 2) == 2;
            }

            public Connect getConnectResp() {
                if (this.connectRespBuilder_ == null) {
                    return this.connectResp_;
                }
                return (Connect) this.connectRespBuilder_.getMessage();
            }

            public Builder setConnectResp(Connect connect) {
                if (this.connectRespBuilder_ != null) {
                    this.connectRespBuilder_.setMessage(connect);
                } else if (connect == null) {
                    throw new NullPointerException();
                } else {
                    this.connectResp_ = connect;
                    onChanged();
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setConnectResp(Builder builder) {
                if (this.connectRespBuilder_ == null) {
                    this.connectResp_ = builder.build();
                    onChanged();
                } else {
                    this.connectRespBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder mergeConnectResp(Connect connect) {
                if (this.connectRespBuilder_ == null) {
                    if ((this.bitField0_ & 2) != 2 || this.connectResp_ == Connect.getDefaultInstance()) {
                        this.connectResp_ = connect;
                    } else {
                        this.connectResp_ = ((Builder) Connect.newBuilder(this.connectResp_).mergeFrom((Message) connect)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.connectRespBuilder_.mergeFrom(connect);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder clearConnectResp() {
                if (this.connectRespBuilder_ == null) {
                    this.connectResp_ = Connect.getDefaultInstance();
                    onChanged();
                } else {
                    this.connectRespBuilder_.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            public Builder getConnectRespBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return (Builder) getConnectRespFieldBuilder().getBuilder();
            }

            public ConnectOrBuilder getConnectRespOrBuilder() {
                if (this.connectRespBuilder_ != null) {
                    return (ConnectOrBuilder) this.connectRespBuilder_.getMessageOrBuilder();
                }
                return this.connectResp_;
            }

            private SingleFieldBuilder<Connect, Builder, ConnectOrBuilder> getConnectRespFieldBuilder() {
                if (this.connectRespBuilder_ == null) {
                    this.connectRespBuilder_ = new SingleFieldBuilder<>(getConnectResp(), getParentForChildren(), isClean());
                    this.connectResp_ = null;
                }
                return this.connectRespBuilder_;
            }

            public boolean hasHeartbeat() {
                return (this.bitField0_ & 4) == 4;
            }

            public Control getHeartbeat() {
                if (this.heartbeatBuilder_ == null) {
                    return this.heartbeat_;
                }
                return (Control) this.heartbeatBuilder_.getMessage();
            }

            public Builder setHeartbeat(Control control) {
                if (this.heartbeatBuilder_ != null) {
                    this.heartbeatBuilder_.setMessage(control);
                } else if (control == null) {
                    throw new NullPointerException();
                } else {
                    this.heartbeat_ = control;
                    onChanged();
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder setHeartbeat(Builder builder) {
                if (this.heartbeatBuilder_ == null) {
                    this.heartbeat_ = builder.build();
                    onChanged();
                } else {
                    this.heartbeatBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder mergeHeartbeat(Control control) {
                if (this.heartbeatBuilder_ == null) {
                    if ((this.bitField0_ & 4) != 4 || this.heartbeat_ == Control.getDefaultInstance()) {
                        this.heartbeat_ = control;
                    } else {
                        this.heartbeat_ = ((Builder) Control.newBuilder(this.heartbeat_).mergeFrom((Message) control)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.heartbeatBuilder_.mergeFrom(control);
                }
                this.bitField0_ |= 4;
                return this;
            }

            public Builder clearHeartbeat() {
                if (this.heartbeatBuilder_ == null) {
                    this.heartbeat_ = Control.getDefaultInstance();
                    onChanged();
                } else {
                    this.heartbeatBuilder_.clear();
                }
                this.bitField0_ &= -5;
                return this;
            }

            public Builder getHeartbeatBuilder() {
                this.bitField0_ |= 4;
                onChanged();
                return (Builder) getHeartbeatFieldBuilder().getBuilder();
            }

            public ControlOrBuilder getHeartbeatOrBuilder() {
                if (this.heartbeatBuilder_ != null) {
                    return (ControlOrBuilder) this.heartbeatBuilder_.getMessageOrBuilder();
                }
                return this.heartbeat_;
            }

            private SingleFieldBuilder<Control, Builder, ControlOrBuilder> getHeartbeatFieldBuilder() {
                if (this.heartbeatBuilder_ == null) {
                    this.heartbeatBuilder_ = new SingleFieldBuilder<>(getHeartbeat(), getParentForChildren(), isClean());
                    this.heartbeat_ = null;
                }
                return this.heartbeatBuilder_;
            }

            public boolean hasControl() {
                return (this.bitField0_ & 8) == 8;
            }

            public Control getControl() {
                if (this.controlBuilder_ == null) {
                    return this.control_;
                }
                return (Control) this.controlBuilder_.getMessage();
            }

            public Builder setControl(Control control) {
                if (this.controlBuilder_ != null) {
                    this.controlBuilder_.setMessage(control);
                } else if (control == null) {
                    throw new NullPointerException();
                } else {
                    this.control_ = control;
                    onChanged();
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setControl(Builder builder) {
                if (this.controlBuilder_ == null) {
                    this.control_ = builder.build();
                    onChanged();
                } else {
                    this.controlBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder mergeControl(Control control) {
                if (this.controlBuilder_ == null) {
                    if ((this.bitField0_ & 8) != 8 || this.control_ == Control.getDefaultInstance()) {
                        this.control_ = control;
                    } else {
                        this.control_ = ((Builder) Control.newBuilder(this.control_).mergeFrom((Message) control)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.controlBuilder_.mergeFrom(control);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder clearControl() {
                if (this.controlBuilder_ == null) {
                    this.control_ = Control.getDefaultInstance();
                    onChanged();
                } else {
                    this.controlBuilder_.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder getControlBuilder() {
                this.bitField0_ |= 8;
                onChanged();
                return (Builder) getControlFieldBuilder().getBuilder();
            }

            public ControlOrBuilder getControlOrBuilder() {
                if (this.controlBuilder_ != null) {
                    return (ControlOrBuilder) this.controlBuilder_.getMessageOrBuilder();
                }
                return this.control_;
            }

            private SingleFieldBuilder<Control, Builder, ControlOrBuilder> getControlFieldBuilder() {
                if (this.controlBuilder_ == null) {
                    this.controlBuilder_ = new SingleFieldBuilder<>(getControl(), getParentForChildren(), isClean());
                    this.control_ = null;
                }
                return this.controlBuilder_;
            }

            public boolean hasParamQuery() {
                return (this.bitField0_ & 16) == 16;
            }

            public ParamUpdate getParamQuery() {
                if (this.paramQueryBuilder_ == null) {
                    return this.paramQuery_;
                }
                return (ParamUpdate) this.paramQueryBuilder_.getMessage();
            }

            public Builder setParamQuery(ParamUpdate paramUpdate) {
                if (this.paramQueryBuilder_ != null) {
                    this.paramQueryBuilder_.setMessage(paramUpdate);
                } else if (paramUpdate == null) {
                    throw new NullPointerException();
                } else {
                    this.paramQuery_ = paramUpdate;
                    onChanged();
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder setParamQuery(Builder builder) {
                if (this.paramQueryBuilder_ == null) {
                    this.paramQuery_ = builder.build();
                    onChanged();
                } else {
                    this.paramQueryBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder mergeParamQuery(ParamUpdate paramUpdate) {
                if (this.paramQueryBuilder_ == null) {
                    if ((this.bitField0_ & 16) != 16 || this.paramQuery_ == ParamUpdate.getDefaultInstance()) {
                        this.paramQuery_ = paramUpdate;
                    } else {
                        this.paramQuery_ = ((Builder) ParamUpdate.newBuilder(this.paramQuery_).mergeFrom((Message) paramUpdate)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.paramQueryBuilder_.mergeFrom(paramUpdate);
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder clearParamQuery() {
                if (this.paramQueryBuilder_ == null) {
                    this.paramQuery_ = ParamUpdate.getDefaultInstance();
                    onChanged();
                } else {
                    this.paramQueryBuilder_.clear();
                }
                this.bitField0_ &= -17;
                return this;
            }

            public Builder getParamQueryBuilder() {
                this.bitField0_ |= 16;
                onChanged();
                return (Builder) getParamQueryFieldBuilder().getBuilder();
            }

            public ParamUpdateOrBuilder getParamQueryOrBuilder() {
                if (this.paramQueryBuilder_ != null) {
                    return (ParamUpdateOrBuilder) this.paramQueryBuilder_.getMessageOrBuilder();
                }
                return this.paramQuery_;
            }

            private SingleFieldBuilder<ParamUpdate, Builder, ParamUpdateOrBuilder> getParamQueryFieldBuilder() {
                if (this.paramQueryBuilder_ == null) {
                    this.paramQueryBuilder_ = new SingleFieldBuilder<>(getParamQuery(), getParentForChildren(), isClean());
                    this.paramQuery_ = null;
                }
                return this.paramQueryBuilder_;
            }

            public boolean hasParamUpdate() {
                return (this.bitField0_ & 32) == 32;
            }

            public ParamUpdate getParamUpdate() {
                if (this.paramUpdateBuilder_ == null) {
                    return this.paramUpdate_;
                }
                return (ParamUpdate) this.paramUpdateBuilder_.getMessage();
            }

            public Builder setParamUpdate(ParamUpdate paramUpdate) {
                if (this.paramUpdateBuilder_ != null) {
                    this.paramUpdateBuilder_.setMessage(paramUpdate);
                } else if (paramUpdate == null) {
                    throw new NullPointerException();
                } else {
                    this.paramUpdate_ = paramUpdate;
                    onChanged();
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder setParamUpdate(Builder builder) {
                if (this.paramUpdateBuilder_ == null) {
                    this.paramUpdate_ = builder.build();
                    onChanged();
                } else {
                    this.paramUpdateBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder mergeParamUpdate(ParamUpdate paramUpdate) {
                if (this.paramUpdateBuilder_ == null) {
                    if ((this.bitField0_ & 32) != 32 || this.paramUpdate_ == ParamUpdate.getDefaultInstance()) {
                        this.paramUpdate_ = paramUpdate;
                    } else {
                        this.paramUpdate_ = ((Builder) ParamUpdate.newBuilder(this.paramUpdate_).mergeFrom((Message) paramUpdate)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.paramUpdateBuilder_.mergeFrom(paramUpdate);
                }
                this.bitField0_ |= 32;
                return this;
            }

            public Builder clearParamUpdate() {
                if (this.paramUpdateBuilder_ == null) {
                    this.paramUpdate_ = ParamUpdate.getDefaultInstance();
                    onChanged();
                } else {
                    this.paramUpdateBuilder_.clear();
                }
                this.bitField0_ &= -33;
                return this;
            }

            public Builder getParamUpdateBuilder() {
                this.bitField0_ |= 32;
                onChanged();
                return (Builder) getParamUpdateFieldBuilder().getBuilder();
            }

            public ParamUpdateOrBuilder getParamUpdateOrBuilder() {
                if (this.paramUpdateBuilder_ != null) {
                    return (ParamUpdateOrBuilder) this.paramUpdateBuilder_.getMessageOrBuilder();
                }
                return this.paramUpdate_;
            }

            private SingleFieldBuilder<ParamUpdate, Builder, ParamUpdateOrBuilder> getParamUpdateFieldBuilder() {
                if (this.paramUpdateBuilder_ == null) {
                    this.paramUpdateBuilder_ = new SingleFieldBuilder<>(getParamUpdate(), getParentForChildren(), isClean());
                    this.paramUpdate_ = null;
                }
                return this.paramUpdateBuilder_;
            }

            public boolean hasParamResp() {
                return (this.bitField0_ & 64) == 64;
            }

            public ParamUpdate getParamResp() {
                if (this.paramRespBuilder_ == null) {
                    return this.paramResp_;
                }
                return (ParamUpdate) this.paramRespBuilder_.getMessage();
            }

            public Builder setParamResp(ParamUpdate paramUpdate) {
                if (this.paramRespBuilder_ != null) {
                    this.paramRespBuilder_.setMessage(paramUpdate);
                } else if (paramUpdate == null) {
                    throw new NullPointerException();
                } else {
                    this.paramResp_ = paramUpdate;
                    onChanged();
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder setParamResp(Builder builder) {
                if (this.paramRespBuilder_ == null) {
                    this.paramResp_ = builder.build();
                    onChanged();
                } else {
                    this.paramRespBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder mergeParamResp(ParamUpdate paramUpdate) {
                if (this.paramRespBuilder_ == null) {
                    if ((this.bitField0_ & 64) != 64 || this.paramResp_ == ParamUpdate.getDefaultInstance()) {
                        this.paramResp_ = paramUpdate;
                    } else {
                        this.paramResp_ = ((Builder) ParamUpdate.newBuilder(this.paramResp_).mergeFrom((Message) paramUpdate)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.paramRespBuilder_.mergeFrom(paramUpdate);
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder clearParamResp() {
                if (this.paramRespBuilder_ == null) {
                    this.paramResp_ = ParamUpdate.getDefaultInstance();
                    onChanged();
                } else {
                    this.paramRespBuilder_.clear();
                }
                this.bitField0_ &= -65;
                return this;
            }

            public Builder getParamRespBuilder() {
                this.bitField0_ |= 64;
                onChanged();
                return (Builder) getParamRespFieldBuilder().getBuilder();
            }

            public ParamUpdateOrBuilder getParamRespOrBuilder() {
                if (this.paramRespBuilder_ != null) {
                    return (ParamUpdateOrBuilder) this.paramRespBuilder_.getMessageOrBuilder();
                }
                return this.paramResp_;
            }

            private SingleFieldBuilder<ParamUpdate, Builder, ParamUpdateOrBuilder> getParamRespFieldBuilder() {
                if (this.paramRespBuilder_ == null) {
                    this.paramRespBuilder_ = new SingleFieldBuilder<>(getParamResp(), getParentForChildren(), isClean());
                    this.paramResp_ = null;
                }
                return this.paramRespBuilder_;
            }

            public boolean hasStateQuery() {
                return (this.bitField0_ & 128) == 128;
            }

            public StateUpdate getStateQuery() {
                if (this.stateQueryBuilder_ == null) {
                    return this.stateQuery_;
                }
                return (StateUpdate) this.stateQueryBuilder_.getMessage();
            }

            public Builder setStateQuery(StateUpdate stateUpdate) {
                if (this.stateQueryBuilder_ != null) {
                    this.stateQueryBuilder_.setMessage(stateUpdate);
                } else if (stateUpdate == null) {
                    throw new NullPointerException();
                } else {
                    this.stateQuery_ = stateUpdate;
                    onChanged();
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder setStateQuery(Builder builder) {
                if (this.stateQueryBuilder_ == null) {
                    this.stateQuery_ = builder.build();
                    onChanged();
                } else {
                    this.stateQueryBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder mergeStateQuery(StateUpdate stateUpdate) {
                if (this.stateQueryBuilder_ == null) {
                    if ((this.bitField0_ & 128) != 128 || this.stateQuery_ == StateUpdate.getDefaultInstance()) {
                        this.stateQuery_ = stateUpdate;
                    } else {
                        this.stateQuery_ = ((Builder) StateUpdate.newBuilder(this.stateQuery_).mergeFrom((Message) stateUpdate)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.stateQueryBuilder_.mergeFrom(stateUpdate);
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder clearStateQuery() {
                if (this.stateQueryBuilder_ == null) {
                    this.stateQuery_ = StateUpdate.getDefaultInstance();
                    onChanged();
                } else {
                    this.stateQueryBuilder_.clear();
                }
                this.bitField0_ &= -129;
                return this;
            }

            public Builder getStateQueryBuilder() {
                this.bitField0_ |= 128;
                onChanged();
                return (Builder) getStateQueryFieldBuilder().getBuilder();
            }

            public StateUpdateOrBuilder getStateQueryOrBuilder() {
                if (this.stateQueryBuilder_ != null) {
                    return (StateUpdateOrBuilder) this.stateQueryBuilder_.getMessageOrBuilder();
                }
                return this.stateQuery_;
            }

            private SingleFieldBuilder<StateUpdate, Builder, StateUpdateOrBuilder> getStateQueryFieldBuilder() {
                if (this.stateQueryBuilder_ == null) {
                    this.stateQueryBuilder_ = new SingleFieldBuilder<>(getStateQuery(), getParentForChildren(), isClean());
                    this.stateQuery_ = null;
                }
                return this.stateQueryBuilder_;
            }

            public boolean hasStateResp() {
                return (this.bitField0_ & 256) == 256;
            }

            public StateUpdate getStateResp() {
                if (this.stateRespBuilder_ == null) {
                    return this.stateResp_;
                }
                return (StateUpdate) this.stateRespBuilder_.getMessage();
            }

            public Builder setStateResp(StateUpdate stateUpdate) {
                if (this.stateRespBuilder_ != null) {
                    this.stateRespBuilder_.setMessage(stateUpdate);
                } else if (stateUpdate == null) {
                    throw new NullPointerException();
                } else {
                    this.stateResp_ = stateUpdate;
                    onChanged();
                }
                this.bitField0_ |= 256;
                return this;
            }

            public Builder setStateResp(Builder builder) {
                if (this.stateRespBuilder_ == null) {
                    this.stateResp_ = builder.build();
                    onChanged();
                } else {
                    this.stateRespBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 256;
                return this;
            }

            public Builder mergeStateResp(StateUpdate stateUpdate) {
                if (this.stateRespBuilder_ == null) {
                    if ((this.bitField0_ & 256) != 256 || this.stateResp_ == StateUpdate.getDefaultInstance()) {
                        this.stateResp_ = stateUpdate;
                    } else {
                        this.stateResp_ = ((Builder) StateUpdate.newBuilder(this.stateResp_).mergeFrom((Message) stateUpdate)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.stateRespBuilder_.mergeFrom(stateUpdate);
                }
                this.bitField0_ |= 256;
                return this;
            }

            public Builder clearStateResp() {
                if (this.stateRespBuilder_ == null) {
                    this.stateResp_ = StateUpdate.getDefaultInstance();
                    onChanged();
                } else {
                    this.stateRespBuilder_.clear();
                }
                this.bitField0_ &= -257;
                return this;
            }

            public Builder getStateRespBuilder() {
                this.bitField0_ |= 256;
                onChanged();
                return (Builder) getStateRespFieldBuilder().getBuilder();
            }

            public StateUpdateOrBuilder getStateRespOrBuilder() {
                if (this.stateRespBuilder_ != null) {
                    return (StateUpdateOrBuilder) this.stateRespBuilder_.getMessageOrBuilder();
                }
                return this.stateResp_;
            }

            private SingleFieldBuilder<StateUpdate, Builder, StateUpdateOrBuilder> getStateRespFieldBuilder() {
                if (this.stateRespBuilder_ == null) {
                    this.stateRespBuilder_ = new SingleFieldBuilder<>(getStateResp(), getParentForChildren(), isClean());
                    this.stateResp_ = null;
                }
                return this.stateRespBuilder_;
            }

            public boolean hasLocationSync() {
                return (this.bitField0_ & 512) == 512;
            }

            public LocationSync getLocationSync() {
                if (this.locationSyncBuilder_ == null) {
                    return this.locationSync_;
                }
                return (LocationSync) this.locationSyncBuilder_.getMessage();
            }

            public Builder setLocationSync(LocationSync locationSync) {
                if (this.locationSyncBuilder_ != null) {
                    this.locationSyncBuilder_.setMessage(locationSync);
                } else if (locationSync == null) {
                    throw new NullPointerException();
                } else {
                    this.locationSync_ = locationSync;
                    onChanged();
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder setLocationSync(Builder builder) {
                if (this.locationSyncBuilder_ == null) {
                    this.locationSync_ = builder.build();
                    onChanged();
                } else {
                    this.locationSyncBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder mergeLocationSync(LocationSync locationSync) {
                if (this.locationSyncBuilder_ == null) {
                    if ((this.bitField0_ & 512) != 512 || this.locationSync_ == LocationSync.getDefaultInstance()) {
                        this.locationSync_ = locationSync;
                    } else {
                        this.locationSync_ = ((Builder) LocationSync.newBuilder(this.locationSync_).mergeFrom((Message) locationSync)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.locationSyncBuilder_.mergeFrom(locationSync);
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder clearLocationSync() {
                if (this.locationSyncBuilder_ == null) {
                    this.locationSync_ = LocationSync.getDefaultInstance();
                    onChanged();
                } else {
                    this.locationSyncBuilder_.clear();
                }
                this.bitField0_ &= -513;
                return this;
            }

            public Builder getLocationSyncBuilder() {
                this.bitField0_ |= 512;
                onChanged();
                return (Builder) getLocationSyncFieldBuilder().getBuilder();
            }

            public LocationSyncOrBuilder getLocationSyncOrBuilder() {
                if (this.locationSyncBuilder_ != null) {
                    return (LocationSyncOrBuilder) this.locationSyncBuilder_.getMessageOrBuilder();
                }
                return this.locationSync_;
            }

            private SingleFieldBuilder<LocationSync, Builder, LocationSyncOrBuilder> getLocationSyncFieldBuilder() {
                if (this.locationSyncBuilder_ == null) {
                    this.locationSyncBuilder_ = new SingleFieldBuilder<>(getLocationSync(), getParentForChildren(), isClean());
                    this.locationSync_ = null;
                }
                return this.locationSyncBuilder_;
            }

            public boolean hasLocationCtl() {
                return (this.bitField0_ & 1024) == 1024;
            }

            public LocationSync getLocationCtl() {
                if (this.locationCtlBuilder_ == null) {
                    return this.locationCtl_;
                }
                return (LocationSync) this.locationCtlBuilder_.getMessage();
            }

            public Builder setLocationCtl(LocationSync locationSync) {
                if (this.locationCtlBuilder_ != null) {
                    this.locationCtlBuilder_.setMessage(locationSync);
                } else if (locationSync == null) {
                    throw new NullPointerException();
                } else {
                    this.locationCtl_ = locationSync;
                    onChanged();
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public Builder setLocationCtl(Builder builder) {
                if (this.locationCtlBuilder_ == null) {
                    this.locationCtl_ = builder.build();
                    onChanged();
                } else {
                    this.locationCtlBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public Builder mergeLocationCtl(LocationSync locationSync) {
                if (this.locationCtlBuilder_ == null) {
                    if ((this.bitField0_ & 1024) != 1024 || this.locationCtl_ == LocationSync.getDefaultInstance()) {
                        this.locationCtl_ = locationSync;
                    } else {
                        this.locationCtl_ = ((Builder) LocationSync.newBuilder(this.locationCtl_).mergeFrom((Message) locationSync)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.locationCtlBuilder_.mergeFrom(locationSync);
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public Builder clearLocationCtl() {
                if (this.locationCtlBuilder_ == null) {
                    this.locationCtl_ = LocationSync.getDefaultInstance();
                    onChanged();
                } else {
                    this.locationCtlBuilder_.clear();
                }
                this.bitField0_ &= -1025;
                return this;
            }

            public Builder getLocationCtlBuilder() {
                this.bitField0_ |= 1024;
                onChanged();
                return (Builder) getLocationCtlFieldBuilder().getBuilder();
            }

            public LocationSyncOrBuilder getLocationCtlOrBuilder() {
                if (this.locationCtlBuilder_ != null) {
                    return (LocationSyncOrBuilder) this.locationCtlBuilder_.getMessageOrBuilder();
                }
                return this.locationCtl_;
            }

            private SingleFieldBuilder<LocationSync, Builder, LocationSyncOrBuilder> getLocationCtlFieldBuilder() {
                if (this.locationCtlBuilder_ == null) {
                    this.locationCtlBuilder_ = new SingleFieldBuilder<>(getLocationCtl(), getParentForChildren(), isClean());
                    this.locationCtl_ = null;
                }
                return this.locationCtlBuilder_;
            }

            public boolean hasFileReq() {
                return (this.bitField0_ & 2048) == 2048;
            }

            public FileRequest getFileReq() {
                if (this.fileReqBuilder_ == null) {
                    return this.fileReq_;
                }
                return (FileRequest) this.fileReqBuilder_.getMessage();
            }

            public Builder setFileReq(FileRequest fileRequest) {
                if (this.fileReqBuilder_ != null) {
                    this.fileReqBuilder_.setMessage(fileRequest);
                } else if (fileRequest == null) {
                    throw new NullPointerException();
                } else {
                    this.fileReq_ = fileRequest;
                    onChanged();
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder setFileReq(Builder builder) {
                if (this.fileReqBuilder_ == null) {
                    this.fileReq_ = builder.build();
                    onChanged();
                } else {
                    this.fileReqBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder mergeFileReq(FileRequest fileRequest) {
                if (this.fileReqBuilder_ == null) {
                    if ((this.bitField0_ & 2048) != 2048 || this.fileReq_ == FileRequest.getDefaultInstance()) {
                        this.fileReq_ = fileRequest;
                    } else {
                        this.fileReq_ = ((Builder) FileRequest.newBuilder(this.fileReq_).mergeFrom((Message) fileRequest)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.fileReqBuilder_.mergeFrom(fileRequest);
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder clearFileReq() {
                if (this.fileReqBuilder_ == null) {
                    this.fileReq_ = FileRequest.getDefaultInstance();
                    onChanged();
                } else {
                    this.fileReqBuilder_.clear();
                }
                this.bitField0_ &= -2049;
                return this;
            }

            public Builder getFileReqBuilder() {
                this.bitField0_ |= 2048;
                onChanged();
                return (Builder) getFileReqFieldBuilder().getBuilder();
            }

            public FileRequestOrBuilder getFileReqOrBuilder() {
                if (this.fileReqBuilder_ != null) {
                    return (FileRequestOrBuilder) this.fileReqBuilder_.getMessageOrBuilder();
                }
                return this.fileReq_;
            }

            private SingleFieldBuilder<FileRequest, Builder, FileRequestOrBuilder> getFileReqFieldBuilder() {
                if (this.fileReqBuilder_ == null) {
                    this.fileReqBuilder_ = new SingleFieldBuilder<>(getFileReq(), getParentForChildren(), isClean());
                    this.fileReq_ = null;
                }
                return this.fileReqBuilder_;
            }

            public boolean hasFilePack() {
                return (this.bitField0_ & 4096) == 4096;
            }

            public FilePack getFilePack() {
                if (this.filePackBuilder_ == null) {
                    return this.filePack_;
                }
                return (FilePack) this.filePackBuilder_.getMessage();
            }

            public Builder setFilePack(FilePack filePack) {
                if (this.filePackBuilder_ != null) {
                    this.filePackBuilder_.setMessage(filePack);
                } else if (filePack == null) {
                    throw new NullPointerException();
                } else {
                    this.filePack_ = filePack;
                    onChanged();
                }
                this.bitField0_ |= 4096;
                return this;
            }

            public Builder setFilePack(Builder builder) {
                if (this.filePackBuilder_ == null) {
                    this.filePack_ = builder.build();
                    onChanged();
                } else {
                    this.filePackBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 4096;
                return this;
            }

            public Builder mergeFilePack(FilePack filePack) {
                if (this.filePackBuilder_ == null) {
                    if ((this.bitField0_ & 4096) != 4096 || this.filePack_ == FilePack.getDefaultInstance()) {
                        this.filePack_ = filePack;
                    } else {
                        this.filePack_ = ((Builder) FilePack.newBuilder(this.filePack_).mergeFrom((Message) filePack)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.filePackBuilder_.mergeFrom(filePack);
                }
                this.bitField0_ |= 4096;
                return this;
            }

            public Builder clearFilePack() {
                if (this.filePackBuilder_ == null) {
                    this.filePack_ = FilePack.getDefaultInstance();
                    onChanged();
                } else {
                    this.filePackBuilder_.clear();
                }
                this.bitField0_ &= -4097;
                return this;
            }

            public Builder getFilePackBuilder() {
                this.bitField0_ |= 4096;
                onChanged();
                return (Builder) getFilePackFieldBuilder().getBuilder();
            }

            public FilePackOrBuilder getFilePackOrBuilder() {
                if (this.filePackBuilder_ != null) {
                    return (FilePackOrBuilder) this.filePackBuilder_.getMessageOrBuilder();
                }
                return this.filePack_;
            }

            private SingleFieldBuilder<FilePack, Builder, FilePackOrBuilder> getFilePackFieldBuilder() {
                if (this.filePackBuilder_ == null) {
                    this.filePackBuilder_ = new SingleFieldBuilder<>(getFilePack(), getParentForChildren(), isClean());
                    this.filePack_ = null;
                }
                return this.filePackBuilder_;
            }

            public boolean hasFileResp() {
                return (this.bitField0_ & 8192) == 8192;
            }

            public FileResponse getFileResp() {
                if (this.fileRespBuilder_ == null) {
                    return this.fileResp_;
                }
                return (FileResponse) this.fileRespBuilder_.getMessage();
            }

            public Builder setFileResp(FileResponse fileResponse) {
                if (this.fileRespBuilder_ != null) {
                    this.fileRespBuilder_.setMessage(fileResponse);
                } else if (fileResponse == null) {
                    throw new NullPointerException();
                } else {
                    this.fileResp_ = fileResponse;
                    onChanged();
                }
                this.bitField0_ |= 8192;
                return this;
            }

            public Builder setFileResp(Builder builder) {
                if (this.fileRespBuilder_ == null) {
                    this.fileResp_ = builder.build();
                    onChanged();
                } else {
                    this.fileRespBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 8192;
                return this;
            }

            public Builder mergeFileResp(FileResponse fileResponse) {
                if (this.fileRespBuilder_ == null) {
                    if ((this.bitField0_ & 8192) != 8192 || this.fileResp_ == FileResponse.getDefaultInstance()) {
                        this.fileResp_ = fileResponse;
                    } else {
                        this.fileResp_ = ((Builder) FileResponse.newBuilder(this.fileResp_).mergeFrom((Message) fileResponse)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.fileRespBuilder_.mergeFrom(fileResponse);
                }
                this.bitField0_ |= 8192;
                return this;
            }

            public Builder clearFileResp() {
                if (this.fileRespBuilder_ == null) {
                    this.fileResp_ = FileResponse.getDefaultInstance();
                    onChanged();
                } else {
                    this.fileRespBuilder_.clear();
                }
                this.bitField0_ &= -8193;
                return this;
            }

            public Builder getFileRespBuilder() {
                this.bitField0_ |= 8192;
                onChanged();
                return (Builder) getFileRespFieldBuilder().getBuilder();
            }

            public FileResponseOrBuilder getFileRespOrBuilder() {
                if (this.fileRespBuilder_ != null) {
                    return (FileResponseOrBuilder) this.fileRespBuilder_.getMessageOrBuilder();
                }
                return this.fileResp_;
            }

            private SingleFieldBuilder<FileResponse, Builder, FileResponseOrBuilder> getFileRespFieldBuilder() {
                if (this.fileRespBuilder_ == null) {
                    this.fileRespBuilder_ = new SingleFieldBuilder<>(getFileResp(), getParentForChildren(), isClean());
                    this.fileResp_ = null;
                }
                return this.fileRespBuilder_;
            }

            public boolean hasLogReq() {
                return (this.bitField0_ & 16384) == 16384;
            }

            public LogRequest getLogReq() {
                if (this.logReqBuilder_ == null) {
                    return this.logReq_;
                }
                return (LogRequest) this.logReqBuilder_.getMessage();
            }

            public Builder setLogReq(LogRequest logRequest) {
                if (this.logReqBuilder_ != null) {
                    this.logReqBuilder_.setMessage(logRequest);
                } else if (logRequest == null) {
                    throw new NullPointerException();
                } else {
                    this.logReq_ = logRequest;
                    onChanged();
                }
                this.bitField0_ |= 16384;
                return this;
            }

            public Builder setLogReq(Builder builder) {
                if (this.logReqBuilder_ == null) {
                    this.logReq_ = builder.build();
                    onChanged();
                } else {
                    this.logReqBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 16384;
                return this;
            }

            public Builder mergeLogReq(LogRequest logRequest) {
                if (this.logReqBuilder_ == null) {
                    if ((this.bitField0_ & 16384) != 16384 || this.logReq_ == LogRequest.getDefaultInstance()) {
                        this.logReq_ = logRequest;
                    } else {
                        this.logReq_ = ((Builder) LogRequest.newBuilder(this.logReq_).mergeFrom((Message) logRequest)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.logReqBuilder_.mergeFrom(logRequest);
                }
                this.bitField0_ |= 16384;
                return this;
            }

            public Builder clearLogReq() {
                if (this.logReqBuilder_ == null) {
                    this.logReq_ = LogRequest.getDefaultInstance();
                    onChanged();
                } else {
                    this.logReqBuilder_.clear();
                }
                this.bitField0_ &= -16385;
                return this;
            }

            public Builder getLogReqBuilder() {
                this.bitField0_ |= 16384;
                onChanged();
                return (Builder) getLogReqFieldBuilder().getBuilder();
            }

            public LogRequestOrBuilder getLogReqOrBuilder() {
                if (this.logReqBuilder_ != null) {
                    return (LogRequestOrBuilder) this.logReqBuilder_.getMessageOrBuilder();
                }
                return this.logReq_;
            }

            private SingleFieldBuilder<LogRequest, Builder, LogRequestOrBuilder> getLogReqFieldBuilder() {
                if (this.logReqBuilder_ == null) {
                    this.logReqBuilder_ = new SingleFieldBuilder<>(getLogReq(), getParentForChildren(), isClean());
                    this.logReq_ = null;
                }
                return this.logReqBuilder_;
            }

            public boolean hasTestReq() {
                return (this.bitField0_ & 32768) == 32768;
            }

            public IntercomTest getTestReq() {
                if (this.testReqBuilder_ == null) {
                    return this.testReq_;
                }
                return (IntercomTest) this.testReqBuilder_.getMessage();
            }

            public Builder setTestReq(IntercomTest intercomTest) {
                if (this.testReqBuilder_ != null) {
                    this.testReqBuilder_.setMessage(intercomTest);
                } else if (intercomTest == null) {
                    throw new NullPointerException();
                } else {
                    this.testReq_ = intercomTest;
                    onChanged();
                }
                this.bitField0_ |= 32768;
                return this;
            }

            public Builder setTestReq(Builder builder) {
                if (this.testReqBuilder_ == null) {
                    this.testReq_ = builder.build();
                    onChanged();
                } else {
                    this.testReqBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 32768;
                return this;
            }

            public Builder mergeTestReq(IntercomTest intercomTest) {
                if (this.testReqBuilder_ == null) {
                    if ((this.bitField0_ & 32768) != 32768 || this.testReq_ == IntercomTest.getDefaultInstance()) {
                        this.testReq_ = intercomTest;
                    } else {
                        this.testReq_ = ((Builder) IntercomTest.newBuilder(this.testReq_).mergeFrom((Message) intercomTest)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.testReqBuilder_.mergeFrom(intercomTest);
                }
                this.bitField0_ |= 32768;
                return this;
            }

            public Builder clearTestReq() {
                if (this.testReqBuilder_ == null) {
                    this.testReq_ = IntercomTest.getDefaultInstance();
                    onChanged();
                } else {
                    this.testReqBuilder_.clear();
                }
                this.bitField0_ &= -32769;
                return this;
            }

            public Builder getTestReqBuilder() {
                this.bitField0_ |= 32768;
                onChanged();
                return (Builder) getTestReqFieldBuilder().getBuilder();
            }

            public IntercomTestOrBuilder getTestReqOrBuilder() {
                if (this.testReqBuilder_ != null) {
                    return (IntercomTestOrBuilder) this.testReqBuilder_.getMessageOrBuilder();
                }
                return this.testReq_;
            }

            private SingleFieldBuilder<IntercomTest, Builder, IntercomTestOrBuilder> getTestReqFieldBuilder() {
                if (this.testReqBuilder_ == null) {
                    this.testReqBuilder_ = new SingleFieldBuilder<>(getTestReq(), getParentForChildren(), isClean());
                    this.testReq_ = null;
                }
                return this.testReqBuilder_;
            }

            public boolean hasTestResp() {
                return (this.bitField0_ & 65536) == 65536;
            }

            public IntercomTest getTestResp() {
                if (this.testRespBuilder_ == null) {
                    return this.testResp_;
                }
                return (IntercomTest) this.testRespBuilder_.getMessage();
            }

            public Builder setTestResp(IntercomTest intercomTest) {
                if (this.testRespBuilder_ != null) {
                    this.testRespBuilder_.setMessage(intercomTest);
                } else if (intercomTest == null) {
                    throw new NullPointerException();
                } else {
                    this.testResp_ = intercomTest;
                    onChanged();
                }
                this.bitField0_ |= 65536;
                return this;
            }

            public Builder setTestResp(Builder builder) {
                if (this.testRespBuilder_ == null) {
                    this.testResp_ = builder.build();
                    onChanged();
                } else {
                    this.testRespBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 65536;
                return this;
            }

            public Builder mergeTestResp(IntercomTest intercomTest) {
                if (this.testRespBuilder_ == null) {
                    if ((this.bitField0_ & 65536) != 65536 || this.testResp_ == IntercomTest.getDefaultInstance()) {
                        this.testResp_ = intercomTest;
                    } else {
                        this.testResp_ = ((Builder) IntercomTest.newBuilder(this.testResp_).mergeFrom((Message) intercomTest)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.testRespBuilder_.mergeFrom(intercomTest);
                }
                this.bitField0_ |= 65536;
                return this;
            }

            public Builder clearTestResp() {
                if (this.testRespBuilder_ == null) {
                    this.testResp_ = IntercomTest.getDefaultInstance();
                    onChanged();
                } else {
                    this.testRespBuilder_.clear();
                }
                this.bitField0_ &= -65537;
                return this;
            }

            public Builder getTestRespBuilder() {
                this.bitField0_ |= 65536;
                onChanged();
                return (Builder) getTestRespFieldBuilder().getBuilder();
            }

            public IntercomTestOrBuilder getTestRespOrBuilder() {
                if (this.testRespBuilder_ != null) {
                    return (IntercomTestOrBuilder) this.testRespBuilder_.getMessageOrBuilder();
                }
                return this.testResp_;
            }

            private SingleFieldBuilder<IntercomTest, Builder, IntercomTestOrBuilder> getTestRespFieldBuilder() {
                if (this.testRespBuilder_ == null) {
                    this.testRespBuilder_ = new SingleFieldBuilder<>(getTestResp(), getParentForChildren(), isClean());
                    this.testResp_ = null;
                }
                return this.testRespBuilder_;
            }

            public boolean hasUpdateResponse() {
                return (this.bitField0_ & 131072) == 131072;
            }

            public UpdateResponse getUpdateResponse() {
                if (this.updateResponseBuilder_ == null) {
                    return this.updateResponse_;
                }
                return (UpdateResponse) this.updateResponseBuilder_.getMessage();
            }

            public Builder setUpdateResponse(UpdateResponse updateResponse) {
                if (this.updateResponseBuilder_ != null) {
                    this.updateResponseBuilder_.setMessage(updateResponse);
                } else if (updateResponse == null) {
                    throw new NullPointerException();
                } else {
                    this.updateResponse_ = updateResponse;
                    onChanged();
                }
                this.bitField0_ |= 131072;
                return this;
            }

            public Builder setUpdateResponse(Builder builder) {
                if (this.updateResponseBuilder_ == null) {
                    this.updateResponse_ = builder.build();
                    onChanged();
                } else {
                    this.updateResponseBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 131072;
                return this;
            }

            public Builder mergeUpdateResponse(UpdateResponse updateResponse) {
                if (this.updateResponseBuilder_ == null) {
                    if ((this.bitField0_ & 131072) != 131072 || this.updateResponse_ == UpdateResponse.getDefaultInstance()) {
                        this.updateResponse_ = updateResponse;
                    } else {
                        this.updateResponse_ = ((Builder) UpdateResponse.newBuilder(this.updateResponse_).mergeFrom((Message) updateResponse)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.updateResponseBuilder_.mergeFrom(updateResponse);
                }
                this.bitField0_ |= 131072;
                return this;
            }

            public Builder clearUpdateResponse() {
                if (this.updateResponseBuilder_ == null) {
                    this.updateResponse_ = UpdateResponse.getDefaultInstance();
                    onChanged();
                } else {
                    this.updateResponseBuilder_.clear();
                }
                this.bitField0_ &= -131073;
                return this;
            }

            public Builder getUpdateResponseBuilder() {
                this.bitField0_ |= 131072;
                onChanged();
                return (Builder) getUpdateResponseFieldBuilder().getBuilder();
            }

            public UpdateResponseOrBuilder getUpdateResponseOrBuilder() {
                if (this.updateResponseBuilder_ != null) {
                    return (UpdateResponseOrBuilder) this.updateResponseBuilder_.getMessageOrBuilder();
                }
                return this.updateResponse_;
            }

            private SingleFieldBuilder<UpdateResponse, Builder, UpdateResponseOrBuilder> getUpdateResponseFieldBuilder() {
                if (this.updateResponseBuilder_ == null) {
                    this.updateResponseBuilder_ = new SingleFieldBuilder<>(getUpdateResponse(), getParentForChildren(), isClean());
                    this.updateResponse_ = null;
                }
                return this.updateResponseBuilder_;
            }
        }

        private Command(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private Command(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Command getDefaultInstance() {
            return defaultInstance;
        }

        public Command getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.a;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.b.ensureFieldAccessorsInitialized(Command.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<Command> getParserForType() {
            return PARSER;
        }

        public boolean hasConnectQuery() {
            return (this.bitField0_ & 1) == 1;
        }

        public Connect getConnectQuery() {
            return this.connectQuery_;
        }

        public ConnectOrBuilder getConnectQueryOrBuilder() {
            return this.connectQuery_;
        }

        public boolean hasConnectResp() {
            return (this.bitField0_ & 2) == 2;
        }

        public Connect getConnectResp() {
            return this.connectResp_;
        }

        public ConnectOrBuilder getConnectRespOrBuilder() {
            return this.connectResp_;
        }

        public boolean hasHeartbeat() {
            return (this.bitField0_ & 4) == 4;
        }

        public Control getHeartbeat() {
            return this.heartbeat_;
        }

        public ControlOrBuilder getHeartbeatOrBuilder() {
            return this.heartbeat_;
        }

        public boolean hasControl() {
            return (this.bitField0_ & 8) == 8;
        }

        public Control getControl() {
            return this.control_;
        }

        public ControlOrBuilder getControlOrBuilder() {
            return this.control_;
        }

        public boolean hasParamQuery() {
            return (this.bitField0_ & 16) == 16;
        }

        public ParamUpdate getParamQuery() {
            return this.paramQuery_;
        }

        public ParamUpdateOrBuilder getParamQueryOrBuilder() {
            return this.paramQuery_;
        }

        public boolean hasParamUpdate() {
            return (this.bitField0_ & 32) == 32;
        }

        public ParamUpdate getParamUpdate() {
            return this.paramUpdate_;
        }

        public ParamUpdateOrBuilder getParamUpdateOrBuilder() {
            return this.paramUpdate_;
        }

        public boolean hasParamResp() {
            return (this.bitField0_ & 64) == 64;
        }

        public ParamUpdate getParamResp() {
            return this.paramResp_;
        }

        public ParamUpdateOrBuilder getParamRespOrBuilder() {
            return this.paramResp_;
        }

        public boolean hasStateQuery() {
            return (this.bitField0_ & 128) == 128;
        }

        public StateUpdate getStateQuery() {
            return this.stateQuery_;
        }

        public StateUpdateOrBuilder getStateQueryOrBuilder() {
            return this.stateQuery_;
        }

        public boolean hasStateResp() {
            return (this.bitField0_ & 256) == 256;
        }

        public StateUpdate getStateResp() {
            return this.stateResp_;
        }

        public StateUpdateOrBuilder getStateRespOrBuilder() {
            return this.stateResp_;
        }

        public boolean hasLocationSync() {
            return (this.bitField0_ & 512) == 512;
        }

        public LocationSync getLocationSync() {
            return this.locationSync_;
        }

        public LocationSyncOrBuilder getLocationSyncOrBuilder() {
            return this.locationSync_;
        }

        public boolean hasLocationCtl() {
            return (this.bitField0_ & 1024) == 1024;
        }

        public LocationSync getLocationCtl() {
            return this.locationCtl_;
        }

        public LocationSyncOrBuilder getLocationCtlOrBuilder() {
            return this.locationCtl_;
        }

        public boolean hasFileReq() {
            return (this.bitField0_ & 2048) == 2048;
        }

        public FileRequest getFileReq() {
            return this.fileReq_;
        }

        public FileRequestOrBuilder getFileReqOrBuilder() {
            return this.fileReq_;
        }

        public boolean hasFilePack() {
            return (this.bitField0_ & 4096) == 4096;
        }

        public FilePack getFilePack() {
            return this.filePack_;
        }

        public FilePackOrBuilder getFilePackOrBuilder() {
            return this.filePack_;
        }

        public boolean hasFileResp() {
            return (this.bitField0_ & 8192) == 8192;
        }

        public FileResponse getFileResp() {
            return this.fileResp_;
        }

        public FileResponseOrBuilder getFileRespOrBuilder() {
            return this.fileResp_;
        }

        public boolean hasLogReq() {
            return (this.bitField0_ & 16384) == 16384;
        }

        public LogRequest getLogReq() {
            return this.logReq_;
        }

        public LogRequestOrBuilder getLogReqOrBuilder() {
            return this.logReq_;
        }

        public boolean hasTestReq() {
            return (this.bitField0_ & 32768) == 32768;
        }

        public IntercomTest getTestReq() {
            return this.testReq_;
        }

        public IntercomTestOrBuilder getTestReqOrBuilder() {
            return this.testReq_;
        }

        public boolean hasTestResp() {
            return (this.bitField0_ & 65536) == 65536;
        }

        public IntercomTest getTestResp() {
            return this.testResp_;
        }

        public IntercomTestOrBuilder getTestRespOrBuilder() {
            return this.testResp_;
        }

        public boolean hasUpdateResponse() {
            return (this.bitField0_ & 131072) == 131072;
        }

        public UpdateResponse getUpdateResponse() {
            return this.updateResponse_;
        }

        public UpdateResponseOrBuilder getUpdateResponseOrBuilder() {
            return this.updateResponse_;
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

        public static Command parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (Command) PARSER.parseFrom(byteString);
        }

        public static Command parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Command) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Command parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (Command) PARSER.parseFrom(bArr);
        }

        public static Command parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Command) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Command parseFrom(InputStream inputStream) throws IOException {
            return (Command) PARSER.parseFrom(inputStream);
        }

        public static Command parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Command) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Command parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Command) PARSER.parseDelimitedFrom(inputStream);
        }

        public static Command parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Command) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Command parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Command) PARSER.parseFrom(codedInputStream);
        }

        public static Command parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Command) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(Command command) {
            return (Builder) newBuilder().mergeFrom((Message) command);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

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

    public static final class Connect extends GeneratedMessage implements ConnectOrBuilder {
        public static final int CONNCODE_FIELD_NUMBER = 2;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static Parser<Connect> PARSER = new AbstractParser<Connect>() {
            /* renamed from: a */
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
        };
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final Connect defaultInstance = new Connect(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public CONNCODE connCode_;
        /* access modifiers changed from: private */
        public int deviceId_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ConnectOrBuilder {
            private int bitField0_;
            private CONNCODE connCode_;
            private int deviceId_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return MitalkProtos.c;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.d.ensureFieldAccessorsInitialized(Connect.class, Builder.class);
            }

            private Builder() {
                this.connCode_ = CONNCODE.DISCONNECT;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.connCode_ = CONNCODE.DISCONNECT;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (Connect.alwaysUseFieldBuilders) {
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
                this.connCode_ = CONNCODE.DISCONNECT;
                this.bitField0_ &= -3;
                this.deviceId_ = 0;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.c;
            }

            public Connect getDefaultInstanceForType() {
                return Connect.getDefaultInstance();
            }

            public Connect build() {
                Connect buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public Connect buildPartial() {
                int i = 1;
                Connect connect = new Connect(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                connect.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                connect.connCode_ = this.connCode_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                connect.deviceId_ = this.deviceId_;
                connect.bitField0_ = i;
                onBuilt();
                return connect;
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

            public CONNCODE getConnCode() {
                return this.connCode_;
            }

            public Builder setConnCode(CONNCODE conncode) {
                if (conncode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.connCode_ = conncode;
                onChanged();
                return this;
            }

            public Builder clearConnCode() {
                this.bitField0_ &= -3;
                this.connCode_ = CONNCODE.DISCONNECT;
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
        }

        private Connect(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private Connect(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Connect getDefaultInstance() {
            return defaultInstance;
        }

        public Connect getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.c;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.d.ensureFieldAccessorsInitialized(Connect.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<Connect> getParserForType() {
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

        public CONNCODE getConnCode() {
            return this.connCode_;
        }

        public boolean hasDeviceId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getDeviceId() {
            return this.deviceId_;
        }

        private void initFields() {
            this.version_ = 0;
            this.connCode_ = CONNCODE.DISCONNECT;
            this.deviceId_ = 0;
        }

        public static Connect parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (Connect) PARSER.parseFrom(byteString);
        }

        public static Connect parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Connect) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Connect parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (Connect) PARSER.parseFrom(bArr);
        }

        public static Connect parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Connect) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Connect parseFrom(InputStream inputStream) throws IOException {
            return (Connect) PARSER.parseFrom(inputStream);
        }

        public static Connect parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Connect) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Connect parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Connect) PARSER.parseDelimitedFrom(inputStream);
        }

        public static Connect parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Connect) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Connect parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Connect) PARSER.parseFrom(codedInputStream);
        }

        public static Connect parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Connect) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(Connect connect) {
            return (Builder) newBuilder().mergeFrom((Message) connect);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface ConnectOrBuilder extends MessageOrBuilder {
        CONNCODE getConnCode();

        int getDeviceId();

        int getVersion();

        boolean hasConnCode();

        boolean hasDeviceId();

        boolean hasVersion();
    }

    public static final class Control extends GeneratedMessage implements ControlOrBuilder {
        public static final int CTRLCODE_FIELD_NUMBER = 2;
        public static Parser<Control> PARSER = new AbstractParser<Control>() {
            /* renamed from: a */
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
        };
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final Control defaultInstance = new Control(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public CTRLCODE ctrlCode_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ControlOrBuilder {
            private int bitField0_;
            private CTRLCODE ctrlCode_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return MitalkProtos.e;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.f.ensureFieldAccessorsInitialized(Control.class, Builder.class);
            }

            private Builder() {
                this.ctrlCode_ = CTRLCODE.RSTDEVICE;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.ctrlCode_ = CTRLCODE.RSTDEVICE;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (Control.alwaysUseFieldBuilders) {
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
                this.ctrlCode_ = CTRLCODE.RSTDEVICE;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.e;
            }

            public Control getDefaultInstanceForType() {
                return Control.getDefaultInstance();
            }

            public Control build() {
                Control buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public Control buildPartial() {
                int i = 1;
                Control control = new Control(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                control.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                control.ctrlCode_ = this.ctrlCode_;
                control.bitField0_ = i;
                onBuilt();
                return control;
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

            public boolean hasCtrlCode() {
                return (this.bitField0_ & 2) == 2;
            }

            public CTRLCODE getCtrlCode() {
                return this.ctrlCode_;
            }

            public Builder setCtrlCode(CTRLCODE ctrlcode) {
                if (ctrlcode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.ctrlCode_ = ctrlcode;
                onChanged();
                return this;
            }

            public Builder clearCtrlCode() {
                this.bitField0_ &= -3;
                this.ctrlCode_ = CTRLCODE.RSTDEVICE;
                onChanged();
                return this;
            }
        }

        private Control(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private Control(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Control getDefaultInstance() {
            return defaultInstance;
        }

        public Control getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.e;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.f.ensureFieldAccessorsInitialized(Control.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<Control> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasCtrlCode() {
            return (this.bitField0_ & 2) == 2;
        }

        public CTRLCODE getCtrlCode() {
            return this.ctrlCode_;
        }

        private void initFields() {
            this.version_ = 0;
            this.ctrlCode_ = CTRLCODE.RSTDEVICE;
        }

        public static Control parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (Control) PARSER.parseFrom(byteString);
        }

        public static Control parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Control) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Control parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (Control) PARSER.parseFrom(bArr);
        }

        public static Control parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Control) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Control parseFrom(InputStream inputStream) throws IOException {
            return (Control) PARSER.parseFrom(inputStream);
        }

        public static Control parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Control) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Control parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Control) PARSER.parseDelimitedFrom(inputStream);
        }

        public static Control parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Control) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Control parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Control) PARSER.parseFrom(codedInputStream);
        }

        public static Control parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Control) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(Control control) {
            return (Builder) newBuilder().mergeFrom((Message) control);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface ControlOrBuilder extends MessageOrBuilder {
        CTRLCODE getCtrlCode();

        int getVersion();

        boolean hasCtrlCode();

        boolean hasVersion();
    }

    public enum FILECMD implements ProtocolMessageEnum {
        START(0, 0),
        COMPLETE(1, 1);
        
        public static final int COMPLETE_VALUE = 1;
        public static final int START_VALUE = 0;
        private static final FILECMD[] VALUES = null;
        private static EnumLiteMap<FILECMD> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<FILECMD>() {
                /* renamed from: a */
                public FILECMD findValueByNumber(int i) {
                    return FILECMD.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static FILECMD valueOf(int i) {
            switch (i) {
                case 0:
                    return START;
                case 1:
                    return COMPLETE;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<FILECMD> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) MitalkProtos.a().getEnumTypes().get(9);
        }

        public static FILECMD valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private FILECMD(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

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
        private static final FILETYPE[] VALUES = null;
        public static final int WARNINGTONE_VALUE = 8;
        private static EnumLiteMap<FILETYPE> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<FILETYPE>() {
                /* renamed from: a */
                public FILETYPE findValueByNumber(int i) {
                    return FILETYPE.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
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

        public static EnumLiteMap<FILETYPE> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) MitalkProtos.a().getEnumTypes().get(8);
        }

        public static FILETYPE valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private FILETYPE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    public static final class FilePack extends GeneratedMessage implements FilePackOrBuilder {
        public static final int DATA_FIELD_NUMBER = 3;
        public static Parser<FilePack> PARSER = new AbstractParser<FilePack>() {
            /* renamed from: a */
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
        };
        public static final int SEQ_FIELD_NUMBER = 1;
        public static final int XOR_FIELD_NUMBER = 2;
        private static final FilePack defaultInstance = new FilePack(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString data_;
        /* access modifiers changed from: private */
        public int seq_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int xor_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements FilePackOrBuilder {
            private int bitField0_;
            private ByteString data_;
            private int seq_;
            private int xor_;

            public static final Descriptor getDescriptor() {
                return MitalkProtos.q;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.r.ensureFieldAccessorsInitialized(FilePack.class, Builder.class);
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
                if (FilePack.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.seq_ = 0;
                this.bitField0_ &= -2;
                this.xor_ = 0;
                this.bitField0_ &= -3;
                this.data_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.q;
            }

            public FilePack getDefaultInstanceForType() {
                return FilePack.getDefaultInstance();
            }

            public FilePack build() {
                FilePack buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public FilePack buildPartial() {
                int i = 1;
                FilePack filePack = new FilePack(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                filePack.seq_ = this.seq_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                filePack.xor_ = this.xor_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                filePack.data_ = this.data_;
                filePack.bitField0_ = i;
                onBuilt();
                return filePack;
            }

            public boolean hasSeq() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getSeq() {
                return this.seq_;
            }

            public Builder setSeq(int i) {
                this.bitField0_ |= 1;
                this.seq_ = i;
                onChanged();
                return this;
            }

            public Builder clearSeq() {
                this.bitField0_ &= -2;
                this.seq_ = 0;
                onChanged();
                return this;
            }

            public boolean hasXor() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getXor() {
                return this.xor_;
            }

            public Builder setXor(int i) {
                this.bitField0_ |= 2;
                this.xor_ = i;
                onChanged();
                return this;
            }

            public Builder clearXor() {
                this.bitField0_ &= -3;
                this.xor_ = 0;
                onChanged();
                return this;
            }

            public boolean hasData() {
                return (this.bitField0_ & 4) == 4;
            }

            public ByteString getData() {
                return this.data_;
            }

            public Builder setData(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.data_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearData() {
                this.bitField0_ &= -5;
                this.data_ = FilePack.getDefaultInstance().getData();
                onChanged();
                return this;
            }
        }

        private FilePack(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private FilePack(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FilePack getDefaultInstance() {
            return defaultInstance;
        }

        public FilePack getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.q;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.r.ensureFieldAccessorsInitialized(FilePack.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<FilePack> getParserForType() {
            return PARSER;
        }

        public boolean hasSeq() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getSeq() {
            return this.seq_;
        }

        public boolean hasXor() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getXor() {
            return this.xor_;
        }

        public boolean hasData() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getData() {
            return this.data_;
        }

        private void initFields() {
            this.seq_ = 0;
            this.xor_ = 0;
            this.data_ = ByteString.EMPTY;
        }

        public static FilePack parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (FilePack) PARSER.parseFrom(byteString);
        }

        public static FilePack parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FilePack) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FilePack parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (FilePack) PARSER.parseFrom(bArr);
        }

        public static FilePack parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FilePack) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FilePack parseFrom(InputStream inputStream) throws IOException {
            return (FilePack) PARSER.parseFrom(inputStream);
        }

        public static FilePack parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FilePack) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FilePack parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FilePack) PARSER.parseDelimitedFrom(inputStream);
        }

        public static FilePack parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FilePack) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FilePack parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FilePack) PARSER.parseFrom(codedInputStream);
        }

        public static FilePack parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FilePack) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(FilePack filePack) {
            return (Builder) newBuilder().mergeFrom((Message) filePack);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface FilePackOrBuilder extends MessageOrBuilder {
        ByteString getData();

        int getSeq();

        int getXor();

        boolean hasData();

        boolean hasSeq();

        boolean hasXor();
    }

    public static final class FileRequest extends GeneratedMessage implements FileRequestOrBuilder {
        public static final int FCMD_FIELD_NUMBER = 2;
        public static final int FCRC32_FIELD_NUMBER = 5;
        public static final int FPACKNUM_FIELD_NUMBER = 7;
        public static final int FSIZE_FIELD_NUMBER = 4;
        public static final int FTYPE_FIELD_NUMBER = 3;
        public static final int FVERSION_FIELD_NUMBER = 6;
        public static Parser<FileRequest> PARSER = new AbstractParser<FileRequest>() {
            /* renamed from: a */
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
        };
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final FileRequest defaultInstance = new FileRequest(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public FILECMD fCmd_;
        /* access modifiers changed from: private */
        public int fCrc32_;
        /* access modifiers changed from: private */
        public int fPackNum_;
        /* access modifiers changed from: private */
        public int fSize_;
        /* access modifiers changed from: private */
        public FILETYPE fType_;
        /* access modifiers changed from: private */
        public int fVersion_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements FileRequestOrBuilder {
            private int bitField0_;
            private FILECMD fCmd_;
            private int fCrc32_;
            private int fPackNum_;
            private int fSize_;
            private FILETYPE fType_;
            private int fVersion_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return MitalkProtos.o;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.p.ensureFieldAccessorsInitialized(FileRequest.class, Builder.class);
            }

            private Builder() {
                this.fCmd_ = FILECMD.START;
                this.fType_ = FILETYPE.BLEUPFILE;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.fCmd_ = FILECMD.START;
                this.fType_ = FILETYPE.BLEUPFILE;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (FileRequest.alwaysUseFieldBuilders) {
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
                this.fCmd_ = FILECMD.START;
                this.bitField0_ &= -3;
                this.fType_ = FILETYPE.BLEUPFILE;
                this.bitField0_ &= -5;
                this.fSize_ = 0;
                this.bitField0_ &= -9;
                this.fCrc32_ = 0;
                this.bitField0_ &= -17;
                this.fVersion_ = 0;
                this.bitField0_ &= -33;
                this.fPackNum_ = 0;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.o;
            }

            public FileRequest getDefaultInstanceForType() {
                return FileRequest.getDefaultInstance();
            }

            public FileRequest build() {
                FileRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public FileRequest buildPartial() {
                int i = 1;
                FileRequest fileRequest = new FileRequest(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                fileRequest.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                fileRequest.fCmd_ = this.fCmd_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                fileRequest.fType_ = this.fType_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                fileRequest.fSize_ = this.fSize_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                fileRequest.fCrc32_ = this.fCrc32_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                fileRequest.fVersion_ = this.fVersion_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                fileRequest.fPackNum_ = this.fPackNum_;
                fileRequest.bitField0_ = i;
                onBuilt();
                return fileRequest;
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

            public FILECMD getFCmd() {
                return this.fCmd_;
            }

            public Builder setFCmd(FILECMD filecmd) {
                if (filecmd == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.fCmd_ = filecmd;
                onChanged();
                return this;
            }

            public Builder clearFCmd() {
                this.bitField0_ &= -3;
                this.fCmd_ = FILECMD.START;
                onChanged();
                return this;
            }

            public boolean hasFType() {
                return (this.bitField0_ & 4) == 4;
            }

            public FILETYPE getFType() {
                return this.fType_;
            }

            public Builder setFType(FILETYPE filetype) {
                if (filetype == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.fType_ = filetype;
                onChanged();
                return this;
            }

            public Builder clearFType() {
                this.bitField0_ &= -5;
                this.fType_ = FILETYPE.BLEUPFILE;
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

            public boolean hasFVersion() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getFVersion() {
                return this.fVersion_;
            }

            public Builder setFVersion(int i) {
                this.bitField0_ |= 32;
                this.fVersion_ = i;
                onChanged();
                return this;
            }

            public Builder clearFVersion() {
                this.bitField0_ &= -33;
                this.fVersion_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFPackNum() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getFPackNum() {
                return this.fPackNum_;
            }

            public Builder setFPackNum(int i) {
                this.bitField0_ |= 64;
                this.fPackNum_ = i;
                onChanged();
                return this;
            }

            public Builder clearFPackNum() {
                this.bitField0_ &= -65;
                this.fPackNum_ = 0;
                onChanged();
                return this;
            }
        }

        private FileRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private FileRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FileRequest getDefaultInstance() {
            return defaultInstance;
        }

        public FileRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.o;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.p.ensureFieldAccessorsInitialized(FileRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<FileRequest> getParserForType() {
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

        public FILECMD getFCmd() {
            return this.fCmd_;
        }

        public boolean hasFType() {
            return (this.bitField0_ & 4) == 4;
        }

        public FILETYPE getFType() {
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

        public boolean hasFVersion() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getFVersion() {
            return this.fVersion_;
        }

        public boolean hasFPackNum() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getFPackNum() {
            return this.fPackNum_;
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

        public static FileRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (FileRequest) PARSER.parseFrom(byteString);
        }

        public static FileRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FileRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FileRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (FileRequest) PARSER.parseFrom(bArr);
        }

        public static FileRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FileRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FileRequest parseFrom(InputStream inputStream) throws IOException {
            return (FileRequest) PARSER.parseFrom(inputStream);
        }

        public static FileRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FileRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FileRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static FileRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FileRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FileRequest) PARSER.parseFrom(codedInputStream);
        }

        public static FileRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(FileRequest fileRequest) {
            return (Builder) newBuilder().mergeFrom((Message) fileRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

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

    public static final class FileResponse extends GeneratedMessage implements FileResponseOrBuilder {
        public static final int ACKSEQ_FIELD_NUMBER = 2;
        public static Parser<FileResponse> PARSER = new AbstractParser<FileResponse>() {
            /* renamed from: a */
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
        };
        public static final int RESULT_FIELD_NUMBER = 1;
        private static final FileResponse defaultInstance = new FileResponse(true);
        /* access modifiers changed from: private */
        public int ackSeq_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public STATECODE result_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements FileResponseOrBuilder {
            private int ackSeq_;
            private int bitField0_;
            private STATECODE result_;

            public static final Descriptor getDescriptor() {
                return MitalkProtos.s;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.t.ensureFieldAccessorsInitialized(FileResponse.class, Builder.class);
            }

            private Builder() {
                this.result_ = STATECODE.SUCCESS;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = STATECODE.SUCCESS;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (FileResponse.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.result_ = STATECODE.SUCCESS;
                this.bitField0_ &= -2;
                this.ackSeq_ = 0;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.s;
            }

            public FileResponse getDefaultInstanceForType() {
                return FileResponse.getDefaultInstance();
            }

            public FileResponse build() {
                FileResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public FileResponse buildPartial() {
                int i = 1;
                FileResponse fileResponse = new FileResponse(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                fileResponse.result_ = this.result_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                fileResponse.ackSeq_ = this.ackSeq_;
                fileResponse.bitField0_ = i;
                onBuilt();
                return fileResponse;
            }

            public boolean hasResult() {
                return (this.bitField0_ & 1) == 1;
            }

            public STATECODE getResult() {
                return this.result_;
            }

            public Builder setResult(STATECODE statecode) {
                if (statecode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.result_ = statecode;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -2;
                this.result_ = STATECODE.SUCCESS;
                onChanged();
                return this;
            }

            public boolean hasAckSeq() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getAckSeq() {
                return this.ackSeq_;
            }

            public Builder setAckSeq(int i) {
                this.bitField0_ |= 2;
                this.ackSeq_ = i;
                onChanged();
                return this;
            }

            public Builder clearAckSeq() {
                this.bitField0_ &= -3;
                this.ackSeq_ = 0;
                onChanged();
                return this;
            }
        }

        private FileResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private FileResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FileResponse getDefaultInstance() {
            return defaultInstance;
        }

        public FileResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.s;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.t.ensureFieldAccessorsInitialized(FileResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<FileResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasResult() {
            return (this.bitField0_ & 1) == 1;
        }

        public STATECODE getResult() {
            return this.result_;
        }

        public boolean hasAckSeq() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getAckSeq() {
            return this.ackSeq_;
        }

        private void initFields() {
            this.result_ = STATECODE.SUCCESS;
            this.ackSeq_ = 0;
        }

        public static FileResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (FileResponse) PARSER.parseFrom(byteString);
        }

        public static FileResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FileResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FileResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (FileResponse) PARSER.parseFrom(bArr);
        }

        public static FileResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FileResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FileResponse parseFrom(InputStream inputStream) throws IOException {
            return (FileResponse) PARSER.parseFrom(inputStream);
        }

        public static FileResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FileResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FileResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static FileResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FileResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FileResponse) PARSER.parseFrom(codedInputStream);
        }

        public static FileResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FileResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(FileResponse fileResponse) {
            return (Builder) newBuilder().mergeFrom((Message) fileResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface FileResponseOrBuilder extends MessageOrBuilder {
        int getAckSeq();

        STATECODE getResult();

        boolean hasAckSeq();

        boolean hasResult();
    }

    public static final class IntercomTest extends GeneratedMessage implements IntercomTestOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        public static Parser<IntercomTest> PARSER = new AbstractParser<IntercomTest>() {
            /* renamed from: a */
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
        };
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final IntercomTest defaultInstance = new IntercomTest(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString data_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements IntercomTestOrBuilder {
            private int bitField0_;
            private ByteString data_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return MitalkProtos.w;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.x.ensureFieldAccessorsInitialized(IntercomTest.class, Builder.class);
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
                if (IntercomTest.alwaysUseFieldBuilders) {
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
                this.data_ = ByteString.EMPTY;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.w;
            }

            public IntercomTest getDefaultInstanceForType() {
                return IntercomTest.getDefaultInstance();
            }

            public IntercomTest build() {
                IntercomTest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public IntercomTest buildPartial() {
                int i = 1;
                IntercomTest intercomTest = new IntercomTest(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                intercomTest.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                intercomTest.data_ = this.data_;
                intercomTest.bitField0_ = i;
                onBuilt();
                return intercomTest;
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
                this.data_ = IntercomTest.getDefaultInstance().getData();
                onChanged();
                return this;
            }
        }

        private IntercomTest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private IntercomTest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static IntercomTest getDefaultInstance() {
            return defaultInstance;
        }

        public IntercomTest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.w;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.x.ensureFieldAccessorsInitialized(IntercomTest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<IntercomTest> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasData() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getData() {
            return this.data_;
        }

        private void initFields() {
            this.version_ = 0;
            this.data_ = ByteString.EMPTY;
        }

        public static IntercomTest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (IntercomTest) PARSER.parseFrom(byteString);
        }

        public static IntercomTest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IntercomTest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static IntercomTest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (IntercomTest) PARSER.parseFrom(bArr);
        }

        public static IntercomTest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (IntercomTest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static IntercomTest parseFrom(InputStream inputStream) throws IOException {
            return (IntercomTest) PARSER.parseFrom(inputStream);
        }

        public static IntercomTest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IntercomTest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static IntercomTest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IntercomTest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static IntercomTest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IntercomTest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static IntercomTest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (IntercomTest) PARSER.parseFrom(codedInputStream);
        }

        public static IntercomTest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (IntercomTest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(IntercomTest intercomTest) {
            return (Builder) newBuilder().mergeFrom((Message) intercomTest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface IntercomTestOrBuilder extends MessageOrBuilder {
        ByteString getData();

        int getVersion();

        boolean hasData();

        boolean hasVersion();
    }

    public static final class LocationSync extends GeneratedMessage implements LocationSyncOrBuilder {
        public static final int ALTITUDE_FIELD_NUMBER = 7;
        public static final int CTL_FIELD_NUMBER = 2;
        public static final int FREQ_FIELD_NUMBER = 9;
        public static final int LATITUDE_FIELD_NUMBER = 6;
        public static final int LONGITUDE_FIELD_NUMBER = 5;
        public static Parser<LocationSync> PARSER = new AbstractParser<LocationSync>() {
            /* renamed from: a */
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
        };
        public static final int TIME_FIELD_NUMBER = 8;
        public static final int USERID_FIELD_NUMBER = 3;
        public static final int USERNAME_FIELD_NUMBER = 4;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final LocationSync defaultInstance = new LocationSync(true);
        /* access modifiers changed from: private */
        public int altitude_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public CTLSYNC ctl_;
        /* access modifiers changed from: private */
        public int freq_;
        /* access modifiers changed from: private */
        public int latitude_;
        /* access modifiers changed from: private */
        public int longitude_;
        /* access modifiers changed from: private */
        public int time_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int userId_;
        /* access modifiers changed from: private */
        public ByteString userName_;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements LocationSyncOrBuilder {
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

            public static final Descriptor getDescriptor() {
                return MitalkProtos.m;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.n.ensureFieldAccessorsInitialized(LocationSync.class, Builder.class);
            }

            private Builder() {
                this.ctl_ = CTLSYNC.DISABLE;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.ctl_ = CTLSYNC.DISABLE;
                this.userName_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (LocationSync.alwaysUseFieldBuilders) {
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
                this.ctl_ = CTLSYNC.DISABLE;
                this.bitField0_ &= -3;
                this.userId_ = 0;
                this.bitField0_ &= -5;
                this.userName_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                this.longitude_ = 0;
                this.bitField0_ &= -17;
                this.latitude_ = 0;
                this.bitField0_ &= -33;
                this.altitude_ = 0;
                this.bitField0_ &= -65;
                this.time_ = 0;
                this.bitField0_ &= -129;
                this.freq_ = 0;
                this.bitField0_ &= -257;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.m;
            }

            public LocationSync getDefaultInstanceForType() {
                return LocationSync.getDefaultInstance();
            }

            public LocationSync build() {
                LocationSync buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public LocationSync buildPartial() {
                int i = 1;
                LocationSync locationSync = new LocationSync(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                locationSync.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                locationSync.ctl_ = this.ctl_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                locationSync.userId_ = this.userId_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                locationSync.userName_ = this.userName_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                locationSync.longitude_ = this.longitude_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                locationSync.latitude_ = this.latitude_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                locationSync.altitude_ = this.altitude_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                locationSync.time_ = this.time_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                locationSync.freq_ = this.freq_;
                locationSync.bitField0_ = i;
                onBuilt();
                return locationSync;
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

            public boolean hasCtl() {
                return (this.bitField0_ & 2) == 2;
            }

            public CTLSYNC getCtl() {
                return this.ctl_;
            }

            public Builder setCtl(CTLSYNC ctlsync) {
                if (ctlsync == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.ctl_ = ctlsync;
                onChanged();
                return this;
            }

            public Builder clearCtl() {
                this.bitField0_ &= -3;
                this.ctl_ = CTLSYNC.DISABLE;
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
                this.userName_ = LocationSync.getDefaultInstance().getUserName();
                onChanged();
                return this;
            }

            public boolean hasLongitude() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getLongitude() {
                return this.longitude_;
            }

            public Builder setLongitude(int i) {
                this.bitField0_ |= 16;
                this.longitude_ = i;
                onChanged();
                return this;
            }

            public Builder clearLongitude() {
                this.bitField0_ &= -17;
                this.longitude_ = 0;
                onChanged();
                return this;
            }

            public boolean hasLatitude() {
                return (this.bitField0_ & 32) == 32;
            }

            public int getLatitude() {
                return this.latitude_;
            }

            public Builder setLatitude(int i) {
                this.bitField0_ |= 32;
                this.latitude_ = i;
                onChanged();
                return this;
            }

            public Builder clearLatitude() {
                this.bitField0_ &= -33;
                this.latitude_ = 0;
                onChanged();
                return this;
            }

            public boolean hasAltitude() {
                return (this.bitField0_ & 64) == 64;
            }

            public int getAltitude() {
                return this.altitude_;
            }

            public Builder setAltitude(int i) {
                this.bitField0_ |= 64;
                this.altitude_ = i;
                onChanged();
                return this;
            }

            public Builder clearAltitude() {
                this.bitField0_ &= -65;
                this.altitude_ = 0;
                onChanged();
                return this;
            }

            public boolean hasTime() {
                return (this.bitField0_ & 128) == 128;
            }

            public int getTime() {
                return this.time_;
            }

            public Builder setTime(int i) {
                this.bitField0_ |= 128;
                this.time_ = i;
                onChanged();
                return this;
            }

            public Builder clearTime() {
                this.bitField0_ &= -129;
                this.time_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFreq() {
                return (this.bitField0_ & 256) == 256;
            }

            public int getFreq() {
                return this.freq_;
            }

            public Builder setFreq(int i) {
                this.bitField0_ |= 256;
                this.freq_ = i;
                onChanged();
                return this;
            }

            public Builder clearFreq() {
                this.bitField0_ &= -257;
                this.freq_ = 0;
                onChanged();
                return this;
            }
        }

        private LocationSync(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private LocationSync(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static LocationSync getDefaultInstance() {
            return defaultInstance;
        }

        public LocationSync getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.m;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.n.ensureFieldAccessorsInitialized(LocationSync.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<LocationSync> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        public boolean hasCtl() {
            return (this.bitField0_ & 2) == 2;
        }

        public CTLSYNC getCtl() {
            return this.ctl_;
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

        public boolean hasLongitude() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getLongitude() {
            return this.longitude_;
        }

        public boolean hasLatitude() {
            return (this.bitField0_ & 32) == 32;
        }

        public int getLatitude() {
            return this.latitude_;
        }

        public boolean hasAltitude() {
            return (this.bitField0_ & 64) == 64;
        }

        public int getAltitude() {
            return this.altitude_;
        }

        public boolean hasTime() {
            return (this.bitField0_ & 128) == 128;
        }

        public int getTime() {
            return this.time_;
        }

        public boolean hasFreq() {
            return (this.bitField0_ & 256) == 256;
        }

        public int getFreq() {
            return this.freq_;
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

        public static LocationSync parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (LocationSync) PARSER.parseFrom(byteString);
        }

        public static LocationSync parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (LocationSync) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static LocationSync parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (LocationSync) PARSER.parseFrom(bArr);
        }

        public static LocationSync parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (LocationSync) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static LocationSync parseFrom(InputStream inputStream) throws IOException {
            return (LocationSync) PARSER.parseFrom(inputStream);
        }

        public static LocationSync parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LocationSync) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static LocationSync parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (LocationSync) PARSER.parseDelimitedFrom(inputStream);
        }

        public static LocationSync parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LocationSync) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static LocationSync parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (LocationSync) PARSER.parseFrom(codedInputStream);
        }

        public static LocationSync parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LocationSync) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(LocationSync locationSync) {
            return (Builder) newBuilder().mergeFrom((Message) locationSync);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

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

    public static final class LogRequest extends GeneratedMessage implements LogRequestOrBuilder {
        public static Parser<LogRequest> PARSER = new AbstractParser<LogRequest>() {
            /* renamed from: a */
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
        };
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final LogRequest defaultInstance = new LogRequest(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements LogRequestOrBuilder {
            private int bitField0_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return MitalkProtos.u;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.v.ensureFieldAccessorsInitialized(LogRequest.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (LogRequest.alwaysUseFieldBuilders) {
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
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.u;
            }

            public LogRequest getDefaultInstanceForType() {
                return LogRequest.getDefaultInstance();
            }

            public LogRequest build() {
                LogRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public LogRequest buildPartial() {
                int i = 1;
                LogRequest logRequest = new LogRequest(this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                logRequest.version_ = this.version_;
                logRequest.bitField0_ = i;
                onBuilt();
                return logRequest;
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
        }

        private LogRequest(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private LogRequest(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static LogRequest getDefaultInstance() {
            return defaultInstance;
        }

        public LogRequest getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.u;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.v.ensureFieldAccessorsInitialized(LogRequest.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<LogRequest> getParserForType() {
            return PARSER;
        }

        public boolean hasVersion() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getVersion() {
            return this.version_;
        }

        private void initFields() {
            this.version_ = 0;
        }

        public static LogRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (LogRequest) PARSER.parseFrom(byteString);
        }

        public static LogRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (LogRequest) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static LogRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (LogRequest) PARSER.parseFrom(bArr);
        }

        public static LogRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (LogRequest) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static LogRequest parseFrom(InputStream inputStream) throws IOException {
            return (LogRequest) PARSER.parseFrom(inputStream);
        }

        public static LogRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LogRequest) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static LogRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (LogRequest) PARSER.parseDelimitedFrom(inputStream);
        }

        public static LogRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LogRequest) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static LogRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (LogRequest) PARSER.parseFrom(codedInputStream);
        }

        public static LogRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LogRequest) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(LogRequest logRequest) {
            return (Builder) newBuilder().mergeFrom((Message) logRequest);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface LogRequestOrBuilder extends MessageOrBuilder {
        int getVersion();

        boolean hasVersion();
    }

    public enum POWERSTATE implements ProtocolMessageEnum {
        ALLOWUPDATE(0, 0),
        PROHIBITEUPDATE(1, 1);
        
        public static final int ALLOWUPDATE_VALUE = 0;
        public static final int PROHIBITEUPDATE_VALUE = 1;
        private static final POWERSTATE[] VALUES = null;
        private static EnumLiteMap<POWERSTATE> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<POWERSTATE>() {
                /* renamed from: a */
                public POWERSTATE findValueByNumber(int i) {
                    return POWERSTATE.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static POWERSTATE valueOf(int i) {
            switch (i) {
                case 0:
                    return ALLOWUPDATE;
                case 1:
                    return PROHIBITEUPDATE;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<POWERSTATE> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) MitalkProtos.a().getEnumTypes().get(3);
        }

        public static POWERSTATE valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private POWERSTATE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    public static final class ParamUpdate extends GeneratedMessage implements ParamUpdateOrBuilder {
        public static final int ACTIVATECHANNEL_FIELD_NUMBER = 17;
        public static final int DEVICEID_FIELD_NUMBER = 4;
        public static final int DEVNAMEGBK_FIELD_NUMBER = 12;
        public static final int DEVNAMEUTF8_FIELD_NUMBER = 11;
        public static final int LANGUAGE_FIELD_NUMBER = 18;
        public static final int LOWPOWER_FIELD_NUMBER = 15;
        public static final int MODE_FIELD_NUMBER = 3;
        public static Parser<ParamUpdate> PARSER = new AbstractParser<ParamUpdate>() {
            /* renamed from: a */
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
        };
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
        private static final ParamUpdate defaultInstance = new ParamUpdate(true);
        /* access modifiers changed from: private */
        public int activateChannel_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString devNameGBK_;
        /* access modifiers changed from: private */
        public ByteString devNameUTF8_;
        /* access modifiers changed from: private */
        public int deviceId_;
        /* access modifiers changed from: private */
        public int language_;
        /* access modifiers changed from: private */
        public POWERSTATE lowPower_;
        /* access modifiers changed from: private */
        public ByteString mode_;
        /* access modifiers changed from: private */
        public STATECODE result_;
        /* access modifiers changed from: private */
        public int shareLoc_;
        /* access modifiers changed from: private */
        public ByteString sosText_;
        /* access modifiers changed from: private */
        public STATEMODE stateMode_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int userId_;
        /* access modifiers changed from: private */
        public ByteString userName_;
        /* access modifiers changed from: private */
        public int versionBLE_;
        /* access modifiers changed from: private */
        public int versionExtend_;
        /* access modifiers changed from: private */
        public int versionHW_;
        /* access modifiers changed from: private */
        public int versionMCU_;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ParamUpdateOrBuilder {
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

            public static final Descriptor getDescriptor() {
                return MitalkProtos.g;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.h.ensureFieldAccessorsInitialized(ParamUpdate.class, Builder.class);
            }

            private Builder() {
                this.result_ = STATECODE.SUCCESS;
                this.mode_ = ByteString.EMPTY;
                this.userName_ = ByteString.EMPTY;
                this.sosText_ = ByteString.EMPTY;
                this.stateMode_ = STATEMODE.SINGLE;
                this.devNameUTF8_ = ByteString.EMPTY;
                this.devNameGBK_ = ByteString.EMPTY;
                this.lowPower_ = POWERSTATE.ALLOWUPDATE;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = STATECODE.SUCCESS;
                this.mode_ = ByteString.EMPTY;
                this.userName_ = ByteString.EMPTY;
                this.sosText_ = ByteString.EMPTY;
                this.stateMode_ = STATEMODE.SINGLE;
                this.devNameUTF8_ = ByteString.EMPTY;
                this.devNameGBK_ = ByteString.EMPTY;
                this.lowPower_ = POWERSTATE.ALLOWUPDATE;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (ParamUpdate.alwaysUseFieldBuilders) {
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
                this.result_ = STATECODE.SUCCESS;
                this.bitField0_ &= -3;
                this.mode_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                this.deviceId_ = 0;
                this.bitField0_ &= -9;
                this.userId_ = 0;
                this.bitField0_ &= -17;
                this.userName_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                this.sosText_ = ByteString.EMPTY;
                this.bitField0_ &= -65;
                this.versionBLE_ = 0;
                this.bitField0_ &= -129;
                this.versionMCU_ = 0;
                this.bitField0_ &= -257;
                this.stateMode_ = STATEMODE.SINGLE;
                this.bitField0_ &= -513;
                this.devNameUTF8_ = ByteString.EMPTY;
                this.bitField0_ &= -1025;
                this.devNameGBK_ = ByteString.EMPTY;
                this.bitField0_ &= -2049;
                this.shareLoc_ = 0;
                this.bitField0_ &= -4097;
                this.versionHW_ = 0;
                this.bitField0_ &= -8193;
                this.lowPower_ = POWERSTATE.ALLOWUPDATE;
                this.bitField0_ &= -16385;
                this.versionExtend_ = 0;
                this.bitField0_ &= -32769;
                this.activateChannel_ = 0;
                this.bitField0_ &= -65537;
                this.language_ = 0;
                this.bitField0_ &= -131073;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.g;
            }

            public ParamUpdate getDefaultInstanceForType() {
                return ParamUpdate.getDefaultInstance();
            }

            public ParamUpdate build() {
                ParamUpdate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ParamUpdate buildPartial() {
                int i = 1;
                ParamUpdate paramUpdate = new ParamUpdate(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                paramUpdate.version_ = this.version_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                paramUpdate.result_ = this.result_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                paramUpdate.mode_ = this.mode_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                paramUpdate.deviceId_ = this.deviceId_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                paramUpdate.userId_ = this.userId_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                paramUpdate.userName_ = this.userName_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                paramUpdate.sosText_ = this.sosText_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                paramUpdate.versionBLE_ = this.versionBLE_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                paramUpdate.versionMCU_ = this.versionMCU_;
                if ((i2 & 512) == 512) {
                    i |= 512;
                }
                paramUpdate.stateMode_ = this.stateMode_;
                if ((i2 & 1024) == 1024) {
                    i |= 1024;
                }
                paramUpdate.devNameUTF8_ = this.devNameUTF8_;
                if ((i2 & 2048) == 2048) {
                    i |= 2048;
                }
                paramUpdate.devNameGBK_ = this.devNameGBK_;
                if ((i2 & 4096) == 4096) {
                    i |= 4096;
                }
                paramUpdate.shareLoc_ = this.shareLoc_;
                if ((i2 & 8192) == 8192) {
                    i |= 8192;
                }
                paramUpdate.versionHW_ = this.versionHW_;
                if ((i2 & 16384) == 16384) {
                    i |= 16384;
                }
                paramUpdate.lowPower_ = this.lowPower_;
                if ((i2 & 32768) == 32768) {
                    i |= 32768;
                }
                paramUpdate.versionExtend_ = this.versionExtend_;
                if ((i2 & 65536) == 65536) {
                    i |= 65536;
                }
                paramUpdate.activateChannel_ = this.activateChannel_;
                if ((i2 & 131072) == 131072) {
                    i |= 131072;
                }
                paramUpdate.language_ = this.language_;
                paramUpdate.bitField0_ = i;
                onBuilt();
                return paramUpdate;
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

            public STATECODE getResult() {
                return this.result_;
            }

            public Builder setResult(STATECODE statecode) {
                if (statecode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.result_ = statecode;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = STATECODE.SUCCESS;
                onChanged();
                return this;
            }

            public boolean hasMode() {
                return (this.bitField0_ & 4) == 4;
            }

            public ByteString getMode() {
                return this.mode_;
            }

            public Builder setMode(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.mode_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearMode() {
                this.bitField0_ &= -5;
                this.mode_ = ParamUpdate.getDefaultInstance().getMode();
                onChanged();
                return this;
            }

            public boolean hasDeviceId() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getDeviceId() {
                return this.deviceId_;
            }

            public Builder setDeviceId(int i) {
                this.bitField0_ |= 8;
                this.deviceId_ = i;
                onChanged();
                return this;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -9;
                this.deviceId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasUserId() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getUserId() {
                return this.userId_;
            }

            public Builder setUserId(int i) {
                this.bitField0_ |= 16;
                this.userId_ = i;
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.bitField0_ &= -17;
                this.userId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasUserName() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getUserName() {
                return this.userName_;
            }

            public Builder setUserName(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.userName_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearUserName() {
                this.bitField0_ &= -33;
                this.userName_ = ParamUpdate.getDefaultInstance().getUserName();
                onChanged();
                return this;
            }

            public boolean hasSosText() {
                return (this.bitField0_ & 64) == 64;
            }

            public ByteString getSosText() {
                return this.sosText_;
            }

            public Builder setSosText(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.sosText_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearSosText() {
                this.bitField0_ &= -65;
                this.sosText_ = ParamUpdate.getDefaultInstance().getSosText();
                onChanged();
                return this;
            }

            public boolean hasVersionBLE() {
                return (this.bitField0_ & 128) == 128;
            }

            public int getVersionBLE() {
                return this.versionBLE_;
            }

            public Builder setVersionBLE(int i) {
                this.bitField0_ |= 128;
                this.versionBLE_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersionBLE() {
                this.bitField0_ &= -129;
                this.versionBLE_ = 0;
                onChanged();
                return this;
            }

            public boolean hasVersionMCU() {
                return (this.bitField0_ & 256) == 256;
            }

            public int getVersionMCU() {
                return this.versionMCU_;
            }

            public Builder setVersionMCU(int i) {
                this.bitField0_ |= 256;
                this.versionMCU_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersionMCU() {
                this.bitField0_ &= -257;
                this.versionMCU_ = 0;
                onChanged();
                return this;
            }

            public boolean hasStateMode() {
                return (this.bitField0_ & 512) == 512;
            }

            public STATEMODE getStateMode() {
                return this.stateMode_;
            }

            public Builder setStateMode(STATEMODE statemode) {
                if (statemode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 512;
                this.stateMode_ = statemode;
                onChanged();
                return this;
            }

            public Builder clearStateMode() {
                this.bitField0_ &= -513;
                this.stateMode_ = STATEMODE.SINGLE;
                onChanged();
                return this;
            }

            public boolean hasDevNameUTF8() {
                return (this.bitField0_ & 1024) == 1024;
            }

            public ByteString getDevNameUTF8() {
                return this.devNameUTF8_;
            }

            public Builder setDevNameUTF8(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1024;
                this.devNameUTF8_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearDevNameUTF8() {
                this.bitField0_ &= -1025;
                this.devNameUTF8_ = ParamUpdate.getDefaultInstance().getDevNameUTF8();
                onChanged();
                return this;
            }

            public boolean hasDevNameGBK() {
                return (this.bitField0_ & 2048) == 2048;
            }

            public ByteString getDevNameGBK() {
                return this.devNameGBK_;
            }

            public Builder setDevNameGBK(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2048;
                this.devNameGBK_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearDevNameGBK() {
                this.bitField0_ &= -2049;
                this.devNameGBK_ = ParamUpdate.getDefaultInstance().getDevNameGBK();
                onChanged();
                return this;
            }

            public boolean hasShareLoc() {
                return (this.bitField0_ & 4096) == 4096;
            }

            public int getShareLoc() {
                return this.shareLoc_;
            }

            public Builder setShareLoc(int i) {
                this.bitField0_ |= 4096;
                this.shareLoc_ = i;
                onChanged();
                return this;
            }

            public Builder clearShareLoc() {
                this.bitField0_ &= -4097;
                this.shareLoc_ = 0;
                onChanged();
                return this;
            }

            public boolean hasVersionHW() {
                return (this.bitField0_ & 8192) == 8192;
            }

            public int getVersionHW() {
                return this.versionHW_;
            }

            public Builder setVersionHW(int i) {
                this.bitField0_ |= 8192;
                this.versionHW_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersionHW() {
                this.bitField0_ &= -8193;
                this.versionHW_ = 0;
                onChanged();
                return this;
            }

            public boolean hasLowPower() {
                return (this.bitField0_ & 16384) == 16384;
            }

            public POWERSTATE getLowPower() {
                return this.lowPower_;
            }

            public Builder setLowPower(POWERSTATE powerstate) {
                if (powerstate == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16384;
                this.lowPower_ = powerstate;
                onChanged();
                return this;
            }

            public Builder clearLowPower() {
                this.bitField0_ &= -16385;
                this.lowPower_ = POWERSTATE.ALLOWUPDATE;
                onChanged();
                return this;
            }

            public boolean hasVersionExtend() {
                return (this.bitField0_ & 32768) == 32768;
            }

            public int getVersionExtend() {
                return this.versionExtend_;
            }

            public Builder setVersionExtend(int i) {
                this.bitField0_ |= 32768;
                this.versionExtend_ = i;
                onChanged();
                return this;
            }

            public Builder clearVersionExtend() {
                this.bitField0_ &= -32769;
                this.versionExtend_ = 0;
                onChanged();
                return this;
            }

            public boolean hasActivateChannel() {
                return (this.bitField0_ & 65536) == 65536;
            }

            public int getActivateChannel() {
                return this.activateChannel_;
            }

            public Builder setActivateChannel(int i) {
                this.bitField0_ |= 65536;
                this.activateChannel_ = i;
                onChanged();
                return this;
            }

            public Builder clearActivateChannel() {
                this.bitField0_ &= -65537;
                this.activateChannel_ = 0;
                onChanged();
                return this;
            }

            public boolean hasLanguage() {
                return (this.bitField0_ & 131072) == 131072;
            }

            public int getLanguage() {
                return this.language_;
            }

            public Builder setLanguage(int i) {
                this.bitField0_ |= 131072;
                this.language_ = i;
                onChanged();
                return this;
            }

            public Builder clearLanguage() {
                this.bitField0_ &= -131073;
                this.language_ = 0;
                onChanged();
                return this;
            }
        }

        private ParamUpdate(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private ParamUpdate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ParamUpdate getDefaultInstance() {
            return defaultInstance;
        }

        public ParamUpdate getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.g;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.h.ensureFieldAccessorsInitialized(ParamUpdate.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ParamUpdate> getParserForType() {
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

        public STATECODE getResult() {
            return this.result_;
        }

        public boolean hasMode() {
            return (this.bitField0_ & 4) == 4;
        }

        public ByteString getMode() {
            return this.mode_;
        }

        public boolean hasDeviceId() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getDeviceId() {
            return this.deviceId_;
        }

        public boolean hasUserId() {
            return (this.bitField0_ & 16) == 16;
        }

        public int getUserId() {
            return this.userId_;
        }

        public boolean hasUserName() {
            return (this.bitField0_ & 32) == 32;
        }

        public ByteString getUserName() {
            return this.userName_;
        }

        public boolean hasSosText() {
            return (this.bitField0_ & 64) == 64;
        }

        public ByteString getSosText() {
            return this.sosText_;
        }

        public boolean hasVersionBLE() {
            return (this.bitField0_ & 128) == 128;
        }

        public int getVersionBLE() {
            return this.versionBLE_;
        }

        public boolean hasVersionMCU() {
            return (this.bitField0_ & 256) == 256;
        }

        public int getVersionMCU() {
            return this.versionMCU_;
        }

        public boolean hasStateMode() {
            return (this.bitField0_ & 512) == 512;
        }

        public STATEMODE getStateMode() {
            return this.stateMode_;
        }

        public boolean hasDevNameUTF8() {
            return (this.bitField0_ & 1024) == 1024;
        }

        public ByteString getDevNameUTF8() {
            return this.devNameUTF8_;
        }

        public boolean hasDevNameGBK() {
            return (this.bitField0_ & 2048) == 2048;
        }

        public ByteString getDevNameGBK() {
            return this.devNameGBK_;
        }

        public boolean hasShareLoc() {
            return (this.bitField0_ & 4096) == 4096;
        }

        public int getShareLoc() {
            return this.shareLoc_;
        }

        public boolean hasVersionHW() {
            return (this.bitField0_ & 8192) == 8192;
        }

        public int getVersionHW() {
            return this.versionHW_;
        }

        public boolean hasLowPower() {
            return (this.bitField0_ & 16384) == 16384;
        }

        public POWERSTATE getLowPower() {
            return this.lowPower_;
        }

        public boolean hasVersionExtend() {
            return (this.bitField0_ & 32768) == 32768;
        }

        public int getVersionExtend() {
            return this.versionExtend_;
        }

        public boolean hasActivateChannel() {
            return (this.bitField0_ & 65536) == 65536;
        }

        public int getActivateChannel() {
            return this.activateChannel_;
        }

        public boolean hasLanguage() {
            return (this.bitField0_ & 131072) == 131072;
        }

        public int getLanguage() {
            return this.language_;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = STATECODE.SUCCESS;
            this.mode_ = ByteString.EMPTY;
            this.deviceId_ = 0;
            this.userId_ = 0;
            this.userName_ = ByteString.EMPTY;
            this.sosText_ = ByteString.EMPTY;
            this.versionBLE_ = 0;
            this.versionMCU_ = 0;
            this.stateMode_ = STATEMODE.SINGLE;
            this.devNameUTF8_ = ByteString.EMPTY;
            this.devNameGBK_ = ByteString.EMPTY;
            this.shareLoc_ = 0;
            this.versionHW_ = 0;
            this.lowPower_ = POWERSTATE.ALLOWUPDATE;
            this.versionExtend_ = 0;
            this.activateChannel_ = 0;
            this.language_ = 0;
        }

        public static ParamUpdate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ParamUpdate) PARSER.parseFrom(byteString);
        }

        public static ParamUpdate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ParamUpdate) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ParamUpdate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ParamUpdate) PARSER.parseFrom(bArr);
        }

        public static ParamUpdate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ParamUpdate) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ParamUpdate parseFrom(InputStream inputStream) throws IOException {
            return (ParamUpdate) PARSER.parseFrom(inputStream);
        }

        public static ParamUpdate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParamUpdate) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ParamUpdate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ParamUpdate) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ParamUpdate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParamUpdate) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ParamUpdate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ParamUpdate) PARSER.parseFrom(codedInputStream);
        }

        public static ParamUpdate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ParamUpdate) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ParamUpdate paramUpdate) {
            return (Builder) newBuilder().mergeFrom((Message) paramUpdate);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

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
        private static final STATECODE[] VALUES = null;
        private static EnumLiteMap<STATECODE> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<STATECODE>() {
                /* renamed from: a */
                public STATECODE findValueByNumber(int i) {
                    return STATECODE.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static STATECODE valueOf(int i) {
            switch (i) {
                case 0:
                    return SUCCESS;
                case 1:
                    return FAILED;
                case 2:
                    return PARAMERROR;
                case 3:
                    return NOTSUPPORT;
                case 4:
                    return FINAL;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<STATECODE> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) MitalkProtos.a().getEnumTypes().get(0);
        }

        public static STATECODE valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private STATECODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

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
        private static final STATEMODE[] VALUES = null;
        private static EnumLiteMap<STATEMODE> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<STATEMODE>() {
                /* renamed from: a */
                public STATEMODE findValueByNumber(int i) {
                    return STATEMODE.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
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

        public static EnumLiteMap<STATEMODE> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) MitalkProtos.a().getEnumTypes().get(4);
        }

        public static STATEMODE valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private STATEMODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    public static final class StateUpdate extends GeneratedMessage implements StateUpdateOrBuilder {
        public static final int CH1_FIELD_NUMBER = 4;
        public static final int CH2_FIELD_NUMBER = 5;
        public static final int OPTION_FIELD_NUMBER = 3;
        public static Parser<StateUpdate> PARSER = new AbstractParser<StateUpdate>() {
            /* renamed from: a */
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
        };
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int STATEMODE_FIELD_NUMBER = 6;
        public static final int VERSION_FIELD_NUMBER = 1;
        private static final StateUpdate defaultInstance = new StateUpdate(true);
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ChannelInfo ch1_;
        /* access modifiers changed from: private */
        public ChannelInfo ch2_;
        /* access modifiers changed from: private */
        public CHOPTION option_;
        /* access modifiers changed from: private */
        public STATECODE result_;
        /* access modifiers changed from: private */
        public STATEMODE stateMode_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int version_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements StateUpdateOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<ChannelInfo, Builder, ChannelInfoOrBuilder> ch1Builder_;
            private ChannelInfo ch1_;
            private SingleFieldBuilder<ChannelInfo, Builder, ChannelInfoOrBuilder> ch2Builder_;
            private ChannelInfo ch2_;
            private CHOPTION option_;
            private STATECODE result_;
            private STATEMODE stateMode_;
            private int version_;

            public static final Descriptor getDescriptor() {
                return MitalkProtos.i;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.j.ensureFieldAccessorsInitialized(StateUpdate.class, Builder.class);
            }

            private Builder() {
                this.result_ = STATECODE.SUCCESS;
                this.option_ = CHOPTION.CH_INSERT;
                this.ch1_ = ChannelInfo.getDefaultInstance();
                this.ch2_ = ChannelInfo.getDefaultInstance();
                this.stateMode_ = STATEMODE.SINGLE;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.result_ = STATECODE.SUCCESS;
                this.option_ = CHOPTION.CH_INSERT;
                this.ch1_ = ChannelInfo.getDefaultInstance();
                this.ch2_ = ChannelInfo.getDefaultInstance();
                this.stateMode_ = STATEMODE.SINGLE;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (StateUpdate.alwaysUseFieldBuilders) {
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
                this.result_ = STATECODE.SUCCESS;
                this.bitField0_ &= -3;
                this.option_ = CHOPTION.CH_INSERT;
                this.bitField0_ &= -5;
                if (this.ch1Builder_ == null) {
                    this.ch1_ = ChannelInfo.getDefaultInstance();
                } else {
                    this.ch1Builder_.clear();
                }
                this.bitField0_ &= -9;
                if (this.ch2Builder_ == null) {
                    this.ch2_ = ChannelInfo.getDefaultInstance();
                } else {
                    this.ch2Builder_.clear();
                }
                this.bitField0_ &= -17;
                this.stateMode_ = STATEMODE.SINGLE;
                this.bitField0_ &= -33;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.i;
            }

            public StateUpdate getDefaultInstanceForType() {
                return StateUpdate.getDefaultInstance();
            }

            public StateUpdate build() {
                StateUpdate buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public StateUpdate buildPartial() {
                int i;
                int i2 = 1;
                StateUpdate stateUpdate = new StateUpdate(this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                stateUpdate.version_ = this.version_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                stateUpdate.result_ = this.result_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                stateUpdate.option_ = this.option_;
                if ((i3 & 8) == 8) {
                    i = i2 | 8;
                } else {
                    i = i2;
                }
                if (this.ch1Builder_ == null) {
                    stateUpdate.ch1_ = this.ch1_;
                } else {
                    stateUpdate.ch1_ = (ChannelInfo) this.ch1Builder_.build();
                }
                if ((i3 & 16) == 16) {
                    i |= 16;
                }
                if (this.ch2Builder_ == null) {
                    stateUpdate.ch2_ = this.ch2_;
                } else {
                    stateUpdate.ch2_ = (ChannelInfo) this.ch2Builder_.build();
                }
                if ((i3 & 32) == 32) {
                    i |= 32;
                }
                stateUpdate.stateMode_ = this.stateMode_;
                stateUpdate.bitField0_ = i;
                onBuilt();
                return stateUpdate;
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

            public STATECODE getResult() {
                return this.result_;
            }

            public Builder setResult(STATECODE statecode) {
                if (statecode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.result_ = statecode;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = STATECODE.SUCCESS;
                onChanged();
                return this;
            }

            public boolean hasOption() {
                return (this.bitField0_ & 4) == 4;
            }

            public CHOPTION getOption() {
                return this.option_;
            }

            public Builder setOption(CHOPTION choption) {
                if (choption == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.option_ = choption;
                onChanged();
                return this;
            }

            public Builder clearOption() {
                this.bitField0_ &= -5;
                this.option_ = CHOPTION.CH_INSERT;
                onChanged();
                return this;
            }

            public boolean hasCh1() {
                return (this.bitField0_ & 8) == 8;
            }

            public ChannelInfo getCh1() {
                if (this.ch1Builder_ == null) {
                    return this.ch1_;
                }
                return (ChannelInfo) this.ch1Builder_.getMessage();
            }

            public Builder setCh1(ChannelInfo channelInfo) {
                if (this.ch1Builder_ != null) {
                    this.ch1Builder_.setMessage(channelInfo);
                } else if (channelInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.ch1_ = channelInfo;
                    onChanged();
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder setCh1(Builder builder) {
                if (this.ch1Builder_ == null) {
                    this.ch1_ = builder.build();
                    onChanged();
                } else {
                    this.ch1Builder_.setMessage(builder.build());
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder mergeCh1(ChannelInfo channelInfo) {
                if (this.ch1Builder_ == null) {
                    if ((this.bitField0_ & 8) != 8 || this.ch1_ == ChannelInfo.getDefaultInstance()) {
                        this.ch1_ = channelInfo;
                    } else {
                        this.ch1_ = ((Builder) ChannelInfo.newBuilder(this.ch1_).mergeFrom((Message) channelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.ch1Builder_.mergeFrom(channelInfo);
                }
                this.bitField0_ |= 8;
                return this;
            }

            public Builder clearCh1() {
                if (this.ch1Builder_ == null) {
                    this.ch1_ = ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.ch1Builder_.clear();
                }
                this.bitField0_ &= -9;
                return this;
            }

            public Builder getCh1Builder() {
                this.bitField0_ |= 8;
                onChanged();
                return (Builder) getCh1FieldBuilder().getBuilder();
            }

            public ChannelInfoOrBuilder getCh1OrBuilder() {
                if (this.ch1Builder_ != null) {
                    return (ChannelInfoOrBuilder) this.ch1Builder_.getMessageOrBuilder();
                }
                return this.ch1_;
            }

            private SingleFieldBuilder<ChannelInfo, Builder, ChannelInfoOrBuilder> getCh1FieldBuilder() {
                if (this.ch1Builder_ == null) {
                    this.ch1Builder_ = new SingleFieldBuilder<>(getCh1(), getParentForChildren(), isClean());
                    this.ch1_ = null;
                }
                return this.ch1Builder_;
            }

            public boolean hasCh2() {
                return (this.bitField0_ & 16) == 16;
            }

            public ChannelInfo getCh2() {
                if (this.ch2Builder_ == null) {
                    return this.ch2_;
                }
                return (ChannelInfo) this.ch2Builder_.getMessage();
            }

            public Builder setCh2(ChannelInfo channelInfo) {
                if (this.ch2Builder_ != null) {
                    this.ch2Builder_.setMessage(channelInfo);
                } else if (channelInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.ch2_ = channelInfo;
                    onChanged();
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder setCh2(Builder builder) {
                if (this.ch2Builder_ == null) {
                    this.ch2_ = builder.build();
                    onChanged();
                } else {
                    this.ch2Builder_.setMessage(builder.build());
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder mergeCh2(ChannelInfo channelInfo) {
                if (this.ch2Builder_ == null) {
                    if ((this.bitField0_ & 16) != 16 || this.ch2_ == ChannelInfo.getDefaultInstance()) {
                        this.ch2_ = channelInfo;
                    } else {
                        this.ch2_ = ((Builder) ChannelInfo.newBuilder(this.ch2_).mergeFrom((Message) channelInfo)).buildPartial();
                    }
                    onChanged();
                } else {
                    this.ch2Builder_.mergeFrom(channelInfo);
                }
                this.bitField0_ |= 16;
                return this;
            }

            public Builder clearCh2() {
                if (this.ch2Builder_ == null) {
                    this.ch2_ = ChannelInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.ch2Builder_.clear();
                }
                this.bitField0_ &= -17;
                return this;
            }

            public Builder getCh2Builder() {
                this.bitField0_ |= 16;
                onChanged();
                return (Builder) getCh2FieldBuilder().getBuilder();
            }

            public ChannelInfoOrBuilder getCh2OrBuilder() {
                if (this.ch2Builder_ != null) {
                    return (ChannelInfoOrBuilder) this.ch2Builder_.getMessageOrBuilder();
                }
                return this.ch2_;
            }

            private SingleFieldBuilder<ChannelInfo, Builder, ChannelInfoOrBuilder> getCh2FieldBuilder() {
                if (this.ch2Builder_ == null) {
                    this.ch2Builder_ = new SingleFieldBuilder<>(getCh2(), getParentForChildren(), isClean());
                    this.ch2_ = null;
                }
                return this.ch2Builder_;
            }

            public boolean hasStateMode() {
                return (this.bitField0_ & 32) == 32;
            }

            public STATEMODE getStateMode() {
                return this.stateMode_;
            }

            public Builder setStateMode(STATEMODE statemode) {
                if (statemode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.stateMode_ = statemode;
                onChanged();
                return this;
            }

            public Builder clearStateMode() {
                this.bitField0_ &= -33;
                this.stateMode_ = STATEMODE.SINGLE;
                onChanged();
                return this;
            }
        }

        private StateUpdate(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private StateUpdate(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static StateUpdate getDefaultInstance() {
            return defaultInstance;
        }

        public StateUpdate getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.i;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.j.ensureFieldAccessorsInitialized(StateUpdate.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<StateUpdate> getParserForType() {
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

        public STATECODE getResult() {
            return this.result_;
        }

        public boolean hasOption() {
            return (this.bitField0_ & 4) == 4;
        }

        public CHOPTION getOption() {
            return this.option_;
        }

        public boolean hasCh1() {
            return (this.bitField0_ & 8) == 8;
        }

        public ChannelInfo getCh1() {
            return this.ch1_;
        }

        public ChannelInfoOrBuilder getCh1OrBuilder() {
            return this.ch1_;
        }

        public boolean hasCh2() {
            return (this.bitField0_ & 16) == 16;
        }

        public ChannelInfo getCh2() {
            return this.ch2_;
        }

        public ChannelInfoOrBuilder getCh2OrBuilder() {
            return this.ch2_;
        }

        public boolean hasStateMode() {
            return (this.bitField0_ & 32) == 32;
        }

        public STATEMODE getStateMode() {
            return this.stateMode_;
        }

        private void initFields() {
            this.version_ = 0;
            this.result_ = STATECODE.SUCCESS;
            this.option_ = CHOPTION.CH_INSERT;
            this.ch1_ = ChannelInfo.getDefaultInstance();
            this.ch2_ = ChannelInfo.getDefaultInstance();
            this.stateMode_ = STATEMODE.SINGLE;
        }

        public static StateUpdate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (StateUpdate) PARSER.parseFrom(byteString);
        }

        public static StateUpdate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (StateUpdate) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static StateUpdate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (StateUpdate) PARSER.parseFrom(bArr);
        }

        public static StateUpdate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (StateUpdate) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static StateUpdate parseFrom(InputStream inputStream) throws IOException {
            return (StateUpdate) PARSER.parseFrom(inputStream);
        }

        public static StateUpdate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (StateUpdate) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static StateUpdate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (StateUpdate) PARSER.parseDelimitedFrom(inputStream);
        }

        public static StateUpdate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (StateUpdate) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static StateUpdate parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (StateUpdate) PARSER.parseFrom(codedInputStream);
        }

        public static StateUpdate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (StateUpdate) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(StateUpdate stateUpdate) {
            return (Builder) newBuilder().mergeFrom((Message) stateUpdate);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

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
        private static final UPDATESTATECODE[] VALUES = null;
        private static EnumLiteMap<UPDATESTATECODE> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<UPDATESTATECODE>() {
                /* renamed from: a */
                public UPDATESTATECODE findValueByNumber(int i) {
                    return UPDATESTATECODE.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static UPDATESTATECODE valueOf(int i) {
            switch (i) {
                case 0:
                    return PREPARE;
                case 1:
                    return REQUEST;
                case 2:
                    return TRANSPORT;
                case 3:
                    return FINISH;
                case 4:
                    return RESTART;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<UPDATESTATECODE> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) MitalkProtos.a().getEnumTypes().get(10);
        }

        public static UPDATESTATECODE valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private UPDATESTATECODE(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    public static final class UpdateResponse extends GeneratedMessage implements UpdateResponseOrBuilder {
        public static final int ACK_FIELD_NUMBER = 3;
        public static Parser<UpdateResponse> PARSER = new AbstractParser<UpdateResponse>() {
            /* renamed from: a */
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
        };
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int STATE_FIELD_NUMBER = 1;
        private static final UpdateResponse defaultInstance = new UpdateResponse(true);
        /* access modifiers changed from: private */
        public int ack_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public boolean result_;
        /* access modifiers changed from: private */
        public UPDATESTATECODE state_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements UpdateResponseOrBuilder {
            private int ack_;
            private int bitField0_;
            private boolean result_;
            private UPDATESTATECODE state_;

            public static final Descriptor getDescriptor() {
                return MitalkProtos.y;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return MitalkProtos.z.ensureFieldAccessorsInitialized(UpdateResponse.class, Builder.class);
            }

            private Builder() {
                this.state_ = UPDATESTATECODE.PREPARE;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.state_ = UPDATESTATECODE.PREPARE;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (UpdateResponse.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.state_ = UPDATESTATECODE.PREPARE;
                this.bitField0_ &= -2;
                this.result_ = false;
                this.bitField0_ &= -3;
                this.ack_ = 0;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return (Builder) create().mergeFrom((Message) buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return MitalkProtos.y;
            }

            public UpdateResponse getDefaultInstanceForType() {
                return UpdateResponse.getDefaultInstance();
            }

            public UpdateResponse build() {
                UpdateResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public UpdateResponse buildPartial() {
                int i = 1;
                UpdateResponse updateResponse = new UpdateResponse(this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                updateResponse.state_ = this.state_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                updateResponse.result_ = this.result_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                updateResponse.ack_ = this.ack_;
                updateResponse.bitField0_ = i;
                onBuilt();
                return updateResponse;
            }

            public boolean hasState() {
                return (this.bitField0_ & 1) == 1;
            }

            public UPDATESTATECODE getState() {
                return this.state_;
            }

            public Builder setState(UPDATESTATECODE updatestatecode) {
                if (updatestatecode == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.state_ = updatestatecode;
                onChanged();
                return this;
            }

            public Builder clearState() {
                this.bitField0_ &= -2;
                this.state_ = UPDATESTATECODE.PREPARE;
                onChanged();
                return this;
            }

            public boolean hasResult() {
                return (this.bitField0_ & 2) == 2;
            }

            public boolean getResult() {
                return this.result_;
            }

            public Builder setResult(boolean z) {
                this.bitField0_ |= 2;
                this.result_ = z;
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.bitField0_ &= -3;
                this.result_ = false;
                onChanged();
                return this;
            }

            public boolean hasAck() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getAck() {
                return this.ack_;
            }

            public Builder setAck(int i) {
                this.bitField0_ |= 4;
                this.ack_ = i;
                onChanged();
                return this;
            }

            public Builder clearAck() {
                this.bitField0_ &= -5;
                this.ack_ = 0;
                onChanged();
                return this;
            }
        }

        private UpdateResponse(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.unknownFields = builder.getUnknownFields();
        }

        private UpdateResponse(boolean z) {
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static UpdateResponse getDefaultInstance() {
            return defaultInstance;
        }

        public UpdateResponse getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        public static final Descriptor getDescriptor() {
            return MitalkProtos.y;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return MitalkProtos.z.ensureFieldAccessorsInitialized(UpdateResponse.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<UpdateResponse> getParserForType() {
            return PARSER;
        }

        public boolean hasState() {
            return (this.bitField0_ & 1) == 1;
        }

        public UPDATESTATECODE getState() {
            return this.state_;
        }

        public boolean hasResult() {
            return (this.bitField0_ & 2) == 2;
        }

        public boolean getResult() {
            return this.result_;
        }

        public boolean hasAck() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getAck() {
            return this.ack_;
        }

        private void initFields() {
            this.state_ = UPDATESTATECODE.PREPARE;
            this.result_ = false;
            this.ack_ = 0;
        }

        public static UpdateResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (UpdateResponse) PARSER.parseFrom(byteString);
        }

        public static UpdateResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UpdateResponse) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UpdateResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (UpdateResponse) PARSER.parseFrom(bArr);
        }

        public static UpdateResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UpdateResponse) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static UpdateResponse parseFrom(InputStream inputStream) throws IOException {
            return (UpdateResponse) PARSER.parseFrom(inputStream);
        }

        public static UpdateResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UpdateResponse) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static UpdateResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UpdateResponse) PARSER.parseDelimitedFrom(inputStream);
        }

        public static UpdateResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UpdateResponse) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static UpdateResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (UpdateResponse) PARSER.parseFrom(codedInputStream);
        }

        public static UpdateResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UpdateResponse) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(UpdateResponse updateResponse) {
            return (Builder) newBuilder().mergeFrom((Message) updateResponse);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface UpdateResponseOrBuilder extends MessageOrBuilder {
        int getAck();

        boolean getResult();

        UPDATESTATECODE getState();

        boolean hasAck();

        boolean hasResult();

        boolean hasState();
    }

    public static FileDescriptor a() {
        return A;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\rmitalki.proto\u0012\u0006protos\"Ô\u0005\n\u0007Command\u0012%\n\fconnectQuery\u0018\u0001 \u0001(\u000b2\u000f.protos.Connect\u0012$\n\u000bconnectResp\u0018\u0002 \u0001(\u000b2\u000f.protos.Connect\u0012\"\n\theartbeat\u0018\u0003 \u0001(\u000b2\u000f.protos.Control\u0012 \n\u0007control\u0018\u0004 \u0001(\u000b2\u000f.protos.Control\u0012'\n\nparamQuery\u0018\u0005 \u0001(\u000b2\u0013.protos.ParamUpdate\u0012(\n\u000bparamUpdate\u0018\u0006 \u0001(\u000b2\u0013.protos.ParamUpdate\u0012&\n\tparamResp\u0018\u0007 \u0001(\u000b2\u0013.protos.ParamUpdate\u0012'\n\nstateQuery\u0018\b \u0001(\u000b2\u0013.protos.StateUpdate\u0012&\n\tstateResp\u0018\t \u0001(\u000b2\u0013.protos.StateUpdate\u0012*\n\flocationSy", "nc\u0018\n \u0001(\u000b2\u0014.protos.LocationSync\u0012)\n\u000blocationCtl\u0018\u000b \u0001(\u000b2\u0014.protos.LocationSync\u0012$\n\u0007fileReq\u0018\f \u0001(\u000b2\u0013.protos.FileRequest\u0012\"\n\bfilePack\u0018\r \u0001(\u000b2\u0010.protos.FilePack\u0012&\n\bfileResp\u0018\u000e \u0001(\u000b2\u0014.protos.FileResponse\u0012\"\n\u0006logReq\u0018\u000f \u0001(\u000b2\u0012.protos.LogRequest\u0012%\n\u0007testReq\u0018\u0010 \u0001(\u000b2\u0014.protos.IntercomTest\u0012&\n\btestResp\u0018\u0011 \u0001(\u000b2\u0014.protos.IntercomTest\u0012.\n\u000eupdateResponse\u0018\u0012 \u0001(\u000b2\u0016.protos.UpdateResponse\"P\n\u0007Connect\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\"\n\bconnCode\u0018\u0002 \u0002(\u000e2\u0010.p", "rotos.CONNCODE\u0012\u0010\n\bdeviceId\u0018\u0003 \u0001(\r\">\n\u0007Control\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\"\n\bctrlCode\u0018\u0002 \u0001(\u000e2\u0010.protos.CTRLCODE\"\u0003\n\u000bParamUpdate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012!\n\u0006result\u0018\u0002 \u0001(\u000e2\u0011.protos.STATECODE\u0012\f\n\u0004mode\u0018\u0003 \u0001(\f\u0012\u0010\n\bdeviceId\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006userId\u0018\u0005 \u0001(\r\u0012\u0010\n\buserName\u0018\u0006 \u0001(\f\u0012\u000f\n\u0007sosText\u0018\u0007 \u0001(\f\u0012\u0012\n\nversionBLE\u0018\b \u0001(\r\u0012\u0012\n\nversionMCU\u0018\t \u0001(\r\u0012$\n\tstateMode\u0018\n \u0001(\u000e2\u0011.protos.STATEMODE\u0012\u0013\n\u000bdevNameUTF8\u0018\u000b \u0001(\f\u0012\u0012\n\ndevNameGBK\u0018\f \u0001(\f\u0012\u0010\n\bshareLoc\u0018\r \u0001(\r\u0012\u0011\n\tversionHW\u0018\u000e ", "\u0001(\r\u0012$\n\blowPower\u0018\u000f \u0001(\u000e2\u0012.protos.POWERSTATE\u0012\u0015\n\rversionExtend\u0018\u0010 \u0001(\r\u0012\u0017\n\u000factivateChannel\u0018\u0011 \u0001(\r\u0012\u0010\n\blanguage\u0018\u0012 \u0001(\r\"Í\u0001\n\u000bStateUpdate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012!\n\u0006result\u0018\u0002 \u0001(\u000e2\u0011.protos.STATECODE\u0012 \n\u0006option\u0018\u0003 \u0001(\u000e2\u0010.protos.CHOPTION\u0012 \n\u0003ch1\u0018\u0004 \u0001(\u000b2\u0013.protos.ChannelInfo\u0012 \n\u0003ch2\u0018\u0005 \u0001(\u000b2\u0013.protos.ChannelInfo\u0012$\n\tstateMode\u0018\u0006 \u0001(\u000e2\u0011.protos.STATEMODE\"ì\u0001\n\u000bChannelInfo\u0012\f\n\u0004freq\u0018\u0001 \u0001(\r\u0012\u001c\n\u0004type\u0018\u0002 \u0001(\u000e2\u000e.protos.CHTYPE\u0012\n\n\u0002no\u0018\u0003 \u0001(\r\u0012\f\n\u0004name\u0018\u0004 \u0001(", "\f\u0012\n\n\u0002sq\u0018\u0005 \u0001(\r\u0012\u000b\n\u0003vox\u0018\u0006 \u0001(\r\u0012\u000f\n\u0007cssType\u0018\u0007 \u0001(\r\u0012\u000f\n\u0007cssCode\u0018\b \u0001(\r\u0012\u0011\n\tcssInvert\u0018\t \u0001(\r\u0012\u000e\n\u0006freq_2\u0018\n \u0001(\r\u0012\u0011\n\tcssType_2\u0018\u000b \u0001(\r\u0012\u0011\n\tcssCode_2\u0018\f \u0001(\r\u0012\u0013\n\u000bcssInvert_2\u0018\r \u0001(\r\"²\u0001\n\fLocationSync\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001c\n\u0003ctl\u0018\u0002 \u0001(\u000e2\u000f.protos.CTLSYNC\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\r\u0012\u0010\n\buserName\u0018\u0004 \u0001(\f\u0012\u0011\n\tlongitude\u0018\u0005 \u0001(\u0011\u0012\u0010\n\blatitude\u0018\u0006 \u0001(\u0011\u0012\u0010\n\baltitude\u0018\u0007 \u0001(\u0011\u0012\f\n\u0004time\u0018\b \u0001(\r\u0012\f\n\u0004freq\u0018\t \u0001(\r\"¡\u0001\n\u000bFileRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001d\n\u0004fCmd\u0018\u0002 \u0002(\u000e2\u000f.protos.FILECMD\u0012", "\u001f\n\u0005fType\u0018\u0003 \u0001(\u000e2\u0010.protos.FILETYPE\u0012\r\n\u0005fSize\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006fCrc32\u0018\u0005 \u0001(\r\u0012\u0010\n\bfVersion\u0018\u0006 \u0001(\r\u0012\u0010\n\bfPackNum\u0018\u0007 \u0001(\r\"2\n\bFilePack\u0012\u000b\n\u0003seq\u0018\u0001 \u0002(\r\u0012\u000b\n\u0003xor\u0018\u0002 \u0002(\r\u0012\f\n\u0004data\u0018\u0003 \u0002(\f\"A\n\fFileResponse\u0012!\n\u0006result\u0018\u0001 \u0002(\u000e2\u0011.protos.STATECODE\u0012\u000e\n\u0006ackSeq\u0018\u0002 \u0001(\r\"\u001d\n\nLogRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\"-\n\fIntercomTest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\f\n\u0004data\u0018\u0002 \u0002(\f\"U\n\u000eUpdateResponse\u0012&\n\u0005state\u0018\u0001 \u0001(\u000e2\u0017.protos.UPDATESTATECODE\u0012\u000e\n\u0006result\u0018\u0002 \u0001(\b\u0012\u000b\n\u0003ack\u0018\u0003 \u0001(\u0005*O\n\tSTATECODE\u0012\u000b\n\u0007", "SUCCESS\u0010\u0000\u0012\n\n\u0006FAILED\u0010\u0001\u0012\u000e\n\nPARAMERROR\u0010\u0002\u0012\u000e\n\nNOTSUPPORT\u0010\u0003\u0012\t\n\u0005FINAL\u0010\u0004*]\n\bCONNCODE\u0012\u000e\n\nDISCONNECT\u0010\u0000\u0012\u000b\n\u0007CONNECT\u0010\u0001\u0012\t\n\u0005ALLOW\u0010\u0002\u0012\n\n\u0006REFUSE\u0010\u0003\u0012\b\n\u0004WAIT\u0010\u0004\u0012\u0013\n\u000fREFUSE_LOWPOWER\u0010\u0005*%\n\bCTRLCODE\u0012\r\n\tRSTDEVICE\u0010\u0000\u0012\n\n\u0006RSTBLE\u0010\u0001*2\n\nPOWERSTATE\u0012\u000f\n\u000bALLOWUPDATE\u0010\u0000\u0012\u0013\n\u000fPROHIBITEUPDATE\u0010\u0001*y\n\tSTATEMODE\u0012\n\n\u0006SINGLE\u0010\u0000\u0012\n\n\u0006DOUBLE\u0010\u0001\u0012\n\n\u0006DIFFER\u0010\u0002\u0012\t\n\u0005SOS_T\u0010\u0003\u0012\t\n\u0005SOS_R\u0010\u0004\u0012\u000b\n\u0007SCAN_CH\u0010\u0005\u0012\r\n\tSCAN_FREQ\u0010\u0006\u0012\n\n\u0006TEAM_M\u0010\u0007\u0012\n\n\u0006TEAM_S\u0010\b*b\n\bCHOPTION\u0012\r\n\tCH_INSERT\u0010\u0000", "\u0012\r\n\tCH_DELETE\u0010\u0001\u0012\r\n\tCH_MODIFY\u0010\u0002\u0012\f\n\bCH_QUERY\u0010\u0003\u0012\r\n\tST_UPDATE\u0010\u0004\u0012\f\n\bST_QUERY\u0010\u0005*m\n\u0006CHTYPE\u0012\n\n\u0006PRESET\u0010\u0000\u0012\n\n\u0006PUBLIC\u0010\u0001\u0012\u000e\n\nUSERDEFINE\u0010\u0002\u0012\t\n\u0005RADIO\u0010\u0003\u0012\u0007\n\u0003SOS\u0010\u0004\u0012\b\n\u0004TEMP\u0010\u0005\u0012\b\n\u0004TEAM\u0010\u0006\u0012\b\n\u0004SCAN\u0010\u0007\u0012\t\n\u0005RELAY\u0010\b*\"\n\u0007CTLSYNC\u0012\u000b\n\u0007DISABLE\u0010\u0000\u0012\n\n\u0006ENABLE\u0010\u0001*\u0001\n\bFILETYPE\u0012\r\n\tBLEUPFILE\u0010\u0001\u0012\r\n\tMCUUPFILE\u0010\u0002\u0012\r\n\tGBKFONT16\u0010\u0003\u0012\u000f\n\u000bASCIIFONT16\u0010\u0004\u0012\r\n\tGBKFONTEX\u0010\u0005\u0012\u000f\n\u000bASCIIFONTEX\u0010\u0006\u0012\u000e\n\nMCUSENDLOG\u0010\u0007\u0012\u000f\n\u000bWARNINGTONE\u0010\b\u0012\u0010\n\fMCUBLEUPFILE\u0010\t*\"\n\u0007FILECMD\u0012\t\n\u0005START\u0010\u0000", "\u0012\f\n\bCOMPLETE\u0010\u0001*S\n\u000fUPDATESTATECODE\u0012\u000b\n\u0007PREPARE\u0010\u0000\u0012\u000b\n\u0007REQUEST\u0010\u0001\u0012\r\n\tTRANSPORT\u0010\u0002\u0012\n\n\u0006FINISH\u0010\u0003\u0012\u000b\n\u0007RESTART\u0010\u0004B-\n\u001bcom.ifengyu.intercom.protosB\fMitalkProtosH\u0002"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                MitalkProtos.A = fileDescriptor;
                return null;
            }
        });
    }
}
