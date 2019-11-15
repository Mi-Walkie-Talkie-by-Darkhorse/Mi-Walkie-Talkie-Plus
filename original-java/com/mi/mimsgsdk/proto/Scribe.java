package com.mi.mimsgsdk.proto;

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

public final class Scribe {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_AgoralogReq_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_AgoralogReq_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_AgoralogReq_descriptor, new String[]{"Traceid", "Ts", "Appid", "Uid", "Cmd", "SessionRoom", "Engine", "Status", "Extra"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_descriptor, new String[]{"Ret", "ErrorMsg"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_CommonlogReq_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_CommonlogReq_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_CommonlogReq_descriptor, new String[]{"Cmd", "Appid", "Ts", "Str"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(3));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_descriptor, new String[]{"Ret", "ErrorMsg"});

    public static final class AgoralogReq extends GeneratedMessage implements AgoralogReqOrBuilder {
        public static final int APPID_FIELD_NUMBER = 3;
        public static final int CMD_FIELD_NUMBER = 5;
        public static final int ENGINE_FIELD_NUMBER = 7;
        public static final int EXTRA_FIELD_NUMBER = 9;
        public static Parser<AgoralogReq> PARSER = new AbstractParser<AgoralogReq>() {
            public AgoralogReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new AgoralogReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSION_ROOM_FIELD_NUMBER = 6;
        public static final int STATUS_FIELD_NUMBER = 8;
        public static final int TRACEID_FIELD_NUMBER = 1;
        public static final int TS_FIELD_NUMBER = 2;
        public static final int UID_FIELD_NUMBER = 4;
        private static final AgoralogReq defaultInstance = new AgoralogReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object cmd_;
        /* access modifiers changed from: private */
        public Object engine_;
        /* access modifiers changed from: private */
        public Object extra_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object sessionRoom_;
        /* access modifiers changed from: private */
        public Object status_;
        /* access modifiers changed from: private */
        public Object traceid_;
        /* access modifiers changed from: private */
        public long ts_;
        /* access modifiers changed from: private */
        public long uid_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements AgoralogReqOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object cmd_;
            private Object engine_;
            private Object extra_;
            private Object sessionRoom_;
            private Object status_;
            private Object traceid_;
            private long ts_;
            private long uid_;

            public static final Descriptor getDescriptor() {
                return Scribe.internal_static_com_mi_mimsgsdk_proto_AgoralogReq_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return Scribe.internal_static_com_mi_mimsgsdk_proto_AgoralogReq_fieldAccessorTable.ensureFieldAccessorsInitialized(AgoralogReq.class, Builder.class);
            }

            private Builder() {
                this.traceid_ = "";
                this.cmd_ = "";
                this.sessionRoom_ = "";
                this.engine_ = "";
                this.status_ = "";
                this.extra_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.traceid_ = "";
                this.cmd_ = "";
                this.sessionRoom_ = "";
                this.engine_ = "";
                this.status_ = "";
                this.extra_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (AgoralogReq.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.traceid_ = "";
                this.bitField0_ &= -2;
                this.ts_ = 0;
                this.bitField0_ &= -3;
                this.appid_ = 0;
                this.bitField0_ &= -5;
                this.uid_ = 0;
                this.bitField0_ &= -9;
                this.cmd_ = "";
                this.bitField0_ &= -17;
                this.sessionRoom_ = "";
                this.bitField0_ &= -33;
                this.engine_ = "";
                this.bitField0_ &= -65;
                this.status_ = "";
                this.bitField0_ &= -129;
                this.extra_ = "";
                this.bitField0_ &= -257;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return Scribe.internal_static_com_mi_mimsgsdk_proto_AgoralogReq_descriptor;
            }

            public AgoralogReq getDefaultInstanceForType() {
                return AgoralogReq.getDefaultInstance();
            }

            public AgoralogReq build() {
                AgoralogReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public AgoralogReq buildPartial() {
                int i = 1;
                AgoralogReq agoralogReq = new AgoralogReq((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                agoralogReq.traceid_ = this.traceid_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                agoralogReq.ts_ = this.ts_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                agoralogReq.appid_ = this.appid_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                agoralogReq.uid_ = this.uid_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                agoralogReq.cmd_ = this.cmd_;
                if ((i2 & 32) == 32) {
                    i |= 32;
                }
                agoralogReq.sessionRoom_ = this.sessionRoom_;
                if ((i2 & 64) == 64) {
                    i |= 64;
                }
                agoralogReq.engine_ = this.engine_;
                if ((i2 & 128) == 128) {
                    i |= 128;
                }
                agoralogReq.status_ = this.status_;
                if ((i2 & 256) == 256) {
                    i |= 256;
                }
                agoralogReq.extra_ = this.extra_;
                agoralogReq.bitField0_ = i;
                onBuilt();
                return agoralogReq;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof AgoralogReq) {
                    return mergeFrom((AgoralogReq) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AgoralogReq agoralogReq) {
                if (agoralogReq != AgoralogReq.getDefaultInstance()) {
                    if (agoralogReq.hasTraceid()) {
                        this.bitField0_ |= 1;
                        this.traceid_ = agoralogReq.traceid_;
                        onChanged();
                    }
                    if (agoralogReq.hasTs()) {
                        setTs(agoralogReq.getTs());
                    }
                    if (agoralogReq.hasAppid()) {
                        setAppid(agoralogReq.getAppid());
                    }
                    if (agoralogReq.hasUid()) {
                        setUid(agoralogReq.getUid());
                    }
                    if (agoralogReq.hasCmd()) {
                        this.bitField0_ |= 16;
                        this.cmd_ = agoralogReq.cmd_;
                        onChanged();
                    }
                    if (agoralogReq.hasSessionRoom()) {
                        this.bitField0_ |= 32;
                        this.sessionRoom_ = agoralogReq.sessionRoom_;
                        onChanged();
                    }
                    if (agoralogReq.hasEngine()) {
                        this.bitField0_ |= 64;
                        this.engine_ = agoralogReq.engine_;
                        onChanged();
                    }
                    if (agoralogReq.hasStatus()) {
                        this.bitField0_ |= 128;
                        this.status_ = agoralogReq.status_;
                        onChanged();
                    }
                    if (agoralogReq.hasExtra()) {
                        this.bitField0_ |= 256;
                        this.extra_ = agoralogReq.extra_;
                        onChanged();
                    }
                    mergeUnknownFields(agoralogReq.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                AgoralogReq agoralogReq;
                AgoralogReq agoralogReq2;
                try {
                    AgoralogReq agoralogReq3 = (AgoralogReq) AgoralogReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (agoralogReq3 != null) {
                        mergeFrom(agoralogReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    agoralogReq2 = (AgoralogReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    agoralogReq = agoralogReq2;
                    th = th2;
                }
                if (agoralogReq != null) {
                    mergeFrom(agoralogReq);
                }
                throw th;
            }

            public boolean hasTraceid() {
                return (this.bitField0_ & 1) == 1;
            }

            public String getTraceid() {
                Object obj = this.traceid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.traceid_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getTraceidBytes() {
                Object obj = this.traceid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.traceid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setTraceid(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.traceid_ = str;
                onChanged();
                return this;
            }

            public Builder clearTraceid() {
                this.bitField0_ &= -2;
                this.traceid_ = AgoralogReq.getDefaultInstance().getTraceid();
                onChanged();
                return this;
            }

            public Builder setTraceidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.traceid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasTs() {
                return (this.bitField0_ & 2) == 2;
            }

            public long getTs() {
                return this.ts_;
            }

            public Builder setTs(long j) {
                this.bitField0_ |= 2;
                this.ts_ = j;
                onChanged();
                return this;
            }

            public Builder clearTs() {
                this.bitField0_ &= -3;
                this.ts_ = 0;
                onChanged();
                return this;
            }

            public boolean hasAppid() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getAppid() {
                return this.appid_;
            }

            public Builder setAppid(int i) {
                this.bitField0_ |= 4;
                this.appid_ = i;
                onChanged();
                return this;
            }

            public Builder clearAppid() {
                this.bitField0_ &= -5;
                this.appid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasUid() {
                return (this.bitField0_ & 8) == 8;
            }

            public long getUid() {
                return this.uid_;
            }

            public Builder setUid(long j) {
                this.bitField0_ |= 8;
                this.uid_ = j;
                onChanged();
                return this;
            }

            public Builder clearUid() {
                this.bitField0_ &= -9;
                this.uid_ = 0;
                onChanged();
                return this;
            }

            public boolean hasCmd() {
                return (this.bitField0_ & 16) == 16;
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
                this.bitField0_ |= 16;
                this.cmd_ = str;
                onChanged();
                return this;
            }

            public Builder clearCmd() {
                this.bitField0_ &= -17;
                this.cmd_ = AgoralogReq.getDefaultInstance().getCmd();
                onChanged();
                return this;
            }

            public Builder setCmdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.cmd_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasSessionRoom() {
                return (this.bitField0_ & 32) == 32;
            }

            public String getSessionRoom() {
                Object obj = this.sessionRoom_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.sessionRoom_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getSessionRoomBytes() {
                Object obj = this.sessionRoom_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sessionRoom_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setSessionRoom(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.sessionRoom_ = str;
                onChanged();
                return this;
            }

            public Builder clearSessionRoom() {
                this.bitField0_ &= -33;
                this.sessionRoom_ = AgoralogReq.getDefaultInstance().getSessionRoom();
                onChanged();
                return this;
            }

            public Builder setSessionRoomBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.sessionRoom_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasEngine() {
                return (this.bitField0_ & 64) == 64;
            }

            public String getEngine() {
                Object obj = this.engine_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.engine_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getEngineBytes() {
                Object obj = this.engine_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.engine_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setEngine(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.engine_ = str;
                onChanged();
                return this;
            }

            public Builder clearEngine() {
                this.bitField0_ &= -65;
                this.engine_ = AgoralogReq.getDefaultInstance().getEngine();
                onChanged();
                return this;
            }

            public Builder setEngineBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.engine_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasStatus() {
                return (this.bitField0_ & 128) == 128;
            }

            public String getStatus() {
                Object obj = this.status_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.status_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getStatusBytes() {
                Object obj = this.status_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.status_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setStatus(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.status_ = str;
                onChanged();
                return this;
            }

            public Builder clearStatus() {
                this.bitField0_ &= -129;
                this.status_ = AgoralogReq.getDefaultInstance().getStatus();
                onChanged();
                return this;
            }

            public Builder setStatusBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.status_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasExtra() {
                return (this.bitField0_ & 256) == 256;
            }

            public String getExtra() {
                Object obj = this.extra_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.extra_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getExtraBytes() {
                Object obj = this.extra_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.extra_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setExtra(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.extra_ = str;
                onChanged();
                return this;
            }

            public Builder clearExtra() {
                this.bitField0_ &= -257;
                this.extra_ = AgoralogReq.getDefaultInstance().getExtra();
                onChanged();
                return this;
            }

            public Builder setExtraBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.extra_ = byteString;
                onChanged();
                return this;
            }
        }

        private AgoralogReq(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private AgoralogReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static AgoralogReq getDefaultInstance() {
            return defaultInstance;
        }

        public AgoralogReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private AgoralogReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.traceid_ = readBytes;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.ts_ = codedInputStream.readInt64();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.appid_ = codedInputStream.readInt32();
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.uid_ = codedInputStream.readInt64();
                            break;
                        case 42:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.cmd_ = readBytes2;
                            break;
                        case 50:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 32;
                            this.sessionRoom_ = readBytes3;
                            break;
                        case 58:
                            ByteString readBytes4 = codedInputStream.readBytes();
                            this.bitField0_ |= 64;
                            this.engine_ = readBytes4;
                            break;
                        case 66:
                            ByteString readBytes5 = codedInputStream.readBytes();
                            this.bitField0_ |= 128;
                            this.status_ = readBytes5;
                            break;
                        case 74:
                            ByteString readBytes6 = codedInputStream.readBytes();
                            this.bitField0_ |= 256;
                            this.extra_ = readBytes6;
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
            return Scribe.internal_static_com_mi_mimsgsdk_proto_AgoralogReq_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return Scribe.internal_static_com_mi_mimsgsdk_proto_AgoralogReq_fieldAccessorTable.ensureFieldAccessorsInitialized(AgoralogReq.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<AgoralogReq> getParserForType() {
            return PARSER;
        }

        public boolean hasTraceid() {
            return (this.bitField0_ & 1) == 1;
        }

        public String getTraceid() {
            Object obj = this.traceid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.traceid_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getTraceidBytes() {
            Object obj = this.traceid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.traceid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasTs() {
            return (this.bitField0_ & 2) == 2;
        }

        public long getTs() {
            return this.ts_;
        }

        public boolean hasAppid() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasUid() {
            return (this.bitField0_ & 8) == 8;
        }

        public long getUid() {
            return this.uid_;
        }

        public boolean hasCmd() {
            return (this.bitField0_ & 16) == 16;
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

        public boolean hasSessionRoom() {
            return (this.bitField0_ & 32) == 32;
        }

        public String getSessionRoom() {
            Object obj = this.sessionRoom_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.sessionRoom_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSessionRoomBytes() {
            Object obj = this.sessionRoom_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sessionRoom_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasEngine() {
            return (this.bitField0_ & 64) == 64;
        }

        public String getEngine() {
            Object obj = this.engine_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.engine_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getEngineBytes() {
            Object obj = this.engine_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.engine_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasStatus() {
            return (this.bitField0_ & 128) == 128;
        }

        public String getStatus() {
            Object obj = this.status_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.status_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getStatusBytes() {
            Object obj = this.status_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.status_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasExtra() {
            return (this.bitField0_ & 256) == 256;
        }

        public String getExtra() {
            Object obj = this.extra_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.extra_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getExtraBytes() {
            Object obj = this.extra_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.extra_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.traceid_ = "";
            this.ts_ = 0;
            this.appid_ = 0;
            this.uid_ = 0;
            this.cmd_ = "";
            this.sessionRoom_ = "";
            this.engine_ = "";
            this.status_ = "";
            this.extra_ = "";
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
                codedOutputStream.writeBytes(1, getTraceidBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt64(2, this.ts_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeInt32(3, this.appid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeInt64(4, this.uid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getCmdBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, getSessionRoomBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBytes(7, getEngineBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeBytes(8, getStatusBytes());
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeBytes(9, getExtraBytes());
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getTraceidBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeInt64Size(2, this.ts_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeInt32Size(3, this.appid_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeInt64Size(4, this.uid_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getCmdBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(6, getSessionRoomBytes());
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeBytesSize(7, getEngineBytes());
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeBytesSize(8, getStatusBytes());
            }
            if ((this.bitField0_ & 256) == 256) {
                i2 += CodedOutputStream.computeBytesSize(9, getExtraBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static AgoralogReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (AgoralogReq) PARSER.parseFrom(byteString);
        }

        public static AgoralogReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AgoralogReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static AgoralogReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (AgoralogReq) PARSER.parseFrom(bArr);
        }

        public static AgoralogReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AgoralogReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static AgoralogReq parseFrom(InputStream inputStream) throws IOException {
            return (AgoralogReq) PARSER.parseFrom(inputStream);
        }

        public static AgoralogReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AgoralogReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static AgoralogReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AgoralogReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static AgoralogReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AgoralogReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static AgoralogReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AgoralogReq) PARSER.parseFrom(codedInputStream);
        }

        public static AgoralogReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AgoralogReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(AgoralogReq agoralogReq) {
            return newBuilder().mergeFrom(agoralogReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface AgoralogReqOrBuilder extends MessageOrBuilder {
        int getAppid();

        String getCmd();

        ByteString getCmdBytes();

        String getEngine();

        ByteString getEngineBytes();

        String getExtra();

        ByteString getExtraBytes();

        String getSessionRoom();

        ByteString getSessionRoomBytes();

        String getStatus();

        ByteString getStatusBytes();

        String getTraceid();

        ByteString getTraceidBytes();

        long getTs();

        long getUid();

        boolean hasAppid();

        boolean hasCmd();

        boolean hasEngine();

        boolean hasExtra();

        boolean hasSessionRoom();

        boolean hasStatus();

        boolean hasTraceid();

        boolean hasTs();

        boolean hasUid();
    }

    public static final class AgoralogRsp extends GeneratedMessage implements AgoralogRspOrBuilder {
        public static final int ERRORMSG_FIELD_NUMBER = 2;
        public static Parser<AgoralogRsp> PARSER = new AbstractParser<AgoralogRsp>() {
            public AgoralogRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new AgoralogRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RET_FIELD_NUMBER = 1;
        private static final AgoralogRsp defaultInstance = new AgoralogRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object errorMsg_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int ret_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements AgoralogRspOrBuilder {
            private int bitField0_;
            private Object errorMsg_;
            private int ret_;

            public static final Descriptor getDescriptor() {
                return Scribe.internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return Scribe.internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(AgoralogRsp.class, Builder.class);
            }

            private Builder() {
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (AgoralogRsp.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.ret_ = 0;
                this.bitField0_ &= -2;
                this.errorMsg_ = "";
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return Scribe.internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_descriptor;
            }

            public AgoralogRsp getDefaultInstanceForType() {
                return AgoralogRsp.getDefaultInstance();
            }

            public AgoralogRsp build() {
                AgoralogRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public AgoralogRsp buildPartial() {
                int i = 1;
                AgoralogRsp agoralogRsp = new AgoralogRsp((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                agoralogRsp.ret_ = this.ret_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                agoralogRsp.errorMsg_ = this.errorMsg_;
                agoralogRsp.bitField0_ = i;
                onBuilt();
                return agoralogRsp;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof AgoralogRsp) {
                    return mergeFrom((AgoralogRsp) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AgoralogRsp agoralogRsp) {
                if (agoralogRsp != AgoralogRsp.getDefaultInstance()) {
                    if (agoralogRsp.hasRet()) {
                        setRet(agoralogRsp.getRet());
                    }
                    if (agoralogRsp.hasErrorMsg()) {
                        this.bitField0_ |= 2;
                        this.errorMsg_ = agoralogRsp.errorMsg_;
                        onChanged();
                    }
                    mergeUnknownFields(agoralogRsp.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasRet()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                AgoralogRsp agoralogRsp;
                AgoralogRsp agoralogRsp2;
                try {
                    AgoralogRsp agoralogRsp3 = (AgoralogRsp) AgoralogRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (agoralogRsp3 != null) {
                        mergeFrom(agoralogRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    agoralogRsp2 = (AgoralogRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    agoralogRsp = agoralogRsp2;
                    th = th2;
                }
                if (agoralogRsp != null) {
                    mergeFrom(agoralogRsp);
                }
                throw th;
            }

            public boolean hasRet() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getRet() {
                return this.ret_;
            }

            public Builder setRet(int i) {
                this.bitField0_ |= 1;
                this.ret_ = i;
                onChanged();
                return this;
            }

            public Builder clearRet() {
                this.bitField0_ &= -2;
                this.ret_ = 0;
                onChanged();
                return this;
            }

            public boolean hasErrorMsg() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.errorMsg_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setErrorMsg(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.errorMsg_ = str;
                onChanged();
                return this;
            }

            public Builder clearErrorMsg() {
                this.bitField0_ &= -3;
                this.errorMsg_ = AgoralogRsp.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            public Builder setErrorMsgBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.errorMsg_ = byteString;
                onChanged();
                return this;
            }
        }

        private AgoralogRsp(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private AgoralogRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static AgoralogRsp getDefaultInstance() {
            return defaultInstance;
        }

        public AgoralogRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private AgoralogRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.ret_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.errorMsg_ = readBytes;
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
            return Scribe.internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return Scribe.internal_static_com_mi_mimsgsdk_proto_AgoralogRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(AgoralogRsp.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<AgoralogRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasRet() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getRet() {
            return this.ret_;
        }

        public boolean hasErrorMsg() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.errorMsg_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.ret_ = 0;
            this.errorMsg_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasRet()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.ret_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getErrorMsgBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.ret_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getErrorMsgBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static AgoralogRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (AgoralogRsp) PARSER.parseFrom(byteString);
        }

        public static AgoralogRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AgoralogRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static AgoralogRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (AgoralogRsp) PARSER.parseFrom(bArr);
        }

        public static AgoralogRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AgoralogRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static AgoralogRsp parseFrom(InputStream inputStream) throws IOException {
            return (AgoralogRsp) PARSER.parseFrom(inputStream);
        }

        public static AgoralogRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AgoralogRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static AgoralogRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AgoralogRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static AgoralogRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AgoralogRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static AgoralogRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AgoralogRsp) PARSER.parseFrom(codedInputStream);
        }

        public static AgoralogRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AgoralogRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(AgoralogRsp agoralogRsp) {
            return newBuilder().mergeFrom(agoralogRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface AgoralogRspOrBuilder extends MessageOrBuilder {
        String getErrorMsg();

        ByteString getErrorMsgBytes();

        int getRet();

        boolean hasErrorMsg();

        boolean hasRet();
    }

    public static final class CommonlogReq extends GeneratedMessage implements CommonlogReqOrBuilder {
        public static final int APPID_FIELD_NUMBER = 2;
        public static final int CMD_FIELD_NUMBER = 1;
        public static Parser<CommonlogReq> PARSER = new AbstractParser<CommonlogReq>() {
            public CommonlogReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CommonlogReq(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int STR_FIELD_NUMBER = 4;
        public static final int TS_FIELD_NUMBER = 3;
        private static final CommonlogReq defaultInstance = new CommonlogReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int appid_;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object cmd_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object str_;
        /* access modifiers changed from: private */
        public long ts_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements CommonlogReqOrBuilder {
            private int appid_;
            private int bitField0_;
            private Object cmd_;
            private Object str_;
            private long ts_;

            public static final Descriptor getDescriptor() {
                return Scribe.internal_static_com_mi_mimsgsdk_proto_CommonlogReq_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return Scribe.internal_static_com_mi_mimsgsdk_proto_CommonlogReq_fieldAccessorTable.ensureFieldAccessorsInitialized(CommonlogReq.class, Builder.class);
            }

            private Builder() {
                this.cmd_ = "";
                this.str_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.cmd_ = "";
                this.str_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (CommonlogReq.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.cmd_ = "";
                this.bitField0_ &= -2;
                this.appid_ = 0;
                this.bitField0_ &= -3;
                this.ts_ = 0;
                this.bitField0_ &= -5;
                this.str_ = "";
                this.bitField0_ &= -9;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return Scribe.internal_static_com_mi_mimsgsdk_proto_CommonlogReq_descriptor;
            }

            public CommonlogReq getDefaultInstanceForType() {
                return CommonlogReq.getDefaultInstance();
            }

            public CommonlogReq build() {
                CommonlogReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public CommonlogReq buildPartial() {
                int i = 1;
                CommonlogReq commonlogReq = new CommonlogReq((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                commonlogReq.cmd_ = this.cmd_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                commonlogReq.appid_ = this.appid_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                commonlogReq.ts_ = this.ts_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                commonlogReq.str_ = this.str_;
                commonlogReq.bitField0_ = i;
                onBuilt();
                return commonlogReq;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof CommonlogReq) {
                    return mergeFrom((CommonlogReq) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CommonlogReq commonlogReq) {
                if (commonlogReq != CommonlogReq.getDefaultInstance()) {
                    if (commonlogReq.hasCmd()) {
                        this.bitField0_ |= 1;
                        this.cmd_ = commonlogReq.cmd_;
                        onChanged();
                    }
                    if (commonlogReq.hasAppid()) {
                        setAppid(commonlogReq.getAppid());
                    }
                    if (commonlogReq.hasTs()) {
                        setTs(commonlogReq.getTs());
                    }
                    if (commonlogReq.hasStr()) {
                        this.bitField0_ |= 8;
                        this.str_ = commonlogReq.str_;
                        onChanged();
                    }
                    mergeUnknownFields(commonlogReq.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasCmd()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                CommonlogReq commonlogReq;
                CommonlogReq commonlogReq2;
                try {
                    CommonlogReq commonlogReq3 = (CommonlogReq) CommonlogReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (commonlogReq3 != null) {
                        mergeFrom(commonlogReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    commonlogReq2 = (CommonlogReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    commonlogReq = commonlogReq2;
                    th = th2;
                }
                if (commonlogReq != null) {
                    mergeFrom(commonlogReq);
                }
                throw th;
            }

            public boolean hasCmd() {
                return (this.bitField0_ & 1) == 1;
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
                this.bitField0_ |= 1;
                this.cmd_ = str;
                onChanged();
                return this;
            }

            public Builder clearCmd() {
                this.bitField0_ &= -2;
                this.cmd_ = CommonlogReq.getDefaultInstance().getCmd();
                onChanged();
                return this;
            }

            public Builder setCmdBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.cmd_ = byteString;
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

            public boolean hasTs() {
                return (this.bitField0_ & 4) == 4;
            }

            public long getTs() {
                return this.ts_;
            }

            public Builder setTs(long j) {
                this.bitField0_ |= 4;
                this.ts_ = j;
                onChanged();
                return this;
            }

            public Builder clearTs() {
                this.bitField0_ &= -5;
                this.ts_ = 0;
                onChanged();
                return this;
            }

            public boolean hasStr() {
                return (this.bitField0_ & 8) == 8;
            }

            public String getStr() {
                Object obj = this.str_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.str_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getStrBytes() {
                Object obj = this.str_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.str_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setStr(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.str_ = str;
                onChanged();
                return this;
            }

            public Builder clearStr() {
                this.bitField0_ &= -9;
                this.str_ = CommonlogReq.getDefaultInstance().getStr();
                onChanged();
                return this;
            }

            public Builder setStrBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.str_ = byteString;
                onChanged();
                return this;
            }
        }

        private CommonlogReq(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CommonlogReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CommonlogReq getDefaultInstance() {
            return defaultInstance;
        }

        public CommonlogReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private CommonlogReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.cmd_ = readBytes;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.appid_ = codedInputStream.readInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.ts_ = codedInputStream.readInt64();
                            break;
                        case 34:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 8;
                            this.str_ = readBytes2;
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
            return Scribe.internal_static_com_mi_mimsgsdk_proto_CommonlogReq_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return Scribe.internal_static_com_mi_mimsgsdk_proto_CommonlogReq_fieldAccessorTable.ensureFieldAccessorsInitialized(CommonlogReq.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<CommonlogReq> getParserForType() {
            return PARSER;
        }

        public boolean hasCmd() {
            return (this.bitField0_ & 1) == 1;
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

        public boolean hasAppid() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getAppid() {
            return this.appid_;
        }

        public boolean hasTs() {
            return (this.bitField0_ & 4) == 4;
        }

        public long getTs() {
            return this.ts_;
        }

        public boolean hasStr() {
            return (this.bitField0_ & 8) == 8;
        }

        public String getStr() {
            Object obj = this.str_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.str_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getStrBytes() {
            Object obj = this.str_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.str_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.cmd_ = "";
            this.appid_ = 0;
            this.ts_ = 0;
            this.str_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasCmd()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, getCmdBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(2, this.appid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeInt64(3, this.ts_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, getStrBytes());
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
                i2 = 0 + CodedOutputStream.computeBytesSize(1, getCmdBytes());
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeInt32Size(2, this.appid_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeInt64Size(3, this.ts_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeBytesSize(4, getStrBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static CommonlogReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (CommonlogReq) PARSER.parseFrom(byteString);
        }

        public static CommonlogReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (CommonlogReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CommonlogReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (CommonlogReq) PARSER.parseFrom(bArr);
        }

        public static CommonlogReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (CommonlogReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CommonlogReq parseFrom(InputStream inputStream) throws IOException {
            return (CommonlogReq) PARSER.parseFrom(inputStream);
        }

        public static CommonlogReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CommonlogReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CommonlogReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CommonlogReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static CommonlogReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CommonlogReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CommonlogReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CommonlogReq) PARSER.parseFrom(codedInputStream);
        }

        public static CommonlogReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CommonlogReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(CommonlogReq commonlogReq) {
            return newBuilder().mergeFrom(commonlogReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface CommonlogReqOrBuilder extends MessageOrBuilder {
        int getAppid();

        String getCmd();

        ByteString getCmdBytes();

        String getStr();

        ByteString getStrBytes();

        long getTs();

        boolean hasAppid();

        boolean hasCmd();

        boolean hasStr();

        boolean hasTs();
    }

    public static final class CommonlogRsp extends GeneratedMessage implements CommonlogRspOrBuilder {
        public static final int ERRORMSG_FIELD_NUMBER = 2;
        public static Parser<CommonlogRsp> PARSER = new AbstractParser<CommonlogRsp>() {
            public CommonlogRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CommonlogRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RET_FIELD_NUMBER = 1;
        private static final CommonlogRsp defaultInstance = new CommonlogRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public Object errorMsg_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int ret_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements CommonlogRspOrBuilder {
            private int bitField0_;
            private Object errorMsg_;
            private int ret_;

            public static final Descriptor getDescriptor() {
                return Scribe.internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return Scribe.internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(CommonlogRsp.class, Builder.class);
            }

            private Builder() {
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.errorMsg_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (CommonlogRsp.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.ret_ = 0;
                this.bitField0_ &= -2;
                this.errorMsg_ = "";
                this.bitField0_ &= -3;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return Scribe.internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_descriptor;
            }

            public CommonlogRsp getDefaultInstanceForType() {
                return CommonlogRsp.getDefaultInstance();
            }

            public CommonlogRsp build() {
                CommonlogRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public CommonlogRsp buildPartial() {
                int i = 1;
                CommonlogRsp commonlogRsp = new CommonlogRsp((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                commonlogRsp.ret_ = this.ret_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                commonlogRsp.errorMsg_ = this.errorMsg_;
                commonlogRsp.bitField0_ = i;
                onBuilt();
                return commonlogRsp;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof CommonlogRsp) {
                    return mergeFrom((CommonlogRsp) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CommonlogRsp commonlogRsp) {
                if (commonlogRsp != CommonlogRsp.getDefaultInstance()) {
                    if (commonlogRsp.hasRet()) {
                        setRet(commonlogRsp.getRet());
                    }
                    if (commonlogRsp.hasErrorMsg()) {
                        this.bitField0_ |= 2;
                        this.errorMsg_ = commonlogRsp.errorMsg_;
                        onChanged();
                    }
                    mergeUnknownFields(commonlogRsp.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasRet()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                CommonlogRsp commonlogRsp;
                CommonlogRsp commonlogRsp2;
                try {
                    CommonlogRsp commonlogRsp3 = (CommonlogRsp) CommonlogRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (commonlogRsp3 != null) {
                        mergeFrom(commonlogRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    commonlogRsp2 = (CommonlogRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    commonlogRsp = commonlogRsp2;
                    th = th2;
                }
                if (commonlogRsp != null) {
                    mergeFrom(commonlogRsp);
                }
                throw th;
            }

            public boolean hasRet() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getRet() {
                return this.ret_;
            }

            public Builder setRet(int i) {
                this.bitField0_ |= 1;
                this.ret_ = i;
                onChanged();
                return this;
            }

            public Builder clearRet() {
                this.bitField0_ &= -2;
                this.ret_ = 0;
                onChanged();
                return this;
            }

            public boolean hasErrorMsg() {
                return (this.bitField0_ & 2) == 2;
            }

            public String getErrorMsg() {
                Object obj = this.errorMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.errorMsg_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getErrorMsgBytes() {
                Object obj = this.errorMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.errorMsg_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setErrorMsg(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.errorMsg_ = str;
                onChanged();
                return this;
            }

            public Builder clearErrorMsg() {
                this.bitField0_ &= -3;
                this.errorMsg_ = CommonlogRsp.getDefaultInstance().getErrorMsg();
                onChanged();
                return this;
            }

            public Builder setErrorMsgBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.errorMsg_ = byteString;
                onChanged();
                return this;
            }
        }

        private CommonlogRsp(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CommonlogRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CommonlogRsp getDefaultInstance() {
            return defaultInstance;
        }

        public CommonlogRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private CommonlogRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.ret_ = codedInputStream.readUInt32();
                            break;
                        case 18:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 2;
                            this.errorMsg_ = readBytes;
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
            return Scribe.internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return Scribe.internal_static_com_mi_mimsgsdk_proto_CommonlogRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(CommonlogRsp.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<CommonlogRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasRet() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getRet() {
            return this.ret_;
        }

        public boolean hasErrorMsg() {
            return (this.bitField0_ & 2) == 2;
        }

        public String getErrorMsg() {
            Object obj = this.errorMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.errorMsg_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getErrorMsgBytes() {
            Object obj = this.errorMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.errorMsg_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.ret_ = 0;
            this.errorMsg_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasRet()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.ret_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, getErrorMsgBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.ret_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeBytesSize(2, getErrorMsgBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static CommonlogRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (CommonlogRsp) PARSER.parseFrom(byteString);
        }

        public static CommonlogRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (CommonlogRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CommonlogRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (CommonlogRsp) PARSER.parseFrom(bArr);
        }

        public static CommonlogRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (CommonlogRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static CommonlogRsp parseFrom(InputStream inputStream) throws IOException {
            return (CommonlogRsp) PARSER.parseFrom(inputStream);
        }

        public static CommonlogRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CommonlogRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CommonlogRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CommonlogRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static CommonlogRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CommonlogRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CommonlogRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (CommonlogRsp) PARSER.parseFrom(codedInputStream);
        }

        public static CommonlogRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (CommonlogRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(CommonlogRsp commonlogRsp) {
            return newBuilder().mergeFrom(commonlogRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface CommonlogRspOrBuilder extends MessageOrBuilder {
        String getErrorMsg();

        ByteString getErrorMsgBytes();

        int getRet();

        boolean hasErrorMsg();

        boolean hasRet();
    }

    private Scribe() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\fScribe.proto\u0012\u0015com.mi.mimsgsdk.proto\"\u0001\n\u000bAgoralogReq\u0012\u000f\n\u0007traceid\u0018\u0001 \u0001(\t\u0012\n\n\u0002ts\u0018\u0002 \u0001(\u0003\u0012\r\n\u0005appid\u0018\u0003 \u0001(\u0005\u0012\u000b\n\u0003uid\u0018\u0004 \u0001(\u0003\u0012\u000b\n\u0003cmd\u0018\u0005 \u0001(\t\u0012\u0014\n\fsession_room\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006engine\u0018\u0007 \u0001(\t\u0012\u000e\n\u0006status\u0018\b \u0001(\t\u0012\r\n\u0005extra\u0018\t \u0001(\t\",\n\u000bAgoralogRsp\u0012\u000b\n\u0003ret\u0018\u0001 \u0002(\r\u0012\u0010\n\berrorMsg\u0018\u0002 \u0001(\t\"C\n\fCommonlogReq\u0012\u000b\n\u0003cmd\u0018\u0001 \u0002(\t\u0012\r\n\u0005appid\u0018\u0002 \u0001(\u0005\u0012\n\n\u0002ts\u0018\u0003 \u0001(\u0003\u0012\u000b\n\u0003str\u0018\u0004 \u0001(\t\"-\n\fCommonlogRsp\u0012\u000b\n\u0003ret\u0018\u0001 \u0002(\r\u0012\u0010\n\berrorMsg\u0018\u0002 \u0001(\t"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                Scribe.descriptor = fileDescriptor;
                return null;
            }
        });
    }
}
