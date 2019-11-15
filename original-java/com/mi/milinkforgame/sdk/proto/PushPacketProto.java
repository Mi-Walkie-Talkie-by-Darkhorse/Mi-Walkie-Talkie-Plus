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
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;

public final class PushPacketProto {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_KickMessage_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_KickMessage_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_KickMessage_descriptor, new String[]{"Type", "Time", "Device"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_SimplePushData_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_SimplePushData_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_SimplePushData_descriptor, new String[]{"TomiUid", "Appid", "FrommiUid", "Cmd", "Pushdata"});

    public static final class KickMessage extends GeneratedMessage implements KickMessageOrBuilder {
        public static final int DEVICE_FIELD_NUMBER = 3;
        public static Parser<KickMessage> PARSER = new AbstractParser<KickMessage>() {
            public KickMessage parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new KickMessage(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TIME_FIELD_NUMBER = 2;
        public static final int TYPE_FIELD_NUMBER = 1;
        private static final KickMessage defaultInstance = new KickMessage(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object device_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int time_;
        /* access modifiers changed from: private */
        public int type_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements KickMessageOrBuilder {
            private int bitField0_;
            private Object device_;
            private int time_;
            private int type_;

            public static final Descriptor getDescriptor() {
                return PushPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_KickMessage_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return PushPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_KickMessage_fieldAccessorTable.ensureFieldAccessorsInitialized(KickMessage.class, Builder.class);
            }

            private Builder() {
                this.device_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.device_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (KickMessage.alwaysUseFieldBuilders) {
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
                this.time_ = 0;
                this.bitField0_ &= -3;
                this.device_ = "";
                this.bitField0_ &= -5;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return PushPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_KickMessage_descriptor;
            }

            public KickMessage getDefaultInstanceForType() {
                return KickMessage.getDefaultInstance();
            }

            public KickMessage build() {
                KickMessage buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public KickMessage buildPartial() {
                int i = 1;
                KickMessage kickMessage = new KickMessage((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                kickMessage.type_ = this.type_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                kickMessage.time_ = this.time_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                kickMessage.device_ = this.device_;
                kickMessage.bitField0_ = i;
                onBuilt();
                return kickMessage;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof KickMessage) {
                    return mergeFrom((KickMessage) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(KickMessage kickMessage) {
                if (kickMessage != KickMessage.getDefaultInstance()) {
                    if (kickMessage.hasType()) {
                        setType(kickMessage.getType());
                    }
                    if (kickMessage.hasTime()) {
                        setTime(kickMessage.getTime());
                    }
                    if (kickMessage.hasDevice()) {
                        this.bitField0_ |= 4;
                        this.device_ = kickMessage.device_;
                        onChanged();
                    }
                    mergeUnknownFields(kickMessage.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                KickMessage kickMessage;
                KickMessage kickMessage2;
                try {
                    KickMessage kickMessage3 = (KickMessage) KickMessage.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (kickMessage3 != null) {
                        mergeFrom(kickMessage3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    kickMessage2 = (KickMessage) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    kickMessage = kickMessage2;
                    th = th2;
                }
                if (kickMessage != null) {
                    mergeFrom(kickMessage);
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

            public boolean hasTime() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getTime() {
                return this.time_;
            }

            public Builder setTime(int i) {
                this.bitField0_ |= 2;
                this.time_ = i;
                onChanged();
                return this;
            }

            public Builder clearTime() {
                this.bitField0_ &= -3;
                this.time_ = 0;
                onChanged();
                return this;
            }

            public boolean hasDevice() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getDevice() {
                Object obj = this.device_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.device_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getDeviceBytes() {
                Object obj = this.device_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.device_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setDevice(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.device_ = str;
                onChanged();
                return this;
            }

            public Builder clearDevice() {
                this.bitField0_ &= -5;
                this.device_ = KickMessage.getDefaultInstance().getDevice();
                onChanged();
                return this;
            }

            public Builder setDeviceBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.device_ = byteString;
                onChanged();
                return this;
            }
        }

        private KickMessage(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private KickMessage(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static KickMessage getDefaultInstance() {
            return defaultInstance;
        }

        public KickMessage getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private KickMessage(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.type_ = codedInputStream.readUInt32();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.time_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.device_ = readBytes;
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
            return PushPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_KickMessage_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return PushPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_KickMessage_fieldAccessorTable.ensureFieldAccessorsInitialized(KickMessage.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<KickMessage> getParserForType() {
            return PARSER;
        }

        public boolean hasType() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getType() {
            return this.type_;
        }

        public boolean hasTime() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getTime() {
            return this.time_;
        }

        public boolean hasDevice() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getDevice() {
            Object obj = this.device_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.device_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getDeviceBytes() {
            Object obj = this.device_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.device_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.type_ = 0;
            this.time_ = 0;
            this.device_ = "";
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
                codedOutputStream.writeUInt32(2, this.time_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getDeviceBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.type_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.time_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getDeviceBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static KickMessage parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (KickMessage) PARSER.parseFrom(byteString);
        }

        public static KickMessage parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (KickMessage) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static KickMessage parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (KickMessage) PARSER.parseFrom(bArr);
        }

        public static KickMessage parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (KickMessage) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static KickMessage parseFrom(InputStream inputStream) throws IOException {
            return (KickMessage) PARSER.parseFrom(inputStream);
        }

        public static KickMessage parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (KickMessage) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static KickMessage parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (KickMessage) PARSER.parseDelimitedFrom(inputStream);
        }

        public static KickMessage parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (KickMessage) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static KickMessage parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (KickMessage) PARSER.parseFrom(codedInputStream);
        }

        public static KickMessage parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (KickMessage) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(KickMessage kickMessage) {
            return newBuilder().mergeFrom(kickMessage);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface KickMessageOrBuilder extends MessageOrBuilder {
        String getDevice();

        ByteString getDeviceBytes();

        int getTime();

        int getType();

        boolean hasDevice();

        boolean hasTime();

        boolean hasType();
    }

    public static final class SimplePushData extends GeneratedMessage implements SimplePushDataOrBuilder {
        public static final int APPID_FIELD_NUMBER = 2;
        public static final int CMD_FIELD_NUMBER = 4;
        public static final int FROMMIUID_FIELD_NUMBER = 3;
        public static Parser<SimplePushData> PARSER = new AbstractParser<SimplePushData>() {
            public SimplePushData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SimplePushData(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PUSHDATA_FIELD_NUMBER = 5;
        public static final int TOMIUID_FIELD_NUMBER = 1;
        private static final SimplePushData defaultInstance = new SimplePushData(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object cmd_;
        /* access modifiers changed from: private */
        public Object frommiUid_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public ByteString pushdata_;
        /* access modifiers changed from: private */
        public Object tomiUid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements SimplePushDataOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object cmd_;
            private Object frommiUid_;
            private ByteString pushdata_;
            private Object tomiUid_;

            public static final Descriptor getDescriptor() {
                return PushPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_SimplePushData_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return PushPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_SimplePushData_fieldAccessorTable.ensureFieldAccessorsInitialized(SimplePushData.class, Builder.class);
            }

            private Builder() {
                this.tomiUid_ = "";
                this.frommiUid_ = "";
                this.cmd_ = "";
                this.pushdata_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.tomiUid_ = "";
                this.frommiUid_ = "";
                this.cmd_ = "";
                this.pushdata_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (SimplePushData.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.tomiUid_ = "";
                this.bitField0_ &= -2;
                this.appid_ = 0;
                this.bitField0_ &= -3;
                this.frommiUid_ = "";
                this.bitField0_ &= -5;
                this.cmd_ = "";
                this.bitField0_ &= -9;
                this.pushdata_ = ByteString.EMPTY;
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return PushPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_SimplePushData_descriptor;
            }

            public SimplePushData getDefaultInstanceForType() {
                return SimplePushData.getDefaultInstance();
            }

            public SimplePushData build() {
                SimplePushData buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public SimplePushData buildPartial() {
                int i = 1;
                SimplePushData simplePushData = new SimplePushData((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                simplePushData.tomiUid_ = this.tomiUid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                simplePushData.appid_ = this.appid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                simplePushData.frommiUid_ = this.frommiUid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                simplePushData.cmd_ = this.cmd_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                simplePushData.pushdata_ = this.pushdata_;
                simplePushData.bitField0_ = i;
                onBuilt();
                return simplePushData;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof SimplePushData) {
                    return mergeFrom((SimplePushData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SimplePushData simplePushData) {
                if (simplePushData != SimplePushData.getDefaultInstance()) {
                    if (simplePushData.hasTomiUid()) {
                        this.bitField0_ |= 1;
                        this.tomiUid_ = simplePushData.tomiUid_;
                        onChanged();
                    }
                    if (simplePushData.hasAppid()) {
                        setAppid(simplePushData.getAppid());
                    }
                    if (simplePushData.hasFrommiUid()) {
                        this.bitField0_ |= 4;
                        this.frommiUid_ = simplePushData.frommiUid_;
                        onChanged();
                    }
                    if (simplePushData.hasCmd()) {
                        this.bitField0_ |= 8;
                        this.cmd_ = simplePushData.cmd_;
                        onChanged();
                    }
                    if (simplePushData.hasPushdata()) {
                        setPushdata(simplePushData.getPushdata());
                    }
                    mergeUnknownFields(simplePushData.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasTomiUid() && hasAppid()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                SimplePushData simplePushData;
                SimplePushData simplePushData2;
                try {
                    SimplePushData simplePushData3 = (SimplePushData) SimplePushData.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (simplePushData3 != null) {
                        mergeFrom(simplePushData3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    simplePushData2 = (SimplePushData) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    simplePushData = simplePushData2;
                    th = th2;
                }
                if (simplePushData != null) {
                    mergeFrom(simplePushData);
                }
                throw th;
            }

            public boolean hasTomiUid() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getTomiUid() {
                Object obj = this.tomiUid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.tomiUid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTomiUidBytes() {
                Object obj = this.tomiUid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.tomiUid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTomiUid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.tomiUid_ = str;
                onChanged();
                return this;
            }

            public Builder clearTomiUid() {
                this.bitField0_ &= -2;
                this.tomiUid_ = SimplePushData.getDefaultInstance().getTomiUid();
                onChanged();
                return this;
            }

            public Builder setTomiUidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.tomiUid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 2;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -3;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasFrommiUid() {
                return (this.bitField0_ & 4) == 4;
            }

            public String getFrommiUid() {
                Object obj = this.frommiUid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.frommiUid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getFrommiUidBytes() {
                Object obj = this.frommiUid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.frommiUid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setFrommiUid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.frommiUid_ = str;
                onChanged();
                return this;
            }

            public Builder clearFrommiUid() {
                this.bitField0_ &= -5;
                this.frommiUid_ = SimplePushData.getDefaultInstance().getFrommiUid();
                onChanged();
                return this;
            }

            public Builder setFrommiUidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.frommiUid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasCmd() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getCmd() {
                Object obj = this.cmd_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.cmd_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getCmdBytes() {
                Object obj = this.cmd_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cmd_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setCmd(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.cmd_ = str;
                onChanged();
                return this;
            }

            public Builder clearCmd() {
                this.bitField0_ &= -9;
                this.cmd_ = SimplePushData.getDefaultInstance().getCmd();
                onChanged();
                return this;
            }

            public Builder setCmdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.cmd_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasPushdata() {
                return (this.bitField0_ & 16) == 16;
            }

            public ByteString getPushdata() {
                return this.pushdata_;
            }

            public Builder setPushdata(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.pushdata_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearPushdata() {
                this.bitField0_ &= -17;
                this.pushdata_ = SimplePushData.getDefaultInstance().getPushdata();
                onChanged();
                return this;
            }
        }

        private SimplePushData(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private SimplePushData(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static SimplePushData getDefaultInstance() {
            return defaultInstance;
        }

        public SimplePushData getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private SimplePushData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.tomiUid_ = readBytes;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.appid_ = codedInputStream.readUInt32();
                            break;
                        case 26:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 4;
                            this.frommiUid_ = readBytes2;
                            break;
                        case 34:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.cmd_ = readBytes3;
                            break;
                        case 42:
                            this.bitField0_ |= 16;
                            this.pushdata_ = codedInputStream.readBytes();
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
            return PushPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_SimplePushData_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return PushPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_SimplePushData_fieldAccessorTable.ensureFieldAccessorsInitialized(SimplePushData.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<SimplePushData> getParserForType() {
            return PARSER;
        }

        public boolean hasTomiUid() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getTomiUid() {
            Object obj = this.tomiUid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.tomiUid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTomiUidBytes() {
            Object obj = this.tomiUid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.tomiUid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasFrommiUid() {
            return (this.bitField0_ & 4) == 4;
        }

        public String getFrommiUid() {
            Object obj = this.frommiUid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.frommiUid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getFrommiUidBytes() {
            Object obj = this.frommiUid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.frommiUid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasCmd() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getCmd() {
            Object obj = this.cmd_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.cmd_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getCmdBytes() {
            Object obj = this.cmd_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cmd_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasPushdata() {
            return (this.bitField0_ & 16) == 16;
        }

        public ByteString getPushdata() {
            return this.pushdata_;
        }

        private void initFields() {
            this.tomiUid_ = "";
            this.appid_ = 0;
            this.frommiUid_ = "";
            this.cmd_ = "";
            this.pushdata_ = ByteString.EMPTY;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasTomiUid()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasAppid()) {
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
                codedOutputStream.writeBytes(1, getTomiUidBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.appid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, getFrommiUidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getCmdBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, this.pushdata_);
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getTomiUidBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.appid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeBytesSize(3, getFrommiUidBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getCmdBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, this.pushdata_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static SimplePushData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SimplePushData) PARSER.parseFrom(byteString);
        }

        public static SimplePushData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SimplePushData) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SimplePushData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SimplePushData) PARSER.parseFrom(bArr);
        }

        public static SimplePushData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SimplePushData) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SimplePushData parseFrom(InputStream inputStream) throws IOException {
            return (SimplePushData) PARSER.parseFrom(inputStream);
        }

        public static SimplePushData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SimplePushData) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static SimplePushData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SimplePushData) PARSER.parseDelimitedFrom(inputStream);
        }

        public static SimplePushData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SimplePushData) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static SimplePushData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SimplePushData) PARSER.parseFrom(codedInputStream);
        }

        public static SimplePushData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SimplePushData) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(SimplePushData simplePushData) {
            return newBuilder().mergeFrom(simplePushData);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface SimplePushDataOrBuilder extends MessageOrBuilder {
        int getAppid();

        String getCmd();

        ByteString getCmdBytes();

        String getFrommiUid();

        ByteString getFrommiUidBytes();

        ByteString getPushdata();

        String getTomiUid();

        ByteString getTomiUidBytes();

        boolean hasAppid();

        boolean hasCmd();

        boolean hasFrommiUid();

        boolean hasPushdata();

        boolean hasTomiUid();
    }

    private PushPacketProto() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u000emns_push.proto\u0012\u001ecom.mi.milinkforgame.sdk.proto\"b\n\u000eSimplePushData\u0012\u000f\n\u0007tomiUid\u0018\u0001 \u0002(\t\u0012\r\n\u0005appid\u0018\u0002 \u0002(\r\u0012\u0011\n\tfrommiUid\u0018\u0003 \u0001(\t\u0012\u000b\n\u0003cmd\u0018\u0004 \u0001(\t\u0012\u0010\n\bpushdata\u0018\u0005 \u0001(\f\"9\n\u000bKickMessage\u0012\f\n\u0004type\u0018\u0001 \u0001(\r\u0012\f\n\u0004time\u0018\u0002 \u0001(\r\u0012\u000e\n\u0006device\u0018\u0003 \u0001(\tB1\n\u001ecom.mi.milinkforgame.sdk.protoB\u000fPushPacketProto"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                PushPacketProto.descriptor = fileDescriptor;
                return null;
            }
        });
    }
}
