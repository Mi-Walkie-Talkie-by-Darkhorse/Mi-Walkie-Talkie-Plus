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
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SystemPacketProto {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(5));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_descriptor, new String[]{"HeartBeatInterval", "B2TokenExpireTime"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(10));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_descriptor, new String[]{"TimeStamp"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(11));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_descriptor, new String[]{"TimeStamp", "Config", "JsonConfig"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(9));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_descriptor, new String[]{"AccId", "AccIp", "AccPort", "AccFlag"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(15));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_descriptor, new String[]{"Gid", "B2", "PrivacyKey", "SUID", "Devicetoken", "Onoff", "Passportlogin"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(16));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_descriptor, new String[]{"Gid", "Uid", "B2", "GTKEYB2", "SUID"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(12));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_descriptor, new String[]{"Type", "MgrInfo"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(13));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_descriptor, new String[]{"Type", "Redirect", "Uprinciple", "Clientinfo", "CrossOpr"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(4));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_descriptor, new String[]{"TimeStamp", "Config", "Engineratio", "Jsonconfig"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(3));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_descriptor, new String[]{"Ptime", "MgrInfo", "SUID", "IsFakeHb", "TimeStamp"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(6));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_descriptor, new String[]{"SUID"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_descriptor, new String[]{"Flag", "SUID"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_descriptor, new String[]{"GTKEYB2", "B2", "SUID"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(7));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_descriptor, new String[]{"Devicetoken", "Onoff", "SUID", "Passportlogin"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(8));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_descriptor, new String[]{"SUID"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(14));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_descriptor, new String[]{"Ip", "Port", "Apn", "Remark"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_descriptor, new String[]{"IpPrinciple", "ApnType", "IsBgd"});

    public static final class MiLinkConfig extends GeneratedMessage implements MiLinkConfigOrBuilder {
        public static final int B2TOKENEXPIRETIME_FIELD_NUMBER = 2;
        public static final int HEARTBEATINTERVAL_FIELD_NUMBER = 1;
        public static Parser<MiLinkConfig> PARSER = new AbstractParser<MiLinkConfig>() {
            public MiLinkConfig parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MiLinkConfig(codedInputStream, extensionRegistryLite);
            }
        };
        private static final MiLinkConfig defaultInstance = new MiLinkConfig(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int b2TokenExpireTime_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public long heartBeatInterval_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MiLinkConfigOrBuilder {
            private int b2TokenExpireTime_;
            private int bitField0_;
            private long heartBeatInterval_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_fieldAccessorTable.ensureFieldAccessorsInitialized(MiLinkConfig.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MiLinkConfig.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.heartBeatInterval_ = 0;
                this.bitField0_ &= -2;
                this.b2TokenExpireTime_ = 0;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_descriptor;
            }

            public MiLinkConfig getDefaultInstanceForType() {
                return MiLinkConfig.getDefaultInstance();
            }

            public MiLinkConfig build() {
                MiLinkConfig buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MiLinkConfig buildPartial() {
                int i = 1;
                MiLinkConfig miLinkConfig = new MiLinkConfig((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                miLinkConfig.heartBeatInterval_ = this.heartBeatInterval_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                miLinkConfig.b2TokenExpireTime_ = this.b2TokenExpireTime_;
                miLinkConfig.bitField0_ = i;
                onBuilt();
                return miLinkConfig;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MiLinkConfig) {
                    return mergeFrom((MiLinkConfig) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MiLinkConfig miLinkConfig) {
                if (miLinkConfig != MiLinkConfig.getDefaultInstance()) {
                    if (miLinkConfig.hasHeartBeatInterval()) {
                        setHeartBeatInterval(miLinkConfig.getHeartBeatInterval());
                    }
                    if (miLinkConfig.hasB2TokenExpireTime()) {
                        setB2TokenExpireTime(miLinkConfig.getB2TokenExpireTime());
                    }
                    mergeUnknownFields(miLinkConfig.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MiLinkConfig miLinkConfig;
                MiLinkConfig miLinkConfig2;
                try {
                    MiLinkConfig miLinkConfig3 = (MiLinkConfig) MiLinkConfig.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (miLinkConfig3 != null) {
                        mergeFrom(miLinkConfig3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    miLinkConfig2 = (MiLinkConfig) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    miLinkConfig = miLinkConfig2;
                    th = th2;
                }
                if (miLinkConfig != null) {
                    mergeFrom(miLinkConfig);
                }
                throw th;
            }

            public boolean hasHeartBeatInterval() {
                return (this.bitField0_ & 1) == 1;
            }

            public long getHeartBeatInterval() {
                return this.heartBeatInterval_;
            }

            public Builder setHeartBeatInterval(long j) {
                this.bitField0_ |= 1;
                this.heartBeatInterval_ = j;
                onChanged();
                return this;
            }

            public Builder clearHeartBeatInterval() {
                this.bitField0_ &= -2;
                this.heartBeatInterval_ = 0;
                onChanged();
                return this;
            }

            public boolean hasB2TokenExpireTime() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getB2TokenExpireTime() {
                return this.b2TokenExpireTime_;
            }

            public Builder setB2TokenExpireTime(int i) {
                this.bitField0_ |= 2;
                this.b2TokenExpireTime_ = i;
                onChanged();
                return this;
            }

            public Builder clearB2TokenExpireTime() {
                this.bitField0_ &= -3;
                this.b2TokenExpireTime_ = 0;
                onChanged();
                return this;
            }
        }

        private MiLinkConfig(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MiLinkConfig(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MiLinkConfig getDefaultInstance() {
            return defaultInstance;
        }

        public MiLinkConfig getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MiLinkConfig(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 8:
                            this.bitField0_ |= 1;
                            this.heartBeatInterval_ = codedInputStream.readUInt64();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.b2TokenExpireTime_ = codedInputStream.readUInt32();
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkConfig_fieldAccessorTable.ensureFieldAccessorsInitialized(MiLinkConfig.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MiLinkConfig> getParserForType() {
            return PARSER;
        }

        public boolean hasHeartBeatInterval() {
            return (this.bitField0_ & 1) == 1;
        }

        public long getHeartBeatInterval() {
            return this.heartBeatInterval_;
        }

        public boolean hasB2TokenExpireTime() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getB2TokenExpireTime() {
            return this.b2TokenExpireTime_;
        }

        private void initFields() {
            this.heartBeatInterval_ = 0;
            this.b2TokenExpireTime_ = 0;
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
                codedOutputStream.writeUInt64(1, this.heartBeatInterval_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.b2TokenExpireTime_);
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
                i2 = 0 + CodedOutputStream.computeUInt64Size(1, this.heartBeatInterval_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.b2TokenExpireTime_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MiLinkConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MiLinkConfig) PARSER.parseFrom(byteString);
        }

        public static MiLinkConfig parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MiLinkConfig) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MiLinkConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MiLinkConfig) PARSER.parseFrom(bArr);
        }

        public static MiLinkConfig parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MiLinkConfig) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MiLinkConfig parseFrom(InputStream inputStream) throws IOException {
            return (MiLinkConfig) PARSER.parseFrom(inputStream);
        }

        public static MiLinkConfig parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MiLinkConfig) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MiLinkConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MiLinkConfig) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MiLinkConfig parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MiLinkConfig) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MiLinkConfig parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MiLinkConfig) PARSER.parseFrom(codedInputStream);
        }

        public static MiLinkConfig parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MiLinkConfig) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MiLinkConfig miLinkConfig) {
            return newBuilder().mergeFrom(miLinkConfig);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MiLinkConfigOrBuilder extends MessageOrBuilder {
        int getB2TokenExpireTime();

        long getHeartBeatInterval();

        boolean hasB2TokenExpireTime();

        boolean hasHeartBeatInterval();
    }

    public static final class MiLinkGetConfigReq extends GeneratedMessage implements MiLinkGetConfigReqOrBuilder {
        public static Parser<MiLinkGetConfigReq> PARSER = new AbstractParser<MiLinkGetConfigReq>() {
            public MiLinkGetConfigReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MiLinkGetConfigReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TIMESTAMP_FIELD_NUMBER = 1;
        private static final MiLinkGetConfigReq defaultInstance = new MiLinkGetConfigReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long timeStamp_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MiLinkGetConfigReqOrBuilder {
            private int bitField0_;
            private long timeStamp_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MiLinkGetConfigReq.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MiLinkGetConfigReq.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.timeStamp_ = 0;
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_descriptor;
            }

            public MiLinkGetConfigReq getDefaultInstanceForType() {
                return MiLinkGetConfigReq.getDefaultInstance();
            }

            public MiLinkGetConfigReq build() {
                MiLinkGetConfigReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MiLinkGetConfigReq buildPartial() {
                int i = 1;
                MiLinkGetConfigReq miLinkGetConfigReq = new MiLinkGetConfigReq((com.google.protobuf.GeneratedMessage.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                miLinkGetConfigReq.timeStamp_ = this.timeStamp_;
                miLinkGetConfigReq.bitField0_ = i;
                onBuilt();
                return miLinkGetConfigReq;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MiLinkGetConfigReq) {
                    return mergeFrom((MiLinkGetConfigReq) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MiLinkGetConfigReq miLinkGetConfigReq) {
                if (miLinkGetConfigReq != MiLinkGetConfigReq.getDefaultInstance()) {
                    if (miLinkGetConfigReq.hasTimeStamp()) {
                        setTimeStamp(miLinkGetConfigReq.getTimeStamp());
                    }
                    mergeUnknownFields(miLinkGetConfigReq.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MiLinkGetConfigReq miLinkGetConfigReq;
                MiLinkGetConfigReq miLinkGetConfigReq2;
                try {
                    MiLinkGetConfigReq miLinkGetConfigReq3 = (MiLinkGetConfigReq) MiLinkGetConfigReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (miLinkGetConfigReq3 != null) {
                        mergeFrom(miLinkGetConfigReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    miLinkGetConfigReq2 = (MiLinkGetConfigReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    miLinkGetConfigReq = miLinkGetConfigReq2;
                    th = th2;
                }
                if (miLinkGetConfigReq != null) {
                    mergeFrom(miLinkGetConfigReq);
                }
                throw th;
            }

            public boolean hasTimeStamp() {
                return (this.bitField0_ & 1) == 1;
            }

            public long getTimeStamp() {
                return this.timeStamp_;
            }

            public Builder setTimeStamp(long j) {
                this.bitField0_ |= 1;
                this.timeStamp_ = j;
                onChanged();
                return this;
            }

            public Builder clearTimeStamp() {
                this.bitField0_ &= -2;
                this.timeStamp_ = 0;
                onChanged();
                return this;
            }
        }

        private MiLinkGetConfigReq(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MiLinkGetConfigReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MiLinkGetConfigReq getDefaultInstance() {
            return defaultInstance;
        }

        public MiLinkGetConfigReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MiLinkGetConfigReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 8:
                            this.bitField0_ |= 1;
                            this.timeStamp_ = codedInputStream.readUInt64();
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MiLinkGetConfigReq.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MiLinkGetConfigReq> getParserForType() {
            return PARSER;
        }

        public boolean hasTimeStamp() {
            return (this.bitField0_ & 1) == 1;
        }

        public long getTimeStamp() {
            return this.timeStamp_;
        }

        private void initFields() {
            this.timeStamp_ = 0;
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
                codedOutputStream.writeUInt64(1, this.timeStamp_);
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
                i2 = 0 + CodedOutputStream.computeUInt64Size(1, this.timeStamp_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MiLinkGetConfigReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MiLinkGetConfigReq) PARSER.parseFrom(byteString);
        }

        public static MiLinkGetConfigReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MiLinkGetConfigReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MiLinkGetConfigReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MiLinkGetConfigReq) PARSER.parseFrom(bArr);
        }

        public static MiLinkGetConfigReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MiLinkGetConfigReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MiLinkGetConfigReq parseFrom(InputStream inputStream) throws IOException {
            return (MiLinkGetConfigReq) PARSER.parseFrom(inputStream);
        }

        public static MiLinkGetConfigReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MiLinkGetConfigReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MiLinkGetConfigReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MiLinkGetConfigReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MiLinkGetConfigReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MiLinkGetConfigReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MiLinkGetConfigReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MiLinkGetConfigReq) PARSER.parseFrom(codedInputStream);
        }

        public static MiLinkGetConfigReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MiLinkGetConfigReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MiLinkGetConfigReq miLinkGetConfigReq) {
            return newBuilder().mergeFrom(miLinkGetConfigReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MiLinkGetConfigReqOrBuilder extends MessageOrBuilder {
        long getTimeStamp();

        boolean hasTimeStamp();
    }

    public static final class MiLinkGetConfigRsp extends GeneratedMessage implements MiLinkGetConfigRspOrBuilder {
        public static final int CONFIG_FIELD_NUMBER = 2;
        public static final int JSONCONFIG_FIELD_NUMBER = 3;
        public static Parser<MiLinkGetConfigRsp> PARSER = new AbstractParser<MiLinkGetConfigRsp>() {
            public MiLinkGetConfigRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MiLinkGetConfigRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TIMESTAMP_FIELD_NUMBER = 1;
        private static final MiLinkGetConfigRsp defaultInstance = new MiLinkGetConfigRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public MiLinkConfig config_;
        /* access modifiers changed from: private */
        public Object jsonConfig_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long timeStamp_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MiLinkGetConfigRspOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<MiLinkConfig, Builder, MiLinkConfigOrBuilder> configBuilder_;
            private MiLinkConfig config_;
            private Object jsonConfig_;
            private long timeStamp_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MiLinkGetConfigRsp.class, Builder.class);
            }

            private Builder() {
                this.config_ = MiLinkConfig.getDefaultInstance();
                this.jsonConfig_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.config_ = MiLinkConfig.getDefaultInstance();
                this.jsonConfig_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MiLinkGetConfigRsp.alwaysUseFieldBuilders) {
                    getConfigFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.timeStamp_ = 0;
                this.bitField0_ &= -2;
                if (this.configBuilder_ == null) {
                    this.config_ = MiLinkConfig.getDefaultInstance();
                } else {
                    this.configBuilder_.clear();
                }
                this.bitField0_ &= -3;
                this.jsonConfig_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_descriptor;
            }

            public MiLinkGetConfigRsp getDefaultInstanceForType() {
                return MiLinkGetConfigRsp.getDefaultInstance();
            }

            public MiLinkGetConfigRsp build() {
                MiLinkGetConfigRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MiLinkGetConfigRsp buildPartial() {
                int i;
                int i2 = 1;
                MiLinkGetConfigRsp miLinkGetConfigRsp = new MiLinkGetConfigRsp((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                miLinkGetConfigRsp.timeStamp_ = this.timeStamp_;
                if ((i3 & 2) == 2) {
                    i = i2 | 2;
                } else {
                    i = i2;
                }
                if (this.configBuilder_ == null) {
                    miLinkGetConfigRsp.config_ = this.config_;
                } else {
                    miLinkGetConfigRsp.config_ = (MiLinkConfig) this.configBuilder_.build();
                }
                if ((i3 & 4) == 4) {
                    i |= 4;
                }
                miLinkGetConfigRsp.jsonConfig_ = this.jsonConfig_;
                miLinkGetConfigRsp.bitField0_ = i;
                onBuilt();
                return miLinkGetConfigRsp;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MiLinkGetConfigRsp) {
                    return mergeFrom((MiLinkGetConfigRsp) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MiLinkGetConfigRsp miLinkGetConfigRsp) {
                if (miLinkGetConfigRsp != MiLinkGetConfigRsp.getDefaultInstance()) {
                    if (miLinkGetConfigRsp.hasTimeStamp()) {
                        setTimeStamp(miLinkGetConfigRsp.getTimeStamp());
                    }
                    if (miLinkGetConfigRsp.hasConfig()) {
                        mergeConfig(miLinkGetConfigRsp.getConfig());
                    }
                    if (miLinkGetConfigRsp.hasJsonConfig()) {
                        this.bitField0_ |= 4;
                        this.jsonConfig_ = miLinkGetConfigRsp.jsonConfig_;
                        onChanged();
                    }
                    mergeUnknownFields(miLinkGetConfigRsp.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MiLinkGetConfigRsp miLinkGetConfigRsp;
                MiLinkGetConfigRsp miLinkGetConfigRsp2;
                try {
                    MiLinkGetConfigRsp miLinkGetConfigRsp3 = (MiLinkGetConfigRsp) MiLinkGetConfigRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (miLinkGetConfigRsp3 != null) {
                        mergeFrom(miLinkGetConfigRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    miLinkGetConfigRsp2 = (MiLinkGetConfigRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    miLinkGetConfigRsp = miLinkGetConfigRsp2;
                    th = th2;
                }
                if (miLinkGetConfigRsp != null) {
                    mergeFrom(miLinkGetConfigRsp);
                }
                throw th;
            }

            public boolean hasTimeStamp() {
                return (this.bitField0_ & 1) == 1;
            }

            public long getTimeStamp() {
                return this.timeStamp_;
            }

            public Builder setTimeStamp(long j) {
                this.bitField0_ |= 1;
                this.timeStamp_ = j;
                onChanged();
                return this;
            }

            public Builder clearTimeStamp() {
                this.bitField0_ &= -2;
                this.timeStamp_ = 0;
                onChanged();
                return this;
            }

            public boolean hasConfig() {
                return (this.bitField0_ & 2) == 2;
            }

            public MiLinkConfig getConfig() {
                if (this.configBuilder_ == null) {
                    return this.config_;
                }
                return (MiLinkConfig) this.configBuilder_.getMessage();
            }

            public Builder setConfig(MiLinkConfig miLinkConfig) {
                if (this.configBuilder_ != null) {
                    this.configBuilder_.setMessage(miLinkConfig);
                } else if (miLinkConfig == null) {
                    throw new NullPointerException();
                } else {
                    this.config_ = miLinkConfig;
                    onChanged();
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setConfig(Builder builder) {
                if (this.configBuilder_ == null) {
                    this.config_ = builder.build();
                    onChanged();
                } else {
                    this.configBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder mergeConfig(MiLinkConfig miLinkConfig) {
                if (this.configBuilder_ == null) {
                    if ((this.bitField0_ & 2) != 2 || this.config_ == MiLinkConfig.getDefaultInstance()) {
                        this.config_ = miLinkConfig;
                    } else {
                        this.config_ = MiLinkConfig.newBuilder(this.config_).mergeFrom(miLinkConfig).buildPartial();
                    }
                    onChanged();
                } else {
                    this.configBuilder_.mergeFrom(miLinkConfig);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder clearConfig() {
                if (this.configBuilder_ == null) {
                    this.config_ = MiLinkConfig.getDefaultInstance();
                    onChanged();
                } else {
                    this.configBuilder_.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            public Builder getConfigBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return (Builder) getConfigFieldBuilder().getBuilder();
            }

            public MiLinkConfigOrBuilder getConfigOrBuilder() {
                if (this.configBuilder_ != null) {
                    return (MiLinkConfigOrBuilder) this.configBuilder_.getMessageOrBuilder();
                }
                return this.config_;
            }

            private SingleFieldBuilder<MiLinkConfig, Builder, MiLinkConfigOrBuilder> getConfigFieldBuilder() {
                if (this.configBuilder_ == null) {
                    this.configBuilder_ = new SingleFieldBuilder<>(getConfig(), getParentForChildren(), isClean());
                    this.config_ = null;
                }
                return this.configBuilder_;
            }

            public boolean hasJsonConfig() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getJsonConfig() {
                Object obj = this.jsonConfig_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.jsonConfig_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getJsonConfigBytes() {
                Object obj = this.jsonConfig_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.jsonConfig_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setJsonConfig(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.jsonConfig_ = str;
                onChanged();
                return this;
            }

            public Builder clearJsonConfig() {
                this.bitField0_ &= -5;
                this.jsonConfig_ = MiLinkGetConfigRsp.getDefaultInstance().getJsonConfig();
                onChanged();
                return this;
            }

            public Builder setJsonConfigBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.jsonConfig_ = byteString;
                onChanged();
                return this;
            }
        }

        private MiLinkGetConfigRsp(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MiLinkGetConfigRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MiLinkGetConfigRsp getDefaultInstance() {
            return defaultInstance;
        }

        public MiLinkGetConfigRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MiLinkGetConfigRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            boolean z;
            Builder builder;
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            com.google.protobuf.UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.timeStamp_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 18:
                            if ((this.bitField0_ & 2) == 2) {
                                builder = this.config_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.config_ = (MiLinkConfig) codedInputStream.readMessage(MiLinkConfig.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.config_);
                                this.config_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 2;
                            z = z2;
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.jsonConfig_ = readBytes;
                            z = z2;
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                z = z2;
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                    z2 = z;
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MiLinkGetConfigRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MiLinkGetConfigRsp.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MiLinkGetConfigRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasTimeStamp() {
            return (this.bitField0_ & 1) == 1;
        }

        public long getTimeStamp() {
            return this.timeStamp_;
        }

        public boolean hasConfig() {
            return (this.bitField0_ & 2) == 2;
        }

        public MiLinkConfig getConfig() {
            return this.config_;
        }

        public MiLinkConfigOrBuilder getConfigOrBuilder() {
            return this.config_;
        }

        public boolean hasJsonConfig() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getJsonConfig() {
            Object obj = this.jsonConfig_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.jsonConfig_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getJsonConfigBytes() {
            Object obj = this.jsonConfig_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.jsonConfig_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.timeStamp_ = 0;
            this.config_ = MiLinkConfig.getDefaultInstance();
            this.jsonConfig_ = "";
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
                codedOutputStream.writeUInt64(1, this.timeStamp_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(2, this.config_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getJsonConfigBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt64Size(1, this.timeStamp_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeMessageSize(2, this.config_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getJsonConfigBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MiLinkGetConfigRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MiLinkGetConfigRsp) PARSER.parseFrom(byteString);
        }

        public static MiLinkGetConfigRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MiLinkGetConfigRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MiLinkGetConfigRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MiLinkGetConfigRsp) PARSER.parseFrom(bArr);
        }

        public static MiLinkGetConfigRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MiLinkGetConfigRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MiLinkGetConfigRsp parseFrom(InputStream inputStream) throws IOException {
            return (MiLinkGetConfigRsp) PARSER.parseFrom(inputStream);
        }

        public static MiLinkGetConfigRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MiLinkGetConfigRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MiLinkGetConfigRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MiLinkGetConfigRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MiLinkGetConfigRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MiLinkGetConfigRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MiLinkGetConfigRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MiLinkGetConfigRsp) PARSER.parseFrom(codedInputStream);
        }

        public static MiLinkGetConfigRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MiLinkGetConfigRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MiLinkGetConfigRsp miLinkGetConfigRsp) {
            return newBuilder().mergeFrom(miLinkGetConfigRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MiLinkGetConfigRspOrBuilder extends MessageOrBuilder {
        MiLinkConfig getConfig();

        MiLinkConfigOrBuilder getConfigOrBuilder();

        String getJsonConfig();

        ByteString getJsonConfigBytes();

        long getTimeStamp();

        boolean hasConfig();

        boolean hasJsonConfig();

        boolean hasTimeStamp();
    }

    public static final class MnsAccInfo extends GeneratedMessage implements MnsAccInfoOrBuilder {
        public static final int ACCFLAG_FIELD_NUMBER = 4;
        public static final int ACCID_FIELD_NUMBER = 1;
        public static final int ACCIP_FIELD_NUMBER = 2;
        public static final int ACCPORT_FIELD_NUMBER = 3;
        public static Parser<MnsAccInfo> PARSER = new AbstractParser<MnsAccInfo>() {
            public MnsAccInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsAccInfo(codedInputStream, extensionRegistryLite);
            }
        };
        private static final MnsAccInfo defaultInstance = new MnsAccInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int accFlag_;
        /* access modifiers changed from: private */
        public long accId_;
        /* access modifiers changed from: private */
        public int accIp_;
        /* access modifiers changed from: private */
        public int accPort_;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsAccInfoOrBuilder {
            private int accFlag_;
            private long accId_;
            private int accIp_;
            private int accPort_;
            private int bitField0_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsAccInfo.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsAccInfo.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.accId_ = 0;
                this.bitField0_ &= -2;
                this.accIp_ = 0;
                this.bitField0_ &= -3;
                this.accPort_ = 0;
                this.bitField0_ &= -5;
                this.accFlag_ = 0;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_descriptor;
            }

            public MnsAccInfo getDefaultInstanceForType() {
                return MnsAccInfo.getDefaultInstance();
            }

            public MnsAccInfo build() {
                MnsAccInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsAccInfo buildPartial() {
                int i = 1;
                MnsAccInfo mnsAccInfo = new MnsAccInfo((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                mnsAccInfo.accId_ = this.accId_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                mnsAccInfo.accIp_ = this.accIp_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                mnsAccInfo.accPort_ = this.accPort_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                mnsAccInfo.accFlag_ = this.accFlag_;
                mnsAccInfo.bitField0_ = i;
                onBuilt();
                return mnsAccInfo;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsAccInfo) {
                    return mergeFrom((MnsAccInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsAccInfo mnsAccInfo) {
                if (mnsAccInfo != MnsAccInfo.getDefaultInstance()) {
                    if (mnsAccInfo.hasAccId()) {
                        setAccId(mnsAccInfo.getAccId());
                    }
                    if (mnsAccInfo.hasAccIp()) {
                        setAccIp(mnsAccInfo.getAccIp());
                    }
                    if (mnsAccInfo.hasAccPort()) {
                        setAccPort(mnsAccInfo.getAccPort());
                    }
                    if (mnsAccInfo.hasAccFlag()) {
                        setAccFlag(mnsAccInfo.getAccFlag());
                    }
                    mergeUnknownFields(mnsAccInfo.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasAccId() && hasAccIp() && hasAccPort()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsAccInfo mnsAccInfo;
                MnsAccInfo mnsAccInfo2;
                try {
                    MnsAccInfo mnsAccInfo3 = (MnsAccInfo) MnsAccInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsAccInfo3 != null) {
                        mergeFrom(mnsAccInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsAccInfo2 = (MnsAccInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsAccInfo = mnsAccInfo2;
                    th = th2;
                }
                if (mnsAccInfo != null) {
                    mergeFrom(mnsAccInfo);
                }
                throw th;
            }

            public boolean hasAccId() {
                return (this.bitField0_ & 1) == 1;
            }

            public long getAccId() {
                return this.accId_;
            }

            public Builder setAccId(long j) {
                this.bitField0_ |= 1;
                this.accId_ = j;
                onChanged();
                return this;
            }

            public Builder clearAccId() {
                this.bitField0_ &= -2;
                this.accId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasAccIp() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getAccIp() {
                return this.accIp_;
            }

            public Builder setAccIp(int i) {
                this.bitField0_ |= 2;
                this.accIp_ = i;
                onChanged();
                return this;
            }

            public Builder clearAccIp() {
                this.bitField0_ &= -3;
                this.accIp_ = 0;
                onChanged();
                return this;
            }

            public boolean hasAccPort() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getAccPort() {
                return this.accPort_;
            }

            public Builder setAccPort(int i) {
                this.bitField0_ |= 4;
                this.accPort_ = i;
                onChanged();
                return this;
            }

            public Builder clearAccPort() {
                this.bitField0_ &= -5;
                this.accPort_ = 0;
                onChanged();
                return this;
            }

            public boolean hasAccFlag() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getAccFlag() {
                return this.accFlag_;
            }

            public Builder setAccFlag(int i) {
                this.bitField0_ |= 8;
                this.accFlag_ = i;
                onChanged();
                return this;
            }

            public Builder clearAccFlag() {
                this.bitField0_ &= -9;
                this.accFlag_ = 0;
                onChanged();
                return this;
            }
        }

        private MnsAccInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsAccInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsAccInfo getDefaultInstance() {
            return defaultInstance;
        }

        public MnsAccInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsAccInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 8:
                            this.bitField0_ |= 1;
                            this.accId_ = codedInputStream.readUInt64();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.accIp_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.accPort_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.accFlag_ = codedInputStream.readInt32();
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsAccInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsAccInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsAccInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasAccId() {
            return (this.bitField0_ & 1) == 1;
        }

        public long getAccId() {
            return this.accId_;
        }

        public boolean hasAccIp() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getAccIp() {
            return this.accIp_;
        }

        public boolean hasAccPort() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getAccPort() {
            return this.accPort_;
        }

        public boolean hasAccFlag() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getAccFlag() {
            return this.accFlag_;
        }

        private void initFields() {
            this.accId_ = 0;
            this.accIp_ = 0;
            this.accPort_ = 0;
            this.accFlag_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasAccId()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasAccIp()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasAccPort()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt64(1, this.accId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.accIp_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.accPort_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeInt32(4, this.accFlag_);
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
                i2 = 0 + CodedOutputStream.computeUInt64Size(1, this.accId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.accIp_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.accPort_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeInt32Size(4, this.accFlag_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsAccInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsAccInfo) PARSER.parseFrom(byteString);
        }

        public static MnsAccInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsAccInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsAccInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsAccInfo) PARSER.parseFrom(bArr);
        }

        public static MnsAccInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsAccInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsAccInfo parseFrom(InputStream inputStream) throws IOException {
            return (MnsAccInfo) PARSER.parseFrom(inputStream);
        }

        public static MnsAccInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsAccInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsAccInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsAccInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsAccInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsAccInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsAccInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsAccInfo) PARSER.parseFrom(codedInputStream);
        }

        public static MnsAccInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsAccInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsAccInfo mnsAccInfo) {
            return newBuilder().mergeFrom(mnsAccInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsAccInfoOrBuilder extends MessageOrBuilder {
        int getAccFlag();

        long getAccId();

        int getAccIp();

        int getAccPort();

        boolean hasAccFlag();

        boolean hasAccId();

        boolean hasAccIp();

        boolean hasAccPort();
    }

    public static final class MnsCmdBindReq extends GeneratedMessage implements MnsCmdBindReqOrBuilder {
        public static final int B2_FIELD_NUMBER = 2;
        public static final int DEVICETOKEN_FIELD_NUMBER = 5;
        public static final int GID_FIELD_NUMBER = 1;
        public static final int ONOFF_FIELD_NUMBER = 6;
        public static Parser<MnsCmdBindReq> PARSER = new AbstractParser<MnsCmdBindReq>() {
            public MnsCmdBindReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsCmdBindReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PASSPORTLOGIN_FIELD_NUMBER = 7;
        public static final int PRIVACYKEY_FIELD_NUMBER = 3;
        public static final int SUID_FIELD_NUMBER = 4;
        private static final MnsCmdBindReq defaultInstance = new MnsCmdBindReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public Object b2_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString devicetoken_;
        /* access modifiers changed from: private */
        public Object gid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public boolean onoff_;
        /* access modifiers changed from: private */
        public boolean passportlogin_;
        /* access modifiers changed from: private */
        public Object privacyKey_;
        /* access modifiers changed from: private */
        public Object sUID_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsCmdBindReqOrBuilder {
            private Object b2_;
            private int bitField0_;
            private ByteString devicetoken_;
            private Object gid_;
            private boolean onoff_;
            private boolean passportlogin_;
            private Object privacyKey_;
            private Object sUID_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdBindReq.class, Builder.class);
            }

            private Builder() {
                this.gid_ = "";
                this.b2_ = "";
                this.privacyKey_ = "";
                this.sUID_ = "";
                this.devicetoken_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.gid_ = "";
                this.b2_ = "";
                this.privacyKey_ = "";
                this.sUID_ = "";
                this.devicetoken_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsCmdBindReq.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.gid_ = "";
                this.bitField0_ &= -2;
                this.b2_ = "";
                this.bitField0_ &= -3;
                this.privacyKey_ = "";
                this.bitField0_ &= -5;
                this.sUID_ = "";
                this.bitField0_ &= -9;
                this.devicetoken_ = ByteString.EMPTY;
                this.bitField0_ &= -17;
                this.onoff_ = false;
                this.bitField0_ &= -33;
                this.passportlogin_ = false;
                this.bitField0_ &= -65;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_descriptor;
            }

            public MnsCmdBindReq getDefaultInstanceForType() {
                return MnsCmdBindReq.getDefaultInstance();
            }

            public MnsCmdBindReq build() {
                MnsCmdBindReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsCmdBindReq buildPartial() {
                int i = 1;
                MnsCmdBindReq mnsCmdBindReq = new MnsCmdBindReq((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                mnsCmdBindReq.gid_ = this.gid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                mnsCmdBindReq.b2_ = this.b2_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                mnsCmdBindReq.privacyKey_ = this.privacyKey_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                mnsCmdBindReq.sUID_ = this.sUID_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                mnsCmdBindReq.devicetoken_ = this.devicetoken_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                mnsCmdBindReq.onoff_ = this.onoff_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                mnsCmdBindReq.passportlogin_ = this.passportlogin_;
                mnsCmdBindReq.bitField0_ = i;
                onBuilt();
                return mnsCmdBindReq;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsCmdBindReq) {
                    return mergeFrom((MnsCmdBindReq) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsCmdBindReq mnsCmdBindReq) {
                if (mnsCmdBindReq != MnsCmdBindReq.getDefaultInstance()) {
                    if (mnsCmdBindReq.hasGid()) {
                        this.bitField0_ |= 1;
                        this.gid_ = mnsCmdBindReq.gid_;
                        onChanged();
                    }
                    if (mnsCmdBindReq.hasB2()) {
                        this.bitField0_ |= 2;
                        this.b2_ = mnsCmdBindReq.b2_;
                        onChanged();
                    }
                    if (mnsCmdBindReq.hasPrivacyKey()) {
                        this.bitField0_ |= 4;
                        this.privacyKey_ = mnsCmdBindReq.privacyKey_;
                        onChanged();
                    }
                    if (mnsCmdBindReq.hasSUID()) {
                        this.bitField0_ |= 8;
                        this.sUID_ = mnsCmdBindReq.sUID_;
                        onChanged();
                    }
                    if (mnsCmdBindReq.hasDevicetoken()) {
                        setDevicetoken(mnsCmdBindReq.getDevicetoken());
                    }
                    if (mnsCmdBindReq.hasOnoff()) {
                        setOnoff(mnsCmdBindReq.getOnoff());
                    }
                    if (mnsCmdBindReq.hasPassportlogin()) {
                        setPassportlogin(mnsCmdBindReq.getPassportlogin());
                    }
                    mergeUnknownFields(mnsCmdBindReq.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasGid() && hasB2() && hasPrivacyKey()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsCmdBindReq mnsCmdBindReq;
                MnsCmdBindReq mnsCmdBindReq2;
                try {
                    MnsCmdBindReq mnsCmdBindReq3 = (MnsCmdBindReq) MnsCmdBindReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsCmdBindReq3 != null) {
                        mergeFrom(mnsCmdBindReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsCmdBindReq2 = (MnsCmdBindReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsCmdBindReq = mnsCmdBindReq2;
                    th = th2;
                }
                if (mnsCmdBindReq != null) {
                    mergeFrom(mnsCmdBindReq);
                }
                throw th;
            }

            public boolean hasGid() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getGid() {
                Object obj = this.gid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.gid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getGidBytes() {
                Object obj = this.gid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setGid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.gid_ = str;
                onChanged();
                return this;
            }

            public Builder clearGid() {
                this.bitField0_ &= -2;
                this.gid_ = MnsCmdBindReq.getDefaultInstance().getGid();
                onChanged();
                return this;
            }

            public Builder setGidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.gid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasB2() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getB2() {
                Object obj = this.b2_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.b2_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getB2Bytes() {
                Object obj = this.b2_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.b2_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setB2(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.b2_ = str;
                onChanged();
                return this;
            }

            public Builder clearB2() {
                this.bitField0_ &= -3;
                this.b2_ = MnsCmdBindReq.getDefaultInstance().getB2();
                onChanged();
                return this;
            }

            public Builder setB2Bytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.b2_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasPrivacyKey() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getPrivacyKey() {
                Object obj = this.privacyKey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.privacyKey_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getPrivacyKeyBytes() {
                Object obj = this.privacyKey_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.privacyKey_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setPrivacyKey(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.privacyKey_ = str;
                onChanged();
                return this;
            }

            public Builder clearPrivacyKey() {
                this.bitField0_ &= -5;
                this.privacyKey_ = MnsCmdBindReq.getDefaultInstance().getPrivacyKey();
                onChanged();
                return this;
            }

            public Builder setPrivacyKeyBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.privacyKey_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasSUID() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getSUID() {
                Object obj = this.sUID_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.sUID_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getSUIDBytes() {
                Object obj = this.sUID_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sUID_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setSUID(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.sUID_ = str;
                onChanged();
                return this;
            }

            public Builder clearSUID() {
                this.bitField0_ &= -9;
                this.sUID_ = MnsCmdBindReq.getDefaultInstance().getSUID();
                onChanged();
                return this;
            }

            public Builder setSUIDBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.sUID_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasDevicetoken() {
                return (this.bitField0_ & 16) == 16;
            }

            public ByteString getDevicetoken() {
                return this.devicetoken_;
            }

            public Builder setDevicetoken(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.devicetoken_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearDevicetoken() {
                this.bitField0_ &= -17;
                this.devicetoken_ = MnsCmdBindReq.getDefaultInstance().getDevicetoken();
                onChanged();
                return this;
            }

            public boolean hasOnoff() {
                return (this.bitField0_ & 32) == 32;
            }

            public boolean getOnoff() {
                return this.onoff_;
            }

            public Builder setOnoff(boolean z) {
                this.bitField0_ |= 32;
                this.onoff_ = z;
                onChanged();
                return this;
            }

            public Builder clearOnoff() {
                this.bitField0_ &= -33;
                this.onoff_ = false;
                onChanged();
                return this;
            }

            public boolean hasPassportlogin() {
                return (this.bitField0_ & 64) == 64;
            }

            public boolean getPassportlogin() {
                return this.passportlogin_;
            }

            public Builder setPassportlogin(boolean z) {
                this.bitField0_ |= 64;
                this.passportlogin_ = z;
                onChanged();
                return this;
            }

            public Builder clearPassportlogin() {
                this.bitField0_ &= -65;
                this.passportlogin_ = false;
                onChanged();
                return this;
            }
        }

        private MnsCmdBindReq(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsCmdBindReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsCmdBindReq getDefaultInstance() {
            return defaultInstance;
        }

        public MnsCmdBindReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsCmdBindReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 10:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 1;
                            this.gid_ = readBytes;
                            break;
                        case 18:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.b2_ = readBytes2;
                            break;
                        case 26:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.privacyKey_ = readBytes3;
                            break;
                        case 34:
                            ByteString readBytes4 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.sUID_ = readBytes4;
                            break;
                        case 42:
                            this.bitField0_ |= 16;
                            this.devicetoken_ = codedInputStream.readBytes();
                            break;
                        case 48:
                            this.bitField0_ |= 32;
                            this.onoff_ = codedInputStream.readBool();
                            break;
                        case 56:
                            this.bitField0_ |= 64;
                            this.passportlogin_ = codedInputStream.readBool();
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdBindReq.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsCmdBindReq> getParserForType() {
            return PARSER;
        }

        public boolean hasGid() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getGid() {
            Object obj = this.gid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.gid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getGidBytes() {
            Object obj = this.gid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasB2() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getB2() {
            Object obj = this.b2_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.b2_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getB2Bytes() {
            Object obj = this.b2_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.b2_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasPrivacyKey() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getPrivacyKey() {
            Object obj = this.privacyKey_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.privacyKey_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getPrivacyKeyBytes() {
            Object obj = this.privacyKey_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.privacyKey_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasSUID() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getSUID() {
            Object obj = this.sUID_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sUID_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSUIDBytes() {
            Object obj = this.sUID_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sUID_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasDevicetoken() {
            return (this.bitField0_ & 16) == 16;
        }

        public ByteString getDevicetoken() {
            return this.devicetoken_;
        }

        public boolean hasOnoff() {
            return (this.bitField0_ & 32) == 32;
        }

        public boolean getOnoff() {
            return this.onoff_;
        }

        public boolean hasPassportlogin() {
            return (this.bitField0_ & 64) == 64;
        }

        public boolean getPassportlogin() {
            return this.passportlogin_;
        }

        private void initFields() {
            this.gid_ = "";
            this.b2_ = "";
            this.privacyKey_ = "";
            this.sUID_ = "";
            this.devicetoken_ = ByteString.EMPTY;
            this.onoff_ = false;
            this.passportlogin_ = false;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasGid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasB2()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasPrivacyKey()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getGidBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getB2Bytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getPrivacyKeyBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getSUIDBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, this.devicetoken_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBool(6, this.onoff_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBool(7, this.passportlogin_);
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getGidBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getB2Bytes());
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getPrivacyKeyBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getSUIDBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, this.devicetoken_);
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBoolSize(6, this.onoff_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeBoolSize(7, this.passportlogin_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsCmdBindReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsCmdBindReq) PARSER.parseFrom(byteString);
        }

        public static MnsCmdBindReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdBindReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsCmdBindReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsCmdBindReq) PARSER.parseFrom(bArr);
        }

        public static MnsCmdBindReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdBindReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsCmdBindReq parseFrom(InputStream inputStream) throws IOException {
            return (MnsCmdBindReq) PARSER.parseFrom(inputStream);
        }

        public static MnsCmdBindReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdBindReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdBindReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsCmdBindReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsCmdBindReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdBindReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdBindReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsCmdBindReq) PARSER.parseFrom(codedInputStream);
        }

        public static MnsCmdBindReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdBindReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsCmdBindReq mnsCmdBindReq) {
            return newBuilder().mergeFrom(mnsCmdBindReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsCmdBindReqOrBuilder extends MessageOrBuilder {
        String getB2();

        ByteString getB2Bytes();

        ByteString getDevicetoken();

        String getGid();

        ByteString getGidBytes();

        boolean getOnoff();

        boolean getPassportlogin();

        String getPrivacyKey();

        ByteString getPrivacyKeyBytes();

        String getSUID();

        ByteString getSUIDBytes();

        boolean hasB2();

        boolean hasDevicetoken();

        boolean hasGid();

        boolean hasOnoff();

        boolean hasPassportlogin();

        boolean hasPrivacyKey();

        boolean hasSUID();
    }

    public static final class MnsCmdBindRsp extends GeneratedMessage implements MnsCmdBindRspOrBuilder {
        public static final int B2_FIELD_NUMBER = 3;
        public static final int GID_FIELD_NUMBER = 1;
        public static final int GTKEY_B2_FIELD_NUMBER = 4;
        public static Parser<MnsCmdBindRsp> PARSER = new AbstractParser<MnsCmdBindRsp>() {
            public MnsCmdBindRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsCmdBindRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SUID_FIELD_NUMBER = 5;
        public static final int UID_FIELD_NUMBER = 2;
        private static final MnsCmdBindRsp defaultInstance = new MnsCmdBindRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public Object b2_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object gTKEYB2_;
        /* access modifiers changed from: private */
        public Object gid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object sUID_;
        /* access modifiers changed from: private */
        public long uid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsCmdBindRspOrBuilder {
            private Object b2_;
            private int bitField0_;
            private Object gTKEYB2_;
            private Object gid_;
            private Object sUID_;
            private long uid_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdBindRsp.class, Builder.class);
            }

            private Builder() {
                this.gid_ = "";
                this.b2_ = "";
                this.gTKEYB2_ = "";
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.gid_ = "";
                this.b2_ = "";
                this.gTKEYB2_ = "";
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsCmdBindRsp.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.gid_ = "";
                this.bitField0_ &= -2;
                this.uid_ = 0;
                this.bitField0_ &= -3;
                this.b2_ = "";
                this.bitField0_ &= -5;
                this.gTKEYB2_ = "";
                this.bitField0_ &= -9;
                this.sUID_ = "";
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_descriptor;
            }

            public MnsCmdBindRsp getDefaultInstanceForType() {
                return MnsCmdBindRsp.getDefaultInstance();
            }

            public MnsCmdBindRsp build() {
                MnsCmdBindRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsCmdBindRsp buildPartial() {
                int i = 1;
                MnsCmdBindRsp mnsCmdBindRsp = new MnsCmdBindRsp((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                mnsCmdBindRsp.gid_ = this.gid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                mnsCmdBindRsp.uid_ = this.uid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                mnsCmdBindRsp.b2_ = this.b2_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                mnsCmdBindRsp.gTKEYB2_ = this.gTKEYB2_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                mnsCmdBindRsp.sUID_ = this.sUID_;
                mnsCmdBindRsp.bitField0_ = i;
                onBuilt();
                return mnsCmdBindRsp;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsCmdBindRsp) {
                    return mergeFrom((MnsCmdBindRsp) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsCmdBindRsp mnsCmdBindRsp) {
                if (mnsCmdBindRsp != MnsCmdBindRsp.getDefaultInstance()) {
                    if (mnsCmdBindRsp.hasGid()) {
                        this.bitField0_ |= 1;
                        this.gid_ = mnsCmdBindRsp.gid_;
                        onChanged();
                    }
                    if (mnsCmdBindRsp.hasUid()) {
                        setUid(mnsCmdBindRsp.getUid());
                    }
                    if (mnsCmdBindRsp.hasB2()) {
                        this.bitField0_ |= 4;
                        this.b2_ = mnsCmdBindRsp.b2_;
                        onChanged();
                    }
                    if (mnsCmdBindRsp.hasGTKEYB2()) {
                        this.bitField0_ |= 8;
                        this.gTKEYB2_ = mnsCmdBindRsp.gTKEYB2_;
                        onChanged();
                    }
                    if (mnsCmdBindRsp.hasSUID()) {
                        this.bitField0_ |= 16;
                        this.sUID_ = mnsCmdBindRsp.sUID_;
                        onChanged();
                    }
                    mergeUnknownFields(mnsCmdBindRsp.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasGid() && hasUid() && hasB2() && hasGTKEYB2()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsCmdBindRsp mnsCmdBindRsp;
                MnsCmdBindRsp mnsCmdBindRsp2;
                try {
                    MnsCmdBindRsp mnsCmdBindRsp3 = (MnsCmdBindRsp) MnsCmdBindRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsCmdBindRsp3 != null) {
                        mergeFrom(mnsCmdBindRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsCmdBindRsp2 = (MnsCmdBindRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsCmdBindRsp = mnsCmdBindRsp2;
                    th = th2;
                }
                if (mnsCmdBindRsp != null) {
                    mergeFrom(mnsCmdBindRsp);
                }
                throw th;
            }

            public boolean hasGid() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getGid() {
                Object obj = this.gid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.gid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getGidBytes() {
                Object obj = this.gid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setGid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.gid_ = str;
                onChanged();
                return this;
            }

            public Builder clearGid() {
                this.bitField0_ &= -2;
                this.gid_ = MnsCmdBindRsp.getDefaultInstance().getGid();
                onChanged();
                return this;
            }

            public Builder setGidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.gid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasUid() {
                return (this.bitField0_ & 2) == 2;
            }

            public long getUid() {
                return this.uid_;
            }

            public Builder setUid(long j) {
                this.bitField0_ |= 2;
                this.uid_ = j;
                onChanged();
                return this;
            }

            public Builder clearUid() {
                this.bitField0_ &= -3;
                this.uid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasB2() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getB2() {
                Object obj = this.b2_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.b2_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getB2Bytes() {
                Object obj = this.b2_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.b2_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setB2(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.b2_ = str;
                onChanged();
                return this;
            }

            public Builder clearB2() {
                this.bitField0_ &= -5;
                this.b2_ = MnsCmdBindRsp.getDefaultInstance().getB2();
                onChanged();
                return this;
            }

            public Builder setB2Bytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.b2_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasGTKEYB2() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getGTKEYB2() {
                Object obj = this.gTKEYB2_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.gTKEYB2_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getGTKEYB2Bytes() {
                Object obj = this.gTKEYB2_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gTKEYB2_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setGTKEYB2(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.gTKEYB2_ = str;
                onChanged();
                return this;
            }

            public Builder clearGTKEYB2() {
                this.bitField0_ &= -9;
                this.gTKEYB2_ = MnsCmdBindRsp.getDefaultInstance().getGTKEYB2();
                onChanged();
                return this;
            }

            public Builder setGTKEYB2Bytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.gTKEYB2_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasSUID() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getSUID() {
                Object obj = this.sUID_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.sUID_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getSUIDBytes() {
                Object obj = this.sUID_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sUID_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setSUID(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.sUID_ = str;
                onChanged();
                return this;
            }

            public Builder clearSUID() {
                this.bitField0_ &= -17;
                this.sUID_ = MnsCmdBindRsp.getDefaultInstance().getSUID();
                onChanged();
                return this;
            }

            public Builder setSUIDBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.sUID_ = byteString;
                onChanged();
                return this;
            }
        }

        private MnsCmdBindRsp(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsCmdBindRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsCmdBindRsp getDefaultInstance() {
            return defaultInstance;
        }

        public MnsCmdBindRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsCmdBindRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 10:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 1;
                            this.gid_ = readBytes;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.uid_ = codedInputStream.readUInt64();
                            break;
                        case 26:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.b2_ = readBytes2;
                            break;
                        case 34:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.gTKEYB2_ = readBytes3;
                            break;
                        case 42:
                            ByteString readBytes4 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.sUID_ = readBytes4;
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdBindRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdBindRsp.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsCmdBindRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasGid() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getGid() {
            Object obj = this.gid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.gid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getGidBytes() {
            Object obj = this.gid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasUid() {
            return (this.bitField0_ & 2) == 2;
        }

        public long getUid() {
            return this.uid_;
        }

        public boolean hasB2() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getB2() {
            Object obj = this.b2_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.b2_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getB2Bytes() {
            Object obj = this.b2_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.b2_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasGTKEYB2() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getGTKEYB2() {
            Object obj = this.gTKEYB2_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.gTKEYB2_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getGTKEYB2Bytes() {
            Object obj = this.gTKEYB2_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gTKEYB2_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasSUID() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getSUID() {
            Object obj = this.sUID_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sUID_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSUIDBytes() {
            Object obj = this.sUID_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sUID_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.gid_ = "";
            this.uid_ = 0;
            this.b2_ = "";
            this.gTKEYB2_ = "";
            this.sUID_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasGid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasUid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasB2()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasGTKEYB2()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else {
                this.memoizedIsInitialized = 1;
                return true;
            }
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getGidBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt64(2, this.uid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getB2Bytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getGTKEYB2Bytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getSUIDBytes());
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getGidBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt64Size(2, this.uid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getB2Bytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getGTKEYB2Bytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getSUIDBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsCmdBindRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsCmdBindRsp) PARSER.parseFrom(byteString);
        }

        public static MnsCmdBindRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdBindRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsCmdBindRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsCmdBindRsp) PARSER.parseFrom(bArr);
        }

        public static MnsCmdBindRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdBindRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsCmdBindRsp parseFrom(InputStream inputStream) throws IOException {
            return (MnsCmdBindRsp) PARSER.parseFrom(inputStream);
        }

        public static MnsCmdBindRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdBindRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdBindRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsCmdBindRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsCmdBindRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdBindRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdBindRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsCmdBindRsp) PARSER.parseFrom(codedInputStream);
        }

        public static MnsCmdBindRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdBindRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsCmdBindRsp mnsCmdBindRsp) {
            return newBuilder().mergeFrom(mnsCmdBindRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsCmdBindRspOrBuilder extends MessageOrBuilder {
        String getB2();

        ByteString getB2Bytes();

        String getGTKEYB2();

        ByteString getGTKEYB2Bytes();

        String getGid();

        ByteString getGidBytes();

        String getSUID();

        ByteString getSUIDBytes();

        long getUid();

        boolean hasB2();

        boolean hasGTKEYB2();

        boolean hasGid();

        boolean hasSUID();

        boolean hasUid();
    }

    public static final class MnsCmdHandShakeReq extends GeneratedMessage implements MnsCmdHandShakeReqOrBuilder {
        public static final int MGR_INFO_FIELD_NUMBER = 2;
        public static Parser<MnsCmdHandShakeReq> PARSER = new AbstractParser<MnsCmdHandShakeReq>() {
            public MnsCmdHandShakeReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsCmdHandShakeReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TYPE_FIELD_NUMBER = 1;
        private static final MnsCmdHandShakeReq defaultInstance = new MnsCmdHandShakeReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public SdkConnMgrInfo mgrInfo_;
        /* access modifiers changed from: private */
        public int type_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsCmdHandShakeReqOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<SdkConnMgrInfo, Builder, SdkConnMgrInfoOrBuilder> mgrInfoBuilder_;
            private SdkConnMgrInfo mgrInfo_;
            private int type_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdHandShakeReq.class, Builder.class);
            }

            private Builder() {
                this.mgrInfo_ = SdkConnMgrInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.mgrInfo_ = SdkConnMgrInfo.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsCmdHandShakeReq.alwaysUseFieldBuilders) {
                    getMgrInfoFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.type_ = 0;
                this.bitField0_ &= -2;
                if (this.mgrInfoBuilder_ == null) {
                    this.mgrInfo_ = SdkConnMgrInfo.getDefaultInstance();
                } else {
                    this.mgrInfoBuilder_.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_descriptor;
            }

            public MnsCmdHandShakeReq getDefaultInstanceForType() {
                return MnsCmdHandShakeReq.getDefaultInstance();
            }

            public MnsCmdHandShakeReq build() {
                MnsCmdHandShakeReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsCmdHandShakeReq buildPartial() {
                int i;
                int i2 = 1;
                MnsCmdHandShakeReq mnsCmdHandShakeReq = new MnsCmdHandShakeReq((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                mnsCmdHandShakeReq.type_ = this.type_;
                if ((i3 & 2) == 2) {
                    i = i2 | 2;
                } else {
                    i = i2;
                }
                if (this.mgrInfoBuilder_ == null) {
                    mnsCmdHandShakeReq.mgrInfo_ = this.mgrInfo_;
                } else {
                    mnsCmdHandShakeReq.mgrInfo_ = (SdkConnMgrInfo) this.mgrInfoBuilder_.build();
                }
                mnsCmdHandShakeReq.bitField0_ = i;
                onBuilt();
                return mnsCmdHandShakeReq;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsCmdHandShakeReq) {
                    return mergeFrom((MnsCmdHandShakeReq) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsCmdHandShakeReq mnsCmdHandShakeReq) {
                if (mnsCmdHandShakeReq != MnsCmdHandShakeReq.getDefaultInstance()) {
                    if (mnsCmdHandShakeReq.hasType()) {
                        setType(mnsCmdHandShakeReq.getType());
                    }
                    if (mnsCmdHandShakeReq.hasMgrInfo()) {
                        mergeMgrInfo(mnsCmdHandShakeReq.getMgrInfo());
                    }
                    mergeUnknownFields(mnsCmdHandShakeReq.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasType()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsCmdHandShakeReq mnsCmdHandShakeReq;
                MnsCmdHandShakeReq mnsCmdHandShakeReq2;
                try {
                    MnsCmdHandShakeReq mnsCmdHandShakeReq3 = (MnsCmdHandShakeReq) MnsCmdHandShakeReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsCmdHandShakeReq3 != null) {
                        mergeFrom(mnsCmdHandShakeReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsCmdHandShakeReq2 = (MnsCmdHandShakeReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsCmdHandShakeReq = mnsCmdHandShakeReq2;
                    th = th2;
                }
                if (mnsCmdHandShakeReq != null) {
                    mergeFrom(mnsCmdHandShakeReq);
                }
                throw th;
            }

            public boolean hasType() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getType() {
                return this.type_;
            }

            public Builder setType(int i) {
                this.bitField0_ |= 1;
                this.type_ = i;
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.bitField0_ &= -2;
                this.type_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMgrInfo() {
                return (this.bitField0_ & 2) == 2;
            }

            public SdkConnMgrInfo getMgrInfo() {
                if (this.mgrInfoBuilder_ == null) {
                    return this.mgrInfo_;
                }
                return (SdkConnMgrInfo) this.mgrInfoBuilder_.getMessage();
            }

            public Builder setMgrInfo(SdkConnMgrInfo sdkConnMgrInfo) {
                if (this.mgrInfoBuilder_ != null) {
                    this.mgrInfoBuilder_.setMessage(sdkConnMgrInfo);
                } else if (sdkConnMgrInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.mgrInfo_ = sdkConnMgrInfo;
                    onChanged();
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setMgrInfo(Builder builder) {
                if (this.mgrInfoBuilder_ == null) {
                    this.mgrInfo_ = builder.build();
                    onChanged();
                } else {
                    this.mgrInfoBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder mergeMgrInfo(SdkConnMgrInfo sdkConnMgrInfo) {
                if (this.mgrInfoBuilder_ == null) {
                    if ((this.bitField0_ & 2) != 2 || this.mgrInfo_ == SdkConnMgrInfo.getDefaultInstance()) {
                        this.mgrInfo_ = sdkConnMgrInfo;
                    } else {
                        this.mgrInfo_ = SdkConnMgrInfo.newBuilder(this.mgrInfo_).mergeFrom(sdkConnMgrInfo).buildPartial();
                    }
                    onChanged();
                } else {
                    this.mgrInfoBuilder_.mergeFrom(sdkConnMgrInfo);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder clearMgrInfo() {
                if (this.mgrInfoBuilder_ == null) {
                    this.mgrInfo_ = SdkConnMgrInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.mgrInfoBuilder_.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            public Builder getMgrInfoBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return (Builder) getMgrInfoFieldBuilder().getBuilder();
            }

            public SdkConnMgrInfoOrBuilder getMgrInfoOrBuilder() {
                if (this.mgrInfoBuilder_ != null) {
                    return (SdkConnMgrInfoOrBuilder) this.mgrInfoBuilder_.getMessageOrBuilder();
                }
                return this.mgrInfo_;
            }

            private SingleFieldBuilder<SdkConnMgrInfo, Builder, SdkConnMgrInfoOrBuilder> getMgrInfoFieldBuilder() {
                if (this.mgrInfoBuilder_ == null) {
                    this.mgrInfoBuilder_ = new SingleFieldBuilder<>(getMgrInfo(), getParentForChildren(), isClean());
                    this.mgrInfo_ = null;
                }
                return this.mgrInfoBuilder_;
            }
        }

        private MnsCmdHandShakeReq(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsCmdHandShakeReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsCmdHandShakeReq getDefaultInstance() {
            return defaultInstance;
        }

        public MnsCmdHandShakeReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsCmdHandShakeReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            Builder builder;
            boolean z;
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            com.google.protobuf.UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.type_ = codedInputStream.readInt32();
                            z = z2;
                            break;
                        case 18:
                            if ((this.bitField0_ & 2) == 2) {
                                builder = this.mgrInfo_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.mgrInfo_ = (SdkConnMgrInfo) codedInputStream.readMessage(SdkConnMgrInfo.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.mgrInfo_);
                                this.mgrInfo_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 2;
                            z = z2;
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                z = z2;
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                    z2 = z;
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdHandShakeReq.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsCmdHandShakeReq> getParserForType() {
            return PARSER;
        }

        public boolean hasType() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getType() {
            return this.type_;
        }

        public boolean hasMgrInfo() {
            return (this.bitField0_ & 2) == 2;
        }

        public SdkConnMgrInfo getMgrInfo() {
            return this.mgrInfo_;
        }

        public SdkConnMgrInfoOrBuilder getMgrInfoOrBuilder() {
            return this.mgrInfo_;
        }

        private void initFields() {
            this.type_ = 0;
            this.mgrInfo_ = SdkConnMgrInfo.getDefaultInstance();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasType()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt32(1, this.type_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(2, this.mgrInfo_);
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
                i2 = 0 + CodedOutputStream.computeInt32Size(1, this.type_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeMessageSize(2, this.mgrInfo_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsCmdHandShakeReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsCmdHandShakeReq) PARSER.parseFrom(byteString);
        }

        public static MnsCmdHandShakeReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdHandShakeReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsCmdHandShakeReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsCmdHandShakeReq) PARSER.parseFrom(bArr);
        }

        public static MnsCmdHandShakeReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdHandShakeReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsCmdHandShakeReq parseFrom(InputStream inputStream) throws IOException {
            return (MnsCmdHandShakeReq) PARSER.parseFrom(inputStream);
        }

        public static MnsCmdHandShakeReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdHandShakeReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdHandShakeReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsCmdHandShakeReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsCmdHandShakeReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdHandShakeReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdHandShakeReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsCmdHandShakeReq) PARSER.parseFrom(codedInputStream);
        }

        public static MnsCmdHandShakeReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdHandShakeReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsCmdHandShakeReq mnsCmdHandShakeReq) {
            return newBuilder().mergeFrom(mnsCmdHandShakeReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsCmdHandShakeReqOrBuilder extends MessageOrBuilder {
        SdkConnMgrInfo getMgrInfo();

        SdkConnMgrInfoOrBuilder getMgrInfoOrBuilder();

        int getType();

        boolean hasMgrInfo();

        boolean hasType();
    }

    public static final class MnsCmdHandShakeRsp extends GeneratedMessage implements MnsCmdHandShakeRspOrBuilder {
        public static final int CLIENTINFO_FIELD_NUMBER = 4;
        public static final int CROSS_OPR_FIELD_NUMBER = 5;
        public static Parser<MnsCmdHandShakeRsp> PARSER = new AbstractParser<MnsCmdHandShakeRsp>() {
            public MnsCmdHandShakeRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsCmdHandShakeRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int REDIRECT_FIELD_NUMBER = 2;
        public static final int TYPE_FIELD_NUMBER = 1;
        public static final int UPRINCIPLE_FIELD_NUMBER = 3;
        private static final MnsCmdHandShakeRsp defaultInstance = new MnsCmdHandShakeRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object clientinfo_;
        /* access modifiers changed from: private */
        public int crossOpr_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public List<MnsIpInfo> redirect_;
        /* access modifiers changed from: private */
        public int type_;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public int uprinciple_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsCmdHandShakeRspOrBuilder {
            private int bitField0_;
            private Object clientinfo_;
            private int crossOpr_;
            private RepeatedFieldBuilder<MnsIpInfo, Builder, MnsIpInfoOrBuilder> redirectBuilder_;
            private List<MnsIpInfo> redirect_;
            private int type_;
            private int uprinciple_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdHandShakeRsp.class, Builder.class);
            }

            private Builder() {
                this.redirect_ = Collections.emptyList();
                this.clientinfo_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.redirect_ = Collections.emptyList();
                this.clientinfo_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsCmdHandShakeRsp.alwaysUseFieldBuilders) {
                    getRedirectFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.type_ = 0;
                this.bitField0_ &= -2;
                if (this.redirectBuilder_ == null) {
                    this.redirect_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    this.redirectBuilder_.clear();
                }
                this.uprinciple_ = 0;
                this.bitField0_ &= -5;
                this.clientinfo_ = "";
                this.bitField0_ &= -9;
                this.crossOpr_ = 0;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_descriptor;
            }

            public MnsCmdHandShakeRsp getDefaultInstanceForType() {
                return MnsCmdHandShakeRsp.getDefaultInstance();
            }

            public MnsCmdHandShakeRsp build() {
                MnsCmdHandShakeRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsCmdHandShakeRsp buildPartial() {
                int i = 1;
                MnsCmdHandShakeRsp mnsCmdHandShakeRsp = new MnsCmdHandShakeRsp((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                mnsCmdHandShakeRsp.type_ = this.type_;
                if (this.redirectBuilder_ == null) {
                    if ((this.bitField0_ & 2) == 2) {
                        this.redirect_ = Collections.unmodifiableList(this.redirect_);
                        this.bitField0_ &= -3;
                    }
                    mnsCmdHandShakeRsp.redirect_ = this.redirect_;
                } else {
                    mnsCmdHandShakeRsp.redirect_ = this.redirectBuilder_.build();
                }
                if ((i2 & 4) == 4) {
                    i |= 2;
                }
                mnsCmdHandShakeRsp.uprinciple_ = this.uprinciple_;
                if ((i2 & 8) == 8) {
                    i |= 4;
                }
                mnsCmdHandShakeRsp.clientinfo_ = this.clientinfo_;
                if ((i2 & 16) == 16) {
                    i |= 8;
                }
                mnsCmdHandShakeRsp.crossOpr_ = this.crossOpr_;
                mnsCmdHandShakeRsp.bitField0_ = i;
                onBuilt();
                return mnsCmdHandShakeRsp;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsCmdHandShakeRsp) {
                    return mergeFrom((MnsCmdHandShakeRsp) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsCmdHandShakeRsp mnsCmdHandShakeRsp) {
                RepeatedFieldBuilder<MnsIpInfo, Builder, MnsIpInfoOrBuilder> repeatedFieldBuilder = null;
                if (mnsCmdHandShakeRsp != MnsCmdHandShakeRsp.getDefaultInstance()) {
                    if (mnsCmdHandShakeRsp.hasType()) {
                        setType(mnsCmdHandShakeRsp.getType());
                    }
                    if (this.redirectBuilder_ == null) {
                        if (!mnsCmdHandShakeRsp.redirect_.isEmpty()) {
                            if (this.redirect_.isEmpty()) {
                                this.redirect_ = mnsCmdHandShakeRsp.redirect_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureRedirectIsMutable();
                                this.redirect_.addAll(mnsCmdHandShakeRsp.redirect_);
                            }
                            onChanged();
                        }
                    } else if (!mnsCmdHandShakeRsp.redirect_.isEmpty()) {
                        if (this.redirectBuilder_.isEmpty()) {
                            this.redirectBuilder_.dispose();
                            this.redirectBuilder_ = null;
                            this.redirect_ = mnsCmdHandShakeRsp.redirect_;
                            this.bitField0_ &= -3;
                            if (MnsCmdHandShakeRsp.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getRedirectFieldBuilder();
                            }
                            this.redirectBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.redirectBuilder_.addAllMessages(mnsCmdHandShakeRsp.redirect_);
                        }
                    }
                    if (mnsCmdHandShakeRsp.hasUprinciple()) {
                        setUprinciple(mnsCmdHandShakeRsp.getUprinciple());
                    }
                    if (mnsCmdHandShakeRsp.hasClientinfo()) {
                        this.bitField0_ |= 8;
                        this.clientinfo_ = mnsCmdHandShakeRsp.clientinfo_;
                        onChanged();
                    }
                    if (mnsCmdHandShakeRsp.hasCrossOpr()) {
                        setCrossOpr(mnsCmdHandShakeRsp.getCrossOpr());
                    }
                    mergeUnknownFields(mnsCmdHandShakeRsp.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasType()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsCmdHandShakeRsp mnsCmdHandShakeRsp;
                MnsCmdHandShakeRsp mnsCmdHandShakeRsp2;
                try {
                    MnsCmdHandShakeRsp mnsCmdHandShakeRsp3 = (MnsCmdHandShakeRsp) MnsCmdHandShakeRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsCmdHandShakeRsp3 != null) {
                        mergeFrom(mnsCmdHandShakeRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsCmdHandShakeRsp2 = (MnsCmdHandShakeRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsCmdHandShakeRsp = mnsCmdHandShakeRsp2;
                    th = th2;
                }
                if (mnsCmdHandShakeRsp != null) {
                    mergeFrom(mnsCmdHandShakeRsp);
                }
                throw th;
            }

            public boolean hasType() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getType() {
                return this.type_;
            }

            public Builder setType(int i) {
                this.bitField0_ |= 1;
                this.type_ = i;
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.bitField0_ &= -2;
                this.type_ = 0;
                onChanged();
                return this;
            }

            private void ensureRedirectIsMutable() {
                if ((this.bitField0_ & 2) != 2) {
                    this.redirect_ = new ArrayList(this.redirect_);
                    this.bitField0_ |= 2;
                }
            }

            public List<MnsIpInfo> getRedirectList() {
                if (this.redirectBuilder_ == null) {
                    return Collections.unmodifiableList(this.redirect_);
                }
                return this.redirectBuilder_.getMessageList();
            }

            public int getRedirectCount() {
                if (this.redirectBuilder_ == null) {
                    return this.redirect_.size();
                }
                return this.redirectBuilder_.getCount();
            }

            public MnsIpInfo getRedirect(int i) {
                if (this.redirectBuilder_ == null) {
                    return (MnsIpInfo) this.redirect_.get(i);
                }
                return (MnsIpInfo) this.redirectBuilder_.getMessage(i);
            }

            public Builder setRedirect(int i, MnsIpInfo mnsIpInfo) {
                if (this.redirectBuilder_ != null) {
                    this.redirectBuilder_.setMessage(i, mnsIpInfo);
                } else if (mnsIpInfo == null) {
                    throw new NullPointerException();
                } else {
                    ensureRedirectIsMutable();
                    this.redirect_.set(i, mnsIpInfo);
                    onChanged();
                }
                return this;
            }

            public Builder setRedirect(int i, Builder builder) {
                if (this.redirectBuilder_ == null) {
                    ensureRedirectIsMutable();
                    this.redirect_.set(i, builder.build());
                    onChanged();
                } else {
                    this.redirectBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addRedirect(MnsIpInfo mnsIpInfo) {
                if (this.redirectBuilder_ != null) {
                    this.redirectBuilder_.addMessage(mnsIpInfo);
                } else if (mnsIpInfo == null) {
                    throw new NullPointerException();
                } else {
                    ensureRedirectIsMutable();
                    this.redirect_.add(mnsIpInfo);
                    onChanged();
                }
                return this;
            }

            public Builder addRedirect(int i, MnsIpInfo mnsIpInfo) {
                if (this.redirectBuilder_ != null) {
                    this.redirectBuilder_.addMessage(i, mnsIpInfo);
                } else if (mnsIpInfo == null) {
                    throw new NullPointerException();
                } else {
                    ensureRedirectIsMutable();
                    this.redirect_.add(i, mnsIpInfo);
                    onChanged();
                }
                return this;
            }

            public Builder addRedirect(Builder builder) {
                if (this.redirectBuilder_ == null) {
                    ensureRedirectIsMutable();
                    this.redirect_.add(builder.build());
                    onChanged();
                } else {
                    this.redirectBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addRedirect(int i, Builder builder) {
                if (this.redirectBuilder_ == null) {
                    ensureRedirectIsMutable();
                    this.redirect_.add(i, builder.build());
                    onChanged();
                } else {
                    this.redirectBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllRedirect(Iterable<? extends MnsIpInfo> iterable) {
                if (this.redirectBuilder_ == null) {
                    ensureRedirectIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.redirect_);
                    onChanged();
                } else {
                    this.redirectBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearRedirect() {
                if (this.redirectBuilder_ == null) {
                    this.redirect_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    this.redirectBuilder_.clear();
                }
                return this;
            }

            public Builder removeRedirect(int i) {
                if (this.redirectBuilder_ == null) {
                    ensureRedirectIsMutable();
                    this.redirect_.remove(i);
                    onChanged();
                } else {
                    this.redirectBuilder_.remove(i);
                }
                return this;
            }

            public Builder getRedirectBuilder(int i) {
                return (Builder) getRedirectFieldBuilder().getBuilder(i);
            }

            public MnsIpInfoOrBuilder getRedirectOrBuilder(int i) {
                if (this.redirectBuilder_ == null) {
                    return (MnsIpInfoOrBuilder) this.redirect_.get(i);
                }
                return (MnsIpInfoOrBuilder) this.redirectBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends MnsIpInfoOrBuilder> getRedirectOrBuilderList() {
                if (this.redirectBuilder_ != null) {
                    return this.redirectBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.redirect_);
            }

            public Builder addRedirectBuilder() {
                return (Builder) getRedirectFieldBuilder().addBuilder(MnsIpInfo.getDefaultInstance());
            }

            public Builder addRedirectBuilder(int i) {
                return (Builder) getRedirectFieldBuilder().addBuilder(i, MnsIpInfo.getDefaultInstance());
            }

            public List<Builder> getRedirectBuilderList() {
                return getRedirectFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<MnsIpInfo, Builder, MnsIpInfoOrBuilder> getRedirectFieldBuilder() {
                if (this.redirectBuilder_ == null) {
                    this.redirectBuilder_ = new RepeatedFieldBuilder<>(this.redirect_, (this.bitField0_ & 2) == 2, getParentForChildren(), isClean());
                    this.redirect_ = null;
                }
                return this.redirectBuilder_;
            }

            public boolean hasUprinciple() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getUprinciple() {
                return this.uprinciple_;
            }

            public Builder setUprinciple(int i) {
                this.bitField0_ |= 4;
                this.uprinciple_ = i;
                onChanged();
                return this;
            }

            public Builder clearUprinciple() {
                this.bitField0_ &= -5;
                this.uprinciple_ = 0;
                onChanged();
                return this;
            }

            public boolean hasClientinfo() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getClientinfo() {
                Object obj = this.clientinfo_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.clientinfo_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getClientinfoBytes() {
                Object obj = this.clientinfo_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.clientinfo_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setClientinfo(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.clientinfo_ = str;
                onChanged();
                return this;
            }

            public Builder clearClientinfo() {
                this.bitField0_ &= -9;
                this.clientinfo_ = MnsCmdHandShakeRsp.getDefaultInstance().getClientinfo();
                onChanged();
                return this;
            }

            public Builder setClientinfoBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.clientinfo_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasCrossOpr() {
                return (this.bitField0_ & 16) == 16;
            }

            public int getCrossOpr() {
                return this.crossOpr_;
            }

            public Builder setCrossOpr(int i) {
                this.bitField0_ |= 16;
                this.crossOpr_ = i;
                onChanged();
                return this;
            }

            public Builder clearCrossOpr() {
                this.bitField0_ &= -17;
                this.crossOpr_ = 0;
                onChanged();
                return this;
            }
        }

        private MnsCmdHandShakeRsp(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsCmdHandShakeRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsCmdHandShakeRsp getDefaultInstance() {
            return defaultInstance;
        }

        public MnsCmdHandShakeRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsCmdHandShakeRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            boolean z = false;
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            com.google.protobuf.UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.type_ = codedInputStream.readInt32();
                            break;
                        case 18:
                            if (!(z2 & true)) {
                                this.redirect_ = new ArrayList();
                                z2 |= true;
                            }
                            this.redirect_.add(codedInputStream.readMessage(MnsIpInfo.PARSER, extensionRegistryLite));
                            break;
                        case 24:
                            this.bitField0_ |= 2;
                            this.uprinciple_ = codedInputStream.readInt32();
                            break;
                        case 34:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.clientinfo_ = readBytes;
                            break;
                        case 40:
                            this.bitField0_ |= 8;
                            this.crossOpr_ = codedInputStream.readInt32();
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
                    if (z2 & true) {
                        this.redirect_ = Collections.unmodifiableList(this.redirect_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.redirect_ = Collections.unmodifiableList(this.redirect_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHandShakeRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdHandShakeRsp.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsCmdHandShakeRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasType() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getType() {
            return this.type_;
        }

        public List<MnsIpInfo> getRedirectList() {
            return this.redirect_;
        }

        public List<? extends MnsIpInfoOrBuilder> getRedirectOrBuilderList() {
            return this.redirect_;
        }

        public int getRedirectCount() {
            return this.redirect_.size();
        }

        public MnsIpInfo getRedirect(int i) {
            return (MnsIpInfo) this.redirect_.get(i);
        }

        public MnsIpInfoOrBuilder getRedirectOrBuilder(int i) {
            return (MnsIpInfoOrBuilder) this.redirect_.get(i);
        }

        public boolean hasUprinciple() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getUprinciple() {
            return this.uprinciple_;
        }

        public boolean hasClientinfo() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getClientinfo() {
            Object obj = this.clientinfo_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.clientinfo_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getClientinfoBytes() {
            Object obj = this.clientinfo_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.clientinfo_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasCrossOpr() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getCrossOpr() {
            return this.crossOpr_;
        }

        private void initFields() {
            this.type_ = 0;
            this.redirect_ = Collections.emptyList();
            this.uprinciple_ = 0;
            this.clientinfo_ = "";
            this.crossOpr_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasType()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt32(1, this.type_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.redirect_.size()) {
                    break;
                }
                codedOutputStream.writeMessage(2, (MessageLite) this.redirect_.get(i2));
                i = i2 + 1;
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(3, this.uprinciple_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(4, getClientinfoBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeInt32(5, this.crossOpr_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i;
            int i2;
            int i3 = 0;
            int i4 = this.memoizedSerializedSize;
            if (i4 != -1) {
                return i4;
            }
            if ((this.bitField0_ & 1) == 1) {
                i = CodedOutputStream.computeInt32Size(1, this.type_) + 0;
            } else {
                i = 0;
            }
            while (true) {
                i2 = i;
                if (i3 >= this.redirect_.size()) {
                    break;
                }
                i = CodedOutputStream.computeMessageSize(2, (MessageLite) this.redirect_.get(i3)) + i2;
                i3++;
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeInt32Size(3, this.uprinciple_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(4, getClientinfoBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeInt32Size(5, this.crossOpr_);
            }
            int serializedSize = getUnknownFields().getSerializedSize() + i2;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsCmdHandShakeRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsCmdHandShakeRsp) PARSER.parseFrom(byteString);
        }

        public static MnsCmdHandShakeRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdHandShakeRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsCmdHandShakeRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsCmdHandShakeRsp) PARSER.parseFrom(bArr);
        }

        public static MnsCmdHandShakeRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdHandShakeRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsCmdHandShakeRsp parseFrom(InputStream inputStream) throws IOException {
            return (MnsCmdHandShakeRsp) PARSER.parseFrom(inputStream);
        }

        public static MnsCmdHandShakeRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdHandShakeRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdHandShakeRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsCmdHandShakeRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsCmdHandShakeRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdHandShakeRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdHandShakeRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsCmdHandShakeRsp) PARSER.parseFrom(codedInputStream);
        }

        public static MnsCmdHandShakeRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdHandShakeRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsCmdHandShakeRsp mnsCmdHandShakeRsp) {
            return newBuilder().mergeFrom(mnsCmdHandShakeRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsCmdHandShakeRspOrBuilder extends MessageOrBuilder {
        String getClientinfo();

        ByteString getClientinfoBytes();

        int getCrossOpr();

        MnsIpInfo getRedirect(int i);

        int getRedirectCount();

        List<MnsIpInfo> getRedirectList();

        MnsIpInfoOrBuilder getRedirectOrBuilder(int i);

        List<? extends MnsIpInfoOrBuilder> getRedirectOrBuilderList();

        int getType();

        int getUprinciple();

        boolean hasClientinfo();

        boolean hasCrossOpr();

        boolean hasType();

        boolean hasUprinciple();
    }

    public static final class MnsCmdHeartBeat extends GeneratedMessage implements MnsCmdHeartBeatOrBuilder {
        public static final int IS_FAKE_HB_FIELD_NUMBER = 4;
        public static final int MGR_INFO_FIELD_NUMBER = 2;
        public static Parser<MnsCmdHeartBeat> PARSER = new AbstractParser<MnsCmdHeartBeat>() {
            public MnsCmdHeartBeat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsCmdHeartBeat(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PTIME_FIELD_NUMBER = 1;
        public static final int SUID_FIELD_NUMBER = 3;
        public static final int TIMESTAMP_FIELD_NUMBER = 5;
        private static final MnsCmdHeartBeat defaultInstance = new MnsCmdHeartBeat(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public boolean isFakeHb_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public SdkConnMgrInfo mgrInfo_;
        /* access modifiers changed from: private */
        public int ptime_;
        /* access modifiers changed from: private */
        public Object sUID_;
        /* access modifiers changed from: private */
        public long timeStamp_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsCmdHeartBeatOrBuilder {
            private int bitField0_;
            private boolean isFakeHb_;
            private SingleFieldBuilder<SdkConnMgrInfo, Builder, SdkConnMgrInfoOrBuilder> mgrInfoBuilder_;
            private SdkConnMgrInfo mgrInfo_;
            private int ptime_;
            private Object sUID_;
            private long timeStamp_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdHeartBeat.class, Builder.class);
            }

            private Builder() {
                this.mgrInfo_ = SdkConnMgrInfo.getDefaultInstance();
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.mgrInfo_ = SdkConnMgrInfo.getDefaultInstance();
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsCmdHeartBeat.alwaysUseFieldBuilders) {
                    getMgrInfoFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.ptime_ = 0;
                this.bitField0_ &= -2;
                if (this.mgrInfoBuilder_ == null) {
                    this.mgrInfo_ = SdkConnMgrInfo.getDefaultInstance();
                } else {
                    this.mgrInfoBuilder_.clear();
                }
                this.bitField0_ &= -3;
                this.sUID_ = "";
                this.bitField0_ &= -5;
                this.isFakeHb_ = false;
                this.bitField0_ &= -9;
                this.timeStamp_ = 0;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_descriptor;
            }

            public MnsCmdHeartBeat getDefaultInstanceForType() {
                return MnsCmdHeartBeat.getDefaultInstance();
            }

            public MnsCmdHeartBeat build() {
                MnsCmdHeartBeat buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsCmdHeartBeat buildPartial() {
                int i;
                int i2 = 1;
                MnsCmdHeartBeat mnsCmdHeartBeat = new MnsCmdHeartBeat((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                mnsCmdHeartBeat.ptime_ = this.ptime_;
                if ((i3 & 2) == 2) {
                    i = i2 | 2;
                } else {
                    i = i2;
                }
                if (this.mgrInfoBuilder_ == null) {
                    mnsCmdHeartBeat.mgrInfo_ = this.mgrInfo_;
                } else {
                    mnsCmdHeartBeat.mgrInfo_ = (SdkConnMgrInfo) this.mgrInfoBuilder_.build();
                }
                if ((i3 & 4) == 4) {
                    i |= 4;
                }
                mnsCmdHeartBeat.sUID_ = this.sUID_;
                if ((i3 & 8) == 8) {
                    i |= 8;
                }
                mnsCmdHeartBeat.isFakeHb_ = this.isFakeHb_;
                if ((i3 & 16) == 16) {
                    i |= 16;
                }
                mnsCmdHeartBeat.timeStamp_ = this.timeStamp_;
                mnsCmdHeartBeat.bitField0_ = i;
                onBuilt();
                return mnsCmdHeartBeat;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsCmdHeartBeat) {
                    return mergeFrom((MnsCmdHeartBeat) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsCmdHeartBeat mnsCmdHeartBeat) {
                if (mnsCmdHeartBeat != MnsCmdHeartBeat.getDefaultInstance()) {
                    if (mnsCmdHeartBeat.hasPtime()) {
                        setPtime(mnsCmdHeartBeat.getPtime());
                    }
                    if (mnsCmdHeartBeat.hasMgrInfo()) {
                        mergeMgrInfo(mnsCmdHeartBeat.getMgrInfo());
                    }
                    if (mnsCmdHeartBeat.hasSUID()) {
                        this.bitField0_ |= 4;
                        this.sUID_ = mnsCmdHeartBeat.sUID_;
                        onChanged();
                    }
                    if (mnsCmdHeartBeat.hasIsFakeHb()) {
                        setIsFakeHb(mnsCmdHeartBeat.getIsFakeHb());
                    }
                    if (mnsCmdHeartBeat.hasTimeStamp()) {
                        setTimeStamp(mnsCmdHeartBeat.getTimeStamp());
                    }
                    mergeUnknownFields(mnsCmdHeartBeat.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsCmdHeartBeat mnsCmdHeartBeat;
                MnsCmdHeartBeat mnsCmdHeartBeat2;
                try {
                    MnsCmdHeartBeat mnsCmdHeartBeat3 = (MnsCmdHeartBeat) MnsCmdHeartBeat.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsCmdHeartBeat3 != null) {
                        mergeFrom(mnsCmdHeartBeat3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsCmdHeartBeat2 = (MnsCmdHeartBeat) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsCmdHeartBeat = mnsCmdHeartBeat2;
                    th = th2;
                }
                if (mnsCmdHeartBeat != null) {
                    mergeFrom(mnsCmdHeartBeat);
                }
                throw th;
            }

            public boolean hasPtime() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getPtime() {
                return this.ptime_;
            }

            public Builder setPtime(int i) {
                this.bitField0_ |= 1;
                this.ptime_ = i;
                onChanged();
                return this;
            }

            public Builder clearPtime() {
                this.bitField0_ &= -2;
                this.ptime_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMgrInfo() {
                return (this.bitField0_ & 2) == 2;
            }

            public SdkConnMgrInfo getMgrInfo() {
                if (this.mgrInfoBuilder_ == null) {
                    return this.mgrInfo_;
                }
                return (SdkConnMgrInfo) this.mgrInfoBuilder_.getMessage();
            }

            public Builder setMgrInfo(SdkConnMgrInfo sdkConnMgrInfo) {
                if (this.mgrInfoBuilder_ != null) {
                    this.mgrInfoBuilder_.setMessage(sdkConnMgrInfo);
                } else if (sdkConnMgrInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.mgrInfo_ = sdkConnMgrInfo;
                    onChanged();
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setMgrInfo(Builder builder) {
                if (this.mgrInfoBuilder_ == null) {
                    this.mgrInfo_ = builder.build();
                    onChanged();
                } else {
                    this.mgrInfoBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder mergeMgrInfo(SdkConnMgrInfo sdkConnMgrInfo) {
                if (this.mgrInfoBuilder_ == null) {
                    if ((this.bitField0_ & 2) != 2 || this.mgrInfo_ == SdkConnMgrInfo.getDefaultInstance()) {
                        this.mgrInfo_ = sdkConnMgrInfo;
                    } else {
                        this.mgrInfo_ = SdkConnMgrInfo.newBuilder(this.mgrInfo_).mergeFrom(sdkConnMgrInfo).buildPartial();
                    }
                    onChanged();
                } else {
                    this.mgrInfoBuilder_.mergeFrom(sdkConnMgrInfo);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder clearMgrInfo() {
                if (this.mgrInfoBuilder_ == null) {
                    this.mgrInfo_ = SdkConnMgrInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.mgrInfoBuilder_.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            public Builder getMgrInfoBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return (Builder) getMgrInfoFieldBuilder().getBuilder();
            }

            public SdkConnMgrInfoOrBuilder getMgrInfoOrBuilder() {
                if (this.mgrInfoBuilder_ != null) {
                    return (SdkConnMgrInfoOrBuilder) this.mgrInfoBuilder_.getMessageOrBuilder();
                }
                return this.mgrInfo_;
            }

            private SingleFieldBuilder<SdkConnMgrInfo, Builder, SdkConnMgrInfoOrBuilder> getMgrInfoFieldBuilder() {
                if (this.mgrInfoBuilder_ == null) {
                    this.mgrInfoBuilder_ = new SingleFieldBuilder<>(getMgrInfo(), getParentForChildren(), isClean());
                    this.mgrInfo_ = null;
                }
                return this.mgrInfoBuilder_;
            }

            public boolean hasSUID() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getSUID() {
                Object obj = this.sUID_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.sUID_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getSUIDBytes() {
                Object obj = this.sUID_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sUID_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setSUID(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.sUID_ = str;
                onChanged();
                return this;
            }

            public Builder clearSUID() {
                this.bitField0_ &= -5;
                this.sUID_ = MnsCmdHeartBeat.getDefaultInstance().getSUID();
                onChanged();
                return this;
            }

            public Builder setSUIDBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.sUID_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasIsFakeHb() {
                return (this.bitField0_ & 8) == 8;
            }

            public boolean getIsFakeHb() {
                return this.isFakeHb_;
            }

            public Builder setIsFakeHb(boolean z) {
                this.bitField0_ |= 8;
                this.isFakeHb_ = z;
                onChanged();
                return this;
            }

            public Builder clearIsFakeHb() {
                this.bitField0_ &= -9;
                this.isFakeHb_ = false;
                onChanged();
                return this;
            }

            public boolean hasTimeStamp() {
                return (this.bitField0_ & 16) == 16;
            }

            public long getTimeStamp() {
                return this.timeStamp_;
            }

            public Builder setTimeStamp(long j) {
                this.bitField0_ |= 16;
                this.timeStamp_ = j;
                onChanged();
                return this;
            }

            public Builder clearTimeStamp() {
                this.bitField0_ &= -17;
                this.timeStamp_ = 0;
                onChanged();
                return this;
            }
        }

        private MnsCmdHeartBeat(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsCmdHeartBeat(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsCmdHeartBeat getDefaultInstance() {
            return defaultInstance;
        }

        public MnsCmdHeartBeat getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsCmdHeartBeat(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            boolean z;
            Builder builder;
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            com.google.protobuf.UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            continue;
                        case 8:
                            this.bitField0_ |= 1;
                            this.ptime_ = codedInputStream.readUInt32();
                            z = z2;
                            continue;
                        case 18:
                            if ((this.bitField0_ & 2) == 2) {
                                builder = this.mgrInfo_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.mgrInfo_ = (SdkConnMgrInfo) codedInputStream.readMessage(SdkConnMgrInfo.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.mgrInfo_);
                                this.mgrInfo_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 2;
                            z = z2;
                            continue;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.sUID_ = readBytes;
                            z = z2;
                            continue;
                        case 32:
                            this.bitField0_ |= 8;
                            this.isFakeHb_ = codedInputStream.readBool();
                            z = z2;
                            continue;
                        case 40:
                            this.bitField0_ |= 16;
                            this.timeStamp_ = codedInputStream.readUInt64();
                            break;
                        default:
                            if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                z = true;
                                continue;
                            }
                            break;
                    }
                    z = z2;
                    z2 = z;
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeat_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdHeartBeat.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsCmdHeartBeat> getParserForType() {
            return PARSER;
        }

        public boolean hasPtime() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getPtime() {
            return this.ptime_;
        }

        public boolean hasMgrInfo() {
            return (this.bitField0_ & 2) == 2;
        }

        public SdkConnMgrInfo getMgrInfo() {
            return this.mgrInfo_;
        }

        public SdkConnMgrInfoOrBuilder getMgrInfoOrBuilder() {
            return this.mgrInfo_;
        }

        public boolean hasSUID() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getSUID() {
            Object obj = this.sUID_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sUID_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSUIDBytes() {
            Object obj = this.sUID_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sUID_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasIsFakeHb() {
            return (this.bitField0_ & 8) == 8;
        }

        public boolean getIsFakeHb() {
            return this.isFakeHb_;
        }

        public boolean hasTimeStamp() {
            return (this.bitField0_ & 16) == 16;
        }

        public long getTimeStamp() {
            return this.timeStamp_;
        }

        private void initFields() {
            this.ptime_ = 0;
            this.mgrInfo_ = SdkConnMgrInfo.getDefaultInstance();
            this.sUID_ = "";
            this.isFakeHb_ = false;
            this.timeStamp_ = 0;
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
                codedOutputStream.writeUInt32(1, this.ptime_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(2, this.mgrInfo_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getSUIDBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBool(4, this.isFakeHb_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeUInt64(5, this.timeStamp_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.ptime_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeMessageSize(2, this.mgrInfo_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getSUIDBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBoolSize(4, this.isFakeHb_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeUInt64Size(5, this.timeStamp_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsCmdHeartBeat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsCmdHeartBeat) PARSER.parseFrom(byteString);
        }

        public static MnsCmdHeartBeat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdHeartBeat) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsCmdHeartBeat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsCmdHeartBeat) PARSER.parseFrom(bArr);
        }

        public static MnsCmdHeartBeat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdHeartBeat) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsCmdHeartBeat parseFrom(InputStream inputStream) throws IOException {
            return (MnsCmdHeartBeat) PARSER.parseFrom(inputStream);
        }

        public static MnsCmdHeartBeat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdHeartBeat) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdHeartBeat parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsCmdHeartBeat) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsCmdHeartBeat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdHeartBeat) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdHeartBeat parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsCmdHeartBeat) PARSER.parseFrom(codedInputStream);
        }

        public static MnsCmdHeartBeat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdHeartBeat) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsCmdHeartBeat mnsCmdHeartBeat) {
            return newBuilder().mergeFrom(mnsCmdHeartBeat);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsCmdHeartBeatOrBuilder extends MessageOrBuilder {
        boolean getIsFakeHb();

        SdkConnMgrInfo getMgrInfo();

        SdkConnMgrInfoOrBuilder getMgrInfoOrBuilder();

        int getPtime();

        String getSUID();

        ByteString getSUIDBytes();

        long getTimeStamp();

        boolean hasIsFakeHb();

        boolean hasMgrInfo();

        boolean hasPtime();

        boolean hasSUID();

        boolean hasTimeStamp();
    }

    public static final class MnsCmdHeartBeatRsp extends GeneratedMessage implements MnsCmdHeartBeatRspOrBuilder {
        public static final int CONFIG_FIELD_NUMBER = 2;
        public static final int ENGINERATIO_FIELD_NUMBER = 3;
        public static final int JSONCONFIG_FIELD_NUMBER = 4;
        public static Parser<MnsCmdHeartBeatRsp> PARSER = new AbstractParser<MnsCmdHeartBeatRsp>() {
            public MnsCmdHeartBeatRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsCmdHeartBeatRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TIMESTAMP_FIELD_NUMBER = 1;
        private static final MnsCmdHeartBeatRsp defaultInstance = new MnsCmdHeartBeatRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public MiLinkConfig config_;
        /* access modifiers changed from: private */
        public float engineratio_;
        /* access modifiers changed from: private */
        public Object jsonconfig_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long timeStamp_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsCmdHeartBeatRspOrBuilder {
            private int bitField0_;
            private SingleFieldBuilder<MiLinkConfig, Builder, MiLinkConfigOrBuilder> configBuilder_;
            private MiLinkConfig config_;
            private float engineratio_;
            private Object jsonconfig_;
            private long timeStamp_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdHeartBeatRsp.class, Builder.class);
            }

            private Builder() {
                this.config_ = MiLinkConfig.getDefaultInstance();
                this.jsonconfig_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.config_ = MiLinkConfig.getDefaultInstance();
                this.jsonconfig_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsCmdHeartBeatRsp.alwaysUseFieldBuilders) {
                    getConfigFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.timeStamp_ = 0;
                this.bitField0_ &= -2;
                if (this.configBuilder_ == null) {
                    this.config_ = MiLinkConfig.getDefaultInstance();
                } else {
                    this.configBuilder_.clear();
                }
                this.bitField0_ &= -3;
                this.engineratio_ = 0.0f;
                this.bitField0_ &= -5;
                this.jsonconfig_ = "";
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_descriptor;
            }

            public MnsCmdHeartBeatRsp getDefaultInstanceForType() {
                return MnsCmdHeartBeatRsp.getDefaultInstance();
            }

            public MnsCmdHeartBeatRsp build() {
                MnsCmdHeartBeatRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsCmdHeartBeatRsp buildPartial() {
                int i;
                int i2 = 1;
                MnsCmdHeartBeatRsp mnsCmdHeartBeatRsp = new MnsCmdHeartBeatRsp((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                mnsCmdHeartBeatRsp.timeStamp_ = this.timeStamp_;
                if ((i3 & 2) == 2) {
                    i = i2 | 2;
                } else {
                    i = i2;
                }
                if (this.configBuilder_ == null) {
                    mnsCmdHeartBeatRsp.config_ = this.config_;
                } else {
                    mnsCmdHeartBeatRsp.config_ = (MiLinkConfig) this.configBuilder_.build();
                }
                if ((i3 & 4) == 4) {
                    i |= 4;
                }
                mnsCmdHeartBeatRsp.engineratio_ = this.engineratio_;
                if ((i3 & 8) == 8) {
                    i |= 8;
                }
                mnsCmdHeartBeatRsp.jsonconfig_ = this.jsonconfig_;
                mnsCmdHeartBeatRsp.bitField0_ = i;
                onBuilt();
                return mnsCmdHeartBeatRsp;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsCmdHeartBeatRsp) {
                    return mergeFrom((MnsCmdHeartBeatRsp) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsCmdHeartBeatRsp mnsCmdHeartBeatRsp) {
                if (mnsCmdHeartBeatRsp != MnsCmdHeartBeatRsp.getDefaultInstance()) {
                    if (mnsCmdHeartBeatRsp.hasTimeStamp()) {
                        setTimeStamp(mnsCmdHeartBeatRsp.getTimeStamp());
                    }
                    if (mnsCmdHeartBeatRsp.hasConfig()) {
                        mergeConfig(mnsCmdHeartBeatRsp.getConfig());
                    }
                    if (mnsCmdHeartBeatRsp.hasEngineratio()) {
                        setEngineratio(mnsCmdHeartBeatRsp.getEngineratio());
                    }
                    if (mnsCmdHeartBeatRsp.hasJsonconfig()) {
                        this.bitField0_ |= 8;
                        this.jsonconfig_ = mnsCmdHeartBeatRsp.jsonconfig_;
                        onChanged();
                    }
                    mergeUnknownFields(mnsCmdHeartBeatRsp.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsCmdHeartBeatRsp mnsCmdHeartBeatRsp;
                MnsCmdHeartBeatRsp mnsCmdHeartBeatRsp2;
                try {
                    MnsCmdHeartBeatRsp mnsCmdHeartBeatRsp3 = (MnsCmdHeartBeatRsp) MnsCmdHeartBeatRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsCmdHeartBeatRsp3 != null) {
                        mergeFrom(mnsCmdHeartBeatRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsCmdHeartBeatRsp2 = (MnsCmdHeartBeatRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsCmdHeartBeatRsp = mnsCmdHeartBeatRsp2;
                    th = th2;
                }
                if (mnsCmdHeartBeatRsp != null) {
                    mergeFrom(mnsCmdHeartBeatRsp);
                }
                throw th;
            }

            public boolean hasTimeStamp() {
                return (this.bitField0_ & 1) == 1;
            }

            public long getTimeStamp() {
                return this.timeStamp_;
            }

            public Builder setTimeStamp(long j) {
                this.bitField0_ |= 1;
                this.timeStamp_ = j;
                onChanged();
                return this;
            }

            public Builder clearTimeStamp() {
                this.bitField0_ &= -2;
                this.timeStamp_ = 0;
                onChanged();
                return this;
            }

            public boolean hasConfig() {
                return (this.bitField0_ & 2) == 2;
            }

            public MiLinkConfig getConfig() {
                if (this.configBuilder_ == null) {
                    return this.config_;
                }
                return (MiLinkConfig) this.configBuilder_.getMessage();
            }

            public Builder setConfig(MiLinkConfig miLinkConfig) {
                if (this.configBuilder_ != null) {
                    this.configBuilder_.setMessage(miLinkConfig);
                } else if (miLinkConfig == null) {
                    throw new NullPointerException();
                } else {
                    this.config_ = miLinkConfig;
                    onChanged();
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setConfig(Builder builder) {
                if (this.configBuilder_ == null) {
                    this.config_ = builder.build();
                    onChanged();
                } else {
                    this.configBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder mergeConfig(MiLinkConfig miLinkConfig) {
                if (this.configBuilder_ == null) {
                    if ((this.bitField0_ & 2) != 2 || this.config_ == MiLinkConfig.getDefaultInstance()) {
                        this.config_ = miLinkConfig;
                    } else {
                        this.config_ = MiLinkConfig.newBuilder(this.config_).mergeFrom(miLinkConfig).buildPartial();
                    }
                    onChanged();
                } else {
                    this.configBuilder_.mergeFrom(miLinkConfig);
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder clearConfig() {
                if (this.configBuilder_ == null) {
                    this.config_ = MiLinkConfig.getDefaultInstance();
                    onChanged();
                } else {
                    this.configBuilder_.clear();
                }
                this.bitField0_ &= -3;
                return this;
            }

            public Builder getConfigBuilder() {
                this.bitField0_ |= 2;
                onChanged();
                return (Builder) getConfigFieldBuilder().getBuilder();
            }

            public MiLinkConfigOrBuilder getConfigOrBuilder() {
                if (this.configBuilder_ != null) {
                    return (MiLinkConfigOrBuilder) this.configBuilder_.getMessageOrBuilder();
                }
                return this.config_;
            }

            private SingleFieldBuilder<MiLinkConfig, Builder, MiLinkConfigOrBuilder> getConfigFieldBuilder() {
                if (this.configBuilder_ == null) {
                    this.configBuilder_ = new SingleFieldBuilder<>(getConfig(), getParentForChildren(), isClean());
                    this.config_ = null;
                }
                return this.configBuilder_;
            }

            public boolean hasEngineratio() {
                return (this.bitField0_ & 4) == 4;
            }

            public float getEngineratio() {
                return this.engineratio_;
            }

            public Builder setEngineratio(float f) {
                this.bitField0_ |= 4;
                this.engineratio_ = f;
                onChanged();
                return this;
            }

            public Builder clearEngineratio() {
                this.bitField0_ &= -5;
                this.engineratio_ = 0.0f;
                onChanged();
                return this;
            }

            public boolean hasJsonconfig() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getJsonconfig() {
                Object obj = this.jsonconfig_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.jsonconfig_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getJsonconfigBytes() {
                Object obj = this.jsonconfig_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.jsonconfig_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setJsonconfig(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.jsonconfig_ = str;
                onChanged();
                return this;
            }

            public Builder clearJsonconfig() {
                this.bitField0_ &= -9;
                this.jsonconfig_ = MnsCmdHeartBeatRsp.getDefaultInstance().getJsonconfig();
                onChanged();
                return this;
            }

            public Builder setJsonconfigBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.jsonconfig_ = byteString;
                onChanged();
                return this;
            }
        }

        private MnsCmdHeartBeatRsp(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsCmdHeartBeatRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsCmdHeartBeatRsp getDefaultInstance() {
            return defaultInstance;
        }

        public MnsCmdHeartBeatRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsCmdHeartBeatRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            boolean z;
            Builder builder;
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            initFields();
            com.google.protobuf.UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.bitField0_ |= 1;
                            this.timeStamp_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 18:
                            if ((this.bitField0_ & 2) == 2) {
                                builder = this.config_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.config_ = (MiLinkConfig) codedInputStream.readMessage(MiLinkConfig.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.config_);
                                this.config_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 2;
                            z = z2;
                            break;
                        case 29:
                            this.bitField0_ |= 4;
                            this.engineratio_ = codedInputStream.readFloat();
                            z = z2;
                            break;
                        case 34:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.jsonconfig_ = readBytes;
                            z = z2;
                            break;
                        default:
                            if (parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                z = z2;
                                break;
                            } else {
                                z = true;
                                break;
                            }
                    }
                    z2 = z;
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdHeartBeatRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdHeartBeatRsp.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsCmdHeartBeatRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasTimeStamp() {
            return (this.bitField0_ & 1) == 1;
        }

        public long getTimeStamp() {
            return this.timeStamp_;
        }

        public boolean hasConfig() {
            return (this.bitField0_ & 2) == 2;
        }

        public MiLinkConfig getConfig() {
            return this.config_;
        }

        public MiLinkConfigOrBuilder getConfigOrBuilder() {
            return this.config_;
        }

        public boolean hasEngineratio() {
            return (this.bitField0_ & 4) == 4;
        }

        public float getEngineratio() {
            return this.engineratio_;
        }

        public boolean hasJsonconfig() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getJsonconfig() {
            Object obj = this.jsonconfig_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.jsonconfig_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getJsonconfigBytes() {
            Object obj = this.jsonconfig_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.jsonconfig_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.timeStamp_ = 0;
            this.config_ = MiLinkConfig.getDefaultInstance();
            this.engineratio_ = 0.0f;
            this.jsonconfig_ = "";
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
                codedOutputStream.writeUInt64(1, this.timeStamp_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(2, this.config_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeFloat(3, this.engineratio_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getJsonconfigBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt64Size(1, this.timeStamp_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeMessageSize(2, this.config_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeFloatSize(3, this.engineratio_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getJsonconfigBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsCmdHeartBeatRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsCmdHeartBeatRsp) PARSER.parseFrom(byteString);
        }

        public static MnsCmdHeartBeatRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdHeartBeatRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsCmdHeartBeatRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsCmdHeartBeatRsp) PARSER.parseFrom(bArr);
        }

        public static MnsCmdHeartBeatRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdHeartBeatRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsCmdHeartBeatRsp parseFrom(InputStream inputStream) throws IOException {
            return (MnsCmdHeartBeatRsp) PARSER.parseFrom(inputStream);
        }

        public static MnsCmdHeartBeatRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdHeartBeatRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdHeartBeatRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsCmdHeartBeatRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsCmdHeartBeatRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdHeartBeatRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdHeartBeatRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsCmdHeartBeatRsp) PARSER.parseFrom(codedInputStream);
        }

        public static MnsCmdHeartBeatRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdHeartBeatRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsCmdHeartBeatRsp mnsCmdHeartBeatRsp) {
            return newBuilder().mergeFrom(mnsCmdHeartBeatRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsCmdHeartBeatRspOrBuilder extends MessageOrBuilder {
        MiLinkConfig getConfig();

        MiLinkConfigOrBuilder getConfigOrBuilder();

        float getEngineratio();

        String getJsonconfig();

        ByteString getJsonconfigBytes();

        long getTimeStamp();

        boolean hasConfig();

        boolean hasEngineratio();

        boolean hasJsonconfig();

        boolean hasTimeStamp();
    }

    public static final class MnsCmdLoginOff extends GeneratedMessage implements MnsCmdLoginOffOrBuilder {
        public static Parser<MnsCmdLoginOff> PARSER = new AbstractParser<MnsCmdLoginOff>() {
            public MnsCmdLoginOff parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsCmdLoginOff(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SUID_FIELD_NUMBER = 1;
        private static final MnsCmdLoginOff defaultInstance = new MnsCmdLoginOff(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object sUID_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsCmdLoginOffOrBuilder {
            private int bitField0_;
            private Object sUID_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdLoginOff.class, Builder.class);
            }

            private Builder() {
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsCmdLoginOff.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.sUID_ = "";
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_descriptor;
            }

            public MnsCmdLoginOff getDefaultInstanceForType() {
                return MnsCmdLoginOff.getDefaultInstance();
            }

            public MnsCmdLoginOff build() {
                MnsCmdLoginOff buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsCmdLoginOff buildPartial() {
                int i = 1;
                MnsCmdLoginOff mnsCmdLoginOff = new MnsCmdLoginOff((com.google.protobuf.GeneratedMessage.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                mnsCmdLoginOff.sUID_ = this.sUID_;
                mnsCmdLoginOff.bitField0_ = i;
                onBuilt();
                return mnsCmdLoginOff;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsCmdLoginOff) {
                    return mergeFrom((MnsCmdLoginOff) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsCmdLoginOff mnsCmdLoginOff) {
                if (mnsCmdLoginOff != MnsCmdLoginOff.getDefaultInstance()) {
                    if (mnsCmdLoginOff.hasSUID()) {
                        this.bitField0_ |= 1;
                        this.sUID_ = mnsCmdLoginOff.sUID_;
                        onChanged();
                    }
                    mergeUnknownFields(mnsCmdLoginOff.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsCmdLoginOff mnsCmdLoginOff;
                MnsCmdLoginOff mnsCmdLoginOff2;
                try {
                    MnsCmdLoginOff mnsCmdLoginOff3 = (MnsCmdLoginOff) MnsCmdLoginOff.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsCmdLoginOff3 != null) {
                        mergeFrom(mnsCmdLoginOff3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsCmdLoginOff2 = (MnsCmdLoginOff) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsCmdLoginOff = mnsCmdLoginOff2;
                    th = th2;
                }
                if (mnsCmdLoginOff != null) {
                    mergeFrom(mnsCmdLoginOff);
                }
                throw th;
            }

            public boolean hasSUID() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getSUID() {
                Object obj = this.sUID_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.sUID_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getSUIDBytes() {
                Object obj = this.sUID_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sUID_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setSUID(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.sUID_ = str;
                onChanged();
                return this;
            }

            public Builder clearSUID() {
                this.bitField0_ &= -2;
                this.sUID_ = MnsCmdLoginOff.getDefaultInstance().getSUID();
                onChanged();
                return this;
            }

            public Builder setSUIDBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.sUID_ = byteString;
                onChanged();
                return this;
            }
        }

        private MnsCmdLoginOff(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsCmdLoginOff(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsCmdLoginOff getDefaultInstance() {
            return defaultInstance;
        }

        public MnsCmdLoginOff getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsCmdLoginOff(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 10:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 1;
                            this.sUID_ = readBytes;
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginOff_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdLoginOff.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsCmdLoginOff> getParserForType() {
            return PARSER;
        }

        public boolean hasSUID() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getSUID() {
            Object obj = this.sUID_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sUID_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSUIDBytes() {
            Object obj = this.sUID_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sUID_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.sUID_ = "";
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
                codedOutputStream.writeBytes(1, getSUIDBytes());
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getSUIDBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsCmdLoginOff parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsCmdLoginOff) PARSER.parseFrom(byteString);
        }

        public static MnsCmdLoginOff parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdLoginOff) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsCmdLoginOff parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsCmdLoginOff) PARSER.parseFrom(bArr);
        }

        public static MnsCmdLoginOff parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdLoginOff) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsCmdLoginOff parseFrom(InputStream inputStream) throws IOException {
            return (MnsCmdLoginOff) PARSER.parseFrom(inputStream);
        }

        public static MnsCmdLoginOff parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdLoginOff) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdLoginOff parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsCmdLoginOff) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsCmdLoginOff parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdLoginOff) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdLoginOff parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsCmdLoginOff) PARSER.parseFrom(codedInputStream);
        }

        public static MnsCmdLoginOff parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdLoginOff) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsCmdLoginOff mnsCmdLoginOff) {
            return newBuilder().mergeFrom(mnsCmdLoginOff);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsCmdLoginOffOrBuilder extends MessageOrBuilder {
        String getSUID();

        ByteString getSUIDBytes();

        boolean hasSUID();
    }

    public static final class MnsCmdLoginReq extends GeneratedMessage implements MnsCmdLoginReqOrBuilder {
        public static final int FLAG_FIELD_NUMBER = 1;
        public static Parser<MnsCmdLoginReq> PARSER = new AbstractParser<MnsCmdLoginReq>() {
            public MnsCmdLoginReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsCmdLoginReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SUID_FIELD_NUMBER = 2;
        private static final MnsCmdLoginReq defaultInstance = new MnsCmdLoginReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int flag_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object sUID_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsCmdLoginReqOrBuilder {
            private int bitField0_;
            private int flag_;
            private Object sUID_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdLoginReq.class, Builder.class);
            }

            private Builder() {
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsCmdLoginReq.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.flag_ = 0;
                this.bitField0_ &= -2;
                this.sUID_ = "";
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_descriptor;
            }

            public MnsCmdLoginReq getDefaultInstanceForType() {
                return MnsCmdLoginReq.getDefaultInstance();
            }

            public MnsCmdLoginReq build() {
                MnsCmdLoginReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsCmdLoginReq buildPartial() {
                int i = 1;
                MnsCmdLoginReq mnsCmdLoginReq = new MnsCmdLoginReq((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                mnsCmdLoginReq.flag_ = this.flag_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                mnsCmdLoginReq.sUID_ = this.sUID_;
                mnsCmdLoginReq.bitField0_ = i;
                onBuilt();
                return mnsCmdLoginReq;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsCmdLoginReq) {
                    return mergeFrom((MnsCmdLoginReq) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsCmdLoginReq mnsCmdLoginReq) {
                if (mnsCmdLoginReq != MnsCmdLoginReq.getDefaultInstance()) {
                    if (mnsCmdLoginReq.hasFlag()) {
                        setFlag(mnsCmdLoginReq.getFlag());
                    }
                    if (mnsCmdLoginReq.hasSUID()) {
                        this.bitField0_ |= 2;
                        this.sUID_ = mnsCmdLoginReq.sUID_;
                        onChanged();
                    }
                    mergeUnknownFields(mnsCmdLoginReq.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsCmdLoginReq mnsCmdLoginReq;
                MnsCmdLoginReq mnsCmdLoginReq2;
                try {
                    MnsCmdLoginReq mnsCmdLoginReq3 = (MnsCmdLoginReq) MnsCmdLoginReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsCmdLoginReq3 != null) {
                        mergeFrom(mnsCmdLoginReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsCmdLoginReq2 = (MnsCmdLoginReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsCmdLoginReq = mnsCmdLoginReq2;
                    th = th2;
                }
                if (mnsCmdLoginReq != null) {
                    mergeFrom(mnsCmdLoginReq);
                }
                throw th;
            }

            public boolean hasFlag() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getFlag() {
                return this.flag_;
            }

            public Builder setFlag(int i) {
                this.bitField0_ |= 1;
                this.flag_ = i;
                onChanged();
                return this;
            }

            public Builder clearFlag() {
                this.bitField0_ &= -2;
                this.flag_ = 0;
                onChanged();
                return this;
            }

            public boolean hasSUID() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getSUID() {
                Object obj = this.sUID_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.sUID_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getSUIDBytes() {
                Object obj = this.sUID_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sUID_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setSUID(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.sUID_ = str;
                onChanged();
                return this;
            }

            public Builder clearSUID() {
                this.bitField0_ &= -3;
                this.sUID_ = MnsCmdLoginReq.getDefaultInstance().getSUID();
                onChanged();
                return this;
            }

            public Builder setSUIDBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.sUID_ = byteString;
                onChanged();
                return this;
            }
        }

        private MnsCmdLoginReq(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsCmdLoginReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsCmdLoginReq getDefaultInstance() {
            return defaultInstance;
        }

        public MnsCmdLoginReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsCmdLoginReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 8:
                            this.bitField0_ |= 1;
                            this.flag_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.sUID_ = readBytes;
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdLoginReq.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsCmdLoginReq> getParserForType() {
            return PARSER;
        }

        public boolean hasFlag() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getFlag() {
            return this.flag_;
        }

        public boolean hasSUID() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getSUID() {
            Object obj = this.sUID_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sUID_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSUIDBytes() {
            Object obj = this.sUID_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sUID_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.flag_ = 0;
            this.sUID_ = "";
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
                codedOutputStream.writeUInt32(1, this.flag_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getSUIDBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.flag_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getSUIDBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsCmdLoginReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsCmdLoginReq) PARSER.parseFrom(byteString);
        }

        public static MnsCmdLoginReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdLoginReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsCmdLoginReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsCmdLoginReq) PARSER.parseFrom(bArr);
        }

        public static MnsCmdLoginReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdLoginReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsCmdLoginReq parseFrom(InputStream inputStream) throws IOException {
            return (MnsCmdLoginReq) PARSER.parseFrom(inputStream);
        }

        public static MnsCmdLoginReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdLoginReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdLoginReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsCmdLoginReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsCmdLoginReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdLoginReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdLoginReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsCmdLoginReq) PARSER.parseFrom(codedInputStream);
        }

        public static MnsCmdLoginReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdLoginReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsCmdLoginReq mnsCmdLoginReq) {
            return newBuilder().mergeFrom(mnsCmdLoginReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsCmdLoginReqOrBuilder extends MessageOrBuilder {
        int getFlag();

        String getSUID();

        ByteString getSUIDBytes();

        boolean hasFlag();

        boolean hasSUID();
    }

    public static final class MnsCmdLoginRsp extends GeneratedMessage implements MnsCmdLoginRspOrBuilder {
        public static final int B2_FIELD_NUMBER = 2;
        public static final int GTKEY_B2_FIELD_NUMBER = 1;
        public static Parser<MnsCmdLoginRsp> PARSER = new AbstractParser<MnsCmdLoginRsp>() {
            public MnsCmdLoginRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsCmdLoginRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SUID_FIELD_NUMBER = 3;
        private static final MnsCmdLoginRsp defaultInstance = new MnsCmdLoginRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public ByteString b2_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString gTKEYB2_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object sUID_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsCmdLoginRspOrBuilder {
            private ByteString b2_;
            private int bitField0_;
            private ByteString gTKEYB2_;
            private Object sUID_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdLoginRsp.class, Builder.class);
            }

            private Builder() {
                this.gTKEYB2_ = ByteString.EMPTY;
                this.b2_ = ByteString.EMPTY;
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.gTKEYB2_ = ByteString.EMPTY;
                this.b2_ = ByteString.EMPTY;
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsCmdLoginRsp.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.gTKEYB2_ = ByteString.EMPTY;
                this.bitField0_ &= -2;
                this.b2_ = ByteString.EMPTY;
                this.bitField0_ &= -3;
                this.sUID_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_descriptor;
            }

            public MnsCmdLoginRsp getDefaultInstanceForType() {
                return MnsCmdLoginRsp.getDefaultInstance();
            }

            public MnsCmdLoginRsp build() {
                MnsCmdLoginRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsCmdLoginRsp buildPartial() {
                int i = 1;
                MnsCmdLoginRsp mnsCmdLoginRsp = new MnsCmdLoginRsp((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                mnsCmdLoginRsp.gTKEYB2_ = this.gTKEYB2_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                mnsCmdLoginRsp.b2_ = this.b2_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                mnsCmdLoginRsp.sUID_ = this.sUID_;
                mnsCmdLoginRsp.bitField0_ = i;
                onBuilt();
                return mnsCmdLoginRsp;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsCmdLoginRsp) {
                    return mergeFrom((MnsCmdLoginRsp) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsCmdLoginRsp mnsCmdLoginRsp) {
                if (mnsCmdLoginRsp != MnsCmdLoginRsp.getDefaultInstance()) {
                    if (mnsCmdLoginRsp.hasGTKEYB2()) {
                        setGTKEYB2(mnsCmdLoginRsp.getGTKEYB2());
                    }
                    if (mnsCmdLoginRsp.hasB2()) {
                        setB2(mnsCmdLoginRsp.getB2());
                    }
                    if (mnsCmdLoginRsp.hasSUID()) {
                        this.bitField0_ |= 4;
                        this.sUID_ = mnsCmdLoginRsp.sUID_;
                        onChanged();
                    }
                    mergeUnknownFields(mnsCmdLoginRsp.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsCmdLoginRsp mnsCmdLoginRsp;
                MnsCmdLoginRsp mnsCmdLoginRsp2;
                try {
                    MnsCmdLoginRsp mnsCmdLoginRsp3 = (MnsCmdLoginRsp) MnsCmdLoginRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsCmdLoginRsp3 != null) {
                        mergeFrom(mnsCmdLoginRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsCmdLoginRsp2 = (MnsCmdLoginRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsCmdLoginRsp = mnsCmdLoginRsp2;
                    th = th2;
                }
                if (mnsCmdLoginRsp != null) {
                    mergeFrom(mnsCmdLoginRsp);
                }
                throw th;
            }

            public boolean hasGTKEYB2() {
                return (this.bitField0_ & 1) == 1;
            }

            public ByteString getGTKEYB2() {
                return this.gTKEYB2_;
            }

            public Builder setGTKEYB2(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.gTKEYB2_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearGTKEYB2() {
                this.bitField0_ &= -2;
                this.gTKEYB2_ = MnsCmdLoginRsp.getDefaultInstance().getGTKEYB2();
                onChanged();
                return this;
            }

            public boolean hasB2() {
                return (this.bitField0_ & 2) == 2;
            }

            public ByteString getB2() {
                return this.b2_;
            }

            public Builder setB2(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.b2_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearB2() {
                this.bitField0_ &= -3;
                this.b2_ = MnsCmdLoginRsp.getDefaultInstance().getB2();
                onChanged();
                return this;
            }

            public boolean hasSUID() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getSUID() {
                Object obj = this.sUID_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.sUID_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getSUIDBytes() {
                Object obj = this.sUID_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sUID_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setSUID(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.sUID_ = str;
                onChanged();
                return this;
            }

            public Builder clearSUID() {
                this.bitField0_ &= -5;
                this.sUID_ = MnsCmdLoginRsp.getDefaultInstance().getSUID();
                onChanged();
                return this;
            }

            public Builder setSUIDBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.sUID_ = byteString;
                onChanged();
                return this;
            }
        }

        private MnsCmdLoginRsp(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsCmdLoginRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsCmdLoginRsp getDefaultInstance() {
            return defaultInstance;
        }

        public MnsCmdLoginRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsCmdLoginRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 10:
                            this.bitField0_ |= 1;
                            this.gTKEYB2_ = codedInputStream.readBytes();
                            break;
                        case 18:
                            this.bitField0_ |= 2;
                            this.b2_ = codedInputStream.readBytes();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.sUID_ = readBytes;
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdLoginRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdLoginRsp.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsCmdLoginRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasGTKEYB2() {
            return (this.bitField0_ & 1) == 1;
        }

        public ByteString getGTKEYB2() {
            return this.gTKEYB2_;
        }

        public boolean hasB2() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getB2() {
            return this.b2_;
        }

        public boolean hasSUID() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getSUID() {
            Object obj = this.sUID_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sUID_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSUIDBytes() {
            Object obj = this.sUID_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sUID_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.gTKEYB2_ = ByteString.EMPTY;
            this.b2_ = ByteString.EMPTY;
            this.sUID_ = "";
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
                codedOutputStream.writeBytes(1, this.gTKEYB2_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, this.b2_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getSUIDBytes());
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, this.gTKEYB2_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, this.b2_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getSUIDBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsCmdLoginRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsCmdLoginRsp) PARSER.parseFrom(byteString);
        }

        public static MnsCmdLoginRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdLoginRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsCmdLoginRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsCmdLoginRsp) PARSER.parseFrom(bArr);
        }

        public static MnsCmdLoginRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdLoginRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsCmdLoginRsp parseFrom(InputStream inputStream) throws IOException {
            return (MnsCmdLoginRsp) PARSER.parseFrom(inputStream);
        }

        public static MnsCmdLoginRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdLoginRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdLoginRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsCmdLoginRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsCmdLoginRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdLoginRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdLoginRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsCmdLoginRsp) PARSER.parseFrom(codedInputStream);
        }

        public static MnsCmdLoginRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdLoginRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsCmdLoginRsp mnsCmdLoginRsp) {
            return newBuilder().mergeFrom(mnsCmdLoginRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsCmdLoginRspOrBuilder extends MessageOrBuilder {
        ByteString getB2();

        ByteString getGTKEYB2();

        String getSUID();

        ByteString getSUIDBytes();

        boolean hasB2();

        boolean hasGTKEYB2();

        boolean hasSUID();
    }

    public static final class MnsCmdPushRegisterReq extends GeneratedMessage implements MnsCmdPushRegisterReqOrBuilder {
        public static final int DEVICETOKEN_FIELD_NUMBER = 1;
        public static final int ONOFF_FIELD_NUMBER = 2;
        public static Parser<MnsCmdPushRegisterReq> PARSER = new AbstractParser<MnsCmdPushRegisterReq>() {
            public MnsCmdPushRegisterReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsCmdPushRegisterReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PASSPORTLOGIN_FIELD_NUMBER = 4;
        public static final int SUID_FIELD_NUMBER = 3;
        private static final MnsCmdPushRegisterReq defaultInstance = new MnsCmdPushRegisterReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString devicetoken_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public boolean onoff_;
        /* access modifiers changed from: private */
        public boolean passportlogin_;
        /* access modifiers changed from: private */
        public Object sUID_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsCmdPushRegisterReqOrBuilder {
            private int bitField0_;
            private ByteString devicetoken_;
            private boolean onoff_;
            private boolean passportlogin_;
            private Object sUID_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdPushRegisterReq.class, Builder.class);
            }

            private Builder() {
                this.devicetoken_ = ByteString.EMPTY;
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.devicetoken_ = ByteString.EMPTY;
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsCmdPushRegisterReq.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.devicetoken_ = ByteString.EMPTY;
                this.bitField0_ &= -2;
                this.onoff_ = false;
                this.bitField0_ &= -3;
                this.sUID_ = "";
                this.bitField0_ &= -5;
                this.passportlogin_ = false;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_descriptor;
            }

            public MnsCmdPushRegisterReq getDefaultInstanceForType() {
                return MnsCmdPushRegisterReq.getDefaultInstance();
            }

            public MnsCmdPushRegisterReq build() {
                MnsCmdPushRegisterReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsCmdPushRegisterReq buildPartial() {
                int i = 1;
                MnsCmdPushRegisterReq mnsCmdPushRegisterReq = new MnsCmdPushRegisterReq((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                mnsCmdPushRegisterReq.devicetoken_ = this.devicetoken_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                mnsCmdPushRegisterReq.onoff_ = this.onoff_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                mnsCmdPushRegisterReq.sUID_ = this.sUID_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                mnsCmdPushRegisterReq.passportlogin_ = this.passportlogin_;
                mnsCmdPushRegisterReq.bitField0_ = i;
                onBuilt();
                return mnsCmdPushRegisterReq;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsCmdPushRegisterReq) {
                    return mergeFrom((MnsCmdPushRegisterReq) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsCmdPushRegisterReq mnsCmdPushRegisterReq) {
                if (mnsCmdPushRegisterReq != MnsCmdPushRegisterReq.getDefaultInstance()) {
                    if (mnsCmdPushRegisterReq.hasDevicetoken()) {
                        setDevicetoken(mnsCmdPushRegisterReq.getDevicetoken());
                    }
                    if (mnsCmdPushRegisterReq.hasOnoff()) {
                        setOnoff(mnsCmdPushRegisterReq.getOnoff());
                    }
                    if (mnsCmdPushRegisterReq.hasSUID()) {
                        this.bitField0_ |= 4;
                        this.sUID_ = mnsCmdPushRegisterReq.sUID_;
                        onChanged();
                    }
                    if (mnsCmdPushRegisterReq.hasPassportlogin()) {
                        setPassportlogin(mnsCmdPushRegisterReq.getPassportlogin());
                    }
                    mergeUnknownFields(mnsCmdPushRegisterReq.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsCmdPushRegisterReq mnsCmdPushRegisterReq;
                MnsCmdPushRegisterReq mnsCmdPushRegisterReq2;
                try {
                    MnsCmdPushRegisterReq mnsCmdPushRegisterReq3 = (MnsCmdPushRegisterReq) MnsCmdPushRegisterReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsCmdPushRegisterReq3 != null) {
                        mergeFrom(mnsCmdPushRegisterReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsCmdPushRegisterReq2 = (MnsCmdPushRegisterReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsCmdPushRegisterReq = mnsCmdPushRegisterReq2;
                    th = th2;
                }
                if (mnsCmdPushRegisterReq != null) {
                    mergeFrom(mnsCmdPushRegisterReq);
                }
                throw th;
            }

            public boolean hasDevicetoken() {
                return (this.bitField0_ & 1) == 1;
            }

            public ByteString getDevicetoken() {
                return this.devicetoken_;
            }

            public Builder setDevicetoken(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.devicetoken_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearDevicetoken() {
                this.bitField0_ &= -2;
                this.devicetoken_ = MnsCmdPushRegisterReq.getDefaultInstance().getDevicetoken();
                onChanged();
                return this;
            }

            public boolean hasOnoff() {
                return (this.bitField0_ & 2) == 2;
            }

            public boolean getOnoff() {
                return this.onoff_;
            }

            public Builder setOnoff(boolean z) {
                this.bitField0_ |= 2;
                this.onoff_ = z;
                onChanged();
                return this;
            }

            public Builder clearOnoff() {
                this.bitField0_ &= -3;
                this.onoff_ = false;
                onChanged();
                return this;
            }

            public boolean hasSUID() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getSUID() {
                Object obj = this.sUID_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.sUID_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getSUIDBytes() {
                Object obj = this.sUID_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sUID_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setSUID(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.sUID_ = str;
                onChanged();
                return this;
            }

            public Builder clearSUID() {
                this.bitField0_ &= -5;
                this.sUID_ = MnsCmdPushRegisterReq.getDefaultInstance().getSUID();
                onChanged();
                return this;
            }

            public Builder setSUIDBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.sUID_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasPassportlogin() {
                return (this.bitField0_ & 8) == 8;
            }

            public boolean getPassportlogin() {
                return this.passportlogin_;
            }

            public Builder setPassportlogin(boolean z) {
                this.bitField0_ |= 8;
                this.passportlogin_ = z;
                onChanged();
                return this;
            }

            public Builder clearPassportlogin() {
                this.bitField0_ &= -9;
                this.passportlogin_ = false;
                onChanged();
                return this;
            }
        }

        private MnsCmdPushRegisterReq(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsCmdPushRegisterReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsCmdPushRegisterReq getDefaultInstance() {
            return defaultInstance;
        }

        public MnsCmdPushRegisterReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsCmdPushRegisterReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 10:
                            this.bitField0_ |= 1;
                            this.devicetoken_ = codedInputStream.readBytes();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.onoff_ = codedInputStream.readBool();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.sUID_ = readBytes;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.passportlogin_ = codedInputStream.readBool();
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdPushRegisterReq.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsCmdPushRegisterReq> getParserForType() {
            return PARSER;
        }

        public boolean hasDevicetoken() {
            return (this.bitField0_ & 1) == 1;
        }

        public ByteString getDevicetoken() {
            return this.devicetoken_;
        }

        public boolean hasOnoff() {
            return (this.bitField0_ & 2) == 2;
        }

        public boolean getOnoff() {
            return this.onoff_;
        }

        public boolean hasSUID() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getSUID() {
            Object obj = this.sUID_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sUID_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSUIDBytes() {
            Object obj = this.sUID_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sUID_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasPassportlogin() {
            return (this.bitField0_ & 8) == 8;
        }

        public boolean getPassportlogin() {
            return this.passportlogin_;
        }

        private void initFields() {
            this.devicetoken_ = ByteString.EMPTY;
            this.onoff_ = false;
            this.sUID_ = "";
            this.passportlogin_ = false;
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
                codedOutputStream.writeBytes(1, this.devicetoken_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBool(2, this.onoff_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getSUIDBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBool(4, this.passportlogin_);
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, this.devicetoken_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBoolSize(2, this.onoff_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getSUIDBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBoolSize(4, this.passportlogin_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsCmdPushRegisterReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsCmdPushRegisterReq) PARSER.parseFrom(byteString);
        }

        public static MnsCmdPushRegisterReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdPushRegisterReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsCmdPushRegisterReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsCmdPushRegisterReq) PARSER.parseFrom(bArr);
        }

        public static MnsCmdPushRegisterReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdPushRegisterReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsCmdPushRegisterReq parseFrom(InputStream inputStream) throws IOException {
            return (MnsCmdPushRegisterReq) PARSER.parseFrom(inputStream);
        }

        public static MnsCmdPushRegisterReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdPushRegisterReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdPushRegisterReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsCmdPushRegisterReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsCmdPushRegisterReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdPushRegisterReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdPushRegisterReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsCmdPushRegisterReq) PARSER.parseFrom(codedInputStream);
        }

        public static MnsCmdPushRegisterReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdPushRegisterReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsCmdPushRegisterReq mnsCmdPushRegisterReq) {
            return newBuilder().mergeFrom(mnsCmdPushRegisterReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsCmdPushRegisterReqOrBuilder extends MessageOrBuilder {
        ByteString getDevicetoken();

        boolean getOnoff();

        boolean getPassportlogin();

        String getSUID();

        ByteString getSUIDBytes();

        boolean hasDevicetoken();

        boolean hasOnoff();

        boolean hasPassportlogin();

        boolean hasSUID();
    }

    public static final class MnsCmdPushRegisterRsp extends GeneratedMessage implements MnsCmdPushRegisterRspOrBuilder {
        public static Parser<MnsCmdPushRegisterRsp> PARSER = new AbstractParser<MnsCmdPushRegisterRsp>() {
            public MnsCmdPushRegisterRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsCmdPushRegisterRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SUID_FIELD_NUMBER = 1;
        private static final MnsCmdPushRegisterRsp defaultInstance = new MnsCmdPushRegisterRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object sUID_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsCmdPushRegisterRspOrBuilder {
            private int bitField0_;
            private Object sUID_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdPushRegisterRsp.class, Builder.class);
            }

            private Builder() {
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.sUID_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsCmdPushRegisterRsp.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.sUID_ = "";
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_descriptor;
            }

            public MnsCmdPushRegisterRsp getDefaultInstanceForType() {
                return MnsCmdPushRegisterRsp.getDefaultInstance();
            }

            public MnsCmdPushRegisterRsp build() {
                MnsCmdPushRegisterRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsCmdPushRegisterRsp buildPartial() {
                int i = 1;
                MnsCmdPushRegisterRsp mnsCmdPushRegisterRsp = new MnsCmdPushRegisterRsp((com.google.protobuf.GeneratedMessage.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                mnsCmdPushRegisterRsp.sUID_ = this.sUID_;
                mnsCmdPushRegisterRsp.bitField0_ = i;
                onBuilt();
                return mnsCmdPushRegisterRsp;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsCmdPushRegisterRsp) {
                    return mergeFrom((MnsCmdPushRegisterRsp) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsCmdPushRegisterRsp mnsCmdPushRegisterRsp) {
                if (mnsCmdPushRegisterRsp != MnsCmdPushRegisterRsp.getDefaultInstance()) {
                    if (mnsCmdPushRegisterRsp.hasSUID()) {
                        this.bitField0_ |= 1;
                        this.sUID_ = mnsCmdPushRegisterRsp.sUID_;
                        onChanged();
                    }
                    mergeUnknownFields(mnsCmdPushRegisterRsp.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsCmdPushRegisterRsp mnsCmdPushRegisterRsp;
                MnsCmdPushRegisterRsp mnsCmdPushRegisterRsp2;
                try {
                    MnsCmdPushRegisterRsp mnsCmdPushRegisterRsp3 = (MnsCmdPushRegisterRsp) MnsCmdPushRegisterRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsCmdPushRegisterRsp3 != null) {
                        mergeFrom(mnsCmdPushRegisterRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsCmdPushRegisterRsp2 = (MnsCmdPushRegisterRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsCmdPushRegisterRsp = mnsCmdPushRegisterRsp2;
                    th = th2;
                }
                if (mnsCmdPushRegisterRsp != null) {
                    mergeFrom(mnsCmdPushRegisterRsp);
                }
                throw th;
            }

            public boolean hasSUID() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getSUID() {
                Object obj = this.sUID_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.sUID_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getSUIDBytes() {
                Object obj = this.sUID_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sUID_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setSUID(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.sUID_ = str;
                onChanged();
                return this;
            }

            public Builder clearSUID() {
                this.bitField0_ &= -2;
                this.sUID_ = MnsCmdPushRegisterRsp.getDefaultInstance().getSUID();
                onChanged();
                return this;
            }

            public Builder setSUIDBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.sUID_ = byteString;
                onChanged();
                return this;
            }
        }

        private MnsCmdPushRegisterRsp(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsCmdPushRegisterRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsCmdPushRegisterRsp getDefaultInstance() {
            return defaultInstance;
        }

        public MnsCmdPushRegisterRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsCmdPushRegisterRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 10:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 1;
                            this.sUID_ = readBytes;
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsCmdPushRegisterRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdPushRegisterRsp.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsCmdPushRegisterRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasSUID() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getSUID() {
            Object obj = this.sUID_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sUID_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSUIDBytes() {
            Object obj = this.sUID_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sUID_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.sUID_ = "";
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
                codedOutputStream.writeBytes(1, getSUIDBytes());
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getSUIDBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsCmdPushRegisterRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsCmdPushRegisterRsp) PARSER.parseFrom(byteString);
        }

        public static MnsCmdPushRegisterRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdPushRegisterRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsCmdPushRegisterRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsCmdPushRegisterRsp) PARSER.parseFrom(bArr);
        }

        public static MnsCmdPushRegisterRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsCmdPushRegisterRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsCmdPushRegisterRsp parseFrom(InputStream inputStream) throws IOException {
            return (MnsCmdPushRegisterRsp) PARSER.parseFrom(inputStream);
        }

        public static MnsCmdPushRegisterRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdPushRegisterRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdPushRegisterRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsCmdPushRegisterRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsCmdPushRegisterRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdPushRegisterRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsCmdPushRegisterRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsCmdPushRegisterRsp) PARSER.parseFrom(codedInputStream);
        }

        public static MnsCmdPushRegisterRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsCmdPushRegisterRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsCmdPushRegisterRsp mnsCmdPushRegisterRsp) {
            return newBuilder().mergeFrom(mnsCmdPushRegisterRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsCmdPushRegisterRspOrBuilder extends MessageOrBuilder {
        String getSUID();

        ByteString getSUIDBytes();

        boolean hasSUID();
    }

    public static final class MnsIpInfo extends GeneratedMessage implements MnsIpInfoOrBuilder {
        public static final int APN_FIELD_NUMBER = 3;
        public static final int IP_FIELD_NUMBER = 1;
        public static Parser<MnsIpInfo> PARSER = new AbstractParser<MnsIpInfo>() {
            public MnsIpInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MnsIpInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PORT_FIELD_NUMBER = 2;
        public static final int REMARK_FIELD_NUMBER = 4;
        private static final MnsIpInfo defaultInstance = new MnsIpInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int apn_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int ip_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int port_;
        /* access modifiers changed from: private */
        public Object remark_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements MnsIpInfoOrBuilder {
            private int apn_;
            private int bitField0_;
            private int ip_;
            private int port_;
            private Object remark_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsIpInfo.class, Builder.class);
            }

            private Builder() {
                this.remark_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.remark_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (MnsIpInfo.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.ip_ = 0;
                this.bitField0_ &= -2;
                this.port_ = 0;
                this.bitField0_ &= -3;
                this.apn_ = 0;
                this.bitField0_ &= -5;
                this.remark_ = "";
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_descriptor;
            }

            public MnsIpInfo getDefaultInstanceForType() {
                return MnsIpInfo.getDefaultInstance();
            }

            public MnsIpInfo build() {
                MnsIpInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public MnsIpInfo buildPartial() {
                int i = 1;
                MnsIpInfo mnsIpInfo = new MnsIpInfo((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                mnsIpInfo.ip_ = this.ip_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                mnsIpInfo.port_ = this.port_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                mnsIpInfo.apn_ = this.apn_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                mnsIpInfo.remark_ = this.remark_;
                mnsIpInfo.bitField0_ = i;
                onBuilt();
                return mnsIpInfo;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof MnsIpInfo) {
                    return mergeFrom((MnsIpInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(MnsIpInfo mnsIpInfo) {
                if (mnsIpInfo != MnsIpInfo.getDefaultInstance()) {
                    if (mnsIpInfo.hasIp()) {
                        setIp(mnsIpInfo.getIp());
                    }
                    if (mnsIpInfo.hasPort()) {
                        setPort(mnsIpInfo.getPort());
                    }
                    if (mnsIpInfo.hasApn()) {
                        setApn(mnsIpInfo.getApn());
                    }
                    if (mnsIpInfo.hasRemark()) {
                        this.bitField0_ |= 8;
                        this.remark_ = mnsIpInfo.remark_;
                        onChanged();
                    }
                    mergeUnknownFields(mnsIpInfo.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                MnsIpInfo mnsIpInfo;
                MnsIpInfo mnsIpInfo2;
                try {
                    MnsIpInfo mnsIpInfo3 = (MnsIpInfo) MnsIpInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (mnsIpInfo3 != null) {
                        mergeFrom(mnsIpInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    mnsIpInfo2 = (MnsIpInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    mnsIpInfo = mnsIpInfo2;
                    th = th2;
                }
                if (mnsIpInfo != null) {
                    mergeFrom(mnsIpInfo);
                }
                throw th;
            }

            public boolean hasIp() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getIp() {
                return this.ip_;
            }

            public Builder setIp(int i) {
                this.bitField0_ |= 1;
                this.ip_ = i;
                onChanged();
                return this;
            }

            public Builder clearIp() {
                this.bitField0_ &= -2;
                this.ip_ = 0;
                onChanged();
                return this;
            }

            public boolean hasPort() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getPort() {
                return this.port_;
            }

            public Builder setPort(int i) {
                this.bitField0_ |= 2;
                this.port_ = i;
                onChanged();
                return this;
            }

            public Builder clearPort() {
                this.bitField0_ &= -3;
                this.port_ = 0;
                onChanged();
                return this;
            }

            public boolean hasApn() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getApn() {
                return this.apn_;
            }

            public Builder setApn(int i) {
                this.bitField0_ |= 4;
                this.apn_ = i;
                onChanged();
                return this;
            }

            public Builder clearApn() {
                this.bitField0_ &= -5;
                this.apn_ = 0;
                onChanged();
                return this;
            }

            public boolean hasRemark() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getRemark() {
                Object obj = this.remark_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.remark_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getRemarkBytes() {
                Object obj = this.remark_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.remark_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setRemark(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.remark_ = str;
                onChanged();
                return this;
            }

            public Builder clearRemark() {
                this.bitField0_ &= -9;
                this.remark_ = MnsIpInfo.getDefaultInstance().getRemark();
                onChanged();
                return this;
            }

            public Builder setRemarkBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.remark_ = byteString;
                onChanged();
                return this;
            }
        }

        private MnsIpInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private MnsIpInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static MnsIpInfo getDefaultInstance() {
            return defaultInstance;
        }

        public MnsIpInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private MnsIpInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 8:
                            this.bitField0_ |= 1;
                            this.ip_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.port_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.apn_ = codedInputStream.readInt32();
                            break;
                        case 34:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.remark_ = readBytes;
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_MnsIpInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsIpInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<MnsIpInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasIp() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getIp() {
            return this.ip_;
        }

        public boolean hasPort() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getPort() {
            return this.port_;
        }

        public boolean hasApn() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getApn() {
            return this.apn_;
        }

        public boolean hasRemark() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getRemark() {
            Object obj = this.remark_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.remark_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getRemarkBytes() {
            Object obj = this.remark_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.remark_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.ip_ = 0;
            this.port_ = 0;
            this.apn_ = 0;
            this.remark_ = "";
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
                codedOutputStream.writeUInt32(1, this.ip_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.port_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeInt32(3, this.apn_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getRemarkBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.ip_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.port_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeInt32Size(3, this.apn_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getRemarkBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static MnsIpInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MnsIpInfo) PARSER.parseFrom(byteString);
        }

        public static MnsIpInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsIpInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static MnsIpInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MnsIpInfo) PARSER.parseFrom(bArr);
        }

        public static MnsIpInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MnsIpInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MnsIpInfo parseFrom(InputStream inputStream) throws IOException {
            return (MnsIpInfo) PARSER.parseFrom(inputStream);
        }

        public static MnsIpInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsIpInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static MnsIpInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MnsIpInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static MnsIpInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsIpInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static MnsIpInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MnsIpInfo) PARSER.parseFrom(codedInputStream);
        }

        public static MnsIpInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MnsIpInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(MnsIpInfo mnsIpInfo) {
            return newBuilder().mergeFrom(mnsIpInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface MnsIpInfoOrBuilder extends MessageOrBuilder {
        int getApn();

        int getIp();

        int getPort();

        String getRemark();

        ByteString getRemarkBytes();

        boolean hasApn();

        boolean hasIp();

        boolean hasPort();

        boolean hasRemark();
    }

    public static final class SdkConnMgrInfo extends GeneratedMessage implements SdkConnMgrInfoOrBuilder {
        public static final int APN_TYPE_FIELD_NUMBER = 2;
        public static final int IP_PRINCIPLE_FIELD_NUMBER = 1;
        public static final int IS_BGD_FIELD_NUMBER = 3;
        public static Parser<SdkConnMgrInfo> PARSER = new AbstractParser<SdkConnMgrInfo>() {
            public SdkConnMgrInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SdkConnMgrInfo(codedInputStream, extensionRegistryLite);
            }
        };
        private static final SdkConnMgrInfo defaultInstance = new SdkConnMgrInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int apnType_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int ipPrinciple_;
        /* access modifiers changed from: private */
        public boolean isBgd_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SdkConnMgrInfoOrBuilder {
            private int apnType_;
            private int bitField0_;
            private int ipPrinciple_;
            private boolean isBgd_;

            public static final Descriptor getDescriptor() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(SdkConnMgrInfo.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SdkConnMgrInfo.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.ipPrinciple_ = 0;
                this.bitField0_ &= -2;
                this.apnType_ = 0;
                this.bitField0_ &= -3;
                this.isBgd_ = false;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_descriptor;
            }

            public SdkConnMgrInfo getDefaultInstanceForType() {
                return SdkConnMgrInfo.getDefaultInstance();
            }

            public SdkConnMgrInfo build() {
                SdkConnMgrInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SdkConnMgrInfo buildPartial() {
                int i = 1;
                SdkConnMgrInfo sdkConnMgrInfo = new SdkConnMgrInfo((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                sdkConnMgrInfo.ipPrinciple_ = this.ipPrinciple_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                sdkConnMgrInfo.apnType_ = this.apnType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                sdkConnMgrInfo.isBgd_ = this.isBgd_;
                sdkConnMgrInfo.bitField0_ = i;
                onBuilt();
                return sdkConnMgrInfo;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof SdkConnMgrInfo) {
                    return mergeFrom((SdkConnMgrInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SdkConnMgrInfo sdkConnMgrInfo) {
                if (sdkConnMgrInfo != SdkConnMgrInfo.getDefaultInstance()) {
                    if (sdkConnMgrInfo.hasIpPrinciple()) {
                        setIpPrinciple(sdkConnMgrInfo.getIpPrinciple());
                    }
                    if (sdkConnMgrInfo.hasApnType()) {
                        setApnType(sdkConnMgrInfo.getApnType());
                    }
                    if (sdkConnMgrInfo.hasIsBgd()) {
                        setIsBgd(sdkConnMgrInfo.getIsBgd());
                    }
                    mergeUnknownFields(sdkConnMgrInfo.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SdkConnMgrInfo sdkConnMgrInfo;
                SdkConnMgrInfo sdkConnMgrInfo2;
                try {
                    SdkConnMgrInfo sdkConnMgrInfo3 = (SdkConnMgrInfo) SdkConnMgrInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (sdkConnMgrInfo3 != null) {
                        mergeFrom(sdkConnMgrInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    sdkConnMgrInfo2 = (SdkConnMgrInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    sdkConnMgrInfo = sdkConnMgrInfo2;
                    th = th2;
                }
                if (sdkConnMgrInfo != null) {
                    mergeFrom(sdkConnMgrInfo);
                }
                throw th;
            }

            public boolean hasIpPrinciple() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getIpPrinciple() {
                return this.ipPrinciple_;
            }

            public Builder setIpPrinciple(int i) {
                this.bitField0_ |= 1;
                this.ipPrinciple_ = i;
                onChanged();
                return this;
            }

            public Builder clearIpPrinciple() {
                this.bitField0_ &= -2;
                this.ipPrinciple_ = 0;
                onChanged();
                return this;
            }

            public boolean hasApnType() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getApnType() {
                return this.apnType_;
            }

            public Builder setApnType(int i) {
                this.bitField0_ |= 2;
                this.apnType_ = i;
                onChanged();
                return this;
            }

            public Builder clearApnType() {
                this.bitField0_ &= -3;
                this.apnType_ = 0;
                onChanged();
                return this;
            }

            public boolean hasIsBgd() {
                return (this.bitField0_ & 4) == 4;
            }

            public boolean getIsBgd() {
                return this.isBgd_;
            }

            public Builder setIsBgd(boolean z) {
                this.bitField0_ |= 4;
                this.isBgd_ = z;
                onChanged();
                return this;
            }

            public Builder clearIsBgd() {
                this.bitField0_ &= -5;
                this.isBgd_ = false;
                onChanged();
                return this;
            }
        }

        private SdkConnMgrInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SdkConnMgrInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SdkConnMgrInfo getDefaultInstance() {
            return defaultInstance;
        }

        public SdkConnMgrInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SdkConnMgrInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 8:
                            this.bitField0_ |= 1;
                            this.ipPrinciple_ = codedInputStream.readInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.apnType_ = codedInputStream.readInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.isBgd_ = codedInputStream.readBool();
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
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return SystemPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_SdkConnMgrInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(SdkConnMgrInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SdkConnMgrInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasIpPrinciple() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getIpPrinciple() {
            return this.ipPrinciple_;
        }

        public boolean hasApnType() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getApnType() {
            return this.apnType_;
        }

        public boolean hasIsBgd() {
            return (this.bitField0_ & 4) == 4;
        }

        public boolean getIsBgd() {
            return this.isBgd_;
        }

        private void initFields() {
            this.ipPrinciple_ = 0;
            this.apnType_ = 0;
            this.isBgd_ = false;
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
                codedOutputStream.writeInt32(1, this.ipPrinciple_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(2, this.apnType_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBool(3, this.isBgd_);
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
                i2 = 0 + CodedOutputStream.computeInt32Size(1, this.ipPrinciple_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeInt32Size(2, this.apnType_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBoolSize(3, this.isBgd_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static SdkConnMgrInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SdkConnMgrInfo) PARSER.parseFrom(byteString);
        }

        public static SdkConnMgrInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SdkConnMgrInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SdkConnMgrInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SdkConnMgrInfo) PARSER.parseFrom(bArr);
        }

        public static SdkConnMgrInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SdkConnMgrInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SdkConnMgrInfo parseFrom(InputStream inputStream) throws IOException {
            return (SdkConnMgrInfo) PARSER.parseFrom(inputStream);
        }

        public static SdkConnMgrInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SdkConnMgrInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SdkConnMgrInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SdkConnMgrInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SdkConnMgrInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SdkConnMgrInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SdkConnMgrInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SdkConnMgrInfo) PARSER.parseFrom(codedInputStream);
        }

        public static SdkConnMgrInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SdkConnMgrInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SdkConnMgrInfo sdkConnMgrInfo) {
            return newBuilder().mergeFrom(sdkConnMgrInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SdkConnMgrInfoOrBuilder extends MessageOrBuilder {
        int getApnType();

        int getIpPrinciple();

        boolean getIsBgd();

        boolean hasApnType();

        boolean hasIpPrinciple();

        boolean hasIsBgd();
    }

    private SystemPacketProto() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0018mns_service_define.proto\u0012\u001ecom.mi.milinkforgame.sdk.proto\",\n\u000eMnsCmdLoginReq\u0012\f\n\u0004flag\u0018\u0001 \u0001(\r\u0012\f\n\u0004sUID\u0018\u0002 \u0001(\t\"<\n\u000eMnsCmdLoginRsp\u0012\u0010\n\bGTKEY_B2\u0018\u0001 \u0001(\f\u0012\n\n\u0002B2\u0018\u0002 \u0001(\f\u0012\f\n\u0004sUID\u0018\u0003 \u0001(\t\"H\n\u000eSdkConnMgrInfo\u0012\u0014\n\fip_principle\u0018\u0001 \u0001(\u0005\u0012\u0010\n\bapn_type\u0018\u0002 \u0001(\u0005\u0012\u000e\n\u0006is_bgd\u0018\u0003 \u0001(\b\"\u0001\n\u000fMnsCmdHeartBeat\u0012\r\n\u0005ptime\u0018\u0001 \u0001(\r\u0012@\n\bmgr_info\u0018\u0002 \u0001(\u000b2..com.mi.milinkforgame.sdk.proto.SdkConnMgrInfo\u0012\f\n\u0004sUID\u0018\u0003 \u0001(\t\u0012\u0012\n\nis_fake_hb\u0018\u0004 \u0001(\b\u0012\u0011\n\ttimeStamp\u0018\u0005 \u0001(\u0004\"\u0001\n\u0012M", "nsCmdHeartBeatRsp\u0012\u0011\n\ttimeStamp\u0018\u0001 \u0001(\u0004\u0012<\n\u0006config\u0018\u0002 \u0001(\u000b2,.com.mi.milinkforgame.sdk.proto.MiLinkConfig\u0012\u0013\n\u000bengineratio\u0018\u0003 \u0001(\u0002\u0012\u0012\n\njsonconfig\u0018\u0004 \u0001(\t\"D\n\fMiLinkConfig\u0012\u0019\n\u0011heartBeatInterval\u0018\u0001 \u0001(\u0004\u0012\u0019\n\u0011b2TokenExpireTime\u0018\u0002 \u0001(\r\"\u001e\n\u000eMnsCmdLoginOff\u0012\f\n\u0004sUID\u0018\u0001 \u0001(\t\"`\n\u0015MnsCmdPushRegisterReq\u0012\u0013\n\u000bdevicetoken\u0018\u0001 \u0001(\f\u0012\r\n\u0005onoff\u0018\u0002 \u0001(\b\u0012\f\n\u0004sUID\u0018\u0003 \u0001(\t\u0012\u0015\n\rpassportlogin\u0018\u0004 \u0001(\b\"%\n\u0015MnsCmdPushRegisterRsp\u0012\f\n\u0004sUID\u0018\u0001 \u0001(\t\"L\n\nMnsAccInfo\u0012\r\n\u0005AccI", "d\u0018\u0001 \u0002(\u0004\u0012\r\n\u0005AccIp\u0018\u0002 \u0002(\r\u0012\u000f\n\u0007AccPort\u0018\u0003 \u0002(\r\u0012\u000f\n\u0007AccFlag\u0018\u0004 \u0001(\u0005\"'\n\u0012MiLinkGetConfigReq\u0012\u0011\n\ttimeStamp\u0018\u0001 \u0001(\u0004\"y\n\u0012MiLinkGetConfigRsp\u0012\u0011\n\ttimeStamp\u0018\u0001 \u0001(\u0004\u0012<\n\u0006config\u0018\u0002 \u0001(\u000b2,.com.mi.milinkforgame.sdk.proto.MiLinkConfig\u0012\u0012\n\njsonConfig\u0018\u0003 \u0001(\t\"d\n\u0012MnsCmdHandShakeReq\u0012\f\n\u0004type\u0018\u0001 \u0002(\u0005\u0012@\n\bmgr_info\u0018\u0002 \u0001(\u000b2..com.mi.milinkforgame.sdk.proto.SdkConnMgrInfo\"\u0001\n\u0012MnsCmdHandShakeRsp\u0012\f\n\u0004type\u0018\u0001 \u0002(\u0005\u0012;\n\bredirect\u0018\u0002 \u0003(\u000b2).com.mi.milinkforgame", ".sdk.proto.MnsIpInfo\u0012\u0012\n\nuprinciple\u0018\u0003 \u0001(\u0005\u0012\u0012\n\nclientinfo\u0018\u0004 \u0001(\t\u0012\u0014\n\tcross_opr\u0018\u0005 \u0001(\u0005:\u00010\"B\n\tMnsIpInfo\u0012\n\n\u0002ip\u0018\u0001 \u0001(\r\u0012\f\n\u0004port\u0018\u0002 \u0001(\r\u0012\u000b\n\u0003apn\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006remark\u0018\u0004 \u0001(\t\"\u0001\n\rMnsCmdBindReq\u0012\u000b\n\u0003gid\u0018\u0001 \u0002(\t\u0012\n\n\u0002B2\u0018\u0002 \u0002(\t\u0012\u0012\n\nprivacyKey\u0018\u0003 \u0002(\t\u0012\f\n\u0004sUID\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bdevicetoken\u0018\u0005 \u0001(\f\u0012\r\n\u0005onoff\u0018\u0006 \u0001(\b\u0012\u0015\n\rpassportlogin\u0018\u0007 \u0001(\b\"U\n\rMnsCmdBindRsp\u0012\u000b\n\u0003gid\u0018\u0001 \u0002(\t\u0012\u000b\n\u0003uid\u0018\u0002 \u0002(\u0004\u0012\n\n\u0002B2\u0018\u0003 \u0002(\t\u0012\u0010\n\bGTKEY_B2\u0018\u0004 \u0002(\t\u0012\f\n\u0004sUID\u0018\u0005 \u0001(\tB3\n\u001ecom.mi.milinkforgame.sd", "k.protoB\u0011SystemPacketProto"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                SystemPacketProto.descriptor = fileDescriptor;
                return null;
            }
        });
    }
}
