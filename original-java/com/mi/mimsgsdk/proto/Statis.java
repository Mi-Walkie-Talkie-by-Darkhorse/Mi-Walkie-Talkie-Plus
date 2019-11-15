package com.mi.mimsgsdk.proto;

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
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class Statis {
    /* access modifiers changed from: private */
    public static FileDescriptor descriptor;
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_ActionLogItem_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(2));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_ActionLogItem_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_ActionLogItem_descriptor, new String[]{"Date", "BizType", "LogType", "Platform", "ExtStr"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_ActionLogReq_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(0));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_ActionLogReq_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_ActionLogReq_descriptor, new String[]{"Items"});
    /* access modifiers changed from: private */
    public static final Descriptor internal_static_com_mi_mimsgsdk_proto_ActionLogRsp_descriptor = ((Descriptor) getDescriptor().getMessageTypes().get(1));
    /* access modifiers changed from: private */
    public static FieldAccessorTable internal_static_com_mi_mimsgsdk_proto_ActionLogRsp_fieldAccessorTable = new FieldAccessorTable(internal_static_com_mi_mimsgsdk_proto_ActionLogRsp_descriptor, new String[]{"RetCode"});

    public static final class ActionLogItem extends GeneratedMessage implements ActionLogItemOrBuilder {
        public static final int BIZTYPE_FIELD_NUMBER = 2;
        public static final int DATE_FIELD_NUMBER = 1;
        public static final int EXTSTR_FIELD_NUMBER = 8;
        public static final int LOGTYPE_FIELD_NUMBER = 3;
        public static Parser<ActionLogItem> PARSER = new AbstractParser<ActionLogItem>() {
            public ActionLogItem parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ActionLogItem(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int PLATFORM_FIELD_NUMBER = 4;
        private static final ActionLogItem defaultInstance = new ActionLogItem(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        /* access modifiers changed from: private */
        public int bizType_;
        /* access modifiers changed from: private */
        public long date_;
        /* access modifiers changed from: private */
        public Object extStr_;
        /* access modifiers changed from: private */
        public int logType_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public Platform platform_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ActionLogItemOrBuilder {
            private int bitField0_;
            private int bizType_;
            private long date_;
            private Object extStr_;
            private int logType_;
            private Platform platform_;

            public static final Descriptor getDescriptor() {
                return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogItem_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogItem_fieldAccessorTable.ensureFieldAccessorsInitialized(ActionLogItem.class, Builder.class);
            }

            private Builder() {
                this.bizType_ = 2;
                this.platform_ = Platform.ANDROID;
                this.extStr_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.bizType_ = 2;
                this.platform_ = Platform.ANDROID;
                this.extStr_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (ActionLogItem.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.date_ = 0;
                this.bitField0_ &= -2;
                this.bizType_ = 2;
                this.bitField0_ &= -3;
                this.logType_ = 0;
                this.bitField0_ &= -5;
                this.platform_ = Platform.ANDROID;
                this.bitField0_ &= -9;
                this.extStr_ = "";
                this.bitField0_ &= -17;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogItem_descriptor;
            }

            public ActionLogItem getDefaultInstanceForType() {
                return ActionLogItem.getDefaultInstance();
            }

            public ActionLogItem build() {
                ActionLogItem buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ActionLogItem buildPartial() {
                int i = 1;
                ActionLogItem actionLogItem = new ActionLogItem((com.google.protobuf.GeneratedMessage.Builder) this);
                int i2 = this.bitField0_;
                if ((i2 & 1) != 1) {
                    i = 0;
                }
                actionLogItem.date_ = this.date_;
                if ((i2 & 2) == 2) {
                    i |= 2;
                }
                actionLogItem.bizType_ = this.bizType_;
                if ((i2 & 4) == 4) {
                    i |= 4;
                }
                actionLogItem.logType_ = this.logType_;
                if ((i2 & 8) == 8) {
                    i |= 8;
                }
                actionLogItem.platform_ = this.platform_;
                if ((i2 & 16) == 16) {
                    i |= 16;
                }
                actionLogItem.extStr_ = this.extStr_;
                actionLogItem.bitField0_ = i;
                onBuilt();
                return actionLogItem;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof ActionLogItem) {
                    return mergeFrom((ActionLogItem) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ActionLogItem actionLogItem) {
                if (actionLogItem != ActionLogItem.getDefaultInstance()) {
                    if (actionLogItem.hasDate()) {
                        setDate(actionLogItem.getDate());
                    }
                    if (actionLogItem.hasBizType()) {
                        setBizType(actionLogItem.getBizType());
                    }
                    if (actionLogItem.hasLogType()) {
                        setLogType(actionLogItem.getLogType());
                    }
                    if (actionLogItem.hasPlatform()) {
                        setPlatform(actionLogItem.getPlatform());
                    }
                    if (actionLogItem.hasExtStr()) {
                        this.bitField0_ |= 16;
                        this.extStr_ = actionLogItem.extStr_;
                        onChanged();
                    }
                    mergeUnknownFields(actionLogItem.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (hasDate() && hasBizType() && hasLogType() && hasPlatform()) {
                    return true;
                }
                return false;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ActionLogItem actionLogItem;
                ActionLogItem actionLogItem2;
                try {
                    ActionLogItem actionLogItem3 = (ActionLogItem) ActionLogItem.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (actionLogItem3 != null) {
                        mergeFrom(actionLogItem3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    actionLogItem2 = (ActionLogItem) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    actionLogItem = actionLogItem2;
                    th = th2;
                }
                if (actionLogItem != null) {
                    mergeFrom(actionLogItem);
                }
                throw th;
            }

            public boolean hasDate() {
                return (this.bitField0_ & 1) == 1;
            }

            public long getDate() {
                return this.date_;
            }

            public Builder setDate(long j) {
                this.bitField0_ |= 1;
                this.date_ = j;
                onChanged();
                return this;
            }

            public Builder clearDate() {
                this.bitField0_ &= -2;
                this.date_ = 0;
                onChanged();
                return this;
            }

            public boolean hasBizType() {
                return (this.bitField0_ & 2) == 2;
            }

            public int getBizType() {
                return this.bizType_;
            }

            public Builder setBizType(int i) {
                this.bitField0_ |= 2;
                this.bizType_ = i;
                onChanged();
                return this;
            }

            public Builder clearBizType() {
                this.bitField0_ &= -3;
                this.bizType_ = 2;
                onChanged();
                return this;
            }

            public boolean hasLogType() {
                return (this.bitField0_ & 4) == 4;
            }

            public int getLogType() {
                return this.logType_;
            }

            public Builder setLogType(int i) {
                this.bitField0_ |= 4;
                this.logType_ = i;
                onChanged();
                return this;
            }

            public Builder clearLogType() {
                this.bitField0_ &= -5;
                this.logType_ = 0;
                onChanged();
                return this;
            }

            public boolean hasPlatform() {
                return (this.bitField0_ & 8) == 8;
            }

            public Platform getPlatform() {
                return this.platform_;
            }

            public Builder setPlatform(Platform platform) {
                if (platform == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.platform_ = platform;
                onChanged();
                return this;
            }

            public Builder clearPlatform() {
                this.bitField0_ &= -9;
                this.platform_ = Platform.ANDROID;
                onChanged();
                return this;
            }

            public boolean hasExtStr() {
                return (this.bitField0_ & 16) == 16;
            }

            public String getExtStr() {
                Object obj = this.extStr_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.extStr_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getExtStrBytes() {
                Object obj = this.extStr_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.extStr_ = copyFromUtf8;
                return copyFromUtf8;
            }

            public Builder setExtStr(String str) {
                if (str == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.extStr_ = str;
                onChanged();
                return this;
            }

            public Builder clearExtStr() {
                this.bitField0_ &= -17;
                this.extStr_ = ActionLogItem.getDefaultInstance().getExtStr();
                onChanged();
                return this;
            }

            public Builder setExtStrBytes(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.extStr_ = byteString;
                onChanged();
                return this;
            }
        }

        private ActionLogItem(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ActionLogItem(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ActionLogItem getDefaultInstance() {
            return defaultInstance;
        }

        public ActionLogItem getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ActionLogItem(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.date_ = codedInputStream.readUInt64();
                            break;
                        case 16:
                            this.bitField0_ |= 2;
                            this.bizType_ = codedInputStream.readUInt32();
                            break;
                        case 24:
                            this.bitField0_ |= 4;
                            this.logType_ = codedInputStream.readUInt32();
                            break;
                        case 32:
                            int readEnum = codedInputStream.readEnum();
                            Platform valueOf = Platform.valueOf(readEnum);
                            if (valueOf != null) {
                                this.bitField0_ |= 8;
                                this.platform_ = valueOf;
                                break;
                            } else {
                                newBuilder.mergeVarintField(4, readEnum);
                                break;
                            }
                        case 66:
                            ByteString readBytes = codedInputStream.readBytes();
                            this.bitField0_ |= 16;
                            this.extStr_ = readBytes;
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
            return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogItem_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogItem_fieldAccessorTable.ensureFieldAccessorsInitialized(ActionLogItem.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ActionLogItem> getParserForType() {
            return PARSER;
        }

        public boolean hasDate() {
            return (this.bitField0_ & 1) == 1;
        }

        public long getDate() {
            return this.date_;
        }

        public boolean hasBizType() {
            return (this.bitField0_ & 2) == 2;
        }

        public int getBizType() {
            return this.bizType_;
        }

        public boolean hasLogType() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getLogType() {
            return this.logType_;
        }

        public boolean hasPlatform() {
            return (this.bitField0_ & 8) == 8;
        }

        public Platform getPlatform() {
            return this.platform_;
        }

        public boolean hasExtStr() {
            return (this.bitField0_ & 16) == 16;
        }

        public String getExtStr() {
            Object obj = this.extStr_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.extStr_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getExtStrBytes() {
            Object obj = this.extStr_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.extStr_ = copyFromUtf8;
            return copyFromUtf8;
        }

        private void initFields() {
            this.date_ = 0;
            this.bizType_ = 2;
            this.logType_ = 0;
            this.platform_ = Platform.ANDROID;
            this.extStr_ = "";
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasDate()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasBizType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasLogType()) {
                this.memoizedIsInitialized = 0;
                return false;
            } else if (!hasPlatform()) {
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
                codedOutputStream.writeUInt64(1, this.date_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeUInt32(2, this.bizType_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeUInt32(3, this.logType_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeEnum(4, this.platform_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(8, getExtStrBytes());
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
                i2 = 0 + CodedOutputStream.computeUInt64Size(1, this.date_);
            }
            if ((this.bitField0_ & 2) == 2) {
                i2 += CodedOutputStream.computeUInt32Size(2, this.bizType_);
            }
            if ((this.bitField0_ & 4) == 4) {
                i2 += CodedOutputStream.computeUInt32Size(3, this.logType_);
            }
            if ((this.bitField0_ & 8) == 8) {
                i2 += CodedOutputStream.computeEnumSize(4, this.platform_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                i2 += CodedOutputStream.computeBytesSize(8, getExtStrBytes());
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ActionLogItem parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ActionLogItem) PARSER.parseFrom(byteString);
        }

        public static ActionLogItem parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ActionLogItem) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ActionLogItem parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ActionLogItem) PARSER.parseFrom(bArr);
        }

        public static ActionLogItem parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ActionLogItem) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ActionLogItem parseFrom(InputStream inputStream) throws IOException {
            return (ActionLogItem) PARSER.parseFrom(inputStream);
        }

        public static ActionLogItem parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ActionLogItem) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ActionLogItem parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ActionLogItem) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ActionLogItem parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ActionLogItem) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ActionLogItem parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ActionLogItem) PARSER.parseFrom(codedInputStream);
        }

        public static ActionLogItem parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ActionLogItem) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ActionLogItem actionLogItem) {
            return newBuilder().mergeFrom(actionLogItem);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface ActionLogItemOrBuilder extends MessageOrBuilder {
        int getBizType();

        long getDate();

        String getExtStr();

        ByteString getExtStrBytes();

        int getLogType();

        Platform getPlatform();

        boolean hasBizType();

        boolean hasDate();

        boolean hasExtStr();

        boolean hasLogType();

        boolean hasPlatform();
    }

    public static final class ActionLogReq extends GeneratedMessage implements ActionLogReqOrBuilder {
        public static final int ITEMS_FIELD_NUMBER = 1;
        public static Parser<ActionLogReq> PARSER = new AbstractParser<ActionLogReq>() {
            public ActionLogReq parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ActionLogReq(codedInputStream, extensionRegistryLite);
            }
        };
        private static final ActionLogReq defaultInstance = new ActionLogReq(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public List<ActionLogItem> items_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ActionLogReqOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilder<ActionLogItem, Builder, ActionLogItemOrBuilder> itemsBuilder_;
            private List<ActionLogItem> items_;

            public static final Descriptor getDescriptor() {
                return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogReq_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogReq_fieldAccessorTable.ensureFieldAccessorsInitialized(ActionLogReq.class, Builder.class);
            }

            private Builder() {
                this.items_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                this.items_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (ActionLogReq.alwaysUseFieldBuilders) {
                    getItemsFieldBuilder();
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                if (this.itemsBuilder_ == null) {
                    this.items_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    this.itemsBuilder_.clear();
                }
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogReq_descriptor;
            }

            public ActionLogReq getDefaultInstanceForType() {
                return ActionLogReq.getDefaultInstance();
            }

            public ActionLogReq build() {
                ActionLogReq buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ActionLogReq buildPartial() {
                ActionLogReq actionLogReq = new ActionLogReq((com.google.protobuf.GeneratedMessage.Builder) this);
                int i = this.bitField0_;
                if (this.itemsBuilder_ == null) {
                    if ((this.bitField0_ & 1) == 1) {
                        this.items_ = Collections.unmodifiableList(this.items_);
                        this.bitField0_ &= -2;
                    }
                    actionLogReq.items_ = this.items_;
                } else {
                    actionLogReq.items_ = this.itemsBuilder_.build();
                }
                onBuilt();
                return actionLogReq;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof ActionLogReq) {
                    return mergeFrom((ActionLogReq) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ActionLogReq actionLogReq) {
                RepeatedFieldBuilder<ActionLogItem, Builder, ActionLogItemOrBuilder> repeatedFieldBuilder = null;
                if (actionLogReq != ActionLogReq.getDefaultInstance()) {
                    if (this.itemsBuilder_ == null) {
                        if (!actionLogReq.items_.isEmpty()) {
                            if (this.items_.isEmpty()) {
                                this.items_ = actionLogReq.items_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureItemsIsMutable();
                                this.items_.addAll(actionLogReq.items_);
                            }
                            onChanged();
                        }
                    } else if (!actionLogReq.items_.isEmpty()) {
                        if (this.itemsBuilder_.isEmpty()) {
                            this.itemsBuilder_.dispose();
                            this.itemsBuilder_ = null;
                            this.items_ = actionLogReq.items_;
                            this.bitField0_ &= -2;
                            if (ActionLogReq.alwaysUseFieldBuilders) {
                                repeatedFieldBuilder = getItemsFieldBuilder();
                            }
                            this.itemsBuilder_ = repeatedFieldBuilder;
                        } else {
                            this.itemsBuilder_.addAllMessages(actionLogReq.items_);
                        }
                    }
                    mergeUnknownFields(actionLogReq.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                for (int i = 0; i < getItemsCount(); i++) {
                    if (!getItems(i).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ActionLogReq actionLogReq;
                ActionLogReq actionLogReq2;
                try {
                    ActionLogReq actionLogReq3 = (ActionLogReq) ActionLogReq.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (actionLogReq3 != null) {
                        mergeFrom(actionLogReq3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    actionLogReq2 = (ActionLogReq) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    actionLogReq = actionLogReq2;
                    th = th2;
                }
                if (actionLogReq != null) {
                    mergeFrom(actionLogReq);
                }
                throw th;
            }

            private void ensureItemsIsMutable() {
                if ((this.bitField0_ & 1) != 1) {
                    this.items_ = new ArrayList(this.items_);
                    this.bitField0_ |= 1;
                }
            }

            public List<ActionLogItem> getItemsList() {
                if (this.itemsBuilder_ == null) {
                    return Collections.unmodifiableList(this.items_);
                }
                return this.itemsBuilder_.getMessageList();
            }

            public int getItemsCount() {
                if (this.itemsBuilder_ == null) {
                    return this.items_.size();
                }
                return this.itemsBuilder_.getCount();
            }

            public ActionLogItem getItems(int i) {
                if (this.itemsBuilder_ == null) {
                    return (ActionLogItem) this.items_.get(i);
                }
                return (ActionLogItem) this.itemsBuilder_.getMessage(i);
            }

            public Builder setItems(int i, ActionLogItem actionLogItem) {
                if (this.itemsBuilder_ != null) {
                    this.itemsBuilder_.setMessage(i, actionLogItem);
                } else if (actionLogItem == null) {
                    throw new NullPointerException();
                } else {
                    ensureItemsIsMutable();
                    this.items_.set(i, actionLogItem);
                    onChanged();
                }
                return this;
            }

            public Builder setItems(int i, Builder builder) {
                if (this.itemsBuilder_ == null) {
                    ensureItemsIsMutable();
                    this.items_.set(i, builder.build());
                    onChanged();
                } else {
                    this.itemsBuilder_.setMessage(i, builder.build());
                }
                return this;
            }

            public Builder addItems(ActionLogItem actionLogItem) {
                if (this.itemsBuilder_ != null) {
                    this.itemsBuilder_.addMessage(actionLogItem);
                } else if (actionLogItem == null) {
                    throw new NullPointerException();
                } else {
                    ensureItemsIsMutable();
                    this.items_.add(actionLogItem);
                    onChanged();
                }
                return this;
            }

            public Builder addItems(int i, ActionLogItem actionLogItem) {
                if (this.itemsBuilder_ != null) {
                    this.itemsBuilder_.addMessage(i, actionLogItem);
                } else if (actionLogItem == null) {
                    throw new NullPointerException();
                } else {
                    ensureItemsIsMutable();
                    this.items_.add(i, actionLogItem);
                    onChanged();
                }
                return this;
            }

            public Builder addItems(Builder builder) {
                if (this.itemsBuilder_ == null) {
                    ensureItemsIsMutable();
                    this.items_.add(builder.build());
                    onChanged();
                } else {
                    this.itemsBuilder_.addMessage(builder.build());
                }
                return this;
            }

            public Builder addItems(int i, Builder builder) {
                if (this.itemsBuilder_ == null) {
                    ensureItemsIsMutable();
                    this.items_.add(i, builder.build());
                    onChanged();
                } else {
                    this.itemsBuilder_.addMessage(i, builder.build());
                }
                return this;
            }

            public Builder addAllItems(Iterable<? extends ActionLogItem> iterable) {
                if (this.itemsBuilder_ == null) {
                    ensureItemsIsMutable();
                    com.google.protobuf.AbstractMessageLite.Builder.addAll(iterable, this.items_);
                    onChanged();
                } else {
                    this.itemsBuilder_.addAllMessages(iterable);
                }
                return this;
            }

            public Builder clearItems() {
                if (this.itemsBuilder_ == null) {
                    this.items_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    this.itemsBuilder_.clear();
                }
                return this;
            }

            public Builder removeItems(int i) {
                if (this.itemsBuilder_ == null) {
                    ensureItemsIsMutable();
                    this.items_.remove(i);
                    onChanged();
                } else {
                    this.itemsBuilder_.remove(i);
                }
                return this;
            }

            public Builder getItemsBuilder(int i) {
                return (Builder) getItemsFieldBuilder().getBuilder(i);
            }

            public ActionLogItemOrBuilder getItemsOrBuilder(int i) {
                if (this.itemsBuilder_ == null) {
                    return (ActionLogItemOrBuilder) this.items_.get(i);
                }
                return (ActionLogItemOrBuilder) this.itemsBuilder_.getMessageOrBuilder(i);
            }

            public List<? extends ActionLogItemOrBuilder> getItemsOrBuilderList() {
                if (this.itemsBuilder_ != null) {
                    return this.itemsBuilder_.getMessageOrBuilderList();
                }
                return Collections.unmodifiableList(this.items_);
            }

            public Builder addItemsBuilder() {
                return (Builder) getItemsFieldBuilder().addBuilder(ActionLogItem.getDefaultInstance());
            }

            public Builder addItemsBuilder(int i) {
                return (Builder) getItemsFieldBuilder().addBuilder(i, ActionLogItem.getDefaultInstance());
            }

            public List<Builder> getItemsBuilderList() {
                return getItemsFieldBuilder().getBuilderList();
            }

            private RepeatedFieldBuilder<ActionLogItem, Builder, ActionLogItemOrBuilder> getItemsFieldBuilder() {
                boolean z = true;
                if (this.itemsBuilder_ == null) {
                    List<ActionLogItem> list = this.items_;
                    if ((this.bitField0_ & 1) != 1) {
                        z = false;
                    }
                    this.itemsBuilder_ = new RepeatedFieldBuilder<>(list, z, getParentForChildren(), isClean());
                    this.items_ = null;
                }
                return this.itemsBuilder_;
            }
        }

        private ActionLogReq(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ActionLogReq(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ActionLogReq getDefaultInstance() {
            return defaultInstance;
        }

        public ActionLogReq getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ActionLogReq(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 10:
                            if (!z2 || !true) {
                                this.items_ = new ArrayList();
                                z2 |= true;
                            }
                            this.items_.add(codedInputStream.readMessage(ActionLogItem.PARSER, extensionRegistryLite));
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
                    if (z2 && true) {
                        this.items_ = Collections.unmodifiableList(this.items_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z2 && true) {
                this.items_ = Collections.unmodifiableList(this.items_);
            }
            this.unknownFields = newBuilder.build();
            makeExtensionsImmutable();
        }

        public static final Descriptor getDescriptor() {
            return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogReq_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogReq_fieldAccessorTable.ensureFieldAccessorsInitialized(ActionLogReq.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ActionLogReq> getParserForType() {
            return PARSER;
        }

        public List<ActionLogItem> getItemsList() {
            return this.items_;
        }

        public List<? extends ActionLogItemOrBuilder> getItemsOrBuilderList() {
            return this.items_;
        }

        public int getItemsCount() {
            return this.items_.size();
        }

        public ActionLogItem getItems(int i) {
            return (ActionLogItem) this.items_.get(i);
        }

        public ActionLogItemOrBuilder getItemsOrBuilder(int i) {
            return (ActionLogItemOrBuilder) this.items_.get(i);
        }

        private void initFields() {
            this.items_ = Collections.emptyList();
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < getItemsCount(); i++) {
                if (!getItems(i).isInitialized()) {
                    this.memoizedIsInitialized = 0;
                    return false;
                }
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.items_.size()) {
                    codedOutputStream.writeMessage(1, (MessageLite) this.items_.get(i2));
                    i = i2 + 1;
                } else {
                    getUnknownFields().writeTo(codedOutputStream);
                    return;
                }
            }
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.items_.size(); i3++) {
                i2 += CodedOutputStream.computeMessageSize(1, (MessageLite) this.items_.get(i3));
            }
            int serializedSize = getUnknownFields().getSerializedSize() + i2;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ActionLogReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ActionLogReq) PARSER.parseFrom(byteString);
        }

        public static ActionLogReq parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ActionLogReq) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ActionLogReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ActionLogReq) PARSER.parseFrom(bArr);
        }

        public static ActionLogReq parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ActionLogReq) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ActionLogReq parseFrom(InputStream inputStream) throws IOException {
            return (ActionLogReq) PARSER.parseFrom(inputStream);
        }

        public static ActionLogReq parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ActionLogReq) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ActionLogReq parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ActionLogReq) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ActionLogReq parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ActionLogReq) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ActionLogReq parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ActionLogReq) PARSER.parseFrom(codedInputStream);
        }

        public static ActionLogReq parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ActionLogReq) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ActionLogReq actionLogReq) {
            return newBuilder().mergeFrom(actionLogReq);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface ActionLogReqOrBuilder extends MessageOrBuilder {
        ActionLogItem getItems(int i);

        int getItemsCount();

        List<ActionLogItem> getItemsList();

        ActionLogItemOrBuilder getItemsOrBuilder(int i);

        List<? extends ActionLogItemOrBuilder> getItemsOrBuilderList();
    }

    public static final class ActionLogRsp extends GeneratedMessage implements ActionLogRspOrBuilder {
        public static Parser<ActionLogRsp> PARSER = new AbstractParser<ActionLogRsp>() {
            public ActionLogRsp parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ActionLogRsp(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RETCODE_FIELD_NUMBER = 1;
        private static final ActionLogRsp defaultInstance = new ActionLogRsp(true);
        private static final long serialVersionUID = 0;
        /* access modifiers changed from: private */
        public int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        /* access modifiers changed from: private */
        public int retCode_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends com.google.protobuf.GeneratedMessage.Builder<Builder> implements ActionLogRspOrBuilder {
            private int bitField0_;
            private int retCode_;

            public static final Descriptor getDescriptor() {
                return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogRsp_descriptor;
            }

            /* access modifiers changed from: protected */
            public FieldAccessorTable internalGetFieldAccessorTable() {
                return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(ActionLogRsp.class, Builder.class);
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (ActionLogRsp.alwaysUseFieldBuilders) {
                }
            }

            /* access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public Builder clear() {
                super.clear();
                this.retCode_ = 0;
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clone() {
                return create().mergeFrom(buildPartial());
            }

            public Descriptor getDescriptorForType() {
                return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogRsp_descriptor;
            }

            public ActionLogRsp getDefaultInstanceForType() {
                return ActionLogRsp.getDefaultInstance();
            }

            public ActionLogRsp build() {
                ActionLogRsp buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException(buildPartial);
            }

            public ActionLogRsp buildPartial() {
                int i = 1;
                ActionLogRsp actionLogRsp = new ActionLogRsp((com.google.protobuf.GeneratedMessage.Builder) this);
                if ((this.bitField0_ & 1) != 1) {
                    i = 0;
                }
                actionLogRsp.retCode_ = this.retCode_;
                actionLogRsp.bitField0_ = i;
                onBuilt();
                return actionLogRsp;
            }

            public Builder mergeFrom(Message message) {
                if (message instanceof ActionLogRsp) {
                    return mergeFrom((ActionLogRsp) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ActionLogRsp actionLogRsp) {
                if (actionLogRsp != ActionLogRsp.getDefaultInstance()) {
                    if (actionLogRsp.hasRetCode()) {
                        setRetCode(actionLogRsp.getRetCode());
                    }
                    mergeUnknownFields(actionLogRsp.getUnknownFields());
                }
                return this;
            }

            public final boolean isInitialized() {
                if (!hasRetCode()) {
                    return false;
                }
                return true;
            }

            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                ActionLogRsp actionLogRsp;
                ActionLogRsp actionLogRsp2;
                try {
                    ActionLogRsp actionLogRsp3 = (ActionLogRsp) ActionLogRsp.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                    if (actionLogRsp3 != null) {
                        mergeFrom(actionLogRsp3);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    InvalidProtocolBufferException invalidProtocolBufferException = e;
                    actionLogRsp2 = (ActionLogRsp) invalidProtocolBufferException.getUnfinishedMessage();
                    throw invalidProtocolBufferException;
                } catch (Throwable th) {
                    Throwable th2 = th;
                    actionLogRsp = actionLogRsp2;
                    th = th2;
                }
                if (actionLogRsp != null) {
                    mergeFrom(actionLogRsp);
                }
                throw th;
            }

            public boolean hasRetCode() {
                return (this.bitField0_ & 1) == 1;
            }

            public int getRetCode() {
                return this.retCode_;
            }

            public Builder setRetCode(int i) {
                this.bitField0_ |= 1;
                this.retCode_ = i;
                onChanged();
                return this;
            }

            public Builder clearRetCode() {
                this.bitField0_ &= -2;
                this.retCode_ = 0;
                onChanged();
                return this;
            }
        }

        private ActionLogRsp(com.google.protobuf.GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ActionLogRsp(boolean z) {
            this.memoizedIsInitialized = -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ActionLogRsp getDefaultInstance() {
            return defaultInstance;
        }

        public ActionLogRsp getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private ActionLogRsp(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.retCode_ = codedInputStream.readUInt32();
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
            return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogRsp_descriptor;
        }

        /* access modifiers changed from: protected */
        public FieldAccessorTable internalGetFieldAccessorTable() {
            return Statis.internal_static_com_mi_mimsgsdk_proto_ActionLogRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(ActionLogRsp.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<ActionLogRsp> getParserForType() {
            return PARSER;
        }

        public boolean hasRetCode() {
            return (this.bitField0_ & 1) == 1;
        }

        public int getRetCode() {
            return this.retCode_;
        }

        private void initFields() {
            this.retCode_ = 0;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!hasRetCode()) {
                this.memoizedIsInitialized = 0;
                return false;
            }
            this.memoizedIsInitialized = 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeUInt32(1, this.retCode_);
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
                i2 = 0 + CodedOutputStream.computeUInt32Size(1, this.retCode_);
            }
            int serializedSize = i2 + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        /* access modifiers changed from: protected */
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static ActionLogRsp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ActionLogRsp) PARSER.parseFrom(byteString);
        }

        public static ActionLogRsp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ActionLogRsp) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ActionLogRsp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ActionLogRsp) PARSER.parseFrom(bArr);
        }

        public static ActionLogRsp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ActionLogRsp) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ActionLogRsp parseFrom(InputStream inputStream) throws IOException {
            return (ActionLogRsp) PARSER.parseFrom(inputStream);
        }

        public static ActionLogRsp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ActionLogRsp) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ActionLogRsp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ActionLogRsp) PARSER.parseDelimitedFrom(inputStream);
        }

        public static ActionLogRsp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ActionLogRsp) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ActionLogRsp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ActionLogRsp) PARSER.parseFrom(codedInputStream);
        }

        public static ActionLogRsp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ActionLogRsp) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(ActionLogRsp actionLogRsp) {
            return newBuilder().mergeFrom(actionLogRsp);
        }

        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* access modifiers changed from: protected */
        public Builder newBuilderForType(BuilderParent builderParent) {
            return new Builder(builderParent);
        }
    }

    public interface ActionLogRspOrBuilder extends MessageOrBuilder {
        int getRetCode();

        boolean hasRetCode();
    }

    public enum Platform implements ProtocolMessageEnum {
        ANDROID(0, 1),
        IOS(1, 2),
        SERVER(2, 3),
        PC(3, 4);
        
        public static final int ANDROID_VALUE = 1;
        public static final int IOS_VALUE = 2;
        public static final int PC_VALUE = 4;
        public static final int SERVER_VALUE = 3;
        private static final Platform[] VALUES = null;
        private static EnumLiteMap<Platform> internalValueMap;
        private final int index;
        private final int value;

        static {
            internalValueMap = new EnumLiteMap<Platform>() {
                public Platform findValueByNumber(int i) {
                    return Platform.valueOf(i);
                }
            };
            VALUES = values();
        }

        public final int getNumber() {
            return this.value;
        }

        public static Platform valueOf(int i) {
            switch (i) {
                case 1:
                    return ANDROID;
                case 2:
                    return IOS;
                case 3:
                    return SERVER;
                case 4:
                    return PC;
                default:
                    return null;
            }
        }

        public static EnumLiteMap<Platform> internalGetValueMap() {
            return internalValueMap;
        }

        public final EnumValueDescriptor getValueDescriptor() {
            return (EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final EnumDescriptor getDescriptor() {
            return (EnumDescriptor) Statis.getDescriptor().getEnumTypes().get(0);
        }

        public static Platform valueOf(EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        private Platform(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    private Statis() {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    public static FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\fStatis.proto\u0012\u0015com.mi.mimsgsdk.proto\"C\n\fActionLogReq\u00123\n\u0005items\u0018\u0001 \u0003(\u000b2$.com.mi.mimsgsdk.proto.ActionLogItem\"\u001f\n\fActionLogRsp\u0012\u000f\n\u0007retCode\u0018\u0001 \u0002(\r\"\u0001\n\rActionLogItem\u0012\f\n\u0004date\u0018\u0001 \u0002(\u0004\u0012\u0012\n\u0007bizType\u0018\u0002 \u0002(\r:\u00012\u0012\u000f\n\u0007logType\u0018\u0003 \u0002(\r\u0012:\n\bplatform\u0018\u0004 \u0002(\u000e2\u001f.com.mi.mimsgsdk.proto.Platform:\u0007ANDROID\u0012\u000e\n\u0006extStr\u0018\b \u0001(\t*4\n\bPlatform\u0012\u000b\n\u0007ANDROID\u0010\u0001\u0012\u0007\n\u0003IOS\u0010\u0002\u0012\n\n\u0006SERVER\u0010\u0003\u0012\u0006\n\u0002PC\u0010\u0004"}, new FileDescriptor[0], new InternalDescriptorAssigner() {
            public ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor) {
                Statis.descriptor = fileDescriptor;
                return null;
            }
        });
    }
}
