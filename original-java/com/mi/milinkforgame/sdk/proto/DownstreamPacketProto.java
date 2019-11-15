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
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import com.mi.milinkforgame.sdk.proto.UpstreamPacketProto.BusiControl;
import com.mi.milinkforgame.sdk.proto.UpstreamPacketProto.BusiControlOrBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;

public final class DownstreamPacketProto {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_descriptor, new String[]{"Seq", "MiUin", "MnsCode", "BusiCode", "ServiceCmd", "BusiBuff", "Extra", "MnsErrMsg", "MiUid", "BusiControl"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_descriptor, new String[]{"HasClientInfo"});

    public static final class DownstreamPacket extends GeneratedMessage implements DownstreamPacketOrBuilder {
        public static final int BUSIBUFF_FIELD_NUMBER = 6;
        public static final int BUSICODE_FIELD_NUMBER = 4;
        public static final int BUSICONTROL_FIELD_NUMBER = 10;
        public static final int EXTRA_FIELD_NUMBER = 7;
        public static final int MIUID_FIELD_NUMBER = 9;
        public static final int MIUIN_FIELD_NUMBER = 2;
        public static final int MNSCODE_FIELD_NUMBER = 3;
        public static final int MNSERRMSG_FIELD_NUMBER = 8;
        public static Parser<DownstreamPacket> PARSER = new AbstractParser<DownstreamPacket>() {
            public DownstreamPacket parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new DownstreamPacket(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SEQ_FIELD_NUMBER = 1;
        public static final int SERVICECMD_FIELD_NUMBER = 5;
        private static final DownstreamPacket defaultInstance = new DownstreamPacket(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public ByteString busiBuff_;
        /* access modifiers changed from: private */
        public int busiCode_;
        /* access modifiers changed from: private */
        public BusiControl busiControl_;
        /* access modifiers changed from: private */
        public ByteString extra_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Object miUid_;
        /* access modifiers changed from: private */
        public long miUin_;
        /* access modifiers changed from: private */
        public int mnsCode_;
        /* access modifiers changed from: private */
        public Object mnsErrMsg_;
        /* access modifiers changed from: private */
        public int seq_;
        /* access modifiers changed from: private */
        public Object serviceCmd_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements DownstreamPacketOrBuilder {
            private int bitField0_;
            private ByteString busiBuff_;
            private int busiCode_;
            private SingleFieldBuilder<BusiControl, com.mi.milinkforgame.sdk.proto.UpstreamPacketProto.BusiControl.Builder, BusiControlOrBuilder> busiControlBuilder_;
            private BusiControl busiControl_;
            private ByteString extra_;
            private Object miUid_;
            private long miUin_;
            private int mnsCode_;
            private Object mnsErrMsg_;
            private int seq_;
            private Object serviceCmd_;

            public static final Descriptor getDescriptor() {
                return DownstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DownstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_fieldAccessorTable.ensureFieldAccessorsInitialized(DownstreamPacket.class, Builder.class);
            }

            private Builder() {
                this.serviceCmd_ = "";
                this.busiBuff_ = ByteString.EMPTY;
                this.extra_ = ByteString.EMPTY;
                this.mnsErrMsg_ = "";
                this.miUid_ = "";
                this.busiControl_ = BusiControl.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.serviceCmd_ = "";
                this.busiBuff_ = ByteString.EMPTY;
                this.extra_ = ByteString.EMPTY;
                this.mnsErrMsg_ = "";
                this.miUid_ = "";
                this.busiControl_ = BusiControl.getDefaultInstance();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (DownstreamPacket.alwaysUseFieldBuilders) {
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
                this.miUin_ = 0;
                this.bitField0_ &= -3;
                this.mnsCode_ = 0;
                this.bitField0_ &= -5;
                this.busiCode_ = 0;
                this.bitField0_ &= -9;
                this.serviceCmd_ = "";
                this.bitField0_ &= -17;
                this.busiBuff_ = ByteString.EMPTY;
                this.bitField0_ &= -33;
                this.extra_ = ByteString.EMPTY;
                this.bitField0_ &= -65;
                this.mnsErrMsg_ = "";
                this.bitField0_ &= -129;
                this.miUid_ = "";
                this.bitField0_ &= -257;
                if (this.busiControlBuilder_ == null) {
                    this.busiControl_ = BusiControl.getDefaultInstance();
                } else {
                    this.busiControlBuilder_.clear();
                }
                this.bitField0_ &= -513;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DownstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_descriptor;
            }

            public DownstreamPacket getDefaultInstanceForType() {
                return DownstreamPacket.getDefaultInstance();
            }

            public DownstreamPacket build() {
                DownstreamPacket buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public DownstreamPacket buildPartial() {
                int i;
                int i2 = 1;
                DownstreamPacket downstreamPacket = new DownstreamPacket((com.google.protobuf.GeneratedMessage.Builder) this);
                int i3 = this.bitField0_;
                if ((i3 & 1) != 1) {
                    i2 = 0;
                }
                downstreamPacket.seq_ = this.seq_;
                if ((i3 & 2) == 2) {
                    i2 |= 2;
                }
                downstreamPacket.miUin_ = this.miUin_;
                if ((i3 & 4) == 4) {
                    i2 |= 4;
                }
                downstreamPacket.mnsCode_ = this.mnsCode_;
                if ((i3 & 8) == 8) {
                    i2 |= 8;
                }
                downstreamPacket.busiCode_ = this.busiCode_;
                if ((i3 & 16) == 16) {
                    i2 |= 16;
                }
                downstreamPacket.serviceCmd_ = this.serviceCmd_;
                if ((i3 & 32) == 32) {
                    i2 |= 32;
                }
                downstreamPacket.busiBuff_ = this.busiBuff_;
                if ((i3 & 64) == 64) {
                    i2 |= 64;
                }
                downstreamPacket.extra_ = this.extra_;
                if ((i3 & 128) == 128) {
                    i2 |= 128;
                }
                downstreamPacket.mnsErrMsg_ = this.mnsErrMsg_;
                if ((i3 & 256) == 256) {
                    i2 |= 256;
                }
                downstreamPacket.miUid_ = this.miUid_;
                if ((i3 & 512) == 512) {
                    i = i2 | 512;
                } else {
                    i = i2;
                }
                if (this.busiControlBuilder_ == null) {
                    downstreamPacket.busiControl_ = this.busiControl_;
                } else {
                    downstreamPacket.busiControl_ = (BusiControl) this.busiControlBuilder_.build();
                }
                downstreamPacket.bitField0_ = i;
                onBuilt();
                return downstreamPacket;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof DownstreamPacket) {
                    return mergeFrom((DownstreamPacket) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(DownstreamPacket downstreamPacket) {
                if (downstreamPacket != DownstreamPacket.getDefaultInstance()) {
                    if (downstreamPacket.hasSeq()) {
                        setSeq(downstreamPacket.getSeq());
                    }
                    if (downstreamPacket.hasMiUin()) {
                        setMiUin(downstreamPacket.getMiUin());
                    }
                    if (downstreamPacket.hasMnsCode()) {
                        setMnsCode(downstreamPacket.getMnsCode());
                    }
                    if (downstreamPacket.hasBusiCode()) {
                        setBusiCode(downstreamPacket.getBusiCode());
                    }
                    if (downstreamPacket.hasServiceCmd()) {
                        this.bitField0_ |= 16;
                        this.serviceCmd_ = downstreamPacket.serviceCmd_;
                        onChanged();
                    }
                    if (downstreamPacket.hasBusiBuff()) {
                        setBusiBuff(downstreamPacket.getBusiBuff());
                    }
                    if (downstreamPacket.hasExtra()) {
                        setExtra(downstreamPacket.getExtra());
                    }
                    if (downstreamPacket.hasMnsErrMsg()) {
                        this.bitField0_ |= 128;
                        this.mnsErrMsg_ = downstreamPacket.mnsErrMsg_;
                        onChanged();
                    }
                    if (downstreamPacket.hasMiUid()) {
                        this.bitField0_ |= 256;
                        this.miUid_ = downstreamPacket.miUid_;
                        onChanged();
                    }
                    if (downstreamPacket.hasBusiControl()) {
                        mergeBusiControl(downstreamPacket.getBusiControl());
                    }
                    mergeUnknownFields(downstreamPacket.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                DownstreamPacket downstreamPacket;
                DownstreamPacket downstreamPacket2;
                try {
                    DownstreamPacket downstreamPacket3 = (DownstreamPacket) DownstreamPacket.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (downstreamPacket3 != null) {
                        mergeFrom(downstreamPacket3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    downstreamPacket2 = (DownstreamPacket) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    downstreamPacket = downstreamPacket2;
                    th = th2;
                }
                if (downstreamPacket != null) {
                    mergeFrom(downstreamPacket);
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

            public boolean hasMiUin() {
                return (this.bitField0_ & 2) == 2;
            }

            public long getMiUin() {
                return this.miUin_;
            }

            public Builder setMiUin(long j) {
                this.bitField0_ |= 2;
                this.miUin_ = j;
                onChanged();
                return this;
            }

            public Builder clearMiUin() {
                this.bitField0_ &= -3;
                this.miUin_ = 0;
                onChanged();
                return this;
            }

            public boolean hasMnsCode() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getMnsCode() {
                return this.mnsCode_;
            }

            public Builder setMnsCode(int i) {
                this.bitField0_ |= 4;
                this.mnsCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearMnsCode() {
                this.bitField0_ &= -5;
                this.mnsCode_ = 0;
                onChanged();
                return this;
            }

            public boolean hasBusiCode() {
                return (this.bitField0_ & 8) == 8;
            }

            public int getBusiCode() {
                return this.busiCode_;
            }

            public Builder setBusiCode(int i) {
                this.bitField0_ |= 8;
                this.busiCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearBusiCode() {
                this.bitField0_ &= -9;
                this.busiCode_ = 0;
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
                this.serviceCmd_ = DownstreamPacket.getDefaultInstance().getServiceCmd();
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

            public boolean hasBusiBuff() {
                return (this.bitField0_ & 32) == 32;
            }

            public ByteString getBusiBuff() {
                return this.busiBuff_;
            }

            public Builder setBusiBuff(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.busiBuff_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearBusiBuff() {
                this.bitField0_ &= -33;
                this.busiBuff_ = DownstreamPacket.getDefaultInstance().getBusiBuff();
                onChanged();
                return this;
            }

            public boolean hasExtra() {
                return (this.bitField0_ & 64) == 64;
            }

            public ByteString getExtra() {
                return this.extra_;
            }

            public Builder setExtra(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.extra_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearExtra() {
                this.bitField0_ &= -65;
                this.extra_ = DownstreamPacket.getDefaultInstance().getExtra();
                onChanged();
                return this;
            }

            public boolean hasMnsErrMsg() {
                return (this.bitField0_ & 128) == 128;
            }

            public String getMnsErrMsg() {
                Object obj = this.mnsErrMsg_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.mnsErrMsg_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getMnsErrMsgBytes() {
                Object obj = this.mnsErrMsg_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.mnsErrMsg_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setMnsErrMsg(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.mnsErrMsg_ = str;
                onChanged();
                return this;
            }

            public Builder clearMnsErrMsg() {
                this.bitField0_ &= -129;
                this.mnsErrMsg_ = DownstreamPacket.getDefaultInstance().getMnsErrMsg();
                onChanged();
                return this;
            }

            public Builder setMnsErrMsgBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.mnsErrMsg_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasMiUid() {
                return (this.bitField0_ & 256) == 256;
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
                this.bitField0_ |= 256;
                this.miUid_ = str;
                onChanged();
                return this;
            }

            public Builder clearMiUid() {
                this.bitField0_ &= -257;
                this.miUid_ = DownstreamPacket.getDefaultInstance().getMiUid();
                onChanged();
                return this;
            }

            public Builder setMiUidBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.miUid_ = byteString;
                onChanged();
                return this;
            }

            public boolean hasBusiControl() {
                return (this.bitField0_ & 512) == 512;
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
                this.bitField0_ |= 512;
                return this;
            }

            public Builder setBusiControl(com.mi.milinkforgame.sdk.proto.UpstreamPacketProto.BusiControl.Builder builder) {
                if (this.busiControlBuilder_ == null) {
                    this.busiControl_ = builder.build();
                    onChanged();
                } else {
                    this.busiControlBuilder_.setMessage(builder.build());
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder mergeBusiControl(BusiControl busiControl) {
                if (this.busiControlBuilder_ == null) {
                    if ((this.bitField0_ & 512) != 512 || this.busiControl_ == BusiControl.getDefaultInstance()) {
                        this.busiControl_ = busiControl;
                    } else {
                        this.busiControl_ = BusiControl.newBuilder(this.busiControl_).mergeFrom(busiControl).buildPartial();
                    }
                    onChanged();
                } else {
                    this.busiControlBuilder_.mergeFrom(busiControl);
                }
                this.bitField0_ |= 512;
                return this;
            }

            public Builder clearBusiControl() {
                if (this.busiControlBuilder_ == null) {
                    this.busiControl_ = BusiControl.getDefaultInstance();
                    onChanged();
                } else {
                    this.busiControlBuilder_.clear();
                }
                this.bitField0_ &= -513;
                return this;
            }

            public com.mi.milinkforgame.sdk.proto.UpstreamPacketProto.BusiControl.Builder getBusiControlBuilder() {
                this.bitField0_ |= 512;
                onChanged();
                return (com.mi.milinkforgame.sdk.proto.UpstreamPacketProto.BusiControl.Builder) getBusiControlFieldBuilder().getBuilder();
            }

            public BusiControlOrBuilder getBusiControlOrBuilder() {
                if (this.busiControlBuilder_ != null) {
                    return (BusiControlOrBuilder) this.busiControlBuilder_.getMessageOrBuilder();
                }
                return this.busiControl_;
            }

            private SingleFieldBuilder<BusiControl, com.mi.milinkforgame.sdk.proto.UpstreamPacketProto.BusiControl.Builder, BusiControlOrBuilder> getBusiControlFieldBuilder() {
                if (this.busiControlBuilder_ == null) {
                    this.busiControlBuilder_ = new SingleFieldBuilder<>(getBusiControl(), getParentForChildren(), isClean());
                    this.busiControl_ = null;
                }
                return this.busiControlBuilder_;
            }
        }

        private DownstreamPacket(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private DownstreamPacket(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static DownstreamPacket getDefaultInstance() {
            return defaultInstance;
        }

        public DownstreamPacket getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private DownstreamPacket(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            com.mi.milinkforgame.sdk.proto.UpstreamPacketProto.BusiControl.Builder builder;
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
                            this.seq_ = codedInputStream.readUInt32();
                            z = z2;
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.miUin_ = codedInputStream.readUInt64();
                            z = z2;
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.mnsCode_ = codedInputStream.readSInt32();
                            z = z2;
                            break;
                        case 32:
                            this.bitField0_ |= 8;
                            this.busiCode_ = codedInputStream.readSInt32();
                            z = z2;
                            break;
                        case 42:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.serviceCmd_ = readBytes;
                            z = z2;
                            break;
                        case 50:
                            this.bitField0_ |= 32;
                            this.busiBuff_ = codedInputStream.readBytes();
                            z = z2;
                            break;
                        case 58:
                            this.bitField0_ |= 64;
                            this.extra_ = codedInputStream.readBytes();
                            z = z2;
                            break;
                        case 66:
                            ByteString readBytes2 = codedInputStream.readBytes();
                            this.bitField0_ |= 128;
                            this.mnsErrMsg_ = readBytes2;
                            z = z2;
                            break;
                        case 74:
                            ByteString readBytes3 = codedInputStream.readBytes();
                            this.bitField0_ |= 256;
                            this.miUid_ = readBytes3;
                            z = z2;
                            break;
                        case 82:
                            if ((this.bitField0_ & 512) == 512) {
                                builder = this.busiControl_.toBuilder();
                            } else {
                                builder = null;
                            }
                            this.busiControl_ = (BusiControl) codedInputStream.readMessage(BusiControl.PARSER, extensionRegistryLite);
                            if (builder != null) {
                                builder.mergeFrom(this.busiControl_);
                                this.busiControl_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 512;
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
            return DownstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DownstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_DownstreamPacket_fieldAccessorTable.ensureFieldAccessorsInitialized(DownstreamPacket.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<DownstreamPacket> getParserForType() {
            return PARSER;
        }

        public boolean hasSeq() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getSeq() {
            return this.seq_;
        }

        public boolean hasMiUin() {
            return (this.bitField0_ & 2) == 2;
        }

        public long getMiUin() {
            return this.miUin_;
        }

        public boolean hasMnsCode() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getMnsCode() {
            return this.mnsCode_;
        }

        public boolean hasBusiCode() {
            return (this.bitField0_ & 8) == 8;
        }

        public int getBusiCode() {
            return this.busiCode_;
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

        public boolean hasBusiBuff() {
            return (this.bitField0_ & 32) == 32;
        }

        public ByteString getBusiBuff() {
            return this.busiBuff_;
        }

        public boolean hasExtra() {
            return (this.bitField0_ & 64) == 64;
        }

        public ByteString getExtra() {
            return this.extra_;
        }

        public boolean hasMnsErrMsg() {
            return (this.bitField0_ & 128) == 128;
        }

        public String getMnsErrMsg() {
            Object obj = this.mnsErrMsg_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.mnsErrMsg_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getMnsErrMsgBytes() {
            Object obj = this.mnsErrMsg_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.mnsErrMsg_ = copyFromUtf8;
            return copyFromUtf8;
        }

        public boolean hasMiUid() {
            return (this.bitField0_ & 256) == 256;
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

        public boolean hasBusiControl() {
            return (this.bitField0_ & 512) == 512;
        }

        public BusiControl getBusiControl() {
            return this.busiControl_;
        }

        public BusiControlOrBuilder getBusiControlOrBuilder() {
            return this.busiControl_;
        }

        private void initFields() {
            this.seq_ = 0;
            this.miUin_ = 0;
            this.mnsCode_ = 0;
            this.busiCode_ = 0;
            this.serviceCmd_ = "";
            this.busiBuff_ = ByteString.EMPTY;
            this.extra_ = ByteString.EMPTY;
            this.mnsErrMsg_ = "";
            this.miUid_ = "";
            this.busiControl_ = BusiControl.getDefaultInstance();
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
                codedOutputStream.writeUInt64(2, this.miUin_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeSInt32(3, this.mnsCode_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeSInt32(4, this.busiCode_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(5, getServiceCmdBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBytes(6, this.busiBuff_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeBytes(7, this.extra_);
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeBytes(8, getMnsErrMsgBytes());
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeBytes(9, getMiUidBytes());
            }
            if ((this.bitField0_ & 512) == 512) {
                codedOutputStream.writeMessage(10, this.busiControl_);
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
                i2 += CodedOutputStream.computeUInt64Size(2, this.miUin_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeSInt32Size(3, this.mnsCode_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeSInt32Size(4, this.busiCode_);
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(5, getServiceCmdBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                i2 += CodedOutputStream.computeBytesSize(6, this.busiBuff_);
            }
            if ((this.bitField0_ & 64) == 64) {
                i2 += CodedOutputStream.computeBytesSize(7, this.extra_);
            }
            if ((this.bitField0_ & 128) == 128) {
                i2 += CodedOutputStream.computeBytesSize(8, getMnsErrMsgBytes());
            }
            if ((this.bitField0_ & 256) == 256) {
                i2 += CodedOutputStream.computeBytesSize(9, getMiUidBytes());
            }
            if ((this.bitField0_ & 512) == 512) {
                i2 += CodedOutputStream.computeMessageSize(10, this.busiControl_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static DownstreamPacket parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (DownstreamPacket) PARSER.parseFrom(byteString);
        }

        public static DownstreamPacket parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DownstreamPacket) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DownstreamPacket parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (DownstreamPacket) PARSER.parseFrom(bArr);
        }

        public static DownstreamPacket parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DownstreamPacket) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static DownstreamPacket parseFrom(InputStream inputStream) throws IOException {
            return (DownstreamPacket) PARSER.parseFrom(inputStream);
        }

        public static DownstreamPacket parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DownstreamPacket) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static DownstreamPacket parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DownstreamPacket) PARSER.parseDelimitedFrom(inputStream);
        }

        public static DownstreamPacket parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DownstreamPacket) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static DownstreamPacket parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DownstreamPacket) PARSER.parseFrom(codedInputStream);
        }

        public static DownstreamPacket parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DownstreamPacket) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(DownstreamPacket downstreamPacket) {
            return newBuilder().mergeFrom(downstreamPacket);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface DownstreamPacketOrBuilder extends MessageOrBuilder {
        ByteString getBusiBuff();

        int getBusiCode();

        BusiControl getBusiControl();

        BusiControlOrBuilder getBusiControlOrBuilder();

        ByteString getExtra();

        String getMiUid();

        ByteString getMiUidBytes();

        long getMiUin();

        int getMnsCode();

        String getMnsErrMsg();

        ByteString getMnsErrMsgBytes();

        int getSeq();

        String getServiceCmd();

        ByteString getServiceCmdBytes();

        boolean hasBusiBuff();

        boolean hasBusiCode();

        boolean hasBusiControl();

        boolean hasExtra();

        boolean hasMiUid();

        boolean hasMiUin();

        boolean hasMnsCode();

        boolean hasMnsErrMsg();

        boolean hasSeq();

        boolean hasServiceCmd();
    }

    public static final class ExtraInfo extends GeneratedMessage implements ExtraInfoOrBuilder {
        public static final int HASCLIENTINFO_FIELD_NUMBER = 1;
        public static Parser<ExtraInfo> PARSER = new AbstractParser<ExtraInfo>() {
            public ExtraInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ExtraInfo(codedInputStream, extensionRegistryLite);
            }
        };
        private static final ExtraInfo defaultInstance = new ExtraInfo(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public boolean hasClientInfo_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ExtraInfoOrBuilder {
            private int bitField0_;
            private boolean hasClientInfo_;

            public static final Descriptor getDescriptor() {
                return DownstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return DownstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(ExtraInfo.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (ExtraInfo.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.hasClientInfo_ = false;
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return DownstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_descriptor;
            }

            public ExtraInfo getDefaultInstanceForType() {
                return ExtraInfo.getDefaultInstance();
            }

            public ExtraInfo build() {
                ExtraInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ExtraInfo buildPartial() {
                int i = 1;
                ExtraInfo extraInfo = new ExtraInfo((com.google.protobuf.GeneratedMessage.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                extraInfo.hasClientInfo_ = this.hasClientInfo_;
                extraInfo.bitField0_ = i;
                onBuilt();
                return extraInfo;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof ExtraInfo) {
                    return mergeFrom((ExtraInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ExtraInfo extraInfo) {
                if (extraInfo != ExtraInfo.getDefaultInstance()) {
                    if (extraInfo.hasHasClientInfo()) {
                        setHasClientInfo(extraInfo.getHasClientInfo());
                    }
                    mergeUnknownFields(extraInfo.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ExtraInfo extraInfo;
                ExtraInfo extraInfo2;
                try {
                    ExtraInfo extraInfo3 = (ExtraInfo) ExtraInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (extraInfo3 != null) {
                        mergeFrom(extraInfo3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    extraInfo2 = (ExtraInfo) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    extraInfo = extraInfo2;
                    th = th2;
                }
                if (extraInfo != null) {
                    mergeFrom(extraInfo);
                }
                throw th;
            }

            public boolean hasHasClientInfo() {
                return (this.bitField0_ & 1) == 1;
            }

            public boolean getHasClientInfo() {
                return this.hasClientInfo_;
            }

            public Builder setHasClientInfo(boolean z) {
                this.bitField0_ |= 1;
                this.hasClientInfo_ = z;
                onChanged();
                return this;
            }

            public Builder clearHasClientInfo() {
                this.bitField0_ &= -2;
                this.hasClientInfo_ = false;
                onChanged();
                return this;
            }
        }

        private ExtraInfo(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ExtraInfo(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ExtraInfo getDefaultInstance() {
            return defaultInstance;
        }

        public ExtraInfo getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ExtraInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.hasClientInfo_ = codedInputStream.readBool();
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
            return DownstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return DownstreamPacketProto.internal_static_com_mi_milinkforgame_sdk_proto_ExtraInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(ExtraInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ExtraInfo> getParserForType() {
            return PARSER;
        }

        public boolean hasHasClientInfo() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean getHasClientInfo() {
            return this.hasClientInfo_;
        }

        private void initFields() {
            this.hasClientInfo_ = false;
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
                codedOutputStream.writeBool(1, this.hasClientInfo_);
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
                i2 = 0 + CodedOutputStream.computeBoolSize(1, this.hasClientInfo_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ExtraInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ExtraInfo) PARSER.parseFrom(byteString);
        }

        public static ExtraInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ExtraInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ExtraInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ExtraInfo) PARSER.parseFrom(bArr);
        }

        public static ExtraInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ExtraInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ExtraInfo parseFrom(InputStream inputStream) throws IOException {
            return (ExtraInfo) PARSER.parseFrom(inputStream);
        }

        public static ExtraInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExtraInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ExtraInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ExtraInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ExtraInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExtraInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ExtraInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ExtraInfo) PARSER.parseFrom(codedInputStream);
        }

        public static ExtraInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ExtraInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ExtraInfo extraInfo) {
            return newBuilder().mergeFrom(extraInfo);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface ExtraInfoOrBuilder extends MessageOrBuilder {
        boolean getHasClientInfo();

        boolean hasHasClientInfo();
    }

    private DownstreamPacketProto() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor[] fileDescriptorArr = {UpstreamPacketProto.getDescriptor()};
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0014mns_downstream.proto\u0012\u001ecom.mi.milinkforgame.sdk.proto\u001a\u0012mns_upstream.proto\"ê\u0001\n\u0010DownstreamPacket\u0012\u000b\n\u0003seq\u0018\u0001 \u0001(\r\u0012\r\n\u0005miUin\u0018\u0002 \u0001(\u0004\u0012\u000f\n\u0007mnsCode\u0018\u0003 \u0001(\u0011\u0012\u0010\n\bbusiCode\u0018\u0004 \u0001(\u0011\u0012\u0012\n\nserviceCmd\u0018\u0005 \u0001(\t\u0012\u0010\n\bbusiBuff\u0018\u0006 \u0001(\f\u0012\r\n\u0005extra\u0018\u0007 \u0001(\f\u0012\u0011\n\tmnsErrMsg\u0018\b \u0001(\t\u0012\r\n\u0005miUid\u0018\t \u0001(\t\u0012@\n\u000bbusiControl\u0018\n \u0001(\u000b2+.com.mi.milinkforgame.sdk.proto.BusiControl\"\"\n\tExtraInfo\u0012\u0015\n\rhasClientInfo\u0018\u0001 \u0001(\bB7\n\u001ecom.mi.milinkforgame.sdk.protoB\u0015DownstreamPacketP", "roto"}, fileDescriptorArr, new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                DownstreamPacketProto.descriptor = fileDescriptor;
                return null;
            }
        });
        UpstreamPacketProto.getDescriptor();
    }
}
