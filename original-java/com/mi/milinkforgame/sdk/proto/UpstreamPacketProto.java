package com.mi.milinkforgame.sdk.proto;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
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
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class UpstreamPacketProto {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(5));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_descriptor, new String[]{"CompFlag", "LenBeforeComp", "IsSupportComp"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(3));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_descriptor, new String[]{"IpType", "ClientPort", "ClientIpV4", "ClientIpV6"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_descriptor, new String[]{"Key", "Val"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(4));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_descriptor, new String[]{"Flag", "RetryCnt", "PkgId"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_descriptor, new String[]{"Type", "Key", "ExtKey"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_descriptor, new String[]{"Seq", "AppId", "MiUin", "Ua", "ServiceCmd", "DeviceInfo", "Token", "IpInfo", "BusiBuff", "Extra", "Flag", "SessionId", "RetryInfo", "BusiControl", "MiUid", "Gid"});

    public static final class BusiControl extends GeneratedMessage implements BusiControlOrBuilder {
        public static final int COMPFLAG_FIELD_NUMBER = 1;
        public static final int ISSUPPORTCOMP_FIELD_NUMBER = 3;
        public static final int LENBEFORECOMP_FIELD_NUMBER = 2;
        public static Parser<BusiControl> PARSER = new AbstractParser<BusiControl>() {
            public BusiControl parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new BusiControl(codedInputStream, extensionRegistryLite);
            }
        };
        private static final BusiControl defaultInstance = new BusiControl(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int compFlag_;
        /* access modifiers changed from: private */
        public boolean isSupportComp_;
        /* access modifiers changed from: private */
        public long lenBeforeComp_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements BusiControlOrBuilder {
            private int bitField0_;
            private int compFlag_;
            private boolean isSupportComp_;
            private long lenBeforeComp_;

            public static final Descriptor getDescriptor() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_fieldAccessorTable.ensureFieldAccessorsInitialized(BusiControl.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (BusiControl.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.compFlag_ = 0;
                this.bitField0_ &= -2;
                this.lenBeforeComp_ = 0;
                this.bitField0_ &= -3;
                this.isSupportComp_ = false;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_descriptor;
            }

            public BusiControl getDefaultInstanceForType() {
                return BusiControl.getDefaultInstance();
            }

            public BusiControl build() {
                BusiControl buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public BusiControl buildPartial() {
                int i = 1;
                BusiControl busiControl = new BusiControl((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                busiControl.compFlag_ = this.compFlag_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                busiControl.lenBeforeComp_ = this.lenBeforeComp_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                busiControl.isSupportComp_ = this.isSupportComp_;
                busiControl.bitField0_ = i;
                onBuilt();
                return busiControl;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof BusiControl) {
                    return mergeFrom((BusiControl) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(BusiControl busiControl) {
                if (busiControl != BusiControl.getDefaultInstance()) {
                    if (busiControl.hasCompFlag()) {
                        setCompFlag(busiControl.getCompFlag());
                    }
                    if (busiControl.hasLenBeforeComp()) {
                        setLenBeforeComp(busiControl.getLenBeforeComp());
                    }
                    if (busiControl.hasIsSupportComp()) {
                        setIsSupportComp(busiControl.getIsSupportComp());
                    }
                    mergeUnknownFields(busiControl.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                BusiControl busiControl;
                BusiControl busiControl2;
                try {
                    BusiControl busiControl3 = (BusiControl) BusiControl.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (busiControl3 != null) {
                        mergeFrom(busiControl3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    busiControl2 = (BusiControl) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    busiControl = busiControl2;
                    th = th2;
                }
                if (busiControl != null) {
                    mergeFrom(busiControl);
                }
                throw th;
            }

            public boolean hasCompFlag() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getCompFlag() {
                return this.compFlag_;
            }

            public Builder setCompFlag(int i) {
                this.bitField0_ |= 1;
                this.compFlag_ = i;
                onChanged();
                return this;
            }

            public Builder clearCompFlag() {
                this.bitField0_ &= -2;
                this.compFlag_ = 0;
                onChanged();
                return this;
            }

            public boolean hasLenBeforeComp() {
                return (this.bitField0_ & 2) == 2;
            }

            public long getLenBeforeComp() {
                return this.lenBeforeComp_;
            }

            public Builder setLenBeforeComp(long j) {
                this.bitField0_ |= 2;
                this.lenBeforeComp_ = j;
                onChanged();
                return this;
            }

            public Builder clearLenBeforeComp() {
                this.bitField0_ &= -3;
                this.lenBeforeComp_ = 0;
                onChanged();
                return this;
            }

            public boolean hasIsSupportComp() {
                return (this.bitField0_ & 4) == 4;
            }

            public boolean getIsSupportComp() {
                return this.isSupportComp_;
            }

            public Builder setIsSupportComp(boolean z) {
                this.bitField0_ |= 4;
                this.isSupportComp_ = z;
                onChanged();
                return this;
            }

            public Builder clearIsSupportComp() {
                this.bitField0_ &= -5;
                this.isSupportComp_ = false;
                onChanged();
                return this;
            }
        }

        private BusiControl(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private BusiControl(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static BusiControl getDefaultInstance() {
            return defaultInstance;
        }

        public BusiControl getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private BusiControl(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.compFlag_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.lenBeforeComp_ = codedInputStream.readUInt64();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.isSupportComp_ = codedInputStream.readBool();
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
            return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_BusiControl_fieldAccessorTable.ensureFieldAccessorsInitialized(BusiControl.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<BusiControl> getParserForType() {
            return PARSER;
        }

        public boolean hasCompFlag() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getCompFlag() {
            return this.compFlag_;
        }

        public boolean hasLenBeforeComp() {
            return (this.bitField0_ & 2) == 2;
        }

        public long getLenBeforeComp() {
            return this.lenBeforeComp_;
        }

        public boolean hasIsSupportComp() {
            return (this.bitField0_ & 4) == 4;
        }

        public boolean getIsSupportComp() {
            return this.isSupportComp_;
        }

        private void initFields() {
            this.compFlag_ = 0;
            this.lenBeforeComp_ = 0;
            this.isSupportComp_ = false;
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
                codedOutputStream.writeUInt32(1, this.compFlag_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt64(2, this.lenBeforeComp_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBool(3, this.isSupportComp_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.compFlag_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt64Size(2, this.lenBeforeComp_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBoolSize(3, this.isSupportComp_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static BusiControl parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (BusiControl) PARSER.parseFrom(byteString);
        }

        public static BusiControl parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (BusiControl) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static BusiControl parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (BusiControl) PARSER.parseFrom(bArr);
        }

        public static BusiControl parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (BusiControl) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static BusiControl parseFrom(InputStream inputStream) throws IOException {
            return (BusiControl) PARSER.parseFrom(inputStream);
        }

        public static BusiControl parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BusiControl) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static BusiControl parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (BusiControl) PARSER.parseDelimitedFrom(inputStream);
        }

        public static BusiControl parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BusiControl) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static BusiControl parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (BusiControl) PARSER.parseFrom(codedInputStream);
        }

        public static BusiControl parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BusiControl) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(BusiControl busiControl) {
            return newBuilder().mergeFrom(busiControl);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface BusiControlOrBuilder extends MessageOrBuilder {
        int getCompFlag();

        boolean getIsSupportComp();

        long getLenBeforeComp();

        boolean hasCompFlag();

        boolean hasIsSupportComp();

        boolean hasLenBeforeComp();
    }

    public static final class ClientIpInfo extends GeneratedMessage implements ClientIpInfoOrBuilder {
        public static final int CLIENTIPV4_FIELD_NUMBER = 3;
        public static final int CLIENTIPV6_FIELD_NUMBER = 4;
        public static final int CLIENTPORT_FIELD_NUMBER = 2;
        public static final int IPTYPE_FIELD_NUMBER = 1;
        public static Parser<ClientIpInfo> PARSER = new AbstractParser<ClientIpInfo>() {
            public ClientIpInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ClientIpInfo(codedInputStream, extensionRegistryLite);
            }
        };
        private static final ClientIpInfo defaultInstance = new ClientIpInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int clientIpV4_;
        /* access modifiers changed from: private */
        public ByteString clientIpV6_;
        /* access modifiers changed from: private */
        public int clientPort_;
        /* access modifiers changed from: private */
        public int ipType_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ClientIpInfoOrBuilder {
            private int bitField0_;
            private int clientIpV4_;
            private ByteString clientIpV6_;
            private int clientPort_;
            private int ipType_;

            public static final Descriptor getDescriptor() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(ClientIpInfo.class, Builder.class);
            }

            private Builder() {
                this.clientIpV6_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.clientIpV6_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (ClientIpInfo.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.ipType_ = 0;
                this.bitField0_ &= -2;
                this.clientPort_ = 0;
                this.bitField0_ &= -3;
                this.clientIpV4_ = 0;
                this.bitField0_ &= -5;
                this.clientIpV6_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_descriptor;
            }

            public ClientIpInfo getDefaultInstanceForType() {
                return ClientIpInfo.getDefaultInstance();
            }

            public ClientIpInfo build() {
                ClientIpInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ClientIpInfo buildPartial() {
                int i = 1;
                ClientIpInfo clientIpInfo = new ClientIpInfo((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                clientIpInfo.ipType_ = this.ipType_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                clientIpInfo.clientPort_ = this.clientPort_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                clientIpInfo.clientIpV4_ = this.clientIpV4_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                clientIpInfo.clientIpV6_ = this.clientIpV6_;
                clientIpInfo.bitField0_ = i;
                onBuilt();
                return clientIpInfo;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof ClientIpInfo) {
                    return mergeFrom((ClientIpInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ClientIpInfo clientIpInfo) {
                if (clientIpInfo != ClientIpInfo.getDefaultInstance()) {
                    if (clientIpInfo.hasIpType()) {
                        setIpType(clientIpInfo.getIpType());
                    }
                    if (clientIpInfo.hasClientPort()) {
                        setClientPort(clientIpInfo.getClientPort());
                    }
                    if (clientIpInfo.hasClientIpV4()) {
                        setClientIpV4(clientIpInfo.getClientIpV4());
                    }
                    if (clientIpInfo.hasClientIpV6()) {
                        setClientIpV6(clientIpInfo.getClientIpV6());
                    }
                    mergeUnknownFields(clientIpInfo.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ClientIpInfo clientIpInfo;
                ClientIpInfo clientIpInfo2;
                try {
                    ClientIpInfo clientIpInfo3 = (ClientIpInfo) ClientIpInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (clientIpInfo3 != null) {
                        mergeFrom(clientIpInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    clientIpInfo2 = (ClientIpInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    clientIpInfo = clientIpInfo2;
                    th = th2;
                }
                if (clientIpInfo != null) {
                    mergeFrom(clientIpInfo);
                }
                throw th;
            }

            public boolean hasIpType() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getIpType() {
                return this.ipType_;
            }

            public Builder setIpType(int i) {
                this.bitField0_ |= 1;
                this.ipType_ = i;
                onChanged();
                return this;
            }

            public Builder clearIpType() {
                this.bitField0_ &= -2;
                this.ipType_ = 0;
                onChanged();
                return this;
            }

            public boolean hasClientPort() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getClientPort() {
                return this.clientPort_;
            }

            public Builder setClientPort(int i) {
                this.bitField0_ |= 2;
                this.clientPort_ = i;
                onChanged();
                return this;
            }

            public Builder clearClientPort() {
                this.bitField0_ &= -3;
                this.clientPort_ = 0;
                onChanged();
                return this;
            }

            public boolean hasClientIpV4() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getClientIpV4() {
                return this.clientIpV4_;
            }

            public Builder setClientIpV4(int i) {
                this.bitField0_ |= 4;
                this.clientIpV4_ = i;
                onChanged();
                return this;
            }

            public Builder clearClientIpV4() {
                this.bitField0_ &= -5;
                this.clientIpV4_ = 0;
                onChanged();
                return this;
            }

            public boolean hasClientIpV6() {
                return (this.bitField0_ & 8) == 8;
            }

            public ByteString getClientIpV6() {
                return this.clientIpV6_;
            }

            public Builder setClientIpV6(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.clientIpV6_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearClientIpV6() {
                this.bitField0_ &= -9;
                this.clientIpV6_ = ClientIpInfo.getDefaultInstance().getClientIpV6();
                onChanged();
                return this;
            }
        }

        private ClientIpInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ClientIpInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ClientIpInfo getDefaultInstance() {
            return defaultInstance;
        }

        public ClientIpInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ClientIpInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.ipType_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.clientPort_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.clientIpV4_ = codedInputStream.readUInt32();
                            break;
                        case 34:
                            this.bitField0_ |= 8;
                            this.clientIpV6_ = codedInputStream.readBytes();
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
            return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ClientIpInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(ClientIpInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ClientIpInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasIpType() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getIpType() {
            return this.ipType_;
        }

        public boolean hasClientPort() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getClientPort() {
            return this.clientPort_;
        }

        public boolean hasClientIpV4() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getClientIpV4() {
            return this.clientIpV4_;
        }

        public boolean hasClientIpV6() {
            return (this.bitField0_ & 8) == 8;
        }

        public ByteString getClientIpV6() {
            return this.clientIpV6_;
        }

        private void initFields() {
            this.ipType_ = 0;
            this.clientPort_ = 0;
            this.clientIpV4_ = 0;
            this.clientIpV6_ = ByteString.EMPTY;
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
                codedOutputStream.writeUInt32(1, this.ipType_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.clientPort_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.clientIpV4_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, this.clientIpV6_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.ipType_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.clientPort_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.clientIpV4_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, this.clientIpV6_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ClientIpInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ClientIpInfo) PARSER.parseFrom(byteString);
        }

        public static ClientIpInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ClientIpInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ClientIpInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ClientIpInfo) PARSER.parseFrom(bArr);
        }

        public static ClientIpInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ClientIpInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ClientIpInfo parseFrom(InputStream inputStream) throws IOException {
            return (ClientIpInfo) PARSER.parseFrom(inputStream);
        }

        public static ClientIpInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ClientIpInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ClientIpInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ClientIpInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ClientIpInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ClientIpInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ClientIpInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ClientIpInfo) PARSER.parseFrom(codedInputStream);
        }

        public static ClientIpInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ClientIpInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ClientIpInfo clientIpInfo) {
            return newBuilder().mergeFrom(clientIpInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface ClientIpInfoOrBuilder extends MessageOrBuilder {
        int getClientIpV4();

        ByteString getClientIpV6();

        int getClientPort();

        int getIpType();

        boolean hasClientIpV4();

        boolean hasClientIpV6();

        boolean hasClientPort();

        boolean hasIpType();
    }

    public static final class ExtKeyInfo extends GeneratedMessage implements ExtKeyInfoOrBuilder {
        public static final int KEY_FIELD_NUMBER = 1;
        public static Parser<ExtKeyInfo> PARSER = new AbstractParser<ExtKeyInfo>() {
            public ExtKeyInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ExtKeyInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int VAL_FIELD_NUMBER = 2;
        private static final ExtKeyInfo defaultInstance = new ExtKeyInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int key_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;
        /* access modifiers changed from: private */
        public ByteString val_;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ExtKeyInfoOrBuilder {
            private int bitField0_;
            private int key_;
            private ByteString val_;

            public static final Descriptor getDescriptor() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(ExtKeyInfo.class, Builder.class);
            }

            private Builder() {
                this.val_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.val_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (ExtKeyInfo.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.key_ = 0;
                this.bitField0_ &= -2;
                this.val_ = ByteString.EMPTY;
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_descriptor;
            }

            public ExtKeyInfo getDefaultInstanceForType() {
                return ExtKeyInfo.getDefaultInstance();
            }

            public ExtKeyInfo build() {
                ExtKeyInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ExtKeyInfo buildPartial() {
                int i = 1;
                ExtKeyInfo extKeyInfo = new ExtKeyInfo((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                extKeyInfo.key_ = this.key_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                extKeyInfo.val_ = this.val_;
                extKeyInfo.bitField0_ = i;
                onBuilt();
                return extKeyInfo;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof ExtKeyInfo) {
                    return mergeFrom((ExtKeyInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ExtKeyInfo extKeyInfo) {
                if (extKeyInfo != ExtKeyInfo.getDefaultInstance()) {
                    if (extKeyInfo.hasKey()) {
                        setKey(extKeyInfo.getKey());
                    }
                    if (extKeyInfo.hasVal()) {
                        setVal(extKeyInfo.getVal());
                    }
                    mergeUnknownFields(extKeyInfo.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ExtKeyInfo extKeyInfo;
                ExtKeyInfo extKeyInfo2;
                try {
                    ExtKeyInfo extKeyInfo3 = (ExtKeyInfo) ExtKeyInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (extKeyInfo3 != null) {
                        mergeFrom(extKeyInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    extKeyInfo2 = (ExtKeyInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    extKeyInfo = extKeyInfo2;
                    th = th2;
                }
                if (extKeyInfo != null) {
                    mergeFrom(extKeyInfo);
                }
                throw th;
            }

            public boolean hasKey() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getKey() {
                return this.key_;
            }

            public Builder setKey(int i) {
                this.bitField0_ |= 1;
                this.key_ = i;
                onChanged();
                return this;
            }

            public Builder clearKey() {
                this.bitField0_ &= -2;
                this.key_ = 0;
                onChanged();
                return this;
            }

            public boolean hasVal() {
                return (this.bitField0_ & 2) == 2;
            }

            public ByteString getVal() {
                return this.val_;
            }

            public Builder setVal(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.val_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearVal() {
                this.bitField0_ &= -3;
                this.val_ = ExtKeyInfo.getDefaultInstance().getVal();
                onChanged();
                return this;
            }
        }

        private ExtKeyInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ExtKeyInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ExtKeyInfo getDefaultInstance() {
            return defaultInstance;
        }

        public ExtKeyInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ExtKeyInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.key_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            this.bitField0_ |= 2;
                            this.val_ = codedInputStream.readBytes();
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
            return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ExtKeyInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(ExtKeyInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ExtKeyInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasKey() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getKey() {
            return this.key_;
        }

        public boolean hasVal() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getVal() {
            return this.val_;
        }

        private void initFields() {
            this.key_ = 0;
            this.val_ = ByteString.EMPTY;
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
                codedOutputStream.writeUInt32(1, this.key_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, this.val_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.key_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, this.val_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ExtKeyInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ExtKeyInfo) PARSER.parseFrom(byteString);
        }

        public static ExtKeyInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ExtKeyInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ExtKeyInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ExtKeyInfo) PARSER.parseFrom(bArr);
        }

        public static ExtKeyInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ExtKeyInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ExtKeyInfo parseFrom(InputStream inputStream) throws IOException {
            return (ExtKeyInfo) PARSER.parseFrom(inputStream);
        }

        public static ExtKeyInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExtKeyInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ExtKeyInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ExtKeyInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ExtKeyInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExtKeyInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ExtKeyInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ExtKeyInfo) PARSER.parseFrom(codedInputStream);
        }

        public static ExtKeyInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExtKeyInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ExtKeyInfo extKeyInfo) {
            return newBuilder().mergeFrom(extKeyInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface ExtKeyInfoOrBuilder extends MessageOrBuilder {
        int getKey();

        ByteString getVal();

        boolean hasKey();

        boolean hasVal();
    }

    public static final class RetryInfo extends GeneratedMessage implements RetryInfoOrBuilder {
        public static final int FLAG_FIELD_NUMBER = 1;
        public static Parser<RetryInfo> PARSER = new AbstractParser<RetryInfo>() {
            public RetryInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new RetryInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PKGID_FIELD_NUMBER = 3;
        public static final int RETRYCNT_FIELD_NUMBER = 2;
        private static final RetryInfo defaultInstance = new RetryInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int flag_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public long pkgId_;
        /* access modifiers changed from: private */
        public int retryCnt_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements RetryInfoOrBuilder {
            private int bitField0_;
            private int flag_;
            private long pkgId_;
            private int retryCnt_;

            public static final Descriptor getDescriptor() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(RetryInfo.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (RetryInfo.alwaysUseFieldBuilders) {
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
                this.retryCnt_ = 0;
                this.bitField0_ &= -3;
                this.pkgId_ = 0;
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_descriptor;
            }

            public RetryInfo getDefaultInstanceForType() {
                return RetryInfo.getDefaultInstance();
            }

            public RetryInfo build() {
                RetryInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public RetryInfo buildPartial() {
                int i = 1;
                RetryInfo retryInfo = new RetryInfo((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                retryInfo.flag_ = this.flag_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                retryInfo.retryCnt_ = this.retryCnt_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                retryInfo.pkgId_ = this.pkgId_;
                retryInfo.bitField0_ = i;
                onBuilt();
                return retryInfo;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof RetryInfo) {
                    return mergeFrom((RetryInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(RetryInfo retryInfo) {
                if (retryInfo != RetryInfo.getDefaultInstance()) {
                    if (retryInfo.hasFlag()) {
                        setFlag(retryInfo.getFlag());
                    }
                    if (retryInfo.hasRetryCnt()) {
                        setRetryCnt(retryInfo.getRetryCnt());
                    }
                    if (retryInfo.hasPkgId()) {
                        setPkgId(retryInfo.getPkgId());
                    }
                    mergeUnknownFields(retryInfo.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                RetryInfo retryInfo;
                RetryInfo retryInfo2;
                try {
                    RetryInfo retryInfo3 = (RetryInfo) RetryInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (retryInfo3 != null) {
                        mergeFrom(retryInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    retryInfo2 = (RetryInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    retryInfo = retryInfo2;
                    th = th2;
                }
                if (retryInfo != null) {
                    mergeFrom(retryInfo);
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

            public boolean hasRetryCnt() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getRetryCnt() {
                return this.retryCnt_;
            }

            public Builder setRetryCnt(int i) {
                this.bitField0_ |= 2;
                this.retryCnt_ = i;
                onChanged();
                return this;
            }

            public Builder clearRetryCnt() {
                this.bitField0_ &= -3;
                this.retryCnt_ = 0;
                onChanged();
                return this;
            }

            public boolean hasPkgId() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getPkgId() {
                return this.pkgId_;
            }

            public Builder setPkgId(long j) {
                this.bitField0_ |= 4;
                this.pkgId_ = j;
                onChanged();
                return this;
            }

            public Builder clearPkgId() {
                this.bitField0_ &= -5;
                this.pkgId_ = 0;
                onChanged();
                return this;
            }
        }

        private RetryInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private RetryInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static RetryInfo getDefaultInstance() {
            return defaultInstance;
        }

        public RetryInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private RetryInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 16:
                            this.bitField0_ |= 2;
                            this.retryCnt_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.pkgId_ = codedInputStream.readUInt64();
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
            return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_RetryInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(RetryInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<RetryInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasFlag() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getFlag() {
            return this.flag_;
        }

        public boolean hasRetryCnt() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getRetryCnt() {
            return this.retryCnt_;
        }

        public boolean hasPkgId() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getPkgId() {
            return this.pkgId_;
        }

        private void initFields() {
            this.flag_ = 0;
            this.retryCnt_ = 0;
            this.pkgId_ = 0;
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
                codedOutputStream.writeUInt32(2, this.retryCnt_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.pkgId_);
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
                i2 += CodedOutputStream.computeUInt32Size(2, this.retryCnt_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt64Size(3, this.pkgId_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static RetryInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (RetryInfo) PARSER.parseFrom(byteString);
        }

        public static RetryInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (RetryInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static RetryInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (RetryInfo) PARSER.parseFrom(bArr);
        }

        public static RetryInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (RetryInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static RetryInfo parseFrom(InputStream inputStream) throws IOException {
            return (RetryInfo) PARSER.parseFrom(inputStream);
        }

        public static RetryInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (RetryInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static RetryInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RetryInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static RetryInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (RetryInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static RetryInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (RetryInfo) PARSER.parseFrom(codedInputStream);
        }

        public static RetryInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (RetryInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(RetryInfo retryInfo) {
            return newBuilder().mergeFrom(retryInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface RetryInfoOrBuilder extends MessageOrBuilder {
        int getFlag();

        long getPkgId();

        int getRetryCnt();

        boolean hasFlag();

        boolean hasPkgId();

        boolean hasRetryCnt();
    }

    public static final class TokenInfo extends GeneratedMessage implements TokenInfoOrBuilder {
        public static final int EXTKEY_FIELD_NUMBER = 3;
        public static final int KEY_FIELD_NUMBER = 2;
        public static Parser<TokenInfo> PARSER = new AbstractParser<TokenInfo>() {
            public TokenInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new TokenInfo(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TYPE_FIELD_NUMBER = 1;
        private static final TokenInfo defaultInstance = new TokenInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public List<ExtKeyInfo> extKey_;
        /* access modifiers changed from: private */
        public ByteString key_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int type_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements TokenInfoOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<ExtKeyInfo, Builder, ExtKeyInfoOrBuilder> extKeyBuilder_;
            private List<ExtKeyInfo> extKey_;
            private ByteString key_;
            private int type_;

            public static final Descriptor getDescriptor() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(TokenInfo.class, Builder.class);
            }

            private Builder() {
                this.key_ = ByteString.EMPTY;
                this.extKey_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.key_ = ByteString.EMPTY;
                this.extKey_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (TokenInfo.alwaysUseFieldBuilders) {
                    getExtKeyFieldBuilder();
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
                this.key_ = ByteString.EMPTY;
                this.bitField0_ &= -3;
                if (this.extKeyBuilder_ == null) {
                    this.extKey_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                } else {
                    this.extKeyBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_descriptor;
            }

            public TokenInfo getDefaultInstanceForType() {
                return TokenInfo.getDefaultInstance();
            }

            public TokenInfo build() {
                TokenInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public TokenInfo buildPartial() {
                int i = 1;
                TokenInfo tokenInfo = new TokenInfo((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                tokenInfo.type_ = this.type_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                tokenInfo.key_ = this.key_;
                if (this.extKeyBuilder_ == null) {
                    if ((this.bitField0_ & 4) == 4) {
                        this.extKey_ = Collections.unmodifiableList(this.extKey_);
                        this.bitField0_ &= -5;
                    }
                    tokenInfo.extKey_ = this.extKey_;
                } else {
                    tokenInfo.extKey_ = this.extKeyBuilder_.build();
                }
                tokenInfo.bitField0_ = i;
                onBuilt();
                return tokenInfo;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof TokenInfo) {
                    return mergeFrom((TokenInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(TokenInfo tokenInfo) {
                RepeatedFieldBuilder<ExtKeyInfo, Builder, ExtKeyInfoOrBuilder> repeatedFieldBuilder = null;
                if (tokenInfo != TokenInfo.getDefaultInstance()) {
                    if (tokenInfo.hasType()) {
                        setType(tokenInfo.getType());
                    }
                    if (tokenInfo.hasKey()) {
                        setKey(tokenInfo.getKey());
                    }
                    if (this.extKeyBuilder_ == null) {
                        if (!tokenInfo.extKey_.isEmpty()) {
                            if (this.extKey_.isEmpty()) {
                                this.extKey_ = tokenInfo.extKey_;
                                this.bitField0_ &= -5;
                            } else {
                                ensureExtKeyIsMutable();
                                this.extKey_.addAll(tokenInfo.extKey_);
                            }
                            onChanged();
                        }
                    } else if (!tokenInfo.extKey_.isEmpty()) {
                        if (this.extKeyBuilder_.isEmpty()) {
                            this.extKeyBuilder_.dispose();
                            this.extKeyBuilder_ = null;
                            this.extKey_ = tokenInfo.extKey_;
                            this.bitField0_ &= -5;
                            if (TokenInfo.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getExtKeyFieldBuilder();
                            }
                            this.extKeyBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.extKeyBuilder_.addAllMessages(tokenInfo.extKey_);
                        }
                    }
                    mergeUnknownFields(tokenInfo.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                TokenInfo tokenInfo;
                TokenInfo tokenInfo2;
                try {
                    TokenInfo tokenInfo3 = (TokenInfo) TokenInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (tokenInfo3 != null) {
                        mergeFrom(tokenInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    tokenInfo2 = (TokenInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    tokenInfo = tokenInfo2;
                    th = th2;
                }
                if (tokenInfo != null) {
                    mergeFrom(tokenInfo);
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

            public boolean hasKey() {
                return (this.bitField0_ & 2) == 2;
            }

            public ByteString getKey() {
                return this.key_;
            }

            public Builder setKey(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.key_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearKey() {
                this.bitField0_ &= -3;
                this.key_ = TokenInfo.getDefaultInstance().getKey();
                onChanged();
                return this;
            }

            private void ensureExtKeyIsMutable() {
                if ((this.bitField0_ & 4) != 4) {
                    this.extKey_ = new ArrayList(this.extKey_);
                    this.bitField0_ |= 4;
                }
            }

            public List<ExtKeyInfo> getExtKeyList() {
                if (this.extKeyBuilder_ == null) {
                    return Collections.unmodifiableList(this.extKey_);
                }
                return this.extKeyBuilder_.getMessageList();
            }

            public int getExtKeyCount() {
                if (this.extKeyBuilder_ == null) {
                    return this.extKey_.size();
                }
                return this.extKeyBuilder_.getCount();
            }

            public ExtKeyInfo getExtKey(int i) {
                if (this.extKeyBuilder_ == null) {
                    return (ExtKeyInfo) this.extKey_.get(i);
                }
                return (ExtKeyInfo) this.extKeyBuilder_.getMessage(i);
            }

            public Builder setExtKey(int i, ExtKeyInfo extKeyInfo) {
                if (this.extKeyBuilder_ != null) {
                    this.extKeyBuilder_.setMessage(i, extKeyInfo);
                } else if (extKeyInfo == null) {
                    throw new NullPointerException();
                } else {
                    ensureExtKeyIsMutable();
                    this.extKey_.set(i, extKeyInfo);
                    onChanged();
                }
                return this;
            }

            public Builder setExtKey(int i, Builder builder) {
                if (this.extKeyBuilder_ == null) {
                    ensureExtKeyIsMutable();
                    this.extKey_.set(i, builder.build());
                    onChanged();
                } else {
                    this.extKeyBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addExtKey(ExtKeyInfo extKeyInfo) {
                if (this.extKeyBuilder_ != null) {
                    this.extKeyBuilder_.addMessage(extKeyInfo);
                } else if (extKeyInfo == null) {
                    throw new NullPointerException();
                } else {
                    ensureExtKeyIsMutable();
                    this.extKey_.add(extKeyInfo);
                    onChanged();
                }
                return this;
            }

            public Builder addExtKey(int i, ExtKeyInfo extKeyInfo) {
                if (this.extKeyBuilder_ != null) {
                    this.extKeyBuilder_.addMessage(i, extKeyInfo);
                } else if (extKeyInfo == null) {
                    throw new NullPointerException();
                } else {
                    ensureExtKeyIsMutable();
                    this.extKey_.add(i, extKeyInfo);
                    onChanged();
                }
                return this;
            }

            public Builder addExtKey(Builder builder) {
                if (this.extKeyBuilder_ == null) {
                    ensureExtKeyIsMutable();
                    this.extKey_.add(builder.build());
                    onChanged();
                } else {
                    this.extKeyBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addExtKey(int i, Builder builder) {
                if (this.extKeyBuilder_ == null) {
                    ensureExtKeyIsMutable();
                    this.extKey_.add(i, builder.build());
                    onChanged();
                } else {
                    this.extKeyBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllExtKey(Iterable<? extends ExtKeyInfo> iterable) {
                if (this.extKeyBuilder_ == null) {
                    ensureExtKeyIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.extKey_);
                    onChanged();
                } else {
                    this.extKeyBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearExtKey() {
                if (this.extKeyBuilder_ == null) {
                    this.extKey_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    this.extKeyBuilder_.clear();
                }
                return this;
            }

            public Builder removeExtKey(int i) {
                if (this.extKeyBuilder_ == null) {
                    ensureExtKeyIsMutable();
                    this.extKey_.remove(i);
                    onChanged();
                } else {
                    this.extKeyBuilder_.remove(i);
                }
                return this;
            }

            public Builder getExtKeyBuilder(int i) {
                return (Builder) getExtKeyFieldBuilder().getBuilder(i);
            }

            public ExtKeyInfoOrBuilder getExtKeyOrBuilder(int i) {
                if (this.extKeyBuilder_ == null) {
                    return (ExtKeyInfoOrBuilder) this.extKey_.get(i);
                }
                return (ExtKeyInfoOrBuilder) this.extKeyBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends ExtKeyInfoOrBuilder> getExtKeyOrBuilderList() {
                if (this.extKeyBuilder_ != null) {
                    return this.extKeyBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.extKey_);
            }

            public Builder addExtKeyBuilder() {
                return (Builder) getExtKeyFieldBuilder().addBuilder(ExtKeyInfo.getDefaultInstance());
            }

            public Builder addExtKeyBuilder(int i) {
                return (Builder) getExtKeyFieldBuilder().addBuilder(i, ExtKeyInfo.getDefaultInstance());
            }

            public List<Builder> getExtKeyBuilderList() {
                return getExtKeyFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<ExtKeyInfo, Builder, ExtKeyInfoOrBuilder> getExtKeyFieldBuilder() {
                if (this.extKeyBuilder_ == null) {
                    this.extKeyBuilder_ = new RepeatedFieldBuilder<>(this.extKey_, (this.bitField0_ & 4) == 4, getParentForChildren(), isClean());
                    this.extKey_ = null;
                }
                return this.extKeyBuilder_;
            }
        }

        private TokenInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private TokenInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static TokenInfo getDefaultInstance() {
            return defaultInstance;
        }

        public TokenInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private TokenInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.type_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            this.bitField0_ |= 2;
                            this.key_ = codedInputStream.readBytes();
                            break;
                        case 26:
                            if (!(z2 & true)) {
                                this.extKey_ = new ArrayList();
                                z2 |= true;
                            }
                            this.extKey_.add(codedInputStream.readMessage(ExtKeyInfo.PARSER, extensionRegistryLite));
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
                        this.extKey_ = Collections.unmodifiableList(this.extKey_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 & true) {
                this.extKey_ = Collections.unmodifiableList(this.extKey_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_TokenInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(TokenInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<TokenInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasType() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getType() {
            return this.type_;
        }

        public boolean hasKey() {
            return (this.bitField0_ & 2) == 2;
        }

        public ByteString getKey() {
            return this.key_;
        }

        public List<ExtKeyInfo> getExtKeyList() {
            return this.extKey_;
        }

        public List<? extends ExtKeyInfoOrBuilder> getExtKeyOrBuilderList() {
            return this.extKey_;
        }

        public int getExtKeyCount() {
            return this.extKey_.size();
        }

        public ExtKeyInfo getExtKey(int i) {
            return (ExtKeyInfo) this.extKey_.get(i);
        }

        public ExtKeyInfoOrBuilder getExtKeyOrBuilder(int i) {
            return (ExtKeyInfoOrBuilder) this.extKey_.get(i);
        }

        private void initFields() {
            this.type_ = 0;
            this.key_ = ByteString.EMPTY;
            this.extKey_ = Collections.emptyList();
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
                codedOutputStream.writeUInt32(1, this.type_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, this.key_);
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.extKey_.size()) {
                    codedOutputStream.writeMessage(3, (MessageLite) this.extKey_.get(i2));
                    i = i2 + 1;
                } else {
                    getUnknownFields().writeTo(codedOutputStream);
                    return;
                }
            }
        }

        public int getSerializedSize() {
            int i;
            int i2 = 0;
            int i3 = this.memoizedSerializedSize;
            if (i3 != -1) {
                return i3;
            }
            if ((this.bitField0_ & 1) == 1) {
                i = CodedOutputStream.computeUInt32Size(1, this.type_) + 0;
            } else {
                i = 0;
            }
            if ((this.bitField0_ & 2) == 2) {
                i += CodedOutputStream.computeBytesSize(2, this.key_);
            }
            while (true) {
                int i4 = i;
                if (i2 < this.extKey_.size()) {
                    i = CodedOutputStream.computeMessageSize(3, (MessageLite) this.extKey_.get(i2)) + i4;
                    i2++;
                } else {
                    int serializedSize = getUnknownFields().getSerializedSize() + i4;
                    this.memoizedSerializedSize = serializedSize;
                    return serializedSize;
                }
            }
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static TokenInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (TokenInfo) PARSER.parseFrom(byteString);
        }

        public static TokenInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (TokenInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static TokenInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (TokenInfo) PARSER.parseFrom(bArr);
        }

        public static TokenInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (TokenInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static TokenInfo parseFrom(InputStream inputStream) throws IOException {
            return (TokenInfo) PARSER.parseFrom(inputStream);
        }

        public static TokenInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TokenInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static TokenInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TokenInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static TokenInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TokenInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static TokenInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (TokenInfo) PARSER.parseFrom(codedInputStream);
        }

        public static TokenInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (TokenInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(TokenInfo tokenInfo) {
            return newBuilder().mergeFrom(tokenInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface TokenInfoOrBuilder extends MessageOrBuilder {
        ExtKeyInfo getExtKey(int i);

        int getExtKeyCount();

        List<ExtKeyInfo> getExtKeyList();

        ExtKeyInfoOrBuilder getExtKeyOrBuilder(int i);

        List<? extends ExtKeyInfoOrBuilder> getExtKeyOrBuilderList();

        ByteString getKey();

        int getType();

        boolean hasKey();

        boolean hasType();
    }

    public enum TokenType implements ProtocolMessageEnum {
        MNS_TOKEN_TYPE_NULL(0, 0);
        
        public static final int MNS_TOKEN_TYPE_NULL_VALUE = 0;
        private static final TokenType[] VALUES = null;
        private static EnumLiteMap<TokenType> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<TokenType>() {
                public TokenType findValueByNumber(int i) {
                    return TokenType.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static TokenType valueOf(int i) {
            switch (i) {
                case 0:
                    return MNS_TOKEN_TYPE_NULL;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<TokenType> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) UpstreamPacketProto.getDescriptor().getEnumTypes().get(0);
        }

        public static TokenType valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private TokenType(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    public static final class UpstreamPacket extends GeneratedMessage implements UpstreamPacketOrBuilder {
        public static final int APPID_FIELD_NUMBER = 2;
        public static final int BUSIBUFF_FIELD_NUMBER = 9;
        public static final int BUSICONTROL_FIELD_NUMBER = 14;
        public static final int DEVICEINFO_FIELD_NUMBER = 6;
        public static final int EXTRA_FIELD_NUMBER = 10;
        public static final int FLAG_FIELD_NUMBER = 11;
        public static final int GID_FIELD_NUMBER = 16;
        public static final int IPINFO_FIELD_NUMBER = 8;
        public static final int MIUID_FIELD_NUMBER = 15;
        public static final int MIUIN_FIELD_NUMBER = 3;
        public static Parser<UpstreamPacket> PARSER = new AbstractParser<UpstreamPacket>() {
            public UpstreamPacket parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new UpstreamPacket(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RETRYINFO_FIELD_NUMBER = 13;
        public static final int SEQ_FIELD_NUMBER = 1;
        public static final int SERVICECMD_FIELD_NUMBER = 5;
        public static final int SESSIONID_FIELD_NUMBER = 12;
        public static final int TOKEN_FIELD_NUMBER = 7;
        public static final int UA_FIELD_NUMBER = 4;
        private static final UpstreamPacket defaultInstance = new UpstreamPacket(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appId_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString busiBuff_;
        /* access modifiers changed from: private */
        public BusiControl busiControl_;
        /* access modifiers changed from: private */
        public ByteString deviceInfo_;
        /* access modifiers changed from: private */
        public ByteString extra_;
        /* access modifiers changed from: private */
        public int flag_;
        /* access modifiers changed from: private */
        public Object gid_;
        /* access modifiers changed from: private */
        public ClientIpInfo ipInfo_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object miUid_;
        /* access modifiers changed from: private */
        public long miUin_;
        /* access modifiers changed from: private */
        public RetryInfo retryInfo_;
        /* access modifiers changed from: private */
        public int seq_;
        /* access modifiers changed from: private */
        public Object serviceCmd_;
        /* access modifiers changed from: private */
        public int sessionId_;
        /* access modifiers changed from: private */
        public TokenInfo token_;
        /* access modifiers changed from: private */
        public Object ua_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements UpstreamPacketOrBuilder {
            private int appId_;
            private int bitField0_;
            private ByteString busiBuff_;
            private SingleFieldBuilder<BusiControl, Builder, BusiControlOrBuilder> busiControlBuilder_;
            private BusiControl busiControl_;
            private ByteString deviceInfo_;
            private ByteString extra_;
            private int flag_;
            private Object gid_;
            private SingleFieldBuilder<ClientIpInfo, Builder, ClientIpInfoOrBuilder> ipInfoBuilder_;
            private ClientIpInfo ipInfo_;
            private Object miUid_;
            private long miUin_;
            private SingleFieldBuilder<RetryInfo, Builder, RetryInfoOrBuilder> retryInfoBuilder_;
            private RetryInfo retryInfo_;
            private int seq_;
            private Object serviceCmd_;
            private int sessionId_;
            private SingleFieldBuilder<TokenInfo, Builder, TokenInfoOrBuilder> tokenBuilder_;
            private TokenInfo token_;
            private Object ua_;

            public static final Descriptor getDescriptor() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_fieldAccessorTable.ensureFieldAccessorsInitialized(UpstreamPacket.class, Builder.class);
            }

            private Builder() {
                this.ua_ = "";
                this.serviceCmd_ = "";
                this.deviceInfo_ = ByteString.EMPTY;
                this.token_ = TokenInfo.getDefaultInstance();
                this.ipInfo_ = ClientIpInfo.getDefaultInstance();
                this.busiBuff_ = ByteString.EMPTY;
                this.extra_ = ByteString.EMPTY;
                this.retryInfo_ = RetryInfo.getDefaultInstance();
                this.busiControl_ = BusiControl.getDefaultInstance();
                this.miUid_ = "";
                this.gid_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.ua_ = "";
                this.serviceCmd_ = "";
                this.deviceInfo_ = ByteString.EMPTY;
                this.token_ = TokenInfo.getDefaultInstance();
                this.ipInfo_ = ClientIpInfo.getDefaultInstance();
                this.busiBuff_ = ByteString.EMPTY;
                this.extra_ = ByteString.EMPTY;
                this.retryInfo_ = RetryInfo.getDefaultInstance();
                this.busiControl_ = BusiControl.getDefaultInstance();
                this.miUid_ = "";
                this.gid_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (UpstreamPacket.alwaysUseFieldBuilders) {
                    getTokenFieldBuilder();
                    getIpInfoFieldBuilder();
                    getRetryInfoFieldBuilder();
                    getBusiControlFieldBuilder();
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
                this.appId_ = 0;
                this.bitField0_ &= -3;
                this.miUin_ = 0;
                this.bitField0_ &= -5;
                this.ua_ = "";
                this.bitField0_ &= -9;
                this.serviceCmd_ = "";
                this.bitField0_ &= -17;
                this.deviceInfo_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                if (this.tokenBuilder_ == null) {
                    this.token_ = TokenInfo.getDefaultInstance();
                } else {
                    this.tokenBuilder_.clear();
                }
                this.bitField0_ &= -65;
                if (this.ipInfoBuilder_ == null) {
                    this.ipInfo_ = ClientIpInfo.getDefaultInstance();
                } else {
                    this.ipInfoBuilder_.clear();
                }
                this.bitField0_ &= -129;
                this.busiBuff_ = ByteString.EMPTY;
                this.bitField0_ &= -257;
                this.extra_ = ByteString.EMPTY;
                this.bitField0_ &= -513;
                this.flag_ = 0;
                this.bitField0_ &= -1025;
                this.sessionId_ = 0;
                this.bitField0_ &= -2049;
                if (this.retryInfoBuilder_ == null) {
                    this.retryInfo_ = RetryInfo.getDefaultInstance();
                } else {
                    this.retryInfoBuilder_.clear();
                }
                this.bitField0_ &= -4097;
                if (this.busiControlBuilder_ == null) {
                    this.busiControl_ = BusiControl.getDefaultInstance();
                } else {
                    this.busiControlBuilder_.clear();
                }
                this.bitField0_ &= -8193;
                this.miUid_ = "";
                this.bitField0_ &= -16385;
                this.gid_ = "";
                this.bitField0_ &= -32769;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_descriptor;
            }

            public UpstreamPacket getDefaultInstanceForType() {
                return UpstreamPacket.getDefaultInstance();
            }

            public UpstreamPacket build() {
                UpstreamPacket buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public UpstreamPacket buildPartial() {
                int i;
                int i2 = 1;
                UpstreamPacket upstreamPacket = new UpstreamPacket((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                upstreamPacket.seq_ = this.seq_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                upstreamPacket.appId_ = this.appId_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                upstreamPacket.miUin_ = this.miUin_;
                if ((i3 & 8) == 8) {
                    i2 |= 8;
                }
                upstreamPacket.ua_ = this.ua_;
                if ((i3 & 16) == 16) {
                    i2 |= 16;
                }
                upstreamPacket.serviceCmd_ = this.serviceCmd_;
                if ((i3 & 32) == 32) {
                    i2 |= 32;
                }
                upstreamPacket.deviceInfo_ = this.deviceInfo_;
                if ((i3 & 64) == 64) {
                    i = i2 | 64;
                } else {
                    i = i2;
                }
                if (this.tokenBuilder_ == null) {
                    upstreamPacket.token_ = this.token_;
                } else {
                    upstreamPacket.token_ = (TokenInfo) this.tokenBuilder_.build();
                }
                if ((i3 & 128) == 128) {
                    i |= 128;
                }
                if (this.ipInfoBuilder_ == null) {
                    upstreamPacket.ipInfo_ = this.ipInfo_;
                } else {
                    upstreamPacket.ipInfo_ = (ClientIpInfo) this.ipInfoBuilder_.build();
                }
                if ((i3 & 256) == 256) {
                    i |= 256;
                }
                upstreamPacket.busiBuff_ = this.busiBuff_;
                if ((i3 & 512) == 512) {
                    i |= 512;
                }
                upstreamPacket.extra_ = this.extra_;
                if ((i3 & 1024) == 1024) {
                    i |= 1024;
                }
                upstreamPacket.flag_ = this.flag_;
                if ((i3 & 2048) == 2048) {
                    i |= 2048;
                }
                upstreamPacket.sessionId_ = this.sessionId_;
                if ((i3 & 4096) == 4096) {
                    i |= 4096;
                }
                if (this.retryInfoBuilder_ == null) {
                    upstreamPacket.retryInfo_ = this.retryInfo_;
                } else {
                    upstreamPacket.retryInfo_ = (RetryInfo) this.retryInfoBuilder_.build();
                }
                if ((i3 & 8192) == 8192) {
                    i |= 8192;
                }
                if (this.busiControlBuilder_ == null) {
                    upstreamPacket.busiControl_ = this.busiControl_;
                } else {
                    upstreamPacket.busiControl_ = (BusiControl) this.busiControlBuilder_.build();
                }
                if ((i3 & 16384) == 16384) {
                    i |= 16384;
                }
                upstreamPacket.miUid_ = this.miUid_;
                if ((i3 & 32768) == 32768) {
                    i |= 32768;
                }
                upstreamPacket.gid_ = this.gid_;
                upstreamPacket.bitField0_ = i;
                onBuilt();
                return upstreamPacket;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof UpstreamPacket) {
                    return mergeFrom((UpstreamPacket) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(UpstreamPacket upstreamPacket) {
                if (upstreamPacket != UpstreamPacket.getDefaultInstance()) {
                    if (upstreamPacket.hasSeq()) {
                        setSeq(upstreamPacket.getSeq());
                    }
                    if (upstreamPacket.hasAppId()) {
                        setAppId(upstreamPacket.getAppId());
                    }
                    if (upstreamPacket.hasMiUin()) {
                        setMiUin(upstreamPacket.getMiUin());
                    }
                    if (upstreamPacket.hasUa()) {
                        this.bitField0_ |= 8;
                        this.ua_ = upstreamPacket.ua_;
                        onChanged();
                    }
                    if (upstreamPacket.hasServiceCmd()) {
                        this.bitField0_ |= 16;
                        this.serviceCmd_ = upstreamPacket.serviceCmd_;
                        onChanged();
                    }
                    if (upstreamPacket.hasDeviceInfo()) {
                        setDeviceInfo(upstreamPacket.getDeviceInfo());
                    }
                    if (upstreamPacket.hasToken()) {
                        mergeToken(upstreamPacket.getToken());
                    }
                    if (upstreamPacket.hasIpInfo()) {
                        mergeIpInfo(upstreamPacket.getIpInfo());
                    }
                    if (upstreamPacket.hasBusiBuff()) {
                        setBusiBuff(upstreamPacket.getBusiBuff());
                    }
                    if (upstreamPacket.hasExtra()) {
                        setExtra(upstreamPacket.getExtra());
                    }
                    if (upstreamPacket.hasFlag()) {
                        setFlag(upstreamPacket.getFlag());
                    }
                    if (upstreamPacket.hasSessionId()) {
                        setSessionId(upstreamPacket.getSessionId());
                    }
                    if (upstreamPacket.hasRetryInfo()) {
                        mergeRetryInfo(upstreamPacket.getRetryInfo());
                    }
                    if (upstreamPacket.hasBusiControl()) {
                        mergeBusiControl(upstreamPacket.getBusiControl());
                    }
                    if (upstreamPacket.hasMiUid()) {
                        this.bitField0_ |= 16384;
                        this.miUid_ = upstreamPacket.miUid_;
                        onChanged();
                    }
                    if (upstreamPacket.hasGid()) {
                        this.bitField0_ |= 32768;
                        this.gid_ = upstreamPacket.gid_;
                        onChanged();
                    }
                    mergeUnknownFields(upstreamPacket.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                UpstreamPacket upstreamPacket;
                UpstreamPacket upstreamPacket2;
                try {
                    UpstreamPacket upstreamPacket3 = (UpstreamPacket) UpstreamPacket.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (upstreamPacket3 != null) {
                        mergeFrom(upstreamPacket3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    upstreamPacket2 = (UpstreamPacket) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    upstreamPacket = upstreamPacket2;
                    th = th2;
                }
                if (upstreamPacket != null) {
                    mergeFrom(upstreamPacket);
                }
                throw th;
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

            public boolean hasAppId() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getAppId() {
                return this.appId_;
            }

            public Builder setAppId(int i) {
                this.bitField0_ |= 2;
                this.appId_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppId() {
                this.bitField0_ &= -3;
                this.appId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMiUin() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getMiUin() {
                return this.miUin_;
            }

            public Builder setMiUin(long j) {
                this.bitField0_ |= 4;
                this.miUin_ = j;
                onChanged();
                return this;
            }

            public Builder clearMiUin() {
                this.bitField0_ &= -5;
                this.miUin_ = 0;
                onChanged();
                return this;
            }

            public boolean hasUa() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getUa() {
                Object obj = this.ua_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.ua_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getUaBytes() {
                Object obj = this.ua_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ua_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setUa(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.ua_ = str;
                onChanged();
                return this;
            }

            public Builder clearUa() {
                this.bitField0_ &= -9;
                this.ua_ = UpstreamPacket.getDefaultInstance().getUa();
                onChanged();
                return this;
            }

            public Builder setUaBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.ua_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasServiceCmd() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getServiceCmd() {
                Object obj = this.serviceCmd_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.serviceCmd_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getServiceCmdBytes() {
                Object obj = this.serviceCmd_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.serviceCmd_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setServiceCmd(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.serviceCmd_ = str;
                onChanged();
                return this;
            }

            public Builder clearServiceCmd() {
                this.bitField0_ &= -17;
                this.serviceCmd_ = UpstreamPacket.getDefaultInstance().getServiceCmd();
                onChanged();
                return this;
            }

            public Builder setServiceCmdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.serviceCmd_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasDeviceInfo() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getDeviceInfo() {
                return this.deviceInfo_;
            }

            public Builder setDeviceInfo(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.deviceInfo_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearDeviceInfo() {
                this.bitField0_ &= -33;
                this.deviceInfo_ = UpstreamPacket.getDefaultInstance().getDeviceInfo();
                onChanged();
                return this;
            }

            public boolean hasToken() {
                return (this.bitField0_ & 64) == 64;
            }

            public TokenInfo getToken() {
                if (this.tokenBuilder_ == null) {
                    return this.token_;
                }
                return (TokenInfo) this.tokenBuilder_.getMessage();
            }

            public Builder setToken(TokenInfo tokenInfo) {
                if (this.tokenBuilder_ != null) {
                    this.tokenBuilder_.setMessage(tokenInfo);
                } else if (tokenInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.token_ = tokenInfo;
                    onChanged();
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder setToken(Builder builder) {
                if (this.tokenBuilder_ == null) {
                    this.token_ = builder.build();
                    onChanged();
                } else {
                    this.tokenBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder mergeToken(TokenInfo tokenInfo) {
                if (this.tokenBuilder_ == null) {
                    if ((this.bitField0_ & 64) != 64 || this.token_ == TokenInfo.getDefaultInstance()) {
                        this.token_ = tokenInfo;
                    } else {
                        this.token_ = TokenInfo.newBuilder(this.token_).mergeFrom(tokenInfo).buildPartial();
                    }
                    onChanged();
                } else {
                    this.tokenBuilder_.mergeFrom(tokenInfo);
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder clearToken() {
                if (this.tokenBuilder_ == null) {
                    this.token_ = TokenInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.tokenBuilder_.clear();
                }
                this.bitField0_ &= -65;
                return this;
            }

            public Builder getTokenBuilder() {
                this.bitField0_ |= 64;
                onChanged();
                return (Builder) getTokenFieldBuilder().getBuilder();
            }

            public TokenInfoOrBuilder getTokenOrBuilder() {
                if (this.tokenBuilder_ != null) {
                    return (TokenInfoOrBuilder) this.tokenBuilder_.getMessageOrBuilder();
                }
                return this.token_;
            }

            private SingleFieldBuilder<TokenInfo, Builder, TokenInfoOrBuilder> getTokenFieldBuilder() {
                if (this.tokenBuilder_ == null) {
                    this.tokenBuilder_ = new SingleFieldBuilder<>(getToken(), getParentForChildren(), isClean());
                    this.token_ = null;
                }
                return this.tokenBuilder_;
            }

            public boolean hasIpInfo() {
                return (this.bitField0_ & 128) == 128;
            }

            public ClientIpInfo getIpInfo() {
                if (this.ipInfoBuilder_ == null) {
                    return this.ipInfo_;
                }
                return (ClientIpInfo) this.ipInfoBuilder_.getMessage();
            }

            public Builder setIpInfo(ClientIpInfo clientIpInfo) {
                if (this.ipInfoBuilder_ != null) {
                    this.ipInfoBuilder_.setMessage(clientIpInfo);
                } else if (clientIpInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.ipInfo_ = clientIpInfo;
                    onChanged();
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder setIpInfo(Builder builder) {
                if (this.ipInfoBuilder_ == null) {
                    this.ipInfo_ = builder.build();
                    onChanged();
                } else {
                    this.ipInfoBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder mergeIpInfo(ClientIpInfo clientIpInfo) {
                if (this.ipInfoBuilder_ == null) {
                    if ((this.bitField0_ & 128) != 128 || this.ipInfo_ == ClientIpInfo.getDefaultInstance()) {
                        this.ipInfo_ = clientIpInfo;
                    } else {
                        this.ipInfo_ = ClientIpInfo.newBuilder(this.ipInfo_).mergeFrom(clientIpInfo).buildPartial();
                    }
                    onChanged();
                } else {
                    this.ipInfoBuilder_.mergeFrom(clientIpInfo);
                }
                this.bitField0_ |= 128;
                return this;
            }

            public Builder clearIpInfo() {
                if (this.ipInfoBuilder_ == null) {
                    this.ipInfo_ = ClientIpInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.ipInfoBuilder_.clear();
                }
                this.bitField0_ &= -129;
                return this;
            }

            public Builder getIpInfoBuilder() {
                this.bitField0_ |= 128;
                onChanged();
                return (Builder) getIpInfoFieldBuilder().getBuilder();
            }

            public ClientIpInfoOrBuilder getIpInfoOrBuilder() {
                if (this.ipInfoBuilder_ != null) {
                    return (ClientIpInfoOrBuilder) this.ipInfoBuilder_.getMessageOrBuilder();
                }
                return this.ipInfo_;
            }

            private SingleFieldBuilder<ClientIpInfo, Builder, ClientIpInfoOrBuilder> getIpInfoFieldBuilder() {
                if (this.ipInfoBuilder_ == null) {
                    this.ipInfoBuilder_ = new SingleFieldBuilder<>(getIpInfo(), getParentForChildren(), isClean());
                    this.ipInfo_ = null;
                }
                return this.ipInfoBuilder_;
            }

            public boolean hasBusiBuff() {
                return (this.bitField0_ & 256) == 256;
            }

            public ByteString getBusiBuff() {
                return this.busiBuff_;
            }

            public Builder setBusiBuff(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.busiBuff_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearBusiBuff() {
                this.bitField0_ &= -257;
                this.busiBuff_ = UpstreamPacket.getDefaultInstance().getBusiBuff();
                onChanged();
                return this;
            }

            public boolean hasExtra() {
                return (this.bitField0_ & 512) == 512;
            }

            public ByteString getExtra() {
                return this.extra_;
            }

            public Builder setExtra(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 512;
                this.extra_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearExtra() {
                this.bitField0_ &= -513;
                this.extra_ = UpstreamPacket.getDefaultInstance().getExtra();
                onChanged();
                return this;
            }

            public boolean hasFlag() {
                return (this.bitField0_ & 1024) == 1024;
            }

            public int getFlag() {
                return this.flag_;
            }

            public Builder setFlag(int i) {
                this.bitField0_ |= 1024;
                this.flag_ = i;
                onChanged();
                return this;
            }

            public Builder clearFlag() {
                this.bitField0_ &= -1025;
                this.flag_ = 0;
                onChanged();
                return this;
            }

            public boolean hasSessionId() {
                return (this.bitField0_ & 2048) == 2048;
            }

            public int getSessionId() {
                return this.sessionId_;
            }

            public Builder setSessionId(int i) {
                this.bitField0_ |= 2048;
                this.sessionId_ = i;
                onChanged();
                return this;
            }

            public Builder clearSessionId() {
                this.bitField0_ &= -2049;
                this.sessionId_ = 0;
                onChanged();
                return this;
            }

            public boolean hasRetryInfo() {
                return (this.bitField0_ & 4096) == 4096;
            }

            public RetryInfo getRetryInfo() {
                if (this.retryInfoBuilder_ == null) {
                    return this.retryInfo_;
                }
                return (RetryInfo) this.retryInfoBuilder_.getMessage();
            }

            public Builder setRetryInfo(RetryInfo retryInfo) {
                if (this.retryInfoBuilder_ != null) {
                    this.retryInfoBuilder_.setMessage(retryInfo);
                } else if (retryInfo == null) {
                    throw new NullPointerException();
                } else {
                    this.retryInfo_ = retryInfo;
                    onChanged();
                }
                this.bitField0_ |= 4096;
                return this;
            }

            public Builder setRetryInfo(Builder builder) {
                if (this.retryInfoBuilder_ == null) {
                    this.retryInfo_ = builder.build();
                    onChanged();
                } else {
                    this.retryInfoBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 4096;
                return this;
            }

            public Builder mergeRetryInfo(RetryInfo retryInfo) {
                if (this.retryInfoBuilder_ == null) {
                    if ((this.bitField0_ & 4096) != 4096 || this.retryInfo_ == RetryInfo.getDefaultInstance()) {
                        this.retryInfo_ = retryInfo;
                    } else {
                        this.retryInfo_ = RetryInfo.newBuilder(this.retryInfo_).mergeFrom(retryInfo).buildPartial();
                    }
                    onChanged();
                } else {
                    this.retryInfoBuilder_.mergeFrom(retryInfo);
                }
                this.bitField0_ |= 4096;
                return this;
            }

            public Builder clearRetryInfo() {
                if (this.retryInfoBuilder_ == null) {
                    this.retryInfo_ = RetryInfo.getDefaultInstance();
                    onChanged();
                } else {
                    this.retryInfoBuilder_.clear();
                }
                this.bitField0_ &= -4097;
                return this;
            }

            public Builder getRetryInfoBuilder() {
                this.bitField0_ |= 4096;
                onChanged();
                return (Builder) getRetryInfoFieldBuilder().getBuilder();
            }

            public RetryInfoOrBuilder getRetryInfoOrBuilder() {
                if (this.retryInfoBuilder_ != null) {
                    return (RetryInfoOrBuilder) this.retryInfoBuilder_.getMessageOrBuilder();
                }
                return this.retryInfo_;
            }

            private SingleFieldBuilder<RetryInfo, Builder, RetryInfoOrBuilder> getRetryInfoFieldBuilder() {
                if (this.retryInfoBuilder_ == null) {
                    this.retryInfoBuilder_ = new SingleFieldBuilder<>(getRetryInfo(), getParentForChildren(), isClean());
                    this.retryInfo_ = null;
                }
                return this.retryInfoBuilder_;
            }

            public boolean hasBusiControl() {
                return (this.bitField0_ & 8192) == 8192;
            }

            public BusiControl getBusiControl() {
                if (this.busiControlBuilder_ == null) {
                    return this.busiControl_;
                }
                return (BusiControl) this.busiControlBuilder_.getMessage();
            }

            public Builder setBusiControl(BusiControl busiControl) {
                if (this.busiControlBuilder_ != null) {
                    this.busiControlBuilder_.setMessage(busiControl);
                } else if (busiControl == null) {
                    throw new NullPointerException();
                } else {
                    this.busiControl_ = busiControl;
                    onChanged();
                }
                this.bitField0_ |= 8192;
                return this;
            }

            public Builder setBusiControl(Builder builder) {
                if (this.busiControlBuilder_ == null) {
                    this.busiControl_ = builder.build();
                    onChanged();
                } else {
                    this.busiControlBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 8192;
                return this;
            }

            public Builder mergeBusiControl(BusiControl busiControl) {
                if (this.busiControlBuilder_ == null) {
                    if ((this.bitField0_ & 8192) != 8192 || this.busiControl_ == BusiControl.getDefaultInstance()) {
                        this.busiControl_ = busiControl;
                    } else {
                        this.busiControl_ = BusiControl.newBuilder(this.busiControl_).mergeFrom(busiControl).buildPartial();
                    }
                    onChanged();
                } else {
                    this.busiControlBuilder_.mergeFrom(busiControl);
                }
                this.bitField0_ |= 8192;
                return this;
            }

            public Builder clearBusiControl() {
                if (this.busiControlBuilder_ == null) {
                    this.busiControl_ = BusiControl.getDefaultInstance();
                    onChanged();
                } else {
                    this.busiControlBuilder_.clear();
                }
                this.bitField0_ &= -8193;
                return this;
            }

            public Builder getBusiControlBuilder() {
                this.bitField0_ |= 8192;
                onChanged();
                return (Builder) getBusiControlFieldBuilder().getBuilder();
            }

            public BusiControlOrBuilder getBusiControlOrBuilder() {
                if (this.busiControlBuilder_ != null) {
                    return (BusiControlOrBuilder) this.busiControlBuilder_.getMessageOrBuilder();
                }
                return this.busiControl_;
            }

            private SingleFieldBuilder<BusiControl, Builder, BusiControlOrBuilder> getBusiControlFieldBuilder() {
                if (this.busiControlBuilder_ == null) {
                    this.busiControlBuilder_ = new SingleFieldBuilder<>(getBusiControl(), getParentForChildren(), isClean());
                    this.busiControl_ = null;
                }
                return this.busiControlBuilder_;
            }

            public boolean hasMiUid() {
                return (this.bitField0_ & 16384) == 16384;
            }

            public String getMiUid() {
                Object obj = this.miUid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.miUid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getMiUidBytes() {
                Object obj = this.miUid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.miUid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setMiUid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16384;
                this.miUid_ = str;
                onChanged();
                return this;
            }

            public Builder clearMiUid() {
                this.bitField0_ &= -16385;
                this.miUid_ = UpstreamPacket.getDefaultInstance().getMiUid();
                onChanged();
                return this;
            }

            public Builder setMiUidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16384;
                this.miUid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasGid() {
                return (this.bitField0_ & 32768) == 32768;
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
                this.bitField0_ |= 32768;
                this.gid_ = str;
                onChanged();
                return this;
            }

            public Builder clearGid() {
                this.bitField0_ &= -32769;
                this.gid_ = UpstreamPacket.getDefaultInstance().getGid();
                onChanged();
                return this;
            }

            public Builder setGidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32768;
                this.gid_ = byteString;
                onChanged();
                return this;
            }
        }

        private UpstreamPacket(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private UpstreamPacket(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static UpstreamPacket getDefaultInstance() {
            return defaultInstance;
        }

        public UpstreamPacket getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private UpstreamPacket(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            boolean z;
            Builder builder;
            Builder builder2;
            Builder builder3;
            Builder builder4;
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
                            this.seq_ = codedInputStream.readUInt32();
                            z = z2;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.appId_ = codedInputStream.readUInt32();
                            z = z2;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.miUin_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 34:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.ua_ = readBytes;
                            z = z2;
                            break;
                        case 42:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.serviceCmd_ = readBytes2;
                            z = z2;
                            break;
                        case 50:
                            this.bitField0_ |= 32;
                            this.deviceInfo_ = codedInputStream.readBytes();
                            z = z2;
                            break;
                        case 58:
                            if ((this.bitField0_ & 64) == 64) {
                                builder4 = this.token_.toBuilder();
                            } else {
                                builder4 = null;
                            }
                            this.token_ = (TokenInfo) codedInputStream.readMessage(TokenInfo.PARSER, extensionRegistryLite);
                            if (builder4 != null) {
                                builder4.mergeFrom(this.token_);
                                this.token_ = builder4.buildPartial();
                            }
                            this.bitField0_ |= 64;
                            z = z2;
                            break;
                        case 66:
                            if ((this.bitField0_ & 128) == 128) {
                                builder3 = this.ipInfo_.toBuilder();
                            } else {
                                builder3 = null;
                            }
                            this.ipInfo_ = (ClientIpInfo) codedInputStream.readMessage(ClientIpInfo.PARSER, extensionRegistryLite);
                            if (builder3 != null) {
                                builder3.mergeFrom(this.ipInfo_);
                                this.ipInfo_ = builder3.buildPartial();
                            }
                            this.bitField0_ |= 128;
                            z = z2;
                            break;
                        case 74:
                            this.bitField0_ |= 256;
                            this.busiBuff_ = codedInputStream.readBytes();
                            z = z2;
                            break;
                        case 82:
                            this.bitField0_ |= 512;
                            this.extra_ = codedInputStream.readBytes();
                            z = z2;
                            break;
                        case 88:
                            this.bitField0_ |= 1024;
                            this.flag_ = codedInputStream.readUInt32();
                            z = z2;
                            break;
                        case 96:
                            this.bitField0_ |= 2048;
                            this.sessionId_ = codedInputStream.readUInt32();
                            z = z2;
                            break;
                        case 106:
                            if ((this.bitField0_ & 4096) == 4096) {
                                builder2 = this.retryInfo_.toBuilder();
                            } else {
                                builder2 = null;
                            }
                            this.retryInfo_ = (RetryInfo) codedInputStream.readMessage(RetryInfo.PARSER, extensionRegistryLite);
                            if (builder2 != null) {
                                builder2.mergeFrom(this.retryInfo_);
                                this.retryInfo_ = builder2.buildPartial();
                            }
                            this.bitField0_ |= 4096;
                            z = z2;
                            break;
                        case 114:
                            if ((this.bitField0_ & 8192) == 8192) {
                                builder = this.busiControl_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.busiControl_ = (BusiControl) codedInputStream.readMessage(BusiControl.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.busiControl_);
                                this.busiControl_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 8192;
                            z = z2;
                            break;
                        case 122:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 16384;
                            this.miUid_ = readBytes3;
                            z = z2;
                            break;
                        case 130:
                            ByteString readBytes4 = codedInputStream.readBytes();
                            this.bitField0_ |= 32768;
                            this.gid_ = readBytes4;
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
            return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return UpstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_UpstreamPacket_fieldAccessorTable.ensureFieldAccessorsInitialized(UpstreamPacket.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<UpstreamPacket> getParserForType() {
            return PARSER;
        }

        public boolean hasSeq() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getSeq() {
            return this.seq_;
        }

        public boolean hasAppId() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getAppId() {
            return this.appId_;
        }

        public boolean hasMiUin() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getMiUin() {
            return this.miUin_;
        }

        public boolean hasUa() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getUa() {
            Object obj = this.ua_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.ua_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getUaBytes() {
            Object obj = this.ua_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ua_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasServiceCmd() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getServiceCmd() {
            Object obj = this.serviceCmd_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.serviceCmd_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getServiceCmdBytes() {
            Object obj = this.serviceCmd_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.serviceCmd_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasDeviceInfo() {
            return (this.bitField0_ & 32) == 32;
        }

        public ByteString getDeviceInfo() {
            return this.deviceInfo_;
        }

        public boolean hasToken() {
            return (this.bitField0_ & 64) == 64;
        }

        public TokenInfo getToken() {
            return this.token_;
        }

        public TokenInfoOrBuilder getTokenOrBuilder() {
            return this.token_;
        }

        public boolean hasIpInfo() {
            return (this.bitField0_ & 128) == 128;
        }

        public ClientIpInfo getIpInfo() {
            return this.ipInfo_;
        }

        public ClientIpInfoOrBuilder getIpInfoOrBuilder() {
            return this.ipInfo_;
        }

        public boolean hasBusiBuff() {
            return (this.bitField0_ & 256) == 256;
        }

        public ByteString getBusiBuff() {
            return this.busiBuff_;
        }

        public boolean hasExtra() {
            return (this.bitField0_ & 512) == 512;
        }

        public ByteString getExtra() {
            return this.extra_;
        }

        public boolean hasFlag() {
            return (this.bitField0_ & 1024) == 1024;
        }

        public int getFlag() {
            return this.flag_;
        }

        public boolean hasSessionId() {
            return (this.bitField0_ & 2048) == 2048;
        }

        public int getSessionId() {
            return this.sessionId_;
        }

        public boolean hasRetryInfo() {
            return (this.bitField0_ & 4096) == 4096;
        }

        public RetryInfo getRetryInfo() {
            return this.retryInfo_;
        }

        public RetryInfoOrBuilder getRetryInfoOrBuilder() {
            return this.retryInfo_;
        }

        public boolean hasBusiControl() {
            return (this.bitField0_ & 8192) == 8192;
        }

        public BusiControl getBusiControl() {
            return this.busiControl_;
        }

        public BusiControlOrBuilder getBusiControlOrBuilder() {
            return this.busiControl_;
        }

        public boolean hasMiUid() {
            return (this.bitField0_ & 16384) == 16384;
        }

        public String getMiUid() {
            Object obj = this.miUid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.miUid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getMiUidBytes() {
            Object obj = this.miUid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.miUid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasGid() {
            return (this.bitField0_ & 32768) == 32768;
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

        private void initFields() {
            this.seq_ = 0;
            this.appId_ = 0;
            this.miUin_ = 0;
            this.ua_ = "";
            this.serviceCmd_ = "";
            this.deviceInfo_ = ByteString.EMPTY;
            this.token_ = TokenInfo.getDefaultInstance();
            this.ipInfo_ = ClientIpInfo.getDefaultInstance();
            this.busiBuff_ = ByteString.EMPTY;
            this.extra_ = ByteString.EMPTY;
            this.flag_ = 0;
            this.sessionId_ = 0;
            this.retryInfo_ = RetryInfo.getDefaultInstance();
            this.busiControl_ = BusiControl.getDefaultInstance();
            this.miUid_ = "";
            this.gid_ = "";
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
                codedOutputStream.writeUInt32(1, this.seq_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.appId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt64(3, this.miUin_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getUaBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getServiceCmdBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, this.deviceInfo_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeMessage(7, this.token_);
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeMessage(8, this.ipInfo_);
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeBytes(9, this.busiBuff_);
            }
            if ((this.bitField0_ & 512) == 512) {
                codedOutputStream.writeBytes(10, this.extra_);
            }
            if ((this.bitField0_ & 1024) == 1024) {
                codedOutputStream.writeUInt32(11, this.flag_);
            }
            if ((this.bitField0_ & 2048) == 2048) {
                codedOutputStream.writeUInt32(12, this.sessionId_);
            }
            if ((this.bitField0_ & 4096) == 4096) {
                codedOutputStream.writeMessage(13, this.retryInfo_);
            }
            if ((this.bitField0_ & 8192) == 8192) {
                codedOutputStream.writeMessage(14, this.busiControl_);
            }
            if ((this.bitField0_ & 16384) == 16384) {
                codedOutputStream.writeBytes(15, getMiUidBytes());
            }
            if ((this.bitField0_ & 32768) == 32768) {
                codedOutputStream.writeBytes(16, getGidBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.seq_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.appId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt64Size(3, this.miUin_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getUaBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getServiceCmdBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(6, this.deviceInfo_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeMessageSize(7, this.token_);
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeMessageSize(8, this.ipInfo_);
            }
            if ((this.bitField0_ & 256) == 256) {
                i2 += CodedOutputStream.computeBytesSize(9, this.busiBuff_);
            }
            if ((this.bitField0_ & 512) == 512) {
                i2 += CodedOutputStream.computeBytesSize(10, this.extra_);
            }
            if ((this.bitField0_ & 1024) == 1024) {
                i2 += CodedOutputStream.computeUInt32Size(11, this.flag_);
            }
            if ((this.bitField0_ & 2048) == 2048) {
                i2 += CodedOutputStream.computeUInt32Size(12, this.sessionId_);
            }
            if ((this.bitField0_ & 4096) == 4096) {
                i2 += CodedOutputStream.computeMessageSize(13, this.retryInfo_);
            }
            if ((this.bitField0_ & 8192) == 8192) {
                i2 += CodedOutputStream.computeMessageSize(14, this.busiControl_);
            }
            if ((this.bitField0_ & 16384) == 16384) {
                i2 += CodedOutputStream.computeBytesSize(15, getMiUidBytes());
            }
            if ((this.bitField0_ & 32768) == 32768) {
                i2 += CodedOutputStream.computeBytesSize(16, getGidBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static UpstreamPacket parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (UpstreamPacket) PARSER.parseFrom(byteString);
        }

        public static UpstreamPacket parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UpstreamPacket) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UpstreamPacket parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (UpstreamPacket) PARSER.parseFrom(bArr);
        }

        public static UpstreamPacket parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (UpstreamPacket) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static UpstreamPacket parseFrom(InputStream inputStream) throws IOException {
            return (UpstreamPacket) PARSER.parseFrom(inputStream);
        }

        public static UpstreamPacket parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UpstreamPacket) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static UpstreamPacket parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UpstreamPacket) PARSER.parseDelimitedFrom(inputStream);
        }

        public static UpstreamPacket parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UpstreamPacket) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static UpstreamPacket parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (UpstreamPacket) PARSER.parseFrom(codedInputStream);
        }

        public static UpstreamPacket parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UpstreamPacket) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(UpstreamPacket upstreamPacket) {
            return newBuilder().mergeFrom(upstreamPacket);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface UpstreamPacketOrBuilder extends MessageOrBuilder {
        int getAppId();

        ByteString getBusiBuff();

        BusiControl getBusiControl();

        BusiControlOrBuilder getBusiControlOrBuilder();

        ByteString getDeviceInfo();

        ByteString getExtra();

        int getFlag();

        String getGid();

        ByteString getGidBytes();

        ClientIpInfo getIpInfo();

        ClientIpInfoOrBuilder getIpInfoOrBuilder();

        String getMiUid();

        ByteString getMiUidBytes();

        long getMiUin();

        RetryInfo getRetryInfo();

        RetryInfoOrBuilder getRetryInfoOrBuilder();

        int getSeq();

        String getServiceCmd();

        ByteString getServiceCmdBytes();

        int getSessionId();

        TokenInfo getToken();

        TokenInfoOrBuilder getTokenOrBuilder();

        String getUa();

        ByteString getUaBytes();

        boolean hasAppId();

        boolean hasBusiBuff();

        boolean hasBusiControl();

        boolean hasDeviceInfo();

        boolean hasExtra();

        boolean hasFlag();

        boolean hasGid();

        boolean hasIpInfo();

        boolean hasMiUid();

        boolean hasMiUin();

        boolean hasRetryInfo();

        boolean hasSeq();

        boolean hasServiceCmd();

        boolean hasSessionId();

        boolean hasToken();

        boolean hasUa();
    }

    private UpstreamPacketProto() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0012mns_upstream.proto\u0012\u001ecom.mi.milinkforgame.sdk.proto\"Å\u0003\n\u000eUpstreamPacket\u0012\u000b\n\u0003seq\u0018\u0001 \u0001(\r\u0012\r\n\u0005appId\u0018\u0002 \u0001(\r\u0012\r\n\u0005miUin\u0018\u0003 \u0001(\u0004\u0012\n\n\u0002ua\u0018\u0004 \u0001(\t\u0012\u0012\n\nserviceCmd\u0018\u0005 \u0001(\t\u0012\u0012\n\ndeviceInfo\u0018\u0006 \u0001(\f\u00128\n\u0005token\u0018\u0007 \u0001(\u000b2).com.mi.milinkforgame.sdk.proto.TokenInfo\u0012<\n\u0006ipInfo\u0018\b \u0001(\u000b2,.com.mi.milinkforgame.sdk.proto.ClientIpInfo\u0012\u0010\n\bbusiBuff\u0018\t \u0001(\f\u0012\r\n\u0005extra\u0018\n \u0001(\f\u0012\f\n\u0004flag\u0018\u000b \u0001(\r\u0012\u0011\n\tsessionId\u0018\f \u0001(\r\u0012<\n\tretryInfo\u0018\r \u0001(\u000b2).com.mi.milinkforgame.sdk.p", "roto.RetryInfo\u0012@\n\u000bbusiControl\u0018\u000e \u0001(\u000b2+.com.mi.milinkforgame.sdk.proto.BusiControl\u0012\r\n\u0005miUid\u0018\u000f \u0001(\t\u0012\u000b\n\u0003gid\u0018\u0010 \u0001(\t\"b\n\tTokenInfo\u0012\f\n\u0004type\u0018\u0001 \u0001(\r\u0012\u000b\n\u0003key\u0018\u0002 \u0001(\f\u0012:\n\u0006extKey\u0018\u0003 \u0003(\u000b2*.com.mi.milinkforgame.sdk.proto.ExtKeyInfo\"&\n\nExtKeyInfo\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\r\u0012\u000b\n\u0003val\u0018\u0002 \u0001(\f\"Z\n\fClientIpInfo\u0012\u000e\n\u0006ipType\u0018\u0001 \u0001(\r\u0012\u0012\n\nclientPort\u0018\u0002 \u0001(\r\u0012\u0012\n\nclientIpV4\u0018\u0003 \u0001(\r\u0012\u0012\n\nclientIpV6\u0018\u0004 \u0001(\f\":\n\tRetryInfo\u0012\f\n\u0004flag\u0018\u0001 \u0001(\r\u0012\u0010\n\bretryCnt\u0018\u0002 \u0001(\r\u0012\r\n\u0005pkgId\u0018\u0003 \u0001(\u0004", "\"M\n\u000bBusiControl\u0012\u0010\n\bcompFlag\u0018\u0001 \u0001(\r\u0012\u0015\n\rlenBeforeComp\u0018\u0002 \u0001(\u0004\u0012\u0015\n\risSupportComp\u0018\u0003 \u0001(\b*$\n\tTokenType\u0012\u0017\n\u0013MNS_TOKEN_TYPE_NULL\u0010\u0000B5\n\u001ecom.mi.milinkforgame.sdk.protoB\u0013UpstreamPacketProto"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                UpstreamPacketProto.descriptor = fileDescriptor;
                return null;
            }
        });
    }
}
